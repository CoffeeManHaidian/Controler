set_property PACKAGE_PIN T26 [get_ports SYSCLK_I]
set_property IOSTANDARD LVCMOS25 [get_ports SYSCLK_I]
create_clock -name sys_clk_50m -period 20.000 [get_ports SYSCLK_I]

# Board-confirmed GT wiring from the FPGA-to-SFP schematic page:
# - SFP3_TX_P  -> MGTXTXP3_117 -> package ball E2
# - SFP3_TX_N  -> MGTXTXN3_117 -> package ball F1
# - SFP3_RX_P  -> MGTRXRP3_117 -> package ball F6
# - SFP3_RX_N  -> MGTRXRN3_117 -> package ball F5
# - SFP_CLK_P_1 -> MGTREFCLK1P_117 -> package ball J8
# - SFP_CLK_N_1 -> MGTREFCLK1N_117 -> package ball J7
#
# Current final top uses one SFP lane. For 7-series GT ports, use LOC with
# the package ball names from the board schematic.
set_property LOC J8 [get_ports GTREFCLK1_P]
set_property LOC J7 [get_ports GTREFCLK1_N]

set_property LOC F6 [get_ports SFP_RX_P]
set_property LOC F5 [get_ports SFP_RX_N]
set_property LOC E2 [get_ports SFP_TX_P]
set_property LOC F1 [get_ports SFP_TX_N]

# Low-speed SFP management/status signals from the schematic:
# - SFP_TXFAULT : module TX fault status input to FPGA
# - SFP_LOS     : module loss-of-signal status input to FPGA
# - SFP_TXDISABLE : FPGA output to enable/disable module transmitter
#
# Board-confirmed SFP3 low-speed IO from BANK 16:
# - sfp3_txfault   -> E24
# - sfp3_los       -> C26
# - sfp3_txdisable -> B24
set_property PACKAGE_PIN E24 [get_ports SFP_TXFAULT]
set_property PACKAGE_PIN C26 [get_ports SFP_LOS]
set_property PACKAGE_PIN B24 [get_ports SFP_TXDISABLE]
set_property IOSTANDARD LVCMOS33 [get_ports {SFP_TXFAULT SFP_LOS SFP_TXDISABLE}]
