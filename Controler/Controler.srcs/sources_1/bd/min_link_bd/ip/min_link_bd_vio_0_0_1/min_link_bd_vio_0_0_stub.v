// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Mar 25 14:31:04 2026
// Host        : DESKTOP-IR4AFNC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Controler/Controler/Controler.srcs/sources_1/bd/min_link_bd/ip/min_link_bd_vio_0_0_1/min_link_bd_vio_0_0_stub.v
// Design      : min_link_bd_vio_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2017.4" *)
module min_link_bd_vio_0_0(clk, probe_out0, probe_out1, probe_out2)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_out0[0:0],probe_out1[31:0],probe_out2[31:0]" */;
  input clk;
  output [0:0]probe_out0;
  output [31:0]probe_out1;
  output [31:0]probe_out2;
endmodule
