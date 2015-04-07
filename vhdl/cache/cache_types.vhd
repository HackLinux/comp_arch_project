--************************************************
-- file		: cache_types.vhd
-- author	: harsh aurora, loren lugosch
-- date		: 7 april 2015
--
-- brief	   : types for cache  
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

package cache_types is

	type cache_addr_t		is array (number_of_sets-1 downto 0) of std_logic_vector(s+l-1 downto 0);
	type cache_ctrl_t		is array (number_of_sets-1 downto 0) of std_logic_vector(ctrl_length-1 downto 0);
	type cache_word_t		is array (number_of_sets-1 downto 0) of std_logic_vector(word_length-1 downto 0);
	type cache_tag_t		is array (number_of_sets-1 downto 0) of std_logic_vector(t-1 downto 0);	
	type cache_index_t	is array (number_of_sets-1 downto 0) of std_logic_vector(s-1 downto 0);	
	type cache_offset_t	is array (number_of_sets-1 downto 0) of std_logic_vector(l-1 downto 0);
	type LRU_t				is array (number_of_sets-1 downto 0) of std_logic_vector(a-1 downto 0);
	type CCU_t				is array (number_of_sets-1 downto 0) of std_logic_vector(ccu_b-1 downto 0);
	
end cache_types;

package body cache_types is

end cache_types;