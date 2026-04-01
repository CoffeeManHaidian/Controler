// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Apr  1 10:04:52 2026
// Host        : DESKTOP-IR4AFNC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ loopback_debug_bd_min_optical_loopback_debug_top_0_0_stub.v
// Design      : loopback_debug_bd_min_optical_loopback_debug_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "min_optical_loopback_debug_top,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, pcie_wr_en, pcie_wr_addr, pcie_wr_data, 
  status_reg, tx_frame_count, gtx_tx_word_count, rx_frame_count, crc_error_count, 
  format_error_count, match_count, last_rx_seq, last_rx_addr, last_rx_data, optical_status, 
  optical_tx_data, optical_tx_keep, optical_tx_valid, optical_tx_last, gtx_tx_data, 
  gtx_tx_valid, gtx_tx_last, gtx_tx_word_index)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,pcie_wr_en,pcie_wr_addr[31:0],pcie_wr_data[31:0],status_reg[31:0],tx_frame_count[31:0],gtx_tx_word_count[31:0],rx_frame_count[31:0],crc_error_count[31:0],format_error_count[31:0],match_count[31:0],last_rx_seq[31:0],last_rx_addr[31:0],last_rx_data[31:0],optical_status[31:0],optical_tx_data[63:0],optical_tx_keep[7:0],optical_tx_valid,optical_tx_last,gtx_tx_data[31:0],gtx_tx_valid,gtx_tx_last,gtx_tx_word_index[1:0]" */;
  input clk;
  input rst;
  input pcie_wr_en;
  input [31:0]pcie_wr_addr;
  input [31:0]pcie_wr_data;
  output [31:0]status_reg;
  output [31:0]tx_frame_count;
  output [31:0]gtx_tx_word_count;
  output [31:0]rx_frame_count;
  output [31:0]crc_error_count;
  output [31:0]format_error_count;
  output [31:0]match_count;
  output [31:0]last_rx_seq;
  output [31:0]last_rx_addr;
  output [31:0]last_rx_data;
  output [31:0]optical_status;
  output [63:0]optical_tx_data;
  output [7:0]optical_tx_keep;
  output optical_tx_valid;
  output optical_tx_last;
  output [31:0]gtx_tx_data;
  output gtx_tx_valid;
  output gtx_tx_last;
  output [1:0]gtx_tx_word_index;
endmodule
