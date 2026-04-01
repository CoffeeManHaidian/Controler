//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Wed Mar 25 16:19:25 2026
//Host        : DESKTOP-IR4AFNC running 64-bit major release  (build 9200)
//Command     : generate_target min_link_bd.bd
//Design      : min_link_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "min_link_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=min_link_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "min_link_bd.hwdef" *) 
module min_link_bd
   (clk,
    rst,
    status_reg,
    tx_axis_tdata,
    tx_axis_tkeep,
    tx_axis_tlast,
    tx_axis_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN min_link_bd_clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, POLARITY ACTIVE_LOW" *) input rst;
  output [31:0]status_reg;
  output [63:0]tx_axis_tdata;
  output [7:0]tx_axis_tkeep;
  output tx_axis_tlast;
  output tx_axis_tvalid;

  wire clk_1;
  wire [31:0]min_pcie_to_udp_top_0_status_reg;
  wire [63:0]min_pcie_to_udp_top_0_tx_axis_tdata;
  wire [7:0]min_pcie_to_udp_top_0_tx_axis_tkeep;
  wire min_pcie_to_udp_top_0_tx_axis_tlast;
  wire min_pcie_to_udp_top_0_tx_axis_tvalid;
  wire rst_1;
  wire [0:0]vio_0_probe_out0;
  wire [31:0]vio_0_probe_out1;
  wire [31:0]vio_0_probe_out2;
  wire [0:0]xlconstant_0_dout;

  assign clk_1 = clk;
  assign rst_1 = rst;
  assign status_reg[31:0] = min_pcie_to_udp_top_0_status_reg;
  assign tx_axis_tdata[63:0] = min_pcie_to_udp_top_0_tx_axis_tdata;
  assign tx_axis_tkeep[7:0] = min_pcie_to_udp_top_0_tx_axis_tkeep;
  assign tx_axis_tlast = min_pcie_to_udp_top_0_tx_axis_tlast;
  assign tx_axis_tvalid = min_pcie_to_udp_top_0_tx_axis_tvalid;
  min_link_bd_ila_0_0 ila_0
       (.clk(clk_1),
        .probe0(vio_0_probe_out0),
        .probe1(vio_0_probe_out1),
        .probe2(vio_0_probe_out2),
        .probe3(min_pcie_to_udp_top_0_status_reg),
        .probe4(min_pcie_to_udp_top_0_tx_axis_tvalid),
        .probe5(min_pcie_to_udp_top_0_tx_axis_tlast),
        .probe6(min_pcie_to_udp_top_0_tx_axis_tkeep),
        .probe7(min_pcie_to_udp_top_0_tx_axis_tdata));
  min_link_bd_min_pcie_to_udp_top_0_0 min_pcie_to_udp_top_0
       (.clk(clk_1),
        .pcie_wr_addr(vio_0_probe_out1),
        .pcie_wr_data(vio_0_probe_out2),
        .pcie_wr_en(vio_0_probe_out0),
        .rst(rst_1),
        .status_reg(min_pcie_to_udp_top_0_status_reg),
        .tx_axis_tdata(min_pcie_to_udp_top_0_tx_axis_tdata),
        .tx_axis_tkeep(min_pcie_to_udp_top_0_tx_axis_tkeep),
        .tx_axis_tlast(min_pcie_to_udp_top_0_tx_axis_tlast),
        .tx_axis_tready(xlconstant_0_dout),
        .tx_axis_tvalid(min_pcie_to_udp_top_0_tx_axis_tvalid));
  min_link_bd_vio_0_0 vio_0
       (.clk(clk_1),
        .probe_out0(vio_0_probe_out0),
        .probe_out1(vio_0_probe_out1),
        .probe_out2(vio_0_probe_out2));
  min_link_bd_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
