--************************************************
-- file		: comparator.vhd
-- author	: harsh aurora
-- date		: 16 jan 2015
--
-- brief	   : the comparator  
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

entity comparator is
	port	(	tag		: in  std_logic_vector(t-1 downto 0);
				t0			: in  std_logic_vector(t-1 downto 0);
				t1			: in  std_logic_vector(t-1 downto 0);
				t2			: in  std_logic_vector(t-1 downto 0);
				t3			: in  std_logic_vector(t-1 downto 0);
				t4			: in  std_logic_vector(t-1 downto 0);
				t5			: in  std_logic_vector(t-1 downto 0);
				t6			: in  std_logic_vector(t-1 downto 0);
				t7			: in  std_logic_vector(t-1 downto 0);
				result	: out std_logic_vector(3 downto 0)
			);
end comparator;

architecture structural of comparator is

begin

				
	result <=	"1000" when tag = t0 else
					"1001" when tag = t1 else
					"1010" when tag = t2 else
					"1011" when tag = t3 else
					"1100" when tag = t4 else
					"1101" when tag = t5 else
					"1110" when tag = t6 else
					"1111" when tag = t7 else
					"0000";

end structural;