onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk /cache_tb/clk
add wave -noupdate -label rst /cache_tb/rst
add wave -noupdate -color {Medium Blue} -itemcolor {Medium Blue} -label {CPU write data} -radix unsigned /cache_tb/m_writedata
add wave -noupdate -color Firebrick -itemcolor Firebrick -label {CPU address} -radix unsigned /cache_tb/m_address
add wave -noupdate -label {CPU write request} /cache_tb/m_memwrite
add wave -noupdate -label {CPU read request} /cache_tb/m_memread
add wave -noupdate -color {Medium Blue} -itemcolor {Medium Blue} -label {CPU read data} -radix unsigned /cache_tb/m_readdata
add wave -noupdate -label {CPU <- wait} /cache_tb/m_waitrequest
add wave -noupdate -group retard -color {Medium Blue} -itemcolor {Medium Blue} -label {Cache write data} -radix unsigned /cache_tb/s_writedata
add wave -noupdate -group retard -color Firebrick -itemcolor Firebrick -label {Cache address} -radix unsigned /cache_tb/s_address
add wave -noupdate -group retard -label {Cache write request} /cache_tb/s_memwrite
add wave -noupdate -group retard -label {Cache read request} /cache_tb/s_memread
add wave -noupdate -group retard -color {Medium Blue} -itemcolor {Medium Blue} -label {Cache read data} -radix unsigned /cache_tb/s_readdata
add wave -noupdate -group retard -color {Medium Blue} -itemcolor {Medium Blue} -label {Cache write data} -radix unsigned /cache_tb/s_writedata
add wave -noupdate -group retard -color Firebrick -itemcolor Firebrick -label {Cache address} -radix unsigned /cache_tb/s_address
add wave -noupdate -group retard -label {Cache write request} /cache_tb/s_memwrite
add wave -noupdate -group retard -label {Cache read request} /cache_tb/s_memread
add wave -noupdate -group retard -color {Medium Blue} -itemcolor {Medium Blue} -label {Cache read data} -radix unsigned /cache_tb/s_readdata
add wave -noupdate -divider new
add wave -noupdate -label clk /cache_tb/xcache/clk
add wave -noupdate -label {Cache write(Empty)} /cache_tb/xcache/empty_write
add wave -noupdate -label {Cache write(KO)} /cache_tb/xcache/KO_write
add wave -noupdate -label {Cache word write} /cache_tb/xcache/cache_word_write
add wave -noupdate -label {Cache ctrl write} /cache_tb/xcache/cache_ctrl_write
add wave -noupdate -color Firebrick -itemcolor Firebrick -label {Cache address} -radix unsigned -childformat {{/cache_tb/xcache/cache_addr(7) -radix unsigned} {/cache_tb/xcache/cache_addr(6) -radix unsigned} {/cache_tb/xcache/cache_addr(5) -radix unsigned} {/cache_tb/xcache/cache_addr(4) -radix unsigned} {/cache_tb/xcache/cache_addr(3) -radix unsigned} {/cache_tb/xcache/cache_addr(2) -radix unsigned} {/cache_tb/xcache/cache_addr(1) -radix unsigned} {/cache_tb/xcache/cache_addr(0) -radix unsigned}} -subitemconfig {/cache_tb/xcache/cache_addr(7) {-color Firebrick -height 15 -itemcolor Firebrick -radix unsigned} /cache_tb/xcache/cache_addr(6) {-color Firebrick -height 15 -itemcolor Firebrick -radix unsigned} /cache_tb/xcache/cache_addr(5) {-color Firebrick -height 15 -itemcolor Firebrick -radix unsigned} /cache_tb/xcache/cache_addr(4) {-color Firebrick -height 15 -itemcolor Firebrick -radix unsigned} /cache_tb/xcache/cache_addr(3) {-color Firebrick -height 15 -itemcolor Firebrick -radix unsigned} /cache_tb/xcache/cache_addr(2) {-color Firebrick -height 15 -itemcolor Firebrick -radix unsigned} /cache_tb/xcache/cache_addr(1) {-color Firebrick -height 15 -itemcolor Firebrick -radix unsigned} /cache_tb/xcache/cache_addr(0) {-color Firebrick -height 15 -itemcolor Firebrick -radix unsigned}} /cache_tb/xcache/cache_addr
add wave -noupdate -color Firebrick -itemcolor Firebrick -label {Cache index} -radix unsigned /cache_tb/xcache/cache_index
add wave -noupdate -color Firebrick -itemcolor Firebrick -label {Cache offset} -radix unsigned /cache_tb/xcache/cache_offset
add wave -noupdate -expand -group Cache_in -label CCU(w) /cache_tb/xcache/CCU_in
add wave -noupdate -expand -group Cache_in -label LRU(w) /cache_tb/xcache/LRU_in
add wave -noupdate -expand -group Cache_in -label dirty(w) /cache_tb/xcache/dirty_in
add wave -noupdate -expand -group Cache_in -label valid(w) /cache_tb/xcache/valid_in
add wave -noupdate -expand -group Cache_in -color Firebrick -itemcolor Firebrick -label tag(w) -radix unsigned /cache_tb/xcache/tag_in
add wave -noupdate -expand -group Cache_in -label ctrl(w) /cache_tb/xcache/ctrl_in
add wave -noupdate -expand -group Cache_in -color {Medium Blue} -itemcolor {Medium Blue} -label word(w) -radix unsigned -childformat {{/cache_tb/xcache/word_in(7) -radix unsigned} {/cache_tb/xcache/word_in(6) -radix unsigned} {/cache_tb/xcache/word_in(5) -radix unsigned} {/cache_tb/xcache/word_in(4) -radix unsigned} {/cache_tb/xcache/word_in(3) -radix unsigned} {/cache_tb/xcache/word_in(2) -radix unsigned} {/cache_tb/xcache/word_in(1) -radix unsigned} {/cache_tb/xcache/word_in(0) -radix unsigned}} -subitemconfig {/cache_tb/xcache/word_in(7) {-color {Medium Blue} -height 15 -itemcolor {Medium Blue} -radix unsigned} /cache_tb/xcache/word_in(6) {-color {Medium Blue} -height 15 -itemcolor {Medium Blue} -radix unsigned} /cache_tb/xcache/word_in(5) {-color {Medium Blue} -height 15 -itemcolor {Medium Blue} -radix unsigned} /cache_tb/xcache/word_in(4) {-color {Medium Blue} -height 15 -itemcolor {Medium Blue} -radix unsigned} /cache_tb/xcache/word_in(3) {-color {Medium Blue} -height 15 -itemcolor {Medium Blue} -radix unsigned} /cache_tb/xcache/word_in(2) {-color {Medium Blue} -height 15 -itemcolor {Medium Blue} -radix unsigned} /cache_tb/xcache/word_in(1) {-color {Medium Blue} -height 15 -itemcolor {Medium Blue} -radix unsigned} /cache_tb/xcache/word_in(0) {-color {Medium Blue} -height 15 -itemcolor {Medium Blue} -radix unsigned}} /cache_tb/xcache/word_in
add wave -noupdate -expand -group Cache_out -label CCU(r) /cache_tb/xcache/CCU_out
add wave -noupdate -expand -group Cache_out -label LRU(r) /cache_tb/xcache/LRU_out
add wave -noupdate -expand -group Cache_out -label dirty(r) /cache_tb/xcache/dirty_out
add wave -noupdate -expand -group Cache_out -label valid(r) /cache_tb/xcache/valid_out
add wave -noupdate -expand -group Cache_out -color Firebrick -itemcolor Firebrick -label tag(r) -radix unsigned -childformat {{/cache_tb/xcache/tag_out(7) -radix unsigned} {/cache_tb/xcache/tag_out(6) -radix unsigned} {/cache_tb/xcache/tag_out(5) -radix unsigned} {/cache_tb/xcache/tag_out(4) -radix unsigned} {/cache_tb/xcache/tag_out(3) -radix unsigned} {/cache_tb/xcache/tag_out(2) -radix unsigned} {/cache_tb/xcache/tag_out(1) -radix unsigned} {/cache_tb/xcache/tag_out(0) -radix unsigned}} -subitemconfig {/cache_tb/xcache/tag_out(7) {-color Firebrick -height 15 -itemcolor Firebrick -radix unsigned} /cache_tb/xcache/tag_out(6) {-color Firebrick -height 15 -itemcolor Firebrick -radix unsigned} /cache_tb/xcache/tag_out(5) {-color Firebrick -height 15 -itemcolor Firebrick -radix unsigned} /cache_tb/xcache/tag_out(4) {-color Firebrick -height 15 -itemcolor Firebrick -radix unsigned} /cache_tb/xcache/tag_out(3) {-color Firebrick -height 15 -itemcolor Firebrick -radix unsigned} /cache_tb/xcache/tag_out(2) {-color Firebrick -height 15 -itemcolor Firebrick -radix unsigned} /cache_tb/xcache/tag_out(1) {-color Firebrick -height 15 -itemcolor Firebrick -radix unsigned} /cache_tb/xcache/tag_out(0) {-color Firebrick -height 15 -itemcolor Firebrick -radix unsigned}} /cache_tb/xcache/tag_out
add wave -noupdate -expand -group Cache_out -label ctrl(r) /cache_tb/xcache/ctrl_out
add wave -noupdate -expand -group Cache_out -color {Medium Blue} -itemcolor {Medium Blue} -label word(r) -radix unsigned -childformat {{/cache_tb/xcache/word_out(7) -radix unsigned} {/cache_tb/xcache/word_out(6) -radix unsigned} {/cache_tb/xcache/word_out(5) -radix unsigned} {/cache_tb/xcache/word_out(4) -radix unsigned} {/cache_tb/xcache/word_out(3) -radix unsigned} {/cache_tb/xcache/word_out(2) -radix unsigned} {/cache_tb/xcache/word_out(1) -radix hexadecimal} {/cache_tb/xcache/word_out(0) -radix hexadecimal}} -subitemconfig {/cache_tb/xcache/word_out(7) {-color {Medium Blue} -height 15 -itemcolor {Medium Blue} -radix unsigned} /cache_tb/xcache/word_out(6) {-color {Medium Blue} -height 15 -itemcolor {Medium Blue} -radix unsigned} /cache_tb/xcache/word_out(5) {-color {Medium Blue} -height 15 -itemcolor {Medium Blue} -radix unsigned} /cache_tb/xcache/word_out(4) {-color {Medium Blue} -height 15 -itemcolor {Medium Blue} -radix unsigned} /cache_tb/xcache/word_out(3) {-color {Medium Blue} -height 15 -itemcolor {Medium Blue} -radix unsigned} /cache_tb/xcache/word_out(2) {-color {Medium Blue} -height 15 -itemcolor {Medium Blue} -radix unsigned} /cache_tb/xcache/word_out(1) {-color {Medium Blue} -height 15 -itemcolor {Medium Blue} -radix hexadecimal} /cache_tb/xcache/word_out(0) {-color {Medium Blue} -height 15 -itemcolor {Medium Blue} -radix hexadecimal}} /cache_tb/xcache/word_out
add wave -noupdate -label {KO index} /cache_tb/xcache/KO_index
add wave -noupdate -label {KO index(reg)} /cache_tb/xcache/KO_index_reg
add wave -noupdate -label {Cache <- wait} /cache_tb/s_waitrequest
add wave -noupdate -label {Delayed Cache<-wait} /cache_tb/xcache/ds_waitrequest
add wave -noupdate -color Firebrick -itemcolor Firebrick -label {CPU tag} -radix unsigned /cache_tb/xcache/m_tag
add wave -noupdate -color Firebrick -itemcolor Firebrick -label {CPU index} -radix unsigned /cache_tb/xcache/m_index
add wave -noupdate -color Firebrick -itemcolor Firebrick -label {CPU offset} -radix unsigned /cache_tb/xcache/m_offset
add wave -noupdate -color Khaki -itemcolor Khaki -label {Cache current state} /cache_tb/xcache/current
add wave -noupdate -label {Cache init done} /cache_tb/xcache/init_done
add wave -noupdate -label {Cache hit} /cache_tb/xcache/hit
add wave -noupdate -label Hits /cache_tb/xcache/hits
add wave -noupdate -color Firebrick -itemcolor Firebrick -label {Hit index} -radix unsigned /cache_tb/xcache/hit_index
add wave -noupdate -color Firebrick -itemcolor Firebrick -label {Hit index(reg)} -radix unsigned /cache_tb/xcache/hit_index_reg
add wave -noupdate -label {Cache empty slot} /cache_tb/xcache/empty_slot
add wave -noupdate -label {Empty slots} /cache_tb/xcache/empty_slots
add wave -noupdate -color Firebrick -itemcolor Firebrick -label {Empty index} -radix unsigned /cache_tb/xcache/empty_index
add wave -noupdate -color Firebrick -itemcolor Firebrick -label {Empty index(reg)} -radix unsigned /cache_tb/xcache/empty_index_reg
add wave -noupdate -label {DMA request} /cache_tb/xcache/dma_req
add wave -noupdate -label {Delayed DMA request} /cache_tb/xcache/dma_req_reg
add wave -noupdate -label {LRU update} /cache_tb/xcache/LRU_update
add wave -noupdate -label {LRU update dirty(w)} /cache_tb/xcache/LRU_update_dirty_in
add wave -noupdate -label {LRU update valid(w)} /cache_tb/xcache/LRU_update_valid_in
add wave -noupdate -color {Medium Blue} -itemcolor {Medium Blue} -label {LRU update word(w)} -radix unsigned /cache_tb/xcache/LRU_update_word_in
add wave -noupdate -color Firebrick -itemcolor Firebrick -label {LRU update tag(w)} -radix unsigned /cache_tb/xcache/LRU_update_tag_in
add wave -noupdate -label {Word reset} /cache_tb/xcache/word_rst
add wave -noupdate -label {word number} -radix unsigned /cache_tb/xcache/word_number
add wave -noupdate -label {delayed word number} -radix unsigned /cache_tb/xcache/dword_number
add wave -noupdate -label {Cache init enable} /cache_tb/xcache/init_en
add wave -noupdate -label {Cache init done} /cache_tb/xcache/init_done
add wave -noupdate -color Firebrick -itemcolor Firebrick -label {init index} -radix unsigned /cache_tb/xcache/init_offset
add wave -noupdate -color Firebrick -itemcolor Firebrick -label {init offset} -radix unsigned /cache_tb/xcache/init_index
add wave -noupdate /cache_tb/xcache/s_memwrite
add wave -noupdate -divider ram
add wave -noupdate -label clk /cache_tb/xmemory/clk
add wave -noupdate -label rst /cache_tb/xmemory/rst
add wave -noupdate -color {Medium Blue} -itemcolor {Medium Blue} -label {data in} -radix unsigned /cache_tb/xmemory/s_writedata
add wave -noupdate -color Firebrick -itemcolor Firebrick -label {address in} -radix unsigned /cache_tb/xmemory/s_address
add wave -noupdate -label {write req in} /cache_tb/xmemory/s_memwrite
add wave -noupdate -label {read req in} /cache_tb/xmemory/s_memread
add wave -noupdate -color {Medium Blue} -itemcolor {Medium Blue} -label {read data out} -radix unsigned /cache_tb/xmemory/s_readdata
add wave -noupdate -label {wait out} /cache_tb/xmemory/s_waitrequest
add wave -noupdate -color Khaki -itemcolor Khaki -label {ram state} /cache_tb/xmemory/current
add wave -noupdate -color {Medium Blue} -itemcolor {Medium Blue} -radix unsigned /cache_tb/xmemory/writedata
add wave -noupdate /cache_tb/xmemory/memwrite
add wave -noupdate -color Firebrick -itemcolor Firebrick -radix unsigned /cache_tb/xmemory/address
add wave -noupdate -color Firebrick -itemcolor Firebrick -radix unsigned /cache_tb/xmemory/init_addr
add wave -noupdate /cache_tb/xmemory/init_done
add wave -noupdate /cache_tb/xmemory/mem_delay
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {529359235 ps} 0}
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
WaveRestoreZoom {518523868 ps} {530439132 ps}
