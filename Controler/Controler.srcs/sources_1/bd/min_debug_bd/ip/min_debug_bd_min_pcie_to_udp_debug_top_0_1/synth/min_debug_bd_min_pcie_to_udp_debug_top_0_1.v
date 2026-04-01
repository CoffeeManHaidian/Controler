// (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:min_pcie_to_udp_debug_top:1.0
// IP Revision: 1

(* X_CORE_INFO = "min_pcie_to_udp_debug_top,Vivado 2017.4" *)
(* CHECK_LICENSE_TYPE = "min_debug_bd_min_pcie_to_udp_debug_top_0_1,min_pcie_to_udp_debug_top,{}" *)
(* CORE_GENERATION_INFO = "min_debug_bd_min_pcie_to_udp_debug_top_0_1,min_pcie_to_udp_debug_top,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=min_pcie_to_udp_debug_top,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module min_debug_bd_min_pcie_to_udp_debug_top_0_1 (
  clk,
  rst,
  pcie_wr_en,
  pcie_wr_addr,
  pcie_wr_data,
  status_reg,
  tx_axis_tdata,
  tx_axis_tkeep,
  tx_axis_tvalid,
  tx_axis_tlast,
  tx_frame_count
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF tx_axis, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN min_debug_bd_clk" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire pcie_wr_en;
input wire [31 : 0] pcie_wr_addr;
input wire [31 : 0] pcie_wr_data;
output wire [31 : 0] status_reg;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis TDATA" *)
output wire [63 : 0] tx_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis TKEEP" *)
output wire [7 : 0] tx_axis_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis TVALID" *)
output wire tx_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN min_debug_bd_clk, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis TLAST" *)
output wire tx_axis_tlast;
output wire [31 : 0] tx_frame_count;

  min_pcie_to_udp_debug_top inst (
    .clk(clk),
    .rst(rst),
    .pcie_wr_en(pcie_wr_en),
    .pcie_wr_addr(pcie_wr_addr),
    .pcie_wr_data(pcie_wr_data),
    .status_reg(status_reg),
    .tx_axis_tdata(tx_axis_tdata),
    .tx_axis_tkeep(tx_axis_tkeep),
    .tx_axis_tvalid(tx_axis_tvalid),
    .tx_axis_tlast(tx_axis_tlast),
    .tx_frame_count(tx_frame_count)
  );
endmodule
