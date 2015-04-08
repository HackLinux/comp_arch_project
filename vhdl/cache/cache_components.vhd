--************************************************
-- file		: params.vhd
-- author	: harsh aurora, loren lugosch
-- date		: 7 april 2015
--
-- brief	   : this file describes all the 
--            constants that define the cache,  
--            sram, and address bits.  
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package cache_components is 

component single_port_cache is
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

end component single_port_cache;	

component cache_set_controller is
	port	(	clk					: in  std_logic;
				rst					: in 	std_logic;
				flush					: in  std_logic;
				stall					: in  std_logic;
				ready					: out std_logic;
				
				-- I/O interface for the FSM/Processor
				m_writedata			: in  std_logic_vector (word_length-1 downto 0);
				m_address			: in  std_logic_vector(r-1 downto 0);
				m_memwrite			: in  std_logic;
				m_memread			: in  std_logic;
				m_readdata			: out std_logic_vector (word_length-1 downto 0);
				m_waitrequest		: out std_logic;
				
				-- I/O interface for memory
				s_writedata			: out std_logic_vector (word_length-1 downto 0);
				s_address			: out std_logic_vector(r-1 downto 0);
				s_memwrite			: out std_logic;
				s_memread			: out std_logic;
				s_readdata			: in  std_logic_vector (word_length-1 downto 0);
				s_waitrequest		: in  std_logic;

				-- I/O interface for cache_set
				cache_addr			: out cache_addr_t;

				cache_ctrl_write	: out std_logic_vector(number_of_sets-1 downto 0);
				cache_word_write	: out std_logic_vector(number_of_sets-1 downto 0);
					
				ctrl_writedata		: out cache_ctrl_t;
				word_writedata		: out cache_word_t;

				ctrl_readdata		: in  cache_ctrl_t;
				word_readdata		: in  cache_word_t
			);
end component cache_set_controller;

end cache_components;