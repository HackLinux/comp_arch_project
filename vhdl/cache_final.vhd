--************************************************
-- file		: cache.vhd
-- author	: harsh aurora
-- date		: 25 jan 2015
--
-- brief	   : the cache 

-- FIX 		: Ctrl write in the mem_read and 
--				  write_back should only happen once
--				  pref. right at the start
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

entity cache_final is
	port	(	clk				: in  std_logic;
				rst				: in 	std_logic;
				
				-- I/O interface for the FSM/Processor
				m_writedata		: in  std_logic_vector (word_length-1 downto 0);
				m_address		: in  std_logic_vector(r-1 downto 0);
				m_memwrite		: in  std_logic;
				m_memread		: in  std_logic;
				m_readdata		: out std_logic_vector (word_length-1 downto 0);
				m_waitrequest	: out std_logic;
				
				-- I/O interface for memory
				s_writedata		: out std_logic_vector (word_length-1 downto 0);
				s_address		: out std_logic_vector(r-1 downto 0);
				s_memwrite		: out std_logic;
				s_memread		: out std_logic;
				s_readdata		: in  std_logic_vector (word_length-1 downto 0);
				s_waitrequest	: in  std_logic
			);
end cache_final;

architecture a0 of cache_final is
	
	component cache_set is
	port	(	clk					: in  std_logic;
				addr_0				: in  std_logic_vector(s+l-1 downto 0);
				ctrl_write_0		: in  std_logic;
				word_write_0		: in	std_logic;
				ctrl_in_0			: in	std_logic_vector(ctrl_length-1 downto 0);
				word_in_0			: in	std_logic_vector(word_length-1 downto 0);
				ctrl_out_0			: out std_logic_vector(ctrl_length-1 downto 0);
				word_out_0			: out std_logic_vector(word_length-1 downto 0);
				addr_1				: in  std_logic_vector(s+l-1 downto 0);
				ctrl_write_1		: in  std_logic;
				word_write_1		: in	std_logic;
				ctrl_in_1			: in	std_logic_vector(ctrl_length-1 downto 0);
				word_in_1			: in	std_logic_vector(word_length-1 downto 0);
				ctrl_out_1			: out std_logic_vector(ctrl_length-1 downto 0);
				word_out_1			: out std_logic_vector(word_length-1 downto 0)
			);
	end component cache_set;
	
	--for all: cache_set use entity work.cache_set(modelsim);
	
	-- the states for the state machine that implements the cache funtionality
	type state is (reset, init, idle, busy, mem_read, mem_write, write_back, dma);
	
	type cache_addr_t		is array (number_of_sets-1 downto 0) of std_logic_vector(s+l-1 downto 0);
	type cache_ctrl_t		is array (number_of_sets-1 downto 0) of std_logic_vector(ctrl_length-1 downto 0);
	type cache_word_t		is array (number_of_sets-1 downto 0) of std_logic_vector(word_length-1 downto 0);
	type cache_tag_t		is array (number_of_sets-1 downto 0) of std_logic_vector(t-1 downto 0);	
	type cache_index_t	is array (number_of_sets-1 downto 0) of std_logic_vector(s-1 downto 0);	
	type cache_offset_t	is array (number_of_sets-1 downto 0) of std_logic_vector(l-1 downto 0);
	type LRU_t				is array (number_of_sets-1 downto 0) of std_logic_vector(a-1 downto 0);
	type CCU_t				is array (number_of_sets-1 downto 0) of std_logic_vector(ccu_b-1 downto 0);

	signal cache_word_write			: std_logic_vector(number_of_sets-1 downto 0);
	signal cache_ctrl_write			: std_logic_vector(number_of_sets-1 downto 0);
	signal dirty_in					: std_logic_vector(number_of_sets-1 downto 0);
	signal valid_in					: std_logic_vector(number_of_sets-1 downto 0);
	signal dirty_out					: std_logic_vector(number_of_sets-1 downto 0);
	signal valid_out					: std_logic_vector(number_of_sets-1 downto 0);
	signal hits							: std_logic_vector(number_of_sets-1 downto 0);
	signal empty_slots				: std_logic_vector(number_of_sets-1 downto 0);
	signal cache_addr					: cache_addr_t;
	signal ctrl_in						: cache_ctrl_t;
	signal ctrl_out					: cache_ctrl_t;
	signal word_out					: cache_word_t;
	signal word_in						: cache_word_t;
	signal tag_in						: cache_tag_t;
	signal tag_out						: cache_tag_t;
	signal LRU_in						: LRU_t;
	signal LRU_out						: LRU_t;
	signal CCU_in						: CCU_t;
	signal CCU_out						: CCU_t;
	signal cache_index				: cache_index_t;
	signal cache_offset				: cache_offset_t;

	signal m_tag						: std_logic_vector(t-1 downto 0);
	signal m_index						: std_logic_vector(s-1 downto 0);
	signal m_offset					: std_logic_vector(l-1 downto 0);

	signal init_index					: unsigned(s-1 downto 0);
	signal init_offset				: unsigned(l-1 downto 0);

	signal current						: state := reset;
	
	signal LRU_update_dirty_in		: std_logic_vector(number_of_sets-1 downto 0);
	signal LRU_update_valid_in		: std_logic_vector(number_of_sets-1 downto 0);
	signal LRU_update_word_in		: cache_word_t;
	signal LRU_update_tag_in		: cache_tag_t;
	
	signal init_en						: std_logic;
	signal init_done					: std_logic;
	signal hit 							: std_logic;
	signal hit_reg						: std_logic;
	signal empty_slot					: std_logic;
	signal dma_req						: std_logic;
	signal dma_req_reg				: std_logic;
	signal s_waitrequest_reg		: std_logic;
	signal word_rst					: std_logic;
	signal LRU_update					: std_logic;
	signal word_number				: unsigned(l-1 downto 0);
	signal word_number_reg			: unsigned(l-1 downto 0);
	signal hit_index					: integer range 0 to number_of_sets-1;
	signal hit_index_reg				: integer range 0 to number_of_sets-1;
	signal empty_index				: integer range 0 to number_of_sets-1;
	signal empty_index_reg			: integer range 0 to number_of_sets-1;
	signal KO_index					: integer range 0 to number_of_sets-1;
	signal KO_index_reg				: integer range 0 to number_of_sets-1;
	signal hit_write					: std_logic_vector(number_of_sets-1 downto 0);
	signal word_write_empty			: std_logic_vector(number_of_sets-1 downto 0);
	signal word_write_KO				: std_logic_vector(number_of_sets-1 downto 0);
	signal ctrl_write_empty			: std_logic_vector(number_of_sets-1 downto 0);
	signal ctrl_write_KO				: std_logic_vector(number_of_sets-1 downto 0);
		
	constant zero_addr 				: std_logic_vector(s+l-1 downto 0) := (others => '0');
	constant zero_ctrl 				: std_logic_vector(ctrl_length-1 downto 0) := (others => '0');
	constant zero_word 				: std_logic_vector(word_length-1 downto 0) := (others => '0');
	signal unused_ctrl				: cache_ctrl_t;
	signal unused_word				: cache_word_t;
	
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
	
	-- counters for the initialization sequence
	init_counters:
		process(clk, rst)
		begin
			if(rst = '1') then
				init_offset <= (others => '0');
				init_index  <= (others => '0');
			elsif(rising_edge(clk)) then
				if(init_en = '1') then
					init_offset <= init_offset + 1;
					
					if(init_offset = words_per_line-1) then
						init_index <= init_index + 1;
					else
						init_index <= init_index;
					end if;
				else
					init_offset <= (others => '0');
					init_index  <= (others => '0');
				end if;
			end if;
		end process init_counters;
	
	-- word counter used in mem_read and write_back
	word_counter:
		process(clk, rst)
		begin
			if(rst = '1') then
				word_number <= (others => '0');
				word_number_reg <= (others => '0');
			elsif(rising_edge(clk)) then
				if(word_rst = '1') then
					word_number <= (others => '0');
				elsif(s_waitrequest = '0') then
					word_number <= word_number + 1;
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
	
	empty_index_register:
	process(clk, rst)
	begin
		if(rst = '1') then
			empty_index_reg <= 0; 
		elsif(rising_edge(clk)) then
			empty_index_reg <= empty_index;
		end if;
	end process empty_index_register;
	
	KO_index_register:
		process(clk, rst)
		begin
			if(rst = '1') then
				KO_index_reg <= 0;
			elsif(rising_edge(clk)) then
				KO_index_reg <= KO_index;
			end if;
		end process KO_index_register;

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
						if(dma_req = '1') then
							current <= dma;
						elsif((m_memread xor m_memwrite) = '1') then -- there can be only one
							current <= busy;
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
							current <= busy;
						else
							current <= write_back;
						end if;
						
					when dma =>
						if(s_waitrequest = '0') then
							current <= idle;
						else
							current <= dma;
						end if;
	
				end case;
			end if;
		end process state_assignment;
		
	-------------------------
	-- COMBINATIONAL LOGIC --
	-------------------------
		
	cache_gen:
	for i in 0 to number_of_sets-1 generate
		xcache : cache_set port map(clk, cache_addr(i), cache_ctrl_write(i), cache_word_write(i), ctrl_in(i), word_in(i), ctrl_out(i), word_out(i), zero_addr, '0', '0', zero_ctrl, zero_word, unused_ctrl(i), unused_word(i));
	end generate cache_gen;
	
	init_done <= '1' when ((init_index = lines_per_set-1) and (init_offset = words_per_line-1)) else '0';
	
	dma_req <= m_address(r-1);
	
	m_tag <= m_address(r-1 downto s+l);
	m_index <= m_address(s+l-1 downto l);
	m_offset <= m_address(l-1 downto 0);	
	
	process(CCU_in, cache_index, cache_offset, dirty_in, valid_in, LRU_in, tag_in, ctrl_out, m_tag, tag_out, valid_out, dirty_out, LRU_update, LRU_out, hit_index, init_done, current, hits, m_writedata, hit_index_reg, word_out, empty_slots, empty_index_reg, KO_index, KO_index_reg, s_waitrequest_reg, s_waitrequest, init_en, hit, empty_slot, word_number_reg)
	begin
		for i in 0 to number_of_sets-1 loop
			
			CCU_in(i) <= (others => '0');
			
			cache_addr(i)(s+l-1 downto l) <= cache_index(i);
			cache_addr(i)(l-1 downto 0) <= cache_offset(i);
		
			ctrl_in(i)(ctrl_length-1 downto ctrl_length-ccu_b) <= CCU_in(i);
			ctrl_in(i)(t+mem_b+a-1 downto t+mem_b) <= LRU_in(i);
			ctrl_in(i)(t+mem_b-1) <= dirty_in(i);
			ctrl_in(i)(t+mem_b-2) <= valid_in(i);
			ctrl_in(i)(t-1 downto 0) <= tag_in(i);
		
			CCU_out(i) <= ctrl_out(i)(ctrl_length-1 downto ctrl_length-ccu_b);
			LRU_out(i) <= ctrl_out(i)(t+mem_b+a-1 downto t+mem_b);
			dirty_out(i) <= ctrl_out(i)(t+mem_b-1);
			valid_out(i) <= ctrl_out(i)(t+mem_b-2);
			tag_out(i) <= ctrl_out(i)(t-1 downto 0);
			
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
			
			if(init_en	= '1') then
				LRU_in(i) <= (others => '1');
			elsif((valid_out(i) = '1') and (LRU_update = '1')) then
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
					LRU_update_word_in(i) <= m_writedata;
				else
					LRU_update_dirty_in(i) <= dirty_out(i);
					LRU_update_valid_in(i) <= valid_out(i);
					LRU_update_tag_in(i) <= tag_out(i);
					LRU_update_word_in(i) <= word_out(i);
				end if;
				
				if(hit = '1') then
					if(hits(i) = '1') then
						hit_index <= i;
					end if;
				else
					hit_index <= hit_index_reg;
				end if;
				
				if(unsigned(empty_slots) /= 0) then
					if(empty_slots(i) = '1') then
						empty_index <= i;
					end if;
				else					
					empty_index <= empty_index_reg;
				end if;
				
				if(unsigned(LRU_out(i)) = number_of_sets-1) then
					KO_index <= i;
				end if;
				
			else
				hit_index <= hit_index_reg;
				empty_index <= empty_index_reg;
				KO_index <= KO_index_reg;
				
				LRU_update_dirty_in(i) <= dirty_out(i);
				LRU_update_valid_in(i) <= valid_out(i);
				LRU_update_tag_in(i) <= tag_out(i);
				LRU_update_word_in(i) <= word_out(i);
			end if;
			
			if(i = hit_index) then
				hit_write(i) <= '1';
			else
				hit_write(i) <= '0';
			end if;
			
			if(i = empty_index_reg) then
				word_write_empty(i) <= not s_waitrequest_reg;
				if(word_number_reg = 0) then
					ctrl_write_empty(i) <= not s_waitrequest_reg;
				else
					ctrl_write_empty(i) <= '0';
				end if;
			else
				word_write_empty(i) <= '0';
				ctrl_write_empty(i) <= '0';
			end if;
			
			if(i = KO_index_reg) then
				word_write_KO(i) <= not s_waitrequest;
				if(word_number_reg = 0) then
					ctrl_write_KO(i) <= not s_waitrequest_reg;
				else
					ctrl_write_KO(i) <= '0';
				end if;
			else
				word_write_KO(i) <= '0';
				ctrl_write_KO(i) <= '0';
			end if;
		
		end loop;
	end process;

	hit <=  '0' when unsigned(hits) = 0 else '1';
	empty_slot <= '0' when unsigned(empty_slots) = 0 else '1';
		
	output_assignments:
		process(current, init_index, init_offset, m_index, m_offset, dma_req_reg, s_readdata, hit, word_out, hit_index_reg, m_memwrite, LRU_update_dirty_in, LRU_update_valid_in, LRU_update_tag_in, LRU_update_word_in, dirty_out, valid_out, tag_out, word_number, m_address, m_writedata, empty_slot, m_tag, word_number_reg, word_write_empty, ctrl_write_empty, s_waitrequest, s_waitrequest_reg, word_write_KO, ctrl_write_KO, KO_index_reg, m_memread, hit_reg, hit_write)
		begin
			case current is
				
				when reset =>
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= (others => '0');
					valid_in <= (others => '0');
					tag_in <= (others => (others => '0'));
					word_in <= (others => (others => '0'));
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
					word_rst <= '1';
					init_en <= '0';
					LRU_update <= '0';
				
				when init =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= (others => '0');
					valid_in <= (others => '0');
					tag_in <= (others => (others => '1'));
					word_in <= (others => (others => '0'));
					cache_index <= (others => std_logic_vector(init_index));
					cache_offset <= (others => std_logic_vector(init_offset));
					cache_word_write <= (others => '1');
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
					word_rst <= '1';
					init_en <= '1';
					LRU_update <= '0';
				
				when idle =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= (others => '0');
					valid_in <= (others => '0');
					tag_in <= (others => (others => '0'));
					word_in <= (others => (others => '0'));
					cache_index <= (others => m_index);
					cache_offset <= (others => m_offset);
					cache_word_write <= (others => '0');
					cache_ctrl_write <= (others => '0');

					----------------------
					----master outputs----
					----------------------
					m_waitrequest <= '1';
					
					if(dma_req_reg = '1') then
						m_readdata <= s_readdata;
					elsif(hit_reg = '1') then
						m_readdata <= word_out(hit_index_reg);
					else
						m_readdata <= (others => '0');
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
					word_rst <= '1';
					init_en <= '0';
					LRU_update <= '0';
					
				when busy =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					if(m_memwrite = '1') then
						dirty_in <= LRU_update_dirty_in;
						valid_in <= LRU_update_valid_in;
						tag_in <= LRU_update_tag_in;
						word_in <= LRU_update_word_in;
					else
						dirty_in <= dirty_out;
						valid_in <= valid_out;
						tag_in <= tag_out;
						word_in <= word_out;
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
					word_rst <= '1';
					init_en <= '0';
					LRU_update <= hit;
					
				when mem_read =>

					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= (others => '0');
					valid_in <= (others => '1');
					tag_in <= (others => m_tag);
					word_in <= (others => s_readdata);
					cache_index <= (others => m_index);
					cache_offset <= (others => std_logic_vector(word_number_reg));
					cache_word_write <= word_write_empty;
					cache_ctrl_write <= ctrl_write_empty;
					
					--cache_write_2 <= ((not s_waitrequest_reg) and (hit_2 or (not dirty_out_2))) and (not lru_reg);
					
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
					word_rst <= '0';
					init_en <= '0';
					LRU_update <= '0';
				
				when mem_write =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= (others => '0');
					valid_in <= (others => '0');
					tag_in <= (others => (others => '0'));
					word_in <= (others => (others => '0'));
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
					word_rst <= '1';
					init_en <= '0';
					LRU_update <= '0';
		
				when write_back =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= (others => '0');
					valid_in <= (others => '0');
					tag_in <= tag_out;
					word_in <= (others => (others => '0'));
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
					
					s_address(r-1 downto s+l) <= tag_out(KO_index_reg);
					s_writedata <= word_out(KO_index_reg);
					
					s_address(s+l-1 downto l) <= m_index;
					s_address(l-1 downto 0) <= std_logic_vector(word_number);
					
					----------------------
					----internal logic----
					----------------------
					word_rst <= '0';
					init_en <= '0';
					LRU_update <= '0';
				
				when dma =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= (others => '0');
					valid_in <= (others => '0');
					tag_in <= (others => (others => '0'));
					word_in <= (others => (others => '0'));
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
					word_rst <= '1';
					init_en <= '0';
					LRU_update <= '0';
				
			end case;
		end process output_assignments;

end a0;