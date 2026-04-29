#
# Program the remote board with the integrated PCIe XDMA + SFP top bitstream.
#
# Usage:
#   vivado -mode batch -source C:/Users/PS/Desktop/Controler/xdma/scripts/program_remote_pcie_xdma_sfp_frame_tx_top.tcl

set bit_file "C:/Users/PS/Desktop/Controler/xdma/bit_mcs/pcie_xdma_sfp_frame_tx_top.bit"

if {![file exists $bit_file]} {
    error "Bit file is missing: $bit_file"
}

open_hw
connect_hw_server
open_hw_target

set devs [get_hw_devices]
if {[llength $devs] == 0} {
    error "No hardware device found"
}

set dev [lindex $devs 0]
current_hw_device $dev
refresh_hw_device $dev

set_property PROGRAM.FILE $bit_file $dev
program_hw_devices $dev
refresh_hw_device $dev

puts "PROGRAM.FILE: [get_property PROGRAM.FILE $dev]"
puts "PART: [get_property PART $dev]"

close_hw_target
disconnect_hw_server
