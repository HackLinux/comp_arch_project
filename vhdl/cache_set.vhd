--************************************************
-- file		: cache_set.vhd
-- author	: harsh aurora
-- date		: 23 jan 2015
--
-- brief	   : this file describes the structure 
--            of a single cache set, including
--            both the block data and the control 
--            data (i.e. dirty, valid, tag).
--
--            The set is synthesized into SRAM
--            blocks ()
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

entity cache_set is
	port	(	clk				: in  std_logic;
				word_write		: in	std_logic;
				ctrl_write		: in  std_logic;
				r_addr			: in  std_logic_vector(s+l-1 downto 0);
				w_addr			: in  std_logic_vector(s+l-1 downto 0);				
				ctrl_in			: in	std_logic_vector(t+a+1 downto 0);
				word_in			: in	std_logic_vector(word_length-1 downto 0);
				ctrl_out			: out std_logic_vector(t+a+1 downto 0);
				word_out			: out std_logic_vector(word_length-1 downto 0)
			);
end cache_set;

architecture a0 of cache_set is

	type cache_ctrl is array (lines_per_set-1 downto 0) of std_logic_vector(t+a+1 downto 0);
		
	type line_data is array (words_per_line-1 downto 0) of std_logic_vector(word_length-1 downto 0);
	type cache_data is array (lines_per_set-1 downto 0) of line_data;


	signal r_index 		: integer range 0 to lines_per_set-1;
	signal r_offset		: integer range 0 to words_per_line-1;
	signal w_index 		: integer range 0 to lines_per_set-1;
	signal w_offset		: integer range 0 to words_per_line-1;
	
	-- RAW new--
	signal r_index_reg 	: integer range 0 to lines_per_set-1;
	signal r_offset_reg	: integer range 0 to words_per_line-1;

	signal ctrldata : cache_ctrl;
	signal linedata : cache_data;
	
begin
	
	-- extract the different fields from the input address
	w_index <= to_integer(unsigned(w_addr(s+l-1 downto l)));
	w_offset <= to_integer(unsigned(w_addr(l-1 downto 0)));
	r_index <= to_integer(unsigned(r_addr(s+l-1 downto l)));
	r_offset <= to_integer(unsigned(r_addr(l-1 downto 0)));
	
	process(clk)
	begin
		if(rising_edge(clk)) then
			
			if(word_write = '1') then
				linedata(w_index)(w_offset) <= word_in;
			end if;
			
			if(ctrl_write = '1') then
				ctrldata(w_index) <= ctrl_in;
			end if;				

			
			--RAW old--
			--ctrl_out <= ctrldata(r_index);
			--word_out <= linedata(r_index)(r_offset);
			
			--RAW new--
			r_index_reg <= r_index;
         r_offset_reg <= r_offset;

		end if;
	end process;
	
	--RAW new--
	ctrl_out <= ctrldata(r_index_reg);
	word_out <= linedata(r_index_reg)(r_offset_reg);
		
end a0;