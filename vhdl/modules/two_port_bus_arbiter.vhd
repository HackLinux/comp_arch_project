--************************************************
-- file		:	two_port_bus_arbiter.vhd
-- author	:	harsh aurora, loren lugosch
-- date		:	7 april 2015
--
-- brief	   :	avalon bus arbiter for a bus shared
--					by two ports
--					for conflicting requests priority 
--					is given to least recent port
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

entity two_port_bus_arbiter is
	port	(	clk						: in  std_logic;
				rst						: in 	std_logic;
				
				-- port 1 I/O
				writedata_1				: in  std_logic_vector (word_length-1 downto 0);
				address_1				: in  std_logic_vector(r-1 downto 0);
				memwrite_1				: in  std_logic;
				memread_1				: in  std_logic;
				readdata_1				: out std_logic_vector (word_length-1 downto 0);
				waitrequest_1			: out std_logic;
				
				-- port 2 I/O
				writedata_2				: in  std_logic_vector (word_length-1 downto 0);
				address_2				: in  std_logic_vector(r-1 downto 0);
				memwrite_2				: in  std_logic;
				memread_2				: in  std_logic;
				readdata_2				: out std_logic_vector (word_length-1 downto 0);
				waitrequest_2			: out std_logic;
				
				-- bus I/O
				bus_writedata			: out std_logic_vector (word_length-1 downto 0);
				bus_address				: out std_logic_vector(r-1 downto 0);
				bus_memwrite			: out std_logic;
				bus_memread				: out std_logic;
				bus_readdata			: in  std_logic_vector (word_length-1 downto 0);
				bus_waitrequest		: in  std_logic
			);
end two_port_bus_arbiter

architecture a0 of two_port_bus_arbiter is

	type state is (reset,idle,route_1,route_2);
	
	signal current : state;
	signal turn		: std_logic;

begin

	-- toggle the turn during each nus grant
	turn_reg:
	process(clk, rst)
	begin
		if(rst = '1') then
			turn <= 0;
		elsif(rising_edge(clk)) then
			if(current = route_1) then
				turn <= '1';
			elsif(current = route_2) then
				turn <= '0'
			else
				turn <= turn;
			end if;
		end if;
	end process turn_reg;
	
	state_transition:
	process(clk, rst)
	begin
		if(rst <= '0')
			current <= reset;
		elsif(rising_edge(clk)) then
			case current is 
				when reset =>
					current <= idle;
					
				when idle <=
				
					if((memread_1 xor mem_write_1) and (memread_2 ore memwrite_2)) then
						-- conflict priority
						if(turn = '0') then
							current <= route_1;
						else
							current <= route_2;	
						end if;
						
					elsif((memread_1 xor memwrite_1) = '1') then
						current <= route_1;
					
					elsif((memread_2 xor memwrite_2) = '1') then
						current <= route_2;
					
					else
						current <= idle;
					end if;
					
				when route_1 =>
					if((memread_1 xor memwrite_1) = '1') then
						current <= route_1;
					else
						currnet <= idle;
					end if;
					
				when route_2 =>
					if((memread_2 xor memwrite_2) = '1') then
						current <= route_2;
					else
						current <= idle;
					end if;
				
				end case;
		end if;
	end process state_transition;

	output_assignment:
	process(	current, 
				memread_1, memwrite_1, address_1, writedata_1,
				memread_2, memwrite_2, address_2, writedata_2)
	begin
		
		case current is
			
			when reset =>
				
				------------------
				--port 1 outputs--
				------------------
				readdata_1 <= (others => '0');
				waitrequest_1 <= '1';
				
				------------------
				--port 2 outputs--
				------------------
				readdata_2 <= (others => '0');
				waitreqquest_2 <= '1';
				
				---------------
				--bus outputs--
				---------------
				bus_memread <= '0';
				bus_memwrite <= '0';
				bus_address <= (others => '0');
				bus_writedata <= (others => '0');
				
			when idle =>
				
				------------------
				--port 1 outputs--
				------------------
				readdata_1 <= (others => '0');
				waitrequest_1 <= '1';
				
				------------------
				--port 2 outputs--
				------------------
				readdata_2 <= (others => '0');
				waitreqquest_2 <= '1';
				
				---------------
				--bus outputs--
				---------------
				bus_memread <= '0';
				bus_memwrite <= '0';
				bus_address <= (others => '0');
				bus_writedata <= (others => '0');
				
			when route_1 =>
				
				------------------
				--port 1 outputs--
				------------------
				readdata_1 <= bus_readdata;
				waitrequest_1 <= bus_waitrequest;
				
				------------------
				--port 2 outputs--
				------------------
				readdata_2 <= (others => '0');
				waitreqquest_2 <= '1';
				
				---------------
				--bus outputs--
				---------------
				bus_memread <= memread_1;
				bus_memwrite <= memwrite_1;
				bus_address <= address_1;
				bus_writedata <= writedata_1;
				
				
			when route_2 =>
				
				------------------
				--port 1 outputs--
				------------------
				readdata_1 <= (others => '0');
				waitrequest_1 <= '1';
				
				------------------
				--port 2 outputs--
				------------------
				readdata_2 <= bus_readdata;
				waitrequest_2 <= bus_waitrequest;
				
				---------------
				--bus outputs--
				---------------
				bus_memread <= memread_2;
				bus_memwrite <= memwrite_2;
				bus_address <= address_2;
				bus_writedata <= writedata_2;
				
			end case;
end a0;