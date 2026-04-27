# Board constraints for project_1 XDMA block design.
#
# Device: xc7k325tffg900-2
# PCIe edge connector nets from schematic:
#   REFCLK+/-    -> PCIE_REFCLK_P/N
#   Lane 0..7 RX -> PCIE_RX_P/N<0> .. PCIE_RX_P/N<7>
#
# The cropped schematic shows PRSNT# pins; those are slot-presence pins, not
# PERST#. The reset package pin below follows the sibling Controler project's
# known board constraint for XDMA sys_rst/sys_rst_n.

# PCIe PERST# / XDMA sys_rst_n, active low.
set_property PACKAGE_PIN J21 [get_ports reset_rtl_0]
set_property IOSTANDARD LVCMOS25 [get_ports reset_rtl_0]

# PCIe 100 MHz reference clock. This is consumed by util_ds_buf as IBUFDSGTE.
set_property PACKAGE_PIN U8 [get_ports {diff_clock_rtl_0_clk_p[0]}]
set_property PACKAGE_PIN U7 [get_ports {diff_clock_rtl_0_clk_n[0]}]
create_clock -name pcie_refclk_100m -period 10.000 [get_ports {diff_clock_rtl_0_clk_p[0]}]

# XDMA link-up LED. user_lnk_up goes high after the PCIe link is trained.
set_property PACKAGE_PIN J28 [get_ports user_lnk_up_0]
set_property IOSTANDARD LVCMOS25 [get_ports user_lnk_up_0]

# PCIe serial receive lanes. For 7-series GTX PCIe, constraining the RXP pins
# selects the GT channel; TX pins are implied by the same channel placement.
set_property PACKAGE_PIN M6  [get_ports {pcie_7x_mgt_rtl_0_rxp[0]}]
set_property PACKAGE_PIN P6  [get_ports {pcie_7x_mgt_rtl_0_rxp[1]}]
set_property PACKAGE_PIN R4  [get_ports {pcie_7x_mgt_rtl_0_rxp[2]}]
set_property PACKAGE_PIN T6  [get_ports {pcie_7x_mgt_rtl_0_rxp[3]}]
set_property PACKAGE_PIN V6  [get_ports {pcie_7x_mgt_rtl_0_rxp[4]}]
set_property PACKAGE_PIN W4  [get_ports {pcie_7x_mgt_rtl_0_rxp[5]}]
set_property PACKAGE_PIN Y6  [get_ports {pcie_7x_mgt_rtl_0_rxp[6]}]
set_property PACKAGE_PIN AA4 [get_ports {pcie_7x_mgt_rtl_0_rxp[7]}]

# Keep bitstreams compact and compatible with the board configuration flow used
# by the sibling Controler project.
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property BITSTREAM.CONFIG.BPI_SYNC_MODE TYPE2 [current_design]
