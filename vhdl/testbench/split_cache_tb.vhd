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
	signal clk					: std_logic := '0';
	signal rst					: std_logic := '1';
	

	signal flush_0				: std_logic	:= '0';
	signal ready_0				: std_logic := '0';	
	signal m_writedata_0		: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal m_address_0		: std_logic_vector(r-1 downto 0) := (others => '0');
	signal m_memwrite_0		: std_logic := '0';
	signal m_memread_0		: std_logic := '0';
	signal m_readdata_0		: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal m_waitrequest_0	: std_logic := '1';
	

	signal flush_1				: std_logic	:= '0';
	signal ready_1				: std_logic := '0';
	signal m_writedata_1		: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal m_address_1		: std_logic_vector(r-1 downto 0) := (others => '0');
	signal m_memwrite_1		: std_logic := '0';
	signal m_memread_1		: std_logic := '0';
	signal m_readdata_1		: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal m_waitrequest_1	: std_logic := '1';
	
	constant out_dir			: string := "./text/output/";
	constant in_dir			: string := "./text/input/";
	constant out_ext			: string := ".out";
	constant in_ext			: string := ".in";
	constant result_ext		: string := "_result";
	
	signal array_length		: integer := 10;
	signal interleaved		: integer := 0;
	signal start_addr_0		: integer := 0;
	signal start_addr_1		: integer := 0;
	signal end_addr_0			: integer := 0;
	signal end_addr_1			: integer := 0;
	signal array_start_addr	: integer := 0;
	
	signal array_test_en		: std_logic := '0';
	signal array_test			: std_logic := '0';
	
	signal P0_done				: std_logic := '0';
	signal P1_done				: std_logic := '0';
	
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

	
	reset:
	process
	begin
		rst <= '1';
		wait for 3*clock_period;
		wait until rising_edge(clk);
		rst <= '0';
		wait;
	end process reset;

	P_0:
	process
	
		variable start				: time := 0 ns;
		variable finish			: time := 0 ns;
		variable readdata_0		: integer := 0;
		
		variable out_line : line;
		file out_file : text open write_mode is out_dir & "P0" & out_ext;
		
	
		-- P0 reads the value stored at 'addr' into variable 'readdata_0'
    	procedure read_addr(addr : in integer) is
		begin
			m_address_0 <= std_logic_vector(to_unsigned(addr, r));
			m_writedata_0 <= (others => '0');
			m_memwrite_0 <= '0';
			m_memread_0 <= '1';
		
			--wait until rising_edge(m_waitrequest);
			wait until (rising_edge(clk) and (m_waitrequest_0 = '0'));
			m_memread_0 <= '0';
			m_address_0 <= (others => '0');
			
			wait until rising_edge(clk);
			readdata_0 := to_integer(unsigned(m_readdata_0));
		end read_addr;
		
		
		-- P0 writes the value given by 'writedata' at 'addr'
		procedure write_addr(addr : in integer; writedata : in integer) is
		begin
			m_address_0 <= std_logic_vector(to_unsigned(addr, r));
			m_writedata_0 <= std_logic_vector(to_unsigned(writedata, word_length));
			m_memwrite_0 <= '1';
			m_memread_0 <= '0';
		
			--wait until rising_edge(m_waitrequest);
			wait until (rising_edge(clk) and (m_waitrequest_0 = '0'));
			m_memwrite_0 <= '0';
			m_writedata_0 <= (others => '0');
			m_address_0 <= (others => '0');
			
		end write_addr;
		
		-- P0 checks whether the data stored in 'readdata_0' is equal to 'correct_data'
		procedure assert_data(correct_data : in integer) is
		begin
			assert readdata_0 = correct_data report "Assert Failed P0" severity Failure;			
		end assert_data;
		
		-- flush the cache of P0
		procedure flush is
		begin
			flush_0 <= '1';
			wait for clock_period;
			wait until rising_edge(clk);
			flush_0 <= '0';
			wait until rising_edge(ready_0);
		end flush;
		
		-- P0 writes a string 'str' to its output file './text/output/P0.out'
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

		procedure store_arrays is
			variable l : line;
			file f : text open read_mode is in_dir & "array" & integer'image(array_length) & in_ext;
			variable a1 : integer;
			variable space : character;
			variable a2 : integer;
		begin
			for i in 0 to array_length-1 loop
				readline(f, l);
				read(l, a1);
				read(l, space);
				read(l, a2);
				if((i >= start_addr_0) and (i < end_addr_0)) then
					if(interleaved = 0) then
						write_addr(array_start_addr+i,a1);
						write_addr(array_start_addr+array_length+i,a2);
					elsif(i mod 2 = 0) then
						write_addr(array_start_addr+i,a1);
						write_addr(array_start_addr+array_length+i,a2);
					end if;
				end if;
			end loop;
		end store_arrays;
		
		procedure assert_arrays is
			variable l : line;
			file f : text open read_mode is in_dir & "array" & integer'image(array_length) & in_ext;
			variable a1 : integer;
			variable space : character;
			variable a2 : integer;
		begin
			for i in 0 to array_length-1 loop
				readline(f, l);
				read(l, a1);
				read(l, space);
				read(l, a2);
				if((i >= start_addr_0) and (i < end_addr_0)) then
					if(interleaved = 0) then
						read_addr(array_start_addr+i);
						assert_data(a1);
						read_addr(array_start_addr+array_length+i);
						assert_data(a2);
					elsif(i mod 2 = 0) then
						read_addr(array_start_addr+i);
						assert_data(a1);
						read_addr(array_start_addr+array_length+i);
						assert_data(a2);
					end if;
				end if;
			end loop;
		end assert_arrays;

		procedure add_arrays is
			variable a1 : integer;
			variable a2 : integer;
		begin
			for i in 0 to array_length-1 loop
				if((i >= start_addr_0) and (i < end_addr_0)) then
					if(interleaved = 0) then
						read_addr(array_start_addr+i);
						a1 := readdata_0;
						read_addr(array_start_addr+array_length+i);
						a2 := readdata_0;
						write_addr(array_start_addr+array_length+array_length+i,(a1+a2));
					elsif(i mod 2 = 0) then
						read_addr(array_start_addr+i);
						a1 := readdata_0;
						read_addr(array_start_addr+array_length+i);
						a2 := readdata_0;
						write_addr(array_start_addr+array_length+array_length+i,(a1+a2));
					end if;
				end if;
			end loop;
		end add_arrays;
		
		procedure verify_array_sum is
			variable l : line;
			file f : text open read_mode is in_dir & "array" & integer'image(array_length) & result_ext & in_ext;
			variable r : integer;
		begin
			for i in 0 to array_length-1 loop
				readline(f, l);
				read(l, r);
				
				if((i >= start_addr_0) and (i < end_addr_0)) then
					if(interleaved = 0) then
						read_addr(array_start_addr+array_length+array_length+i);
						assert_data(r);
					elsif(i mod 2 = 0) then
						read_addr(array_start_addr+array_length+array_length+i);
						assert_data(r);
					end if;
				end if;
			end loop;
		end verify_array_sum;
		
		procedure perform_array_test is
		begin		
		
			wait until (array_test_en = '1');
			
			if(interleaved = 0) then
				write_file("Beginning " & integer'image(array_length) & " element array addition test (chunks)");
			else
				write_file("Beginning " & integer'image(array_length) & " element array addition test (interleaved)");
			end if;
			
			write_file("");

			start := now;
			store_arrays;
			finish := now;
			
			write_time("Storing arrays");
			
			start := now;
			assert_arrays;
			finish := now;
			
			write_time("Verifying arrays");
			
			start := now;
			flush;
			finish := now;
			
			write_time("Flushing the cache");
		
			start := now;
			add_arrays;
			finish := now;
			
			write_time("Adding arrays");
			
			start := now;
			verify_array_sum;
			finish := now;
			
			write_time("Verifying the sum");
			
			P0_done <= '1';
			wait until (array_test_en = '0');
			
			
			if(interleaved = 0) then
				write_file("Finishing " & integer'image(array_length) & " element array addition test (chunks)");
			else
				write_file("Finishing " & integer'image(array_length) & " element array addition test (interleaved)");
			end if;

			write_file("");
			write_file("");
			write_file("Flushing the cache");
			
			start := now;
			flush;
			finish := now;
			
			write_time("Flushing the cache");
			write_file("");
			write_file("");
			
			P0_done <= '0';
		
		end perform_array_test;
		
	begin
	
		m_address_0 <= (others => '0');
		m_writedata_0 <= (others => '0');
		m_memwrite_0 <= '0';
		m_memread_0 <= '0';
		P0_done <= '0';
		wait until falling_edge(rst);
						
		wait until array_test = '1';				
						
		while array_test = '1' loop
			perform_array_test;
		end loop;
		
		wait;
	
	end process P_0;
	
	P_1:
	process
		
		variable start				: time := 0 ns;
		variable finish			: time := 0 ns;
		variable readdata_1		: integer := 0;
		
		variable out_line : line;
		file out_file : text open write_mode is out_dir & "P1" & out_ext;
		
	
		-- P1 reads the value stored at 'addr' into variable 'readdata_1'
    	procedure read_addr(addr : in integer) is
		begin
			m_address_1 <= std_logic_vector(to_unsigned(addr, r));
			m_writedata_1 <= (others => '0');
			m_memwrite_1 <= '0';
			m_memread_1 <= '1';
		
			--wait until rising_edge(m_waitrequest);
			wait until (rising_edge(clk) and (m_waitrequest_1 = '0'));
			m_memread_1 <= '0';
			m_address_1 <= (others => '0');
			
			wait until rising_edge(clk);
			readdata_1 := to_integer(unsigned(m_readdata_1));
		end read_addr;
		
		
		-- P1 writes the value given by 'writedata' at 'addr'
		procedure write_addr(addr : in integer; writedata : in integer) is
		begin
			m_address_1 <= std_logic_vector(to_unsigned(addr, r));
			m_writedata_1 <= std_logic_vector(to_unsigned(writedata, word_length));
			m_memwrite_1 <= '1';
			m_memread_1 <= '0';
		
			--wait until rising_edge(m_waitrequest);
			wait until (rising_edge(clk) and (m_waitrequest_1 = '0'));
			m_memwrite_1 <= '0';
			m_writedata_1 <= (others => '0');
			m_address_1 <= (others => '0');
			
		end write_addr;
		
		-- P1 checks whether the data stored in 'readdata_1' is equal to 'correct_data'
		procedure assert_data(correct_data : in integer) is
		begin
			assert readdata_1 = correct_data report "Assert Failed P1" severity Failure;			
		end assert_data;
		
		-- flush the cache of P1
		procedure flush is
		begin
			flush_1 <= '1';
			wait for clock_period;
			wait until rising_edge(clk);
			flush_1 <= '0';
			wait until rising_edge(ready_1);
		end flush;
		
		-- P1 writes a string 'str' to its output file './text/output/P0.out'
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

		procedure store_arrays is
			variable l : line;
			file f : text open read_mode is in_dir & "array" & integer'image(array_length) & in_ext;
			variable a1 : integer;
			variable space : character;
			variable a2 : integer;
		begin
			for i in 0 to array_length-1 loop
				readline(f, l);
				read(l, a1);
				read(l, space);
				read(l, a2);
				if((i >= start_addr_1) and (i < end_addr_1)) then
					if(interleaved = 0) then
						write_addr(array_start_addr+i,a1);
						write_addr(array_start_addr+array_length+i,a2);
					elsif(i mod 2 = 1) then
						write_addr(array_start_addr+i,a1);
						write_addr(array_start_addr+array_length+i,a2);
					end if;
				end if;
			end loop;
		end store_arrays;
		
		procedure assert_arrays is
			variable l : line;
			file f : text open read_mode is in_dir & "array" & integer'image(array_length) & in_ext;
			variable a1 : integer;
			variable space : character;
			variable a2 : integer;
		begin
			for i in 0 to array_length-1 loop
				readline(f, l);
				read(l, a1);
				read(l, space);
				read(l, a2);
				if((i >= start_addr_1) and (i < end_addr_1)) then
					if(interleaved = 0) then
						read_addr(array_start_addr+i);
						assert_data(a1);
						read_addr(array_start_addr+array_length+i);
						assert_data(a2);
					elsif(i mod 2 = 1) then
						read_addr(array_start_addr+i);
						assert_data(a1);
						read_addr(array_start_addr+array_length+i);
						assert_data(a2);
					end if;
				end if;
			end loop;
		end assert_arrays;

		procedure add_arrays is
			variable a1 : integer;
			variable a2 : integer;
		begin
			for i in 0 to array_length-1 loop
				if((i >= start_addr_1) and (i < end_addr_1)) then
					if(interleaved = 0) then
						read_addr(array_start_addr+i);
						a1 := readdata_1;
						read_addr(array_start_addr+array_length+i);
						a2 := readdata_1;
						write_addr(array_start_addr+array_length+array_length+i,(a1+a2));
					elsif(i mod 2 = 1) then
						read_addr(array_start_addr+i);
						a1 := readdata_1;
						read_addr(array_start_addr+array_length+i);
						a2 := readdata_1;
						write_addr(array_start_addr+array_length+array_length+i,(a1+a2));
					end if;
				end if;
			end loop;
		end add_arrays;
		
		procedure verify_array_sum is
			variable l : line;
			file f : text open read_mode is in_dir & "array" & integer'image(array_length) & result_ext & in_ext;
			variable r : integer;
		begin
			for i in 0 to array_length-1 loop
				readline(f, l);
				read(l, r);
				
				if((i >= start_addr_1) and (i < end_addr_1)) then
					if(interleaved = 0) then
						read_addr(array_start_addr+array_length+array_length+i);
						assert_data(r);
					elsif(i mod 2 = 1) then
						read_addr(array_start_addr+array_length+array_length+i);
						assert_data(r);
					end if;
				end if;
			end loop;
		end verify_array_sum;
		
		procedure perform_array_test is
		begin
				
			wait until (array_test_en = '1');
			
			if(interleaved = 0) then
				write_file("Beginning " & integer'image(array_length) & " element array addition test (chunks)");
			else
				write_file("Beginning " & integer'image(array_length) & " element array addition test (interleaved)");
			end if;
			
			write_file("");

			start := now;
			store_arrays;
			finish := now;
			
			write_time("Storing arrays");
			
			start := now;
			assert_arrays;
			finish := now;
			
			write_time("Verifying arrays");
			
			start := now;
			flush;
			finish := now;
			
			write_time("Flushing the cache");
		
			start := now;
			add_arrays;
			finish := now;
			
			write_time("Adding arrays");
			
			start := now;
			verify_array_sum;
			finish := now;
			
			write_time("Verifying the sum");
			
			P1_done <= '1';
			wait until (array_test_en = '0');
			
			if(interleaved = 0) then
				write_file("Finishing " & integer'image(array_length) & " element array addition test (chunks)");
			else
				write_file("Finishing " & integer'image(array_length) & " element array addition test (interleaved)");
			end if;

			write_file("");
			write_file("");
			write_file("Flushing the cache");
			
			start := now;
			flush;
			finish := now;
			
			write_time("Flushing the cache");
			write_file("");
			write_file("");
			
			P1_done <= '0';
		
		end perform_array_test;

	begin
			
		m_address_1 <= (others => '0');
		m_writedata_1 <= (others => '0');
		m_memwrite_1 <= '0';
		m_memread_1 <= '0';
		P1_done <= '0';
		wait until falling_edge(rst);

		wait until array_test = '1';
			
		while array_test = '1' loop
			perform_array_test;
		end loop;
		
		wait;
		
	end process P_1;
	
	test_process:
	process
	
		variable start				: time := 0 ns;
		variable finish			: time := 0 ns;
		
		variable out_line : line;
		file out_file : text open write_mode is out_dir & "Tests" & out_ext;
		
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
		
		procedure add_arrays(size : in integer ; start_addr : in integer ; mode : in integer) is
		begin
		
			if(mode = 0) then
				write_file("Beginning " & integer'image(size) & " element array addition test (chunks)");
			else
				write_file("Beginning " & integer'image(size) & " element array addition test (interleaved)");
			end if;
			
			write_file("");
			
			array_length <= size;
			if(mode = 0) then
				interleaved <= 0;
				start_addr_0 <= start_addr;
				start_addr_1 <= start_addr + size/2;
				end_addr_0 <= start_addr + size/2;
				end_addr_1 <= size;
				array_start_addr <= start_addr;
			else
				interleaved <= 1;
				start_addr_0 <= start_addr;
				start_addr_1 <= start_addr;
				end_addr_0 <= start_addr + size;
				end_addr_1 <= start_addr + size;
				array_start_addr <= start_addr;			
			end if;
			
			wait until ((ready_0 and ready_1) = '1');
			array_test_en <= '1';
			
			start := now;
			wait until((P0_done and P1_done) = '1');
			array_test_en <= '0';
			finish := now;
		
			if(mode = 0) then
				write_time(integer'image(size) & " element array addition test (chunks)");
			else 
				write_time(integer'image(size) & " element array addition test (interleaved)");
			end if;
			
			write_file("");
			
		end add_arrays;
	
	begin
	
		array_test_en <= '0';
		array_test <= '0';
		
		wait until falling_edge(rst);
		
		array_test <= '1';
		
		add_arrays(10, 0, 0);
		add_arrays(10, 0, 1);
		add_arrays(1000, 0, 0);
		add_arrays(1000, 0, 1);
		add_arrays(100000, 0, 0);
		add_arrays(100000, 0, 1);
		
		array_test <= '0';
		
		wait;
	end process test_process;

end a0;