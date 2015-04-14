--************************************************
-- file			:	single_port_memory.vhd
-- author		:	harsh aurora, loren lugosch
-- date			:	7 april 2015
--
-- brief	   	:	single port main memory
--						avalon interface
--************************************************
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

entity single_port_memory is
	port	(	clk				: in  std_logic;
				rst				: in  std_logic;
				s_writedata		: in  std_logic_vector (word_length-1 downto 0);
				s_address		: in  std_logic_vector(r-1 downto 0);
				s_memwrite		: in  std_logic;
				s_memread		: in  std_logic;
				s_readdata		: out std_logic_vector (word_length-1 downto 0);
				s_waitrequest	: out std_logic
			);
end single_port_memory;

architecture a0 of single_port_memory is

	component single_port_ram is
	port	(	clk				: in  std_logic;
				write_en			: in	std_logic;
				address			: in  std_logic_vector(r-1 downto 0);
				data_in			: in	std_logic_vector(word_length-1 downto 0);
				data_out			: out std_logic_vector(word_length-1 downto 0)
			);
	end component single_port_ram;

	type state is (reset, idle, busy);
	
	signal current	: state := reset;
		
	signal writedata		: std_logic_vector (word_length-1 downto 0);
	signal memwrite		: std_logic;
	
	signal address			: std_logic_vector(r-1 downto 0);
		
	signal mem_delay		: integer;
	signal delay_rst		: std_logic;
	
begin
		
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
							current <= idle;
				
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
		process(current, s_writedata, s_address, mem_delay, s_memwrite)
		begin
			case current is
				
				when reset =>
					writedata <= (others => '0');
					address <= (others => '0');
					memwrite <= '0';
					s_waitrequest <= '1';
					delay_rst <= '1';
					
				when idle =>
					writedata <= (others => '0');
					address <= (others => '0');
					memwrite <= '0';
					s_waitrequest <= '1';
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
					delay_rst <= '0';
					
			end case;
		
		end process output_assignments;
	
	xsingle_port_ram:	single_port_ram port map(clk, memwrite, address, writedata, s_readdata);
	
end a0;