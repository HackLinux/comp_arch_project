--************************************************
-- file		:	L2_single_port_cache_set.vhd
-- author	:	harsh aurora, loren lugosch
-- date		:	7 april 2015
--
-- brief	   :	this file describes the structure 
--					of a single port cache set
-- 
--					contains both control and word data
--
--					the set is synthesized into SRAM
--					blocks
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;
use work.L2_params.all;

entity L2_single_port_cache_set is
	port	(	clk					: in  std_logic;
				addr					: in  std_logic_vector(s+l-1 downto 0);
				ctrl_write			: in  std_logic;
				word_write			: in	std_logic;
				ctrl_in				: in	std_logic_vector(ctrl_length-1 downto 0);
				word_in				: in	std_logic_vector(word_length-1 downto 0);
				ctrl_out				: out std_logic_vector(ctrl_length-1 downto 0);
				word_out				: out std_logic_vector(word_length-1 downto 0)
			);
end L2_single_port_cache_set;

architecture a0 of L2_single_port_cache_set is 

	type cache_ctrl is array (lines_per_set-1 downto 0) of std_logic_vector(ctrl_length-1 downto 0);

	type line_data is array (words_per_line-1 downto 0) of std_logic_vector(word_length-1 downto 0);
	type cache_data is array (lines_per_set-1 downto 0) of line_data;

	signal index		: integer range 0 to lines_per_set-1;
	signal offset		: integer range 0 to words_per_line-1;
	
	-- RAW new--
	signal index_reg	: integer range 0 to lines_per_set-1;
	signal offset_reg	: integer range 0 to words_per_line-1;

	signal ctrldata : cache_ctrl;
	signal linedata : cache_data;
	
begin
	
	-- extract the different fields from the input address
	index <= to_integer(unsigned(addr(s+l-1 downto l)));
	offset <= to_integer(unsigned(addr(l-1 downto 0)));

	p0:
	process(clk)
	begin
		if(rising_edge(clk)) then
			
			if(word_write = '1') then
				linedata(index)(offset) <= word_in;
			end if;
			
			if(ctrl_write = '1') then
				ctrldata(index) <= ctrl_in;
			end if;				

			--RAW new--
			index_reg <= index;
         offset_reg <= offset;
			
			--RAW old--
			--ctrl_out <= ctrldata(index);
			--word_out <= linedata(index)(offset);

		end if;
	end process;
	
	--RAW new--
	ctrl_out <= ctrldata(index);
	word_out <= linedata(index_reg)(offset_reg);

end a0;