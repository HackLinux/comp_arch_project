proc c  {} {
    echo "---------------STARTED COMPILING---------------------------"
    vcom ../vhdl/cache_final.vhd
    vcom ../vhdl/cache_set.vhd 
    vcom ../vhdl/L1_cache.vhd
    vcom ../vhdl/L2_cache.vhd
    vcom ../vhdl/memory.vhd
    vcom ../vhdl/params.vhd
    vcom ../vhdl/ram.vhd
    vcom ../vhdl/testbench/cache_set_tb.vhd
    vcom ../vhdl/testbench/cache_tb.vhd
    vcom ../vhdl/testbench/memory_tb.vhd              
    echo "---------------FINISHED COMPILING--------------------------"
}
 
proc r  {} {    
    echo "---------------STARTED RUNNING---------------------------"
    vsim work.memory_tb
    add wave *
    restart
    set fp [open "../vhdl/testbench/memory_tb.vhd" r]
    set filecontent [read $fp]
    set input_list [split $filecontent "\n"]
    lsearch input_list 
    bp ../vhdl/testbench/memory_tb.vhd 51
    run -all
    echo "---------------FINISHED RUNNING--------------------------"
}
proc q  {} {
 quit -sim
}
 
proc Q  {} {
 quit -force
}
 
set fp [open "../vhdl/testbench/memory_tb.vhd" r]
set filecontent [read $fp]
set input_list [split $filecontent "\n"]
set stopping_point "rst <=*"
set line [lsearch -regexp $input_list $stopping_point]
set line [expr $line + 1]
echo $line
