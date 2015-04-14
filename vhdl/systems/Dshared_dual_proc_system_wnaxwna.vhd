--************************************************
-- file		:	Dshared_dual_proc_system_wnaxwna.vhd
-- author	:	harsh aurora, loren lugosch
-- date		:	7 april 2015
--
-- brief	   :	
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;
use work.L1_params.all;

entity Dshared_dual_proc_system_wnaxwna is
	port	(	clk					: in  std_logic;
				rst					: in  std_logic;
				
				L1_flush_0			: in  std_logic;
				L1_ready_0			: out std_logic;
				L2_flush_0			: in  std_logic;
				L2_ready_0			: out std_logic;
				
				m_writedata_0		: in  std_logic_vector (word_length-1 downto 0);
				m_address_0			: in  std_logic_vector(r-1 downto 0);
				m_memwrite_0		: in  std_logic;
				m_memread_0			: in  std_logic;
				m_readdata_0		: out std_logic_vector (word_length-1 downto 0);
				m_waitrequest_0	: out std_logic;
				
				L1_flush_1			: in  std_logic;
				L1_ready_1			: out std_logic;
				L2_flush_1			: in  std_logic;
				L2_ready_1			: out std_logic;
				
				m_writedata_1		: in  std_logic_vector (word_length-1 downto 0);
				m_address_1			: in  std_logic_vector(r-1 downto 0);
				m_memwrite_1		: in  std_logic;
				m_memread_1			: in  std_logic;
				m_readdata_1		: out std_logic_vector (word_length-1 downto 0);
				m_waitrequest_1	: out std_logic			
			);
end Dshared_dual_proc_system_wnaxwna;


architecture a0 of Dshared_dual_proc_system_wnaxwna is

	component L1_dual_port_cache_wna is
		port	(	clk				: in  std_logic;
					rst				: in 	std_logic;
					
					flush_0				: in  std_logic;
					stall_0				: in 	std_logic;
					ready_0				: out std_logic;
					
					-- I/O interface for the FSM/Processor
					m_writedata_0		: in  std_logic_vector (word_length-1 downto 0);
					m_address_0			: in  std_logic_vector(r-1 downto 0);
					m_memwrite_0		: in  std_logic;
					m_memread_0			: in  std_logic;
					m_readdata_0		: out std_logic_vector (word_length-1 downto 0);
					m_waitrequest_0	: out std_logic;
					
					-- I/O interface for memory
					s_writedata_0		: out std_logic_vector (word_length-1 downto 0);
					s_address_0			: out std_logic_vector(r-1 downto 0);
					s_memwrite_0		: out std_logic;
					s_memread_0			: out std_logic;
					s_readdata_0		: in  std_logic_vector (word_length-1 downto 0);
					s_waitrequest_0	: in  std_logic;
					
					flush_1				: in  std_logic;
					stall_1				: in 	std_logic;
					ready_1				: out std_logic;
					
					-- I/O interface for the FSM/Processor
					m_writedata_1		: in  std_logic_vector (word_length-1 downto 0);
					m_address_1			: in  std_logic_vector(r-1 downto 0);
					m_memwrite_1		: in  std_logic;
					m_memread_1			: in  std_logic;
					m_readdata_1		: out std_logic_vector (word_length-1 downto 0);
					m_waitrequest_1	: out std_logic;
					
					-- I/O interface for memory
					s_writedata_1		: out std_logic_vector (word_length-1 downto 0);
					s_address_1			: out std_logic_vector(r-1 downto 0);
					s_memwrite_1		: out std_logic;
					s_memread_1			: out std_logic;
					s_readdata_1		: in  std_logic_vector (word_length-1 downto 0);
					s_waitrequest_1	: in  std_logic
				);

	end component L1_dual_port_cache_wna;	

	component L2_dual_port_cache_wna is
		port	(	clk					: in  std_logic;
					rst					: in 	std_logic;
					
					flush_0				: in  std_logic;
					stall_0				: in 	std_logic;
					ready_0				: out std_logic;
					
					-- I/O interface for the FSM/Processor
					m_writedata_0		: in  std_logic_vector (word_length-1 downto 0);
					m_address_0			: in  std_logic_vector(r-1 downto 0);
					m_memwrite_0		: in  std_logic;
					m_memread_0			: in  std_logic;
					m_readdata_0		: out std_logic_vector (word_length-1 downto 0);
					m_waitrequest_0	: out std_logic;
					
					-- I/O interface for memory
					s_writedata_0		: out std_logic_vector (word_length-1 downto 0);
					s_address_0			: out std_logic_vector(r-1 downto 0);
					s_memwrite_0		: out std_logic;
					s_memread_0			: out std_logic;
					s_readdata_0		: in  std_logic_vector (word_length-1 downto 0);
					s_waitrequest_0	: in  std_logic;
					
					flush_1				: in  std_logic;
					stall_1				: in 	std_logic;
					ready_1				: out std_logic;
					
					-- I/O interface for the FSM/Processor
					m_writedata_1		: in  std_logic_vector (word_length-1 downto 0);
					m_address_1			: in  std_logic_vector(r-1 downto 0);
					m_memwrite_1		: in  std_logic;
					m_memread_1			: in  std_logic;
					m_readdata_1		: out std_logic_vector (word_length-1 downto 0);
					m_waitrequest_1	: out std_logic;
					
					-- I/O interface for memory
					s_writedata_1		: out std_logic_vector (word_length-1 downto 0);
					s_address_1			: out std_logic_vector(r-1 downto 0);
					s_memwrite_1		: out std_logic;
					s_memread_1			: out std_logic;
					s_readdata_1		: in  std_logic_vector (word_length-1 downto 0);
					s_waitrequest_1	: in  std_logic
				);

	end component L2_dual_port_cache_wna;	
	
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
	
	signal L2_writedata_0		: std_logic_vector (word_length-1 downto 0);
	signal L2_address_0			: std_logic_vector(r-1 downto 0);
	signal L2_memwrite_0			: std_logic;
	signal L2_memread_0			: std_logic;
	signal L2_readdata_0			: std_logic_vector (word_length-1 downto 0);
	signal L2_waitrequest_0		: std_logic;
	
	signal L2_writedata_1		: std_logic_vector (word_length-1 downto 0);
	signal L2_address_1			: std_logic_vector(r-1 downto 0);
	signal L2_memwrite_1			: std_logic;
	signal L2_memread_1			: std_logic;
	signal L2_readdata_1			: std_logic_vector (word_length-1 downto 0);
	signal L2_waitrequest_1		: std_logic;	

	signal s_writedata_0			: std_logic_vector (word_length-1 downto 0);
	signal s_address_0			: std_logic_vector(r-1 downto 0);
	signal s_memwrite_0			: std_logic;
	signal s_memread_0			: std_logic;
	signal s_readdata_0			: std_logic_vector (word_length-1 downto 0);
	signal s_waitrequest_0		: std_logic;
	
	signal s_writedata_1			: std_logic_vector (word_length-1 downto 0);
	signal s_address_1			: std_logic_vector(r-1 downto 0);
	signal s_memwrite_1			: std_logic;
	signal s_memread_1			: std_logic;
	signal s_readdata_1			: std_logic_vector (word_length-1 downto 0);
	signal s_waitrequest_1		: std_logic;
	
	signal last_used				: std_logic;
	signal conflict				: std_logic;
	
begin
	
	xL1_cache : L1_dual_port_cache_wna port map(	clk, rst,
																L1_flush_0, '0', L1_ready_0,
																m_writedata_0, m_address_0, m_memwrite_0, m_memread_0, m_readdata_0, m_waitrequest_0,
																L2_writedata_0, L2_address_0, L2_memwrite_0, L2_memread_0, L2_readdata_0, L2_waitrequest_0,
																L1_flush_1, '0', L1_ready_1,
																m_writedata_1, m_address_1, m_memwrite_1, m_memread_1, m_readdata_1, m_waitrequest_1,
																L2_writedata_1, L2_address_1, L2_memwrite_1, L2_memread_1, L2_readdata_1, L2_waitrequest_1);
																	
	xL2_cache : L2_dual_port_cache_wna port map(	clk, rst,
																L2_flush_0, '0', L2_ready_0,
																L2_writedata_0, L2_address_0, L2_memwrite_0, L2_memread_0, L2_readdata_0, L2_waitrequest_0,
																s_writedata_0, s_address_0, s_memwrite_0, s_memread_0, s_readdata_0, s_waitrequest_0,
																L2_flush_1, '0', L2_ready_1,
																L2_writedata_1, L2_address_1, L2_memwrite_1, L2_memread_1, L2_readdata_1, L2_waitrequest_1,
																s_writedata_1, s_address_1, s_memwrite_1, s_memread_1, s_readdata_1, s_waitrequest_1);
	
	xmain_memory : dual_port_memory port map(	clk, rst,
															s_writedata_0, s_address_0, s_memwrite_0, s_memread_0, s_readdata_0, s_waitrequest_0,
															s_writedata_1, s_address_1, s_memwrite_1, s_memread_1, s_readdata_1, s_waitrequest_1);
	

end a0;			
