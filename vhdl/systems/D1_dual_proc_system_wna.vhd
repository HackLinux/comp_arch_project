--************************************************
-- file		:	D1_dual_proc_system_wna.vhd
-- author	:	harsh aurora, loren lugosch
-- date		:	7 april 2015
--
-- brief	   :	
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

entity D1_dual_proc_system_wna is
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
end D1_dual_proc_system_wna;


architecture a0 of D1_dual_proc_system_wna is

	component L1_clean_coherence_cache_wna is
		port	(	clk					: in  std_logic;
					rst					: in  std_logic;
					
					flush_0				: in  std_logic;
					ready_0				: out std_logic;
					
					m_writedata_0		: in  std_logic_vector (word_length-1 downto 0);
					m_address_0			: in  std_logic_vector(r-1 downto 0);
					m_memwrite_0		: in  std_logic;
					m_memread_0			: in  std_logic;
					m_readdata_0		: out std_logic_vector (word_length-1 downto 0);
					m_waitrequest_0	: out std_logic;
					
					s_writedata_0		: out std_logic_vector (word_length-1 downto 0);
					s_address_0			: out std_logic_vector(r-1 downto 0);
					s_memwrite_0		: out std_logic;
					s_memread_0			: out std_logic;
					s_readdata_0		: in  std_logic_vector (word_length-1 downto 0);
					s_waitrequest_0	: in  std_logic;
					
					flush_1				: in  std_logic;
					ready_1				: out std_logic;
					
					m_writedata_1		: in  std_logic_vector (word_length-1 downto 0);
					m_address_1			: in  std_logic_vector(r-1 downto 0);
					m_memwrite_1		: in  std_logic;
					m_memread_1			: in  std_logic;
					m_readdata_1		: out std_logic_vector (word_length-1 downto 0);
					m_waitrequest_1	: out std_logic;			
					
					s_writedata_1		: out std_logic_vector (word_length-1 downto 0);
					s_address_1			: out std_logic_vector(r-1 downto 0);
					s_memwrite_1		: out std_logic;
					s_memread_1			: out std_logic;
					s_readdata_1		: in  std_logic_vector (word_length-1 downto 0);
					s_waitrequest_1	: in  std_logic
					
				);
	end component L1_clean_coherence_cache_wna;

	component dual_port_memory is
		port	(	clk					: in  std_logic;
					rst					: in  std_logic;
					
					s_writedata_0		: in  std_logic_vector (word_length-1 downto 0);
					s_address_0			: in  std_logic_vector(r-1 downto 0);
					s_memwrite_0		: in  std_logic;
					s_memread_0			: in  std_logic;
					s_readdata_0		: out std_logic_vector (word_length-1 downto 0);
					s_waitrequest_0	: out std_logic;
					
					s_writedata_1		: in  std_logic_vector (word_length-1 downto 0);
					s_address_1			: in  std_logic_vector(r-1 downto 0);
					s_memwrite_1		: in  std_logic;
					s_memread_1			: in  std_logic;
					s_readdata_1		: out std_logic_vector (word_length-1 downto 0);
					s_waitrequest_1	: out std_logic
				);
	end component dual_port_memory;
	
	signal s_writedata_0						: std_logic_vector (word_length-1 downto 0);
	signal s_address_0						: std_logic_vector(r-1 downto 0);
	signal s_memwrite_0						: std_logic;
	signal s_memread_0						: std_logic;
	signal s_readdata_0						: std_logic_vector (word_length-1 downto 0);
	signal s_waitrequest_0					: std_logic;
	
	signal s_writedata_1						: std_logic_vector (word_length-1 downto 0);
	signal s_address_1						: std_logic_vector(r-1 downto 0);
	signal s_memwrite_1						: std_logic;
	signal s_memread_1						: std_logic;
	signal s_readdata_1						: std_logic_vector (word_length-1 downto 0);
	signal s_waitrequest_1					: std_logic;

	
begin

	
	xcaches : L1_clean_coherence_cache_wna port map(clk, rst,
																	flush_0 ,ready_0,
																	m_writedata_0, m_address_0, m_memwrite_0, m_memread_0, m_readdata_0, m_waitrequest_0,
																	s_writedata_0, s_address_0, s_memwrite_0, s_memread_0, s_readdata_0, s_waitrequest_0,
																	flush_1, ready_1,
																	m_writedata_1, m_address_1, m_memwrite_1, m_memread_1, m_readdata_1, m_waitrequest_1,
																	s_writedata_1, s_address_1, s_memwrite_1, s_memread_1, s_readdata_1, s_waitrequest_1);
	
	xmain_memory : dual_port_memory port map(	clk, rst,
															s_writedata_0, s_address_0, s_memwrite_0, s_memread_0, s_readdata_0, s_waitrequest_0,
															s_writedata_1, s_address_1, s_memwrite_1, s_memread_1, s_readdata_1, s_waitrequest_1);
	

end a0;			
