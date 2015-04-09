onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk /split_cache_tb/clk
add wave -noupdate -label rst /split_cache_tb/rst
add wave -noupdate -divider testbench
add wave -noupdate -group {proc 0} -label flush /split_cache_tb/flush_0
add wave -noupdate -group {proc 0} -label ready /split_cache_tb/ready_0
add wave -noupdate -group {proc 0} -label {write data} -radix unsigned /split_cache_tb/m_writedata_0
add wave -noupdate -group {proc 0} -label address -radix unsigned /split_cache_tb/m_address_0
add wave -noupdate -group {proc 0} -label {write request} /split_cache_tb/m_memwrite_0
add wave -noupdate -group {proc 0} -label {read request} /split_cache_tb/m_memread_0
add wave -noupdate -group {proc 0} -label {read data} -radix unsigned /split_cache_tb/m_readdata_0
add wave -noupdate -group {proc 0} -label {wait request} /split_cache_tb/m_waitrequest_0
add wave -noupdate -group {proc 1} -label flush /split_cache_tb/flush_1
add wave -noupdate -group {proc 1} -label ready /split_cache_tb/ready_1
add wave -noupdate -group {proc 1} -label {write data} -radix unsigned /split_cache_tb/m_writedata_1
add wave -noupdate -group {proc 1} -label address -radix unsigned /split_cache_tb/m_address_1
add wave -noupdate -group {proc 1} -label {write request} /split_cache_tb/m_memwrite_1
add wave -noupdate -group {proc 1} -label {read request} /split_cache_tb/m_memread_1
add wave -noupdate -group {proc 1} -label {read data} -radix unsigned /split_cache_tb/m_readdata_1
add wave -noupdate -group {proc 1} -label {wait request} /split_cache_tb/m_waitrequest_1
add wave -noupdate -group {outdated} /split_cache_tb/addr_0
add wave -noupdate -group {outdated} /split_cache_tb/addr_1
add wave -noupdate -group {outdated} /split_cache_tb/activate_P0_read
add wave -noupdate -group {outdated} /split_cache_tb/activate_P1_read
add wave -noupdate -group {outdated} /split_cache_tb/activate_P0_write
add wave -noupdate -group {outdated} /split_cache_tb/activate_P1_write
add wave -noupdate -group {outdated} /split_cache_tb/P0_done
add wave -noupdate -group {outdated} /split_cache_tb/P1_done
add wave -noupdate -group {outdated} /split_cache_tb/stall_0
add wave -noupdate -group {outdated} /split_cache_tb/stall_1
add wave -noupdate -group {outdated} -radix unsigned /split_cache_tb/writedata_0
add wave -noupdate -group {outdated} -radix unsigned /split_cache_tb/writedata_1
add wave -noupdate -divider cache
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {cpu} /split_cache_tb/xhtps/L1_cache_controller_0/flush
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {cpu} /split_cache_tb/xhtps/L1_cache_controller_0/ready
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {cpu} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/m_writedata
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {cpu} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/m_address
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {cpu} /split_cache_tb/xhtps/L1_cache_controller_0/m_memwrite
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {cpu} /split_cache_tb/xhtps/L1_cache_controller_0/m_memread
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {cpu} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/m_readdata
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {cpu} /split_cache_tb/xhtps/L1_cache_controller_0/m_waitrequest
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {lower memory} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/s_writedata
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {lower memory} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/s_address
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {lower memory} /split_cache_tb/xhtps/L1_cache_controller_0/s_memwrite
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {lower memory} /split_cache_tb/xhtps/L1_cache_controller_0/s_memread
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {lower memory} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/s_readdata
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {lower memory} /split_cache_tb/xhtps/L1_cache_controller_0/s_waitrequest
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group sram -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/cache_addr
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group sram /split_cache_tb/xhtps/L1_cache_controller_0/cache_ctrl_write
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group sram /split_cache_tb/xhtps/L1_cache_controller_0/cache_word_write
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group sram /split_cache_tb/xhtps/L1_cache_controller_0/ctrl_writedata
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group sram -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/word_writedata
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group sram /split_cache_tb/xhtps/L1_cache_controller_0/ctrl_readdata
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group sram -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/word_readdata
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {coherence circuit} /split_cache_tb/xhtps/L1_cache_controller_0/c_stall
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {coherence circuit} /split_cache_tb/xhtps/L1_cache_controller_0/c_blast
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {coherence circuit} /split_cache_tb/xhtps/L1_cache_controller_0/c_dirty_in
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {coherence circuit} /split_cache_tb/xhtps/L1_cache_controller_0/c_word_in
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {coherence circuit} /split_cache_tb/xhtps/L1_cache_controller_0/c_hit_out
add wave -noupdate -group {cache 0} -group {sram controller} -group {interface} -group {coherence circuit} /split_cache_tb/xhtps/L1_cache_controller_0/c_empty_out
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/cache_index
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/cache_offset
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/dirty_in
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/valid_in
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/dirty_out
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/valid_out
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/tag_in
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/tag_out
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/LRU_in
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/LRU_out
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/CCU_in
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/CCU_out
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/m_tag
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/m_index
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/m_offset
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/init_index
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/flush_index
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} -color Gold -itemcolor Gold /split_cache_tb/xhtps/L1_cache_controller_0/current
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/LRU_update_dirty_in
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/LRU_update_valid_in
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/LRU_update_word_writedata
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/LRU_update_tag_in
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/init_done
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/flush_done
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/dirty
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/hit
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/empty_slot
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/dma_req
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/dma_req_reg
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/s_waitrequest_reg
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/word_number
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/word_number_reg
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/blast_offset
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/dirty_index
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/dirty_index_reg
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/hit_index
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/hit_index_reg
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/empty_index
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_0/KO_index
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/hits
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/empty_slots
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/LRU_out_vector
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/hit_write
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/word_write_empty
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/word_write_KO
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/word_write_blast
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/ctrl_write_empty
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/ctrl_write_KO
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/ctrl_write_flush
add wave -noupdate -group {cache 0} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_0/ctrl_write_blast
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {interface} -group {cpu local} /split_cache_tb/xhtps/L1_coherency_circuit_0/m_address_local
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {interface} -group {cpu local} /split_cache_tb/xhtps/L1_coherency_circuit_0/m_memwrite_local
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {interface} -group {cpu local} /split_cache_tb/xhtps/L1_coherency_circuit_0/m_memread_local
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {interface} -group {cpu local} /split_cache_tb/xhtps/L1_coherency_circuit_0/m_waitrequest_local
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {interface} -expand -group {cpu remote} /split_cache_tb/xhtps/L1_coherency_circuit_0/m_address_remote
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {interface} -expand -group {cpu remote} /split_cache_tb/xhtps/L1_coherency_circuit_0/m_memwrite_remote
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {interface} -expand -group {cpu remote} /split_cache_tb/xhtps/L1_coherency_circuit_0/m_memread_remote
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {interface} -group {sram controller} /split_cache_tb/xhtps/L1_coherency_circuit_0/c_stall
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {interface} -group {sram controller} /split_cache_tb/xhtps/L1_coherency_circuit_0/c_blast
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {interface} -group {sram controller} /split_cache_tb/xhtps/L1_coherency_circuit_0/c_dirty_out
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {interface} -group {sram controller} /split_cache_tb/xhtps/L1_coherency_circuit_0/c_word_out
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {interface} -group {sram controller} /split_cache_tb/xhtps/L1_coherency_circuit_0/c_hit_in
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {interface} -group {sram controller} /split_cache_tb/xhtps/L1_coherency_circuit_0/c_empty_in
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {interface} -group {sram remote} /split_cache_tb/xhtps/L1_coherency_circuit_0/cache_addr_remote
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {interface} -group {sram remote} /split_cache_tb/xhtps/L1_coherency_circuit_0/cache_ctrl_write_remote
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {interface} -group {sram remote} /split_cache_tb/xhtps/L1_coherency_circuit_0/ctrl_writedata_remote
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {interface} -group {sram remote} /split_cache_tb/xhtps/L1_coherency_circuit_0/ctrl_readdata_remote
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {interface} -group {sram remote} /split_cache_tb/xhtps/L1_coherency_circuit_0/word_readdata_remote
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {internals} -color Gold -itemcolor Gold /split_cache_tb/xhtps/L1_coherency_circuit_0/current
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {internals} /split_cache_tb/xhtps/L1_coherency_circuit_0/hit_remote
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {internals} /split_cache_tb/xhtps/L1_coherency_circuit_0/hits_remote
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {internals} /split_cache_tb/xhtps/L1_coherency_circuit_0/hit_index_remote
add wave -noupdate -group {cache 0} -group {coherence circuit} -group {internals} /split_cache_tb/xhtps/L1_coherency_circuit_0/blast_offset
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/clk
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/addr_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/ctrl_write_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/word_write_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/ctrl_in_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/word_in_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/ctrl_out_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/word_out_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/addr_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/ctrl_write_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/word_write_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/ctrl_in_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/word_in_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/ctrl_out_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/word_out_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/index_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/offset_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/index_reg_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/offset_reg_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/index_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/offset_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/index_reg_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/offset_reg_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/ctrldata
add wave -noupdate -group {cache 0} -group {sram} -group {set 0} -radix unsigned -childformat {{/split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(7) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(6) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(5) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(4) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(3) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(2) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(1) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(0) -radix unsigned -childformat {{/split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(0)(3) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(0)(2) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(0)(1) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(0)(0) -radix unsigned}}}} -subitemconfig {/split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(7) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(6) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(5) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(4) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(3) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(2) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(1) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(0) {-height 15 -radix unsigned -childformat {{/split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(0)(3) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(0)(2) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(0)(1) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(0)(0) -radix unsigned}}} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(0)(3) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(0)(2) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(0)(1) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata(0)(0) {-height 15 -radix unsigned}} /split_cache_tb/xhtps/L1_cache_0_gen(0)/L1_cache_0/linedata
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/clk
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/addr_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/ctrl_write_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/word_write_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/ctrl_in_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/word_in_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/ctrl_out_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/word_out_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/addr_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/ctrl_write_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/word_write_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/ctrl_in_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/word_in_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/ctrl_out_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/word_out_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/index_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/offset_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/index_reg_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/offset_reg_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/index_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/offset_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/index_reg_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/offset_reg_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/ctrldata
add wave -noupdate -group {cache 0} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_0_gen(1)/L1_cache_0/linedata
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/clk
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/addr_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/ctrl_write_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/word_write_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/ctrl_in_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/word_in_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/ctrl_out_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/word_out_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/addr_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/ctrl_write_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/word_write_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/ctrl_in_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/word_in_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/ctrl_out_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/word_out_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/index_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/offset_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/index_reg_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/offset_reg_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/index_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/offset_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/index_reg_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/offset_reg_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/ctrldata
add wave -noupdate -group {cache 0} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_0_gen(2)/L1_cache_0/linedata
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/clk
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/addr_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/ctrl_write_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/word_write_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/ctrl_in_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/word_in_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/ctrl_out_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/word_out_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/addr_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/ctrl_write_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/word_write_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/ctrl_in_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/word_in_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/ctrl_out_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/word_out_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/index_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/offset_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/index_reg_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/offset_reg_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/index_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/offset_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/index_reg_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/offset_reg_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/ctrldata
add wave -noupdate -group {cache 0} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_0_gen(3)/L1_cache_0/linedata
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/clk
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/addr_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/ctrl_write_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/word_write_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/ctrl_in_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/word_in_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/ctrl_out_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/word_out_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/addr_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/ctrl_write_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/word_write_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/ctrl_in_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/word_in_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/ctrl_out_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/word_out_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/index_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/offset_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/index_reg_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/offset_reg_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/index_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/offset_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/index_reg_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/offset_reg_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/ctrldata
add wave -noupdate -group {cache 0} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_0_gen(4)/L1_cache_0/linedata
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/clk
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/addr_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/ctrl_write_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/word_write_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/ctrl_in_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/word_in_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/ctrl_out_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/word_out_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/addr_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/ctrl_write_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/word_write_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/ctrl_in_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/word_in_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/ctrl_out_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/word_out_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/index_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/offset_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/index_reg_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/offset_reg_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/index_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/offset_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/index_reg_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/offset_reg_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/ctrldata
add wave -noupdate -group {cache 0} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_0_gen(5)/L1_cache_0/linedata
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/clk
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/addr_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/ctrl_write_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/word_write_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/ctrl_in_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/word_in_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/ctrl_out_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/word_out_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/addr_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/ctrl_write_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/word_write_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/ctrl_in_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/word_in_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/ctrl_out_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/word_out_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/index_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/offset_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/index_reg_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/offset_reg_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/index_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/offset_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/index_reg_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/offset_reg_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/ctrldata
add wave -noupdate -group {cache 0} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_0_gen(6)/L1_cache_0/linedata
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/clk
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/addr_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/ctrl_write_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/word_write_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/ctrl_in_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/word_in_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/ctrl_out_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/word_out_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/addr_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/ctrl_write_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/word_write_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/ctrl_in_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/word_in_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/ctrl_out_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/word_out_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/index_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/offset_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/index_reg_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/offset_reg_0
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/index_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/offset_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/index_reg_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/offset_reg_1
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/ctrldata
add wave -noupdate -group {cache 0} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_0_gen(7)/L1_cache_0/linedata
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {cpu} /split_cache_tb/xhtps/L1_cache_controller_1/flush
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {cpu} /split_cache_tb/xhtps/L1_cache_controller_1/ready
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {cpu} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/m_writedata
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {cpu} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/m_address
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {cpu} /split_cache_tb/xhtps/L1_cache_controller_1/m_memwrite
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {cpu} /split_cache_tb/xhtps/L1_cache_controller_1/m_memread
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {cpu} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/m_readdata
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {cpu} /split_cache_tb/xhtps/L1_cache_controller_1/m_waitrequest
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {lower memory} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/s_writedata
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {lower memory} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/s_address
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {lower memory} /split_cache_tb/xhtps/L1_cache_controller_1/s_memwrite
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {lower memory} /split_cache_tb/xhtps/L1_cache_controller_1/s_memread
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {lower memory} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/s_readdata
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {lower memory} /split_cache_tb/xhtps/L1_cache_controller_1/s_waitrequest
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {sram} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/cache_addr
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {sram} /split_cache_tb/xhtps/L1_cache_controller_1/cache_ctrl_write
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {sram} /split_cache_tb/xhtps/L1_cache_controller_1/cache_word_write
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {sram} /split_cache_tb/xhtps/L1_cache_controller_1/ctrl_writedata
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {sram} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/word_writedata
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {sram} /split_cache_tb/xhtps/L1_cache_controller_1/ctrl_readdata
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {sram} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/word_readdata
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {coherence circuit} /split_cache_tb/xhtps/L1_cache_controller_1/c_stall
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {coherence circuit} /split_cache_tb/xhtps/L1_cache_controller_1/c_blast
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {coherence circuit} /split_cache_tb/xhtps/L1_cache_controller_1/c_dirty_in
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {coherence circuit} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/c_word_in
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {coherence circuit} /split_cache_tb/xhtps/L1_cache_controller_1/c_hit_out
add wave -noupdate -group {cache 1} -group {sram controller} -group {interface} -group {coherence circuit} /split_cache_tb/xhtps/L1_cache_controller_1/c_empty_out
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/cache_index
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/cache_offset
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/dirty_in
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/valid_in
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/dirty_out
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/valid_out
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/tag_in
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/tag_out
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/LRU_in
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/LRU_out
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/CCU_in
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/CCU_out
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/m_tag
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/m_index
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/m_offset
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/init_index
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/flush_index
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} -color Gold -itemcolor Gold /split_cache_tb/xhtps/L1_cache_controller_1/current
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/LRU_update_dirty_in
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/LRU_update_valid_in
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/LRU_update_word_writedata
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/LRU_update_tag_in
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/init_done
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/flush_done
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/dirty
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/hit
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/empty_slot
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/dma_req
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/dma_req_reg
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/s_waitrequest_reg
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/word_number
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/word_number_reg
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/blast_offset
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/dirty_index
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/dirty_index_reg
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/hit_index
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/hit_index_reg
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/empty_index
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_cache_controller_1/KO_index
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/hits
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/empty_slots
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/LRU_out_vector
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/hit_write
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/word_write_empty
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/word_write_KO
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/word_write_blast
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/ctrl_write_empty
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/ctrl_write_KO
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/ctrl_write_flush
add wave -noupdate -group {cache 1} -group {sram controller} -group {internals} /split_cache_tb/xhtps/L1_cache_controller_1/ctrl_write_blast
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {interface} -group {cpu local} -radix unsigned /split_cache_tb/xhtps/L1_coherency_circuit_1/m_address_local
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {interface} -group {cpu local} /split_cache_tb/xhtps/L1_coherency_circuit_1/m_memwrite_local
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {interface} -group {cpu local} /split_cache_tb/xhtps/L1_coherency_circuit_1/m_memread_local
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {interface} -group {cpu local} /split_cache_tb/xhtps/L1_coherency_circuit_1/m_waitrequest_local
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {interface} -group {cpu remote} -radix unsigned /split_cache_tb/xhtps/L1_coherency_circuit_1/m_address_remote
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {interface} -group {cpu remote} /split_cache_tb/xhtps/L1_coherency_circuit_1/m_memwrite_remote
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {interface} -group {cpu remote} /split_cache_tb/xhtps/L1_coherency_circuit_1/m_memread_remote
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {interface} -group {sram controller} /split_cache_tb/xhtps/L1_coherency_circuit_1/c_stall
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {interface} -group {sram controller} /split_cache_tb/xhtps/L1_coherency_circuit_1/c_blast
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {interface} -group {sram controller} /split_cache_tb/xhtps/L1_coherency_circuit_1/c_dirty_out
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {interface} -group {sram controller} -radix unsigned /split_cache_tb/xhtps/L1_coherency_circuit_1/c_word_out
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {interface} -group {sram controller} /split_cache_tb/xhtps/L1_coherency_circuit_1/c_hit_in
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {interface} -group {sram controller} /split_cache_tb/xhtps/L1_coherency_circuit_1/c_empty_in
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {interface} -group {sram remote} -radix unsigned /split_cache_tb/xhtps/L1_coherency_circuit_1/cache_addr_remote
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {interface} -group {sram remote} /split_cache_tb/xhtps/L1_coherency_circuit_1/cache_ctrl_write_remote
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {interface} -group {sram remote} /split_cache_tb/xhtps/L1_coherency_circuit_1/ctrl_writedata_remote
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {interface} -group {sram remote} /split_cache_tb/xhtps/L1_coherency_circuit_1/ctrl_readdata_remote
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {interface} -group {sram remote} -radix unsigned /split_cache_tb/xhtps/L1_coherency_circuit_1/word_readdata_remote
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {internals} -color Gold -itemcolor Gold /split_cache_tb/xhtps/L1_coherency_circuit_1/current
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {internals} /split_cache_tb/xhtps/L1_coherency_circuit_1/hit_remote
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {internals} /split_cache_tb/xhtps/L1_coherency_circuit_1/hits_remote
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_coherency_circuit_1/hit_index_remote
add wave -noupdate -group {cache 1} -group {coherence circuit} -group {internals} -radix unsigned /split_cache_tb/xhtps/L1_coherency_circuit_1/blast_offset
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/clk
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/addr_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/ctrl_write_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/word_write_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/ctrl_in_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/word_in_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/ctrl_out_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/word_out_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/addr_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/ctrl_write_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/word_write_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/ctrl_in_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/word_in_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/ctrl_out_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/word_out_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/index_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/offset_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/index_reg_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/offset_reg_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/index_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/offset_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/index_reg_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} -radix unsigned /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/offset_reg_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/ctrldata
add wave -noupdate -group {cache 1} -group {sram} -group {set 0} -radix unsigned -childformat {{/split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(7) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(6) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(5) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(4) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(3) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(2) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(1) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(0) -radix unsigned -childformat {{/split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(0)(3) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(0)(2) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(0)(1) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(0)(0) -radix unsigned}}}} -subitemconfig {/split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(7) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(6) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(5) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(4) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(3) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(2) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(1) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(0) {-height 15 -radix unsigned -childformat {{/split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(0)(3) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(0)(2) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(0)(1) -radix unsigned} {/split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(0)(0) -radix unsigned}}} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(0)(3) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(0)(2) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(0)(1) {-height 15 -radix unsigned} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata(0)(0) {-height 15 -radix unsigned}} /split_cache_tb/xhtps/L1_cache_1_gen(0)/L1_cache_1/linedata
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/clk
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/addr_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/ctrl_write_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/word_write_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/ctrl_in_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/word_in_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/ctrl_out_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/word_out_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/addr_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/ctrl_write_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/word_write_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/ctrl_in_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/word_in_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/ctrl_out_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/word_out_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/index_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/offset_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/index_reg_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/offset_reg_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/index_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/offset_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/index_reg_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/offset_reg_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/ctrldata
add wave -noupdate -group {cache 1} -group {sram} -group {set 1} /split_cache_tb/xhtps/L1_cache_1_gen(1)/L1_cache_1/linedata
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/clk
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/addr_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/ctrl_write_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/word_write_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/ctrl_in_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/word_in_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/ctrl_out_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/word_out_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/addr_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/ctrl_write_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/word_write_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/ctrl_in_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/word_in_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/ctrl_out_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/word_out_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/index_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/offset_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/index_reg_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/offset_reg_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/index_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/offset_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/index_reg_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/offset_reg_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/ctrldata
add wave -noupdate -group {cache 1} -group {sram} -group {set 2} /split_cache_tb/xhtps/L1_cache_1_gen(2)/L1_cache_1/linedata
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/clk
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/addr_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/ctrl_write_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/word_write_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/ctrl_in_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/word_in_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/ctrl_out_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/word_out_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/addr_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/ctrl_write_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/word_write_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/ctrl_in_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/word_in_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/ctrl_out_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/word_out_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/index_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/offset_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/index_reg_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/offset_reg_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/index_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/offset_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/index_reg_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/offset_reg_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/ctrldata
add wave -noupdate -group {cache 1} -group {sram} -group {set 3} /split_cache_tb/xhtps/L1_cache_1_gen(3)/L1_cache_1/linedata
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/clk
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/addr_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/ctrl_write_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/word_write_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/ctrl_in_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/word_in_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/ctrl_out_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/word_out_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/addr_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/ctrl_write_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/word_write_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/ctrl_in_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/word_in_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/ctrl_out_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/word_out_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/index_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/offset_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/index_reg_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/offset_reg_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/index_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/offset_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/index_reg_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/offset_reg_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/ctrldata
add wave -noupdate -group {cache 1} -group {sram} -group {set 4} /split_cache_tb/xhtps/L1_cache_1_gen(4)/L1_cache_1/linedata
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/clk
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/addr_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/ctrl_write_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/word_write_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/ctrl_in_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/word_in_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/ctrl_out_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/word_out_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/addr_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/ctrl_write_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/word_write_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/ctrl_in_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/word_in_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/ctrl_out_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/word_out_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/index_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/offset_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/index_reg_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/offset_reg_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/index_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/offset_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/index_reg_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/offset_reg_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/ctrldata
add wave -noupdate -group {cache 1} -group {sram} -group {set 5} /split_cache_tb/xhtps/L1_cache_1_gen(5)/L1_cache_1/linedata
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/clk
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/addr_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/ctrl_write_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/word_write_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/ctrl_in_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/word_in_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/ctrl_out_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/word_out_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/addr_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/ctrl_write_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/word_write_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/ctrl_in_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/word_in_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/ctrl_out_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/word_out_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/index_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/offset_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/index_reg_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/offset_reg_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/index_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/offset_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/index_reg_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/offset_reg_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/ctrldata
add wave -noupdate -group {cache 1} -group {sram} -group {set 6} /split_cache_tb/xhtps/L1_cache_1_gen(6)/L1_cache_1/linedata
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/clk
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/addr_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/ctrl_write_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/word_write_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/ctrl_in_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/word_in_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/ctrl_out_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/word_out_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/addr_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/ctrl_write_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/word_write_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/ctrl_in_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/word_in_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/ctrl_out_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/word_out_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/index_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/offset_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/index_reg_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/offset_reg_0
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/index_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/offset_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/index_reg_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/offset_reg_1
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/ctrldata
add wave -noupdate -group {cache 1} -group {sram} -group {set 7} /split_cache_tb/xhtps/L1_cache_1_gen(7)/L1_cache_1/linedata
add wave -noupdate -divider memory
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/clk
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/rst
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/s_writedata_0
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/s_address_0
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/s_memwrite_0
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/s_memread_0
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/s_readdata_0
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/s_waitrequest_0
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/s_writedata_1
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/s_address_1
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/s_memwrite_1
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/s_memread_1
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/s_readdata_1
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/s_waitrequest_1
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/current_0
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/memwrite_0
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/mem_delay_0
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/delay_rst_0
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/delay_done_0
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/current_1
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/memwrite_1
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/mem_delay_1
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/delay_rst_1
add wave -noupdate -group memory /split_cache_tb/xhtps/main_memory/delay_done_1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {49033 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 476
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {315 ns}
