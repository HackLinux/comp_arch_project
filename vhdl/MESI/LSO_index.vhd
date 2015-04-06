-- Asynchronously outputs the index of
-- the Least Significant One

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

entity LSO_index is
	port(	
		vector : in std_logic_vector(number_of_sets-1 downto 0);
		index_reg : in integer range 0 to number_of_sets-1;
		index : out integer range 0 to number_of_sets-1
	);
end LSO_index;

architecture a0 of LSO_index is

component mux is
	port(
		s : in std_logic;
		input_0 : in integer range 0 to number_of_sets-1;
		input_1 : in integer range 0 to number_of_sets-1;
		f : out integer range 0 to number_of_sets-1
	);
end component mux;

type output_chain is array(0 to number_of_sets-1) of integer range 0 to number_of_sets-1;
signal outputs : output_chain;

begin

mux_chain:
for i in 0 to number_of_sets-1 generate
	main_input:
	if i = (number_of_sets-1) generate
		main_mux : mux port map(s=>vector(i),input_0=>index_reg, input_1=>i, f=>outputs(i));
	end generate main_input;	
		
	chain:
	if i /= (number_of_sets-1) generate
		chain_mux : mux port map(s=>vector(i), input_0=>outputs(i+1), input_1=>i, f=>outputs(i));
	end generate chain;	
end generate mux_chain;

index <= outputs(0);

end a0;