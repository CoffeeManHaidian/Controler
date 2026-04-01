//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Thu Mar 26 14:49:33 2026
//Host        : DESKTOP-IR4AFNC running 64-bit major release  (build 9200)
//Command     : generate_target min_debug_bd.bd
//Design      : min_debug_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "min_debug_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=min_debug_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "min_debug_bd.hwdef" *) 
module min_debug_bd
   (clk);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN min_debug_bd_clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;

  wire clk_1;
  wire [31:0]min_pcie_to_udp_debug_top_0_status_reg;
  wire [63:0]min_pcie_to_udp_debug_top_0_tx_axis_tdata;
  wire [7:0]min_pcie_to_udp_debug_top_0_tx_axis_tkeep;
  wire min_pcie_to_udp_debug_top_0_tx_axis_tlast;
  wire min_pcie_to_udp_debug_top_0_tx_axis_tvalid;
  wire [31:0]min_pcie_to_udp_debug_top_0_tx_frame_count;
  wire [0:0]vio_0_probe_out0;
  wire [31:0]vio_0_probe_out1;
  wire [31:0]vio_0_probe_out2;
  wire [0:0]xlconstant_0_dout;

  assign clk_1 = clk;
  min_debug_bd_ila_0_0 ila_0
       (.clk(clk_1),
        .probe0(vio_0_probe_out0),
        .probe1(vio_0_probe_out1),
        .probe2(vio_0_probe_out2),
        .probe3(min_pcie_to_udp_debug_top_0_tx_axis_tdata),
        .probe4(min_pcie_to_udp_debug_top_0_tx_axis_tkeep),
        .probe5(min_pcie_to_udp_debug_top_0_tx_axis_tlast),
        .probe6(min_pcie_to_udp_debug_top_0_tx_axis_tvalid),
        .probe7(min_pcie_to_udp_debug_top_0_status_reg),
        .probe8(min_pcie_to_udp_debug_top_0_tx_frame_count));
  min_debug_bd_min_pcie_to_udp_debug_top_0_1 min_pcie_to_udp_debug_top_0
       (.clk(clk_1),
        .pcie_wr_addr(vio_0_probe_out1),
        .pcie_wr_data(vio_0_probe_out2),
        .pcie_wr_en(vio_0_probe_out0),
        .rst(xlconstant_0_dout),
        .status_reg(min_pcie_to_udp_debug_top_0_status_reg),
        .tx_axis_tdata(min_pcie_to_udp_debug_top_0_tx_axis_tdata),
        .tx_axis_tkeep(min_pcie_to_udp_debug_top_0_tx_axis_tkeep),
        .tx_axis_tlast(min_pcie_to_udp_debug_top_0_tx_axis_tlast),
        .tx_axis_tvalid(min_pcie_to_udp_debug_top_0_tx_axis_tvalid),
        .tx_frame_count(min_pcie_to_udp_debug_top_0_tx_frame_count));
  min_debug_bd_vio_0_0 vio_0
       (.clk(clk_1),
        .probe_out0(vio_0_probe_out0),
        .probe_out1(vio_0_probe_out1),
        .probe_out2(vio_0_probe_out2));
  min_debug_bd_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
