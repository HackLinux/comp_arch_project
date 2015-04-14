library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;
use work.L1_params.all;

entity L1_mux is
	port(
		s : in std_logic;
		input_0 : in integer range 0 to number_of_sets-1;
		input_1 : in integer range 0 to number_of_sets-1;
		f : out integer range 0 to number_of_sets-1
	);
end L1_mux;

architecture a0 of L1_mux is

begin

f <= input_0 when s = '0' else input_1;

end a0;