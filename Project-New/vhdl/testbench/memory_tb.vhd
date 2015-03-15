library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

entity memory_tb is
end memory_tb;

architecture behaviour of memory_tb is

--Declare the component that you are testing:
	component memory is
		port	(	clk				: in std_logic;
					rst				: in std_logic;
					s_writedata		: in std_logic_vector (word_length-1 downto 0);
					s_address		: in std_logic_vector(r-1 downto 0);
					s_memwrite		: in std_logic;
					s_memread		: in std_logic;
					s_readdata		: out std_logic_vector (word_length-1 downto 0);
					s_waitrequest	: out std_logic
				);
	end component;

    --all the input signals with initial values
   signal clk				: std_logic := '0';
	signal rst				: std_logic := '1';
   signal writedata		: std_logic_vector(31 downto 0) := (others => '0');
	signal address			: std_logic_vector(r-1 downto 0) := (others => '0');
	signal memwrite		: std_logic := '0';
	signal memread			: std_logic := '0';
	signal readdata		: std_logic_vector (31 downto 0) := (others => '0');
	signal waitrequest	: std_logic := '1';

begin

    --dut => Device Under Test
    dut: memory port map(clk,rst,writedata,address,memwrite,memread,readdata,waitrequest);

    clk_process : process
    begin
        clk <= '0';
        wait for clock_period/2;
        clk <= '1';
        wait for clock_period/2;
    end process;

    test_process : process
    begin
		rst <= '1';
    	wait for 3*clock_period;
		rst <= '0';
    	address <= std_logic_vector(to_unsigned(14, r)); 
    	writedata <= X"12341234";
    	memwrite <= '1';
    	--wait until is useful to simulate FSM behaviour.
    	--this is NOT synthesizable and should not be used in a hardware design
    	wait until rising_edge(waitrequest);
    	memwrite <= '0';
    	memread <= '1';
	    wait until rising_edge(waitrequest);
        assert readdata = x"12341234" report "write unsuccessful" severity error;
    	memread <= '0';
    	wait for clock_period;
        address <= std_logic_vector(to_unsigned(12, r));memread <= '1';
        wait until rising_edge(waitrequest);
        assert readdata = x"0000000c" report "write unsuccessful" severity error;
        memread <= '0';
        wait;

    end process;

 
end;