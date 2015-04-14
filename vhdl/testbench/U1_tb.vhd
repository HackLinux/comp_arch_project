--************************************************
-- file		: single_port_cache_tb.vhd
-- author	: harsh aurora, loren lugosch
-- date		: 25 jan 2015
--
-- brief	   : single_port_cache testbench
--
-- TODO		: one clock cycle delay after reads
--				  try to get rid of it!
--
--				  Add matrix addition procs
--
--				  Add martix multiplication procs
--
--				  Reversing an array
--
--				  Sorting an array (bubble+merge)
--************************************************

use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use work.params.all;

entity U1_tb is
end U1_tb;

architecture a0 of U1_tb is

--Declare the component that you are testing:
	
	component U1_single_proc_system_wna is
		port	(	clk				: in  std_logic;
					rst				: in 	std_logic;
					flush				: in  std_logic;
					stall				: in 	std_logic;
					ready				: out std_logic;
					
					-- I/O interface for the FSM/Processor
					m_writedata		: in  std_logic_vector (word_length-1 downto 0);
					m_address		: in  std_logic_vector(r-1 downto 0);
					m_memwrite		: in  std_logic;
					m_memread		: in  std_logic;
					m_readdata		: out std_logic_vector (word_length-1 downto 0);
					m_waitrequest	: out std_logic
				);

	end component U1_single_proc_system_wna;

    --all the input signals with initial values
	signal clk				: std_logic := '0';
	signal rst				: std_logic := '1';
	signal stall			: std_logic := '0';
	signal flush			: std_logic	:= '0';
	signal ready			: std_logic := '0';
	signal m_writedata	: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal m_address		: std_logic_vector(r-1 downto 0) := (others => '0');
	signal m_memwrite		: std_logic := '0';
	signal m_memread		: std_logic := '0';
	signal m_readdata		: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal m_waitrequest	: std_logic := '1';
	
	constant out_dir		: string := "./text/output/";
	constant in_dir		: string := "./text/input/";
	constant out_ext		: string := ".out";
	constant in_ext		: string := ".in";
	constant result_ext	: string := "_result";
	
	
	
	
begin
	 
    xsingle_port_cache :	U1_single_proc_system_wna port map( clk, rst, flush, stall, ready,
																						 m_writedata, m_address, m_memwrite, m_memread, m_readdata, m_waitrequest);
    
	 clk_process : process
    begin
        clk <= '0';
        wait for clock_period/2;
        clk <= '1';
        wait for clock_period/2;
    end process;

    test_process : process
	 
		variable start				: time := 0 ns;
		variable finish			: time := 0 ns;
		variable readdata			: integer := 0;
		
		variable out_line : line;
		file out_file : text open write_mode is out_dir & "single_core_U1_wna" & out_ext;
		
		procedure reset is
		begin
		
			rst <= '1';
		
			m_address <= (others => '0');
			m_writedata <= (others => '0');
			m_memwrite <= '0';
			m_memread <= '0';
			wait for 3*clock_period;
			wait until rising_edge(clk);
			rst <= '0';
		
		end reset;
		
    	procedure read_addr(addr : in integer) is
		begin
			m_address <= std_logic_vector(to_unsigned(addr, r));
			m_writedata <= (others => '0');
			m_memwrite <= '0';
			m_memread <= '1';
		
			--wait until rising_edge(m_waitrequest);
			wait until (rising_edge(clk) and (m_waitrequest = '0'));
			m_memread <= '0';
			m_address <= (others => '0');
			
			wait until rising_edge(clk);
			readdata := to_integer(unsigned(m_readdata));
		end read_addr;
		
		procedure write_addr(addr : in integer; writedata : in integer) is
		begin
			m_address <= std_logic_vector(to_unsigned(addr, r));
			m_writedata <= std_logic_vector(to_unsigned(writedata, word_length));
			m_memwrite <= '1';
			m_memread <= '0';
		
			--wait until rising_edge(m_waitrequest);
			wait until (rising_edge(clk) and (m_waitrequest = '0'));
			m_memwrite <= '0';
			m_writedata <= (others => '0');
			m_address <= (others => '0');
			
		end write_addr;
		
		procedure assert_data(correct_data : in integer) is
		begin
			assert readdata = correct_data report "Assert Failed" severity Failure;			
		end assert_data;
		
		procedure write_file(str : in string) is
		begin
			write(out_line, str);
			writeline(out_file, out_line);
		end write_file;
		
		procedure write_time(test : in string) is
		begin
			write(out_line, test & " took " & integer'image((finish-start)/clock_period) & " clock cycles");
			writeline(out_file, out_line);
		end write_time;
		
		procedure basic_tests is
		begin
			
			write_addr(9,9);
			read_addr(9);
			assert_data(9);

			write_addr(10,10);
			read_addr(10);
			assert_data(10);

			for i in 0 to 4095  loop
				write_addr(i,i);
			end loop;
			
			for i in 0 to 4095  loop
				read_addr(i);
				assert_data(i);
			end loop;
			
		end basic_tests;
		

		procedure cflush is
		begin
			
			flush <= '1';
			wait for clock_period;
			wait until rising_edge(clk);
			flush <= '0';
			wait until rising_edge(ready);	
		end cflush;
		
		procedure store_arrays(array_file : in string ; array_length : in integer ; start_addr : in integer) is
			variable l : line;
			file f : text open read_mode is in_dir & array_file & in_ext;
			variable a1 : integer;
			variable space : character;
			variable a2 : integer;
		begin
			for i in 0 to array_length-1 loop
				readline(f, l);
				read(l, a1);
				read(l, space);
				read(l, a2);
				write_addr(start_addr+i,a1);
				write_addr(start_addr+array_length+i,a2);
			end loop;
		end store_arrays;
		
		procedure assert_arrays(array_file : in string ; array_length : in integer ; start_addr : in integer) is
			variable l : line;
			file f : text open read_mode is in_dir & array_file & in_ext;
			variable a1 : integer;
			variable space : character;
			variable a2 : integer;
		begin
			for i in 0 to array_length-1 loop
				readline(f, l);
				read(l, a1);
				read(l, space);
				read(l, a2);
				read_addr(start_addr+i);
				assert_data(a1);
				read_addr(start_addr+array_length+i);
				assert_data(a2);
			end loop;
		end assert_arrays;

		procedure add_arrays(array_length : in integer ; start_addr : in integer) is
			variable a1 : integer;
			variable a2 : integer;
		begin
			for i in 0 to array_length-1 loop
				read_addr(start_addr+i);
				a1 := readdata;
				read_addr(start_addr+array_length+i);
				a2 := readdata;
				write_addr(start_addr+array_length+array_length+i,(a1+a2));
			end loop;
		end add_arrays;
		
		procedure verify_sum(array_file : in string ; array_length : in integer ; start_addr : in integer) is
			variable l : line;
			file f : text open read_mode is in_dir & array_file & result_ext & in_ext;
			variable r : integer;
		begin
			for i in 0 to array_length-1 loop
				readline(f, l);
				read(l, r);
				read_addr(start_addr+array_length+array_length+i);
				assert_data(r);
			end loop;
		end verify_sum;
		
		procedure addition(size : in integer) is
		begin
			start := now;
			store_arrays("array" & integer'image(size), size, 0);
			add_arrays(size, 0);
			verify_sum("array" & integer'image(size), size, 0);
			finish := now;
			
			write_time(integer'image(size) & " element addition");
			
			cflush;
			
		end addition;
		
	 begin
		
		reset;
		
		addition(10);
		addition(50);
		addition(100);
		addition(500);
		addition(1000);
		addition(1500);
		addition(2500);
		addition(5000);
		addition(7500);
		addition(10000);
		
		wait;
    end process;
 
end a0;