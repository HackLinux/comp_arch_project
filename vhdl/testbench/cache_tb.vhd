library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

entity cache_tb is
end cache_tb;

architecture behaviour of cache_tb is

--Declare the component that you are testing:

	component memory is
		port	(	clk				: in  std_logic;
					rst				: in  std_logic;
					s_writedata		: in  std_logic_vector (word_length-1 downto 0);
					s_address		: in  std_logic_vector(r-1 downto 0);
					s_memwrite		: in  std_logic;
					s_memread		: in  std_logic;
					s_readdata		: out std_logic_vector (word_length-1 downto 0);
					s_waitrequest	: out std_logic
				);
	end component;
	
	component cache_final is
		port	(	clk				: in  std_logic;
					rst				: in  std_logic;
		
					m_writedata		: in  std_logic_vector (word_length-1 downto 0);
					m_address		: in  std_logic_vector(r-1 downto 0);
					m_memwrite		: in  std_logic;
					m_memread		: in  std_logic;
					m_readdata		: out std_logic_vector (word_length-1 downto 0);
					m_waitrequest	: out std_logic;
					
					s_writedata		: out std_logic_vector (word_length-1 downto 0);
					s_address		: out std_logic_vector(r-1 downto 0);
					s_memwrite		: out std_logic;
					s_memread		: out std_logic;
					s_readdata		: in  std_logic_vector (word_length-1 downto 0);
					s_waitrequest	: in  std_logic
				);
	end component cache_final;

    --all the input signals with initial values
	signal clk				: std_logic := '0';
	signal rst				: std_logic := '1';
	signal m_writedata	: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal m_address		: std_logic_vector(r-1 downto 0) := (others => '0');
	signal m_memwrite		: std_logic := '0';
	signal m_memread		: std_logic := '0';
	signal m_readdata		: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal m_waitrequest	: std_logic := '1';
	signal s_writedata	: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal s_address		: std_logic_vector(r-1 downto 0) := (others => '0');
	signal s_memwrite		: std_logic := '0';
	signal s_memread		: std_logic := '0';
	signal s_readdata		: std_logic_vector (word_length-1 downto 0) := (others => '0');
	signal s_waitrequest	: std_logic := '1';

begin
	 
    --dut => Device Under Test
	 xmemory: memory port map(clk,rst,s_writedata,s_address,s_memwrite,s_memread,s_readdata,s_waitrequest);
    xcache: cache_final port map(clk,rst,m_writedata,m_address,m_memwrite,m_memread,m_readdata,m_waitrequest,s_writedata,s_address,s_memwrite,s_memread,s_readdata,s_waitrequest);
    
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
		m_address <= (others => '0');
		m_writedata <= (others => '0');
		m_memwrite <= '0';
		m_memread <= '0';
    	wait for 3*clock_period;
		wait until rising_edge(clk);
		rst <= '0';
		
		-------------
		--Read Miss--
		-------------
		m_address <= std_logic_vector(to_unsigned(9, r));
		m_writedata <= (others => '0');
		m_memwrite <= '0';
		m_memread <= '1';
		
		--wait until rising_edge(m_waitrequest);
		wait until (rising_edge(clk) and (m_waitrequest = '0'));
		m_memread <= '0';
		
		wait until rising_edge(clk);
		assert m_readdata = std_logic_vector(to_unsigned(9, word_length)) report "Test 1 failed" severity error;
		wait for 2*clock_period;
		wait until rising_edge(clk);
		
		------------
		--Read Hit--
		------------
		m_address <= std_logic_vector(to_unsigned(10, r));
		m_writedata <= (others => '0');
		m_memwrite <= '0';
		m_memread <= '1';

		--wait until rising_edge(m_waitrequest);
		wait until (rising_edge(clk) and (m_waitrequest = '0'));
		m_memread <= '0';

		wait until rising_edge(clk);
		assert m_readdata = std_logic_vector(to_unsigned(10, word_length)) report "Test 2 failed" severity error;
		wait for 2*clock_period;
		wait until rising_edge(clk);

		
		-------------
		--Write Hit--
		-------------
		m_address <= std_logic_vector(to_unsigned(9, r));
		m_writedata <= std_logic_vector(to_unsigned(21, word_length));
		m_memwrite <= '1';
		m_memread <= '0';

		--wait until rising_edge(m_waitrequest);
		wait until (rising_edge(clk) and (m_waitrequest = '0'));
		m_writedata <= (others => '0');
		m_memwrite <= '0';
		m_memread <= '1';

		--wait until rising_edge(m_waitrequest);
		wait until (rising_edge(clk) and (m_waitrequest = '0'));
		m_memread <= '0';
		
		wait until rising_edge(clk);
		assert m_readdata = std_logic_vector(to_unsigned(21, word_length)) report "Test 3 failed" severity error;
		wait for 2*clock_period;
		wait until rising_edge(clk);
		
		--------------
		--Write Miss--
		--------------
		m_address <= std_logic_vector(to_unsigned(13, r));
		m_writedata <= std_logic_vector(to_unsigned(21, word_length));
		m_memwrite <= '1';
		m_memread <= '0';

--		--DEBOUNCE--
--		wait until falling_edge(m_waitrequest);
--		wait for clock_period/10;
--		
		
		--wait until rising_edge(m_waitrequest);
		wait until (rising_edge(clk) and (m_waitrequest = '0'));
		m_writedata <= (others => '0');
		m_memwrite <= '0';
		m_memread <= '1';

		--wait until rising_edge(m_waitrequest);
		wait until (rising_edge(clk) and (m_waitrequest = '0'));
		m_memread <= '0';
		
		wait until rising_edge(clk);
		assert m_readdata = std_logic_vector(to_unsigned(21, word_length)) report "Test 4 failed" severity error;
		wait for 2*clock_period;
		wait until rising_edge(clk);
		
		-----------------------------
		--Read Miss with Write Back--
		-----------------------------
		m_address <= std_logic_vector(to_unsigned((cache_size-1)+9, r));
		m_writedata <= (others => '0');
		m_memwrite <= '0';
		m_memread <= '1';

		--wait until rising_edge(m_waitrequest);
		wait until (rising_edge(clk) and (m_waitrequest = '0'));
		m_memread <= '0';
		
		wait until rising_edge(clk);
		assert m_readdata = std_logic_vector(to_unsigned((cache_size-1)+9, word_length)) report "Test 5 failed" severity error;
		wait for 2*clock_period;
		wait until rising_edge(clk);
		
		------------------------
		--Restore Test 3 and 4--
		------------------------
		m_address <= std_logic_vector(to_unsigned(9, r));
		m_writedata <= std_logic_vector(to_unsigned(9, word_length));
		m_memwrite <= '1';
		m_memread <= '0';

		--wait until rising_edge(m_waitrequest);
		wait until (rising_edge(clk) and (m_waitrequest = '0'));
		m_writedata <= (others => '0');
		m_memwrite <= '0';
		m_memread <= '1';

		--wait until rising_edge(m_waitrequest);
		wait until (rising_edge(clk) and (m_waitrequest = '0'));
		m_memread <= '0';
		
		wait until rising_edge(clk);
		assert m_readdata = std_logic_vector(to_unsigned(9, word_length)) report "Restore 3 failed" severity error;
		wait for 2*clock_period;
		wait until rising_edge(clk);
		
		m_address <= std_logic_vector(to_unsigned(13, r));
		m_writedata <= std_logic_vector(to_unsigned(13, word_length));
		m_memwrite <= '1';
		m_memread <= '0';

		--wait until rising_edge(m_waitrequest);
		wait until (rising_edge(clk) and (m_waitrequest = '0'));
		m_writedata <= (others => '0');
		m_memwrite <= '0';
		m_memread <= '1';

		--wait until rising_edge(m_waitrequest);
		wait until (rising_edge(clk) and (m_waitrequest = '0'));
		m_memread <= '0';
		
		wait until rising_edge(clk);
		assert m_readdata = std_logic_vector(to_unsigned(13, word_length)) report "Restore 4 failed" severity error;
		wait for 2*clock_period;
		wait until rising_edge(clk);
		
		----------------------------------
		--Loop through the entire memory--
		----------------------------------
		m_memwrite <= '0';
		for i in 0 to ram_size-1 loop
			m_address <= std_logic_vector(to_unsigned(i, r));
			m_memread <= '1';
			
--			
--			--DEBOUNCE--
--			wait until falling_edge(m_waitrequest);
--			wait for clock_period/10;
--			
--			
			--wait until rising_edge(m_waitrequest);
			wait until (rising_edge(clk) and (m_waitrequest = '0'));
			m_memread <= '0';
			m_address <= std_logic_vector(to_unsigned(0, r));

			wait until rising_edge(clk);
			assert m_readdata = std_logic_vector(to_unsigned(i, word_length)) report "Loop Failure" severity error;
			wait until rising_edge(clk);
			
		end loop;
		
		
		wait;

    end process;

 
end;