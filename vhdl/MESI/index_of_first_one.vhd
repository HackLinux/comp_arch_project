-- Asynchronously outputs the index of
-- the Least Significant One

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

entity LSO_index is
	port(	
		vector : in std_logic_vector(number_of_sets-1 downto 0);
		index_reg : in std_logic_vector(a-1 downto 0);
		index : out std_logic_vector(a-1 downto 0)
	);
end LSO_index;

architecture a0 of LSO_index is

component mux is
	port(
		s : in std_logic;
		input_0 : in std_logic_vector(a-1 downto 0);
		input_1 : in std_logic_vector(a-1 downto 0);
		f : out std_logic_vector(a-1 downto 0)
	);
end component mux;

type output_chain is array(0 to number_of_sets-1) of std_logic_vector(a-1 downto 0);
signal outputs : output_chain;

begin

mux_chain:
for i in 0 to number_of_sets-1 generate
	main_input:
	if i = (number_of_sets-1) generate
		main_mux : mux port map(s=>vector(i),input_0=>index_reg, input_1=>std_logic_vector(to_unsigned(i,a)), f=>outputs(i));
	end generate main_input;	
		
	chain:
	if i /= (number_of_sets-1) generate
		chain_mux : mux port map(s=>vector(i), input_0=>outputs(i+1), input_1=>std_logic_vector(to_unsigned(i,a)), f=>outputs(i));
	end generate chain;	
end generate mux_chain;

index <= outputs(0);

end a0;