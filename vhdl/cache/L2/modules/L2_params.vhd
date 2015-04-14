--************************************************
-- file		: L2_params.vhd
-- author	: harsh aurora, loren lugosch
-- date		: 7 april 2015
--
-- brief	   : this file describes all the 
--            constants that define an L1 cache,   
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

package L2_params is
	
	constant c : integer; -- cache size = 2^c => c = w+l+a+s

	constant l : integer; -- words per line/block = 2^l => line/block size = 2^(w+l) bytes 
	constant a : integer; -- 2^a associativity => 2^a lines/blocks per set => set size = 2^(w+l+a) bytes
	constant s : integer; -- number of sets = 2^s => cache size = 2^(w+l+a+s) bytes
	constant t : integer; -- number of tag bits = t => RAM size = 2^(t+s+l) words
	
	constant mem_b : integer; -- the number of bits needed in cache control for memory syncs 
	constant ccu_b : integer; -- the number of bits needed in cache control for coherence syncs
		
	constant ctrl_length		: integer; -- length of a cache control word in bits
	constant words_per_line	: integer; -- number of words per cache line
	constant lines_per_set	: integer; -- the associativity
	constant number_of_sets	: integer; -- number of sets in the cache
	constant cache_size		: integer; -- cache size in bytes

end L2_params;

package body L2_params is

	constant c : integer := 15 ;	-- 4 kB cache				-- DEPENDENCIES : the size of cache is a design decision
	
	constant l : integer := 2 ;	-- 4 words per line		-- DEPENDENCIES : l = c-w-a-s
	constant a : integer := 3 ;	-- 8-way associative		-- DEPENDENCIES : a = c-w-l-s
	constant s : integer := c-w-l-a;								-- DEPENDENCIES : s = c-w-l-a
	constant t : integer := r-s-l;								-- DEPENDENCIES : t = r-s-l
	
	constant mem_b : integer := 2; -- dirty, valid
	constant ccu_b : integer := 2; -- MSI/MESI enumerations 
	
	constant ctrl_length		: integer := t + a + mem_b + ccu_b;
	constant words_per_line	: integer := to_integer(unsigned(shift_left(one,l)));
	constant lines_per_set	: integer := to_integer(unsigned(shift_left(one,s)));
	constant number_of_sets	: integer := to_integer(unsigned(shift_left(one,a)));
	constant cache_size		: integer := to_integer(unsigned(shift_left(one,c)));

end L2_params;