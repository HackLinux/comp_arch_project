onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /memory_tb/clk
add wave -noupdate /memory_tb/rst
add wave -noupdate -radix hexadecimal /memory_tb/writedata
add wave -noupdate -radix unsigned /memory_tb/address
add wave -noupdate /memory_tb/memwrite
add wave -noupdate /memory_tb/memread
add wave -noupdate -radix hexadecimal /memory_tb/readdata
add wave -noupdate /memory_tb/waitrequest
add wave -noupdate /memory_tb/dut/clk
add wave -noupdate /memory_tb/dut/rst
add wave -noupdate -radix hexadecimal /memory_tb/dut/s_writedata
add wave -noupdate -radix unsigned /memory_tb/dut/s_address
add wave -noupdate /memory_tb/dut/s_memwrite
add wave -noupdate /memory_tb/dut/s_memread
add wave -noupdate -radix hexadecimal /memory_tb/dut/s_readdata
add wave -noupdate /memory_tb/dut/s_waitrequest
add wave -noupdate /memory_tb/dut/current
add wave -noupdate -radix hexadecimal /memory_tb/dut/writedata
add wave -noupdate -radix unsigned /memory_tb/dut/memwrite
add wave -noupdate -radix unsigned /memory_tb/dut/address
add wave -noupdate -radix unsigned /memory_tb/dut/init_addr
add wave -noupdate -radix unsigned /memory_tb/dut/init_addr_int
add wave -noupdate /memory_tb/dut/init_done
add wave -noupdate /memory_tb/dut/mem_delay
add wave -noupdate /memory_tb/dut/init_rst
add wave -noupdate /memory_tb/dut/delay_rst
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4226 ps} 0}
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
WaveRestoreZoom {0 ps} {462304 ps}
