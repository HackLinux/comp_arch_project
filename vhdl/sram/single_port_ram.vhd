--************************************************
-- file		:	single_port_ram.vhd
-- author	:	harsh aurora, loren lugosch
-- date		:	7 april 2015
--
-- brief	   :	this file describes the structure 
--					of single port memory
--
--					the memory is synthesized into SRAM
--					blocks
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

entity single_port_ram is
	port	(	clk				: in  std_logic;
				write_en			: in	std_logic;
				address			: in  std_logic_vector(r-1 downto 0);
				data_in			: in	std_logic_vector(word_length-1 downto 0);
				data_out			: out std_logic_vector(word_length-1 downto 0)
			);
end single_port_ram;

architecture a0 of single_port_ram is
		
	type mem_data is array (ram_size-1 downto 0) of std_logic_vector(word_length-1 downto 0);


	signal addr			: integer range 0 to ram_size-1;	
	signal addr_reg	: integer range 0 to ram_size-1;

	signal memory : mem_data;
	
begin
	
	addr <= to_integer(unsigned(address));
	
	process(clk)
	begin
		if(rising_edge(clk)) then
			
			if(write_en = '1') then
				memory(addr) <= data_in;
			end if;
			
			addr_reg <= addr;

		end if;
	end process;
	
	data_out <= memory(addr_reg);
		
end a0;