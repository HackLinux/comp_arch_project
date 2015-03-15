--************************************************
-- file		: toplevel.vhd
-- author	: harsh aurora
-- date		: 13 jan 2015
--
-- brief	   : top level file
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

entity toplevel is
	port	(	clk				: in  std_logic;
				rst				: in 	std_logic;
				
				-- I/O interface for the FSM/Processor
				m_writedata		: in  std_logic_vector (word_length-1 downto 0);
				m_address		: in  std_logic_vector(r-1 downto 0);
				m_memwrite		: in  std_logic;
				m_memread		: in  std_logic;
				m_readdata		: out std_logic_vector (word_length-1 downto 0);
				m_waitrequest	: out std_logic
				
				-- I/O interface for memory
--				s_writedata		: out std_logic_vector (word_length-1 downto 0);
--				s_address		: out std_logic_vector(r-1 downto 0);
--				s_memwrite		: out std_logic;
--				s_memread		: out std_logic;
--				s_readdata		: in  std_logic_vector (word_length-1 downto 0);
--				s_waitrequest	: in  std_logic

			);
end toplevel;

architecture structural of toplevel is

	component memory is
		port	(	clk				: in std_logic;
					s_writedata		: in std_logic_vector (word_length-1 downto 0);
					s_address		: in std_logic_vector(r-1 downto 0);
					s_memwrite		: in std_logic;
					s_memread		: in std_logic;
					s_readdata		: out std_logic_vector (word_length-1 downto 0);
					s_waitrequest	: out std_logic
				);
	end component;
	
	component cache is
		port	(	clk				: in  std_logic;
					rst				: in  std_logic;
					
					-- I/O interface for the FSM/Processor
					m_writedata		: in  std_logic_vector (word_length-1 downto 0);
					m_address		: in  std_logic_vector(r-1 downto 0);
					m_memwrite		: in  std_logic;
					m_memread		: in  std_logic;
					m_readdata		: out std_logic_vector (word_length-1 downto 0);
					m_waitrequest	: out std_logic;
					
					-- I/O interface for memory
					s_writedata		: out std_logic_vector (word_length-1 downto 0);
					s_address		: out std_logic_vector(r-1 downto 0);
					s_memwrite		: out std_logic;
					s_memread		: out std_logic;
					s_readdata		: in  std_logic_vector (word_length-1 downto 0);
					s_waitrequest	: in  std_logic
				);
	end component cache;

	signal s_writedata	: std_logic_vector (word_length-1 downto 0);
	signal s_address		: std_logic_vector(r-1 downto 0);
	signal s_memwrite		: std_logic;
	signal s_memread		: std_logic;
	signal s_readdata		: std_logic_vector (word_length-1 downto 0);
	signal s_waitrequest	: std_logic;
	
begin

	xmemory: memory port map(clk,s_writedata,s_address,s_memwrite,s_memread,s_readdata,s_waitrequest);
	xcache : cache port map(clk, rst, m_writedata, m_address, m_memwrite, m_memread, m_readdata, m_waitrequest, s_writedata, s_address, s_memwrite, s_memread, s_readdata, s_waitrequest);

end structural;