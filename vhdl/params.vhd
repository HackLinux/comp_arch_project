--************************************************
-- file		: params.vhd
-- author	: harsh aurora
-- date		: 13 jan 2015
--
-- brief	   : this file describes all the 
--            constants that define the cache,  
--            sram, and address bits.  
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package params is

	constant one : unsigned;
	
	constant w : integer; -- word size = 2^w bytes
	constant l : integer; -- words per line/block = 2^l => line/block size = 2^(w+l) bytes 
	constant a : integer; -- 2^a associativity => 2^a lines/blocks per set => set size = 2^(w+l+a) bytes
	constant s : integer; -- number of sets = 2^s => cache size = 2^(w+l+a+s) bytes
	constant c : integer; -- cache size = 2^c => c = w+l+a+s
	constant t : integer; -- number of tag bits = t => RAM size = 2^(t+s+l) words
	constant r : integer; -- RAM size = 2^r words => r = t+s+l, also number of address bits = r
	
	constant mem_b : integer; -- the number of bits needed in cache control for memory syncs 
	constant ccu_b : integer; -- the number of bits needed in cache control for coherence syncs
		
	constant ctrl_length		: integer; -- length of a cache control word in bits
	constant word_length		: integer; -- length of a RAM word in bits
	constant words_per_line	: integer; -- number of words per cache line
	constant lines_per_set	: integer; -- the associativity
	constant number_of_sets	: integer; -- number of sets in the cache
	constant cache_size		: integer; -- cache size in bytes
	constant ram_size			: integer; -- RAM size in words
	constant ram_size_b		: integer; -- RAM size in bytes
	
	constant mem_delay_cycles	: integer;
	
	constant clock_period		: time;
	
end params;

package body params is

	constant one : unsigned := x"00000001";
	
	constant w : integer := 2 ;	-- 4 bytes per word		-- DEPENDENCIES : w = c-l-a-s
	constant l : integer := 2 ;	-- 4 words per line		-- DEPENDENCIES : l = c-w-a-s
	constant a : integer := 1 ;	-- 8-way associative		-- DEPENDENCIES : a = c-w-l-s
	constant s : integer := 7 ;	-- 32 sets 					-- DEPENDENCIES : s = c-w-l-a
	constant c : integer := 12;	-- 4 kB cache				-- DEPENDENCIES : the size of cache is a design decision
	constant t : integer := 10; 	-- 12 tag bits				-- DEPENDENCIES : t = r-s-l
	constant r : integer := 19;	-- 4 MB SRAM				-- DEPENDENCIES : the size of memory is a design decision
	
	constant mem_b : integer := 2; -- dirty, valid
	constant ccu_b : integer := 2; -- MSI/MESI enumerations 
	
	constant ctrl_length		: integer := t + a + mem_b + ccu_b;
	constant word_length		: integer := to_integer(unsigned(shift_left(one,w+3)));
	constant words_per_line	: integer := to_integer(unsigned(shift_left(one,l)));
	constant lines_per_set	: integer := to_integer(unsigned(shift_left(one,s)));
	constant number_of_sets	: integer := to_integer(unsigned(shift_left(one,a)));
	constant cache_size		: integer := to_integer(unsigned(shift_left(one,c)));
	constant ram_size			: integer := to_integer(unsigned(shift_left(one,r)));
	constant ram_size_b		: integer := to_integer(unsigned(shift_left(one,r+3)));

	constant mem_delay_cycles	: integer := 10;	
	
	constant clock_period	: time := 1 ns;

end params;