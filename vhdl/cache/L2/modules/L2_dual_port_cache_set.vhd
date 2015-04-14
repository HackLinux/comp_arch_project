--************************************************
-- file		:	dual_port_cache_set.vhd
-- author	:	harsh aurora, loren lugosch
-- date		:	7 april 2015
--
-- brief	   :	this file describes the structure 
--					of a dual port cache set
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

entity L2_dual_port_cache_set is
	port	(	clk					: in  std_logic;
				addr_0				: in  std_logic_vector(s+l-1 downto 0);
				ctrl_write_0		: in  std_logic;
				word_write_0		: in	std_logic;
				ctrl_in_0			: in	std_logic_vector(ctrl_length-1 downto 0);
				word_in_0			: in	std_logic_vector(word_length-1 downto 0);
				ctrl_out_0			: out std_logic_vector(ctrl_length-1 downto 0);
				word_out_0			: out std_logic_vector(word_length-1 downto 0);
				addr_1				: in  std_logic_vector(s+l-1 downto 0);
				ctrl_write_1		: in  std_logic;
				word_write_1		: in	std_logic;
				ctrl_in_1			: in	std_logic_vector(ctrl_length-1 downto 0);
				word_in_1			: in	std_logic_vector(word_length-1 downto 0);
				ctrl_out_1			: out std_logic_vector(ctrl_length-1 downto 0);
				word_out_1			: out std_logic_vector(word_length-1 downto 0)
			);
end L2_dual_port_cache_set;

architecture modelsim of L2_dual_port_cache_set is 

	type cache_ctrl is array (lines_per_set-1 downto 0) of std_logic_vector(ctrl_length-1 downto 0);

	type line_data is array (words_per_line-1 downto 0) of std_logic_vector(word_length-1 downto 0);
	type cache_data is array (lines_per_set-1 downto 0) of line_data;

	-- p0 --
	signal index_0 		: integer range 0 to lines_per_set-1;
	signal offset_0		: integer range 0 to words_per_line-1;
	
	-- RAW new--
	signal index_reg_0 	: integer range 0 to lines_per_set-1;
	signal offset_reg_0	: integer range 0 to words_per_line-1;
	
	-- p1 --
	signal index_1 		: integer range 0 to lines_per_set-1;
	signal offset_1		: integer range 0 to words_per_line-1;
	
	-- RAW new--
	signal index_reg_1 	: integer range 0 to lines_per_set-1;
	signal offset_reg_1	: integer range 0 to words_per_line-1;

	signal ctrldata : cache_ctrl;
	signal linedata : cache_data;
	
begin
	
	-- extract the different fields from the input address
	index_0 <= to_integer(unsigned(addr_0(s+l-1 downto l)));
	offset_0 <= to_integer(unsigned(addr_0(l-1 downto 0)));
	
	index_1 <= to_integer(unsigned(addr_1(s+l-1 downto l)));
	offset_1 <= to_integer(unsigned(addr_1(l-1 downto 0)));
	
	p0:
	process(clk)
	begin
		if(rising_edge(clk)) then
			
			if(word_write_0 = '1') then
				linedata(index_0)(offset_0) <= word_in_0;
			end if;
			
			if(ctrl_write_0 = '1') then
				ctrldata(index_0) <= ctrl_in_0;
			end if;				
			
			if(word_write_1 = '1') then
				linedata(index_1)(offset_1) <= word_in_1;
			end if;
			
			if(ctrl_write_1 = '1') then
				ctrldata(index_1) <= ctrl_in_1;
			end if;				

			--RAW new--
			index_reg_0 <= index_0;
         offset_reg_0 <= offset_0;
			index_reg_1 <= index_1;
         offset_reg_1 <= offset_1;
			
			--RAW old--
			--ctrl_out_0 <= ctrldata(index_0);
			--word_out_0 <= linedata(index_0)(offset_0);
			--ctrl_out_1 <= ctrldata(index_1);
			--word_out_1 <= linedata(index_1)(offset_1);

		end if;
	end process;
	
	--RAW new--
	ctrl_out_0 <= ctrldata(index_0);
	word_out_0 <= linedata(index_reg_0)(offset_reg_0);
	
	ctrl_out_1 <= ctrldata(index_1);
	word_out_1 <= linedata(index_reg_1)(offset_reg_1);
		
end modelsim;

--architecture quartus of dual_port_cache_set is 
--
--	type cache_ctrl is array (lines_per_set-1 downto 0) of std_logic_vector(ctrl_length-1 downto 0);
--
--	type line_data is array (words_per_line-1 downto 0) of std_logic_vector(word_length-1 downto 0);
--	type cache_data is array (lines_per_set-1 downto 0) of line_data;
--
--	-- p0 --
--	signal index_0 		: integer range 0 to lines_per_set-1;
--	signal offset_0		: integer range 0 to words_per_line-1;
--	
--	-- RAW new--
--	signal index_reg_0 	: integer range 0 to lines_per_set-1;
--	signal offset_reg_0	: integer range 0 to words_per_line-1;
--	
--	-- p1 --
--	signal index_1 		: integer range 0 to lines_per_set-1;
--	signal offset_1		: integer range 0 to words_per_line-1;
--	
--	-- RAW new--
--	signal index_reg_1 	: integer range 0 to lines_per_set-1;
--	signal offset_reg_1	: integer range 0 to words_per_line-1;
--
--	signal ctrldata : cache_ctrl;
--	signal linedata : cache_data;
--	
--begin
--	
--	-- extract the different fields from the input address
--	index_0 <= to_integer(unsigned(addr_0(s+l-1 downto l)));
--	offset_0 <= to_integer(unsigned(addr_0(l-1 downto 0)));
--	
--	index_1 <= to_integer(unsigned(addr_1(s+l-1 downto l)));
--	offset_1 <= to_integer(unsigned(addr_1(l-1 downto 0)));
--	
--	p0:
--	process(clk)
--	begin
--		if(rising_edge(clk)) then
--			
--			if(word_write_0 = '1') then
--				linedata(index_0)(offset_0) <= word_in_0;
--			end if;
--			
--			if(ctrl_write_0 = '1') then
--				ctrldata(index_0) <= ctrl_in_0;
--			end if;						
--
--			--RAW new--
--			index_reg_0 <= index_0;
--         offset_reg_0 <= offset_0;
--			
--			--RAW old--
--			--ctrl_out_0 <= ctrldata(index_0);
--			--word_out_0 <= linedata(index_0)(offset_0);
--
--		end if;
--	end process;
--	
--	p1:
--	process(clk)
--	begin
--		if(rising_edge(clk)) then
--			
--			if(word_write_1 = '1') then
--				linedata(index_1)(offset_1) <= word_in_1;
--			end if;
--			
--			if(ctrl_write_1 = '1') then
--				ctrldata(index_1) <= ctrl_in_1;
--			end if;						
--
--			--RAW old--
--			--ctrl_out_1 <= ctrldata(index_1);
--			--word_out_1 <= linedata(index_1)(offset_1);
--			
--			--RAW new--
--			index_reg_1 <= index_1;
--         offset_reg_1 <= offset_1;
--
--		end if;
--	end process;
--	
--	--RAW new--
--	ctrl_out_0 <= ctrldata(index_0);
--	word_out_0 <= linedata(index_reg_0)(offset_reg_0);
--	
--	ctrl_out_1 <= ctrldata(index_1);
--	word_out_1 <= linedata(index_reg_1)(offset_reg_1);
--		
--end quartus;