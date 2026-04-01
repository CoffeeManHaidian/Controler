// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Mar 26 14:47:12 2026
// Host        : DESKTOP-IR4AFNC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Controler/Controler/Controler.srcs/sources_1/bd/min_debug_bd/ip/min_debug_bd_min_pcie_to_udp_debug_top_0_1/min_debug_bd_min_pcie_to_udp_debug_top_0_1_sim_netlist.v
// Design      : min_debug_bd_min_pcie_to_udp_debug_top_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "min_debug_bd_min_pcie_to_udp_debug_top_0_1,min_pcie_to_udp_debug_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "min_pcie_to_udp_debug_top,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module min_debug_bd_min_pcie_to_udp_debug_top_0_1
   (clk,
    rst,
    pcie_wr_en,
    pcie_wr_addr,
    pcie_wr_data,
    status_reg,
    tx_axis_tdata,
    tx_axis_tkeep,
    tx_axis_tvalid,
    tx_axis_tlast,
    tx_frame_count);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF tx_axis, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN min_debug_bd_clk" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  input pcie_wr_en;
  input [31:0]pcie_wr_addr;
  input [31:0]pcie_wr_data;
  output [31:0]status_reg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis TDATA" *) output [63:0]tx_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis TKEEP" *) output [7:0]tx_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis TVALID" *) output tx_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN min_debug_bd_clk, LAYERED_METADATA undef" *) output tx_axis_tlast;
  output [31:0]tx_frame_count;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [31:0]pcie_wr_addr;
  wire [31:0]pcie_wr_data;
  wire pcie_wr_en;
  wire rst;
  wire [31:2]\^status_reg ;
  wire [63:0]tx_axis_tdata;
  wire [6:2]\^tx_axis_tkeep ;
  wire tx_axis_tlast;
  wire [31:0]tx_frame_count;

  assign status_reg[31:2] = \^status_reg [31:2];
  assign status_reg[1] = \<const1> ;
  assign status_reg[0] = \<const0> ;
  assign tx_axis_tkeep[7] = \^tx_axis_tkeep [6];
  assign tx_axis_tkeep[6] = \^tx_axis_tkeep [6];
  assign tx_axis_tkeep[5] = \^tx_axis_tkeep [6];
  assign tx_axis_tkeep[4] = \^tx_axis_tkeep [6];
  assign tx_axis_tkeep[3] = \^tx_axis_tkeep [2];
  assign tx_axis_tkeep[2] = \^tx_axis_tkeep [2];
  assign tx_axis_tkeep[1] = \^tx_axis_tkeep [2];
  assign tx_axis_tkeep[0] = \^tx_axis_tkeep [2];
  assign tx_axis_tvalid = \^tx_axis_tkeep [2];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  min_debug_bd_min_pcie_to_udp_debug_top_0_1_min_pcie_to_udp_debug_top inst
       (.clk(clk),
        .pcie_wr_addr(pcie_wr_addr),
        .pcie_wr_data(pcie_wr_data),
        .pcie_wr_en(pcie_wr_en),
        .rst(rst),
        .status_reg({\^status_reg [31:4],\^status_reg [2]}),
        .status_reg_3_sp_1(\^status_reg [3]),
        .tx_axis_tdata(tx_axis_tdata),
        .tx_axis_tkeep({\^tx_axis_tkeep [6],\^tx_axis_tkeep [2]}),
        .tx_axis_tlast(tx_axis_tlast),
        .tx_frame_count(tx_frame_count));
endmodule

(* ORIG_REF_NAME = "min_pcie_to_udp_debug_top" *) 
module min_debug_bd_min_pcie_to_udp_debug_top_0_1_min_pcie_to_udp_debug_top
   (status_reg_3_sp_1,
    tx_axis_tdata,
    status_reg,
    tx_frame_count,
    tx_axis_tkeep,
    tx_axis_tlast,
    clk,
    rst,
    pcie_wr_data,
    pcie_wr_addr,
    pcie_wr_en);
  output status_reg_3_sp_1;
  output [63:0]tx_axis_tdata;
  output [28:0]status_reg;
  output [31:0]tx_frame_count;
  output [1:0]tx_axis_tkeep;
  output tx_axis_tlast;
  input clk;
  input rst;
  input [31:0]pcie_wr_data;
  input [31:0]pcie_wr_addr;
  input pcie_wr_en;

  wire clk;
  wire [31:0]pcie_wr_addr;
  wire [31:0]pcie_wr_data;
  wire pcie_wr_en;
  wire rst;
  wire [28:0]status_reg;
  wire status_reg_3_sn_1;
  wire [63:0]tx_axis_tdata;
  wire [1:0]tx_axis_tkeep;
  wire tx_axis_tlast;
  wire [31:0]tx_frame_count;

  assign status_reg_3_sp_1 = status_reg_3_sn_1;
  min_debug_bd_min_pcie_to_udp_debug_top_0_1_min_pcie_to_udp_top u_min_pcie_to_udp_top
       (.clk(clk),
        .pcie_wr_addr(pcie_wr_addr),
        .pcie_wr_data(pcie_wr_data),
        .pcie_wr_en(pcie_wr_en),
        .rst(rst),
        .status_reg(status_reg),
        .status_reg_3_sp_1(status_reg_3_sn_1),
        .tx_axis_tdata(tx_axis_tdata),
        .tx_axis_tkeep(tx_axis_tkeep),
        .tx_axis_tlast(tx_axis_tlast),
        .tx_frame_count(tx_frame_count));
endmodule

(* ORIG_REF_NAME = "min_pcie_to_udp_top" *) 
module min_debug_bd_min_pcie_to_udp_debug_top_0_1_min_pcie_to_udp_top
   (status_reg_3_sp_1,
    tx_axis_tdata,
    status_reg,
    tx_frame_count,
    tx_axis_tkeep,
    tx_axis_tlast,
    clk,
    rst,
    pcie_wr_data,
    pcie_wr_addr,
    pcie_wr_en);
  output status_reg_3_sp_1;
  output [63:0]tx_axis_tdata;
  output [28:0]status_reg;
  output [31:0]tx_frame_count;
  output [1:0]tx_axis_tkeep;
  output tx_axis_tlast;
  input clk;
  input rst;
  input [31:0]pcie_wr_data;
  input [31:0]pcie_wr_addr;
  input pcie_wr_en;

  wire clk;
  wire commit_count0;
  wire [7:0]data10;
  wire [7:0]data4;
  wire [7:0]data5;
  wire [7:0]data6;
  wire [7:0]data8;
  wire [7:0]data9;
  wire [39:0]fifo_rd_data;
  wire fifo_rd_en;
  wire [63:0]fifo_wr_data;
  wire fifo_wr_en;
  wire [31:0]pcie_wr_addr;
  wire [31:0]pcie_wr_data;
  wire pcie_wr_en;
  wire rst;
  wire [28:0]status_reg;
  wire status_reg_3_sn_1;
  wire [63:0]tx_axis_tdata;
  wire [1:0]tx_axis_tkeep;
  wire tx_axis_tlast;
  wire [31:0]tx_frame_count;
  wire u_pcie_bar_cmd_rx_n_29;
  wire u_pcie_bar_cmd_rx_n_30;
  wire u_pcie_bar_cmd_rx_n_31;
  wire u_pcie_bar_cmd_rx_n_32;
  wire u_simple_sync_fifo_n_3;
  wire u_udp_frame_tx_min_n_36;

  assign status_reg_3_sp_1 = status_reg_3_sn_1;
  min_debug_bd_min_pcie_to_udp_debug_top_0_1_pcie_bar_cmd_rx u_pcie_bar_cmd_rx
       (.Q(fifo_wr_data),
        .clk(clk),
        .commit_count0(commit_count0),
        .fifo_wr_en(fifo_wr_en),
        .fifo_wr_en_reg_0(u_pcie_bar_cmd_rx_n_29),
        .fifo_wr_en_reg_1(u_pcie_bar_cmd_rx_n_30),
        .fifo_wr_en_reg_2(u_pcie_bar_cmd_rx_n_31),
        .fifo_wr_en_reg_3(u_pcie_bar_cmd_rx_n_32),
        .pcie_wr_addr(pcie_wr_addr),
        .pcie_wr_data(pcie_wr_data),
        .pcie_wr_en(pcie_wr_en),
        .rst(rst),
        .status_reg(status_reg[28:1]),
        .\usedw_reg[3] (u_simple_sync_fifo_n_3));
  min_debug_bd_min_pcie_to_udp_debug_top_0_1_simple_sync_fifo u_simple_sync_fifo
       (.clk(clk),
        .commit_count0(commit_count0),
        .fifo_rd_en(fifo_rd_en),
        .fifo_wr_en(fifo_wr_en),
        .fifo_wr_en_reg(u_simple_sync_fifo_n_3),
        .\pcie_wr_addr[15] (u_pcie_bar_cmd_rx_n_32),
        .\pcie_wr_addr[4] (u_pcie_bar_cmd_rx_n_31),
        .\pcie_wr_addr[9] (u_pcie_bar_cmd_rx_n_29),
        .pcie_wr_en(u_pcie_bar_cmd_rx_n_30),
        .rd_data({data4,data5,data6,fifo_rd_data[39:32],data8,data9,data10,fifo_rd_data[7:0]}),
        .rst(rst),
        .\state_reg[0] (u_udp_frame_tx_min_n_36),
        .status_reg(status_reg[0]),
        .\status_reg[3] (status_reg_3_sn_1),
        .wr_data(fifo_wr_data));
  min_debug_bd_min_pcie_to_udp_debug_top_0_1_udp_frame_tx_min u_udp_frame_tx_min
       (.clk(clk),
        .fifo_rd_en(fifo_rd_en),
        .mem_reg(u_udp_frame_tx_min_n_36),
        .rd_data({data4,data5,data6,fifo_rd_data[39:32],data8,data9,data10,fifo_rd_data[7:0]}),
        .rst(rst),
        .tx_axis_tdata(tx_axis_tdata),
        .tx_axis_tkeep(tx_axis_tkeep),
        .tx_axis_tlast(tx_axis_tlast),
        .tx_frame_count(tx_frame_count),
        .\usedw_reg[4] (status_reg_3_sn_1));
endmodule

(* ORIG_REF_NAME = "pcie_bar_cmd_rx" *) 
module min_debug_bd_min_pcie_to_udp_debug_top_0_1_pcie_bar_cmd_rx
   (status_reg,
    fifo_wr_en,
    fifo_wr_en_reg_0,
    fifo_wr_en_reg_1,
    fifo_wr_en_reg_2,
    fifo_wr_en_reg_3,
    Q,
    rst,
    commit_count0,
    clk,
    \usedw_reg[3] ,
    pcie_wr_addr,
    pcie_wr_data,
    pcie_wr_en);
  output [27:0]status_reg;
  output fifo_wr_en;
  output fifo_wr_en_reg_0;
  output fifo_wr_en_reg_1;
  output fifo_wr_en_reg_2;
  output fifo_wr_en_reg_3;
  output [63:0]Q;
  input rst;
  input commit_count0;
  input clk;
  input \usedw_reg[3] ;
  input [31:0]pcie_wr_addr;
  input [31:0]pcie_wr_data;
  input pcie_wr_en;

  wire [63:0]Q;
  wire clk;
  wire [31:0]cmd_addr_reg;
  wire cmd_addr_reg0;
  wire [31:0]cmd_data_reg;
  wire cmd_data_reg0;
  wire \cmd_data_reg[31]_i_2_n_0 ;
  wire \cmd_data_reg[31]_i_3_n_0 ;
  wire \cmd_data_reg[31]_i_4_n_0 ;
  wire commit_count0;
  wire \commit_count[27]_i_10_n_0 ;
  wire \commit_count[27]_i_11_n_0 ;
  wire \commit_count[27]_i_7_n_0 ;
  wire \commit_count[27]_i_8_n_0 ;
  wire \commit_count[27]_i_9_n_0 ;
  wire \commit_count[3]_i_2_n_0 ;
  wire \commit_count_reg[11]_i_1_n_0 ;
  wire \commit_count_reg[11]_i_1_n_1 ;
  wire \commit_count_reg[11]_i_1_n_2 ;
  wire \commit_count_reg[11]_i_1_n_3 ;
  wire \commit_count_reg[11]_i_1_n_4 ;
  wire \commit_count_reg[11]_i_1_n_5 ;
  wire \commit_count_reg[11]_i_1_n_6 ;
  wire \commit_count_reg[11]_i_1_n_7 ;
  wire \commit_count_reg[15]_i_1_n_0 ;
  wire \commit_count_reg[15]_i_1_n_1 ;
  wire \commit_count_reg[15]_i_1_n_2 ;
  wire \commit_count_reg[15]_i_1_n_3 ;
  wire \commit_count_reg[15]_i_1_n_4 ;
  wire \commit_count_reg[15]_i_1_n_5 ;
  wire \commit_count_reg[15]_i_1_n_6 ;
  wire \commit_count_reg[15]_i_1_n_7 ;
  wire \commit_count_reg[19]_i_1_n_0 ;
  wire \commit_count_reg[19]_i_1_n_1 ;
  wire \commit_count_reg[19]_i_1_n_2 ;
  wire \commit_count_reg[19]_i_1_n_3 ;
  wire \commit_count_reg[19]_i_1_n_4 ;
  wire \commit_count_reg[19]_i_1_n_5 ;
  wire \commit_count_reg[19]_i_1_n_6 ;
  wire \commit_count_reg[19]_i_1_n_7 ;
  wire \commit_count_reg[23]_i_1_n_0 ;
  wire \commit_count_reg[23]_i_1_n_1 ;
  wire \commit_count_reg[23]_i_1_n_2 ;
  wire \commit_count_reg[23]_i_1_n_3 ;
  wire \commit_count_reg[23]_i_1_n_4 ;
  wire \commit_count_reg[23]_i_1_n_5 ;
  wire \commit_count_reg[23]_i_1_n_6 ;
  wire \commit_count_reg[23]_i_1_n_7 ;
  wire \commit_count_reg[27]_i_2_n_1 ;
  wire \commit_count_reg[27]_i_2_n_2 ;
  wire \commit_count_reg[27]_i_2_n_3 ;
  wire \commit_count_reg[27]_i_2_n_4 ;
  wire \commit_count_reg[27]_i_2_n_5 ;
  wire \commit_count_reg[27]_i_2_n_6 ;
  wire \commit_count_reg[27]_i_2_n_7 ;
  wire \commit_count_reg[3]_i_1_n_0 ;
  wire \commit_count_reg[3]_i_1_n_1 ;
  wire \commit_count_reg[3]_i_1_n_2 ;
  wire \commit_count_reg[3]_i_1_n_3 ;
  wire \commit_count_reg[3]_i_1_n_4 ;
  wire \commit_count_reg[3]_i_1_n_5 ;
  wire \commit_count_reg[3]_i_1_n_6 ;
  wire \commit_count_reg[3]_i_1_n_7 ;
  wire \commit_count_reg[7]_i_1_n_0 ;
  wire \commit_count_reg[7]_i_1_n_1 ;
  wire \commit_count_reg[7]_i_1_n_2 ;
  wire \commit_count_reg[7]_i_1_n_3 ;
  wire \commit_count_reg[7]_i_1_n_4 ;
  wire \commit_count_reg[7]_i_1_n_5 ;
  wire \commit_count_reg[7]_i_1_n_6 ;
  wire \commit_count_reg[7]_i_1_n_7 ;
  wire fifo_wr_en;
  wire fifo_wr_en_reg_0;
  wire fifo_wr_en_reg_1;
  wire fifo_wr_en_reg_2;
  wire fifo_wr_en_reg_3;
  wire [31:0]pcie_wr_addr;
  wire [31:0]pcie_wr_data;
  wire pcie_wr_en;
  wire rst;
  wire [27:0]status_reg;
  wire \usedw_reg[3] ;
  wire [3:3]\NLW_commit_count_reg[27]_i_2_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h02)) 
    \cmd_addr_reg[31]_i_1 
       (.I0(\cmd_data_reg[31]_i_2_n_0 ),
        .I1(\cmd_data_reg[31]_i_3_n_0 ),
        .I2(pcie_wr_addr[2]),
        .O(cmd_addr_reg0));
  FDRE \cmd_addr_reg_reg[0] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[0]),
        .Q(cmd_addr_reg[0]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[10] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[10]),
        .Q(cmd_addr_reg[10]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[11] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[11]),
        .Q(cmd_addr_reg[11]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[12] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[12]),
        .Q(cmd_addr_reg[12]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[13] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[13]),
        .Q(cmd_addr_reg[13]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[14] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[14]),
        .Q(cmd_addr_reg[14]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[15] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[15]),
        .Q(cmd_addr_reg[15]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[16] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[16]),
        .Q(cmd_addr_reg[16]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[17] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[17]),
        .Q(cmd_addr_reg[17]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[18] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[18]),
        .Q(cmd_addr_reg[18]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[19] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[19]),
        .Q(cmd_addr_reg[19]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[1] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[1]),
        .Q(cmd_addr_reg[1]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[20] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[20]),
        .Q(cmd_addr_reg[20]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[21] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[21]),
        .Q(cmd_addr_reg[21]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[22] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[22]),
        .Q(cmd_addr_reg[22]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[23] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[23]),
        .Q(cmd_addr_reg[23]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[24] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[24]),
        .Q(cmd_addr_reg[24]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[25] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[25]),
        .Q(cmd_addr_reg[25]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[26] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[26]),
        .Q(cmd_addr_reg[26]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[27] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[27]),
        .Q(cmd_addr_reg[27]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[28] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[28]),
        .Q(cmd_addr_reg[28]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[29] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[29]),
        .Q(cmd_addr_reg[29]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[2] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[2]),
        .Q(cmd_addr_reg[2]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[30] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[30]),
        .Q(cmd_addr_reg[30]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[31] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[31]),
        .Q(cmd_addr_reg[31]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[3] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[3]),
        .Q(cmd_addr_reg[3]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[4] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[4]),
        .Q(cmd_addr_reg[4]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[5] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[5]),
        .Q(cmd_addr_reg[5]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[6] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[6]),
        .Q(cmd_addr_reg[6]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[7] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[7]),
        .Q(cmd_addr_reg[7]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[8] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[8]),
        .Q(cmd_addr_reg[8]),
        .R(rst));
  FDRE \cmd_addr_reg_reg[9] 
       (.C(clk),
        .CE(cmd_addr_reg0),
        .D(pcie_wr_data[9]),
        .Q(cmd_addr_reg[9]),
        .R(rst));
  LUT3 #(
    .INIT(8'h08)) 
    \cmd_data_reg[31]_i_1 
       (.I0(\cmd_data_reg[31]_i_2_n_0 ),
        .I1(pcie_wr_addr[2]),
        .I2(\cmd_data_reg[31]_i_3_n_0 ),
        .O(cmd_data_reg0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \cmd_data_reg[31]_i_2 
       (.I0(\commit_count[27]_i_10_n_0 ),
        .I1(\commit_count[27]_i_9_n_0 ),
        .I2(\commit_count[27]_i_8_n_0 ),
        .I3(\commit_count[27]_i_7_n_0 ),
        .I4(\commit_count[27]_i_11_n_0 ),
        .I5(\cmd_data_reg[31]_i_4_n_0 ),
        .O(\cmd_data_reg[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \cmd_data_reg[31]_i_3 
       (.I0(fifo_wr_en_reg_2),
        .I1(pcie_wr_addr[3]),
        .I2(pcie_wr_en),
        .I3(pcie_wr_addr[6]),
        .I4(pcie_wr_addr[7]),
        .O(\cmd_data_reg[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cmd_data_reg[31]_i_4 
       (.I0(pcie_wr_addr[20]),
        .I1(pcie_wr_addr[11]),
        .I2(pcie_wr_addr[31]),
        .I3(pcie_wr_addr[8]),
        .O(\cmd_data_reg[31]_i_4_n_0 ));
  FDRE \cmd_data_reg_reg[0] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[0]),
        .Q(cmd_data_reg[0]),
        .R(rst));
  FDRE \cmd_data_reg_reg[10] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[10]),
        .Q(cmd_data_reg[10]),
        .R(rst));
  FDRE \cmd_data_reg_reg[11] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[11]),
        .Q(cmd_data_reg[11]),
        .R(rst));
  FDRE \cmd_data_reg_reg[12] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[12]),
        .Q(cmd_data_reg[12]),
        .R(rst));
  FDRE \cmd_data_reg_reg[13] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[13]),
        .Q(cmd_data_reg[13]),
        .R(rst));
  FDRE \cmd_data_reg_reg[14] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[14]),
        .Q(cmd_data_reg[14]),
        .R(rst));
  FDRE \cmd_data_reg_reg[15] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[15]),
        .Q(cmd_data_reg[15]),
        .R(rst));
  FDRE \cmd_data_reg_reg[16] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[16]),
        .Q(cmd_data_reg[16]),
        .R(rst));
  FDRE \cmd_data_reg_reg[17] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[17]),
        .Q(cmd_data_reg[17]),
        .R(rst));
  FDRE \cmd_data_reg_reg[18] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[18]),
        .Q(cmd_data_reg[18]),
        .R(rst));
  FDRE \cmd_data_reg_reg[19] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[19]),
        .Q(cmd_data_reg[19]),
        .R(rst));
  FDRE \cmd_data_reg_reg[1] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[1]),
        .Q(cmd_data_reg[1]),
        .R(rst));
  FDRE \cmd_data_reg_reg[20] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[20]),
        .Q(cmd_data_reg[20]),
        .R(rst));
  FDRE \cmd_data_reg_reg[21] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[21]),
        .Q(cmd_data_reg[21]),
        .R(rst));
  FDRE \cmd_data_reg_reg[22] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[22]),
        .Q(cmd_data_reg[22]),
        .R(rst));
  FDRE \cmd_data_reg_reg[23] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[23]),
        .Q(cmd_data_reg[23]),
        .R(rst));
  FDRE \cmd_data_reg_reg[24] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[24]),
        .Q(cmd_data_reg[24]),
        .R(rst));
  FDRE \cmd_data_reg_reg[25] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[25]),
        .Q(cmd_data_reg[25]),
        .R(rst));
  FDRE \cmd_data_reg_reg[26] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[26]),
        .Q(cmd_data_reg[26]),
        .R(rst));
  FDRE \cmd_data_reg_reg[27] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[27]),
        .Q(cmd_data_reg[27]),
        .R(rst));
  FDRE \cmd_data_reg_reg[28] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[28]),
        .Q(cmd_data_reg[28]),
        .R(rst));
  FDRE \cmd_data_reg_reg[29] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[29]),
        .Q(cmd_data_reg[29]),
        .R(rst));
  FDRE \cmd_data_reg_reg[2] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[2]),
        .Q(cmd_data_reg[2]),
        .R(rst));
  FDRE \cmd_data_reg_reg[30] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[30]),
        .Q(cmd_data_reg[30]),
        .R(rst));
  FDRE \cmd_data_reg_reg[31] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[31]),
        .Q(cmd_data_reg[31]),
        .R(rst));
  FDRE \cmd_data_reg_reg[3] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[3]),
        .Q(cmd_data_reg[3]),
        .R(rst));
  FDRE \cmd_data_reg_reg[4] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[4]),
        .Q(cmd_data_reg[4]),
        .R(rst));
  FDRE \cmd_data_reg_reg[5] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[5]),
        .Q(cmd_data_reg[5]),
        .R(rst));
  FDRE \cmd_data_reg_reg[6] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[6]),
        .Q(cmd_data_reg[6]),
        .R(rst));
  FDRE \cmd_data_reg_reg[7] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[7]),
        .Q(cmd_data_reg[7]),
        .R(rst));
  FDRE \cmd_data_reg_reg[8] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[8]),
        .Q(cmd_data_reg[8]),
        .R(rst));
  FDRE \cmd_data_reg_reg[9] 
       (.C(clk),
        .CE(cmd_data_reg0),
        .D(pcie_wr_data[9]),
        .Q(cmd_data_reg[9]),
        .R(rst));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \commit_count[27]_i_10 
       (.I0(pcie_wr_addr[28]),
        .I1(pcie_wr_addr[24]),
        .I2(pcie_wr_addr[22]),
        .I3(pcie_wr_addr[15]),
        .O(\commit_count[27]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \commit_count[27]_i_11 
       (.I0(pcie_wr_addr[30]),
        .I1(pcie_wr_addr[10]),
        .I2(pcie_wr_addr[21]),
        .I3(pcie_wr_addr[9]),
        .O(\commit_count[27]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \commit_count[27]_i_3 
       (.I0(\commit_count[27]_i_7_n_0 ),
        .I1(\commit_count[27]_i_8_n_0 ),
        .I2(\commit_count[27]_i_9_n_0 ),
        .I3(\commit_count[27]_i_10_n_0 ),
        .O(fifo_wr_en_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \commit_count[27]_i_4 
       (.I0(pcie_wr_addr[8]),
        .I1(pcie_wr_addr[31]),
        .I2(pcie_wr_addr[11]),
        .I3(pcie_wr_addr[20]),
        .I4(\commit_count[27]_i_11_n_0 ),
        .O(fifo_wr_en_reg_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \commit_count[27]_i_5 
       (.I0(pcie_wr_addr[1]),
        .I1(pcie_wr_addr[0]),
        .I2(pcie_wr_addr[5]),
        .I3(pcie_wr_addr[4]),
        .O(fifo_wr_en_reg_2));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \commit_count[27]_i_6 
       (.I0(pcie_wr_addr[7]),
        .I1(pcie_wr_addr[6]),
        .I2(pcie_wr_addr[3]),
        .I3(pcie_wr_data[0]),
        .I4(pcie_wr_addr[2]),
        .I5(pcie_wr_en),
        .O(fifo_wr_en_reg_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \commit_count[27]_i_7 
       (.I0(pcie_wr_addr[27]),
        .I1(pcie_wr_addr[25]),
        .I2(pcie_wr_addr[19]),
        .I3(pcie_wr_addr[17]),
        .O(\commit_count[27]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \commit_count[27]_i_8 
       (.I0(pcie_wr_addr[26]),
        .I1(pcie_wr_addr[16]),
        .I2(pcie_wr_addr[29]),
        .I3(pcie_wr_addr[12]),
        .O(\commit_count[27]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \commit_count[27]_i_9 
       (.I0(pcie_wr_addr[14]),
        .I1(pcie_wr_addr[13]),
        .I2(pcie_wr_addr[23]),
        .I3(pcie_wr_addr[18]),
        .O(\commit_count[27]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \commit_count[3]_i_2 
       (.I0(status_reg[0]),
        .O(\commit_count[3]_i_2_n_0 ));
  FDRE \commit_count_reg[0] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[3]_i_1_n_7 ),
        .Q(status_reg[0]),
        .R(rst));
  FDRE \commit_count_reg[10] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[11]_i_1_n_5 ),
        .Q(status_reg[10]),
        .R(rst));
  FDRE \commit_count_reg[11] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[11]_i_1_n_4 ),
        .Q(status_reg[11]),
        .R(rst));
  CARRY4 \commit_count_reg[11]_i_1 
       (.CI(\commit_count_reg[7]_i_1_n_0 ),
        .CO({\commit_count_reg[11]_i_1_n_0 ,\commit_count_reg[11]_i_1_n_1 ,\commit_count_reg[11]_i_1_n_2 ,\commit_count_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\commit_count_reg[11]_i_1_n_4 ,\commit_count_reg[11]_i_1_n_5 ,\commit_count_reg[11]_i_1_n_6 ,\commit_count_reg[11]_i_1_n_7 }),
        .S(status_reg[11:8]));
  FDRE \commit_count_reg[12] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[15]_i_1_n_7 ),
        .Q(status_reg[12]),
        .R(rst));
  FDRE \commit_count_reg[13] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[15]_i_1_n_6 ),
        .Q(status_reg[13]),
        .R(rst));
  FDRE \commit_count_reg[14] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[15]_i_1_n_5 ),
        .Q(status_reg[14]),
        .R(rst));
  FDRE \commit_count_reg[15] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[15]_i_1_n_4 ),
        .Q(status_reg[15]),
        .R(rst));
  CARRY4 \commit_count_reg[15]_i_1 
       (.CI(\commit_count_reg[11]_i_1_n_0 ),
        .CO({\commit_count_reg[15]_i_1_n_0 ,\commit_count_reg[15]_i_1_n_1 ,\commit_count_reg[15]_i_1_n_2 ,\commit_count_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\commit_count_reg[15]_i_1_n_4 ,\commit_count_reg[15]_i_1_n_5 ,\commit_count_reg[15]_i_1_n_6 ,\commit_count_reg[15]_i_1_n_7 }),
        .S(status_reg[15:12]));
  FDRE \commit_count_reg[16] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[19]_i_1_n_7 ),
        .Q(status_reg[16]),
        .R(rst));
  FDRE \commit_count_reg[17] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[19]_i_1_n_6 ),
        .Q(status_reg[17]),
        .R(rst));
  FDRE \commit_count_reg[18] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[19]_i_1_n_5 ),
        .Q(status_reg[18]),
        .R(rst));
  FDRE \commit_count_reg[19] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[19]_i_1_n_4 ),
        .Q(status_reg[19]),
        .R(rst));
  CARRY4 \commit_count_reg[19]_i_1 
       (.CI(\commit_count_reg[15]_i_1_n_0 ),
        .CO({\commit_count_reg[19]_i_1_n_0 ,\commit_count_reg[19]_i_1_n_1 ,\commit_count_reg[19]_i_1_n_2 ,\commit_count_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\commit_count_reg[19]_i_1_n_4 ,\commit_count_reg[19]_i_1_n_5 ,\commit_count_reg[19]_i_1_n_6 ,\commit_count_reg[19]_i_1_n_7 }),
        .S(status_reg[19:16]));
  FDRE \commit_count_reg[1] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[3]_i_1_n_6 ),
        .Q(status_reg[1]),
        .R(rst));
  FDRE \commit_count_reg[20] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[23]_i_1_n_7 ),
        .Q(status_reg[20]),
        .R(rst));
  FDRE \commit_count_reg[21] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[23]_i_1_n_6 ),
        .Q(status_reg[21]),
        .R(rst));
  FDRE \commit_count_reg[22] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[23]_i_1_n_5 ),
        .Q(status_reg[22]),
        .R(rst));
  FDRE \commit_count_reg[23] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[23]_i_1_n_4 ),
        .Q(status_reg[23]),
        .R(rst));
  CARRY4 \commit_count_reg[23]_i_1 
       (.CI(\commit_count_reg[19]_i_1_n_0 ),
        .CO({\commit_count_reg[23]_i_1_n_0 ,\commit_count_reg[23]_i_1_n_1 ,\commit_count_reg[23]_i_1_n_2 ,\commit_count_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\commit_count_reg[23]_i_1_n_4 ,\commit_count_reg[23]_i_1_n_5 ,\commit_count_reg[23]_i_1_n_6 ,\commit_count_reg[23]_i_1_n_7 }),
        .S(status_reg[23:20]));
  FDRE \commit_count_reg[24] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[27]_i_2_n_7 ),
        .Q(status_reg[24]),
        .R(rst));
  FDRE \commit_count_reg[25] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[27]_i_2_n_6 ),
        .Q(status_reg[25]),
        .R(rst));
  FDRE \commit_count_reg[26] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[27]_i_2_n_5 ),
        .Q(status_reg[26]),
        .R(rst));
  FDRE \commit_count_reg[27] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[27]_i_2_n_4 ),
        .Q(status_reg[27]),
        .R(rst));
  CARRY4 \commit_count_reg[27]_i_2 
       (.CI(\commit_count_reg[23]_i_1_n_0 ),
        .CO({\NLW_commit_count_reg[27]_i_2_CO_UNCONNECTED [3],\commit_count_reg[27]_i_2_n_1 ,\commit_count_reg[27]_i_2_n_2 ,\commit_count_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\commit_count_reg[27]_i_2_n_4 ,\commit_count_reg[27]_i_2_n_5 ,\commit_count_reg[27]_i_2_n_6 ,\commit_count_reg[27]_i_2_n_7 }),
        .S(status_reg[27:24]));
  FDRE \commit_count_reg[2] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[3]_i_1_n_5 ),
        .Q(status_reg[2]),
        .R(rst));
  FDRE \commit_count_reg[3] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[3]_i_1_n_4 ),
        .Q(status_reg[3]),
        .R(rst));
  CARRY4 \commit_count_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\commit_count_reg[3]_i_1_n_0 ,\commit_count_reg[3]_i_1_n_1 ,\commit_count_reg[3]_i_1_n_2 ,\commit_count_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\commit_count_reg[3]_i_1_n_4 ,\commit_count_reg[3]_i_1_n_5 ,\commit_count_reg[3]_i_1_n_6 ,\commit_count_reg[3]_i_1_n_7 }),
        .S({status_reg[3:1],\commit_count[3]_i_2_n_0 }));
  FDRE \commit_count_reg[4] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[7]_i_1_n_7 ),
        .Q(status_reg[4]),
        .R(rst));
  FDRE \commit_count_reg[5] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[7]_i_1_n_6 ),
        .Q(status_reg[5]),
        .R(rst));
  FDRE \commit_count_reg[6] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[7]_i_1_n_5 ),
        .Q(status_reg[6]),
        .R(rst));
  FDRE \commit_count_reg[7] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[7]_i_1_n_4 ),
        .Q(status_reg[7]),
        .R(rst));
  CARRY4 \commit_count_reg[7]_i_1 
       (.CI(\commit_count_reg[3]_i_1_n_0 ),
        .CO({\commit_count_reg[7]_i_1_n_0 ,\commit_count_reg[7]_i_1_n_1 ,\commit_count_reg[7]_i_1_n_2 ,\commit_count_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\commit_count_reg[7]_i_1_n_4 ,\commit_count_reg[7]_i_1_n_5 ,\commit_count_reg[7]_i_1_n_6 ,\commit_count_reg[7]_i_1_n_7 }),
        .S(status_reg[7:4]));
  FDRE \commit_count_reg[8] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[11]_i_1_n_7 ),
        .Q(status_reg[8]),
        .R(rst));
  FDRE \commit_count_reg[9] 
       (.C(clk),
        .CE(commit_count0),
        .D(\commit_count_reg[11]_i_1_n_6 ),
        .Q(status_reg[9]),
        .R(rst));
  FDRE \fifo_wr_data_reg[0] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[0]),
        .Q(Q[0]),
        .R(rst));
  FDRE \fifo_wr_data_reg[10] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[10]),
        .Q(Q[10]),
        .R(rst));
  FDRE \fifo_wr_data_reg[11] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[11]),
        .Q(Q[11]),
        .R(rst));
  FDRE \fifo_wr_data_reg[12] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[12]),
        .Q(Q[12]),
        .R(rst));
  FDRE \fifo_wr_data_reg[13] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[13]),
        .Q(Q[13]),
        .R(rst));
  FDRE \fifo_wr_data_reg[14] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[14]),
        .Q(Q[14]),
        .R(rst));
  FDRE \fifo_wr_data_reg[15] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[15]),
        .Q(Q[15]),
        .R(rst));
  FDRE \fifo_wr_data_reg[16] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[16]),
        .Q(Q[16]),
        .R(rst));
  FDRE \fifo_wr_data_reg[17] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[17]),
        .Q(Q[17]),
        .R(rst));
  FDRE \fifo_wr_data_reg[18] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[18]),
        .Q(Q[18]),
        .R(rst));
  FDRE \fifo_wr_data_reg[19] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[19]),
        .Q(Q[19]),
        .R(rst));
  FDRE \fifo_wr_data_reg[1] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[1]),
        .Q(Q[1]),
        .R(rst));
  FDRE \fifo_wr_data_reg[20] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[20]),
        .Q(Q[20]),
        .R(rst));
  FDRE \fifo_wr_data_reg[21] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[21]),
        .Q(Q[21]),
        .R(rst));
  FDRE \fifo_wr_data_reg[22] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[22]),
        .Q(Q[22]),
        .R(rst));
  FDRE \fifo_wr_data_reg[23] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[23]),
        .Q(Q[23]),
        .R(rst));
  FDRE \fifo_wr_data_reg[24] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[24]),
        .Q(Q[24]),
        .R(rst));
  FDRE \fifo_wr_data_reg[25] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[25]),
        .Q(Q[25]),
        .R(rst));
  FDRE \fifo_wr_data_reg[26] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[26]),
        .Q(Q[26]),
        .R(rst));
  FDRE \fifo_wr_data_reg[27] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[27]),
        .Q(Q[27]),
        .R(rst));
  FDRE \fifo_wr_data_reg[28] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[28]),
        .Q(Q[28]),
        .R(rst));
  FDRE \fifo_wr_data_reg[29] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[29]),
        .Q(Q[29]),
        .R(rst));
  FDRE \fifo_wr_data_reg[2] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[2]),
        .Q(Q[2]),
        .R(rst));
  FDRE \fifo_wr_data_reg[30] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[30]),
        .Q(Q[30]),
        .R(rst));
  FDRE \fifo_wr_data_reg[31] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[31]),
        .Q(Q[31]),
        .R(rst));
  FDRE \fifo_wr_data_reg[32] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[0]),
        .Q(Q[32]),
        .R(rst));
  FDRE \fifo_wr_data_reg[33] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[1]),
        .Q(Q[33]),
        .R(rst));
  FDRE \fifo_wr_data_reg[34] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[2]),
        .Q(Q[34]),
        .R(rst));
  FDRE \fifo_wr_data_reg[35] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[3]),
        .Q(Q[35]),
        .R(rst));
  FDRE \fifo_wr_data_reg[36] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[4]),
        .Q(Q[36]),
        .R(rst));
  FDRE \fifo_wr_data_reg[37] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[5]),
        .Q(Q[37]),
        .R(rst));
  FDRE \fifo_wr_data_reg[38] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[6]),
        .Q(Q[38]),
        .R(rst));
  FDRE \fifo_wr_data_reg[39] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[7]),
        .Q(Q[39]),
        .R(rst));
  FDRE \fifo_wr_data_reg[3] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[3]),
        .Q(Q[3]),
        .R(rst));
  FDRE \fifo_wr_data_reg[40] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[8]),
        .Q(Q[40]),
        .R(rst));
  FDRE \fifo_wr_data_reg[41] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[9]),
        .Q(Q[41]),
        .R(rst));
  FDRE \fifo_wr_data_reg[42] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[10]),
        .Q(Q[42]),
        .R(rst));
  FDRE \fifo_wr_data_reg[43] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[11]),
        .Q(Q[43]),
        .R(rst));
  FDRE \fifo_wr_data_reg[44] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[12]),
        .Q(Q[44]),
        .R(rst));
  FDRE \fifo_wr_data_reg[45] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[13]),
        .Q(Q[45]),
        .R(rst));
  FDRE \fifo_wr_data_reg[46] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[14]),
        .Q(Q[46]),
        .R(rst));
  FDRE \fifo_wr_data_reg[47] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[15]),
        .Q(Q[47]),
        .R(rst));
  FDRE \fifo_wr_data_reg[48] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[16]),
        .Q(Q[48]),
        .R(rst));
  FDRE \fifo_wr_data_reg[49] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[17]),
        .Q(Q[49]),
        .R(rst));
  FDRE \fifo_wr_data_reg[4] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[4]),
        .Q(Q[4]),
        .R(rst));
  FDRE \fifo_wr_data_reg[50] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[18]),
        .Q(Q[50]),
        .R(rst));
  FDRE \fifo_wr_data_reg[51] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[19]),
        .Q(Q[51]),
        .R(rst));
  FDRE \fifo_wr_data_reg[52] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[20]),
        .Q(Q[52]),
        .R(rst));
  FDRE \fifo_wr_data_reg[53] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[21]),
        .Q(Q[53]),
        .R(rst));
  FDRE \fifo_wr_data_reg[54] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[22]),
        .Q(Q[54]),
        .R(rst));
  FDRE \fifo_wr_data_reg[55] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[23]),
        .Q(Q[55]),
        .R(rst));
  FDRE \fifo_wr_data_reg[56] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[24]),
        .Q(Q[56]),
        .R(rst));
  FDRE \fifo_wr_data_reg[57] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[25]),
        .Q(Q[57]),
        .R(rst));
  FDRE \fifo_wr_data_reg[58] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[26]),
        .Q(Q[58]),
        .R(rst));
  FDRE \fifo_wr_data_reg[59] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[27]),
        .Q(Q[59]),
        .R(rst));
  FDRE \fifo_wr_data_reg[5] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[5]),
        .Q(Q[5]),
        .R(rst));
  FDRE \fifo_wr_data_reg[60] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[28]),
        .Q(Q[60]),
        .R(rst));
  FDRE \fifo_wr_data_reg[61] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[29]),
        .Q(Q[61]),
        .R(rst));
  FDRE \fifo_wr_data_reg[62] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[30]),
        .Q(Q[62]),
        .R(rst));
  FDRE \fifo_wr_data_reg[63] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_addr_reg[31]),
        .Q(Q[63]),
        .R(rst));
  FDRE \fifo_wr_data_reg[6] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[6]),
        .Q(Q[6]),
        .R(rst));
  FDRE \fifo_wr_data_reg[7] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[7]),
        .Q(Q[7]),
        .R(rst));
  FDRE \fifo_wr_data_reg[8] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[8]),
        .Q(Q[8]),
        .R(rst));
  FDRE \fifo_wr_data_reg[9] 
       (.C(clk),
        .CE(commit_count0),
        .D(cmd_data_reg[9]),
        .Q(Q[9]),
        .R(rst));
  FDRE fifo_wr_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(\usedw_reg[3] ),
        .Q(fifo_wr_en),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "simple_sync_fifo" *) 
module min_debug_bd_min_pcie_to_udp_debug_top_0_1_simple_sync_fifo
   (commit_count0,
    status_reg,
    \status_reg[3] ,
    fifo_wr_en_reg,
    rd_data,
    rst,
    clk,
    fifo_wr_en,
    \pcie_wr_addr[15] ,
    \pcie_wr_addr[9] ,
    \pcie_wr_addr[4] ,
    pcie_wr_en,
    fifo_rd_en,
    \state_reg[0] ,
    wr_data);
  output commit_count0;
  output [0:0]status_reg;
  output \status_reg[3] ;
  output fifo_wr_en_reg;
  output [63:0]rd_data;
  input rst;
  input clk;
  input fifo_wr_en;
  input \pcie_wr_addr[15] ;
  input \pcie_wr_addr[9] ;
  input \pcie_wr_addr[4] ;
  input pcie_wr_en;
  input fifo_rd_en;
  input \state_reg[0] ;
  input [63:0]wr_data;

  wire clk;
  wire commit_count0;
  wire fifo_rd_en;
  wire fifo_wr_en;
  wire fifo_wr_en_reg;
  wire mem_reg_i_1_n_0;
  wire mem_reg_i_4_n_0;
  wire [3:0]p_0_in;
  wire [1:1]p_0_in_0;
  wire \pcie_wr_addr[15] ;
  wire \pcie_wr_addr[4] ;
  wire \pcie_wr_addr[9] ;
  wire pcie_wr_en;
  wire [63:0]rd_data;
  wire [3:0]rd_ptr;
  wire \rd_ptr[0]_i_1_n_0 ;
  wire \rd_ptr[1]_i_1_n_0 ;
  wire \rd_ptr[2]_i_1_n_0 ;
  wire \rd_ptr[3]_i_1_n_0 ;
  wire \rd_ptr[3]_i_2_n_0 ;
  wire rst;
  wire \state_reg[0] ;
  wire [0:0]status_reg;
  wire \status_reg[3] ;
  wire [4:0]usedw;
  wire \usedw[1]_i_1_n_0 ;
  wire \usedw[4]_i_1_n_0 ;
  wire [4:0]usedw_reg__0;
  wire [63:0]wr_data;
  wire [3:0]wr_ptr_reg__0;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00000002)) 
    \commit_count[27]_i_1 
       (.I0(\pcie_wr_addr[15] ),
        .I1(status_reg),
        .I2(\pcie_wr_addr[9] ),
        .I3(\pcie_wr_addr[4] ),
        .I4(pcie_wr_en),
        .O(commit_count0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    fifo_wr_en_i_1
       (.I0(pcie_wr_en),
        .I1(\pcie_wr_addr[4] ),
        .I2(\pcie_wr_addr[9] ),
        .I3(status_reg),
        .I4(\pcie_wr_addr[15] ),
        .I5(rst),
        .O(fifo_wr_en_reg));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "63" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,rd_ptr,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,wr_ptr_reg__0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(wr_data[31:0]),
        .DIBDI(wr_data[63:32]),
        .DIPADIP({1'b1,1'b1,1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(rd_data[31:0]),
        .DOBDO(rd_data[63:32]),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_i_1_n_0),
        .ENBWREN(p_0_in_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(\state_reg[0] ),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rst),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rst),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({mem_reg_i_4_n_0,mem_reg_i_4_n_0,mem_reg_i_4_n_0,mem_reg_i_4_n_0,mem_reg_i_4_n_0,mem_reg_i_4_n_0,mem_reg_i_4_n_0,mem_reg_i_4_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    mem_reg_i_1
       (.I0(rst),
        .I1(\rd_ptr[3]_i_1_n_0 ),
        .O(mem_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    mem_reg_i_2
       (.I0(fifo_wr_en),
        .I1(usedw_reg__0[0]),
        .I2(usedw_reg__0[1]),
        .I3(usedw_reg__0[4]),
        .I4(usedw_reg__0[2]),
        .I5(usedw_reg__0[3]),
        .O(p_0_in_0));
  LUT1 #(
    .INIT(2'h1)) 
    mem_reg_i_4
       (.I0(rst),
        .O(mem_reg_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr[0]_i_1 
       (.I0(rd_ptr[0]),
        .O(\rd_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr[1]_i_1 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .O(\rd_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_ptr[2]_i_1 
       (.I0(rd_ptr[2]),
        .I1(rd_ptr[1]),
        .I2(rd_ptr[0]),
        .O(\rd_ptr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \rd_ptr[3]_i_1 
       (.I0(fifo_rd_en),
        .I1(usedw_reg__0[2]),
        .I2(usedw_reg__0[0]),
        .I3(usedw_reg__0[1]),
        .I4(usedw_reg__0[3]),
        .I5(usedw_reg__0[4]),
        .O(\rd_ptr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rd_ptr[3]_i_2 
       (.I0(rd_ptr[3]),
        .I1(rd_ptr[0]),
        .I2(rd_ptr[1]),
        .I3(rd_ptr[2]),
        .O(\rd_ptr[3]_i_2_n_0 ));
  FDRE \rd_ptr_reg[0] 
       (.C(clk),
        .CE(\rd_ptr[3]_i_1_n_0 ),
        .D(\rd_ptr[0]_i_1_n_0 ),
        .Q(rd_ptr[0]),
        .R(rst));
  FDRE \rd_ptr_reg[1] 
       (.C(clk),
        .CE(\rd_ptr[3]_i_1_n_0 ),
        .D(\rd_ptr[1]_i_1_n_0 ),
        .Q(rd_ptr[1]),
        .R(rst));
  FDRE \rd_ptr_reg[2] 
       (.C(clk),
        .CE(\rd_ptr[3]_i_1_n_0 ),
        .D(\rd_ptr[2]_i_1_n_0 ),
        .Q(rd_ptr[2]),
        .R(rst));
  FDRE \rd_ptr_reg[3] 
       (.C(clk),
        .CE(\rd_ptr[3]_i_1_n_0 ),
        .D(\rd_ptr[3]_i_2_n_0 ),
        .Q(rd_ptr[3]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \status_reg[2]_INST_0 
       (.I0(usedw_reg__0[3]),
        .I1(usedw_reg__0[2]),
        .I2(usedw_reg__0[4]),
        .I3(usedw_reg__0[1]),
        .I4(usedw_reg__0[0]),
        .O(status_reg));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \status_reg[3]_INST_0 
       (.I0(usedw_reg__0[4]),
        .I1(usedw_reg__0[3]),
        .I2(usedw_reg__0[1]),
        .I3(usedw_reg__0[0]),
        .I4(usedw_reg__0[2]),
        .O(\status_reg[3] ));
  LUT1 #(
    .INIT(2'h1)) 
    \usedw[0]_i_1 
       (.I0(usedw_reg__0[0]),
        .O(usedw[0]));
  LUT6 #(
    .INIT(64'h6969696969696B69)) 
    \usedw[1]_i_1 
       (.I0(fifo_wr_en),
        .I1(usedw_reg__0[0]),
        .I2(usedw_reg__0[1]),
        .I3(usedw_reg__0[4]),
        .I4(usedw_reg__0[2]),
        .I5(usedw_reg__0[3]),
        .O(\usedw[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0FFFF000FFF0040F)) 
    \usedw[2]_i_1 
       (.I0(usedw_reg__0[3]),
        .I1(usedw_reg__0[4]),
        .I2(usedw_reg__0[0]),
        .I3(fifo_wr_en),
        .I4(usedw_reg__0[2]),
        .I5(usedw_reg__0[1]),
        .O(usedw[2]));
  LUT6 #(
    .INIT(64'h7F7F8080FEFE1101)) 
    \usedw[3]_i_1 
       (.I0(usedw_reg__0[0]),
        .I1(usedw_reg__0[1]),
        .I2(fifo_wr_en),
        .I3(usedw_reg__0[4]),
        .I4(usedw_reg__0[3]),
        .I5(usedw_reg__0[2]),
        .O(usedw[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \usedw[4]_i_1 
       (.I0(\rd_ptr[3]_i_1_n_0 ),
        .I1(p_0_in_0),
        .O(\usedw[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F80FF00FF00EE01)) 
    \usedw[4]_i_2 
       (.I0(usedw_reg__0[0]),
        .I1(usedw_reg__0[1]),
        .I2(fifo_wr_en),
        .I3(usedw_reg__0[4]),
        .I4(usedw_reg__0[2]),
        .I5(usedw_reg__0[3]),
        .O(usedw[4]));
  FDRE \usedw_reg[0] 
       (.C(clk),
        .CE(\usedw[4]_i_1_n_0 ),
        .D(usedw[0]),
        .Q(usedw_reg__0[0]),
        .R(rst));
  FDRE \usedw_reg[1] 
       (.C(clk),
        .CE(\usedw[4]_i_1_n_0 ),
        .D(\usedw[1]_i_1_n_0 ),
        .Q(usedw_reg__0[1]),
        .R(rst));
  FDRE \usedw_reg[2] 
       (.C(clk),
        .CE(\usedw[4]_i_1_n_0 ),
        .D(usedw[2]),
        .Q(usedw_reg__0[2]),
        .R(rst));
  FDRE \usedw_reg[3] 
       (.C(clk),
        .CE(\usedw[4]_i_1_n_0 ),
        .D(usedw[3]),
        .Q(usedw_reg__0[3]),
        .R(rst));
  FDRE \usedw_reg[4] 
       (.C(clk),
        .CE(\usedw[4]_i_1_n_0 ),
        .D(usedw[4]),
        .Q(usedw_reg__0[4]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr[0]_i_1 
       (.I0(wr_ptr_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[1]_i_1 
       (.I0(wr_ptr_reg__0[0]),
        .I1(wr_ptr_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_ptr[2]_i_1 
       (.I0(wr_ptr_reg__0[2]),
        .I1(wr_ptr_reg__0[1]),
        .I2(wr_ptr_reg__0[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_ptr[3]_i_1 
       (.I0(wr_ptr_reg__0[3]),
        .I1(wr_ptr_reg__0[0]),
        .I2(wr_ptr_reg__0[1]),
        .I3(wr_ptr_reg__0[2]),
        .O(p_0_in[3]));
  FDRE \wr_ptr_reg[0] 
       (.C(clk),
        .CE(p_0_in_0),
        .D(p_0_in[0]),
        .Q(wr_ptr_reg__0[0]),
        .R(rst));
  FDRE \wr_ptr_reg[1] 
       (.C(clk),
        .CE(p_0_in_0),
        .D(p_0_in[1]),
        .Q(wr_ptr_reg__0[1]),
        .R(rst));
  FDRE \wr_ptr_reg[2] 
       (.C(clk),
        .CE(p_0_in_0),
        .D(p_0_in[2]),
        .Q(wr_ptr_reg__0[2]),
        .R(rst));
  FDRE \wr_ptr_reg[3] 
       (.C(clk),
        .CE(p_0_in_0),
        .D(p_0_in[3]),
        .Q(wr_ptr_reg__0[3]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "udp_frame_tx_min" *) 
module min_debug_bd_min_pcie_to_udp_debug_top_0_1_udp_frame_tx_min
   (tx_frame_count,
    fifo_rd_en,
    tx_axis_tkeep,
    tx_axis_tlast,
    mem_reg,
    tx_axis_tdata,
    rst,
    clk,
    rd_data,
    \usedw_reg[4] );
  output [31:0]tx_frame_count;
  output fifo_rd_en;
  output [1:0]tx_axis_tkeep;
  output tx_axis_tlast;
  output mem_reg;
  output [63:0]tx_axis_tdata;
  input rst;
  input clk;
  input [63:0]rd_data;
  input \usedw_reg[4] ;

  wire \beat_idx[0]_i_1_n_0 ;
  wire \beat_idx[1]_i_1_n_0 ;
  wire \beat_idx[2]_i_1_n_0 ;
  wire clk;
  wire fifo_rd_en;
  wire fifo_rd_en_i_1_n_0;
  wire [7:0]frame_byte;
  wire [7:0]frame_byte0;
  wire [7:0]frame_byte1;
  wire [7:0]frame_byte2;
  wire [7:0]frame_byte3;
  wire [7:0]frame_byte4;
  wire [7:0]frame_byte5;
  wire [7:0]frame_byte6;
  wire [5:3]idx;
  wire mem_reg;
  wire [63:0]rd_data;
  wire rst;
  wire \seq_cnt[31]_i_1_n_0 ;
  wire \seq_cnt[3]_i_2_n_0 ;
  wire \seq_cnt_reg[11]_i_1_n_0 ;
  wire \seq_cnt_reg[11]_i_1_n_1 ;
  wire \seq_cnt_reg[11]_i_1_n_2 ;
  wire \seq_cnt_reg[11]_i_1_n_3 ;
  wire \seq_cnt_reg[11]_i_1_n_4 ;
  wire \seq_cnt_reg[11]_i_1_n_5 ;
  wire \seq_cnt_reg[11]_i_1_n_6 ;
  wire \seq_cnt_reg[11]_i_1_n_7 ;
  wire \seq_cnt_reg[15]_i_1_n_0 ;
  wire \seq_cnt_reg[15]_i_1_n_1 ;
  wire \seq_cnt_reg[15]_i_1_n_2 ;
  wire \seq_cnt_reg[15]_i_1_n_3 ;
  wire \seq_cnt_reg[15]_i_1_n_4 ;
  wire \seq_cnt_reg[15]_i_1_n_5 ;
  wire \seq_cnt_reg[15]_i_1_n_6 ;
  wire \seq_cnt_reg[15]_i_1_n_7 ;
  wire \seq_cnt_reg[19]_i_1_n_0 ;
  wire \seq_cnt_reg[19]_i_1_n_1 ;
  wire \seq_cnt_reg[19]_i_1_n_2 ;
  wire \seq_cnt_reg[19]_i_1_n_3 ;
  wire \seq_cnt_reg[19]_i_1_n_4 ;
  wire \seq_cnt_reg[19]_i_1_n_5 ;
  wire \seq_cnt_reg[19]_i_1_n_6 ;
  wire \seq_cnt_reg[19]_i_1_n_7 ;
  wire \seq_cnt_reg[23]_i_1_n_0 ;
  wire \seq_cnt_reg[23]_i_1_n_1 ;
  wire \seq_cnt_reg[23]_i_1_n_2 ;
  wire \seq_cnt_reg[23]_i_1_n_3 ;
  wire \seq_cnt_reg[23]_i_1_n_4 ;
  wire \seq_cnt_reg[23]_i_1_n_5 ;
  wire \seq_cnt_reg[23]_i_1_n_6 ;
  wire \seq_cnt_reg[23]_i_1_n_7 ;
  wire \seq_cnt_reg[27]_i_1_n_0 ;
  wire \seq_cnt_reg[27]_i_1_n_1 ;
  wire \seq_cnt_reg[27]_i_1_n_2 ;
  wire \seq_cnt_reg[27]_i_1_n_3 ;
  wire \seq_cnt_reg[27]_i_1_n_4 ;
  wire \seq_cnt_reg[27]_i_1_n_5 ;
  wire \seq_cnt_reg[27]_i_1_n_6 ;
  wire \seq_cnt_reg[27]_i_1_n_7 ;
  wire \seq_cnt_reg[31]_i_2_n_1 ;
  wire \seq_cnt_reg[31]_i_2_n_2 ;
  wire \seq_cnt_reg[31]_i_2_n_3 ;
  wire \seq_cnt_reg[31]_i_2_n_4 ;
  wire \seq_cnt_reg[31]_i_2_n_5 ;
  wire \seq_cnt_reg[31]_i_2_n_6 ;
  wire \seq_cnt_reg[31]_i_2_n_7 ;
  wire \seq_cnt_reg[3]_i_1_n_0 ;
  wire \seq_cnt_reg[3]_i_1_n_1 ;
  wire \seq_cnt_reg[3]_i_1_n_2 ;
  wire \seq_cnt_reg[3]_i_1_n_3 ;
  wire \seq_cnt_reg[3]_i_1_n_4 ;
  wire \seq_cnt_reg[3]_i_1_n_5 ;
  wire \seq_cnt_reg[3]_i_1_n_6 ;
  wire \seq_cnt_reg[3]_i_1_n_7 ;
  wire \seq_cnt_reg[7]_i_1_n_0 ;
  wire \seq_cnt_reg[7]_i_1_n_1 ;
  wire \seq_cnt_reg[7]_i_1_n_2 ;
  wire \seq_cnt_reg[7]_i_1_n_3 ;
  wire \seq_cnt_reg[7]_i_1_n_4 ;
  wire \seq_cnt_reg[7]_i_1_n_5 ;
  wire \seq_cnt_reg[7]_i_1_n_6 ;
  wire \seq_cnt_reg[7]_i_1_n_7 ;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire [63:0]tx_axis_tdata;
  wire \tx_axis_tdata[63]_i_1_n_0 ;
  wire [1:0]tx_axis_tkeep;
  wire \tx_axis_tkeep[3]_i_1_n_0 ;
  wire \tx_axis_tkeep[7]_i_1_n_0 ;
  wire tx_axis_tlast;
  wire tx_axis_tlast_i_1_n_0;
  wire [31:0]tx_frame_count;
  wire \usedw_reg[4] ;
  wire [3:3]\NLW_seq_cnt_reg[31]_i_2_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hE4A4A4A4)) 
    \beat_idx[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(idx[3]),
        .I3(idx[4]),
        .I4(idx[5]),
        .O(\beat_idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hEE40AE40)) 
    \beat_idx[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(idx[3]),
        .I3(idx[4]),
        .I4(idx[5]),
        .O(\beat_idx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hEEEE4000)) 
    \beat_idx[2]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(idx[3]),
        .I3(idx[4]),
        .I4(idx[5]),
        .O(\beat_idx[2]_i_1_n_0 ));
  FDRE \beat_idx_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\beat_idx[0]_i_1_n_0 ),
        .Q(idx[3]),
        .R(rst));
  FDRE \beat_idx_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\beat_idx[1]_i_1_n_0 ),
        .Q(idx[4]),
        .R(rst));
  FDRE \beat_idx_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\beat_idx[2]_i_1_n_0 ),
        .Q(idx[5]),
        .R(rst));
  LUT4 #(
    .INIT(16'h0001)) 
    fifo_rd_en_i_1
       (.I0(\usedw_reg[4] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(rst),
        .O(fifo_rd_en_i_1_n_0));
  FDRE fifo_rd_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(fifo_rd_en_i_1_n_0),
        .Q(fifo_rd_en),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_i_3
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(mem_reg));
  LUT5 #(
    .INIT(32'h00800000)) 
    \seq_cnt[31]_i_1 
       (.I0(idx[5]),
        .I1(idx[4]),
        .I2(idx[3]),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\seq_cnt[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \seq_cnt[3]_i_2 
       (.I0(tx_frame_count[0]),
        .O(\seq_cnt[3]_i_2_n_0 ));
  FDRE \seq_cnt_reg[0] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[3]_i_1_n_7 ),
        .Q(tx_frame_count[0]),
        .R(rst));
  FDRE \seq_cnt_reg[10] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[11]_i_1_n_5 ),
        .Q(tx_frame_count[10]),
        .R(rst));
  FDRE \seq_cnt_reg[11] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[11]_i_1_n_4 ),
        .Q(tx_frame_count[11]),
        .R(rst));
  CARRY4 \seq_cnt_reg[11]_i_1 
       (.CI(\seq_cnt_reg[7]_i_1_n_0 ),
        .CO({\seq_cnt_reg[11]_i_1_n_0 ,\seq_cnt_reg[11]_i_1_n_1 ,\seq_cnt_reg[11]_i_1_n_2 ,\seq_cnt_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\seq_cnt_reg[11]_i_1_n_4 ,\seq_cnt_reg[11]_i_1_n_5 ,\seq_cnt_reg[11]_i_1_n_6 ,\seq_cnt_reg[11]_i_1_n_7 }),
        .S(tx_frame_count[11:8]));
  FDRE \seq_cnt_reg[12] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[15]_i_1_n_7 ),
        .Q(tx_frame_count[12]),
        .R(rst));
  FDRE \seq_cnt_reg[13] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[15]_i_1_n_6 ),
        .Q(tx_frame_count[13]),
        .R(rst));
  FDRE \seq_cnt_reg[14] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[15]_i_1_n_5 ),
        .Q(tx_frame_count[14]),
        .R(rst));
  FDRE \seq_cnt_reg[15] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[15]_i_1_n_4 ),
        .Q(tx_frame_count[15]),
        .R(rst));
  CARRY4 \seq_cnt_reg[15]_i_1 
       (.CI(\seq_cnt_reg[11]_i_1_n_0 ),
        .CO({\seq_cnt_reg[15]_i_1_n_0 ,\seq_cnt_reg[15]_i_1_n_1 ,\seq_cnt_reg[15]_i_1_n_2 ,\seq_cnt_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\seq_cnt_reg[15]_i_1_n_4 ,\seq_cnt_reg[15]_i_1_n_5 ,\seq_cnt_reg[15]_i_1_n_6 ,\seq_cnt_reg[15]_i_1_n_7 }),
        .S(tx_frame_count[15:12]));
  FDRE \seq_cnt_reg[16] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[19]_i_1_n_7 ),
        .Q(tx_frame_count[16]),
        .R(rst));
  FDRE \seq_cnt_reg[17] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[19]_i_1_n_6 ),
        .Q(tx_frame_count[17]),
        .R(rst));
  FDRE \seq_cnt_reg[18] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[19]_i_1_n_5 ),
        .Q(tx_frame_count[18]),
        .R(rst));
  FDRE \seq_cnt_reg[19] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[19]_i_1_n_4 ),
        .Q(tx_frame_count[19]),
        .R(rst));
  CARRY4 \seq_cnt_reg[19]_i_1 
       (.CI(\seq_cnt_reg[15]_i_1_n_0 ),
        .CO({\seq_cnt_reg[19]_i_1_n_0 ,\seq_cnt_reg[19]_i_1_n_1 ,\seq_cnt_reg[19]_i_1_n_2 ,\seq_cnt_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\seq_cnt_reg[19]_i_1_n_4 ,\seq_cnt_reg[19]_i_1_n_5 ,\seq_cnt_reg[19]_i_1_n_6 ,\seq_cnt_reg[19]_i_1_n_7 }),
        .S(tx_frame_count[19:16]));
  FDRE \seq_cnt_reg[1] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[3]_i_1_n_6 ),
        .Q(tx_frame_count[1]),
        .R(rst));
  FDRE \seq_cnt_reg[20] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[23]_i_1_n_7 ),
        .Q(tx_frame_count[20]),
        .R(rst));
  FDRE \seq_cnt_reg[21] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[23]_i_1_n_6 ),
        .Q(tx_frame_count[21]),
        .R(rst));
  FDRE \seq_cnt_reg[22] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[23]_i_1_n_5 ),
        .Q(tx_frame_count[22]),
        .R(rst));
  FDRE \seq_cnt_reg[23] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[23]_i_1_n_4 ),
        .Q(tx_frame_count[23]),
        .R(rst));
  CARRY4 \seq_cnt_reg[23]_i_1 
       (.CI(\seq_cnt_reg[19]_i_1_n_0 ),
        .CO({\seq_cnt_reg[23]_i_1_n_0 ,\seq_cnt_reg[23]_i_1_n_1 ,\seq_cnt_reg[23]_i_1_n_2 ,\seq_cnt_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\seq_cnt_reg[23]_i_1_n_4 ,\seq_cnt_reg[23]_i_1_n_5 ,\seq_cnt_reg[23]_i_1_n_6 ,\seq_cnt_reg[23]_i_1_n_7 }),
        .S(tx_frame_count[23:20]));
  FDRE \seq_cnt_reg[24] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[27]_i_1_n_7 ),
        .Q(tx_frame_count[24]),
        .R(rst));
  FDRE \seq_cnt_reg[25] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[27]_i_1_n_6 ),
        .Q(tx_frame_count[25]),
        .R(rst));
  FDRE \seq_cnt_reg[26] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[27]_i_1_n_5 ),
        .Q(tx_frame_count[26]),
        .R(rst));
  FDRE \seq_cnt_reg[27] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[27]_i_1_n_4 ),
        .Q(tx_frame_count[27]),
        .R(rst));
  CARRY4 \seq_cnt_reg[27]_i_1 
       (.CI(\seq_cnt_reg[23]_i_1_n_0 ),
        .CO({\seq_cnt_reg[27]_i_1_n_0 ,\seq_cnt_reg[27]_i_1_n_1 ,\seq_cnt_reg[27]_i_1_n_2 ,\seq_cnt_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\seq_cnt_reg[27]_i_1_n_4 ,\seq_cnt_reg[27]_i_1_n_5 ,\seq_cnt_reg[27]_i_1_n_6 ,\seq_cnt_reg[27]_i_1_n_7 }),
        .S(tx_frame_count[27:24]));
  FDRE \seq_cnt_reg[28] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[31]_i_2_n_7 ),
        .Q(tx_frame_count[28]),
        .R(rst));
  FDRE \seq_cnt_reg[29] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[31]_i_2_n_6 ),
        .Q(tx_frame_count[29]),
        .R(rst));
  FDRE \seq_cnt_reg[2] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[3]_i_1_n_5 ),
        .Q(tx_frame_count[2]),
        .R(rst));
  FDRE \seq_cnt_reg[30] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[31]_i_2_n_5 ),
        .Q(tx_frame_count[30]),
        .R(rst));
  FDRE \seq_cnt_reg[31] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[31]_i_2_n_4 ),
        .Q(tx_frame_count[31]),
        .R(rst));
  CARRY4 \seq_cnt_reg[31]_i_2 
       (.CI(\seq_cnt_reg[27]_i_1_n_0 ),
        .CO({\NLW_seq_cnt_reg[31]_i_2_CO_UNCONNECTED [3],\seq_cnt_reg[31]_i_2_n_1 ,\seq_cnt_reg[31]_i_2_n_2 ,\seq_cnt_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\seq_cnt_reg[31]_i_2_n_4 ,\seq_cnt_reg[31]_i_2_n_5 ,\seq_cnt_reg[31]_i_2_n_6 ,\seq_cnt_reg[31]_i_2_n_7 }),
        .S(tx_frame_count[31:28]));
  FDRE \seq_cnt_reg[3] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[3]_i_1_n_4 ),
        .Q(tx_frame_count[3]),
        .R(rst));
  CARRY4 \seq_cnt_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\seq_cnt_reg[3]_i_1_n_0 ,\seq_cnt_reg[3]_i_1_n_1 ,\seq_cnt_reg[3]_i_1_n_2 ,\seq_cnt_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\seq_cnt_reg[3]_i_1_n_4 ,\seq_cnt_reg[3]_i_1_n_5 ,\seq_cnt_reg[3]_i_1_n_6 ,\seq_cnt_reg[3]_i_1_n_7 }),
        .S({tx_frame_count[3:1],\seq_cnt[3]_i_2_n_0 }));
  FDRE \seq_cnt_reg[4] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[7]_i_1_n_7 ),
        .Q(tx_frame_count[4]),
        .R(rst));
  FDRE \seq_cnt_reg[5] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[7]_i_1_n_6 ),
        .Q(tx_frame_count[5]),
        .R(rst));
  FDRE \seq_cnt_reg[6] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[7]_i_1_n_5 ),
        .Q(tx_frame_count[6]),
        .R(rst));
  FDRE \seq_cnt_reg[7] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[7]_i_1_n_4 ),
        .Q(tx_frame_count[7]),
        .R(rst));
  CARRY4 \seq_cnt_reg[7]_i_1 
       (.CI(\seq_cnt_reg[3]_i_1_n_0 ),
        .CO({\seq_cnt_reg[7]_i_1_n_0 ,\seq_cnt_reg[7]_i_1_n_1 ,\seq_cnt_reg[7]_i_1_n_2 ,\seq_cnt_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\seq_cnt_reg[7]_i_1_n_4 ,\seq_cnt_reg[7]_i_1_n_5 ,\seq_cnt_reg[7]_i_1_n_6 ,\seq_cnt_reg[7]_i_1_n_7 }),
        .S(tx_frame_count[7:4]));
  FDRE \seq_cnt_reg[8] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[11]_i_1_n_7 ),
        .Q(tx_frame_count[8]),
        .R(rst));
  FDRE \seq_cnt_reg[9] 
       (.C(clk),
        .CE(\seq_cnt[31]_i_1_n_0 ),
        .D(\seq_cnt_reg[11]_i_1_n_6 ),
        .Q(tx_frame_count[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00008985)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state[1]_i_2_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\usedw_reg[4] ),
        .I4(rst),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00009B88)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\usedw_reg[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(rst),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h15555555)) 
    \state[1]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(idx[3]),
        .I3(idx[4]),
        .I4(idx[5]),
        .O(\state[1]_i_2_n_0 ));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h380C)) 
    \tx_axis_tdata[0]_i_1 
       (.I0(rd_data[40]),
        .I1(idx[5]),
        .I2(idx[3]),
        .I3(idx[4]),
        .O(frame_byte6[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0E06)) 
    \tx_axis_tdata[10]_i_1 
       (.I0(idx[4]),
        .I1(idx[5]),
        .I2(idx[3]),
        .I3(rd_data[34]),
        .O(frame_byte5[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \tx_axis_tdata[11]_i_1 
       (.I0(idx[3]),
        .I1(idx[4]),
        .I2(rd_data[35]),
        .I3(idx[5]),
        .O(frame_byte5[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \tx_axis_tdata[12]_i_1 
       (.I0(rd_data[36]),
        .I1(idx[5]),
        .I2(idx[4]),
        .I3(idx[3]),
        .O(frame_byte5[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0E06)) 
    \tx_axis_tdata[13]_i_1 
       (.I0(idx[4]),
        .I1(idx[5]),
        .I2(idx[3]),
        .I3(rd_data[37]),
        .O(frame_byte5[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \tx_axis_tdata[14]_i_1 
       (.I0(idx[3]),
        .I1(idx[5]),
        .I2(rd_data[38]),
        .I3(idx[4]),
        .O(frame_byte5[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \tx_axis_tdata[15]_i_1 
       (.I0(rd_data[39]),
        .I1(idx[5]),
        .I2(idx[4]),
        .I3(idx[3]),
        .O(frame_byte5[7]));
  LUT5 #(
    .INIT(32'h50D000D0)) 
    \tx_axis_tdata[16]_i_1 
       (.I0(idx[3]),
        .I1(tx_frame_count[24]),
        .I2(idx[5]),
        .I3(idx[4]),
        .I4(rd_data[24]),
        .O(frame_byte4[0]));
  LUT5 #(
    .INIT(32'h50D000D0)) 
    \tx_axis_tdata[17]_i_1 
       (.I0(idx[3]),
        .I1(tx_frame_count[25]),
        .I2(idx[5]),
        .I3(idx[4]),
        .I4(rd_data[25]),
        .O(frame_byte4[1]));
  LUT5 #(
    .INIT(32'h38000800)) 
    \tx_axis_tdata[18]_i_1 
       (.I0(tx_frame_count[26]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(rd_data[26]),
        .O(frame_byte4[2]));
  LUT5 #(
    .INIT(32'h38000800)) 
    \tx_axis_tdata[19]_i_1 
       (.I0(tx_frame_count[27]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(rd_data[27]),
        .O(frame_byte4[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h2C03)) 
    \tx_axis_tdata[1]_i_1 
       (.I0(rd_data[41]),
        .I1(idx[3]),
        .I2(idx[5]),
        .I3(idx[4]),
        .O(frame_byte6[1]));
  LUT5 #(
    .INIT(32'h50D000D0)) 
    \tx_axis_tdata[20]_i_1 
       (.I0(idx[3]),
        .I1(tx_frame_count[28]),
        .I2(idx[5]),
        .I3(idx[4]),
        .I4(rd_data[28]),
        .O(frame_byte4[4]));
  LUT5 #(
    .INIT(32'h38000800)) 
    \tx_axis_tdata[21]_i_1 
       (.I0(tx_frame_count[29]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(rd_data[29]),
        .O(frame_byte4[5]));
  LUT5 #(
    .INIT(32'h38C008C0)) 
    \tx_axis_tdata[22]_i_1 
       (.I0(tx_frame_count[30]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(rd_data[30]),
        .O(frame_byte4[6]));
  LUT5 #(
    .INIT(32'h38C008C0)) 
    \tx_axis_tdata[23]_i_1 
       (.I0(tx_frame_count[31]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(rd_data[31]),
        .O(frame_byte4[7]));
  LUT5 #(
    .INIT(32'h380C080C)) 
    \tx_axis_tdata[24]_i_1 
       (.I0(tx_frame_count[16]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(rd_data[16]),
        .O(frame_byte3[0]));
  LUT5 #(
    .INIT(32'h38000800)) 
    \tx_axis_tdata[25]_i_1 
       (.I0(tx_frame_count[17]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(rd_data[17]),
        .O(frame_byte3[1]));
  LUT5 #(
    .INIT(32'h38000800)) 
    \tx_axis_tdata[26]_i_1 
       (.I0(tx_frame_count[18]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(rd_data[18]),
        .O(frame_byte3[2]));
  LUT5 #(
    .INIT(32'h0CF0AF00)) 
    \tx_axis_tdata[27]_i_1 
       (.I0(rd_data[19]),
        .I1(tx_frame_count[19]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(idx[3]),
        .O(frame_byte3[3]));
  LUT5 #(
    .INIT(32'h38000800)) 
    \tx_axis_tdata[28]_i_1 
       (.I0(tx_frame_count[20]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(rd_data[20]),
        .O(frame_byte3[4]));
  LUT5 #(
    .INIT(32'h38C008C0)) 
    \tx_axis_tdata[29]_i_1 
       (.I0(tx_frame_count[21]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(rd_data[21]),
        .O(frame_byte3[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4808)) 
    \tx_axis_tdata[2]_i_1 
       (.I0(idx[3]),
        .I1(idx[4]),
        .I2(idx[5]),
        .I3(rd_data[42]),
        .O(frame_byte6[2]));
  LUT5 #(
    .INIT(32'h38000800)) 
    \tx_axis_tdata[30]_i_1 
       (.I0(tx_frame_count[22]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(rd_data[22]),
        .O(frame_byte3[6]));
  LUT5 #(
    .INIT(32'h0CF0AF00)) 
    \tx_axis_tdata[31]_i_1 
       (.I0(rd_data[23]),
        .I1(tx_frame_count[23]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(idx[3]),
        .O(frame_byte3[7]));
  LUT5 #(
    .INIT(32'h0CF0AF00)) 
    \tx_axis_tdata[32]_i_1 
       (.I0(rd_data[8]),
        .I1(tx_frame_count[8]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(idx[3]),
        .O(frame_byte2[0]));
  LUT5 #(
    .INIT(32'h50D000D0)) 
    \tx_axis_tdata[33]_i_1 
       (.I0(idx[3]),
        .I1(tx_frame_count[9]),
        .I2(idx[5]),
        .I3(idx[4]),
        .I4(rd_data[9]),
        .O(frame_byte2[1]));
  LUT5 #(
    .INIT(32'h50D000D0)) 
    \tx_axis_tdata[34]_i_1 
       (.I0(idx[3]),
        .I1(tx_frame_count[10]),
        .I2(idx[5]),
        .I3(idx[4]),
        .I4(rd_data[10]),
        .O(frame_byte2[2]));
  LUT5 #(
    .INIT(32'h380C080C)) 
    \tx_axis_tdata[35]_i_1 
       (.I0(tx_frame_count[11]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(rd_data[11]),
        .O(frame_byte2[3]));
  LUT5 #(
    .INIT(32'h50D000D0)) 
    \tx_axis_tdata[36]_i_1 
       (.I0(idx[3]),
        .I1(tx_frame_count[12]),
        .I2(idx[5]),
        .I3(idx[4]),
        .I4(rd_data[12]),
        .O(frame_byte2[4]));
  LUT5 #(
    .INIT(32'h38000800)) 
    \tx_axis_tdata[37]_i_1 
       (.I0(tx_frame_count[13]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(rd_data[13]),
        .O(frame_byte2[5]));
  LUT5 #(
    .INIT(32'h380C080C)) 
    \tx_axis_tdata[38]_i_1 
       (.I0(rd_data[14]),
        .I1(idx[4]),
        .I2(idx[3]),
        .I3(idx[5]),
        .I4(tx_frame_count[14]),
        .O(frame_byte2[6]));
  LUT5 #(
    .INIT(32'h38000800)) 
    \tx_axis_tdata[39]_i_1 
       (.I0(tx_frame_count[15]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(rd_data[15]),
        .O(frame_byte2[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \tx_axis_tdata[3]_i_1 
       (.I0(rd_data[43]),
        .I1(idx[5]),
        .I2(idx[4]),
        .I3(idx[3]),
        .O(frame_byte6[3]));
  LUT5 #(
    .INIT(32'h38000800)) 
    \tx_axis_tdata[40]_i_1 
       (.I0(tx_frame_count[0]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(rd_data[0]),
        .O(frame_byte1[0]));
  LUT5 #(
    .INIT(32'h2CC32C03)) 
    \tx_axis_tdata[41]_i_1 
       (.I0(tx_frame_count[1]),
        .I1(idx[4]),
        .I2(idx[5]),
        .I3(idx[3]),
        .I4(rd_data[1]),
        .O(frame_byte1[1]));
  LUT5 #(
    .INIT(32'h38000800)) 
    \tx_axis_tdata[42]_i_1 
       (.I0(tx_frame_count[2]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(rd_data[2]),
        .O(frame_byte1[2]));
  LUT5 #(
    .INIT(32'h38C008C0)) 
    \tx_axis_tdata[43]_i_1 
       (.I0(tx_frame_count[3]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(rd_data[3]),
        .O(frame_byte1[3]));
  LUT5 #(
    .INIT(32'h50D000D0)) 
    \tx_axis_tdata[44]_i_1 
       (.I0(idx[3]),
        .I1(tx_frame_count[4]),
        .I2(idx[5]),
        .I3(idx[4]),
        .I4(rd_data[4]),
        .O(frame_byte1[4]));
  LUT5 #(
    .INIT(32'h50D000D0)) 
    \tx_axis_tdata[45]_i_1 
       (.I0(idx[3]),
        .I1(tx_frame_count[5]),
        .I2(idx[5]),
        .I3(idx[4]),
        .I4(rd_data[5]),
        .O(frame_byte1[5]));
  LUT5 #(
    .INIT(32'h50D000D0)) 
    \tx_axis_tdata[46]_i_1 
       (.I0(idx[3]),
        .I1(tx_frame_count[6]),
        .I2(idx[5]),
        .I3(idx[4]),
        .I4(rd_data[6]),
        .O(frame_byte1[6]));
  LUT5 #(
    .INIT(32'h38000800)) 
    \tx_axis_tdata[47]_i_1 
       (.I0(tx_frame_count[7]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .I4(rd_data[7]),
        .O(frame_byte1[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \tx_axis_tdata[48]_i_1 
       (.I0(idx[4]),
        .I1(idx[3]),
        .I2(rd_data[56]),
        .I3(idx[5]),
        .O(frame_byte0[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0083)) 
    \tx_axis_tdata[49]_i_1 
       (.I0(rd_data[57]),
        .I1(idx[5]),
        .I2(idx[3]),
        .I3(idx[4]),
        .O(frame_byte0[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4808)) 
    \tx_axis_tdata[4]_i_1 
       (.I0(idx[3]),
        .I1(idx[4]),
        .I2(idx[5]),
        .I3(rd_data[44]),
        .O(frame_byte6[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \tx_axis_tdata[50]_i_1 
       (.I0(idx[4]),
        .I1(idx[3]),
        .I2(rd_data[58]),
        .I3(idx[5]),
        .O(frame_byte0[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \tx_axis_tdata[51]_i_1 
       (.I0(rd_data[59]),
        .I1(idx[5]),
        .I2(idx[3]),
        .I3(idx[4]),
        .O(frame_byte0[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \tx_axis_tdata[52]_i_1 
       (.I0(rd_data[60]),
        .I1(idx[5]),
        .I2(idx[3]),
        .I3(idx[4]),
        .O(frame_byte0[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \tx_axis_tdata[53]_i_1 
       (.I0(rd_data[61]),
        .I1(idx[5]),
        .I2(idx[3]),
        .I3(idx[4]),
        .O(frame_byte0[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h08FC)) 
    \tx_axis_tdata[54]_i_1 
       (.I0(rd_data[62]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .O(frame_byte0[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h4088)) 
    \tx_axis_tdata[55]_i_1 
       (.I0(idx[4]),
        .I1(idx[3]),
        .I2(rd_data[63]),
        .I3(idx[5]),
        .O(frame_byte0[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0830)) 
    \tx_axis_tdata[56]_i_1 
       (.I0(rd_data[48]),
        .I1(idx[3]),
        .I2(idx[4]),
        .I3(idx[5]),
        .O(frame_byte[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \tx_axis_tdata[57]_i_1 
       (.I0(rd_data[49]),
        .I1(idx[5]),
        .I2(idx[3]),
        .I3(idx[4]),
        .O(frame_byte[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \tx_axis_tdata[58]_i_1 
       (.I0(rd_data[50]),
        .I1(idx[5]),
        .I2(idx[3]),
        .I3(idx[4]),
        .O(frame_byte[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0AD0)) 
    \tx_axis_tdata[59]_i_1 
       (.I0(idx[3]),
        .I1(rd_data[51]),
        .I2(idx[5]),
        .I3(idx[4]),
        .O(frame_byte[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4808)) 
    \tx_axis_tdata[5]_i_1 
       (.I0(idx[3]),
        .I1(idx[4]),
        .I2(idx[5]),
        .I3(rd_data[45]),
        .O(frame_byte6[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h4066)) 
    \tx_axis_tdata[60]_i_1 
       (.I0(idx[4]),
        .I1(idx[5]),
        .I2(rd_data[52]),
        .I3(idx[3]),
        .O(frame_byte[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h4088)) 
    \tx_axis_tdata[61]_i_1 
       (.I0(idx[4]),
        .I1(idx[3]),
        .I2(rd_data[53]),
        .I3(idx[5]),
        .O(frame_byte[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \tx_axis_tdata[62]_i_1 
       (.I0(rd_data[54]),
        .I1(idx[5]),
        .I2(idx[3]),
        .I3(idx[4]),
        .O(frame_byte[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \tx_axis_tdata[63]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\tx_axis_tdata[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h20C0)) 
    \tx_axis_tdata[63]_i_2 
       (.I0(rd_data[55]),
        .I1(idx[4]),
        .I2(idx[3]),
        .I3(idx[5]),
        .O(frame_byte[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \tx_axis_tdata[6]_i_1 
       (.I0(rd_data[46]),
        .I1(idx[5]),
        .I2(idx[4]),
        .I3(idx[3]),
        .O(frame_byte6[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4808)) 
    \tx_axis_tdata[7]_i_1 
       (.I0(idx[3]),
        .I1(idx[4]),
        .I2(idx[5]),
        .I3(rd_data[47]),
        .O(frame_byte6[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \tx_axis_tdata[8]_i_1 
       (.I0(rd_data[32]),
        .I1(idx[5]),
        .I2(idx[4]),
        .I3(idx[3]),
        .O(frame_byte5[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h4808)) 
    \tx_axis_tdata[9]_i_1 
       (.I0(idx[3]),
        .I1(idx[4]),
        .I2(idx[5]),
        .I3(rd_data[33]),
        .O(frame_byte5[1]));
  FDRE \tx_axis_tdata_reg[0] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte6[0]),
        .Q(tx_axis_tdata[0]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[10] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte5[2]),
        .Q(tx_axis_tdata[10]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[11] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte5[3]),
        .Q(tx_axis_tdata[11]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[12] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte5[4]),
        .Q(tx_axis_tdata[12]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[13] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte5[5]),
        .Q(tx_axis_tdata[13]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[14] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte5[6]),
        .Q(tx_axis_tdata[14]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[15] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte5[7]),
        .Q(tx_axis_tdata[15]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[16] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte4[0]),
        .Q(tx_axis_tdata[16]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[17] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte4[1]),
        .Q(tx_axis_tdata[17]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[18] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte4[2]),
        .Q(tx_axis_tdata[18]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[19] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte4[3]),
        .Q(tx_axis_tdata[19]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[1] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte6[1]),
        .Q(tx_axis_tdata[1]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[20] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte4[4]),
        .Q(tx_axis_tdata[20]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[21] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte4[5]),
        .Q(tx_axis_tdata[21]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[22] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte4[6]),
        .Q(tx_axis_tdata[22]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[23] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte4[7]),
        .Q(tx_axis_tdata[23]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[24] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte3[0]),
        .Q(tx_axis_tdata[24]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[25] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte3[1]),
        .Q(tx_axis_tdata[25]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[26] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte3[2]),
        .Q(tx_axis_tdata[26]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[27] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte3[3]),
        .Q(tx_axis_tdata[27]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[28] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte3[4]),
        .Q(tx_axis_tdata[28]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[29] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte3[5]),
        .Q(tx_axis_tdata[29]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[2] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte6[2]),
        .Q(tx_axis_tdata[2]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[30] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte3[6]),
        .Q(tx_axis_tdata[30]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[31] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte3[7]),
        .Q(tx_axis_tdata[31]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[32] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte2[0]),
        .Q(tx_axis_tdata[32]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[33] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte2[1]),
        .Q(tx_axis_tdata[33]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[34] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte2[2]),
        .Q(tx_axis_tdata[34]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[35] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte2[3]),
        .Q(tx_axis_tdata[35]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[36] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte2[4]),
        .Q(tx_axis_tdata[36]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[37] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte2[5]),
        .Q(tx_axis_tdata[37]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[38] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte2[6]),
        .Q(tx_axis_tdata[38]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[39] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte2[7]),
        .Q(tx_axis_tdata[39]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[3] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte6[3]),
        .Q(tx_axis_tdata[3]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[40] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte1[0]),
        .Q(tx_axis_tdata[40]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[41] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte1[1]),
        .Q(tx_axis_tdata[41]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[42] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte1[2]),
        .Q(tx_axis_tdata[42]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[43] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte1[3]),
        .Q(tx_axis_tdata[43]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[44] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte1[4]),
        .Q(tx_axis_tdata[44]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[45] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte1[5]),
        .Q(tx_axis_tdata[45]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[46] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte1[6]),
        .Q(tx_axis_tdata[46]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[47] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte1[7]),
        .Q(tx_axis_tdata[47]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[48] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte0[0]),
        .Q(tx_axis_tdata[48]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[49] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte0[1]),
        .Q(tx_axis_tdata[49]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[4] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte6[4]),
        .Q(tx_axis_tdata[4]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[50] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte0[2]),
        .Q(tx_axis_tdata[50]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[51] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte0[3]),
        .Q(tx_axis_tdata[51]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[52] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte0[4]),
        .Q(tx_axis_tdata[52]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[53] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte0[5]),
        .Q(tx_axis_tdata[53]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[54] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte0[6]),
        .Q(tx_axis_tdata[54]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[55] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte0[7]),
        .Q(tx_axis_tdata[55]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[56] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte[0]),
        .Q(tx_axis_tdata[56]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[57] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte[1]),
        .Q(tx_axis_tdata[57]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[58] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte[2]),
        .Q(tx_axis_tdata[58]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[59] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte[3]),
        .Q(tx_axis_tdata[59]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[5] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte6[5]),
        .Q(tx_axis_tdata[5]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[60] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte[4]),
        .Q(tx_axis_tdata[60]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[61] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte[5]),
        .Q(tx_axis_tdata[61]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[62] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte[6]),
        .Q(tx_axis_tdata[62]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[63] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte[7]),
        .Q(tx_axis_tdata[63]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[6] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte6[6]),
        .Q(tx_axis_tdata[6]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[7] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte6[7]),
        .Q(tx_axis_tdata[7]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[8] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte5[0]),
        .Q(tx_axis_tdata[8]),
        .R(rst));
  FDRE \tx_axis_tdata_reg[9] 
       (.C(clk),
        .CE(\tx_axis_tdata[63]_i_1_n_0 ),
        .D(frame_byte5[1]),
        .Q(tx_axis_tdata[9]),
        .R(rst));
  LUT3 #(
    .INIT(8'hE2)) 
    \tx_axis_tkeep[3]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(tx_axis_tkeep[0]),
        .O(\tx_axis_tkeep[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2AAA00002AAA)) 
    \tx_axis_tkeep[7]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(idx[5]),
        .I2(idx[4]),
        .I3(idx[3]),
        .I4(\state_reg_n_0_[0] ),
        .I5(tx_axis_tkeep[1]),
        .O(\tx_axis_tkeep[7]_i_1_n_0 ));
  FDRE \tx_axis_tkeep_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_axis_tkeep[3]_i_1_n_0 ),
        .Q(tx_axis_tkeep[0]),
        .R(rst));
  FDRE \tx_axis_tkeep_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_axis_tkeep[7]_i_1_n_0 ),
        .Q(tx_axis_tkeep[1]),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFF800000008000)) 
    tx_axis_tlast_i_1
       (.I0(idx[5]),
        .I1(idx[4]),
        .I2(idx[3]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(tx_axis_tlast),
        .O(tx_axis_tlast_i_1_n_0));
  FDRE tx_axis_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_axis_tlast_i_1_n_0),
        .Q(tx_axis_tlast),
        .R(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
