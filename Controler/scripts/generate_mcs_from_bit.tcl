# Convert an existing bitstream to the board boot image used by the 226 K7 PCIe
# card.  The reference PCIe XDMA example for this board generated:
#   File Format : MCS
#   Interface   : BPIX16
#   Size        : 128M
#
# Usage in Vivado Tcl Console:
#   source D:/Controler/Controler/scripts/generate_mcs_from_bit.tcl
#
# Optional overrides before sourcing:
#   set bit_file D:/path/to/design.bit
#   set mcs_file D:/path/to/design.mcs

set script_dir [file dirname [file normalize [info script]]]
set repo_root [file dirname $script_dir]
set out_dir [file join $repo_root "build" "mcs"]
file mkdir $out_dir

if {![info exists bit_file]} {
    set candidates [list]

    foreach pattern [list \
        [file join $repo_root "build" "bitstream" "*.bit"] \
        [file join $repo_root "Controler.runs" "impl_1" "*.bit"] \
        [file join $repo_root "build" "vivado" "Controler" "Controler.runs" "impl_1" "*.bit"] \
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

if {![info exists mcs_file]} {
    set bit_base [file rootname [file tail $bit_file]]
    set mcs_file [file join $out_dir "${bit_base}.mcs"]
}

puts "Input bitstream : $bit_file"
puts "Output MCS      : $mcs_file"
puts "Cfgmem interface: BPIx16"
puts "Cfgmem size     : 128M"

write_cfgmem \
    -force \
    -format mcs \
    -interface BPIx16 \
    -size 128 \
    -loadbit "up 0x00000000 $bit_file" \
    -file $mcs_file

puts "MCS generation finished: $mcs_file"
