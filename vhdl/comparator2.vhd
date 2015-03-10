--************************************************
-- file		: comparator.vhd
-- author	: harsh aurora
-- date		: 17 jan 2015
--
-- brief	   : the comparator2
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

entity comparator2 is
	port	(	tag		: in  std_logic_vector(t-1 downto 0);
				t0			: in  std_logic_vector(t-1 downto 0);
				t1			: in  std_logic_vector(t-1 downto 0);
				valid		: in  std_logic_vector(lines_per_set-1 downto 0);
				match		: out std_logic;
				match_set: out integer range 0 to 1
			);
end comparator2;

architecture structural of comparator2 is
	
	signal result	: std_logic_vector(1 downto 0);

begin
		
	result <=	"10" when tag = t0 else
					"11" when tag = t1 else
					"00";
	
	match <= result(1);
	match_set <= 1 when result(0) = '1' else 0;
	
end structural;