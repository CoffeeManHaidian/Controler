# Constraints for the standalone hardware bring-up top:
#   pcie_cmd_to_optical_hw_bringup_top
#
# Keep this file free of any create_debug_core/connect_debug_port commands.

if {[llength [get_ports -quiet SYSCLK_I]]} {
    set_property PACKAGE_PIN T26 [get_ports SYSCLK_I]
    set_property IOSTANDARD LVCMOS25 [get_ports SYSCLK_I]
    create_clock -period 20.000 -name sys_clk_50m [get_ports SYSCLK_I]
}

if {[llength [get_ports -quiet GTREFCLK1_N]]} {
    set_property PACKAGE_PIN J7 [get_ports GTREFCLK1_N]
}

if {[llength [get_ports -quiet GTREFCLK1_P]]} {
    set_property PACKAGE_PIN J8 [get_ports GTREFCLK1_P]
}

if {[llength [get_ports -quiet SFP_TX_P]]} {
    set_property PACKAGE_PIN E2 [get_ports SFP_TX_P]
}

if {[llength [get_ports -quiet SFP_TX_N]]} {
    set_property PACKAGE_PIN F1 [get_ports SFP_TX_N]
}

if {[llength [get_ports -quiet SFP_RX_P]]} {
    set_property PACKAGE_PIN F6 [get_ports SFP_RX_P]
}

if {[llength [get_ports -quiet SFP_RX_N]]} {
    set_property PACKAGE_PIN F5 [get_ports SFP_RX_N]
}

if {[llength [get_ports -quiet SFP_TXFAULT]]} {
    set_property PACKAGE_PIN E24 [get_ports SFP_TXFAULT]
    set_property IOSTANDARD LVCMOS33 [get_ports SFP_TXFAULT]
}

if {[llength [get_ports -quiet SFP_LOS]]} {
    set_property PACKAGE_PIN C26 [get_ports SFP_LOS]
    set_property IOSTANDARD LVCMOS33 [get_ports SFP_LOS]
}

if {[llength [get_ports -quiet SFP_TXDISABLE]]} {
    set_property PACKAGE_PIN B24 [get_ports SFP_TXDISABLE]
    set_property IOSTANDARD LVCMOS33 [get_ports SFP_TXDISABLE]
}
