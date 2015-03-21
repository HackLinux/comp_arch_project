--************************************************
-- file			: memory.vhd
-- source		: ECSE 487 course website
-- modified by : harsh aurora
-- date			: 26 jan 2015
--
-- brief	   	: Adapted from Example 12-15 of  
--            	  Quartus Design and Synthesis
--               handbook
--************************************************
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;


entity memory is
	port	(	clk				: in  std_logic;
				rst				: in  std_logic;
				s_writedata		: in  std_logic_vector (word_length-1 downto 0);
				s_address		: in  std_logic_vector(r-1 downto 0);
				s_memwrite		: in  std_logic;
				s_memread		: in  std_logic;
				s_readdata		: out std_logic_vector (word_length-1 downto 0);
				s_waitrequest	: out std_logic
			);
end memory;

architecture rtl of memory is

	component ram is
	port	(	clk				: in  std_logic;
				write_en			: in	std_logic;
				address			: in  std_logic_vector(r-1 downto 0);
				data_in			: in	std_logic_vector(word_length-1 downto 0);
				data_out			: out std_logic_vector(word_length-1 downto 0)
			);
	end component ram;

	type state is (reset, init, idle, busy);
	
	signal current	: state := reset;
		
	signal writedata		: std_logic_vector (word_length-1 downto 0);
	signal memwrite		: std_logic;
	
	signal address			: std_logic_vector(r-1 downto 0);
	signal init_addr		: integer range 0 to ram_size;
		
	signal init_done		: std_logic;
	signal mem_delay		: integer;
	signal init_rst		: std_logic;
	signal delay_rst		: std_logic;
	signal delay_done		: std_logic;
	
begin
	
	--init_addr_int <= to_integer(init_addr);
	init_done <= '1' when init_addr = (ram_size-1) else '0';
	delay_done <= '1' when mem_delay = mem_delay_cycles else '0';
	
	process(clk, rst)
	begin
		if(rst = '1') then
			init_addr <= 0;
		elsif(rising_edge(clk)) then
			if(init_rst = '1') then
				init_addr <= 0;
			else
				init_addr <= init_addr + 1;
			end if;
		end if;
		
	end process;
	
	
	process(clk, rst)
	begin
		if(rst = '1') then
			mem_delay <= 0;
		elsif(rising_edge(clk)) then
			if(delay_rst = '1') then
				mem_delay <= 0;
			else
				mem_delay <= mem_delay + 1;
			end if;
		end if;
		
	end process;
	
		
	-- next state assignment 
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
						if((s_memread xor s_memwrite) = '1') then -- there can be only one
							current <= busy;
						else
							current <= idle;
						end if;
					
					when busy =>
						if(mem_delay = mem_delay_cycles) then
							current <= idle;
						else
							current <= busy;
						end if;
					
				end case;
			end if;
		end process state_assignment;
	
	output_assignments:
		process(current, init_addr, s_writedata, s_address, mem_delay, s_memwrite)
		begin
			case current is
				
				when reset =>
					writedata <= (others => '0');
					address <= (others => '0');
					memwrite <= '0';
					s_waitrequest <= '1';
					init_rst <= '1';
					delay_rst <= '1';
				
				when init =>
					writedata <= std_logic_vector(to_unsigned(init_addr, word_length));
					address <= std_logic_vector(to_unsigned(init_addr, r));
					memwrite <= '1';
					s_waitrequest <= '1';
					init_rst <= '0';
					delay_rst <= '1';
					
				when idle =>
					writedata <= (others => '0');
					address <= (others => '0');
					memwrite <= '0';
					s_waitrequest <= '1';
					init_rst <= '1';
					delay_rst <= '1';
				
				when busy =>
					writedata <= s_writedata;
					address <= s_address;
					if(mem_delay = mem_delay_cycles) then
						memwrite <= s_memwrite;
						s_waitrequest <= '0';
					else
						memwrite <= '0';
						s_waitrequest <= '1';
					end if;
					init_rst <= '1';
					delay_rst <= '0';
					
			end case;
		
		end process output_assignments;
	
	xram:	ram port map(clk, memwrite, address, writedata, s_readdata);
	
end rtl;