# Generate a bitstream and a matching MCS boot image from the current
# implemented design.  This is intended for PCIe boot testing where the FPGA
# must configure from flash before the PC enumerates PCIe.
#
# Usage in Vivado Tcl Console after implementation:
#   source D:/Controler/Controler/scripts/generate_bitstream_and_mcs_allow_unconstrained_sfp.tcl
#
# The SFP pins are still allowed to remain unconstrained for bring-up.  Do not
# use this bypass as final production sign-off.

set script_dir [file dirname [file normalize [info script]]]
set repo_root [file dirname $script_dir]
set bit_out_dir [file join $repo_root "build" "bitstream"]
set mcs_out_dir [file join $repo_root "build" "mcs"]
file mkdir $bit_out_dir
file mkdir $mcs_out_dir

if {[llength [get_projects -quiet]] == 0} {
    error "No Vivado project is open. Open the project first, then source this script."
}

if {[llength [get_runs -quiet impl_1]] == 0} {
    error "Implementation run impl_1 was not found. Run implementation first."
}

open_run impl_1

foreach drc_name {UCIO-1 NSTD-1} {
    set drc_checks [get_drc_checks -quiet $drc_name]
    if {[llength $drc_checks] > 0} {
        set_property SEVERITY Warning $drc_checks
        puts "$drc_name severity is now: [get_property SEVERITY $drc_checks]"
    } else {
        puts "INFO: DRC check $drc_name was not found in this design; skipping."
    }
}

set design_name [get_property NAME [current_design]]
if {$design_name eq ""} {
    set design_name "pcie_xdma_sfp_loopback_top"
}

set bit_file [file join $bit_out_dir "${design_name}_allow_unconstrained_sfp.bit"]
set mcs_file [file join $mcs_out_dir "${design_name}_allow_unconstrained_sfp.mcs"]

puts "Writing bitstream to: $bit_file"
write_bitstream -force $bit_file

puts "Writing MCS to: $mcs_file"
write_cfgmem \
    -force \
    -format mcs \
    -interface BPIx16 \
    -size 128 \
    -loadbit "up 0x00000000 $bit_file" \
    -file $mcs_file

puts "Bitstream generation finished: $bit_file"
puts "MCS generation finished      : $mcs_file"
