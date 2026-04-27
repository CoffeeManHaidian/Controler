# Convert the current XDMA bitstream to the board boot image.
#
# Board/project defaults:
#   Input bit : project_1/project_1.runs/impl_1/xdma_wrapper.bit
#   Interface : BPIx16
#   Size      : 128M
#   Output    : build/mcs/xdma_wrapper.mcs
#
# Usage from Windows command line:
#   C:/Xilinx/Vivado/2017.4/bin/vivado.bat -mode batch -source D:/Controler/xdma/scripts/generate_mcs_from_bit.tcl
#
# Usage from Vivado Tcl Console:
#   source D:/Controler/xdma/scripts/generate_mcs_from_bit.tcl
#
# Optional overrides before sourcing:
#   set bit_file D:/path/to/design.bit
#   set mcs_file D:/path/to/design.mcs
#   set cfgmem_interface BPIx16
#   set cfgmem_size_mb 128

set script_dir [file dirname [file normalize [info script]]]
set repo_root [file dirname $script_dir]
set out_dir [file join $repo_root "build" "mcs"]
file mkdir $out_dir

if {![info exists bit_file]} {
    set candidates [list]

    foreach pattern [list \
        [file join $repo_root "project_1" "project_1.runs" "impl_1" "*.bit"] \
        [file join $repo_root "build" "bitstream" "*.bit"] \
    ] {
        foreach f [glob -nocomplain $pattern] {
            lappend candidates [file normalize $f]
        }
    }

    if {[llength $candidates] == 0} {
        error "No .bit file was found. Run implementation/write_bitstream first, or set bit_file before sourcing this script."
    }

    set bit_file [lindex [lsort -decreasing -command {apply {{a b} {
        expr {[file mtime $a] - [file mtime $b]}
    }}} $candidates] 0]
}

if {![file exists $bit_file]} {
    error "bit_file does not exist: $bit_file"
}

if {![info exists cfgmem_interface]} {
    set cfgmem_interface BPIx16
}

if {![info exists cfgmem_size_mb]} {
    set cfgmem_size_mb 128
}

if {![info exists mcs_file]} {
    set bit_base [file rootname [file tail $bit_file]]
    set mcs_file [file join $out_dir "${bit_base}.mcs"]
}

puts "Input bitstream : $bit_file"
puts "Output MCS      : $mcs_file"
puts "Cfgmem interface: $cfgmem_interface"
puts "Cfgmem size     : ${cfgmem_size_mb}M"

write_cfgmem \
    -force \
    -format mcs \
    -interface $cfgmem_interface \
    -size $cfgmem_size_mb \
    -loadbit "up 0x00000000 $bit_file" \
    -file $mcs_file

puts "MCS generation finished: $mcs_file"
