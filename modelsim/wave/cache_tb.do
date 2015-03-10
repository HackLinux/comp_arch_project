onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk /cache_tb/clk
add wave -noupdate -label rst /cache_tb/rst
add wave -noupdate -label {CPU write data} -radix hexadecimal /cache_tb/m_writedata
add wave -noupdate -label {CPU address} -radix decimal /cache_tb/m_address
add wave -noupdate -label {CPU write request} /cache_tb/m_memwrite
add wave -noupdate -label {CPU read request} /cache_tb/m_memread
add wave -noupdate -label {CPU read data} -radix hexadecimal /cache_tb/m_readdata
add wave -noupdate -label {CPU <- wait} /cache_tb/m_waitrequest
add wave -noupdate -label {Cache write data} -radix hexadecimal /cache_tb/s_writedata
add wave -noupdate -label {Cache address} -radix decimal /cache_tb/s_address
add wave -noupdate -label {Cache write request} /cache_tb/s_memwrite
add wave -noupdate -label {Cache read request} /cache_tb/s_memread
add wave -noupdate -label {Cache read data} -radix hexadecimal /cache_tb/s_readdata
add wave -noupdate -divider new
add wave -noupdate -label clk /cache_tb/xcache/clk
add wave -noupdate -label dirty(w) /cache_tb/xcache/dirty_in
add wave -noupdate -label valid(w) /cache_tb/xcache/valid_in
add wave -noupdate -label tag(w) -radix unsigned /cache_tb/xcache/tag_in
add wave -noupdate -label ctrl(w) /cache_tb/xcache/ctrl_in
add wave -noupdate -label word(w) -radix hexadecimal /cache_tb/xcache/word_in
add wave -noupdate -label dirty(r) /cache_tb/xcache/dirty_out
add wave -noupdate -label valid(r) /cache_tb/xcache/valid_out
add wave -noupdate -label tag(r) -radix unsigned /cache_tb/xcache/tag_out
add wave -noupdate -label ctrl(r) /cache_tb/xcache/ctrl_out
add wave -noupdate -label word(r) -radix hexadecimal /cache_tb/xcache/word_out
add wave -noupdate -label {Cache(i) write} /cache_tb/xcache/cache_write
add wave -noupdate -label {Cache(i) address} -radix unsigned /cache_tb/xcache/cache_addr
add wave -noupdate -label {Cache(i) index} -radix unsigned /cache_tb/xcache/cache_index
add wave -noupdate -label {Cache(i) offset} -radix unsigned /cache_tb/xcache/cache_offset
add wave -noupdate -label {init index} -radix unsigned /cache_tb/xcache/init_offset
add wave -noupdate -label {init offset} -radix unsigned /cache_tb/xcache/init_index
add wave -noupdate -label {word number} -radix unsigned /cache_tb/xcache/word_number
add wave -noupdate -label {Cache <- wait} /cache_tb/s_waitrequest
add wave -noupdate -label {delayed word number} -radix unsigned /cache_tb/xcache/dword_number
add wave -noupdate -label {CPU tag} /cache_tb/xcache/m_tag
add wave -noupdate -label {CPU index} -radix unsigned /cache_tb/xcache/m_index
add wave -noupdate -label {CPU offset} -radix unsigned /cache_tb/xcache/m_offset
add wave -noupdate -label {Cache current state} /cache_tb/xcache/current
add wave -noupdate -label {Cache init done} /cache_tb/xcache/init_done
add wave -noupdate -label {Cache hit} /cache_tb/xcache/hit
add wave -noupdate -label {Cache empty slot} /cache_tb/xcache/empty_slot
add wave -noupdate -label {DMA request} /cache_tb/xcache/dma_req
add wave -noupdate /cache_tb/xcache/memrd_swait
add wave -noupdate /cache_tb/xcache/dma_swait
add wave -noupdate /cache_tb/xcache/wrbk_swait
add wave -noupdate /cache_tb/xcache/s_memwrite
add wave -noupdate /cache_tb/xcache/word_count
add wave -noupdate /cache_tb/xcache/word_rst
add wave -noupdate -divider ram
add wave -noupdate -label clk /cache_tb/xmemory/clk
add wave -noupdate -label rst /cache_tb/xmemory/rst
add wave -noupdate -label {data in} -radix hexadecimal /cache_tb/xmemory/s_writedata
add wave -noupdate -label {address in} -radix unsigned /cache_tb/xmemory/s_address
add wave -noupdate -label {write req in} /cache_tb/xmemory/s_memwrite
add wave -noupdate -label {read req in} /cache_tb/xmemory/s_memread
add wave -noupdate -label {read data out} -radix hexadecimal /cache_tb/xmemory/s_readdata
add wave -noupdate -label {wait out} /cache_tb/xmemory/s_waitrequest
add wave -noupdate -label {ram state} /cache_tb/xmemory/current
add wave -noupdate -radix hexadecimal /cache_tb/xmemory/writedata
add wave -noupdate /cache_tb/xmemory/memwrite
add wave -noupdate -radix unsigned /cache_tb/xmemory/address
add wave -noupdate -radix unsigned /cache_tb/xmemory/init_addr
add wave -noupdate -radix unsigned /cache_tb/xmemory/init_addr_int
add wave -noupdate /cache_tb/xmemory/init_done
add wave -noupdate /cache_tb/xmemory/mem_delay
add wave -noupdate /cache_tb/xmemory/init_en
add wave -noupdate /cache_tb/xmemory/delay_en
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10496390000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 236
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
WaveRestoreZoom {0 ps} {924608 ps}
