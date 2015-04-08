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

entity split_cache_tb is
end split_cache_tb;

architecture a0 of split_cache_tb is

--Declare the component that you are testing:

	component horens_two_proc_system is
		port	(	clk		: in  std_logic;
					rst		: in  std_logic;
					
					flush_0				: in  std_logic;
					ready_0				: out std_logic;
					
					m_writedata_0		: in  std_logic_vector (word_length-1 downto 0);
					m_address_0			: in  std_logic_vector(r-1 downto 0);
					m_memwrite_0		: in  std_logic;
					m_memread_0			: in  std_logic;
					m_readdata_0		: out std_logic_vector (word_length-1 downto 0);
					m_waitrequest_0	: out std_logic;
					
					flush_1				: in  std_logic;
					ready_1				: out std_logic;
					
					m_writedata_1		: in  std_logic_vector (word_length-1 downto 0);
					m_address_1			: in  std_logic_vector(r-1 downto 0);
					m_memwrite_1		: in  std_logic;
					m_memread_1			: in  std_logic;
					m_readdata_1		: out std_logic_vector (word_length-1 downto 0);
					m_waitrequest_1	: out std_logic			
				);
	end component horens_two_proc_system;

    --all the input signals with initial values
	signal clk				: std_logic := '0';
	signal rst				: std_logic := '1';
	signal flush_0			: std_logic	:= '0';
	signal ready_0			: std_logic := '0';
	signal flush_1			: std_logic	:= '0';
	signal ready_1			: std_logic := '0';
	
	signal m_writedata_0	: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal m_address_0		: std_logic_vector(r-1 downto 0) := (others => '0');
	signal m_memwrite_0		: std_logic := '0';
	signal m_memread_0		: std_logic := '0';
	signal m_readdata_0		: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal m_waitrequest_0	: std_logic := '1';
	
	signal m_writedata_1	: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal m_address_1		: std_logic_vector(r-1 downto 0) := (others => '0');
	signal m_memwrite_1		: std_logic := '0';
	signal m_memread_1		: std_logic := '0';
	signal m_readdata_1		: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal m_waitrequest_1	: std_logic := '1';
	
	constant out_dir		: string := "./text/output/";
	constant in_dir		: string := "./text/input/";
	constant out_ext		: string := ".out";
	constant in_ext		: string := ".in";
	constant result_ext	: string := "_result";
	
	constant P0 : std_logic := '0';
	constant P1 : std_logic := '1';
	signal addr_0 : integer := 0;
	signal addr_1 : integer := 0;
	
	signal activate_P0_read : std_logic := '0';
	signal activate_P1_read : std_logic := '0';
	signal activate_P0_write : std_logic := '0';
	signal activate_P1_write : std_logic := '0';
	signal P0_done : std_logic := '1';
	signal P1_done : std_logic := '1';
	signal stall_0 : std_logic := '0';
	signal stall_1 : std_logic := '0';
	
	signal readdata_0			: integer := 0;
	signal readdata_1			: integer := 0;
	signal writedata_0  : integer := 0;
	signal writedata_1  : integer := 0; 
	
begin
	
	xhtps : horens_two_proc_system port map(	clk, rst,
															flush_0, ready_0,
															m_writedata_0, m_address_0, m_memwrite_0, m_memread_0, m_readdata_0, m_waitrequest_0,
															flush_1, ready_1,
															m_writedata_1, m_address_1, m_memwrite_1, m_memread_1, m_readdata_1, m_waitrequest_1);
	
	clk_process : process

   begin
       clk <= '0';
       wait for clock_period/2;
       clk <= '1';
       wait for clock_period/2;
   end process;
	 
	read_addr_P0: process
	begin
		if (activate_P0_read = '1') then
			P0_done <= '0';
			m_address_0 <= std_logic_vector(to_unsigned(addr_0, r));
			m_writedata_0 <= (others => '0');
			m_memwrite_0 <= '0';
			m_memread_0 <= '1';
			
			wait until (rising_edge(clk) and (m_waitrequest_0 = '0'));
			m_memread_0 <= '0';
			m_address_0 <= (others => '0');
				
			wait until rising_edge(clk);
			readdata_0 <= to_integer(unsigned(m_readdata_0));
			P0_done <= '1';
		end if;
	end process;
		
	read_addr_P1: process
	begin
		if (activate_P1_read = '1') then
			P1_done <= '0';
			m_address_0 <= std_logic_vector(to_unsigned(addr_1, r));
			m_writedata_1 <= (others => '0');
			m_memwrite_1 <= '0';
			m_memread_1 <= '1';
			
			wait until (rising_edge(clk) and (m_waitrequest_1 = '0'));
			m_memread_1 <= '0';
			m_address_1 <= (others => '0');
				
			wait until rising_edge(clk);
			readdata_1 <= to_integer(unsigned(m_readdata_1));
			P1_done <= '1';
		end if;
	end process;

	write_addr_P0: process
	begin
		if (activate_P0_write = '1') then
			P0_done <= '0';
			m_address_0 <= std_logic_vector(to_unsigned(addr_0, r));
			m_writedata_0 <= std_logic_vector(to_unsigned(writedata_0, word_length));
			m_memwrite_0 <= '1';
			m_memread_0 <= '0';
		
			wait until (rising_edge(clk) and (m_waitrequest_0 = '0'));
			m_memwrite_0 <= '0';
			m_writedata_0 <= (others => '0');
			m_address_0 <= (others => '0');
			P0_done <= '1';
		end if;
	end process;
		
	write_addr_P1: process
	begin
		if (activate_P1_write = '1') then
			P1_done <= '0';
			m_address_1 <= std_logic_vector(to_unsigned(addr_1, r));
			m_writedata_1 <= std_logic_vector(to_unsigned(writedata_1, word_length));
			m_memwrite_1 <= '1';
			m_memread_1 <= '0';
		
			wait until (rising_edge(clk) and (m_waitrequest_1 = '0'));
			m_memwrite_1 <= '0';
			m_writedata_1 <= (others => '0');
			m_address_1 <= (others => '0');
			P1_done <= '1';
		end if;
	end process;
	
    test_process : process
	 
		variable start				: time := 0 ns;
		variable finish			: time := 0 ns;
		
		variable out_line : line;
		file out_file : text open write_mode is out_dir & "single_core" & out_ext;
		
		procedure reset is
		begin
		
			rst <= '1';
		
			m_address_0 <= (others => '0');
			m_writedata_0 <= (others => '0');
			m_memwrite_0 <= '0';
			m_memread_0 <= '0';
			
			m_address_1 <= (others => '0');
			m_writedata_1 <= (others => '0');
			m_memwrite_1 <= '0';
			m_memread_1 <= '0';
			
			wait for 3*clock_period;
			wait until rising_edge(clk);
			rst <= '0';
		
		end reset;
		
		procedure read_addr(addr : in integer; proc : in std_logic) is
		begin
			if (proc = P0) then
				addr_0 <= addr;
				m_address_0 <= std_logic_vector(to_unsigned(addr_0, r));
				activate_P0_read <= '1';
				wait until P0_done = '1';
				activate_P0_read <= '0';
			end if;
			
			if (proc = P1) then
				addr_1 <= addr;
				m_address_1 <= std_logic_vector(to_unsigned(addr_1, r));
				activate_P1_read <= '1';
				wait until P1_done = '1';
				activate_P1_read <= '0';
			end if;
		end read_addr;
		
		procedure write_addr(addr : in integer; writedata : in integer; proc : in std_logic) is
		begin
			if (proc = P0) then
				addr_0 <= addr;
				writedata_0 <= writedata; 
				m_address_0 <= std_logic_vector(to_unsigned(addr_0, r));
				activate_P0_write <= '1';
				wait until P0_done = '1';
				activate_P0_write <= '0';
			end if;
			
			if (proc = P1) then
				addr_1 <= addr;
				writedata_1 <= writedata; 
				m_address_1 <= std_logic_vector(to_unsigned(addr_1, r));
				activate_P1_write <= '1';
				wait until P1_done = '1';
				activate_P1_write <= '0';
			end if;
			
		end write_addr;
		
		procedure assert_data(correct_data : in integer; test_data : in integer) is
		begin
			assert test_data = correct_data report "Assert Failed" severity Failure;			
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
			
			write_addr(9,9,P0);
			read_addr(9,P0);
			assert_data(9);

			write_addr(10,10,P0);
			read_addr(10,P0);
			assert_data(10,P0);

			for i in 0 to 4095  loop
				write_addr(i,i,P0);
			end loop;
			
			for i in 0 to 4095  loop
				read_addr(i,P0);
				assert_data(i);
			end loop;
			
		end basic_tests;
		

		procedure flush_test is
		begin
			
			for i in 0 to (ram_size/2048)-1 loop
				for j in 0 to 1023  loop
					read_addr((i*1024)+j,P0);
				end loop;
			
				for j in 0 to 1023  loop
					write_addr((i*1024)+j,(i*1024)+j,P0);
				end loop;
			
				flush <= '1';
				wait until rising_edge(clk);
				flush <= '0';
			end loop;
			
			for i in 0 to (ram_size/2048)-1 loop
				for j in 0 to 1023  loop
					read_addr((i*1024)+j,P0);
					assert_data((i*1024)+j);
				end loop;	
			end loop;
			
		end flush_test;
		
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
				write_addr(start_addr+i,a1,P0);
				write_addr(start_addr+array_length+i,a2,P0);
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
				read_addr(start_addr+i,P0);
				assert_data(a1);
				read_addr(start_addr+array_length+i,P0);
				assert_data(a2);
			end loop;
		end assert_arrays;

		
		procedure verify_sum(array_file : in string ; array_length : in integer ; start_addr : in integer) is
			variable l : line;
			file f : text open read_mode is in_dir & array_file & result_ext & in_ext;
			variable r : integer;
		begin
			for i in 0 to array_length-1 loop
				readline(f, l);
				read(l, r);
				read_addr(start_addr+array_length+array_length+i,P0);
				assert_data(r);
			end loop;
		end verify_sum;
		
		procedure add_arrays_interleaved(array_length : in integer ; start_addr_a : in integer; start_addr_b : in integer; start_addr_c : in integer) is
			variable a0 : integer;
			variable a1 : integer;
			variable b0 : integer;
			variable b1 : integer;
			variable c0 : integer;
			variable c1 : integer;
			variable i : integer range 0 to array_length;
			
		begin
			i := 0;
			-- interleaved access: CPU0 accesses block 0, CPU1 block 1, CPU0 block 2, etc.
			while (i < array_length) loop
				-- CPU0 and CPU1 access their blocks in parallel
			read_addr(start_addr_a+i,P0);
				a0 := readdata_0;
				read_addr(start_addr_b+i,P0);
				b0 := readdata_0;
				
				read_addr(start_addr_a+i,P1);
				a1 := readdata_1;
				read_addr(start_addr_b+i,P1);
				b1 := readdata_1;
				
				-- only start write procedure after both waitrequest0 and waitrequest1 go low
				write_addr(start_addr_c+i,(a0 + b0),P0);
				write_addr(start_addr_c+i,(a1 + b1),P1);
				
				i := i * words_per_line
			end loop;
		end add_arrays_interleaved;
		
	 begin
		
		reset;
		
		--start := now;
		--basic_tests;
		--finish := now;
		
		--write_time("Basic tests");
		
		--start := now;
		--store_arrays("array1000",1000,100);
		--finish := now;
		
		--write_time("Storing arrays");
		
		--start := now;
		--assert_arrays("array10.in",10,100);
		--finish := now;
		
		--write_time("Verifying arrays");
		
		--start := now;
		--add_arrays(1000,100);
		--finish := now;
		
		--write_time("Adding arrays");
		
		--start := now;
		--verify_sum("array1000",1000,100);
		--finish := now;
		
		--write_time("Verifying sum");
		
		start := now;
		flush_test;
		finish := now;
		
		write_time("Flush test");
		
		wait;
    end process;
 
end a0;