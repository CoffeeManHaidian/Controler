set_property PACKAGE_PIN T26 [get_ports clk]
set_property IOSTANDARD LVCMOS25 [get_ports clk]
create_clock -name sys_clk_50m -period 20.000 [get_ports clk]
