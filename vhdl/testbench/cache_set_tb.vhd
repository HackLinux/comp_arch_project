library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

entity cache_set_tb is
end cache_set_tb;

architecture a0 of cache_set_tb is

	component cache_set is
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
	end component cache_set;
	
	for xcache_set : cache_set use entity work.cache_set(modelsim);
	
	signal clk					: std_logic := '0';
	signal addr_0				: std_logic_vector(s+l-1 downto 0) := (others => '0');
	signal word_write_0		: std_logic := '0';
	signal ctrl_write_0		: std_logic := '0';
	signal ctrl_in_0			: std_logic_vector(ctrl_length-1 downto 0) := (others => '0');
	signal word_in_0			: std_logic_vector(word_length-1 downto 0) := (others => '0');
	signal ctrl_out_0			: std_logic_vector(ctrl_length-1 downto 0) := (others => '0');
	signal word_out_0			: std_logic_vector(word_length-1 downto 0) := (others => '0');
	signal addr_1				: std_logic_vector(s+l-1 downto 0) := (others => '0');
	signal word_write_1		: std_logic := '0';
	signal ctrl_write_1		: std_logic := '0';
	signal ctrl_in_1			: std_logic_vector(ctrl_length-1 downto 0) := (others => '0');
	signal word_in_1			: std_logic_vector(word_length-1 downto 0) := (others => '0');
	signal ctrl_out_1			: std_logic_vector(ctrl_length-1 downto 0) := (others => '0');
	signal word_out_1			: std_logic_vector(word_length-1 downto 0) := (others => '0');
	
	procedure set_stim
		(	pin_addr_0						: in integer;
			pin_ctrl_write_0				: in integer;
			pin_word_write_0				: in integer;
			pin_ctrl_in_0					: in integer;
			pin_word_in_0					: in integer;
			pin_addr_1						: in integer;
			pin_ctrl_write_1				: in integer;
			pin_word_write_1				: in integer;
			pin_ctrl_in_1					: in integer;
			pin_word_in_1					: in integer;
			
			signal pout_addr_0				: out std_logic_vector(s+l-1 downto 0);
			signal pout_ctrl_write_0		: out std_logic;
			signal pout_word_write_0		: out std_logic;
			signal pout_ctrl_in_0			: out std_logic_vector(ctrl_length-1 downto 0);
			signal pout_word_in_0			: out std_logic_vector(word_length-1 downto 0);
			signal pout_addr_1				: out std_logic_vector(s+l-1 downto 0);
			signal pout_ctrl_write_1		: out std_logic;
			signal pout_word_write_1		: out std_logic;
			signal pout_ctrl_in_1			: out std_logic_vector(ctrl_length-1 downto 0);
			signal pout_word_in_1			: out std_logic_vector(word_length-1 downto 0)) 
	is 
	begin
			pout_addr_0 <= std_logic_vector(to_unsigned(pin_addr_0,s+l));
			pout_addr_1 <= std_logic_vector(to_unsigned(pin_addr_1,s+l));
			pout_word_in_0 <= std_logic_vector(to_unsigned(pin_word_in_0,word_length));
			pout_word_in_1 <= std_logic_vector(to_unsigned(pin_word_in_1,word_length));
			pout_ctrl_in_0 <= std_logic_vector(to_unsigned(pin_ctrl_in_0,ctrl_length));
			pout_ctrl_in_1 <= std_logic_vector(to_unsigned(pin_ctrl_in_1,ctrl_length));
			
			if(pin_ctrl_write_0 = 0) then
				pout_ctrl_write_0 <= '0';
			else
				pout_ctrl_write_0 <= '1';
			end if;
			
			if(pin_word_write_0 = 0) then
				pout_word_write_0 <= '0';
			else
				pout_word_write_0 <= '1';
			end if;
			
			if(pin_ctrl_write_1 = 0) then
				pout_ctrl_write_1 <= '0';
			else
				pout_ctrl_write_1 <= '1';
			end if;
			
			if(pin_word_write_1 = 0) then
				pout_word_write_1 <= '0';
			else
				pout_word_write_1 <= '1';
			end if;
			
	end set_stim;

	begin
	
	xcache_set: cache_set port map(clk, addr_0, ctrl_write_0, word_write_0, ctrl_in_0, word_in_0, ctrl_out_0, word_out_0, addr_1, ctrl_write_1, word_write_1, ctrl_in_1, word_in_1, ctrl_out_1, word_out_1);	

	clk_process:
		process
		begin
			clk <= '0';
			wait for clock_period/2;
			clk <= '1';
			wait for clock_period/2;
		end process clk_process;
		
	stim:
		process
		begin
			set_stim(0,1,1,21,21,20,1,1,3,3,addr_0, ctrl_write_0, word_write_0, ctrl_in_0, word_in_0, addr_1, ctrl_write_1, word_write_1, ctrl_in_1, word_in_1);
			wait for 2*clock_period;
			set_stim(20,0,0,0,0,0,0,0,0,0,addr_0, ctrl_write_0, word_write_0, ctrl_in_0, word_in_0, addr_1, ctrl_write_1, word_write_1, ctrl_in_1, word_in_1);
			wait for 2*clock_period;
			set_stim(0,1,1,0,0,0,1,1,1,1,addr_0, ctrl_write_0, word_write_0, ctrl_in_0, word_in_0, addr_1, ctrl_write_1, word_write_1, ctrl_in_1, word_in_1);
			wait for 2*clock_period;
			set_stim(2,1,1,2,2,2,0,0,0,0,addr_0, ctrl_write_0, word_write_0, ctrl_in_0, word_in_0, addr_1, ctrl_write_1, word_write_1, ctrl_in_1, word_in_1);
			wait for 2*clock_period;
			wait;
		end process stim;
	
end a0;