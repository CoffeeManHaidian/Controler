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


// IP VLNV: xilinx.com:module_ref:min_optical_loopback_debug_top:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module loopback_debug_bd_min_optical_loopback_debug_top_0_0 (
  clk,
  rst,
  pcie_wr_en,
  pcie_wr_addr,
  pcie_wr_data,
  status_reg,
  tx_frame_count,
  gtx_tx_word_count,
  rx_frame_count,
  crc_error_count,
  format_error_count,
  match_count,
  last_rx_seq,
  last_rx_addr,
  last_rx_data,
  optical_status,
  optical_tx_data,
  optical_tx_keep,
  optical_tx_valid,
  optical_tx_last,
  gtx_tx_data,
  gtx_tx_valid,
  gtx_tx_last,
  gtx_tx_word_index
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN loopback_debug_bd_clk" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire pcie_wr_en;
input wire [31 : 0] pcie_wr_addr;
input wire [31 : 0] pcie_wr_data;
output wire [31 : 0] status_reg;
output wire [31 : 0] tx_frame_count;
output wire [31 : 0] gtx_tx_word_count;
output wire [31 : 0] rx_frame_count;
output wire [31 : 0] crc_error_count;
output wire [31 : 0] format_error_count;
output wire [31 : 0] match_count;
output wire [31 : 0] last_rx_seq;
output wire [31 : 0] last_rx_addr;
output wire [31 : 0] last_rx_data;
output wire [31 : 0] optical_status;
output wire [63 : 0] optical_tx_data;
output wire [7 : 0] optical_tx_keep;
output wire optical_tx_valid;
output wire optical_tx_last;
output wire [31 : 0] gtx_tx_data;
output wire gtx_tx_valid;
output wire gtx_tx_last;
output wire [1 : 0] gtx_tx_word_index;

  min_optical_loopback_debug_top inst (
    .clk(clk),
    .rst(rst),
    .pcie_wr_en(pcie_wr_en),
    .pcie_wr_addr(pcie_wr_addr),
    .pcie_wr_data(pcie_wr_data),
    .status_reg(status_reg),
    .tx_frame_count(tx_frame_count),
    .gtx_tx_word_count(gtx_tx_word_count),
    .rx_frame_count(rx_frame_count),
    .crc_error_count(crc_error_count),
    .format_error_count(format_error_count),
    .match_count(match_count),
    .last_rx_seq(last_rx_seq),
    .last_rx_addr(last_rx_addr),
    .last_rx_data(last_rx_data),
    .optical_status(optical_status),
    .optical_tx_data(optical_tx_data),
    .optical_tx_keep(optical_tx_keep),
    .optical_tx_valid(optical_tx_valid),
    .optical_tx_last(optical_tx_last),
    .gtx_tx_data(gtx_tx_data),
    .gtx_tx_valid(gtx_tx_valid),
    .gtx_tx_last(gtx_tx_last),
    .gtx_tx_word_index(gtx_tx_word_index)
  );
endmodule
