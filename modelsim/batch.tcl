proc c  {} {
    # compile all VHDs in proper order
    echo "---------------STARTED COMPILING---------------------------"
    vcom ../vhdl/params.vhd
    vcom ../vhdl/ram.vhd
    vcom ../vhdl/memory.vhd
    vcom ../vhdl/testbench/memory_tb.vhd 
    
    vcom ../vhdl/cache_set.vhd 
    vcom ../vhdl/testbench/cache_set_tb.vhd
    
    vcom ../vhdl/cache_final.vhd
    vcom ../vhdl/testbench/cache_tb.vhd 
    
    vcom ../vhdl/L1_cache.vhd
    vcom ../vhdl/L2_cache.vhd
    # vcom ../vhdl/testbench/L1_cache_tb.vhd
    # vcom ../vhdl/testbench/L2_cache_tb.vhd   
    
    vcom ../vhdl/mux.vhd
    vcom ../vhdl/LSO_index.vhd
    vcom ../vhdl/testbench/LSO_index_tb.vhd
    
    echo "---------------FINISHED COMPILING--------------------------"
}
 
proc r  {tb} {    
    # open simulation
    echo "---------------STARTED RUNNING---------------------------"
    echo $tb
    vsim work.$tb
    add wave *
    #do wave/$tb.do
    restart
    
    # add a breakpoint to the line which contains
    # the stopping point
    set path "../vhdl/testbench/"
    set ext ".vhd"
    set filename $path$tb$ext
    echo ""
    echo ""
    echo ""
    echo ""
    echo $filename
    echo ""
    echo ""
    echo ""
    echo ""
    set fp [open $filename r]
    set filecontent [read $fp]
    set input_list [split $filecontent "\n"]
    set stopping_point "stopping_point"
    set line [lsearch -regexp $input_list $stopping_point]
    set line [expr $line + 1]
    bp $filename $line
    
    # start the simulation
    # (run until breakpoint)
    run -all
    echo "---------------FINISHED RUNNING--------------------------"
}
proc q  {} {
 quit -sim
}
 
proc Q  {} {
 quit -force
}

#comment?
c
r "LSO_index_tb"