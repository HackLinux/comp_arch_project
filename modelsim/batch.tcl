proc c  {} {
    # compile all VHDs in proper order
    echo "---------------STARTED COMPILING---------------------------"
    
    vcom ../vhdl/*.vhd
    vcom ../vhdl/testbench/*.vhd
    
    echo "---------------FINISHED COMPILING--------------------------"
}
 
proc r  {tb} {    
    # open simulation
    echo "---------------STARTED RUNNING---------------------------"
    echo $tb
    vsim work.$tb
    #add wave *
    do wave/$tb.do
    restart
    
    # add a breakpoint to the line which contains
    # the stopping point
    set path "../vhdl/testbench/"
    set ext ".vhd"
    set filename $path$tb$ext
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
r "split_cache_tb"