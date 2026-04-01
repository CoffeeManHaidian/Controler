//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Wed Apr  1 10:04:24 2026
//Host        : DESKTOP-IR4AFNC running 64-bit major release  (build 9200)
//Command     : generate_target loopback_debug_bd.bd
//Design      : loopback_debug_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "loopback_debug_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=loopback_debug_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "loopback_debug_bd.hwdef" *) 
module loopback_debug_bd
   (clk);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN loopback_debug_bd_clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;

  wire clk_1;
  wire [31:0]min_optical_loopback_debug_top_0_crc_error_count;
  wire [31:0]min_optical_loopback_debug_top_0_format_error_count;
  wire [31:0]min_optical_loopback_debug_top_0_gtx_tx_data;
  wire min_optical_loopback_debug_top_0_gtx_tx_valid;
  wire [31:0]min_optical_loopback_debug_top_0_gtx_tx_word_count;
  wire [31:0]min_optical_loopback_debug_top_0_last_rx_seq;
  wire [31:0]min_optical_loopback_debug_top_0_match_count;
  wire [63:0]min_optical_loopback_debug_top_0_optical_tx_data;
  wire min_optical_loopback_debug_top_0_optical_tx_valid;
  wire [31:0]min_optical_loopback_debug_top_0_rx_frame_count;
  wire [31:0]min_optical_loopback_debug_top_0_status_reg;
  wire [31:0]min_optical_loopback_debug_top_0_tx_frame_count;
  wire [0:0]vio_0_probe_out0;
  wire [31:0]vio_0_probe_out1;
  wire [31:0]vio_0_probe_out2;
  wire [0:0]xlconstant_0_dout;

  assign clk_1 = clk;
  loopback_debug_bd_ila_0_0 ila_0
       (.clk(clk_1),
        .probe0(vio_0_probe_out0),
        .probe1(vio_0_probe_out1),
        .probe10(min_optical_loopback_debug_top_0_last_rx_seq),
        .probe11(min_optical_loopback_debug_top_0_gtx_tx_valid),
        .probe12(min_optical_loopback_debug_top_0_gtx_tx_data),
        .probe13({min_optical_loopback_debug_top_0_optical_tx_valid,min_optical_loopback_debug_top_0_optical_tx_valid}),
        .probe14(min_optical_loopback_debug_top_0_optical_tx_data[31:0]),
        .probe15({1'b1,1'b1,1'b1,1'b1}),
        .probe16(1'b0),
        .probe17({1'b0,1'b0,1'b0}),
        .probe18({1'b0,1'b0,1'b0}),
        .probe19(1'b0),
        .probe2(vio_0_probe_out2[1:0]),
        .probe20(1'b0),
        .probe21({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe22(1'b0),
        .probe23({1'b0,1'b1,1'b0}),
        .probe24({1'b0,1'b1}),
        .probe25(1'b0),
        .probe26(1'b0),
        .probe27({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe28({1'b0,1'b1,1'b0}),
        .probe29({1'b0,1'b1}),
        .probe3(min_optical_loopback_debug_top_0_status_reg),
        .probe30(1'b0),
        .probe31({1'b0,1'b0,1'b1,1'b1}),
        .probe32({1'b0,1'b0,1'b1,1'b1}),
        .probe33({1'b0,1'b0,1'b0,1'b0}),
        .probe34({1'b0,1'b0,1'b0,1'b0}),
        .probe35(1'b0),
        .probe36({1'b0,1'b0,1'b0,1'b0}),
        .probe37({1'b0,1'b0,1'b0,1'b0}),
        .probe38(1'b0),
        .probe39(1'b0),
        .probe4(min_optical_loopback_debug_top_0_tx_frame_count),
        .probe40(1'b0),
        .probe41(1'b0),
        .probe42(1'b0),
        .probe43(1'b0),
        .probe5(min_optical_loopback_debug_top_0_gtx_tx_word_count),
        .probe6(min_optical_loopback_debug_top_0_rx_frame_count),
        .probe7(min_optical_loopback_debug_top_0_crc_error_count[0]),
        .probe8(min_optical_loopback_debug_top_0_format_error_count[0]),
        .probe9(min_optical_loopback_debug_top_0_match_count));
  loopback_debug_bd_min_optical_loopback_debug_top_0_0 min_optical_loopback_debug_top_0
       (.clk(clk_1),
        .crc_error_count(min_optical_loopback_debug_top_0_crc_error_count),
        .format_error_count(min_optical_loopback_debug_top_0_format_error_count),
        .gtx_tx_data(min_optical_loopback_debug_top_0_gtx_tx_data),
        .gtx_tx_valid(min_optical_loopback_debug_top_0_gtx_tx_valid),
        .gtx_tx_word_count(min_optical_loopback_debug_top_0_gtx_tx_word_count),
        .last_rx_seq(min_optical_loopback_debug_top_0_last_rx_seq),
        .match_count(min_optical_loopback_debug_top_0_match_count),
        .optical_tx_data(min_optical_loopback_debug_top_0_optical_tx_data),
        .optical_tx_valid(min_optical_loopback_debug_top_0_optical_tx_valid),
        .pcie_wr_addr(vio_0_probe_out1),
        .pcie_wr_data(vio_0_probe_out2),
        .pcie_wr_en(vio_0_probe_out0),
        .rst(xlconstant_0_dout),
        .rx_frame_count(min_optical_loopback_debug_top_0_rx_frame_count),
        .status_reg(min_optical_loopback_debug_top_0_status_reg),
        .tx_frame_count(min_optical_loopback_debug_top_0_tx_frame_count));
  loopback_debug_bd_vio_0_0 vio_0
       (.clk(clk_1),
        .probe_out0(vio_0_probe_out0),
        .probe_out1(vio_0_probe_out1),
        .probe_out2(vio_0_probe_out2));
  loopback_debug_bd_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
