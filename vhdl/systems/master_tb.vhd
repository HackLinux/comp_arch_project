--************************************************
-- file		: master_tb.vhd
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
use work.system_components.all;

entity master_tb is
end master_tb;

architecture a0 of master_tb is

	signal clk					: std_logic := '0';
	signal rst					: std_logic := '1';
	
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
	
	signal U1_wa_flush								: std_logic := '0';
	signal U1_wa_stall								: std_logic := '0';
	signal U1_wa_ready								: std_logic := '0';
	signal U1_wa_m_writedata						: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal U1_wa_m_address							: std_logic_vector(r-1 downto 0) := (others => '0');
	signal U1_wa_m_memwrite							: std_logic := '0';
	signal U1_wa_m_memread							: std_logic := '0';
	signal U1_wa_m_readdata							: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal U1_wa_m_waitrequest						: std_logic := '1';
				
	signal U1_wna_flush								: std_logic := '0';
	signal U1_wna_stall								: std_logic := '0';
	signal U1_wna_ready								: std_logic := '0';
	signal U1_wna_m_writedata						: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal U1_wna_m_address							: std_logic_vector(r-1 downto 0) := (others => '0');
	signal U1_wna_m_memwrite						: std_logic := '0';
	signal U1_wna_m_memread							: std_logic := '0';
	signal U1_wna_m_readdata						: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal U1_wna_m_waitrequest					: std_logic := '1';
			
	signal U2_wnaxwna_L1_flush						: std_logic := '0';
	signal U2_wnaxwna_L1_stall						: std_logic := '0';
	signal U2_wnaxwna_L1_ready						: std_logic := '0';
	signal U2_wnaxwna_L2_flush						: std_logic := '0';
	signal U2_wnaxwna_L2_stall						: std_logic := '0';
	signal U2_wnaxwna_L2_ready						: std_logic := '0';
	signal U2_wnaxwna_m_writedata					: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal U2_wnaxwna_m_address					: std_logic_vector(r-1 downto 0) := (others => '0');
	signal U2_wnaxwna_m_memwrite					: std_logic := '0';
	signal U2_wnaxwna_m_memread					: std_logic := '0';
	signal U2_wnaxwna_m_readdata					: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal U2_wnaxwna_m_waitrequest				: std_logic := '1';
			
	signal D1_wna_flush_0							: std_logic := '0';
	signal D1_wna_ready_0							: std_logic := '0';
	signal D1_wna_m_writedata_0					: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal D1_wna_m_address_0						: std_logic_vector(r-1 downto 0);
	signal D1_wna_m_memwrite_0						: std_logic := '0';
	signal D1_wna_m_memread_0						: std_logic := '0';
	signal D1_wna_m_readdata_0						: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal D1_wna_m_waitrequest_0					: std_logic := '1';
	signal D1_wna_flush_1							: std_logic := '0';
	signal D1_wna_ready_1							: std_logic := '0';
	signal D1_wna_m_writedata_1					: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal D1_wna_m_address_1						: std_logic_vector(r-1 downto 0) := (others => '0');
	signal D1_wna_m_memwrite_1						: std_logic := '0';
	signal D1_wna_m_memread_1						: std_logic := '0';
	signal D1_wna_m_readdata_1						: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal D1_wna_m_waitrequest_1					: std_logic := '1';			
	
	signal D2_wnaxwna_L1_flush_0					: std_logic := '0';
	signal D2_wnaxwna_L1_ready_0					: std_logic := '0';
	signal D2_wnaxwna_L2_flush_0					: std_logic := '0';
	signal D2_wnaxwna_L2_ready_0					: std_logic := '0';
	signal D2_wnaxwna_m_writedata_0				: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal D2_wnaxwna_m_address_0					: std_logic_vector(r-1 downto 0) := (others => '0');
	signal D2_wnaxwna_m_memwrite_0				: std_logic := '0';
	signal D2_wnaxwna_m_memread_0					: std_logic := '0';
	signal D2_wnaxwna_m_readdata_0				: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal D2_wnaxwna_m_waitrequest_0			: std_logic := '1';
	signal D2_wnaxwna_L1_flush_1					: std_logic := '0';
	signal D2_wnaxwna_L1_ready_1					: std_logic := '0';
	signal D2_wnaxwna_L2_flush_1					: std_logic := '0';
	signal D2_wnaxwna_L2_ready_1					: std_logic := '0';
	signal D2_wnaxwna_m_writedata_1				: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal D2_wnaxwna_m_address_1					: std_logic_vector(r-1 downto 0) := (others => '0');
	signal D2_wnaxwna_m_memwrite_1				: std_logic := '0';
	signal D2_wnaxwna_m_memread_1					: std_logic := '0';
	signal D2_wnaxwna_m_readdata_1				: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal D2_wnaxwna_m_waitrequest_1			: std_logic := '1';
	
	signal Dshared_wnaxwna_L1_flush_0			: std_logic := '0';
	signal Dshared_wnaxwna_L1_ready_0			: std_logic := '0';
	signal Dshared_wnaxwna_L2_flush_0			: std_logic := '0';
	signal Dshared_wnaxwna_L2_ready_0			: std_logic := '0';
	signal Dshared_wnaxwna_m_writedata_0		: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal Dshared_wnaxwna_m_address_0			: std_logic_vector(r-1 downto 0) := (others => '0');
	signal Dshared_wnaxwna_m_memwrite_0			: std_logic := '0';
	signal Dshared_wnaxwna_m_memread_0			: std_logic := '0';
	signal Dshared_wnaxwna_m_readdata_0			: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal Dshared_wnaxwna_m_waitrequest_0		: std_logic := '1';
	signal Dshared_wnaxwna_L1_flush_1			: std_logic := '0';
	signal Dshared_wnaxwna_L1_ready_1			: std_logic := '0';
	signal Dshared_wnaxwna_L2_flush_1			: std_logic := '0';
	signal Dshared_wnaxwna_L2_ready_1			: std_logic := '0';
	signal Dshared_wnaxwna_m_writedata_1		: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal Dshared_wnaxwna_m_address_1			: std_logic_vector(r-1 downto 0) := (others => '0');
	signal Dshared_wnaxwna_m_memwrite_1			: std_logic := '0';
	signal Dshared_wnaxwna_m_memread_1			: std_logic := '0';
	signal Dshared_wnaxwna_m_readdata_1			: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal Dshared_wnaxwna_m_waitrequest_1		: std_logic	:= '1';
	
	signal Dshared_wnaxwna_ctrl					: std_logic := '0';
	signal Dshared_wnaxwna_P0_comm				: std_logic := '0';
	signal Dshared_wnaxwna_P1_comm				: std_logic := '0';
	signal Dshared_wnaxwna_comm					: std_logic := '0';
	signal Dshared_ready								: std_logic	:= '0';
	
	signal array_test_en		: std_logic := '0';
	signal array_test			: std_logic := '0';
	
begin
	
	xU1_single_proc_system_wa : U1_single_proc_system_wa port map
	(	clk, rst,
		U1_wa_flush, U1_wa_stall, U1_wa_ready, U1_wa_m_writedata, U1_wa_m_address,
		U1_wa_m_memwrite, U1_wa_m_memread, U1_wa_m_readdata, U1_wa_m_waitrequest);

	xU1_single_proc_system_wna: U1_single_proc_system_wna port map
	(	clk, rst,
		U1_wna_flush, U1_wna_stall, U1_wna_ready, U1_wna_m_writedata, U1_wna_m_address, U1_wna_m_memwrite,
		U1_wna_m_memread, U1_wna_m_readdata, U1_wna_m_waitrequest);

	xU2_single_proc_system_wnaxwna : U2_single_proc_system_wnaxwna port map
	(	clk, rst,
		U2_wnaxwna_L1_flush, U2_wnaxwna_L1_stall, U2_wnaxwna_L1_ready, U2_wnaxwna_L2_flush, U2_wnaxwna_L2_stall, U2_wnaxwna_L2_ready,
		U2_wnaxwna_m_writedata, U2_wnaxwna_m_address, U2_wnaxwna_m_memwrite, U2_wnaxwna_m_memread, U2_wnaxwna_m_readdata, U2_wnaxwna_m_waitrequest);

	xD1_dual_proc_system_wna : D1_dual_proc_system_wna port map
	(	clk, rst,
		D1_wna_flush_0, D1_wna_ready_0, D1_wna_m_writedata_0, D1_wna_m_address_0, D1_wna_m_memwrite_0, D1_wna_m_memread_0,
		D1_wna_m_readdata_0, D1_wna_m_waitrequest_0, D1_wna_flush_1, D1_wna_ready_1, D1_wna_m_writedata_1, D1_wna_m_address_1,
		D1_wna_m_memwrite_1, D1_wna_m_memread_1, D1_wna_m_readdata_1, D1_wna_m_waitrequest_1);

	xD2_dual_proc_system_wnaxwna : D2_dual_proc_system_wnaxwna port map
	(	clk, rst,
		D2_wnaxwna_L1_flush_0, D2_wnaxwna_L1_ready_0, D2_wnaxwna_L2_flush_0, D2_wnaxwna_L2_ready_0, D2_wnaxwna_m_writedata_0,
		D2_wnaxwna_m_address_0, D2_wnaxwna_m_memwrite_0, D2_wnaxwna_m_memread_0, D2_wnaxwna_m_readdata_0, D2_wnaxwna_m_waitrequest_0,
		D2_wnaxwna_L1_flush_1, D2_wnaxwna_L1_ready_1, D2_wnaxwna_L2_flush_1, D2_wnaxwna_L2_ready_1, D2_wnaxwna_m_writedata_1,
		D2_wnaxwna_m_address_1, D2_wnaxwna_m_memwrite_1, D2_wnaxwna_m_memread_1, D2_wnaxwna_m_readdata_1, D2_wnaxwna_m_waitrequest_1);
	
	xDshared_dual_proc_system_wnaxwna : Dshared_dual_proc_system_wnaxwna port map
	(	clk, rst,
		Dshared_wnaxwna_L1_flush_0, Dshared_wnaxwna_L1_ready_0, Dshared_wnaxwna_L2_flush_0, Dshared_wnaxwna_L2_ready_0,
		Dshared_wnaxwna_m_writedata_0, Dshared_wnaxwna_m_address_0, Dshared_wnaxwna_m_memwrite_0, Dshared_wnaxwna_m_memread_0,
		Dshared_wnaxwna_m_readdata_0, Dshared_wnaxwna_m_waitrequest_0, Dshared_wnaxwna_L1_flush_1, Dshared_wnaxwna_L1_ready_1,
		Dshared_wnaxwna_L2_flush_1, Dshared_wnaxwna_L2_ready_1, Dshared_wnaxwna_m_writedata_1, Dshared_wnaxwna_m_address_1,
		Dshared_wnaxwna_m_memwrite_1, Dshared_wnaxwna_m_memread_1, Dshared_wnaxwna_m_readdata_1, Dshared_wnaxwna_m_waitrequest_1);	
	
	
	
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


	Dshared_wnaxwna_P0:
	process
	
		variable start				: time := 0 ns;
		variable finish			: time := 0 ns;
		variable readdata_0		: integer := 0;
		
		variable out_line : line;
		file out_file : text open write_mode is out_dir & "Dshared_wnaxwna/P0" & out_ext;
		
	
		-- P0 reads the value stored at 'addr' into variable 'readdata_0'
    	procedure read_addr(addr : in integer) is
		begin
			Dshared_wnaxwna_m_address_0 <= std_logic_vector(to_unsigned(addr, r));
			Dshared_wnaxwna_m_writedata_0 <= (others => '0');
			Dshared_wnaxwna_m_memwrite_0 <= '0';
			Dshared_wnaxwna_m_memread_0 <= '1';
		
			--wait until rising_edge(m_waitrequest);
			wait until (rising_edge(clk) and (Dshared_wnaxwna_m_waitrequest_0 = '0'));
			Dshared_wnaxwna_m_memread_0 <= '0';
			Dshared_wnaxwna_m_address_0 <= (others => '0');
			
			wait until rising_edge(clk);
			readdata_0 := to_integer(unsigned(Dshared_wnaxwna_m_readdata_0));
		end read_addr;
		
		
		-- P0 writes the value given by 'writedata' at 'addr'
		procedure write_addr(addr : in integer; writedata : in integer) is
		begin
			Dshared_wnaxwna_m_address_0 <= std_logic_vector(to_unsigned(addr, r));
			Dshared_wnaxwna_m_writedata_0 <= std_logic_vector(to_unsigned(writedata, word_length));
			Dshared_wnaxwna_m_memwrite_0 <= '1';
			Dshared_wnaxwna_m_memread_0 <= '0';
		
			--wait until rising_edge(m_waitrequest);
			wait until (rising_edge(clk) and (Dshared_wnaxwna_m_waitrequest_0 = '0'));
			Dshared_wnaxwna_m_memwrite_0 <= '0';
			Dshared_wnaxwna_m_writedata_0 <= (others => '0');
			Dshared_wnaxwna_m_address_0 <= (others => '0');
			
		end write_addr;
		
		-- P0 checks whether the data stored in 'readdata_0' is equal to 'correct_data'
		procedure assert_data(correct_data : in integer) is
		begin
			assert readdata_0 = correct_data report "Assert Failed P0" severity Failure;			
		end assert_data;
		
		-- flush the cache of P0
		procedure flush is
		begin
			Dshared_wnaxwna_L1_flush_0 <= '1';
			Dshared_wnaxwna_L2_flush_0 <= '1';
			wait for clock_period;
			wait until rising_edge(clk);
			Dshared_wnaxwna_L1_flush_0 <= '0';
			Dshared_wnaxwna_L2_flush_0 <= '0';
			wait until ((Dshared_wnaxwna_L1_ready_0 and Dshared_wnaxwna_L2_ready_0) = '1');
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
		
			wait until (Dshared_wnaxwna_ctrl = '1');
			
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
			add_arrays;
			finish := now;
			
			write_time("Adding arrays");
			
			start := now;
			verify_array_sum;
			finish := now;
			
			write_time("Verifying the sum");
			
			Dshared_wnaxwna_P0_comm <= '1';
			
			wait until (Dshared_wnaxwna_ctrl = '0');
			
			if(interleaved = 0) then
				write_file("Finishing " & integer'image(array_length) & " element array addition test (chunks)");
			else
				write_file("Finishing " & integer'image(array_length) & " element array addition test (interleaved)");
			end if;
			
			flush;
			
			Dshared_wnaxwna_P0_comm <= '0';
		
		end perform_array_test;
		
	begin
	
		Dshared_wnaxwna_m_address_0 <= (others => '0');
		Dshared_wnaxwna_m_writedata_0 <= (others => '0');
		Dshared_wnaxwna_m_memwrite_0 <= '0';
		Dshared_wnaxwna_m_memread_0 <= '0';
		
		Dshared_wnaxwna_P0_comm <= '0';
		
		wait until falling_edge(rst);
						
		wait until array_test = '1';				
						
		while array_test = '1' loop
			perform_array_test;
		end loop;
		
		wait;
	
	end process Dshared_wnaxwna_P0;
	
	Dshared_wnaxwna_P1:
	process
		
		variable start				: time := 0 ns;
		variable finish			: time := 0 ns;
		variable readdata_1		: integer := 0;
		
		variable out_line : line;
		file out_file : text open write_mode is out_dir & "Dshared_wnaxwna/P1" & out_ext;
		
	
		-- P1 reads the value stored at 'addr' into variable 'readdata_1'
    	procedure read_addr(addr : in integer) is
		begin
			Dshared_wnaxwna_m_address_1 <= std_logic_vector(to_unsigned(addr, r));
			Dshared_wnaxwna_m_writedata_1 <= (others => '0');
			Dshared_wnaxwna_m_memwrite_1 <= '0';
			Dshared_wnaxwna_m_memread_1 <= '1';
		
			--wait until rising_edge(m_waitrequest);
			wait until (rising_edge(clk) and (Dshared_wnaxwna_m_waitrequest_1 = '0'));
			Dshared_wnaxwna_m_memread_1 <= '0';
			Dshared_wnaxwna_m_address_1 <= (others => '0');
			
			wait until rising_edge(clk);
			readdata_1 := to_integer(unsigned(Dshared_wnaxwna_m_readdata_1));
		end read_addr;
		
		
		-- P1 writes the value given by 'writedata' at 'addr'
		procedure write_addr(addr : in integer; writedata : in integer) is
		begin
			Dshared_wnaxwna_m_address_1 <= std_logic_vector(to_unsigned(addr, r));
			Dshared_wnaxwna_m_writedata_1 <= std_logic_vector(to_unsigned(writedata, word_length));
			Dshared_wnaxwna_m_memwrite_1 <= '1';
			Dshared_wnaxwna_m_memread_1 <= '0';
		
			--wait until rising_edge(m_waitrequest);
			wait until (rising_edge(clk) and (Dshared_wnaxwna_m_waitrequest_1 = '0'));
			Dshared_wnaxwna_m_memwrite_1 <= '0';
			Dshared_wnaxwna_m_writedata_1 <= (others => '0');
			Dshared_wnaxwna_m_address_1 <= (others => '0');
			
		end write_addr;
		
		-- P1 checks whether the data stored in 'readdata_1' is equal to 'correct_data'
		procedure assert_data(correct_data : in integer) is
		begin
			assert readdata_1 = correct_data report "Assert Failed P1" severity Failure;			
		end assert_data;
		
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
				
			wait until (Dshared_wnaxwna_ctrl = '1');
			
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
			add_arrays;
			finish := now;
			
			write_time("Adding arrays");
			
			start := now;
			verify_array_sum;
			finish := now;
			
			write_time("Verifying the sum");
			
			Dshared_wnaxwna_P1_comm <= '1';
			wait until (Dshared_wnaxwna_ctrl = '0');
			
			if(interleaved = 0) then
				write_file("Finishing " & integer'image(array_length) & " element array addition test (chunks)");
			else
				write_file("Finishing " & integer'image(array_length) & " element array addition test (interleaved)");
			end if;
			
			Dshared_wnaxwna_P1_comm <= '0';
		
		end perform_array_test;

	begin
			
		Dshared_wnaxwna_m_address_1 <= (others => '0');
		Dshared_wnaxwna_m_writedata_1 <= (others => '0');
		Dshared_wnaxwna_m_memwrite_1 <= '0';
		Dshared_wnaxwna_m_memread_1 <= '0';
		
		Dshared_wnaxwna_P1_comm <= '0';
		
		wait until falling_edge(rst);

		wait until array_test = '1';
			
		while array_test = '1' loop
			perform_array_test;
		end loop;
		
		wait;
		
	end process Dshared_wnaxwna_P1;
	
	Dshared_wnaxwna_process:
	process
	
		variable start				: time := 0 ns;
		variable finish			: time := 0 ns;
		
		variable out_line : line;
		file out_file : text open write_mode is out_dir & "Dshared_wnaxwna/Tests" & out_ext;
		
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
		
		procedure perform_array_test is
		begin
		
			wait until array_test_en = '1';
		
			if(interleaved = 0) then
				write_file("Beginning " & integer'image(array_length) & " element array addition test (chunks)");
			else
				write_file("Beginning " & integer'image(array_length) & " element array addition test (interleaved)");
			end if;
			
			write_file("");
			
			wait until (Dshared_ready = '1');
			
			Dshared_wnaxwna_ctrl <= '1';
			
			start := now;
			wait until((Dshared_wnaxwna_P0_comm and Dshared_wnaxwna_P1_comm) = '1');
			Dshared_wnaxwna_ctrl <= '0';
			finish := now;
		
			if(interleaved = 0) then
				write_time(integer'image(array_length) & " element array addition test (chunks)");
			else 
				write_time(integer'image(array_length) & " element array addition test (interleaved)");
			end if;
			
			write_file("");
			write_file("");
			write_file("Flushing the cache");	
			
			start := now;
			wait until((Dshared_wnaxwna_P0_comm = '0' ) and (Dshared_wnaxwna_P1_comm = '0'));
			finish := now;

			write_time("Flushing the cache");
			write_file("");
			write_file("");
			
			Dshared_wnaxwna_comm <= '1';
			wait until (array_test_en = '0');
			Dshared_wnaxwna_comm <= '0';
			
		end perform_array_test;
	
	begin
	
		Dshared_wnaxwna_comm <= '0';
		Dshared_wnaxwna_ctrl <= '0';
		
		wait until falling_edge(rst);
		
		wait until array_test = '1';				
				
		while array_test = '1' loop
			perform_array_test;
		end loop;
		
		wait;
	end process Dshared_wnaxwna_process;

	Dshared_ready <= ((Dshared_wnaxwna_L1_ready_0 and Dshared_wnaxwna_L2_ready_0) and (Dshared_wnaxwna_L1_ready_1 and Dshared_wnaxwna_L2_ready_1));
	
	
	
	
	
	main_process:
	process

		procedure add_arrays(size : in integer ; start_addr : in integer ; mode : in integer) is
		begin
			
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
			
			array_test_en <= '1';
			
			wait until(Dshared_wnaxwna_comm = '1');
			
			array_test_en <= '0';
			
			wait for clock_period;
			
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

		array_test <= '0';
		
		wait;
	end process main_process;
	
end a0;