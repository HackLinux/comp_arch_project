--************************************************
-- file		:	L1_single_port_cache_wa.vhd
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
use work.L1_params.all;
use work.L1_cache_types.all;

entity L1_single_port_cache_wa is
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

end L1_single_port_cache_wa;	
	
architecture a0 of L1_single_port_cache_wa is

	component L1_single_port_cache_set is
		port	(	clk					: in  std_logic;
					addr					: in  std_logic_vector(s+l-1 downto 0);
					ctrl_write			: in  std_logic;
					word_write			: in	std_logic;
					ctrl_in				: in	std_logic_vector(ctrl_length-1 downto 0);
					word_in				: in	std_logic_vector(word_length-1 downto 0);
					ctrl_out				: out std_logic_vector(ctrl_length-1 downto 0);
					word_out				: out std_logic_vector(word_length-1 downto 0)
				);
	end component L1_single_port_cache_set;
	
	component L1_cache_set_controller_wa is
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
	end component L1_cache_set_controller_wa;
	
	signal cache_addr				: cache_addr_t;
	signal cache_ctrl_write		: std_logic_vector(number_of_sets-1 downto 0);
	signal cache_word_write		: std_logic_vector(number_of_sets-1 downto 0);
	signal ctrl_writedata		: cache_ctrl_t;
	signal word_writedata		: cache_word_t;
	signal ctrl_readdata			: cache_ctrl_t;
	signal word_readdata			: cache_word_t;
	
begin	
	
	
	xcache_set_controller :	L1_cache_set_controller_wa port map(clk, rst, flush, stall, ready,
																					m_writedata, m_address, m_memwrite, m_memread, m_readdata, m_waitrequest,
																					s_writedata, s_address, s_memwrite, s_memread, s_readdata, s_waitrequest,
																					cache_addr, cache_ctrl_write, cache_word_write, 
																					ctrl_writedata, word_writedata, ctrl_readdata, word_readdata);
	
	cache_gen:
	for i in 0 to number_of_sets-1 generate
		xsingle_port_cache_set : L1_single_port_cache_set port map(	clk, cache_addr(i), cache_ctrl_write(i), cache_word_write(i),
																						ctrl_writedata(i), word_writedata(i), ctrl_readdata(i), word_readdata(i));
	end generate cache_gen;
	
end a0;