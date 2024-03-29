--************************************************
-- file		: cache.vhd
-- author	: harsh aurora
-- date		: 25 jan 2015
--
-- brief	   : the cache  
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

entity cache is
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
end cache;

architecture direct_mapped of cache is
	
	component cache_set is
	port	(	clk				: in  std_logic;
				write_en			: in	std_logic;
				address			: in  std_logic_vector(s+l-1 downto 0);
				ctrl_in			: in	std_logic_vector(t+1 downto 0);
				word_in			: in	std_logic_vector(word_length-1 downto 0);
				ctrl_out			: out std_logic_vector(t+1 downto 0);
				word_out			: out std_logic_vector(word_length-1 downto 0)
			);
	end component cache_set;
	
	-- the states for the state machine that implements the cache funtionality
	type state is (reset, init, idle, busy, mem_read, mem_write, write_back, dma);
	
	
	signal dirty_in		: std_logic;
	signal valid_in		: std_logic;
	signal tag_in			: std_logic_vector(t-1 downto 0);
	signal word_in			: std_logic_vector(word_length-1 downto 0);
	signal ctrl_in			: std_logic_vector(t+1 downto 0);
	
	signal dirty_out		: std_logic;
	signal valid_out		: std_logic;
	signal tag_out			: std_logic_vector(t-1 downto 0);
	signal word_out		: std_logic_vector(word_length-1 downto 0);
	signal ctrl_out		: std_logic_vector(t+1 downto 0);
	
	signal cache_write	: std_logic;
	signal cache_addr		: std_logic_vector(s+l-1 downto 0);

	signal m_tag			: std_logic_vector(t-1 downto 0);
	signal m_index			: std_logic_vector(s-1 downto 0);
	signal m_offset		: std_logic_vector(l-1 downto 0);
	signal cache_index	: std_logic_vector(s-1 downto 0);
	signal cache_offset	: std_logic_vector(l-1 downto 0);
	signal init_index		: unsigned(s-1 downto 0);
	signal init_offset	: unsigned(l-1 downto 0);
	
	signal current			: state := reset;
	
	signal init_en				: std_logic;
	signal init_done			: std_logic;
	signal hit					: std_logic;
	signal empty_slot			: std_logic;
	signal dma_req				: std_logic;
	signal dma_req_reg		: std_logic;
	signal ds_waitrequest	: std_logic;
	signal word_rst			: std_logic;
	signal word_number		: unsigned(l-1 downto 0);
	signal dword_number		: unsigned(l-1 downto 0);
	
	signal simu_friend		: std_logic;
	
begin

	xcache	: cache_set port map(clk, cache_write, cache_addr, ctrl_in, word_in, ctrl_out, word_out);
	
	init_done <= '1' when ((init_index = lines_per_set-1) and (init_offset = words_per_line-1)) else '0';
	
	m_tag <= m_address(t+s+l-1 downto s+l);
	m_index <= m_address(s+l-1 downto l);
	m_offset <= m_address(l-1 downto 0);
	
	cache_addr(s+l-1 downto l) <= cache_index;
	cache_addr(l-1 downto 0) <= cache_offset;
	
	ctrl_in(t+1) <= dirty_in;
	ctrl_in(t) <= valid_in;
	ctrl_in(t-1 downto 0) <= tag_in;
	
	dirty_out <= ctrl_out(t+1);
	valid_out <= ctrl_out(t);
	tag_out <= ctrl_out(t-1 downto 0);
	
	
	hit <= '1' when ((unsigned(m_tag) = unsigned(tag_out)) and valid_out = '1') else '0';
	empty_slot <= not dirty_out;
	dma_req <= m_address(r-1);
	
	-- register for the s_waitrequest signal
	ds_wait:
		process(clk, rst)
		begin
			if(rst = '1') then
				ds_waitrequest <= '1';
			elsif(rising_edge(clk)) then
				
				-- delay s_waitrequest to disable s_memread in write_back state
				ds_waitrequest <= s_waitrequest;

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
				dword_number <= (others => '0');
			elsif(rising_edge(clk)) then
				if(word_rst = '1') then
					word_number <= (others => '0');
				elsif(s_waitrequest = '0') then
					word_number <= word_number + 1;
				end if;
				
				-- register the word number
				dword_number <= word_number;
			end if;
		
		end process word_counter;
	
	dma_request_reg:
		process(clk, rst)
		begin
			if(rst = '1') then
				dma_req_reg <= '0';
			elsif(rising_edge(clk)) then
				dma_req_reg <= dma_req;
			end if;
		end process dma_request_reg;
		
	simulation_friend:
		process(clk, rst)
		begin
			if(rst = '1') then
				simu_friend <= '0';
			elsif(falling_edge(clk)) then
				simu_friend <= not simu_friend;
			end if;
		end process simulation_friend;

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
						
						-- read/write hit
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
						if((ds_waitrequest = '0') and (dword_number = words_per_line-1)) then
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
		
	output_assignments:
		process(simu_friend)--current, init_index, init_offset, m_index, m_offset, word_out, m_tag, m_writedata, hit, word_number, m_memwrite, m_address, empty_slot, s_readdata, dword_number, s_waitrequest, ds_waitrequest, tag_out, m_memread)
		begin
			case current is
				
				when reset =>
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= '0';
					valid_in <= '0';
					tag_in <= (others => '0');
					word_in <= (others => '0');
					cache_index <= (others => '0');
					cache_offset <= (others => '0');
					cache_write <= '0';
					
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
				
				when init =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= '0';
					valid_in <= '0';
					tag_in <= (others => '1');
					word_in <= (others => '0');
					cache_index <= std_logic_vector(init_index);
					cache_offset <= std_logic_vector(init_offset);
					cache_write <= '1';
					
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
				
				when idle =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= '0';
					valid_in <= '0';
					tag_in <= (others => '0');
					word_in <= (others => '0');
					cache_index <= m_index;
					cache_offset <= m_offset;
					cache_write <= '0';
					
					----------------------
					----master outputs----
					----------------------
					m_waitrequest <= '1';
					if(dma_req_reg = '1') then
						m_readdata <= s_readdata;
					else
						m_readdata <= word_out;
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
					
				when busy =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= '1';
					valid_in <= '1';
					tag_in <= m_tag;
					word_in <= m_writedata;
					
					cache_index <= m_index;
					if(hit = '1') then
						cache_offset <= m_offset;
					else
						cache_offset <= std_logic_vector(word_number);
					end if;
					
					if((m_memwrite = '1') and (hit = '1')) then -- write hit
						cache_write <= '1';
					else
						cache_write <= '0';
					end if;
					
					----------------------
					----master outputs----
					----------------------
					if(hit = '1') then
						m_waitrequest <= '0';
					else
						m_waitrequest <= '1';
					end if;
					
					m_readdata <= (others => '0');
					
					---------------------
					----slave outputs----
					---------------------
					-- read/write hit
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
					
				when mem_read =>

					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= '0';
					valid_in <= '1';
					tag_in <= m_tag;
					word_in <= s_readdata;
					cache_index <= m_index;
					cache_offset <= std_logic_vector(dword_number);
					cache_write <= not ds_waitrequest;
					
					----------------------
					----master outputs----
					----------------------
					m_waitrequest <= '1';
					m_readdata <= (others => '0');
					
					---------------------
					----slave outputs----
					---------------------
					if((dword_number = (words_per_line-1)) and ((s_waitrequest = '0') or (ds_waitrequest = '0'))) then
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
				
				when mem_write =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= '0';
					valid_in <= '0';
					tag_in <= (others => '0');
					word_in <= (others => '0');
					cache_index <= (others => '0');
					cache_offset <= (others => '0');
					cache_write <= '0';
					
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
		
				when write_back =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= '0';
					valid_in <= '0';
					tag_in <= tag_out;
					word_in <= (others => '0');
					cache_index <= m_index;
					cache_offset <= std_logic_vector(word_number);
					cache_write <= not s_waitrequest;				
					
					----------------------
					----master outputs----
					----------------------
					m_waitrequest <= '1';
					m_readdata <= (others => '0');
					
					---------------------
					----slave outputs----
					---------------------
					s_memread <= '0';
					s_memwrite <= ds_waitrequest;
					s_address(r-1 downto s+l) <= tag_out;
					s_address(s+l-1 downto l) <= m_index;
					s_address(l-1 downto 0) <= std_logic_vector(word_number);
					s_writedata <= word_out;
					
					----------------------
					----internal logic----
					----------------------
					word_rst <= '0';
					init_en <= '0';
				
				when dma =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in <= '0';
					valid_in <= '0';
					tag_in <= (others => '0');
					word_in <= (others => '0');
					cache_index <= (others => '0');
					cache_offset <= (others => '0');
					cache_write <= '0';
					
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
				
				
			end case;
		end process output_assignments;

end direct_mapped;