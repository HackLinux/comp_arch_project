--************************************************
-- file		:	L1_clean_coherence_cache_wa.vhd
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
use work.L1_cache_types.all;

entity L1_clean_coherence_cache_wa is
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
end L1_clean_coherence_cache_wa;


architecture a0 of L1_clean_coherence_cache_wa is

	component L1_clean_cache_set_controller_wa is
		port	(	clk					: in  std_logic;
					rst					: in 	std_logic;
					flush					: in  std_logic;
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
					word_readdata		: in  cache_word_t;
					
					-- I/O interface for horen's clean coherence circuit
					c_stall				: in  std_logic;
					c_blast				: in  std_logic;
					c_dirty_in			: in  std_logic;
					c_word_in			: in  std_logic_vector(word_length-1 downto 0);
					c_hit_out			: out std_logic;
					c_empty_out			: out std_logic
				);
	end component L1_clean_cache_set_controller_wa;
		
	component L1_clean_coherence_circuit is
		port	(	clk							: in  std_logic;
					rst							: in  std_logic;
					
					last_used					: in  std_logic;
					
					m_address_local			: in  std_logic_vector(r-1 downto 0);
					m_memwrite_local			: in  std_logic;
					m_memread_local			: in  std_logic;
					m_waitrequest_local		: in  std_logic;
					
					m_address_remote			: in  std_logic_vector(r-1 downto 0);
					m_memwrite_remote			: in  std_logic;
					m_memread_remote			: in  std_logic;
					
					c_stall						: out std_logic;
					c_blast						: out std_logic;
					c_dirty_out					: out std_logic;
					c_word_out					: out std_logic_vector(word_length-1 downto 0);
					c_hit_in						: in  std_logic;
					c_empty_in					: in  std_logic;
					
					cache_addr_remote			: out cache_addr_t;

					cache_ctrl_write_remote	: out std_logic_vector(number_of_sets-1 downto 0);
						
					ctrl_writedata_remote	: out cache_ctrl_t;

					ctrl_readdata_remote		: in  cache_ctrl_t;
					word_readdata_remote		: in  cache_word_t
				);
				
	end component L1_clean_coherence_circuit;
	
	component L1_dual_port_cache_set is
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
	end component L1_dual_port_cache_set;

	signal i_m_waitrequest_0				: std_logic;
	signal i_m_waitrequest_1				: std_logic;
	
	signal cache_addr_0						: cache_addr_t;
	signal cache_ctrl_write_0				: std_logic_vector(number_of_sets-1 downto 0);
	signal cache_word_write_0				: std_logic_vector(number_of_sets-1 downto 0);
	signal ctrl_writedata_0					: cache_ctrl_t;
	signal word_writedata_0					: cache_word_t;
	signal ctrl_readdata_0					: cache_ctrl_t;
	signal word_readdata_0					: cache_word_t;
	
	signal cache_addr_1						: cache_addr_t;
	signal cache_ctrl_write_1				: std_logic_vector(number_of_sets-1 downto 0);
	signal cache_word_write_1				: std_logic_vector(number_of_sets-1 downto 0);
	signal ctrl_writedata_1					: cache_ctrl_t;
	signal word_writedata_1					: cache_word_t;
	signal ctrl_readdata_1					: cache_ctrl_t;
	signal word_readdata_1					: cache_word_t;
					
	signal cache_addr_remote_0				: cache_addr_t;
	signal cache_ctrl_write_remote_0		: std_logic_vector(number_of_sets-1 downto 0);
	signal ctrl_writedata_remote_0		: cache_ctrl_t;
	signal ctrl_readdata_remote_0			: cache_ctrl_t;
	signal word_readdata_remote_0			: cache_word_t;
	
	signal cache_addr_remote_1				: cache_addr_t;
	signal cache_ctrl_write_remote_1		: std_logic_vector(number_of_sets-1 downto 0);
	signal ctrl_writedata_remote_1		: cache_ctrl_t;
	signal ctrl_readdata_remote_1			: cache_ctrl_t;
	signal word_readdata_remote_1			: cache_word_t;
	
	signal c_stall_0							: std_logic;
	signal c_blast_0							: std_logic;
	signal c_dirty_0							: std_logic;
	signal c_word_0							: std_logic_vector(word_length-1 downto 0);
	signal c_hit_0								: std_logic;
	signal c_empty_0							: std_logic;

	signal c_stall_1							: std_logic;
	signal c_blast_1							: std_logic;
	signal c_dirty_1							: std_logic;
	signal c_word_1							: std_logic_vector(word_length-1 downto 0);
	signal c_hit_1								: std_logic;
	signal c_empty_1							: std_logic;
	
	signal last_used							: std_logic;
	signal last_used_0						: std_logic;
	signal last_used_1						: std_logic;
	
begin

	L1_cache_0_gen:
	for i in 0 to number_of_sets-1 generate
		L1_cache_0 : L1_dual_port_cache_set port map(clk,
																	cache_addr_0(i), cache_ctrl_write_0(i), cache_word_write_0(i),
																	ctrl_writedata_0(i), word_writedata_0(i), ctrl_readdata_0(i), word_readdata_0(i),
																	cache_addr_remote_0(i), cache_ctrl_write_remote_0(i), '0',
																	ctrl_writedata_remote_0(i), (others => '0'), ctrl_readdata_remote_0(i), word_readdata_remote_0(i));
	
	end generate L1_cache_0_gen;

	L1_cache_1_gen:
	for i in 0 to number_of_sets-1 generate
		L1_cache_1 : L1_dual_port_cache_set port map(clk,
																	cache_addr_1(i), cache_ctrl_write_1(i), cache_word_write_1(i),
																	ctrl_writedata_1(i), word_writedata_1(i), ctrl_readdata_1(i), word_readdata_1(i),
																	cache_addr_remote_1(i), cache_ctrl_write_remote_1(i), '0',
																	ctrl_writedata_remote_1(i), (others => '0'), ctrl_readdata_remote_1(i), word_readdata_remote_1(i));
	
	end generate L1_cache_1_gen;

	
	L1_cache_controller_0 : L1_clean_cache_set_controller_wa port map(	clk, rst, flush_0, ready_0,
																								m_writedata_0, m_address_0, m_memwrite_0, m_memread_0, m_readdata_0, i_m_waitrequest_0,
																								s_writedata_0, s_address_0, s_memwrite_0, s_memread_0, s_readdata_0, s_waitrequest_0,
																								cache_addr_0, cache_ctrl_write_0, cache_word_write_0,
																								ctrl_writedata_0, word_writedata_0, ctrl_readdata_0, word_readdata_0,
																								c_stall_0, c_blast_0, c_dirty_0, c_word_0, c_hit_0, c_empty_0);
																						
																						
	L1_cache_controller_1 : L1_clean_cache_set_controller_wa port map(	clk, rst, flush_1, ready_1,
																								m_writedata_1, m_address_1, m_memwrite_1, m_memread_1, m_readdata_1, i_m_waitrequest_1,
																								s_writedata_1, s_address_1, s_memwrite_1, s_memread_1, s_readdata_1, s_waitrequest_1,
																								cache_addr_1, cache_ctrl_write_1, cache_word_write_1,
																								ctrl_writedata_1, word_writedata_1, ctrl_readdata_1, word_readdata_1,
																								c_stall_1, c_blast_1, c_dirty_1, c_word_1, c_hit_1, c_empty_1);
	

	L1_coherency_circuit_0 : L1_clean_coherence_circuit port map(	clk, rst, last_used_0,
																						m_address_0, m_memwrite_0, m_memread_0, i_m_waitrequest_0,
																						m_address_1, m_memwrite_1, m_memread_1,
																						c_stall_0, c_blast_0, c_dirty_0, c_word_0, c_hit_0, c_empty_0,
																						cache_addr_remote_1, cache_ctrl_write_remote_1, ctrl_writedata_remote_1,
																						ctrl_readdata_remote_1, word_readdata_remote_1);


	L1_coherency_circuit_1 : L1_clean_coherence_circuit port map(	clk, rst, last_used_1,
																						m_address_1, m_memwrite_1, m_memread_1, i_m_waitrequest_1,
																						m_address_0, m_memwrite_0, m_memread_0,
																						c_stall_1, c_blast_1, c_dirty_1, c_word_1, c_hit_1, c_empty_1,
																						cache_addr_remote_0, cache_ctrl_write_remote_0, ctrl_writedata_remote_0,
																						ctrl_readdata_remote_0, word_readdata_remote_0);
																							
	m_waitrequest_0 <= i_m_waitrequest_0;
	m_waitrequest_1 <= i_m_waitrequest_1;
	last_used_0 <= not last_used;
	last_used_1 <= last_used;
	
	process(clk, rst)
	begin
		if(rst = '1') then
			last_used <= '0';
		elsif(rising_edge(clk)) then
			if((unsigned(m_address_0(r-1 downto l)) = unsigned(m_address_1(r-1 downto l))) and ((m_memread_0 xor m_memwrite_0) and (m_memread_0 xor m_memwrite_0)) = '1') then
				if(last_used = '0') then
					if(i_m_waitrequest_1 = '0') then
						last_used <= '1';
					end if;
				else
					if(i_m_waitrequest_0 = '0') then
						last_used <= '0';
					end if;
				end if;
			end if;
		end if;
	end process;

end a0;			
