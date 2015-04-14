--************************************************
-- file		:	L1_dual_port_cache_wa.vhd
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

entity L1_dual_port_cache_wa is
	port	(	clk				: in  std_logic;
				rst				: in 	std_logic;
				
				flush_0				: in  std_logic;
				stall_0				: in 	std_logic;
				ready_0				: out std_logic;
				
				-- I/O interface for the FSM/Processor
				m_writedata_0		: in  std_logic_vector (word_length-1 downto 0);
				m_address_0		: in  std_logic_vector(r-1 downto 0);
				m_memwrite_0		: in  std_logic;
				m_memread_0		: in  std_logic;
				m_readdata_0		: out std_logic_vector (word_length-1 downto 0);
				m_waitrequest_0	: out std_logic;
				
				-- I/O interface for memory
				s_writedata_0		: out std_logic_vector (word_length-1 downto 0);
				s_address_0		: out std_logic_vector(r-1 downto 0);
				s_memwrite_0		: out std_logic;
				s_memread_0		: out std_logic;
				s_readdata_0		: in  std_logic_vector (word_length-1 downto 0);
				s_waitrequest_0	: in  std_logic;
				
				flush_1				: in  std_logic;
				stall_1				: in 	std_logic;
				ready_1				: out std_logic;
				
				-- I/O interface for the FSM/Processor
				m_writedata_1		: in  std_logic_vector (word_length-1 downto 0);
				m_address_1		: in  std_logic_vector(r-1 downto 0);
				m_memwrite_1		: in  std_logic;
				m_memread_1		: in  std_logic;
				m_readdata_1		: out std_logic_vector (word_length-1 downto 0);
				m_waitrequest_1	: out std_logic;
				
				-- I/O interface for memory
				s_writedata_1		: out std_logic_vector (word_length-1 downto 0);
				s_address_1		: out std_logic_vector(r-1 downto 0);
				s_memwrite_1		: out std_logic;
				s_memread_1		: out std_logic;
				s_readdata_1		: in  std_logic_vector (word_length-1 downto 0);
				s_waitrequest_1	: in  std_logic
			);

end L1_dual_port_cache_wa;	
	
architecture a0 of L1_dual_port_cache_wa is

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
	
	signal addr_0				: cache_addr_t;
	signal ctrl_write_0		: std_logic_vector(number_of_sets-1 downto 0);
	signal word_write_0		: std_logic_vector(number_of_sets-1 downto 0);
	signal ctrl_in_0			: cache_ctrl_t;
	signal word_in_0			: cache_word_t;
	signal ctrl_out_0			: cache_ctrl_t;
	signal word_out_0			: cache_word_t;
	
	signal addr_1				: cache_addr_t;
	signal ctrl_write_1		: std_logic_vector(number_of_sets-1 downto 0);
	signal word_write_1		: std_logic_vector(number_of_sets-1 downto 0);
	signal ctrl_in_1			: cache_ctrl_t;
	signal word_in_1			: cache_word_t;
	signal ctrl_out_1			: cache_ctrl_t;
	signal word_out_1			: cache_word_t;
	signal writedata_0		: std_logic_vector (word_length-1 downto 0);
	signal address_0			: std_logic_vector(r-1 downto 0);
	signal memwrite_0			: std_logic;
	signal memread_0			: std_logic;
	signal readdata_0			: std_logic_vector (word_length-1 downto 0);
	signal waitrequest_0		: std_logic;
	
	signal writedata_1		: std_logic_vector (word_length-1 downto 0);
	signal address_1			: std_logic_vector(r-1 downto 0);
	signal memwrite_1			: std_logic;
	signal memread_1			: std_logic;
	signal readdata_1			: std_logic_vector (word_length-1 downto 0);
	signal waitrequest_1		: std_logic;	
	
	signal conflict			: std_logic;
	signal last_used			: std_logic;
	
begin	

	conflict <= ((m_memwrite_0 xor m_memread_0) and (m_memwrite_1 xor m_memread_1)) when (unsigned(m_address_0(r-1 downto l)) = unsigned(m_address_1(r-1 downto l))) else '0';

	process( conflict, last_used, 
				m_writedata_0, m_address_0, m_memwrite_0, m_memread_0, readdata_0, waitrequest_0,
				m_writedata_1, m_address_1, m_memwrite_1, m_memread_1, readdata_1, waitrequest_1)
	begin
		if(conflict = '1') then
			if(last_used = '0') then
			
				writedata_0 <= (others => '0');
				address_0 <= (others => '0');
				memwrite_0 <= '0';
				memread_0 <= '0';
				m_readdata_0 <= (others => '0');
				m_waitrequest_0 <= '1';
				
				writedata_1			<= m_writedata_1;
				address_1			<= m_address_1;
				memwrite_1			<= m_memwrite_1;
				memread_1			<= m_memread_1;
				m_readdata_1 		<= readdata_1;	
				m_waitrequest_1	<= waitrequest_1;
				
			else
			
				writedata_0			<= m_writedata_0;
				address_0			<= m_address_0;
				memwrite_0			<= m_memwrite_0;
				memread_0			<= m_memread_0;
				m_readdata_0		<= readdata_0;
				m_waitrequest_0	<= waitrequest_0;
				
				writedata_1 <= (others => '0');
				address_1 <= (others => '0');
				memwrite_1 <= '0';
				memread_1 <= '0';
				m_readdata_1 <= (others => '0');
				m_waitrequest_1 <= '1';
				
			end if;
		else
		
			writedata_0			<= m_writedata_0;
			address_0			<= m_address_0;
			memwrite_0			<= m_memwrite_0;
			memread_0			<= m_memread_0;
			m_readdata_0		<= readdata_0;
			m_waitrequest_0	<= waitrequest_0;

			writedata_1			<= m_writedata_1;
			address_1			<= m_address_1;
			memwrite_1			<= m_memwrite_1;
			memread_1			<= m_memread_1;
			m_readdata_1 		<= readdata_1;	
			m_waitrequest_1	<= waitrequest_1;
		
		end if;
	end process;
	
	process(clk, rst)
	begin
		if(rst = '1') then
			last_used <= '0';
		elsif(rising_edge(clk)) then
			if(conflict = '1') then
				if(last_used = '0') then
					if(waitrequest_1 = '0') then
						last_used <= not last_used;
					else
						last_used <= last_used;
					end if;
					
				else
					if(waitrequest_0 = '0') then
						last_used <= not last_used;
					else
						last_used <= last_used;
					end if;

				end if;
			
			else
				last_used <= last_used;
			end if;
		end if;
	end process;
	
	xcache_set_controller_0 :	L1_cache_set_controller_wa port map(clk, rst, flush_0, stall_0, ready_0,
																						writedata_0, address_0, memwrite_0, memread_0, readdata_0, waitrequest_0,
																						s_writedata_0, s_address_0, s_memwrite_0, s_memread_0, s_readdata_0, s_waitrequest_0,
																						addr_0, ctrl_write_0, word_write_0, 
																						ctrl_in_0, word_in_0, ctrl_out_0, word_out_0);
	
	
	xcache_set_controller_1 :	L1_cache_set_controller_wa port map(clk, rst, flush_1, stall_1, ready_1,
																						writedata_1, address_1, memwrite_1, memread_1, readdata_1, waitrequest_1,
																						s_writedata_1, s_address_1, s_memwrite_1, s_memread_1, s_readdata_1, s_waitrequest_1,
																						addr_1, ctrl_write_1, word_write_1, 
																						ctrl_in_1, word_in_1, ctrl_out_1, word_out_1);
	

	cache_gen:
	for i in 0 to number_of_sets-1 generate
		xdual_port_cache_set : L1_dual_port_cache_set port map(	clk,
																					addr_0(i), ctrl_write_0(i), word_write_0(i), 
																					ctrl_in_0(i), word_in_0(i), ctrl_out_0(i), word_out_0(i),
																					addr_1(i), ctrl_write_1(i), word_write_1(i), 
																					ctrl_in_1(i), word_in_1(i), ctrl_out_1(i), word_out_1(i));
	end generate cache_gen;

end a0;