--************************************************
-- file		: params.vhd
-- author	: harsh aurora, loren lugosch
-- date		: 7 april 2015
--
-- brief	   : this file describes all the 
--            constants that define the cache,  
--            sram, and address bits.  
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package modules_components is 

	component LSO_index is
		port(	
			vector : in std_logic_vector(number_of_sets-1 downto 0);
			index_reg : in integer range 0 to number_of_sets-1;
			index : out integer range 0 to number_of_sets-1
		);
	end component LSO_index;
	
	component mux is
		port(
			s : in std_logic;
			input_0 : in integer range 0 to number_of_sets-1;
			input_1 : in integer range 0 to number_of_sets-1;
			f : out integer range 0 to number_of_sets-1
		);
	end component mux;
	
	

end modules_components;

package body modules_components is

end modules_components;