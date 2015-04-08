--************************************************
-- file		:	cache_set_controller.vhd
-- author	:	harsh aurora, loren lugosch
-- date		:	7 april 2015
--
-- brief	   :	controls a cache set
--************************************************

library ieee;
use ieee.std_logic_misc.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;
use work.cache_types.all;

entity cache_set_controller is
	port	(	clk					: in  std_logic;
				rst					: in 	std_logic;
				flush					: in  std_logic;
				ready					: out std_logic;
				
				-- I/O interface for the FSM/Processor
				m_writedata			: in  std_logic_vector (word_length-1 downto 0);
				m_address			: in  std_logic_vector(r-1 downto 0);
				m_memwrite			: in  std_logic;
				m_memread			: in  std_logic;
				m_readdata			: out std_logic_vector (word_length-1 downto 0);
				m_waitrequest		: out std_logic;
				
				-- I/O interface for memory
				s_writedata			: out std_logic_vector (word_length-1 downto 0);
				s_address			: out std_logic_vector(r-1 downto 0);
				s_memwrite			: out std_logic;
				s_memread			: out std_logic;
				s_readdata			: in  std_logic_vector (word_length-1 downto 0);
				s_waitrequest		: in  std_logic;

				-- I/O interface for cache_set
				cache_addr			: out cache_addr_t;

				cache_ctrl_write	: out std_logic_vector(number_of_sets-1 downto 0);
				cache_word_write	: out std_logic_vector(number_of_sets-1 downto 0);
					
				ctrl_writedata		: out cache_ctrl_t;
				word_writedata		: out cache_word_t;

				ctrl_readdata		: in  cache_ctrl_t;
				word_readdata		: in  cache_word_t;
				
				-- I/O interface for horen's clean coherence circuit
				c_stall				: in  std_logic;
				c_blast_across		: in  std_logic;
				c_dirty_in			: in  std_logic;
				c_word_in			: in  std_logic_vector(word_length-1 downto 0);
				c_hit_out			: out std_logic;
				c_empty_out			: out std_logic
			);
end cache_set_controller;

architecture a0 of cache_set_controller is
  
  component LSO_index is
	port(	
		vector : in std_logic_vector(number_of_sets-1 downto 0);
		index_reg : in integer range 0 to number_of_sets-1;
		index : out integer range 0 to number_of_sets-1
	);
  end component LSO_index;
  
	
	-- the states for the state machine that implements the control funtionality
	type state is (reset, init, idle, busy, mem_read, mem_write, write_back, dma, flush_back, blast);

	signal cache_index				: cache_index_t;
	signal cache_offset				: cache_offset_t;
	
	signal dirty_in					: std_logic_vector(number_of_sets-1 downto 0);
	signal valid_in					: std_logic_vector(number_of_sets-1 downto 0);
	signal dirty_out					: std_logic_vector(number_of_sets-1 downto 0);
	signal valid_out					: std_logic_vector(number_of_sets-1 downto 0);
	signal tag_in						: cache_tag_t;
	signal tag_out						: cache_tag_t;
	signal LRU_in						: LRU_t;
	signal LRU_out						: LRU_t;
	signal CCU_in						: CCU_t;
	signal CCU_out						: CCU_t;

	signal m_tag						: std_logic_vector(t-1 downto 0);
	signal m_index						: std_logic_vector(s-1 downto 0);
	signal m_offset					: std_logic_vector(l-1 downto 0);

	signal init_index					: unsigned(s-1 downto 0);
	signal flush_index				: unsigned(s-1 downto 0);

	signal current						: state := reset;
	
	signal LRU_update_dirty_in		: std_logic_vector(number_of_sets-1 downto 0);
	signal LRU_update_valid_in		: std_logic_vector(number_of_sets-1 downto 0);
	signal LRU_update_word_writedata		: cache_word_t;
	signal LRU_update_tag_in		: cache_tag_t;
	
	signal init_done					: std_logic;
	signal flush_done					: std_logic;
	signal dirty						: std_logic;
	signal hit 							: std_logic;
	signal hit_reg						: std_logic;
	signal empty_slot					: std_logic;
	signal dma_req						: std_logic;
	signal dma_req_reg				: std_logic;
	signal s_waitrequest_reg		: std_logic;
	signal word_number				: unsigned(l-1 downto 0);
	signal word_number_reg			: unsigned(l-1 downto 0);
	signal dirty_index				: integer range 0 to number_of_sets-1;
	signal dirty_index_reg			: integer range 0 to number_of_sets-1;
	signal hit_index					: integer range 0 to number_of_sets-1;
	signal hit_index_reg				: integer range 0 to number_of_sets-1;
	signal empty_index				: integer range 0 to number_of_sets-1;
	signal KO_index					: integer range 0 to number_of_sets-1;
	signal hits							: std_logic_vector(number_of_sets-1 downto 0);
	signal empty_slots				: std_logic_vector(number_of_sets-1 downto 0);
	signal LRU_out_vector			: std_logic_vector(number_of_sets-1 downto 0);
	signal hit_write					: std_logic_vector(number_of_sets-1 downto 0);
	signal word_write_empty			: std_logic_vector(number_of_sets-1 downto 0);
	signal word_write_KO				: std_logic_vector(number_of_sets-1 downto 0);
	signal word_write_blast			: std_logic_vector(number_of_sets-1 downto 0);
	signal ctrl_write_empty			: std_logic_vector(number_of_sets-1 downto 0);
	signal ctrl_write_KO				: std_logic_vector(number_of_sets-1 downto 0);
	signal ctrl_write_flush			: std_logic_vector(number_of_sets-1 downto 0);
	signal ctrl_write_blast			: std_logic_vector(number_of_sets-1 downto 0);

begin

	----------------------
	-- SEQUENTIAL LOGIC --
	----------------------

	-- register for the s_waitrequest signal
	ds_wait:
		process(clk, rst)
		begin
			if(rst = '1') then
				s_waitrequest_reg <= '1';
			elsif(rising_edge(clk)) then
				
				-- delay s_waitrequest to disable s_memread in write_back state
				s_waitrequest_reg <= s_waitrequest;

			end if;
		end process ds_wait;
	
	-- counter for the initialization sequence
	init_counter:
		process(clk, rst)
		begin
			if(rst = '1') then
				init_index  <= (others => '0');
			elsif(rising_edge(clk)) then
				if(current = init) then			
					init_index <= init_index + 1;
				else
					init_index  <= (others => '0');
				end if;
			end if;
		end process init_counter;
		
	-- counter for the flush sequence
	flush_counter:
		process(clk, rst)
		begin
			if(rst = '1') then
				flush_index  <= (others => '0');
			elsif(rising_edge(clk)) then
				if(current = flush_back) then
					if(dirty = '0') then
						flush_index <= flush_index + 1;
					else
						flush_index  <= flush_index;
					end if;
				else
					flush_index  <= (others => '0');
				end if;
			end if;
		end process flush_counter;
		
	-- counter for the blast sequence
	blast_counter:
		process(clk, rst)
		begin
			if(rst = '1') then
				blast_offset  <= (others => '0');
			elsif(rising_edge(clk)) then
				if(current = blast) then
					blast_offset <= blast_offset + 1;
				else
					blast_offset  <= (others => '0');
				end if;
			end if;
		end process blast_counter;
	
	-- word counter used in mem_read and write_back
	word_counter:
		process(clk, rst)
		begin
			if(rst = '1') then
				word_number <= (others => '0');
				word_number_reg <= (others => '0');
			elsif(rising_edge(clk)) then
				if(s_waitrequest = '0' and current /= mem_write) then
					if(word_number = words_per_line-1) then
						word_number <= (others => '0');
					else
						word_number <= word_number + 1;
					end if;
				end if;
				
				-- double register the word number
				word_number_reg <= word_number;
			end if;
		
		end process word_counter;
		
	hit_register:
		process(clk, rst)
		begin
			if(rst = '1') then
				hit_reg <= '0';
			elsif(rising_edge(clk)) then
				hit_reg <= hit;
			end if;
		end process hit_register;
		
	dma_request_reg:
		process(clk, rst)
		begin
			if(rst = '1') then
				dma_req_reg <= '0';
			elsif(rising_edge(clk)) then
				dma_req_reg <= dma_req;
			end if;
		end process dma_request_reg;
		
	hit_index_register:
		process(clk, rst)
		begin
			if(rst = '1') then
				hit_index_reg <= 0;
			elsif(rising_edge(clk)) then
				hit_index_reg <= hit_index;
			end if;
		end process hit_index_register;

	state_assignment:
		process(clk, rst)
		begin
			if(rst = '1') then
				current <= reset;
			elsif(rising_edge(clk)) then
				case current is
					
					when reset =>
							current <= init;
					
					when init =>
						if(init_done = '1') then
							current <= idle;
						else
							current <= init;
						end if;
				
					when idle =>
						
						if(flush = '1') then
							current <= flush_back;
						
						elsif(c_stall = '1') then
							
							if(c_blast_across = '1') then
								
								if(empty_slot = '1') then
									current <= blast;
								else
									write_back;
								end if;
							
							else
								current <= idle;
							end if;
							
						elsif((m_memread xor m_memwrite) = '1') then 
							
							if(dma_req = '1') then
								current <= dma;
							else
								current <= busy;
							end if;
						
						else
							current <= idle;
						end if;
					
					when busy =>
						
						-- read/write hits
						if(hit = '1') then
							current <= idle;
						
						-- write miss
						elsif(m_memwrite = '1') then
							current <= mem_write;
						
						-- read miss with no write back required
						elsif(empty_slot = '1') then
							current <= mem_read;
							
						-- read miss with write back required
						else
							current <= write_back;
						end if;
					
					when mem_read => 
						if((s_waitrequest_reg = '0') and (word_number_reg = words_per_line-1)) then
							current <= busy;
						else
							current <= mem_read;
						end if;
						
					when mem_write =>
						if(s_waitrequest = '0') then
							current <= idle;
						else
							current <= mem_write;
						end if;
					
					when write_back =>
						if((s_waitrequest = '0') and (word_number = words_per_line-1)) then
							if(c_blast_across = '1') then
								current <= idle;
							else
								current <= busy;
							end if;
						else
							current <= write_back;
						end if;
						
					when dma =>
						if(s_waitrequest = '0') then
							current <= idle;
						else
							current <= dma;
						end if;
						
					when flush_back =>
						if(flush_done = '1') then
							current <= idle;
						else
							current <= flush_back;
						end if;
						
					when blast =>
						if(blast_offset = words_per_line-1) then
							current <= idle;
						else
							current <= blast;
						end if;
	
				end case;
			end if;
		end process state_assignment;
		
	-------------------------
	-- COMBINATIONAL LOGIC --
	-------------------------
		
	ready <= '1' when current = idle else '0';
	
	xLSO_index_1 : LSO_index port map(dirty_out, 0, dirty_index);
	xLSO_index_2 : LSO_index port map(hits, hit_index_reg, hit_index);
	xLSO_index_3 : LSO_index port map(empty_slots, 0, empty_index);
	xLSO_index_4 : LSO_index port map(LRU_out_vector, 0, KO_index);

	dma_req <= m_address(r-1);
	
	m_tag <= m_address(r-1 downto s+l);
	m_index <= m_address(s+l-1 downto l);
	m_offset <= m_address(l-1 downto 0);	
	
	init_done <= '1' when (init_index = lines_per_set-1) else '0';
	flush_done <= '1' when ((flush_index = lines_per_set-1) and (dirty = '0')) else '0';
	dirty <= '0' when unsigned(dirty_out) = 0 else '1';
	hit <=  '0' when unsigned(hits) = 0 else '1';
	empty_slot <= '0' when unsigned(empty_slots) = 0 else '1';
	
	process(	cache_index, cache_offset, CCU_in, LRU_in, dirty_in,
				valid_in, tag_in, ctrl_readdata, LRU_out, m_tag,
				tag_out, valid_out, dirty_out, KO_index, current,
				hit_index, hits, m_writedata, word_readdata, empty_index,
				s_waitrequest_reg, word_number_reg, s_waitrequest, dirty_index,
				hit, word_number)
	begin
		for i in 0 to number_of_sets-1 loop
			
			CCU_in(i) <= (others => '0');
			
			cache_addr(i)(s+l-1 downto l) <= cache_index(i);
			cache_addr(i)(l-1 downto 0) <= cache_offset(i);
		
			ctrl_writedata(i)(ctrl_length-1 downto ctrl_length-ccu_b) <= CCU_in(i);
			ctrl_writedata(i)(t+mem_b+a-1 downto t+mem_b) <= LRU_in(i);
			ctrl_writedata(i)(t+mem_b-1) <= dirty_in(i);
			ctrl_writedata(i)(t+mem_b-2) <= valid_in(i);
			ctrl_writedata(i)(t-1 downto 0) <= tag_in(i);
		
			CCU_out(i) <= ctrl_readdata(i)(ctrl_length-1 downto ctrl_length-ccu_b);
			LRU_out(i) <= ctrl_readdata(i)(t+mem_b+a-1 downto t+mem_b);
			dirty_out(i) <= ctrl_readdata(i)(t+mem_b-1);
			valid_out(i) <= ctrl_readdata(i)(t+mem_b-2);
			tag_out(i) <= ctrl_readdata(i)(t-1 downto 0);
			
			LRU_out_vector(i) <= and_reduce(LRU_out(i));
			
			if(unsigned(m_tag) = unsigned(tag_out(i))) then
				hits(i) <= valid_out(i);
			else
				hits(i) <= '0';
			end if;
			
			if(a = 0) then
				empty_slots(i) <= not dirty_out(i);
			else
				if(i = KO_index) then
					empty_slots(i) <= not dirty_out(i);
				else
					empty_slots(i) <= not valid_out(i);
				end if;
			end if;
			
			if(current = init) then
				LRU_in(i) <= (others => '1');
			elsif((valid_out(i) = '1') and (hit = '1') and (current = busy)) then
				if(i = hit_index) then
					LRU_in(i) <= (others => '0');
				elsif(unsigned(LRU_out(i)) < unsigned(LRU_out(hit_index))) then
					LRU_in(i) <= std_logic_vector(unsigned(LRU_out(i)) + 1);
				else
					LRU_in(i) <= LRU_out(i);
				end if;
			else
				LRU_in(i) <= LRU_out(i);
			end if;
			
			if(current = busy) then
				if(hits(i) = '1') then
					LRU_update_dirty_in(i) <= '1';
					LRU_update_valid_in(i) <= '1';
					LRU_update_tag_in(i) <= m_tag;
					LRU_update_word_writedata(i) <= m_writedata;
				else
					LRU_update_dirty_in(i) <= dirty_out(i);
					LRU_update_valid_in(i) <= valid_out(i);
					LRU_update_tag_in(i) <= tag_out(i);
					LRU_update_word_writedata(i) <= word_readdata(i);
				end if;
			else				
				LRU_update_dirty_in(i) <= dirty_out(i);
				LRU_update_valid_in(i) <= valid_out(i);
				LRU_update_tag_in(i) <= tag_out(i);
				LRU_update_word_writedata(i) <= word_readdata(i);
			end if;
			
			if(i = hit_index) then
				hit_write(i) <= '1';
			else
				hit_write(i) <= '0';
			end if;
			
			if(i = empty_index) then
				
				word_write_empty(i) <= not s_waitrequest_reg;
				word_write_blast(i) <= '1';
				
				if(word_number_reg = words_per_line-1) then
					ctrl_write_empty(i) <= not s_waitrequest_reg;
				else
					ctrl_write_empty(i) <= '0';
				end if;
				
				if(blast_offset = words_per_line-1) then
					ctrl_write_blast(i) <= '1';
				else
					ctrl_write_blast(i) <= '0';
				end if;
			else
				word_write_empty(i) <= '0';
				word_write_blast(i) <= '0';
				
				ctrl_write_empty(i) <= '0';
				ctrl_write_blast(i) <= '0';
			end if;
			
			if(i = KO_index) then
				word_write_KO(i) <= not s_waitrequest;
				if(word_number = words_per_line-1) then
					ctrl_write_KO(i) <= not s_waitrequest;
				else
					ctrl_write_KO(i) <= '0';
				end if;
			else
				word_write_KO(i) <= '0';
				ctrl_write_KO(i) <= '0';
			end if;
			
			if(i = dirty_index) then
				if(word_number = words_per_line-1) then
					ctrl_write_flush(i) <= not s_waitrequest;
				else
					ctrl_write_flush(i) <= '0';
				end if;
			else
				ctrl_write_flush(i) <= '0';
			end if;
		
		end loop;
	end process;
		
	output_assignments:
		process(	current, init_index, flush, flush_index, word_number,
					m_index, m_offset, dma_req_reg, s_readdata, hit_reg,
					word_readdata, hit_index_reg, m_memwrite, LRU_update_dirty_in, LRU_update_valid_in,
					LRU_update_tag_in, LRU_update_word_writedata, dirty_out, valid_out, tag_out,
					hit, hit_write, m_address, m_writedata, empty_slot,
					m_tag, word_number_reg, word_write_empty, ctrl_write_empty, s_waitrequest,
					s_waitrequest_reg, word_write_KO, ctrl_write_KO, KO_index, m_memread,
					ctrl_write_flush, dirty, dirty_index)	
		begin
			case current is
				
				when reset =>
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= (others => '0');
					valid_in <= (others => '0');
					tag_in <= (others => (others => '0'));
					word_writedata <= (others => (others => '0'));
					cache_index <= (others => (others => '0'));
					cache_offset <= (others => (others => '0'));					
					cache_word_write <= (others => '0');
					cache_ctrl_write <= (others => '0');

					----------------------
					----master outputs----
					----------------------
					m_waitrequest <= '1';
					m_readdata <= (others => '0');
					
					---------------------
					----slave outputs----
					---------------------
					s_memread <= '0';
					s_memwrite <= '0';
					s_address <= (others => '0');
					s_writedata <= (others => '0');
					
					----------------------
					----internal logic----
					----------------------
				
				when init =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= (others => '0');
					valid_in <= (others => '0');
					tag_in <= (others => (others => '1'));
					word_writedata <= (others => (others => '0'));
					cache_index <= (others => std_logic_vector(init_index));
					cache_offset <= (others => (others => '0'));
					cache_word_write <= (others => '0');
					cache_ctrl_write <= (others => '1');
					
					----------------------
					----master outputs----
					----------------------
					m_waitrequest <= '1';
					m_readdata <= (others => '0');
					
					---------------------
					----slave outputs----
					---------------------
					s_memread <= '0';
					s_memwrite <= '0';
					s_address <= (others => '0');
					s_writedata <= (others => '0');
					
					----------------------
					----internal logic----
					----------------------
				
				when idle =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= (others => '0');
					valid_in <= (others => '0');
					tag_in <= (others => (others => '0'));
					word_writedata <= (others => (others => '0'));
					
					if(flush = '1') then
						cache_index <= (others => std_logic_vector(flush_index));
						cache_offset <= (others => std_logic_vector(word_number));
					else
						cache_index <= (others => m_index);
						cache_offset <= (others => m_offset);
					end if;
					
					cache_word_write <= (others => '0');
					cache_ctrl_write <= (others => '0');

					----------------------
					----master outputs----
					----------------------
					m_waitrequest <= '1';
					
					if(dma_req_reg = '1') then
						m_readdata <= s_readdata;
					else
						m_readdata <= word_readdata(hit_index_reg);
					end if;
					
					---------------------
					----slave outputs----
					---------------------
					s_memread <= '0';
					s_memwrite <= '0';
					s_address <= (others => '0');
					s_writedata <= (others => '0');
					
					----------------------
					----internal logic----
					----------------------
					
				when busy =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					if(m_memwrite = '1') then
						dirty_in <= LRU_update_dirty_in;
						valid_in <= LRU_update_valid_in;
						tag_in <= LRU_update_tag_in;
						word_writedata <= LRU_update_word_writedata;
					else
						dirty_in <= dirty_out;
						valid_in <= valid_out;
						tag_in <= tag_out;
						word_writedata <= word_readdata;
					end if;
										
					cache_index <= (others => m_index);
					
					if(hit = '1') then
						cache_offset <= (others => m_offset);
						
						if(m_memwrite = '1') then
							cache_word_write <= hit_write;
						else
							cache_word_write <= (others => '0');
						end if;
						
						cache_ctrl_write <= (others => '1');
					else
						cache_offset <= (others => std_logic_vector(word_number));
						cache_word_write <= (others => '0');
						cache_ctrl_write <= (others => '0');
					end if;
					
					
					----------------------
					----master outputs----
					----------------------
					m_waitrequest <= not hit;
					m_readdata <= (others => '0');
					
					---------------------
					----slave outputs----
					---------------------
					-- read/write hits
					if(hit = '1') then 
						s_memread <= '0';
						s_memwrite <= '0';
						s_address <= (others => '0');
						s_writedata <= (others => '0');
						
					-- write miss	
					elsif(m_memwrite = '1') then
						s_memread <= '0';
						s_memwrite <= '1';
						s_address <= m_address;
						s_writedata <= m_writedata;
						
					-- read miss with no write back required	
					elsif(empty_slot = '1') then
						s_memread <= '1';
						s_memwrite <= '0';
						s_address(r-1 downto l) <= m_address(r-1 downto l);
						s_address(l-1 downto 0) <= std_logic_vector(word_number);
						s_writedata <= (others => '0');
					
					-- read miss with write back required
					else
						s_memread <= '0';
						s_memwrite <= '0';
						s_address <= (others => '0');
						s_writedata <= (others => '0');
					end if;

					----------------------
					----internal logic----
					----------------------
					
				when mem_read =>

					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= (others => '0');
					valid_in <= (others => '1');
					tag_in <= (others => m_tag);
					word_writedata <= (others => s_readdata);
					cache_index <= (others => m_index);
					cache_offset <= (others => std_logic_vector(word_number_reg));
					cache_word_write <= word_write_empty;
					cache_ctrl_write <= ctrl_write_empty;
					
					----------------------
					----master outputs----
					----------------------
					m_waitrequest <= '1';
					m_readdata <= (others => '0');
					
					---------------------
					----slave outputs----
					---------------------
					if((word_number_reg = (words_per_line-1)) and ((s_waitrequest = '0') or (s_waitrequest_reg = '0'))) then
						s_memread <= '0';
					else
						s_memread <= '1';
					end if;
					
					s_memwrite <= '0';
					
					s_address(r-1 downto l) <= m_address(r-1 downto l);
					s_address(l-1 downto 0) <= std_logic_vector(word_number);
					s_writedata <= (others => '0');
					
					----------------------
					----internal logic----
					----------------------
				
				when mem_write =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= (others => '0');
					valid_in <= (others => '0');
					tag_in <= (others => (others => '0'));
					word_writedata <= (others => (others => '0'));
					cache_index <= (others => (others => '0'));
					cache_offset <= (others => (others => '0'));					
					cache_word_write <= (others => '0');
					cache_ctrl_write <= (others => '0');	
					
					----------------------
					----master outputs----
					----------------------
					m_waitrequest <= s_waitrequest;
					m_readdata <= (others => '0');
					
					---------------------
					----slave outputs----
					---------------------
					s_memread <= '0';
					s_memwrite <= '1';
					s_address <= m_address;
					s_writedata <= m_writedata;
					
					----------------------
					----internal logic----
					----------------------
		
				when write_back =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= (others => '0');
					valid_in <= (others => '0');
					tag_in <= tag_out;
					word_writedata <= (others => (others => '0'));
					cache_index <= (others => m_index);
					cache_offset <= (others => std_logic_vector(word_number));				
					cache_word_write <= word_write_KO;
					cache_ctrl_write <= ctrl_write_KO;
					
					----------------------
					----master outputs----
					----------------------
					m_waitrequest <= '1';
					m_readdata <= (others => '0');
					
					---------------------
					----slave outputs----
					---------------------
					s_memread <= '0';
					s_memwrite <= s_waitrequest_reg;
					
					s_address(r-1 downto s+l) <= tag_out(KO_index);
					s_writedata <= word_readdata(KO_index);
					
					s_address(s+l-1 downto l) <= m_index;
					s_address(l-1 downto 0) <= std_logic_vector(word_number);
					
					----------------------
					----internal logic----
					----------------------
				
				when dma =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= (others => '0');
					valid_in <= (others => '0');
					tag_in <= (others => (others => '0'));
					word_writedata <= (others => (others => '0'));
					cache_index <= (others => (others => '0'));
					cache_offset <= (others => (others => '0'));					
					cache_word_write <= (others => '0');
					cache_ctrl_write <= (others => '0');
					
					----------------------
					----master outputs----
					----------------------
					m_waitrequest <= s_waitrequest;
					m_readdata <= s_readdata;
					
					---------------------
					----slave outputs----
					---------------------
					s_memread <= m_memread;
					s_memwrite <= m_memwrite;
					s_address <= m_address;
					s_writedata <= m_writedata;
					
					----------------------
					----internal logic----
					----------------------
					
				when flush_back =>
				
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= (others => '0');
					valid_in <= (others => '0');
					tag_in <= (others => (others => '1'));
					word_writedata <= (others => (others => '0'));
					cache_index <= (others => std_logic_vector(flush_index));
					cache_offset <= (others => std_logic_vector(word_number));
					cache_word_write <= (others => '0');
					cache_ctrl_write <= ctrl_write_flush;
					
					----------------------
					----master outputs----
					----------------------
					m_waitrequest <= '1';
					m_readdata <= (others => '0');
					
					---------------------
					----slave outputs----
					---------------------
					s_memread <= '0';
					s_memwrite <= dirty;
					
					s_address(r-1 downto s+l) <= tag_out(dirty_index);
					s_address(s+l-1 downto l) <= std_logic_vector(flush_index);
					s_address(l-1 downto 0) <= std_logic_vector(word_number);
					
					s_writedata <= word_readdata(dirty_index);
					
					----------------------
					----internal logic----
					---------------------- 
						
				when blast =>
				
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= (others => c_dirty_in);
					valid_in <= (others => '1');
					tag_in <= (others => m_tag);
					word_writedata <= (others => c_word_in);
					cache_index <= (others => m_index);
					cache_offset <= (others => std_logic_vector(blast_offset));
					cache_word_write <= word_write_blast;
					cache_ctrl_write <= ctrl_write_blast;
					
					----------------------
					----master outputs----
					----------------------
					m_waitrequest <= '1';
					m_readdata <= (others => '0');
					
					---------------------
					----slave outputs----
					---------------------
					s_memread <= '0';
					s_memwrite <= '0';
					
					s_address <= (others => '0');
					s_writedata <= (others => '0');
					
					----------------------
					----internal logic----
					---------------------- 			
				
			end case;
		end process output_assignments;

end a0;