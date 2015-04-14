--************************************************
-- file		:	U2_single_proc_system_wnaxwna.vhd
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

entity U2_single_proc_system_wnaxwna is
	port	(	clk				: in  std_logic;
				rst				: in 	std_logic;
				L1_flush			: in  std_logic;
				L1_stall			: in 	std_logic;
				L1_ready			: out std_logic;
				
				L2_flush			: in  std_logic;
				L2_stall			: in 	std_logic;
				L2_ready			: out std_logic;
				
				-- I/O interface for the FSM/Processor
				m_writedata		: in  std_logic_vector (word_length-1 downto 0);
				m_address		: in  std_logic_vector(r-1 downto 0);
				m_memwrite		: in  std_logic;
				m_memread		: in  std_logic;
				m_readdata		: out std_logic_vector (word_length-1 downto 0);
				m_waitrequest	: out std_logic
			);

end U2_single_proc_system_wnaxwna;	
	
architecture a0 of U2_single_proc_system_wnaxwna is

	component L1_single_port_cache_wna is
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

	end component L1_single_port_cache_wna;
	
	component L2_single_port_cache_wna is
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

	end component L2_single_port_cache_wna;	

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
	
	signal L2_writedata		: std_logic_vector (word_length-1 downto 0);
	signal L2_address			: std_logic_vector(r-1 downto 0);
	signal L2_memwrite		: std_logic;
	signal L2_memread			: std_logic;
	signal L2_readdata		: std_logic_vector (word_length-1 downto 0);
	signal L2_waitrequest	: std_logic;
			
	signal s_writedata		: std_logic_vector (word_length-1 downto 0);
	signal s_address			: std_logic_vector(r-1 downto 0);
	signal s_memwrite			: std_logic;
	signal s_memread			: std_logic;
	signal s_readdata			: std_logic_vector (word_length-1 downto 0);
	signal s_waitrequest		: std_logic;
	
begin	
	
	xL1_single_port_cache : L1_single_port_cache_wna port map(	clk, rst,
																					L1_flush, L1_stall, L1_ready,
																					m_writedata, m_address, m_memwrite, m_memread, m_readdata, m_waitrequest,
																					L2_writedata, L2_address, L2_memwrite, L2_memread, L2_readdata, L2_waitrequest);
																					
	xL2_single_port_cache : L2_single_port_cache_wna port map(	clk, rst,
																					L2_flush, L2_stall, L2_ready,
																					L2_writedata, L2_address, L2_memwrite, L2_memread, L2_readdata, L2_waitrequest,
																					s_writedata, s_address, s_memwrite, s_memread, s_readdata, s_waitrequest);
																				
	xsingle_port_memory : single_port_memory port map(	clk, rst,
																		s_writedata, s_address, s_memwrite, s_memread, s_readdata, s_waitrequest);
	
end a0;