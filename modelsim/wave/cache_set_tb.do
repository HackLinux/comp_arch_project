onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk /cache_set_tb/clk
add wave -noupdate -group {Port 0} -label {addr 0} -radix unsigned /cache_set_tb/addr_0
add wave -noupdate -group {Port 0} -group ctrl -label {ctrl write enable 0} /cache_set_tb/ctrl_write_0
add wave -noupdate -group {Port 0} -group ctrl -label {ctrl data in 0} -radix unsigned /cache_set_tb/ctrl_in_0
add wave -noupdate -group {Port 0} -group ctrl -label {ctrl data out 0} -radix unsigned /cache_set_tb/ctrl_out_0
add wave -noupdate -group {Port 0} -group word -label {word write enable 0} /cache_set_tb/word_write_0
add wave -noupdate -group {Port 0} -group word -label {word data in 0} -radix unsigned /cache_set_tb/word_in_0
add wave -noupdate -group {Port 0} -group word -label {word data out 0} -radix unsigned /cache_set_tb/word_out_0
add wave -noupdate -group {Port 1} -label {addr 1} -radix unsigned /cache_set_tb/addr_1
add wave -noupdate -group {Port 1} -group ctrl -label {ctrl write enable 1} /cache_set_tb/ctrl_write_1
add wave -noupdate -group {Port 1} -group ctrl -label {ctrl data in 1} -radix unsigned /cache_set_tb/ctrl_in_1
add wave -noupdate -group {Port 1} -group ctrl -label {ctrl data out 1} /cache_set_tb/ctrl_out_1
add wave -noupdate -group {Port 1} -group word -label {word write enable 1} /cache_set_tb/word_write_1
add wave -noupdate -group {Port 1} -group word -label {word data in 1} -radix unsigned /cache_set_tb/word_in_1
add wave -noupdate -group {Port 1} -group word -label {word data out 1} -radix unsigned /cache_set_tb/word_out_1
add wave -noupdate -group {cache_set internals} -label clk /cache_set_tb/xcache_set/clk
add wave -noupdate -group {cache_set internals} -radix unsigned /cache_set_tb/xcache_set/addr_0
add wave -noupdate -group {cache_set internals} /cache_set_tb/xcache_set/word_write_0
add wave -noupdate -group {cache_set internals} /cache_set_tb/xcache_set/ctrl_write_0
add wave -noupdate -group {cache_set internals} -radix unsigned /cache_set_tb/xcache_set/ctrl_in_0
add wave -noupdate -group {cache_set internals} -radix unsigned /cache_set_tb/xcache_set/word_in_0
add wave -noupdate -group {cache_set internals} /cache_set_tb/xcache_set/ctrl_out_0
add wave -noupdate -group {cache_set internals} -radix unsigned /cache_set_tb/xcache_set/word_out_0
add wave -noupdate -group {cache_set internals} -radix unsigned /cache_set_tb/xcache_set/addr_1
add wave -noupdate -group {cache_set internals} /cache_set_tb/xcache_set/word_write_1
add wave -noupdate -group {cache_set internals} /cache_set_tb/xcache_set/ctrl_write_1
add wave -noupdate -group {cache_set internals} -radix unsigned /cache_set_tb/xcache_set/ctrl_in_1
add wave -noupdate -group {cache_set internals} -radix unsigned /cache_set_tb/xcache_set/word_in_1
add wave -noupdate -group {cache_set internals} /cache_set_tb/xcache_set/ctrl_out_1
add wave -noupdate -group {cache_set internals} -radix unsigned /cache_set_tb/xcache_set/word_out_1
add wave -noupdate -group {cache_set internals} /cache_set_tb/xcache_set/index_0
add wave -noupdate -group {cache_set internals} /cache_set_tb/xcache_set/offset_0
add wave -noupdate -group {cache_set internals} /cache_set_tb/xcache_set/index_reg_0
add wave -noupdate -group {cache_set internals} /cache_set_tb/xcache_set/offset_reg_0
add wave -noupdate -group {cache_set internals} /cache_set_tb/xcache_set/index_1
add wave -noupdate -group {cache_set internals} /cache_set_tb/xcache_set/offset_1
add wave -noupdate -group {cache_set internals} /cache_set_tb/xcache_set/index_reg_1
add wave -noupdate -group {cache_set internals} /cache_set_tb/xcache_set/offset_reg_1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {225 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 230
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
WaveRestoreZoom {0 ps} {14801 ps}
