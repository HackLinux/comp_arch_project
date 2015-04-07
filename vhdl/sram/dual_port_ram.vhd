--************************************************
-- file		:	dual_port_ram.vhd
-- author	:	harsh aurora, loren lugosch
-- date		:	7 april 2015
--
-- brief	   :	this file describes the structure 
--					of dual port memory
--					
--					the memory is synthesized into SRAM
--					blocks
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

entity dual_port_ram is
	port	(	clk				: in  std_logic;
				
				write_en_0		: in	std_logic;
				address_0		: in  std_logic_vector(r-1 downto 0);
				data_in_0		: in	std_logic_vector(word_length-1 downto 0);
				data_out_0		: out std_logic_vector(word_length-1 downto 0);
				
				write_en_1		: in	std_logic;
				address_1		: in  std_logic_vector(r-1 downto 0);
				data_in_1		: in	std_logic_vector(word_length-1 downto 0);
				data_out_1		: out std_logic_vector(word_length-1 downto 0)
			);
end dual_port_ram;

architecture modelsim of dual_port_ram is
		
	type mem_data is array (ram_size-1 downto 0) of std_logic_vector(word_length-1 downto 0);
	

	-- port 0 --
	signal addr_0			: integer range 0 to ram_size-1;	
	--RAW new--
	signal addr_reg_0	: integer range 0 to ram_size-1;

	
	-- port 1--
	signal addr_1			: integer range 0 to ram_size-1;	
	--RAW new--
	signal addr_reg_1	: integer range 0 to ram_size-1;

	signal memory : mem_data;
	
begin
	
	addr_0 <= to_integer(unsigned(address_0));
	addr_1 <= to_integer(unsigned(address_1));
	
	process(clk)
	begin
		if(rising_edge(clk)) then
			
			if(write_en_0 = '1') then
				memory(addr_0) <= data_in_0;
			end if;
			
			if(write_en_1 = '1') then
				memory(addr_1) <= data_in_1;
			end if;
			
			--RAW new--
			addr_reg_0 <= addr_0;
			addr_reg_1 <= addr_1;

			
			--RAW old--
			--data_out_0 <= memory(addr_0);
			--data_out_1 <= memory(addr_1);

		end if;
	end process;
	
	--RAW new--
	data_out_0 <= memory(addr_reg_0);
	data_out_1 <= memory(addr_reg_1);
		
end modelsim;


--architecture quartus of dual_port_ram is
--		
--	type mem_data is array (ram_size-1 downto 0) of std_logic_vector(word_length-1 downto 0);
--	
--
--	-- port 0 --
--	signal addr_0			: integer range 0 to ram_size-1;	
--	--RAW new--
--	signal addr_reg_0	: integer range 0 to ram_size-1;
--
--	
--	-- port 1--
--	signal addr_1			: integer range 0 to ram_size-1;	
--	--RAW new--
--	signal addr_reg_1	: integer range 0 to ram_size-1;
--
--	signal memory : mem_data;
--	
--begin
--	
--	addr_0 <= to_integer(unsigned(address_0));
--	addr_1 <= to_integer(unsigned(address_1));
--	
--	process(clk)
--	begin
--		if(rising_edge(clk)) then
--			
--			if(write_en_0 = '1') then
--				memory(addr_0) <= data_in_0;
--			end if;
--			
--			--RAW new--
--			addr_reg_0 <= addr_0;
--
--			
--			--RAW old--
--			--data_out_0 <= memory(addr_0);
--
--		end if;
--	end process;
--	
--	port_1:
--	process(clk)
--	begin
--		if(rising_edge(clk)) then
--			
--			if(write_en_1 = '1') then
--				memory(addr_1) <= data_in_1;
--			end if;
--			
--			--RAW new--
--			addr_reg_1 <= addr_1;
--
--			
--			--RAW old--
--			--data_out_1 <= memory(addr_1);
--
--		end if;
--	end process port_1;
--	
--	--RAW new--
--	data_out_0 <= memory(addr_reg_0);
--	data_out_1 <= memory(addr_reg_1);
--		
--end quartus;