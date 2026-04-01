// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Mar 26 14:47:12 2026
// Host        : DESKTOP-IR4AFNC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Controler/Controler/Controler.srcs/sources_1/bd/min_debug_bd/ip/min_debug_bd_min_pcie_to_udp_debug_top_0_1/min_debug_bd_min_pcie_to_udp_debug_top_0_1_stub.v
// Design      : min_debug_bd_min_pcie_to_udp_debug_top_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "min_pcie_to_udp_debug_top,Vivado 2017.4" *)
module min_debug_bd_min_pcie_to_udp_debug_top_0_1(clk, rst, pcie_wr_en, pcie_wr_addr, pcie_wr_data, 
  status_reg, tx_axis_tdata, tx_axis_tkeep, tx_axis_tvalid, tx_axis_tlast, tx_frame_count)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,pcie_wr_en,pcie_wr_addr[31:0],pcie_wr_data[31:0],status_reg[31:0],tx_axis_tdata[63:0],tx_axis_tkeep[7:0],tx_axis_tvalid,tx_axis_tlast,tx_frame_count[31:0]" */;
  input clk;
  input rst;
  input pcie_wr_en;
  input [31:0]pcie_wr_addr;
  input [31:0]pcie_wr_data;
  output [31:0]status_reg;
  output [63:0]tx_axis_tdata;
  output [7:0]tx_axis_tkeep;
  output tx_axis_tvalid;
  output tx_axis_tlast;
  output [31:0]tx_frame_count;
endmodule
