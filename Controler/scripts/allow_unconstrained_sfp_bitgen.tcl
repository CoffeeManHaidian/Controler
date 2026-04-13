# Temporary bring-up hook for PCIe/XDMA-only bitstream generation.
#
# The current board-specific SFP GTX pins are not confirmed. Vivado therefore
# reports UCIO-1 on SFP_RX_P/N and SFP_TX_P/N during write_bitstream. Downgrade
# this only for lab bring-up builds that are not meant to validate the physical
# SFP link. Replace the SFP PACKAGE_PIN constraints with the exact board pinout
# before using the bitstream for real SFP testing.

foreach drc_name {UCIO-1 NSTD-1} {
    set drc_checks [get_drc_checks -quiet $drc_name]
    if {[llength $drc_checks] > 0} {
        set_property SEVERITY Warning $drc_checks
        puts "WARNING: $drc_name downgraded to Warning for temporary SFP-unconstrained bring-up bitstream."
    }
}
puts "WARNING: Do not use this as the final SFP hardware-validation build."
