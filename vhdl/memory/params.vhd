--************************************************
-- file		: params.vhd
-- author	: harsh aurora, loren lugosch
-- date		: 7 april 2015
--
-- brief	   : this file describes all the 
--            constants that define the main memory
--				  sram, and address bits.  
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package params is
	
	procedure stopping_point;

	constant one : unsigned;

	constant w : integer; -- word size = 2^w bytes
	constant r : integer; -- RAM size = 2^r words => r = t+s+l, also number of address bits = r
		
	constant word_length		: integer; -- length of a RAM word in bits
	constant ram_size			: integer; -- RAM size in words
	constant ram_size_b		: integer; -- RAM size in bytes
	
	constant mem_delay_cycles	: integer;
	
	constant clock_period		: time;
	
end params;

package body params is
  
  procedure stopping_point is begin end stopping_point;

	constant one : unsigned := x"00000001";
	
	constant w : integer := 2 ;	-- 4 bytes per word		-- DEPENDENCIES : w = c-l-a-s
	constant r : integer := 19;	-- 4 MB SRAM				-- DEPENDENCIES : the size of memory is a design decision

	constant word_length		: integer := to_integer(unsigned(shift_left(one,w+3)));
	constant ram_size			: integer := to_integer(unsigned(shift_left(one,r)));
	constant ram_size_b		: integer := to_integer(unsigned(shift_left(one,r+3)));

	constant mem_delay_cycles	: integer := 10;	
	
	constant clock_period	: time := 1 ns;

end params;