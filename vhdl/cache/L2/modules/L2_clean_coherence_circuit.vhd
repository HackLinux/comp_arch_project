--************************************************
-- file		:	L2_clean_coherence_circuit.vhd
-- author	:	harsh aurora, loren lugosch
-- date		:	7 april 2015
--
-- brief	   :	
--************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.params.all;
use work.L2_params.all;
use work.L2_cache_types.all;

entity L2_clean_coherence_circuit is
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
			
end L2_clean_coherence_circuit;

architecture a0 of L2_clean_coherence_circuit is

  component L2_LSO_index is
	port(	
		vector : in std_logic_vector(number_of_sets-1 downto 0);
		index_reg : in integer range 0 to number_of_sets-1;
		index : out integer range 0 to number_of_sets-1
	);
  end component L2_LSO_index;
  
	type state is (reset, idle, blast, proceed);
	
	signal current : state := reset;

	signal hit_remote			: std_logic;
	signal hits_remote		: std_logic_vector(number_of_sets-1 downto 0);
	signal hit_index_remote	: integer range 0 to number_of_sets-1;
	
	signal blast_offset		: unsigned(l-1 downto 0);
	
begin

	----------------------
	-- SEQUENTIAL LOGIC --
	----------------------

	-- counter for the blast sequence
	blast_counter:
		process(clk, rst)
		begin
			if(rst = '1') then
				blast_offset  <= (others => '0');
			elsif(rising_edge(clk)) then
				if((current = blast) or ((current = idle) and (((m_memread_local xor m_memwrite_local) and hit_remote and (not c_hit_in) and c_empty_in) = '1'))) then
					blast_offset <= blast_offset + 1;
				else
					blast_offset  <= (others => '0');
				end if;
			end if;
		end process blast_counter;
	
	state_transition:
	process(clk, rst)
	begin
		if(rst = '1') then
			current <= reset;
		elsif(rising_edge(clk)) then
			case current is
			
				when reset =>
					current  <= idle;
					
				when idle =>
					if((unsigned(m_address_local(r-1 downto 0)) = unsigned(m_address_remote(r-1 downto 0))) and ((m_memwrite_remote or (m_memwrite_local and m_memread_remote)) = '1')) then
						current <= idle;
					elsif((m_memread_local xor m_memwrite_local) = '1') then
						if((unsigned(m_address_local(r-1 downto l)) = unsigned(m_address_remote(r-1 downto l))) and ((m_memwrite_remote xor m_memread_remote) = '1') and (last_used = '1')) then
							current <= idle;
						elsif(hit_remote = '1') then
							if(c_hit_in = '1') then
								current <= proceed;
							elsif(c_empty_in = '1') then
								current <= blast;
							else
								current <= idle;
							end if;
						else
							current <= proceed;
						end if;
					else
						current <= idle;
					end if;
				
				when blast =>
					if(blast_offset = 0) then
						current <= proceed;
					else
						current <= blast;
					end if;
				
				when proceed =>
					if(m_waitrequest_local = '0') then
						current <= idle;
					else
						current <= proceed;
					end if;
				
			end case;
		
		end if;
	
	
	end process state_transition;

	-------------------------
	-- COMBINATIONAL LOGIC --
	-------------------------
	
	xLSO_index : L2_LSO_index port map(hits_remote, 0, hit_index_remote);
	
	hit_remote <=  '0' when unsigned(hits_remote) = 0 else '1';
	c_word_out <= word_readdata_remote(hit_index_remote);
	c_dirty_out <= ctrl_readdata_remote(hit_index_remote)(t+mem_b-1);
	
	process(m_address_local, blast_offset, ctrl_readdata_remote, current, m_memwrite_local, hit_index_remote)
	begin
		for i in 0 to number_of_sets-1 loop
						
			cache_addr_remote(i)(s+l-1 downto l) <= m_address_local(s+l-1 downto l);
			cache_addr_remote(i)(l-1 downto 0) <= std_logic_vector(blast_offset);
		
			ctrl_writedata_remote(i)(ctrl_length-1 downto ctrl_length-ccu_b) <= ctrl_readdata_remote(i)(ctrl_length-1 downto ctrl_length-ccu_b);
			ctrl_writedata_remote(i)(t+mem_b+a-1 downto t+mem_b) <= ctrl_readdata_remote(i)(t+mem_b+a-1 downto t+mem_b);
			ctrl_writedata_remote(i)(t+mem_b-1) <= '0';
			ctrl_writedata_remote(i)(t+mem_b-2) <= '0';
			ctrl_writedata_remote(i)(t-1 downto 0) <= ctrl_readdata_remote(i)(t-1 downto 0);
			
			if(unsigned(m_address_local(r-1 downto s+l)) = unsigned(ctrl_readdata_remote(i)(t-1 downto 0))) then
				hits_remote(i) <= ctrl_readdata_remote(i)(t+mem_b-2);
			else
				hits_remote(i) <= '0';
			end if;
			
			if((current = proceed) and (m_memwrite_local = '1')) then
				if(i = hit_index_remote) then
					cache_ctrl_write_remote(i) <= '1';
				else
					cache_ctrl_write_remote(i) <= '0';
				end if;
			else
				cache_ctrl_write_remote(i) <= '0';
			end if;
			
		end loop;
	end process;
	
	output_assignments:
	process(current, m_memread_local, m_memwrite_local, hit_remote, c_hit_in)
	begin
		case current is
			when reset =>
				c_stall <= '1';				
				c_blast <= '0';
			
			when idle =>
				c_stall <= '1';
				
				if(((m_memread_local xor m_memwrite_local) and (hit_remote and (not c_hit_in))) = '1') then
					c_blast <= '1';
				else	
					c_blast <= '0';
				end if;
				
			when blast =>
				c_stall <= '1';				
			   c_blast <= '0';
			
			
			when proceed =>
				c_stall <= '0';				
			   c_blast <= '0';
			
		end case;
	end process output_assignments;

end a0;