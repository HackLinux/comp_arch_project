--************************************************
-- file		: system_components.vhd
-- author	: harsh aurora, loren lugosch
-- date		: 7 april 2015
--
-- brief	   : this file instantiates all the 
--				  systems   
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;

package system_components is

	component U1_single_proc_system_wa is
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

	end component U1_single_proc_system_wa;	

	component U1_single_proc_system_wna is
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

	end component U1_single_proc_system_wna;	

	component U2_single_proc_system_wnaxwna is
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

	end component U2_single_proc_system_wnaxwna;	

	component D1_dual_proc_system_wna is
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
	end component D1_dual_proc_system_wna;

	component D2_dual_proc_system_wnaxwna is
		port	(	clk		: in  std_logic;
					rst		: in  std_logic;
					
					L1_flush_0				: in  std_logic;
					L1_ready_0				: out std_logic;
					L2_flush_0				: in  std_logic;
					L2_ready_0				: out std_logic;
					
					m_writedata_0		: in  std_logic_vector (word_length-1 downto 0);
					m_address_0			: in  std_logic_vector(r-1 downto 0);
					m_memwrite_0		: in  std_logic;
					m_memread_0			: in  std_logic;
					m_readdata_0		: out std_logic_vector (word_length-1 downto 0);
					m_waitrequest_0	: out std_logic;
					
					L1_flush_1				: in  std_logic;
					L1_ready_1				: out std_logic;
					L2_flush_1				: in  std_logic;
					L2_ready_1				: out std_logic;
					
					m_writedata_1		: in  std_logic_vector (word_length-1 downto 0);
					m_address_1			: in  std_logic_vector(r-1 downto 0);
					m_memwrite_1		: in  std_logic;
					m_memread_1			: in  std_logic;
					m_readdata_1		: out std_logic_vector (word_length-1 downto 0);
					m_waitrequest_1	: out std_logic			
				);
	end component D2_dual_proc_system_wnaxwna;
	
	component Dshared_dual_proc_system_wnaxwna is
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
	end component Dshared_dual_proc_system_wnaxwna;

end system_components;

--package body system_components is
--end system_components;