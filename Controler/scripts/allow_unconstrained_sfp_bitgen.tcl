# Temporary bring-up hook for PCIe/XDMA-only bitstream generation.
#
# The current board-specific SFP GTX pins are not confirmed. Vivado therefore
# reports UCO-1 on SFP_RX_P/N and SFP_TX_P/N during write_bitstream. Downgrade
# UCO-1 only for lab bring-up builds that are not meant to validate the physical
# SFP link. Replace the SFP PACKAGE_PIN constraints with the exact board pinout
# before using the bitstream for real SFP testing.

set uco_checks [get_drc_checks -quiet UCO-1]
if {[llength $uco_checks] > 0} {
    set_property SEVERITY Warning $uco_checks
    puts "WARNING: UCO-1 downgraded to Warning for temporary SFP-unconstrained bring-up bitstream."
    puts "WARNING: Do not use this as the final SFP hardware-validation build."
}
