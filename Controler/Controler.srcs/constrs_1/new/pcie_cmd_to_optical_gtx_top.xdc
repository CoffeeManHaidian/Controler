set_property PACKAGE_PIN T26 [get_ports SYSCLK_I]
set_property IOSTANDARD LVCMOS25 [get_ports SYSCLK_I]
create_clock -name sys_clk_50m -period 20.000 [get_ports SYSCLK_I]

# GTX example reference for later physical integration:
# - QUAD: QUAD_118
# - Refclk source: MGTREFCLK1_118
# - GT refclk pin example: E8 -> GTREFCLK1_I[0]
# - Alternate refclk pin example: C8 -> GTREFCLK0_I[0]
# - Example RXP lane pins seen in the reference project:
#   lane0=E4, lane1=B6, lane2=A8, lane3=D6
#
# This top is the logic-side integration top. The actual GTX differential
# pins should be constrained in the future GTX Wizard / custom PHY wrapper.
