-- Asynchronously outputs the index of
-- the Least Significant One

library ieee;
use std.textio.all;
use ieee.std_logic_misc.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use work.params.all;

entity LSO_index_tb is
end LSO_index_tb;

architecture tb of LSO_index_tb is

component LSO_index is
	port(	
		vector : in std_logic_vector(number_of_sets-1 downto 0);
		index_reg : in integer range 0 to number_of_sets-1;
		index : out integer range 0 to number_of_sets-1
	);
end component LSO_index;

signal test_vector : std_logic_vector(number_of_sets-1 downto 0);
signal index_reg : integer range 0 to number_of_sets-1;
signal index : integer range 0 to number_of_sets-1;
signal tttt : std_logic;

begin

	dut : LSO_index port map(test_vector,index_reg,index);
	 
	tttt <= and_reduce("111");
	
	test_process : process
	
	variable out_line : line;
		file out_file : text open write_mode is "./text/output/LSO_output";
	
	procedure write_file(str : in string) is
		begin
			write(out_line, str);
			writeline(out_file, out_line);
		end write_file;
	
	begin
		index_reg <= 3;
		for i in 0 to number_of_sets*number_of_sets-1 loop
			test_vector <= std_logic_vector(to_unsigned(i, number_of_sets));
			write_file(integer'image(index));
			wait for clock_period*10;
		end loop;
		
		stopping_point;
	end process;
	
	

end tb;