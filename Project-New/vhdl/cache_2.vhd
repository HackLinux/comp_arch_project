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

entity cache_2 is
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
end cache_2;

architecture direct_mapped of cache_2 is
	
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
	
	signal cache_write_1		: std_logic;
	signal cache_addr_1		: std_logic_vector(s+l-1 downto 0);
	signal ctrl_in_1			: std_logic_vector(t+1 downto 0);
	signal word_in_1			: std_logic_vector(word_length-1 downto 0);
	signal ctrl_out_1			: std_logic_vector(t+1 downto 0);
	signal word_out_1			: std_logic_vector(word_length-1 downto 0);
	
	signal dirty_in_1			: std_logic;
	signal valid_in_1			: std_logic;
	signal tag_in_1			: std_logic_vector(t-1 downto 0);
	signal dirty_out_1		: std_logic;
	signal valid_out_1		: std_logic;
	signal tag_out_1			: std_logic_vector(t-1 downto 0);
	signal cache_index_1		: std_logic_vector(s-1 downto 0);
	signal cache_offset_1	: std_logic_vector(l-1 downto 0);	
	signal hit_1				: std_logic;
	
	signal cache_write_2		: std_logic;
	signal cache_addr_2		: std_logic_vector(s+l-1 downto 0);
	signal ctrl_in_2			: std_logic_vector(t+1 downto 0);
	signal word_in_2			: std_logic_vector(word_length-1 downto 0);
	signal ctrl_out_2			: std_logic_vector(t+1 downto 0);
	signal word_out_2			: std_logic_vector(word_length-1 downto 0);
	
	signal dirty_in_2			: std_logic;
	signal valid_in_2			: std_logic;
	signal tag_in_2			: std_logic_vector(t-1 downto 0);
	signal dirty_out_2		: std_logic;
	signal valid_out_2		: std_logic;
	signal tag_out_2			: std_logic_vector(t-1 downto 0);
	signal cache_index_2		: std_logic_vector(s-1 downto 0);
	signal cache_offset_2	: std_logic_vector(l-1 downto 0);
	signal hit_2				: std_logic;

	
	signal m_tag				: std_logic_vector(t-1 downto 0);
	signal m_index				: std_logic_vector(s-1 downto 0);
	signal m_offset			: std_logic_vector(l-1 downto 0);
	
	signal init_index			: unsigned(s-1 downto 0);
	signal init_offset		: unsigned(l-1 downto 0);
	
	signal current				: state := reset;
	
	signal init_en				: std_logic;
	signal init_done			: std_logic;
	signal empty_slot			: std_logic;
	signal dma_req				: std_logic;
	signal dma_req_reg		: std_logic;
	signal ds_waitrequest	: std_logic;
	signal word_rst			: std_logic;
	signal lru					: std_logic;
	signal lru_reg				: std_logic;
	signal word_number		: unsigned(l-1 downto 0);
	signal dword_number		: unsigned(l-1 downto 0);
	
begin

	xcache_1	: cache_set port map(clk, cache_write_1, cache_addr_1, ctrl_in_1, word_in_1, ctrl_out_1, word_out_1);
	xcache_2	: cache_set port map(clk, cache_write_2, cache_addr_2, ctrl_in_2, word_in_2, ctrl_out_2, word_out_2);

	init_done <= '1' when ((init_index = lines_per_set-1) and (init_offset = words_per_line-1)) else '0';
	
	m_tag <= m_address(t+s+l-1 downto s+l);
	m_index <= m_address(s+l-1 downto l);
	m_offset <= m_address(l-1 downto 0);
	
	cache_addr_1(s+l-1 downto l) <= cache_index_1;
	cache_addr_1(l-1 downto 0) <= cache_offset_1;
	
	ctrl_in_1(t+1) <= dirty_in_1;
	ctrl_in_1(t) <= valid_in_1;
	ctrl_in_1(t-1 downto 0) <= tag_in_1;
	
	dirty_out_1 <= ctrl_out_1(t+1);
	valid_out_1 <= ctrl_out_1(t);
	tag_out_1 <= ctrl_out_1(t-1 downto 0);
	
	cache_addr_2(s+l-1 downto l) <= cache_index_2;
	cache_addr_2(l-1 downto 0) <= cache_offset_2;
	
	ctrl_in_2(t+1) <= dirty_in_2;
	ctrl_in_2(t) <= valid_in_2;
	ctrl_in_2(t-1 downto 0) <= tag_in_2;
	
	dirty_out_2 <= ctrl_out_2(t+1);
	valid_out_2 <= ctrl_out_2(t);
	tag_out_2 <= ctrl_out_2(t-1 downto 0);
	
	hit_1 <= '1' when ((unsigned(m_tag) = unsigned(tag_out_1)) and valid_out_1 = '1') else '0';
	hit_2 <= '1' when ((unsigned(m_tag) = unsigned(tag_out_2)) and valid_out_2 = '1') else '0';
	
	empty_slot <= dirty_out_1 nand dirty_out_2;
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
		
	lru_register:
		process(clk, rst)
		begin
			if(rst = '1') then
				lru_reg <= '0';
			elsif(rising_edge(clk)) then
				lru_reg <= lru;
			end if;
		end process lru_register;

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
						if((hit_1 or hit_2) = '1') then
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
		process(current, init_index, init_offset, m_index, m_offset, word_out_1, word_out_2, m_tag, m_writedata, hit_1, hit_2, word_number, m_memwrite, m_address, empty_slot, s_readdata, dword_number, s_waitrequest, ds_waitrequest, tag_out_1, tag_out_2, m_memread, dirty_out_1, dirty_out_2)
		begin
			case current is
				
				when reset =>
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in_1 <= '0';
					valid_in_1 <= '0';
					tag_in_1 <= (others => '0');
					word_in_1 <= (others => '0');
					cache_index_1 <= (others => '0');
					cache_offset_1 <= (others => '0');
					cache_write_1 <= '0';
					
					dirty_in_2 <= '0';
					valid_in_2 <= '0';
					tag_in_2 <= (others => '0');
					word_in_2 <= (others => '0');
					cache_index_2 <= (others => '0');
					cache_offset_2 <= (others => '0');
					cache_write_2 <= '0';
					
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
					lru <= '1';
				
				when init =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in_1 <= '0';
					valid_in_1 <= '0';
					tag_in_1 <= (others => '1');
					word_in_1 <= (others => '0');
					cache_index_1 <= std_logic_vector(init_index);
					cache_offset_1 <= std_logic_vector(init_offset);
					cache_write_1 <= '1';
					
					dirty_in_2 <= '0';
					valid_in_2 <= '0';
					tag_in_2 <= (others => '1');
					word_in_2 <= (others => '0');
					cache_index_2 <= std_logic_vector(init_index);
					cache_offset_2 <= std_logic_vector(init_offset);
					cache_write_2 <= '1';
					
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
					lru <= lru_reg;
				
				when idle =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in_1 <= '0';
					valid_in_1 <= '0';
					tag_in_1 <= (others => '0');
					word_in_1 <= (others => '0');
					cache_index_1 <= m_index;
					cache_offset_1 <= m_offset;
					cache_write_1 <= '0';
					
					dirty_in_2 <= '0';
					valid_in_2 <= '0';
					tag_in_2 <= (others => '0');
					word_in_2 <= (others => '0');
					cache_index_2 <= m_index;
					cache_offset_2 <= m_offset;
					cache_write_2 <= '0';
					
					----------------------
					----master outputs----
					----------------------
					m_waitrequest <= '1';
					
					if(dma_req_reg = '1') then
						m_readdata <= s_readdata;
					elsif(hit_1 = '1') then
						m_readdata <= word_out_1;
					elsif(hit_2 = '1') then
						m_readdata <= word_out_2;
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
					lru <= lru_reg;
					
				when busy =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in_1 <= '1';
					valid_in_1 <= '1';
					tag_in_1 <= m_tag;
					word_in_1 <= m_writedata;
					
					dirty_in_2 <= '1';
					valid_in_2 <= '1';
					tag_in_2 <= m_tag;
					word_in_2 <= m_writedata;
					
					cache_index_1 <= m_index;
					cache_index_2 <= m_index;
					
					if(hit_1 = '1') then
						cache_offset_1 <= m_offset;
					else
						cache_offset_1 <= std_logic_vector(word_number);
					end if;
					
					if(hit_2 = '1') then
						cache_offset_2 <= m_offset;
					else
						cache_offset_2 <= std_logic_vector(word_number);
					end if;
					
					
					cache_write_1 <= m_memwrite and hit_1;
					cache_write_2 <= m_memwrite and hit_2;
					
					----------------------
					----master outputs----
					----------------------
					m_waitrequest <= not(hit_1 or hit_2);
					m_readdata <= (others => '0');
					
					---------------------
					----slave outputs----
					---------------------
					-- read/write hit
					if((hit_1 or hit_2) = '1') then 
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
					
					if(hit_1 = '1') then
						lru <= '0';
					elsif(hit_2 = '1') then
						lru <= '1';
					else
						lru <= lru_reg;
					end if;
					
				when mem_read =>

					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in_1 <= '0';
					valid_in_1 <= '1';
					tag_in_1 <= m_tag;
					word_in_1 <= s_readdata;
					cache_index_1 <= m_index;
					cache_offset_1 <= std_logic_vector(dword_number);
					cache_write_1 <= ((not ds_waitrequest) and (hit_1 or (not dirty_out_1))) and lru_reg;
					
					dirty_in_2 <= '0';
					valid_in_2 <= '1';
					tag_in_2 <= m_tag;
					word_in_2 <= s_readdata;
					cache_index_2 <= m_index;
					cache_offset_2 <= std_logic_vector(dword_number);
					cache_write_2 <= ((not ds_waitrequest) and (hit_2 or (not dirty_out_2))) and (not lru_reg);
					
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
					lru <= lru_reg;
				
				when mem_write =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in_1 <= '0';
					valid_in_1 <= '0';
					tag_in_1 <= (others => '0');
					word_in_1 <= (others => '0');
					cache_index_1 <= (others => '0');
					cache_offset_1 <= (others => '0');
					cache_write_1 <= '0';
					
					dirty_in_2 <= '0';
					valid_in_2 <= '0';
					tag_in_2 <= (others => '0');
					word_in_2 <= (others => '0');
					cache_index_2 <= (others => '0');
					cache_offset_2 <= (others => '0');
					cache_write_2 <= '0';
					
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
					lru <= lru_reg;
		
				when write_back =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in_1 <= '0';
					valid_in_1 <= '0';
					tag_in_1 <= tag_out_1;
					word_in_1 <= (others => '0');
					cache_index_1 <= m_index;
					cache_offset_1 <= std_logic_vector(word_number);
					cache_write_1 <= (not s_waitrequest) and lru_reg;				
					
					dirty_in_2 <= '0';
					valid_in_2 <= '0';
					tag_in_2 <= tag_out_2;
					word_in_2 <= (others => '0');
					cache_index_2 <= m_index;
					cache_offset_2 <= std_logic_vector(word_number);
					cache_write_2 <= (not s_waitrequest) and (not lru_reg);
					
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
					
					if(lru_reg = '0') then
						s_address(r-1 downto s+l) <= tag_out_2;
						s_writedata <= word_out_2;
					else
						s_address(r-1 downto s+l) <= tag_out_1;
						s_writedata <= word_out_1;
					end if;
					
					s_address(s+l-1 downto l) <= m_index;
					s_address(l-1 downto 0) <= std_logic_vector(word_number);
					
					----------------------
					----internal logic----
					----------------------
					word_rst <= '0';
					init_en <= '0';
					lru <= lru_reg;
				
				when dma =>
					
					-----------------------------
					----cache control outputs----
					-----------------------------
					dirty_in_1 <= '0';
					valid_in_1 <= '0';
					tag_in_1 <= (others => '0');
					word_in_1 <= (others => '0');
					cache_index_1 <= (others => '0');
					cache_offset_1 <= (others => '0');
					cache_write_1 <= '0';
					
					dirty_in_2 <= '0';
					valid_in_2 <= '0';
					tag_in_2 <= (others => '0');
					word_in_2 <= (others => '0');
					cache_index_2 <= (others => '0');
					cache_offset_2 <= (others => '0');
					cache_write_2 <= '0';
					
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
					lru <= lru_reg;
				
			end case;
		end process output_assignments;

end direct_mapped;