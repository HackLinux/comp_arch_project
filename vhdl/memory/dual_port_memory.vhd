--************************************************
-- file			:	dual_port_memory.vhd
-- author		:	harsh aurora, loren lugosch
-- date			:	7 april 2015
--
-- brief	   	:	dual port main memory
--						avalon interface
--************************************************
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;


entity dual_port_memory is
	port	(	clk					: in  std_logic;
				rst					: in  std_logic;
				
				s_writedata_0		: in  std_logic_vector (word_length-1 downto 0);
				s_address_0			: in  std_logic_vector(r-1 downto 0);
				s_memwrite_0		: in  std_logic;
				s_memread_0			: in  std_logic;
				s_readdata_0		: out std_logic_vector (word_length-1 downto 0);
				s_waitrequest_0	: out std_logic;
				
				s_writedata_1		: in  std_logic_vector (word_length-1 downto 0);
				s_address_1			: in  std_logic_vector(r-1 downto 0);
				s_memwrite_1		: in  std_logic;
				s_memread_1			: in  std_logic;
				s_readdata_1		: out std_logic_vector (word_length-1 downto 0);
				s_waitrequest_1	: out std_logic
			);
end dual_port_memory;

architecture a0 of dual_port_memory is

	component dual_port_ram is
	port	(	clk				: in  std_logic;
				
				write_en_0		: in	std_logic;
				address_0		: in  std_logic_vector(r-1 downto 0);
				data_in_0		: in	std_logic_vector(word_length-1 downto 0);
				data_out_0		: out std_logic_vector(word_length-1 downto 0);
				
				write_en_1		: in	std_logic;
				address_2		: in  std_logic_vector(r-1 downto 0);
				data_in_2		: in	std_logic_vector(word_length-1 downto 0);
				data_out_2		: out std_logic_vector(word_length-1 downto 0)
			);
	end component dual_port_ram;

	type state is (reset, idle, busy);
	
	
	signal current_0	: state := reset;
	
	signal memwrite_0		: std_logic;
	
	signal mem_delay_0	: integer;
	signal delay_rst_0	: std_logic;
	signal delay_done_0	: std_logic;
	
	
	signal current_1	: state := reset;
		
	signal memwrite_1		: std_logic;
	
	signal mem_delay_1	: integer;
	signal delay_rst_1	: std_logic;
	signal delay_done_1	: std_logic;
	
begin

	----------------------
	-- SEQUENTIAL LOGIC --
	----------------------
	
	delay_counters:
	process(clk, rst)
	begin
		if(rst = '1') then
			mem_delay_0 <= 0;
			mem_delay_1 <= 0;

		elsif(rising_edge(clk)) then
			if(delay_rst_0 = '1') then
				mem_delay_0 <= 0;
			else
				mem_delay_0 <= mem_delay_0 + 1;
			end if;
			
			if(delay_rst_1 = '1') then
				mem_delay_1 <= 0;
			else
				mem_delay_1 <= mem_delay_1 + 1;
			end if;
		end if;
		
	end process delay_counters;

	
	state_assignment_0:
	process(clk, rst)
	begin
		if(rst = '1') then
			current_0 <= reset;
		elsif(rising_edge(clk)) then
			case current_0 is
				
				when reset =>
						current_0 <= idle;
			
				when idle =>
					if((s_memread_0 xor s_memwrite_0) = '1') then -- there can be only one
						current_0 <= busy;
					else
						current_0 <= idle;
					end if;
				
				when busy =>
					if(mem_delay_0 = mem_delay_cycles) then
						current_0 <= idle;
					else
						current_0 <= busy;
					end if;
				
			end case;
		end if;
	end process state_assignment_0;
	
	state_assignment_1:
	process(clk, rst)
	begin
		if(rst = '1') then
			current_1 <= reset;
		elsif(rising_edge(clk)) then
			case current_1 is
				
				when reset =>
						current_1 <= idle;
			
				when idle =>
					if((s_memread_1 xor s_memwrite_1) = '1') then -- there can be only one
						current_1 <= busy;
					else
						current_1 <= idle;
					end if;
				
				when busy =>
					if(mem_delay_1 = mem_delay_cycles) then
						current_1 <= idle;
					else
						current_1 <= busy;
					end if;
				
			end case;
		end if;
	end process state_assignment_1;
	
	
	-------------------------
	-- COMBINATIONAL LOGIC --
	-------------------------
	
	delay_done_0 <= '1' when mem_delay_0 = mem_delay_cycles else '0';	
	delay_done_1 <= '1' when mem_delay_1 = mem_delay_cycles else '0';
	
	output_assignments_0:
	process(current_0, s_writedata_0, s_address_0, mem_delay_0, s_memwrite_0)
	begin
		case current_0 is
			
			when reset =>
				memwrite_0 <= '0';
				s_waitrequest_0 <= '1';
				delay_rst_0 <= '1';
				
			when idle =>
				memwrite_0 <= '0';
				s_waitrequest_0 <= '1';
				delay_rst_0 <= '1';
			
			when busy =>
				if(mem_delay_0 = mem_delay_cycles) then
					memwrite_0 <= s_memwrite_0;
					s_waitrequest_0 <= '0';
				else
					memwrite_0 <= '0';
					s_waitrequest_0 <= '1';
				end if;
				delay_rst_0 <= '0';
				
		end case;
	
	end process output_assignments_0;
	
	output_assignments_1:
	process(current_1, s_writedata_1, s_address_1, mem_delay_1, s_memwrite_1)
	begin
		case current_1 is
			
			when reset =>
				memwrite_1 <= '0';
				s_waitrequest_1 <= '1';
				delay_rst_1 <= '1';
				
			when idle =>
				memwrite_1 <= '0';
				s_waitrequest_1 <= '1';
				delay_rst_1 <= '1';
			
			when busy =>
				if(mem_delay_1 = mem_delay_cycles) then
					memwrite_1 <= s_memwrite_1;
						s_waitrequest_1 <= '0';
				else
					memwrite_1 <= '0';
					s_waitrequest_1 <= '1';
				end if;
				delay_rst_1 <= '0';
				
		end case;
	
	end process output_assignments_1;
	
	
	xdual_port_ram:	dual_port_ram port map(	clk, 
															memwrite_0, s_address_0, s_writedata_0, s_readdata_0,
															memwrite_1, s_address_1, s_writedata_1, s_readdata_1);
	
end a0;