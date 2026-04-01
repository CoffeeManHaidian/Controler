//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Wed Apr  1 10:04:24 2026
//Host        : DESKTOP-IR4AFNC running 64-bit major release  (build 9200)
//Command     : generate_target loopback_debug_bd_wrapper.bd
//Design      : loopback_debug_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module loopback_debug_bd_wrapper
   (clk);
  input clk;

  wire clk;

  loopback_debug_bd loopback_debug_bd_i
       (.clk(clk));
endmodule
