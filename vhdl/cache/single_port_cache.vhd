--************************************************
-- file		:	single_port_cache.vhd
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
use work.cache_types.all;

entity single_port_cache is
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

end single_port_cache;	
	
architecture a0 of single_port_cache is

	component single_port_cache_set is
		port	(	clk					: in  std_logic;
					addr					: in  std_logic_vector(s+l-1 downto 0);
					ctrl_write			: in  std_logic;
					word_write			: in	std_logic;
					ctrl_in				: in	std_logic_vector(ctrl_length-1 downto 0);
					word_in				: in	std_logic_vector(word_length-1 downto 0);
					ctrl_out				: out std_logic_vector(ctrl_length-1 downto 0);
					word_out				: out std_logic_vector(word_length-1 downto 0)
				);
	end component single_port_cache_set;
	
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
	
	signal i_cache_addr			: cache_addr_t;
	signal i_cache_ctrl_write	: std_logic_vector(number_of_sets-1 downto 0);
	signal i_cache_word_write	: std_logic_vector(number_of_sets-1 downto 0);
	signal i_ctrl_writedata		: cache_ctrl_t;
	signal i_word_writedata		: cache_word_t;
	signal i_ctrl_readdata		: cache_ctrl_t;
	signal i_word_readdata		: cache_word_t;
	
begin	
	
	
	xcache_set_controller :	cache_set_controller port map(clk, rst, flush, stall, ready,
																			m_writedata, m_address, m_memwrite, m_memread, m_readdata, m_waitrequest,
																			s_writedata, s_address, s_memwrite, s_memread, s_readdata, s_waitrequest,
																			i_cache_addr, i_cache_ctrl_write, i_cache_word_write, 
																			i_ctrl_writedata, i_word_writedata, i_ctrl_readdata, i_word_readdata);
	
	cache_gen:
	for i in 0 to number_of_sets-1 generate
		xsingle_port_cache_set : single_port_cache_set port map(	clk, i_cache_addr(i), i_cache_ctrl_write(i), i_cache_word_write(i),
																					i_ctrl_writedata(i), i_word_writedata(i), i_ctrl_readdata(i), i_word_readdata(i));
	end generate cache_gen;
	
end a0;