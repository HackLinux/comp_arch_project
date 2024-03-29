--************************************************
-- file		:	U1_single_proc_system_wa.vhd
-- author	:	harsh aurora, loren lugosch
-- date		:	7 april 2015
--
-- brief	   :	a model for single port cache
--************************************************
	
library ieee;
use ieee.std_logic_misc.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

entity U1_single_proc_system_wa is
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

end U1_single_proc_system_wa;	
	
architecture a0 of U1_single_proc_system_wa is

	component L1_single_port_cache_wa is
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
					m_waitrequest	: out std_logic;
					
					-- I/O interface for memory
					s_writedata		: out std_logic_vector (word_length-1 downto 0);
					s_address		: out std_logic_vector(r-1 downto 0);
					s_memwrite		: out std_logic;
					s_memread		: out std_logic;
					s_readdata		: in  std_logic_vector (word_length-1 downto 0);
					s_waitrequest	: in  std_logic
				);

	end component L1_single_port_cache_wa;	

	component single_port_memory is
		port	(	clk				: in  std_logic;
					rst				: in  std_logic;
					s_writedata		: in  std_logic_vector (word_length-1 downto 0);
					s_address		: in  std_logic_vector(r-1 downto 0);
					s_memwrite		: in  std_logic;
					s_memread		: in  std_logic;
					s_readdata		: out std_logic_vector (word_length-1 downto 0);
					s_waitrequest	: out std_logic
				);
	end component single_port_memory;
	
	signal s_writedata			: std_logic_vector (word_length-1 downto 0);
	signal s_address				: std_logic_vector(r-1 downto 0);
	signal s_memwrite				: std_logic;
	signal s_memread				: std_logic;
	signal s_readdata				: std_logic_vector (word_length-1 downto 0);
	signal s_waitrequest			: std_logic;
	
begin	
	
	xsingle_port_cache : L1_single_port_cache_wa port map(	clk, rst,
																				flush, stall, ready,
																				m_writedata, m_address, m_memwrite, m_memread, m_readdata, m_waitrequest,
																				s_writedata, s_address, s_memwrite, s_memread, s_readdata, s_waitrequest);
																				
	xsingle_port_memory : single_port_memory port map(	clk, rst,
																		s_writedata, s_address, s_memwrite, s_memread, s_readdata, s_waitrequest);
	
end a0;