// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Apr  1 10:04:53 2026
// Host        : DESKTOP-IR4AFNC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Controler/Controler/Controler.srcs/sources_1/bd/loopback_debug_bd/ip/loopback_debug_bd_min_optical_loopback_debug_top_0_0/loopback_debug_bd_min_optical_loopback_debug_top_0_0_sim_netlist.v
// Design      : loopback_debug_bd_min_optical_loopback_debug_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "loopback_debug_bd_min_optical_loopback_debug_top_0_0,min_optical_loopback_debug_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "min_optical_loopback_debug_top,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module loopback_debug_bd_min_optical_loopback_debug_top_0_0
   (clk,
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
    gtx_tx_word_index);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN loopback_debug_bd_clk" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
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

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [31:0]crc_error_count;
  wire [31:0]format_error_count;
  wire [31:0]gtx_tx_data;
  wire gtx_tx_last;
  wire gtx_tx_valid;
  wire [31:0]gtx_tx_word_count;
  wire [0:0]\^gtx_tx_word_index ;
  wire [31:0]last_rx_addr;
  wire [31:0]last_rx_data;
  wire [31:0]last_rx_seq;
  wire [31:0]match_count;
  wire [63:0]optical_tx_data;
  wire [6:6]\^optical_tx_keep ;
  wire optical_tx_last;
  wire optical_tx_valid;
  wire [31:0]pcie_wr_addr;
  wire [31:0]pcie_wr_data;
  wire pcie_wr_en;
  wire rst;
  wire [31:0]rx_frame_count;
  wire [31:2]\^status_reg ;
  wire [31:0]tx_frame_count;

  assign gtx_tx_word_index[1] = \<const0> ;
  assign gtx_tx_word_index[0] = \^gtx_tx_word_index [0];
  assign optical_status[31] = \<const0> ;
  assign optical_status[30] = \<const0> ;
  assign optical_status[29] = \<const0> ;
  assign optical_status[28] = \<const0> ;
  assign optical_status[27] = \<const0> ;
  assign optical_status[26] = \<const0> ;
  assign optical_status[25] = \<const0> ;
  assign optical_status[24] = \<const0> ;
  assign optical_status[23] = \<const0> ;
  assign optical_status[22] = \<const0> ;
  assign optical_status[21] = \<const0> ;
  assign optical_status[20] = \<const0> ;
  assign optical_status[19] = \<const0> ;
  assign optical_status[18] = \<const0> ;
  assign optical_status[17] = \<const0> ;
  assign optical_status[16] = \<const0> ;
  assign optical_status[15] = \<const0> ;
  assign optical_status[14] = \<const0> ;
  assign optical_status[13] = \<const0> ;
  assign optical_status[12] = \<const0> ;
  assign optical_status[11] = \<const0> ;
  assign optical_status[10] = \<const0> ;
  assign optical_status[9] = \<const0> ;
  assign optical_status[8] = \<const0> ;
  assign optical_status[7] = \<const0> ;
  assign optical_status[6] = \<const0> ;
  assign optical_status[5] = \<const0> ;
  assign optical_status[4] = \<const1> ;
  assign optical_status[3] = \<const1> ;
  assign optical_status[2] = \<const1> ;
  assign optical_status[1] = \<const0> ;
  assign optical_status[0] = \<const1> ;
  assign optical_tx_keep[7] = \^optical_tx_keep [6];
  assign optical_tx_keep[6] = \^optical_tx_keep [6];
  assign optical_tx_keep[5] = \^optical_tx_keep [6];
  assign optical_tx_keep[4] = \^optical_tx_keep [6];
  assign optical_tx_keep[3] = \^optical_tx_keep [6];
  assign optical_tx_keep[2] = \^optical_tx_keep [6];
  assign optical_tx_keep[1] = \^optical_tx_keep [6];
  assign optical_tx_keep[0] = \^optical_tx_keep [6];
  assign status_reg[31:2] = \^status_reg [31:2];
  assign status_reg[1] = \<const1> ;
  assign status_reg[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  loopback_debug_bd_min_optical_loopback_debug_top_0_0_min_optical_loopback_debug_top inst
       (.Q(gtx_tx_data),
        .clk(clk),
        .crc_error_count(crc_error_count),
        .format_error_count(format_error_count),
        .gtx_tx_last(gtx_tx_last),
        .gtx_tx_valid(gtx_tx_valid),
        .gtx_tx_word_count(gtx_tx_word_count),
        .gtx_tx_word_index(\^gtx_tx_word_index ),
        .last_rx_addr(last_rx_addr),
        .last_rx_data(last_rx_data),
        .last_rx_seq(last_rx_seq),
        .match_count(match_count),
        .optical_tx_data(optical_tx_data),
        .optical_tx_keep(\^optical_tx_keep ),
        .optical_tx_last(optical_tx_last),
        .optical_tx_valid(optical_tx_valid),
        .pcie_wr_addr(pcie_wr_addr),
        .pcie_wr_data(pcie_wr_data),
        .pcie_wr_en(pcie_wr_en),
        .rst(rst),
        .rx_frame_count(rx_frame_count),
        .status_reg({\^status_reg [31:4],\^status_reg [2]}),
        .status_reg_3_sp_1(\^status_reg [3]),
        .tx_frame_count(tx_frame_count));
endmodule

(* ORIG_REF_NAME = "custom_optical_tx" *) 
module loopback_debug_bd_min_optical_loopback_debug_top_0_0_custom_optical_tx
   (fifo_rd_en,
    \tx_frame_count[0] ,
    S,
    \tx_frame_count[7] ,
    \tx_frame_count[11] ,
    \tx_frame_count[15] ,
    \tx_frame_count[19] ,
    \tx_frame_count[23] ,
    \tx_frame_count[27] ,
    \tx_frame_count[31] ,
    optical_tx_valid,
    optical_tx_keep,
    optical_tx_last,
    optical_tx_data,
    rst,
    clk,
    \state_reg[1] ,
    rd_data,
    D,
    \usedw_reg[3] ,
    state);
  output fifo_rd_en;
  output \tx_frame_count[0] ;
  output [2:0]S;
  output [3:0]\tx_frame_count[7] ;
  output [3:0]\tx_frame_count[11] ;
  output [3:0]\tx_frame_count[15] ;
  output [3:0]\tx_frame_count[19] ;
  output [3:0]\tx_frame_count[23] ;
  output [3:0]\tx_frame_count[27] ;
  output [3:0]\tx_frame_count[31] ;
  output optical_tx_valid;
  output [0:0]optical_tx_keep;
  output optical_tx_last;
  output [63:0]optical_tx_data;
  input rst;
  input clk;
  input \state_reg[1] ;
  input [63:0]rd_data;
  input [15:0]D;
  input \usedw_reg[3] ;
  input [1:0]state;

  wire [15:0]D;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire [2:0]S;
  wire \__1/i__n_0 ;
  wire clk;
  wire cmd_addr;
  wire fifo_rd_en;
  wire [63:0]optical_tx_data;
  wire [0:0]optical_tx_keep;
  wire optical_tx_last;
  wire optical_tx_valid;
  wire [63:48]p_0_in;
  wire [63:0]p_1_in;
  wire [63:0]rd_data;
  wire rst;
  wire seq_cnt;
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
  wire [1:0]state;
  (* RTL_KEEP = "yes" *) wire [2:0]state_0;
  wire \state_reg[1] ;
  wire \tx_data[0]_i_1_n_0 ;
  wire \tx_data[10]_i_1_n_0 ;
  wire \tx_data[11]_i_1_n_0 ;
  wire \tx_data[12]_i_1_n_0 ;
  wire \tx_data[13]_i_1_n_0 ;
  wire \tx_data[14]_i_1_n_0 ;
  wire \tx_data[15]_i_1_n_0 ;
  wire \tx_data[16]_i_1_n_0 ;
  wire \tx_data[17]_i_1_n_0 ;
  wire \tx_data[18]_i_1_n_0 ;
  wire \tx_data[19]_i_1_n_0 ;
  wire \tx_data[1]_i_1_n_0 ;
  wire \tx_data[20]_i_1_n_0 ;
  wire \tx_data[21]_i_1_n_0 ;
  wire \tx_data[22]_i_1_n_0 ;
  wire \tx_data[23]_i_1_n_0 ;
  wire \tx_data[24]_i_1_n_0 ;
  wire \tx_data[25]_i_1_n_0 ;
  wire \tx_data[26]_i_1_n_0 ;
  wire \tx_data[27]_i_1_n_0 ;
  wire \tx_data[28]_i_1_n_0 ;
  wire \tx_data[29]_i_1_n_0 ;
  wire \tx_data[2]_i_1_n_0 ;
  wire \tx_data[30]_i_1_n_0 ;
  wire \tx_data[31]_i_1_n_0 ;
  wire \tx_data[32]_i_1_n_0 ;
  wire \tx_data[33]_i_1_n_0 ;
  wire \tx_data[34]_i_1_n_0 ;
  wire \tx_data[35]_i_1_n_0 ;
  wire \tx_data[36]_i_1_n_0 ;
  wire \tx_data[37]_i_1_n_0 ;
  wire \tx_data[38]_i_1_n_0 ;
  wire \tx_data[39]_i_1_n_0 ;
  wire \tx_data[3]_i_1_n_0 ;
  wire \tx_data[40]_i_1_n_0 ;
  wire \tx_data[41]_i_1_n_0 ;
  wire \tx_data[42]_i_1_n_0 ;
  wire \tx_data[43]_i_1_n_0 ;
  wire \tx_data[44]_i_1_n_0 ;
  wire \tx_data[45]_i_1_n_0 ;
  wire \tx_data[46]_i_1_n_0 ;
  wire \tx_data[47]_i_1_n_0 ;
  wire \tx_data[48]_i_1_n_0 ;
  wire \tx_data[49]_i_1_n_0 ;
  wire \tx_data[4]_i_1_n_0 ;
  wire \tx_data[50]_i_1_n_0 ;
  wire \tx_data[51]_i_1_n_0 ;
  wire \tx_data[52]_i_1_n_0 ;
  wire \tx_data[53]_i_1_n_0 ;
  wire \tx_data[54]_i_1_n_0 ;
  wire \tx_data[55]_i_1_n_0 ;
  wire \tx_data[56]_i_1_n_0 ;
  wire \tx_data[57]_i_1_n_0 ;
  wire \tx_data[58]_i_1_n_0 ;
  wire \tx_data[59]_i_1_n_0 ;
  wire \tx_data[5]_i_1_n_0 ;
  wire \tx_data[60]_i_1_n_0 ;
  wire \tx_data[61]_i_1_n_0 ;
  wire \tx_data[62]_i_1_n_0 ;
  wire \tx_data[63]_i_1_n_0 ;
  wire \tx_data[63]_i_2_n_0 ;
  wire \tx_data[6]_i_1_n_0 ;
  wire \tx_data[7]_i_1_n_0 ;
  wire \tx_data[8]_i_1_n_0 ;
  wire \tx_data[9]_i_1_n_0 ;
  wire \tx_frame_count[0] ;
  wire [3:0]\tx_frame_count[11] ;
  wire [3:0]\tx_frame_count[15] ;
  wire [3:0]\tx_frame_count[19] ;
  wire [3:0]\tx_frame_count[23] ;
  wire [3:0]\tx_frame_count[27] ;
  wire [3:0]\tx_frame_count[31] ;
  wire [3:0]\tx_frame_count[7] ;
  wire \tx_keep[7]_i_1_n_0 ;
  wire tx_last_i_1_n_0;
  wire tx_valid_i_1_n_0;
  wire \usedw_reg[3] ;
  wire [3:3]\NLW_seq_cnt_reg[31]_i_2_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h3277327700400045)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state_0[2]),
        .I1(\state_reg[1] ),
        .I2(state_0[1]),
        .I3(state_0[0]),
        .I4(\usedw_reg[3] ),
        .I5(state_0[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3777377205400540)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state_0[2]),
        .I1(\state_reg[1] ),
        .I2(state_0[1]),
        .I3(state_0[0]),
        .I4(\usedw_reg[3] ),
        .I5(state_0[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7237723240004000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state_0[2]),
        .I1(\state_reg[1] ),
        .I2(state_0[1]),
        .I3(state_0[0]),
        .I4(\usedw_reg[3] ),
        .I5(state_0[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ST_IDLE:000,ST_LATCH:001,ST_SEND0:010,ST_SEND1:011,ST_SEND2:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state_0[0]),
        .R(rst));
  (* FSM_ENCODED_STATES = "ST_IDLE:000,ST_LATCH:001,ST_SEND0:010,ST_SEND1:011,ST_SEND2:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state_0[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "ST_IDLE:000,ST_LATCH:001,ST_SEND0:010,ST_SEND1:011,ST_SEND2:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state_0[2]),
        .R(rst));
  LUT3 #(
    .INIT(8'h02)) 
    \__0/i_ 
       (.I0(state_0[0]),
        .I1(state_0[2]),
        .I2(state_0[1]),
        .O(cmd_addr));
  LUT4 #(
    .INIT(16'h0001)) 
    \__1/i_ 
       (.I0(state_0[0]),
        .I1(state_0[2]),
        .I2(\usedw_reg[3] ),
        .I3(state_0[1]),
        .O(\__1/i__n_0 ));
  FDRE \cmd_addr_reg[0] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[32]),
        .Q(p_1_in[32]),
        .R(rst));
  FDRE \cmd_addr_reg[10] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[42]),
        .Q(p_1_in[42]),
        .R(rst));
  FDRE \cmd_addr_reg[11] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[43]),
        .Q(p_1_in[43]),
        .R(rst));
  FDRE \cmd_addr_reg[12] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[44]),
        .Q(p_1_in[44]),
        .R(rst));
  FDRE \cmd_addr_reg[13] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[45]),
        .Q(p_1_in[45]),
        .R(rst));
  FDRE \cmd_addr_reg[14] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[46]),
        .Q(p_1_in[46]),
        .R(rst));
  FDRE \cmd_addr_reg[15] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[47]),
        .Q(p_1_in[47]),
        .R(rst));
  FDRE \cmd_addr_reg[16] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[48]),
        .Q(p_1_in[48]),
        .R(rst));
  FDRE \cmd_addr_reg[17] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[49]),
        .Q(p_1_in[49]),
        .R(rst));
  FDRE \cmd_addr_reg[18] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[50]),
        .Q(p_1_in[50]),
        .R(rst));
  FDRE \cmd_addr_reg[19] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[51]),
        .Q(p_1_in[51]),
        .R(rst));
  FDRE \cmd_addr_reg[1] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[33]),
        .Q(p_1_in[33]),
        .R(rst));
  FDRE \cmd_addr_reg[20] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[52]),
        .Q(p_1_in[52]),
        .R(rst));
  FDRE \cmd_addr_reg[21] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[53]),
        .Q(p_1_in[53]),
        .R(rst));
  FDRE \cmd_addr_reg[22] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[54]),
        .Q(p_1_in[54]),
        .R(rst));
  FDRE \cmd_addr_reg[23] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[55]),
        .Q(p_1_in[55]),
        .R(rst));
  FDRE \cmd_addr_reg[24] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[56]),
        .Q(p_1_in[56]),
        .R(rst));
  FDRE \cmd_addr_reg[25] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[57]),
        .Q(p_1_in[57]),
        .R(rst));
  FDRE \cmd_addr_reg[26] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[58]),
        .Q(p_1_in[58]),
        .R(rst));
  FDRE \cmd_addr_reg[27] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[59]),
        .Q(p_1_in[59]),
        .R(rst));
  FDRE \cmd_addr_reg[28] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[60]),
        .Q(p_1_in[60]),
        .R(rst));
  FDRE \cmd_addr_reg[29] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[61]),
        .Q(p_1_in[61]),
        .R(rst));
  FDRE \cmd_addr_reg[2] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[34]),
        .Q(p_1_in[34]),
        .R(rst));
  FDRE \cmd_addr_reg[30] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[62]),
        .Q(p_1_in[62]),
        .R(rst));
  FDRE \cmd_addr_reg[31] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[63]),
        .Q(p_1_in[63]),
        .R(rst));
  FDRE \cmd_addr_reg[3] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[35]),
        .Q(p_1_in[35]),
        .R(rst));
  FDRE \cmd_addr_reg[4] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[36]),
        .Q(p_1_in[36]),
        .R(rst));
  FDRE \cmd_addr_reg[5] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[37]),
        .Q(p_1_in[37]),
        .R(rst));
  FDRE \cmd_addr_reg[6] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[38]),
        .Q(p_1_in[38]),
        .R(rst));
  FDRE \cmd_addr_reg[7] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[39]),
        .Q(p_1_in[39]),
        .R(rst));
  FDRE \cmd_addr_reg[8] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[40]),
        .Q(p_1_in[40]),
        .R(rst));
  FDRE \cmd_addr_reg[9] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[41]),
        .Q(p_1_in[41]),
        .R(rst));
  FDRE \cmd_data_reg[0] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[0]),
        .Q(p_1_in[0]),
        .R(rst));
  FDRE \cmd_data_reg[10] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[10]),
        .Q(p_1_in[10]),
        .R(rst));
  FDRE \cmd_data_reg[11] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[11]),
        .Q(p_1_in[11]),
        .R(rst));
  FDRE \cmd_data_reg[12] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[12]),
        .Q(p_1_in[12]),
        .R(rst));
  FDRE \cmd_data_reg[13] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[13]),
        .Q(p_1_in[13]),
        .R(rst));
  FDRE \cmd_data_reg[14] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[14]),
        .Q(p_1_in[14]),
        .R(rst));
  FDRE \cmd_data_reg[15] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[15]),
        .Q(p_1_in[15]),
        .R(rst));
  FDRE \cmd_data_reg[16] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[16]),
        .Q(p_1_in[16]),
        .R(rst));
  FDRE \cmd_data_reg[17] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[17]),
        .Q(p_1_in[17]),
        .R(rst));
  FDRE \cmd_data_reg[18] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[18]),
        .Q(p_1_in[18]),
        .R(rst));
  FDRE \cmd_data_reg[19] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[19]),
        .Q(p_1_in[19]),
        .R(rst));
  FDRE \cmd_data_reg[1] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[1]),
        .Q(p_1_in[1]),
        .R(rst));
  FDRE \cmd_data_reg[20] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[20]),
        .Q(p_1_in[20]),
        .R(rst));
  FDRE \cmd_data_reg[21] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[21]),
        .Q(p_1_in[21]),
        .R(rst));
  FDRE \cmd_data_reg[22] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[22]),
        .Q(p_1_in[22]),
        .R(rst));
  FDRE \cmd_data_reg[23] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[23]),
        .Q(p_1_in[23]),
        .R(rst));
  FDRE \cmd_data_reg[24] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[24]),
        .Q(p_1_in[24]),
        .R(rst));
  FDRE \cmd_data_reg[25] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[25]),
        .Q(p_1_in[25]),
        .R(rst));
  FDRE \cmd_data_reg[26] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[26]),
        .Q(p_1_in[26]),
        .R(rst));
  FDRE \cmd_data_reg[27] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[27]),
        .Q(p_1_in[27]),
        .R(rst));
  FDRE \cmd_data_reg[28] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[28]),
        .Q(p_1_in[28]),
        .R(rst));
  FDRE \cmd_data_reg[29] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[29]),
        .Q(p_1_in[29]),
        .R(rst));
  FDRE \cmd_data_reg[2] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[2]),
        .Q(p_1_in[2]),
        .R(rst));
  FDRE \cmd_data_reg[30] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[30]),
        .Q(p_1_in[30]),
        .R(rst));
  FDRE \cmd_data_reg[31] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[31]),
        .Q(p_1_in[31]),
        .R(rst));
  FDRE \cmd_data_reg[3] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[3]),
        .Q(p_1_in[3]),
        .R(rst));
  FDRE \cmd_data_reg[4] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[4]),
        .Q(p_1_in[4]),
        .R(rst));
  FDRE \cmd_data_reg[5] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[5]),
        .Q(p_1_in[5]),
        .R(rst));
  FDRE \cmd_data_reg[6] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[6]),
        .Q(p_1_in[6]),
        .R(rst));
  FDRE \cmd_data_reg[7] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[7]),
        .Q(p_1_in[7]),
        .R(rst));
  FDRE \cmd_data_reg[8] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[8]),
        .Q(p_1_in[8]),
        .R(rst));
  FDRE \cmd_data_reg[9] 
       (.C(clk),
        .CE(cmd_addr),
        .D(rd_data[9]),
        .Q(p_1_in[9]),
        .R(rst));
  FDRE \crc16_reg[0] 
       (.C(clk),
        .CE(cmd_addr),
        .D(D[0]),
        .Q(p_0_in[48]),
        .R(rst));
  FDRE \crc16_reg[10] 
       (.C(clk),
        .CE(cmd_addr),
        .D(D[10]),
        .Q(p_0_in[58]),
        .R(rst));
  FDRE \crc16_reg[11] 
       (.C(clk),
        .CE(cmd_addr),
        .D(D[11]),
        .Q(p_0_in[59]),
        .R(rst));
  FDRE \crc16_reg[12] 
       (.C(clk),
        .CE(cmd_addr),
        .D(D[12]),
        .Q(p_0_in[60]),
        .R(rst));
  FDRE \crc16_reg[13] 
       (.C(clk),
        .CE(cmd_addr),
        .D(D[13]),
        .Q(p_0_in[61]),
        .R(rst));
  FDRE \crc16_reg[14] 
       (.C(clk),
        .CE(cmd_addr),
        .D(D[14]),
        .Q(p_0_in[62]),
        .R(rst));
  FDRE \crc16_reg[15] 
       (.C(clk),
        .CE(cmd_addr),
        .D(D[15]),
        .Q(p_0_in[63]),
        .R(rst));
  FDRE \crc16_reg[1] 
       (.C(clk),
        .CE(cmd_addr),
        .D(D[1]),
        .Q(p_0_in[49]),
        .R(rst));
  FDRE \crc16_reg[2] 
       (.C(clk),
        .CE(cmd_addr),
        .D(D[2]),
        .Q(p_0_in[50]),
        .R(rst));
  FDRE \crc16_reg[3] 
       (.C(clk),
        .CE(cmd_addr),
        .D(D[3]),
        .Q(p_0_in[51]),
        .R(rst));
  FDRE \crc16_reg[4] 
       (.C(clk),
        .CE(cmd_addr),
        .D(D[4]),
        .Q(p_0_in[52]),
        .R(rst));
  FDRE \crc16_reg[5] 
       (.C(clk),
        .CE(cmd_addr),
        .D(D[5]),
        .Q(p_0_in[53]),
        .R(rst));
  FDRE \crc16_reg[6] 
       (.C(clk),
        .CE(cmd_addr),
        .D(D[6]),
        .Q(p_0_in[54]),
        .R(rst));
  FDRE \crc16_reg[7] 
       (.C(clk),
        .CE(cmd_addr),
        .D(D[7]),
        .Q(p_0_in[55]),
        .R(rst));
  FDRE \crc16_reg[8] 
       (.C(clk),
        .CE(cmd_addr),
        .D(D[8]),
        .Q(p_0_in[56]),
        .R(rst));
  FDRE \crc16_reg[9] 
       (.C(clk),
        .CE(cmd_addr),
        .D(D[9]),
        .Q(p_0_in[57]),
        .R(rst));
  FDRE fifo_rd_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(\__1/i__n_0 ),
        .Q(fifo_rd_en),
        .R(rst));
  LUT6 #(
    .INIT(64'h0001111100000000)) 
    \seq_cnt[31]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(optical_tx_valid),
        .I5(state_0[2]),
        .O(seq_cnt));
  LUT1 #(
    .INIT(2'h1)) 
    \seq_cnt[3]_i_2 
       (.I0(\tx_frame_count[0] ),
        .O(\seq_cnt[3]_i_2_n_0 ));
  FDRE \seq_cnt_reg[0] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[3]_i_1_n_7 ),
        .Q(\tx_frame_count[0] ),
        .R(rst));
  FDRE \seq_cnt_reg[10] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[11]_i_1_n_5 ),
        .Q(\tx_frame_count[11] [2]),
        .R(rst));
  FDRE \seq_cnt_reg[11] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[11]_i_1_n_4 ),
        .Q(\tx_frame_count[11] [3]),
        .R(rst));
  CARRY4 \seq_cnt_reg[11]_i_1 
       (.CI(\seq_cnt_reg[7]_i_1_n_0 ),
        .CO({\seq_cnt_reg[11]_i_1_n_0 ,\seq_cnt_reg[11]_i_1_n_1 ,\seq_cnt_reg[11]_i_1_n_2 ,\seq_cnt_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\seq_cnt_reg[11]_i_1_n_4 ,\seq_cnt_reg[11]_i_1_n_5 ,\seq_cnt_reg[11]_i_1_n_6 ,\seq_cnt_reg[11]_i_1_n_7 }),
        .S(\tx_frame_count[11] ));
  FDRE \seq_cnt_reg[12] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[15]_i_1_n_7 ),
        .Q(\tx_frame_count[15] [0]),
        .R(rst));
  FDRE \seq_cnt_reg[13] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[15]_i_1_n_6 ),
        .Q(\tx_frame_count[15] [1]),
        .R(rst));
  FDRE \seq_cnt_reg[14] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[15]_i_1_n_5 ),
        .Q(\tx_frame_count[15] [2]),
        .R(rst));
  FDRE \seq_cnt_reg[15] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[15]_i_1_n_4 ),
        .Q(\tx_frame_count[15] [3]),
        .R(rst));
  CARRY4 \seq_cnt_reg[15]_i_1 
       (.CI(\seq_cnt_reg[11]_i_1_n_0 ),
        .CO({\seq_cnt_reg[15]_i_1_n_0 ,\seq_cnt_reg[15]_i_1_n_1 ,\seq_cnt_reg[15]_i_1_n_2 ,\seq_cnt_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\seq_cnt_reg[15]_i_1_n_4 ,\seq_cnt_reg[15]_i_1_n_5 ,\seq_cnt_reg[15]_i_1_n_6 ,\seq_cnt_reg[15]_i_1_n_7 }),
        .S(\tx_frame_count[15] ));
  FDRE \seq_cnt_reg[16] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[19]_i_1_n_7 ),
        .Q(\tx_frame_count[19] [0]),
        .R(rst));
  FDRE \seq_cnt_reg[17] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[19]_i_1_n_6 ),
        .Q(\tx_frame_count[19] [1]),
        .R(rst));
  FDRE \seq_cnt_reg[18] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[19]_i_1_n_5 ),
        .Q(\tx_frame_count[19] [2]),
        .R(rst));
  FDRE \seq_cnt_reg[19] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[19]_i_1_n_4 ),
        .Q(\tx_frame_count[19] [3]),
        .R(rst));
  CARRY4 \seq_cnt_reg[19]_i_1 
       (.CI(\seq_cnt_reg[15]_i_1_n_0 ),
        .CO({\seq_cnt_reg[19]_i_1_n_0 ,\seq_cnt_reg[19]_i_1_n_1 ,\seq_cnt_reg[19]_i_1_n_2 ,\seq_cnt_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\seq_cnt_reg[19]_i_1_n_4 ,\seq_cnt_reg[19]_i_1_n_5 ,\seq_cnt_reg[19]_i_1_n_6 ,\seq_cnt_reg[19]_i_1_n_7 }),
        .S(\tx_frame_count[19] ));
  FDRE \seq_cnt_reg[1] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[3]_i_1_n_6 ),
        .Q(S[0]),
        .R(rst));
  FDRE \seq_cnt_reg[20] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[23]_i_1_n_7 ),
        .Q(\tx_frame_count[23] [0]),
        .R(rst));
  FDRE \seq_cnt_reg[21] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[23]_i_1_n_6 ),
        .Q(\tx_frame_count[23] [1]),
        .R(rst));
  FDRE \seq_cnt_reg[22] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[23]_i_1_n_5 ),
        .Q(\tx_frame_count[23] [2]),
        .R(rst));
  FDRE \seq_cnt_reg[23] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[23]_i_1_n_4 ),
        .Q(\tx_frame_count[23] [3]),
        .R(rst));
  CARRY4 \seq_cnt_reg[23]_i_1 
       (.CI(\seq_cnt_reg[19]_i_1_n_0 ),
        .CO({\seq_cnt_reg[23]_i_1_n_0 ,\seq_cnt_reg[23]_i_1_n_1 ,\seq_cnt_reg[23]_i_1_n_2 ,\seq_cnt_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\seq_cnt_reg[23]_i_1_n_4 ,\seq_cnt_reg[23]_i_1_n_5 ,\seq_cnt_reg[23]_i_1_n_6 ,\seq_cnt_reg[23]_i_1_n_7 }),
        .S(\tx_frame_count[23] ));
  FDRE \seq_cnt_reg[24] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[27]_i_1_n_7 ),
        .Q(\tx_frame_count[27] [0]),
        .R(rst));
  FDRE \seq_cnt_reg[25] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[27]_i_1_n_6 ),
        .Q(\tx_frame_count[27] [1]),
        .R(rst));
  FDRE \seq_cnt_reg[26] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[27]_i_1_n_5 ),
        .Q(\tx_frame_count[27] [2]),
        .R(rst));
  FDRE \seq_cnt_reg[27] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[27]_i_1_n_4 ),
        .Q(\tx_frame_count[27] [3]),
        .R(rst));
  CARRY4 \seq_cnt_reg[27]_i_1 
       (.CI(\seq_cnt_reg[23]_i_1_n_0 ),
        .CO({\seq_cnt_reg[27]_i_1_n_0 ,\seq_cnt_reg[27]_i_1_n_1 ,\seq_cnt_reg[27]_i_1_n_2 ,\seq_cnt_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\seq_cnt_reg[27]_i_1_n_4 ,\seq_cnt_reg[27]_i_1_n_5 ,\seq_cnt_reg[27]_i_1_n_6 ,\seq_cnt_reg[27]_i_1_n_7 }),
        .S(\tx_frame_count[27] ));
  FDRE \seq_cnt_reg[28] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[31]_i_2_n_7 ),
        .Q(\tx_frame_count[31] [0]),
        .R(rst));
  FDRE \seq_cnt_reg[29] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[31]_i_2_n_6 ),
        .Q(\tx_frame_count[31] [1]),
        .R(rst));
  FDRE \seq_cnt_reg[2] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[3]_i_1_n_5 ),
        .Q(S[1]),
        .R(rst));
  FDRE \seq_cnt_reg[30] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[31]_i_2_n_5 ),
        .Q(\tx_frame_count[31] [2]),
        .R(rst));
  FDRE \seq_cnt_reg[31] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[31]_i_2_n_4 ),
        .Q(\tx_frame_count[31] [3]),
        .R(rst));
  CARRY4 \seq_cnt_reg[31]_i_2 
       (.CI(\seq_cnt_reg[27]_i_1_n_0 ),
        .CO({\NLW_seq_cnt_reg[31]_i_2_CO_UNCONNECTED [3],\seq_cnt_reg[31]_i_2_n_1 ,\seq_cnt_reg[31]_i_2_n_2 ,\seq_cnt_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\seq_cnt_reg[31]_i_2_n_4 ,\seq_cnt_reg[31]_i_2_n_5 ,\seq_cnt_reg[31]_i_2_n_6 ,\seq_cnt_reg[31]_i_2_n_7 }),
        .S(\tx_frame_count[31] ));
  FDRE \seq_cnt_reg[3] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[3]_i_1_n_4 ),
        .Q(S[2]),
        .R(rst));
  CARRY4 \seq_cnt_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\seq_cnt_reg[3]_i_1_n_0 ,\seq_cnt_reg[3]_i_1_n_1 ,\seq_cnt_reg[3]_i_1_n_2 ,\seq_cnt_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\seq_cnt_reg[3]_i_1_n_4 ,\seq_cnt_reg[3]_i_1_n_5 ,\seq_cnt_reg[3]_i_1_n_6 ,\seq_cnt_reg[3]_i_1_n_7 }),
        .S({S,\seq_cnt[3]_i_2_n_0 }));
  FDRE \seq_cnt_reg[4] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[7]_i_1_n_7 ),
        .Q(\tx_frame_count[7] [0]),
        .R(rst));
  FDRE \seq_cnt_reg[5] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[7]_i_1_n_6 ),
        .Q(\tx_frame_count[7] [1]),
        .R(rst));
  FDRE \seq_cnt_reg[6] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[7]_i_1_n_5 ),
        .Q(\tx_frame_count[7] [2]),
        .R(rst));
  FDRE \seq_cnt_reg[7] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[7]_i_1_n_4 ),
        .Q(\tx_frame_count[7] [3]),
        .R(rst));
  CARRY4 \seq_cnt_reg[7]_i_1 
       (.CI(\seq_cnt_reg[3]_i_1_n_0 ),
        .CO({\seq_cnt_reg[7]_i_1_n_0 ,\seq_cnt_reg[7]_i_1_n_1 ,\seq_cnt_reg[7]_i_1_n_2 ,\seq_cnt_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\seq_cnt_reg[7]_i_1_n_4 ,\seq_cnt_reg[7]_i_1_n_5 ,\seq_cnt_reg[7]_i_1_n_6 ,\seq_cnt_reg[7]_i_1_n_7 }),
        .S(\tx_frame_count[7] ));
  FDRE \seq_cnt_reg[8] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[11]_i_1_n_7 ),
        .Q(\tx_frame_count[11] [0]),
        .R(rst));
  FDRE \seq_cnt_reg[9] 
       (.C(clk),
        .CE(seq_cnt),
        .D(\seq_cnt_reg[11]_i_1_n_6 ),
        .Q(\tx_frame_count[11] [1]),
        .R(rst));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[0]_i_1 
       (.I0(\tx_frame_count[0] ),
        .I1(state_0[0]),
        .I2(p_1_in[0]),
        .I3(state_0[2]),
        .O(\tx_data[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[10]_i_1 
       (.I0(\tx_frame_count[11] [2]),
        .I1(state_0[0]),
        .I2(p_1_in[10]),
        .I3(state_0[2]),
        .O(\tx_data[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[11]_i_1 
       (.I0(\tx_frame_count[11] [3]),
        .I1(state_0[0]),
        .I2(p_1_in[11]),
        .I3(state_0[2]),
        .O(\tx_data[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[12]_i_1 
       (.I0(\tx_frame_count[15] [0]),
        .I1(state_0[0]),
        .I2(p_1_in[12]),
        .I3(state_0[2]),
        .O(\tx_data[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[13]_i_1 
       (.I0(\tx_frame_count[15] [1]),
        .I1(state_0[0]),
        .I2(p_1_in[13]),
        .I3(state_0[2]),
        .O(\tx_data[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[14]_i_1 
       (.I0(\tx_frame_count[15] [2]),
        .I1(state_0[0]),
        .I2(p_1_in[14]),
        .I3(state_0[2]),
        .O(\tx_data[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[15]_i_1 
       (.I0(\tx_frame_count[15] [3]),
        .I1(state_0[0]),
        .I2(p_1_in[15]),
        .I3(state_0[2]),
        .O(\tx_data[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[16]_i_1 
       (.I0(\tx_frame_count[19] [0]),
        .I1(state_0[0]),
        .I2(p_1_in[16]),
        .I3(state_0[2]),
        .O(\tx_data[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[17]_i_1 
       (.I0(\tx_frame_count[19] [1]),
        .I1(state_0[0]),
        .I2(p_1_in[17]),
        .I3(state_0[2]),
        .O(\tx_data[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[18]_i_1 
       (.I0(\tx_frame_count[19] [2]),
        .I1(state_0[0]),
        .I2(p_1_in[18]),
        .I3(state_0[2]),
        .O(\tx_data[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[19]_i_1 
       (.I0(\tx_frame_count[19] [3]),
        .I1(state_0[0]),
        .I2(p_1_in[19]),
        .I3(state_0[2]),
        .O(\tx_data[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[1]_i_1 
       (.I0(S[0]),
        .I1(state_0[0]),
        .I2(p_1_in[1]),
        .I3(state_0[2]),
        .O(\tx_data[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[20]_i_1 
       (.I0(\tx_frame_count[23] [0]),
        .I1(state_0[0]),
        .I2(p_1_in[20]),
        .I3(state_0[2]),
        .O(\tx_data[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[21]_i_1 
       (.I0(\tx_frame_count[23] [1]),
        .I1(state_0[0]),
        .I2(p_1_in[21]),
        .I3(state_0[2]),
        .O(\tx_data[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[22]_i_1 
       (.I0(\tx_frame_count[23] [2]),
        .I1(state_0[0]),
        .I2(p_1_in[22]),
        .I3(state_0[2]),
        .O(\tx_data[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[23]_i_1 
       (.I0(\tx_frame_count[23] [3]),
        .I1(state_0[0]),
        .I2(p_1_in[23]),
        .I3(state_0[2]),
        .O(\tx_data[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[24]_i_1 
       (.I0(\tx_frame_count[27] [0]),
        .I1(state_0[0]),
        .I2(p_1_in[24]),
        .I3(state_0[2]),
        .O(\tx_data[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[25]_i_1 
       (.I0(\tx_frame_count[27] [1]),
        .I1(state_0[0]),
        .I2(p_1_in[25]),
        .I3(state_0[2]),
        .O(\tx_data[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[26]_i_1 
       (.I0(\tx_frame_count[27] [2]),
        .I1(state_0[0]),
        .I2(p_1_in[26]),
        .I3(state_0[2]),
        .O(\tx_data[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[27]_i_1 
       (.I0(\tx_frame_count[27] [3]),
        .I1(state_0[0]),
        .I2(p_1_in[27]),
        .I3(state_0[2]),
        .O(\tx_data[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[28]_i_1 
       (.I0(\tx_frame_count[31] [0]),
        .I1(state_0[0]),
        .I2(p_1_in[28]),
        .I3(state_0[2]),
        .O(\tx_data[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[29]_i_1 
       (.I0(\tx_frame_count[31] [1]),
        .I1(state_0[0]),
        .I2(p_1_in[29]),
        .I3(state_0[2]),
        .O(\tx_data[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[2]_i_1 
       (.I0(S[1]),
        .I1(state_0[0]),
        .I2(p_1_in[2]),
        .I3(state_0[2]),
        .O(\tx_data[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[30]_i_1 
       (.I0(\tx_frame_count[31] [2]),
        .I1(state_0[0]),
        .I2(p_1_in[30]),
        .I3(state_0[2]),
        .O(\tx_data[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[31]_i_1 
       (.I0(\tx_frame_count[31] [3]),
        .I1(state_0[0]),
        .I2(p_1_in[31]),
        .I3(state_0[2]),
        .O(\tx_data[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h202F)) 
    \tx_data[32]_i_1 
       (.I0(p_1_in[32]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(state_0[1]),
        .O(\tx_data[32]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_data[33]_i_1 
       (.I0(state_0[2]),
        .I1(state_0[0]),
        .I2(p_1_in[33]),
        .O(\tx_data[33]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h202F)) 
    \tx_data[34]_i_1 
       (.I0(p_1_in[34]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(state_0[1]),
        .O(\tx_data[34]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_data[35]_i_1 
       (.I0(state_0[2]),
        .I1(state_0[0]),
        .I2(p_1_in[35]),
        .O(\tx_data[35]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h202F)) 
    \tx_data[36]_i_1 
       (.I0(p_1_in[36]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(state_0[1]),
        .O(\tx_data[36]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_data[37]_i_1 
       (.I0(state_0[2]),
        .I1(state_0[0]),
        .I2(p_1_in[37]),
        .O(\tx_data[37]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h202F)) 
    \tx_data[38]_i_1 
       (.I0(p_1_in[38]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(state_0[1]),
        .O(\tx_data[38]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_data[39]_i_1 
       (.I0(state_0[2]),
        .I1(state_0[0]),
        .I2(p_1_in[39]),
        .O(\tx_data[39]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[3]_i_1 
       (.I0(S[2]),
        .I1(state_0[0]),
        .I2(p_1_in[3]),
        .I3(state_0[2]),
        .O(\tx_data[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_data[40]_i_1 
       (.I0(state_0[2]),
        .I1(state_0[0]),
        .I2(p_1_in[40]),
        .O(\tx_data[40]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h202F)) 
    \tx_data[41]_i_1 
       (.I0(p_1_in[41]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(state_0[1]),
        .O(\tx_data[41]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_data[42]_i_1 
       (.I0(state_0[2]),
        .I1(state_0[0]),
        .I2(p_1_in[42]),
        .O(\tx_data[42]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h202F)) 
    \tx_data[43]_i_1 
       (.I0(p_1_in[43]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(state_0[1]),
        .O(\tx_data[43]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_data[44]_i_1 
       (.I0(state_0[2]),
        .I1(state_0[0]),
        .I2(p_1_in[44]),
        .O(\tx_data[44]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h202F)) 
    \tx_data[45]_i_1 
       (.I0(p_1_in[45]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(state_0[1]),
        .O(\tx_data[45]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_data[46]_i_1 
       (.I0(state_0[2]),
        .I1(state_0[0]),
        .I2(p_1_in[46]),
        .O(\tx_data[46]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h202F)) 
    \tx_data[47]_i_1 
       (.I0(p_1_in[47]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(state_0[1]),
        .O(\tx_data[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \tx_data[48]_i_1 
       (.I0(p_1_in[48]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(p_0_in[48]),
        .I4(state_0[1]),
        .O(\tx_data[48]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0300B3B3)) 
    \tx_data[49]_i_1 
       (.I0(p_1_in[49]),
        .I1(state_0[0]),
        .I2(state_0[1]),
        .I3(p_0_in[49]),
        .I4(state_0[2]),
        .O(\tx_data[49]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[4]_i_1 
       (.I0(\tx_frame_count[7] [0]),
        .I1(state_0[0]),
        .I2(p_1_in[4]),
        .I3(state_0[2]),
        .O(\tx_data[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \tx_data[50]_i_1 
       (.I0(p_1_in[50]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(p_0_in[50]),
        .I4(state_0[1]),
        .O(\tx_data[50]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0300B3B3)) 
    \tx_data[51]_i_1 
       (.I0(p_1_in[51]),
        .I1(state_0[0]),
        .I2(state_0[1]),
        .I3(p_0_in[51]),
        .I4(state_0[2]),
        .O(\tx_data[51]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \tx_data[52]_i_1 
       (.I0(p_1_in[52]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(p_0_in[52]),
        .I4(state_0[1]),
        .O(\tx_data[52]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0300B3B3)) 
    \tx_data[53]_i_1 
       (.I0(p_1_in[53]),
        .I1(state_0[0]),
        .I2(state_0[1]),
        .I3(p_0_in[53]),
        .I4(state_0[2]),
        .O(\tx_data[53]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \tx_data[54]_i_1 
       (.I0(p_1_in[54]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(p_0_in[54]),
        .I4(state_0[1]),
        .O(\tx_data[54]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0300B3B3)) 
    \tx_data[55]_i_1 
       (.I0(p_1_in[55]),
        .I1(state_0[0]),
        .I2(state_0[1]),
        .I3(p_0_in[55]),
        .I4(state_0[2]),
        .O(\tx_data[55]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0300B3B3)) 
    \tx_data[56]_i_1 
       (.I0(p_1_in[56]),
        .I1(state_0[0]),
        .I2(state_0[1]),
        .I3(p_0_in[56]),
        .I4(state_0[2]),
        .O(\tx_data[56]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \tx_data[57]_i_1 
       (.I0(p_1_in[57]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(p_0_in[57]),
        .I4(state_0[1]),
        .O(\tx_data[57]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0300B3B3)) 
    \tx_data[58]_i_1 
       (.I0(p_1_in[58]),
        .I1(state_0[0]),
        .I2(state_0[1]),
        .I3(p_0_in[58]),
        .I4(state_0[2]),
        .O(\tx_data[58]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \tx_data[59]_i_1 
       (.I0(p_1_in[59]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(p_0_in[59]),
        .I4(state_0[1]),
        .O(\tx_data[59]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[5]_i_1 
       (.I0(\tx_frame_count[7] [1]),
        .I1(state_0[0]),
        .I2(p_1_in[5]),
        .I3(state_0[2]),
        .O(\tx_data[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0300B3B3)) 
    \tx_data[60]_i_1 
       (.I0(p_1_in[60]),
        .I1(state_0[0]),
        .I2(state_0[1]),
        .I3(p_0_in[60]),
        .I4(state_0[2]),
        .O(\tx_data[60]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \tx_data[61]_i_1 
       (.I0(p_1_in[61]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(p_0_in[61]),
        .I4(state_0[1]),
        .O(\tx_data[61]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0300B3B3)) 
    \tx_data[62]_i_1 
       (.I0(p_1_in[62]),
        .I1(state_0[0]),
        .I2(state_0[1]),
        .I3(p_0_in[62]),
        .I4(state_0[2]),
        .O(\tx_data[62]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000575700570000)) 
    \tx_data[63]_i_1 
       (.I0(optical_tx_valid),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state_0[0]),
        .I4(state_0[2]),
        .I5(state_0[1]),
        .O(\tx_data[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \tx_data[63]_i_2 
       (.I0(p_1_in[63]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(p_0_in[63]),
        .I4(state_0[1]),
        .O(\tx_data[63]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[6]_i_1 
       (.I0(\tx_frame_count[7] [2]),
        .I1(state_0[0]),
        .I2(p_1_in[6]),
        .I3(state_0[2]),
        .O(\tx_data[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[7]_i_1 
       (.I0(\tx_frame_count[7] [3]),
        .I1(state_0[0]),
        .I2(p_1_in[7]),
        .I3(state_0[2]),
        .O(\tx_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[8]_i_1 
       (.I0(\tx_frame_count[11] [0]),
        .I1(state_0[0]),
        .I2(p_1_in[8]),
        .I3(state_0[2]),
        .O(\tx_data[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tx_data[9]_i_1 
       (.I0(\tx_frame_count[11] [1]),
        .I1(state_0[0]),
        .I2(p_1_in[9]),
        .I3(state_0[2]),
        .O(\tx_data[9]_i_1_n_0 ));
  FDRE \tx_data_reg[0] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[0]_i_1_n_0 ),
        .Q(optical_tx_data[0]),
        .R(rst));
  FDRE \tx_data_reg[10] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[10]_i_1_n_0 ),
        .Q(optical_tx_data[10]),
        .R(rst));
  FDRE \tx_data_reg[11] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[11]_i_1_n_0 ),
        .Q(optical_tx_data[11]),
        .R(rst));
  FDRE \tx_data_reg[12] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[12]_i_1_n_0 ),
        .Q(optical_tx_data[12]),
        .R(rst));
  FDRE \tx_data_reg[13] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[13]_i_1_n_0 ),
        .Q(optical_tx_data[13]),
        .R(rst));
  FDRE \tx_data_reg[14] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[14]_i_1_n_0 ),
        .Q(optical_tx_data[14]),
        .R(rst));
  FDRE \tx_data_reg[15] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[15]_i_1_n_0 ),
        .Q(optical_tx_data[15]),
        .R(rst));
  FDRE \tx_data_reg[16] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[16]_i_1_n_0 ),
        .Q(optical_tx_data[16]),
        .R(rst));
  FDRE \tx_data_reg[17] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[17]_i_1_n_0 ),
        .Q(optical_tx_data[17]),
        .R(rst));
  FDRE \tx_data_reg[18] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[18]_i_1_n_0 ),
        .Q(optical_tx_data[18]),
        .R(rst));
  FDRE \tx_data_reg[19] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[19]_i_1_n_0 ),
        .Q(optical_tx_data[19]),
        .R(rst));
  FDRE \tx_data_reg[1] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[1]_i_1_n_0 ),
        .Q(optical_tx_data[1]),
        .R(rst));
  FDRE \tx_data_reg[20] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[20]_i_1_n_0 ),
        .Q(optical_tx_data[20]),
        .R(rst));
  FDRE \tx_data_reg[21] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[21]_i_1_n_0 ),
        .Q(optical_tx_data[21]),
        .R(rst));
  FDRE \tx_data_reg[22] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[22]_i_1_n_0 ),
        .Q(optical_tx_data[22]),
        .R(rst));
  FDRE \tx_data_reg[23] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[23]_i_1_n_0 ),
        .Q(optical_tx_data[23]),
        .R(rst));
  FDRE \tx_data_reg[24] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[24]_i_1_n_0 ),
        .Q(optical_tx_data[24]),
        .R(rst));
  FDRE \tx_data_reg[25] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[25]_i_1_n_0 ),
        .Q(optical_tx_data[25]),
        .R(rst));
  FDRE \tx_data_reg[26] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[26]_i_1_n_0 ),
        .Q(optical_tx_data[26]),
        .R(rst));
  FDRE \tx_data_reg[27] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[27]_i_1_n_0 ),
        .Q(optical_tx_data[27]),
        .R(rst));
  FDRE \tx_data_reg[28] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[28]_i_1_n_0 ),
        .Q(optical_tx_data[28]),
        .R(rst));
  FDRE \tx_data_reg[29] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[29]_i_1_n_0 ),
        .Q(optical_tx_data[29]),
        .R(rst));
  FDRE \tx_data_reg[2] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[2]_i_1_n_0 ),
        .Q(optical_tx_data[2]),
        .R(rst));
  FDRE \tx_data_reg[30] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[30]_i_1_n_0 ),
        .Q(optical_tx_data[30]),
        .R(rst));
  FDRE \tx_data_reg[31] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[31]_i_1_n_0 ),
        .Q(optical_tx_data[31]),
        .R(rst));
  FDRE \tx_data_reg[32] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[32]_i_1_n_0 ),
        .Q(optical_tx_data[32]),
        .R(rst));
  FDRE \tx_data_reg[33] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[33]_i_1_n_0 ),
        .Q(optical_tx_data[33]),
        .R(rst));
  FDRE \tx_data_reg[34] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[34]_i_1_n_0 ),
        .Q(optical_tx_data[34]),
        .R(rst));
  FDRE \tx_data_reg[35] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[35]_i_1_n_0 ),
        .Q(optical_tx_data[35]),
        .R(rst));
  FDRE \tx_data_reg[36] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[36]_i_1_n_0 ),
        .Q(optical_tx_data[36]),
        .R(rst));
  FDRE \tx_data_reg[37] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[37]_i_1_n_0 ),
        .Q(optical_tx_data[37]),
        .R(rst));
  FDRE \tx_data_reg[38] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[38]_i_1_n_0 ),
        .Q(optical_tx_data[38]),
        .R(rst));
  FDRE \tx_data_reg[39] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[39]_i_1_n_0 ),
        .Q(optical_tx_data[39]),
        .R(rst));
  FDRE \tx_data_reg[3] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[3]_i_1_n_0 ),
        .Q(optical_tx_data[3]),
        .R(rst));
  FDRE \tx_data_reg[40] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[40]_i_1_n_0 ),
        .Q(optical_tx_data[40]),
        .R(rst));
  FDRE \tx_data_reg[41] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[41]_i_1_n_0 ),
        .Q(optical_tx_data[41]),
        .R(rst));
  FDRE \tx_data_reg[42] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[42]_i_1_n_0 ),
        .Q(optical_tx_data[42]),
        .R(rst));
  FDRE \tx_data_reg[43] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[43]_i_1_n_0 ),
        .Q(optical_tx_data[43]),
        .R(rst));
  FDRE \tx_data_reg[44] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[44]_i_1_n_0 ),
        .Q(optical_tx_data[44]),
        .R(rst));
  FDRE \tx_data_reg[45] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[45]_i_1_n_0 ),
        .Q(optical_tx_data[45]),
        .R(rst));
  FDRE \tx_data_reg[46] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[46]_i_1_n_0 ),
        .Q(optical_tx_data[46]),
        .R(rst));
  FDRE \tx_data_reg[47] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[47]_i_1_n_0 ),
        .Q(optical_tx_data[47]),
        .R(rst));
  FDRE \tx_data_reg[48] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[48]_i_1_n_0 ),
        .Q(optical_tx_data[48]),
        .R(rst));
  FDRE \tx_data_reg[49] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[49]_i_1_n_0 ),
        .Q(optical_tx_data[49]),
        .R(rst));
  FDRE \tx_data_reg[4] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[4]_i_1_n_0 ),
        .Q(optical_tx_data[4]),
        .R(rst));
  FDRE \tx_data_reg[50] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[50]_i_1_n_0 ),
        .Q(optical_tx_data[50]),
        .R(rst));
  FDRE \tx_data_reg[51] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[51]_i_1_n_0 ),
        .Q(optical_tx_data[51]),
        .R(rst));
  FDRE \tx_data_reg[52] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[52]_i_1_n_0 ),
        .Q(optical_tx_data[52]),
        .R(rst));
  FDRE \tx_data_reg[53] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[53]_i_1_n_0 ),
        .Q(optical_tx_data[53]),
        .R(rst));
  FDRE \tx_data_reg[54] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[54]_i_1_n_0 ),
        .Q(optical_tx_data[54]),
        .R(rst));
  FDRE \tx_data_reg[55] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[55]_i_1_n_0 ),
        .Q(optical_tx_data[55]),
        .R(rst));
  FDRE \tx_data_reg[56] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[56]_i_1_n_0 ),
        .Q(optical_tx_data[56]),
        .R(rst));
  FDRE \tx_data_reg[57] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[57]_i_1_n_0 ),
        .Q(optical_tx_data[57]),
        .R(rst));
  FDRE \tx_data_reg[58] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[58]_i_1_n_0 ),
        .Q(optical_tx_data[58]),
        .R(rst));
  FDRE \tx_data_reg[59] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[59]_i_1_n_0 ),
        .Q(optical_tx_data[59]),
        .R(rst));
  FDRE \tx_data_reg[5] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[5]_i_1_n_0 ),
        .Q(optical_tx_data[5]),
        .R(rst));
  FDRE \tx_data_reg[60] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[60]_i_1_n_0 ),
        .Q(optical_tx_data[60]),
        .R(rst));
  FDRE \tx_data_reg[61] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[61]_i_1_n_0 ),
        .Q(optical_tx_data[61]),
        .R(rst));
  FDRE \tx_data_reg[62] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[62]_i_1_n_0 ),
        .Q(optical_tx_data[62]),
        .R(rst));
  FDRE \tx_data_reg[63] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[63]_i_2_n_0 ),
        .Q(optical_tx_data[63]),
        .R(rst));
  FDRE \tx_data_reg[6] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[6]_i_1_n_0 ),
        .Q(optical_tx_data[6]),
        .R(rst));
  FDRE \tx_data_reg[7] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[7]_i_1_n_0 ),
        .Q(optical_tx_data[7]),
        .R(rst));
  FDRE \tx_data_reg[8] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[8]_i_1_n_0 ),
        .Q(optical_tx_data[8]),
        .R(rst));
  FDRE \tx_data_reg[9] 
       (.C(clk),
        .CE(\tx_data[63]_i_1_n_0 ),
        .D(\tx_data[9]_i_1_n_0 ),
        .Q(optical_tx_data[9]),
        .R(rst));
  LUT5 #(
    .INIT(32'hFFEE10A0)) 
    \tx_keep[7]_i_1 
       (.I0(state_0[1]),
        .I1(state_0[0]),
        .I2(\state_reg[1] ),
        .I3(state_0[2]),
        .I4(optical_tx_keep),
        .O(\tx_keep[7]_i_1_n_0 ));
  FDRE \tx_keep_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_keep[7]_i_1_n_0 ),
        .Q(optical_tx_keep),
        .R(rst));
  LUT5 #(
    .INIT(32'hFF4E1000)) 
    tx_last_i_1
       (.I0(state_0[1]),
        .I1(state_0[0]),
        .I2(\state_reg[1] ),
        .I3(state_0[2]),
        .I4(optical_tx_last),
        .O(tx_last_i_1_n_0));
  FDRE tx_last_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_last_i_1_n_0),
        .Q(optical_tx_last),
        .R(rst));
  LUT4 #(
    .INIT(16'hF1EA)) 
    tx_valid_i_1
       (.I0(state_0[1]),
        .I1(state_0[0]),
        .I2(optical_tx_valid),
        .I3(state_0[2]),
        .O(tx_valid_i_1_n_0));
  FDRE tx_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_valid_i_1_n_0),
        .Q(optical_tx_valid),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "gtx_rx32_to_stream64" *) 
module loopback_debug_bd_min_optical_loopback_debug_top_0_0_gtx_rx32_to_stream64
   (m_axis_tkeep,
    \seq_latched_reg[31] ,
    prev_valid_reg_0,
    rx_axis_tlast,
    E,
    \seq_latched_reg[31]_0 ,
    p_0_in8_out_0,
    S,
    \addr_latched_reg[31] ,
    \rx_frame_count_reg[0] ,
    crc_ok_reg,
    crc_ok1__24,
    rst,
    clk,
    Q,
    gtx_tx_valid_reg,
    p_0_in8_out,
    \state_reg[1] ,
    \state_reg[0] ,
    calc_crc16_return__79,
    gtx_tx_valid_reg_0,
    \gtx_tx_data_reg[1] ,
    \gtx_tx_data_reg[10] ,
    \gtx_tx_data_reg[8] ,
    \gtx_tx_data_reg[4] );
  output [0:0]m_axis_tkeep;
  output \seq_latched_reg[31] ;
  output prev_valid_reg_0;
  output rx_axis_tlast;
  output [0:0]E;
  output [0:0]\seq_latched_reg[31]_0 ;
  output p_0_in8_out_0;
  output [3:0]S;
  output [63:0]\addr_latched_reg[31] ;
  output [0:0]\rx_frame_count_reg[0] ;
  output crc_ok_reg;
  output crc_ok1__24;
  input rst;
  input clk;
  input [31:0]Q;
  input gtx_tx_valid_reg;
  input p_0_in8_out;
  input \state_reg[1] ;
  input \state_reg[0] ;
  input [14:0]calc_crc16_return__79;
  input gtx_tx_valid_reg_0;
  input \gtx_tx_data_reg[1] ;
  input \gtx_tx_data_reg[10] ;
  input \gtx_tx_data_reg[8] ;
  input \gtx_tx_data_reg[4] ;

  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state[2]_i_1__0_n_0 ;
  wire [31:0]Q;
  wire [3:0]S;
  wire \__2/i__n_0 ;
  wire \_inferred__0/i__n_0 ;
  wire [63:0]\addr_latched_reg[31] ;
  wire \beat_lo_word[31]_i_1_n_0 ;
  wire \beat_lo_word_reg_n_0_[0] ;
  wire \beat_lo_word_reg_n_0_[10] ;
  wire \beat_lo_word_reg_n_0_[11] ;
  wire \beat_lo_word_reg_n_0_[12] ;
  wire \beat_lo_word_reg_n_0_[13] ;
  wire \beat_lo_word_reg_n_0_[14] ;
  wire \beat_lo_word_reg_n_0_[15] ;
  wire \beat_lo_word_reg_n_0_[16] ;
  wire \beat_lo_word_reg_n_0_[17] ;
  wire \beat_lo_word_reg_n_0_[18] ;
  wire \beat_lo_word_reg_n_0_[19] ;
  wire \beat_lo_word_reg_n_0_[1] ;
  wire \beat_lo_word_reg_n_0_[20] ;
  wire \beat_lo_word_reg_n_0_[21] ;
  wire \beat_lo_word_reg_n_0_[22] ;
  wire \beat_lo_word_reg_n_0_[23] ;
  wire \beat_lo_word_reg_n_0_[24] ;
  wire \beat_lo_word_reg_n_0_[25] ;
  wire \beat_lo_word_reg_n_0_[26] ;
  wire \beat_lo_word_reg_n_0_[27] ;
  wire \beat_lo_word_reg_n_0_[28] ;
  wire \beat_lo_word_reg_n_0_[29] ;
  wire \beat_lo_word_reg_n_0_[2] ;
  wire \beat_lo_word_reg_n_0_[30] ;
  wire \beat_lo_word_reg_n_0_[31] ;
  wire \beat_lo_word_reg_n_0_[3] ;
  wire \beat_lo_word_reg_n_0_[4] ;
  wire \beat_lo_word_reg_n_0_[5] ;
  wire \beat_lo_word_reg_n_0_[6] ;
  wire \beat_lo_word_reg_n_0_[7] ;
  wire \beat_lo_word_reg_n_0_[8] ;
  wire \beat_lo_word_reg_n_0_[9] ;
  wire [14:0]calc_crc16_return__79;
  wire clk;
  wire crc_ok1__24;
  wire crc_ok_reg;
  wire \gtx_tx_data_reg[10] ;
  wire \gtx_tx_data_reg[1] ;
  wire \gtx_tx_data_reg[4] ;
  wire \gtx_tx_data_reg[8] ;
  wire gtx_tx_valid_reg;
  wire gtx_tx_valid_reg_0;
  wire \m_axis_tdata[0]_i_1_n_0 ;
  wire \m_axis_tdata[10]_i_1_n_0 ;
  wire \m_axis_tdata[11]_i_1_n_0 ;
  wire \m_axis_tdata[12]_i_1_n_0 ;
  wire \m_axis_tdata[13]_i_1_n_0 ;
  wire \m_axis_tdata[14]_i_1_n_0 ;
  wire \m_axis_tdata[15]_i_1_n_0 ;
  wire \m_axis_tdata[16]_i_1_n_0 ;
  wire \m_axis_tdata[17]_i_1_n_0 ;
  wire \m_axis_tdata[18]_i_1_n_0 ;
  wire \m_axis_tdata[19]_i_1_n_0 ;
  wire \m_axis_tdata[1]_i_1_n_0 ;
  wire \m_axis_tdata[20]_i_1_n_0 ;
  wire \m_axis_tdata[21]_i_1_n_0 ;
  wire \m_axis_tdata[22]_i_1_n_0 ;
  wire \m_axis_tdata[23]_i_1_n_0 ;
  wire \m_axis_tdata[24]_i_1_n_0 ;
  wire \m_axis_tdata[25]_i_1_n_0 ;
  wire \m_axis_tdata[26]_i_1_n_0 ;
  wire \m_axis_tdata[27]_i_1_n_0 ;
  wire \m_axis_tdata[28]_i_1_n_0 ;
  wire \m_axis_tdata[29]_i_1_n_0 ;
  wire \m_axis_tdata[2]_i_1_n_0 ;
  wire \m_axis_tdata[30]_i_1_n_0 ;
  wire \m_axis_tdata[31]_i_1_n_0 ;
  wire \m_axis_tdata[32]_i_1_n_0 ;
  wire \m_axis_tdata[33]_i_1_n_0 ;
  wire \m_axis_tdata[34]_i_1_n_0 ;
  wire \m_axis_tdata[35]_i_1_n_0 ;
  wire \m_axis_tdata[36]_i_1_n_0 ;
  wire \m_axis_tdata[37]_i_1_n_0 ;
  wire \m_axis_tdata[38]_i_1_n_0 ;
  wire \m_axis_tdata[39]_i_1_n_0 ;
  wire \m_axis_tdata[3]_i_1_n_0 ;
  wire \m_axis_tdata[40]_i_1_n_0 ;
  wire \m_axis_tdata[41]_i_1_n_0 ;
  wire \m_axis_tdata[42]_i_1_n_0 ;
  wire \m_axis_tdata[43]_i_1_n_0 ;
  wire \m_axis_tdata[44]_i_1_n_0 ;
  wire \m_axis_tdata[45]_i_1_n_0 ;
  wire \m_axis_tdata[46]_i_1_n_0 ;
  wire \m_axis_tdata[47]_i_1_n_0 ;
  wire \m_axis_tdata[48]_i_1_n_0 ;
  wire \m_axis_tdata[49]_i_1_n_0 ;
  wire \m_axis_tdata[4]_i_1_n_0 ;
  wire \m_axis_tdata[50]_i_1_n_0 ;
  wire \m_axis_tdata[51]_i_1_n_0 ;
  wire \m_axis_tdata[52]_i_1_n_0 ;
  wire \m_axis_tdata[53]_i_1_n_0 ;
  wire \m_axis_tdata[54]_i_1_n_0 ;
  wire \m_axis_tdata[55]_i_1_n_0 ;
  wire \m_axis_tdata[56]_i_1_n_0 ;
  wire \m_axis_tdata[57]_i_1_n_0 ;
  wire \m_axis_tdata[58]_i_1_n_0 ;
  wire \m_axis_tdata[59]_i_1_n_0 ;
  wire \m_axis_tdata[5]_i_1_n_0 ;
  wire \m_axis_tdata[60]_i_1_n_0 ;
  wire \m_axis_tdata[61]_i_1_n_0 ;
  wire \m_axis_tdata[62]_i_1_n_0 ;
  wire \m_axis_tdata[63]_i_2_n_0 ;
  wire \m_axis_tdata[6]_i_1_n_0 ;
  wire \m_axis_tdata[7]_i_1_n_0 ;
  wire \m_axis_tdata[8]_i_1_n_0 ;
  wire \m_axis_tdata[9]_i_1_n_0 ;
  wire [0:0]m_axis_tkeep;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tlast_i_3_n_0;
  wire m_axis_tlast_i_4_n_0;
  wire m_axis_tlast_reg_i_2_n_0;
  wire m_axis_tvalid5_out;
  wire m_axis_tvalid_i_1_n_0;
  wire p_0_in8_out;
  wire p_0_in8_out_0;
  wire prev_valid_i_1_n_0;
  wire prev_valid_reg_0;
  wire \prev_word[31]_i_1_n_0 ;
  wire \prev_word_reg_n_0_[0] ;
  wire \prev_word_reg_n_0_[10] ;
  wire \prev_word_reg_n_0_[11] ;
  wire \prev_word_reg_n_0_[12] ;
  wire \prev_word_reg_n_0_[13] ;
  wire \prev_word_reg_n_0_[14] ;
  wire \prev_word_reg_n_0_[15] ;
  wire \prev_word_reg_n_0_[16] ;
  wire \prev_word_reg_n_0_[17] ;
  wire \prev_word_reg_n_0_[18] ;
  wire \prev_word_reg_n_0_[19] ;
  wire \prev_word_reg_n_0_[1] ;
  wire \prev_word_reg_n_0_[20] ;
  wire \prev_word_reg_n_0_[21] ;
  wire \prev_word_reg_n_0_[22] ;
  wire \prev_word_reg_n_0_[23] ;
  wire \prev_word_reg_n_0_[24] ;
  wire \prev_word_reg_n_0_[25] ;
  wire \prev_word_reg_n_0_[26] ;
  wire \prev_word_reg_n_0_[27] ;
  wire \prev_word_reg_n_0_[28] ;
  wire \prev_word_reg_n_0_[29] ;
  wire \prev_word_reg_n_0_[2] ;
  wire \prev_word_reg_n_0_[30] ;
  wire \prev_word_reg_n_0_[31] ;
  wire \prev_word_reg_n_0_[3] ;
  wire \prev_word_reg_n_0_[4] ;
  wire \prev_word_reg_n_0_[5] ;
  wire \prev_word_reg_n_0_[6] ;
  wire \prev_word_reg_n_0_[7] ;
  wire \prev_word_reg_n_0_[8] ;
  wire \prev_word_reg_n_0_[9] ;
  wire rst;
  wire rx_axis_tlast;
  wire \rx_frame_count[31]_i_4_n_0 ;
  wire \rx_frame_count[31]_i_5_n_0 ;
  wire \rx_frame_count[31]_i_6_n_0 ;
  wire \rx_frame_count[31]_i_7_n_0 ;
  wire [0:0]\rx_frame_count_reg[0] ;
  wire \seq_latched_reg[31] ;
  wire [0:0]\seq_latched_reg[31]_0 ;
  (* RTL_KEEP = "yes" *) wire [2:0]state;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[0]_i_6_n_0 ;
  wire \state_reg[0] ;
  wire \state_reg[1] ;

  LUT6 #(
    .INIT(64'hF7F7D7D702020200)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(gtx_tx_valid_reg_0),
        .I1(state[0]),
        .I2(state[2]),
        .I3(p_0_in8_out),
        .I4(state[1]),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7DDDF02020808)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(gtx_tx_valid_reg_0),
        .I1(state[0]),
        .I2(state[2]),
        .I3(p_0_in8_out),
        .I4(state[1]),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDD5D708080000)) 
    \FSM_sequential_state[2]_i_1__0 
       (.I0(gtx_tx_valid_reg_0),
        .I1(state[0]),
        .I2(state[2]),
        .I3(p_0_in8_out),
        .I4(state[1]),
        .I5(state[2]),
        .O(\FSM_sequential_state[2]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "ST_SEARCH:000,ST_B1_LO:001,ST_B1_HI:010,ST_B2_LO:011,ST_B2_HI:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state[0]),
        .R(rst));
  (* FSM_ENCODED_STATES = "ST_SEARCH:000,ST_B1_LO:001,ST_B1_HI:010,ST_B2_LO:011,ST_B2_HI:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(state[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "ST_SEARCH:000,ST_B1_LO:001,ST_B1_HI:010,ST_B2_LO:011,ST_B2_HI:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1__0_n_0 ),
        .Q(state[2]),
        .R(rst));
  LUT5 #(
    .INIT(32'h00100000)) 
    \__2/i_ 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\gtx_tx_data_reg[8] ),
        .I3(\gtx_tx_data_reg[4] ),
        .I4(state[2]),
        .O(\__2/i__n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \_inferred__0/i_ 
       (.I0(p_0_in8_out),
        .I1(state[2]),
        .I2(state[1]),
        .O(\_inferred__0/i__n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \addr_latched[31]_i_1 
       (.I0(\state_reg[1] ),
        .I1(\state_reg[0] ),
        .I2(\seq_latched_reg[31] ),
        .I3(rx_axis_tlast),
        .I4(m_axis_tkeep),
        .O(E));
  LUT4 #(
    .INIT(16'h0400)) 
    \beat_lo_word[31]_i_1 
       (.I0(\seq_latched_reg[31] ),
        .I1(gtx_tx_valid_reg),
        .I2(state[2]),
        .I3(state[0]),
        .O(\beat_lo_word[31]_i_1_n_0 ));
  FDRE \beat_lo_word_reg[0] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[0]),
        .Q(\beat_lo_word_reg_n_0_[0] ),
        .R(rst));
  FDRE \beat_lo_word_reg[10] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[10]),
        .Q(\beat_lo_word_reg_n_0_[10] ),
        .R(rst));
  FDRE \beat_lo_word_reg[11] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[11]),
        .Q(\beat_lo_word_reg_n_0_[11] ),
        .R(rst));
  FDRE \beat_lo_word_reg[12] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[12]),
        .Q(\beat_lo_word_reg_n_0_[12] ),
        .R(rst));
  FDRE \beat_lo_word_reg[13] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[13]),
        .Q(\beat_lo_word_reg_n_0_[13] ),
        .R(rst));
  FDRE \beat_lo_word_reg[14] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[14]),
        .Q(\beat_lo_word_reg_n_0_[14] ),
        .R(rst));
  FDRE \beat_lo_word_reg[15] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[15]),
        .Q(\beat_lo_word_reg_n_0_[15] ),
        .R(rst));
  FDRE \beat_lo_word_reg[16] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[16]),
        .Q(\beat_lo_word_reg_n_0_[16] ),
        .R(rst));
  FDRE \beat_lo_word_reg[17] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[17]),
        .Q(\beat_lo_word_reg_n_0_[17] ),
        .R(rst));
  FDRE \beat_lo_word_reg[18] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[18]),
        .Q(\beat_lo_word_reg_n_0_[18] ),
        .R(rst));
  FDRE \beat_lo_word_reg[19] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[19]),
        .Q(\beat_lo_word_reg_n_0_[19] ),
        .R(rst));
  FDRE \beat_lo_word_reg[1] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[1]),
        .Q(\beat_lo_word_reg_n_0_[1] ),
        .R(rst));
  FDRE \beat_lo_word_reg[20] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[20]),
        .Q(\beat_lo_word_reg_n_0_[20] ),
        .R(rst));
  FDRE \beat_lo_word_reg[21] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[21]),
        .Q(\beat_lo_word_reg_n_0_[21] ),
        .R(rst));
  FDRE \beat_lo_word_reg[22] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[22]),
        .Q(\beat_lo_word_reg_n_0_[22] ),
        .R(rst));
  FDRE \beat_lo_word_reg[23] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[23]),
        .Q(\beat_lo_word_reg_n_0_[23] ),
        .R(rst));
  FDRE \beat_lo_word_reg[24] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[24]),
        .Q(\beat_lo_word_reg_n_0_[24] ),
        .R(rst));
  FDRE \beat_lo_word_reg[25] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[25]),
        .Q(\beat_lo_word_reg_n_0_[25] ),
        .R(rst));
  FDRE \beat_lo_word_reg[26] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[26]),
        .Q(\beat_lo_word_reg_n_0_[26] ),
        .R(rst));
  FDRE \beat_lo_word_reg[27] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[27]),
        .Q(\beat_lo_word_reg_n_0_[27] ),
        .R(rst));
  FDRE \beat_lo_word_reg[28] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[28]),
        .Q(\beat_lo_word_reg_n_0_[28] ),
        .R(rst));
  FDRE \beat_lo_word_reg[29] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[29]),
        .Q(\beat_lo_word_reg_n_0_[29] ),
        .R(rst));
  FDRE \beat_lo_word_reg[2] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[2]),
        .Q(\beat_lo_word_reg_n_0_[2] ),
        .R(rst));
  FDRE \beat_lo_word_reg[30] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[30]),
        .Q(\beat_lo_word_reg_n_0_[30] ),
        .R(rst));
  FDRE \beat_lo_word_reg[31] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[31]),
        .Q(\beat_lo_word_reg_n_0_[31] ),
        .R(rst));
  FDRE \beat_lo_word_reg[3] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[3]),
        .Q(\beat_lo_word_reg_n_0_[3] ),
        .R(rst));
  FDRE \beat_lo_word_reg[4] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[4]),
        .Q(\beat_lo_word_reg_n_0_[4] ),
        .R(rst));
  FDRE \beat_lo_word_reg[5] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[5]),
        .Q(\beat_lo_word_reg_n_0_[5] ),
        .R(rst));
  FDRE \beat_lo_word_reg[6] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[6]),
        .Q(\beat_lo_word_reg_n_0_[6] ),
        .R(rst));
  FDRE \beat_lo_word_reg[7] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[7]),
        .Q(\beat_lo_word_reg_n_0_[7] ),
        .R(rst));
  FDRE \beat_lo_word_reg[8] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[8]),
        .Q(\beat_lo_word_reg_n_0_[8] ),
        .R(rst));
  FDRE \beat_lo_word_reg[9] 
       (.C(clk),
        .CE(\beat_lo_word[31]_i_1_n_0 ),
        .D(Q[9]),
        .Q(\beat_lo_word_reg_n_0_[9] ),
        .R(rst));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    crc_ok0_carry__0_i_2
       (.I0(\addr_latched_reg[31] [60]),
        .I1(calc_crc16_return__79[12]),
        .I2(calc_crc16_return__79[14]),
        .I3(\addr_latched_reg[31] [62]),
        .I4(calc_crc16_return__79[13]),
        .I5(\addr_latched_reg[31] [61]),
        .O(\rx_frame_count_reg[0] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    crc_ok0_carry_i_1
       (.I0(\addr_latched_reg[31] [57]),
        .I1(calc_crc16_return__79[9]),
        .I2(calc_crc16_return__79[11]),
        .I3(\addr_latched_reg[31] [59]),
        .I4(calc_crc16_return__79[10]),
        .I5(\addr_latched_reg[31] [58]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    crc_ok0_carry_i_2
       (.I0(\addr_latched_reg[31] [54]),
        .I1(calc_crc16_return__79[6]),
        .I2(calc_crc16_return__79[8]),
        .I3(\addr_latched_reg[31] [56]),
        .I4(calc_crc16_return__79[7]),
        .I5(\addr_latched_reg[31] [55]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    crc_ok0_carry_i_3
       (.I0(\addr_latched_reg[31] [51]),
        .I1(calc_crc16_return__79[3]),
        .I2(calc_crc16_return__79[5]),
        .I3(\addr_latched_reg[31] [53]),
        .I4(calc_crc16_return__79[4]),
        .I5(\addr_latched_reg[31] [52]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    crc_ok0_carry_i_4
       (.I0(\addr_latched_reg[31] [48]),
        .I1(calc_crc16_return__79[0]),
        .I2(calc_crc16_return__79[2]),
        .I3(\addr_latched_reg[31] [50]),
        .I4(calc_crc16_return__79[1]),
        .I5(\addr_latched_reg[31] [49]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h0FD000000FDF0000)) 
    crc_ok_i_2
       (.I0(m_axis_tkeep),
        .I1(rx_axis_tlast),
        .I2(\state_reg[0] ),
        .I3(\state_reg[1] ),
        .I4(\seq_latched_reg[31] ),
        .I5(p_0_in8_out_0),
        .O(crc_ok_reg));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[0]_i_1 
       (.I0(\prev_word_reg_n_0_[0] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[0] ),
        .I3(state[1]),
        .O(\m_axis_tdata[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[10]_i_1 
       (.I0(\prev_word_reg_n_0_[10] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[10] ),
        .I3(state[1]),
        .O(\m_axis_tdata[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[11]_i_1 
       (.I0(\prev_word_reg_n_0_[11] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[11] ),
        .I3(state[1]),
        .O(\m_axis_tdata[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[12]_i_1 
       (.I0(\prev_word_reg_n_0_[12] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[12] ),
        .I3(state[1]),
        .O(\m_axis_tdata[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[13]_i_1 
       (.I0(\prev_word_reg_n_0_[13] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[13] ),
        .I3(state[1]),
        .O(\m_axis_tdata[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[14]_i_1 
       (.I0(\prev_word_reg_n_0_[14] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[14] ),
        .I3(state[1]),
        .O(\m_axis_tdata[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[15]_i_1 
       (.I0(\prev_word_reg_n_0_[15] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[15] ),
        .I3(state[1]),
        .O(\m_axis_tdata[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[16]_i_1 
       (.I0(\prev_word_reg_n_0_[16] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[16] ),
        .I3(state[1]),
        .O(\m_axis_tdata[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[17]_i_1 
       (.I0(\prev_word_reg_n_0_[17] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[17] ),
        .I3(state[1]),
        .O(\m_axis_tdata[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[18]_i_1 
       (.I0(\prev_word_reg_n_0_[18] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[18] ),
        .I3(state[1]),
        .O(\m_axis_tdata[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[19]_i_1 
       (.I0(\prev_word_reg_n_0_[19] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[19] ),
        .I3(state[1]),
        .O(\m_axis_tdata[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[1]_i_1 
       (.I0(\prev_word_reg_n_0_[1] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[1] ),
        .I3(state[1]),
        .O(\m_axis_tdata[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[20]_i_1 
       (.I0(\prev_word_reg_n_0_[20] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[20] ),
        .I3(state[1]),
        .O(\m_axis_tdata[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[21]_i_1 
       (.I0(\prev_word_reg_n_0_[21] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[21] ),
        .I3(state[1]),
        .O(\m_axis_tdata[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[22]_i_1 
       (.I0(\prev_word_reg_n_0_[22] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[22] ),
        .I3(state[1]),
        .O(\m_axis_tdata[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[23]_i_1 
       (.I0(\prev_word_reg_n_0_[23] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[23] ),
        .I3(state[1]),
        .O(\m_axis_tdata[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[24]_i_1 
       (.I0(\prev_word_reg_n_0_[24] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[24] ),
        .I3(state[1]),
        .O(\m_axis_tdata[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[25]_i_1 
       (.I0(\prev_word_reg_n_0_[25] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[25] ),
        .I3(state[1]),
        .O(\m_axis_tdata[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[26]_i_1 
       (.I0(\prev_word_reg_n_0_[26] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[26] ),
        .I3(state[1]),
        .O(\m_axis_tdata[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[27]_i_1 
       (.I0(\prev_word_reg_n_0_[27] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[27] ),
        .I3(state[1]),
        .O(\m_axis_tdata[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[28]_i_1 
       (.I0(\prev_word_reg_n_0_[28] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[28] ),
        .I3(state[1]),
        .O(\m_axis_tdata[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[29]_i_1 
       (.I0(\prev_word_reg_n_0_[29] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[29] ),
        .I3(state[1]),
        .O(\m_axis_tdata[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[2]_i_1 
       (.I0(\prev_word_reg_n_0_[2] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[2] ),
        .I3(state[1]),
        .O(\m_axis_tdata[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[30]_i_1 
       (.I0(\prev_word_reg_n_0_[30] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[30] ),
        .I3(state[1]),
        .O(\m_axis_tdata[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[31]_i_1 
       (.I0(\prev_word_reg_n_0_[31] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[31] ),
        .I3(state[1]),
        .O(\m_axis_tdata[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[32]_i_1 
       (.I0(Q[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[32]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[33]_i_1 
       (.I0(Q[1]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[33]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[34]_i_1 
       (.I0(Q[2]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[34]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[35]_i_1 
       (.I0(Q[3]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[35]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[36]_i_1 
       (.I0(Q[4]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[36]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[37]_i_1 
       (.I0(Q[5]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[37]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[38]_i_1 
       (.I0(Q[6]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[38]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[39]_i_1 
       (.I0(Q[7]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[39]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[3]_i_1 
       (.I0(\prev_word_reg_n_0_[3] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[3] ),
        .I3(state[1]),
        .O(\m_axis_tdata[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[40]_i_1 
       (.I0(Q[8]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[40]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[41]_i_1 
       (.I0(Q[9]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[41]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[42]_i_1 
       (.I0(Q[10]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[42]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[43]_i_1 
       (.I0(Q[11]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[43]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[44]_i_1 
       (.I0(Q[12]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[44]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[45]_i_1 
       (.I0(Q[13]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[45]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[46]_i_1 
       (.I0(Q[14]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[46]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[47]_i_1 
       (.I0(Q[15]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[47]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[48]_i_1 
       (.I0(Q[16]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[48]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[49]_i_1 
       (.I0(Q[17]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[49]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[4]_i_1 
       (.I0(\prev_word_reg_n_0_[4] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[4] ),
        .I3(state[1]),
        .O(\m_axis_tdata[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[50]_i_1 
       (.I0(Q[18]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[50]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[51]_i_1 
       (.I0(Q[19]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[51]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[52]_i_1 
       (.I0(Q[20]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[52]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[53]_i_1 
       (.I0(Q[21]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[53]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[54]_i_1 
       (.I0(Q[22]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[54]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[55]_i_1 
       (.I0(Q[23]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[55]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[56]_i_1 
       (.I0(Q[24]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[56]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[57]_i_1 
       (.I0(Q[25]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[57]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[58]_i_1 
       (.I0(Q[26]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[58]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[59]_i_1 
       (.I0(Q[27]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[59]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[5]_i_1 
       (.I0(\prev_word_reg_n_0_[5] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[5] ),
        .I3(state[1]),
        .O(\m_axis_tdata[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[60]_i_1 
       (.I0(Q[28]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[60]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[61]_i_1 
       (.I0(Q[29]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[61]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[62]_i_1 
       (.I0(Q[30]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[62]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000444440)) 
    \m_axis_tdata[63]_i_1 
       (.I0(\seq_latched_reg[31] ),
        .I1(gtx_tx_valid_reg),
        .I2(p_0_in8_out),
        .I3(state[2]),
        .I4(state[1]),
        .I5(state[0]),
        .O(m_axis_tvalid5_out));
  LUT3 #(
    .INIT(8'h2A)) 
    \m_axis_tdata[63]_i_2 
       (.I0(Q[31]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\m_axis_tdata[63]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[6]_i_1 
       (.I0(\prev_word_reg_n_0_[6] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[6] ),
        .I3(state[1]),
        .O(\m_axis_tdata[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[7]_i_1 
       (.I0(\prev_word_reg_n_0_[7] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[7] ),
        .I3(state[1]),
        .O(\m_axis_tdata[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[8]_i_1 
       (.I0(\prev_word_reg_n_0_[8] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[8] ),
        .I3(state[1]),
        .O(\m_axis_tdata[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30E2)) 
    \m_axis_tdata[9]_i_1 
       (.I0(\prev_word_reg_n_0_[9] ),
        .I1(state[2]),
        .I2(\beat_lo_word_reg_n_0_[9] ),
        .I3(state[1]),
        .O(\m_axis_tdata[9]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[0]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [0]),
        .R(rst));
  FDRE \m_axis_tdata_reg[10] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[10]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [10]),
        .R(rst));
  FDRE \m_axis_tdata_reg[11] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[11]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [11]),
        .R(rst));
  FDRE \m_axis_tdata_reg[12] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[12]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [12]),
        .R(rst));
  FDRE \m_axis_tdata_reg[13] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[13]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [13]),
        .R(rst));
  FDRE \m_axis_tdata_reg[14] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[14]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [14]),
        .R(rst));
  FDRE \m_axis_tdata_reg[15] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[15]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [15]),
        .R(rst));
  FDRE \m_axis_tdata_reg[16] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[16]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [16]),
        .R(rst));
  FDRE \m_axis_tdata_reg[17] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[17]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [17]),
        .R(rst));
  FDRE \m_axis_tdata_reg[18] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[18]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [18]),
        .R(rst));
  FDRE \m_axis_tdata_reg[19] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[19]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [19]),
        .R(rst));
  FDRE \m_axis_tdata_reg[1] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[1]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [1]),
        .R(rst));
  FDRE \m_axis_tdata_reg[20] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[20]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [20]),
        .R(rst));
  FDRE \m_axis_tdata_reg[21] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[21]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [21]),
        .R(rst));
  FDRE \m_axis_tdata_reg[22] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[22]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [22]),
        .R(rst));
  FDRE \m_axis_tdata_reg[23] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[23]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [23]),
        .R(rst));
  FDRE \m_axis_tdata_reg[24] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[24]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [24]),
        .R(rst));
  FDRE \m_axis_tdata_reg[25] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[25]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [25]),
        .R(rst));
  FDRE \m_axis_tdata_reg[26] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[26]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [26]),
        .R(rst));
  FDRE \m_axis_tdata_reg[27] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[27]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [27]),
        .R(rst));
  FDRE \m_axis_tdata_reg[28] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[28]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [28]),
        .R(rst));
  FDRE \m_axis_tdata_reg[29] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[29]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [29]),
        .R(rst));
  FDRE \m_axis_tdata_reg[2] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[2]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [2]),
        .R(rst));
  FDRE \m_axis_tdata_reg[30] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[30]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [30]),
        .R(rst));
  FDRE \m_axis_tdata_reg[31] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[31]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [31]),
        .R(rst));
  FDRE \m_axis_tdata_reg[32] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[32]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [32]),
        .R(rst));
  FDRE \m_axis_tdata_reg[33] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[33]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [33]),
        .R(rst));
  FDRE \m_axis_tdata_reg[34] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[34]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [34]),
        .R(rst));
  FDRE \m_axis_tdata_reg[35] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[35]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [35]),
        .R(rst));
  FDRE \m_axis_tdata_reg[36] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[36]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [36]),
        .R(rst));
  FDRE \m_axis_tdata_reg[37] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[37]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [37]),
        .R(rst));
  FDRE \m_axis_tdata_reg[38] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[38]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [38]),
        .R(rst));
  FDRE \m_axis_tdata_reg[39] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[39]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [39]),
        .R(rst));
  FDRE \m_axis_tdata_reg[3] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[3]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [3]),
        .R(rst));
  FDRE \m_axis_tdata_reg[40] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[40]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [40]),
        .R(rst));
  FDRE \m_axis_tdata_reg[41] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[41]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [41]),
        .R(rst));
  FDRE \m_axis_tdata_reg[42] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[42]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [42]),
        .R(rst));
  FDRE \m_axis_tdata_reg[43] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[43]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [43]),
        .R(rst));
  FDRE \m_axis_tdata_reg[44] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[44]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [44]),
        .R(rst));
  FDRE \m_axis_tdata_reg[45] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[45]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [45]),
        .R(rst));
  FDRE \m_axis_tdata_reg[46] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[46]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [46]),
        .R(rst));
  FDRE \m_axis_tdata_reg[47] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[47]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [47]),
        .R(rst));
  FDRE \m_axis_tdata_reg[48] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[48]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [48]),
        .R(rst));
  FDRE \m_axis_tdata_reg[49] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[49]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [49]),
        .R(rst));
  FDRE \m_axis_tdata_reg[4] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[4]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [4]),
        .R(rst));
  FDRE \m_axis_tdata_reg[50] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[50]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [50]),
        .R(rst));
  FDRE \m_axis_tdata_reg[51] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[51]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [51]),
        .R(rst));
  FDRE \m_axis_tdata_reg[52] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[52]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [52]),
        .R(rst));
  FDRE \m_axis_tdata_reg[53] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[53]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [53]),
        .R(rst));
  FDRE \m_axis_tdata_reg[54] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[54]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [54]),
        .R(rst));
  FDRE \m_axis_tdata_reg[55] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[55]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [55]),
        .R(rst));
  FDRE \m_axis_tdata_reg[56] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[56]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [56]),
        .R(rst));
  FDRE \m_axis_tdata_reg[57] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[57]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [57]),
        .R(rst));
  FDRE \m_axis_tdata_reg[58] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[58]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [58]),
        .R(rst));
  FDRE \m_axis_tdata_reg[59] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[59]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [59]),
        .R(rst));
  FDRE \m_axis_tdata_reg[5] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[5]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [5]),
        .R(rst));
  FDRE \m_axis_tdata_reg[60] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[60]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [60]),
        .R(rst));
  FDRE \m_axis_tdata_reg[61] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[61]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [61]),
        .R(rst));
  FDRE \m_axis_tdata_reg[62] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[62]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [62]),
        .R(rst));
  FDRE \m_axis_tdata_reg[63] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[63]_i_2_n_0 ),
        .Q(\addr_latched_reg[31] [63]),
        .R(rst));
  FDRE \m_axis_tdata_reg[6] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[6]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [6]),
        .R(rst));
  FDRE \m_axis_tdata_reg[7] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[7]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [7]),
        .R(rst));
  FDRE \m_axis_tdata_reg[8] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[8]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [8]),
        .R(rst));
  FDRE \m_axis_tdata_reg[9] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\m_axis_tdata[9]_i_1_n_0 ),
        .Q(\addr_latched_reg[31] [9]),
        .R(rst));
  FDRE \m_axis_tkeep_reg[3] 
       (.C(clk),
        .CE(m_axis_tvalid5_out),
        .D(\_inferred__0/i__n_0 ),
        .Q(m_axis_tkeep),
        .R(rst));
  LUT5 #(
    .INIT(32'h00BF0080)) 
    m_axis_tlast_i_1
       (.I0(\__2/i__n_0 ),
        .I1(m_axis_tlast_reg_i_2_n_0),
        .I2(gtx_tx_valid_reg),
        .I3(\seq_latched_reg[31] ),
        .I4(rx_axis_tlast),
        .O(m_axis_tlast_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFFFFFFFF10)) 
    m_axis_tlast_i_3
       (.I0(\gtx_tx_data_reg[1] ),
        .I1(\gtx_tx_data_reg[10] ),
        .I2(prev_valid_reg_0),
        .I3(\seq_latched_reg[31] ),
        .I4(state[2]),
        .I5(state[1]),
        .O(m_axis_tlast_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    m_axis_tlast_i_4
       (.I0(\seq_latched_reg[31] ),
        .I1(state[2]),
        .O(m_axis_tlast_i_4_n_0));
  FDRE m_axis_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_tlast_i_1_n_0),
        .Q(rx_axis_tlast),
        .R(rst));
  MUXF7 m_axis_tlast_reg_i_2
       (.I0(m_axis_tlast_i_3_n_0),
        .I1(m_axis_tlast_i_4_n_0),
        .O(m_axis_tlast_reg_i_2_n_0),
        .S(state[0]));
  LUT6 #(
    .INIT(64'h0000000005540000)) 
    m_axis_tvalid_i_1
       (.I0(state[0]),
        .I1(p_0_in8_out),
        .I2(state[2]),
        .I3(state[1]),
        .I4(gtx_tx_valid_reg),
        .I5(\seq_latched_reg[31] ),
        .O(m_axis_tvalid_i_1_n_0));
  FDRE m_axis_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(\seq_latched_reg[31] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFF1F00000010)) 
    prev_valid_i_1
       (.I0(state[2]),
        .I1(p_0_in8_out),
        .I2(gtx_tx_valid_reg_0),
        .I3(state[1]),
        .I4(state[0]),
        .I5(prev_valid_reg_0),
        .O(prev_valid_i_1_n_0));
  FDRE prev_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(prev_valid_i_1_n_0),
        .Q(prev_valid_reg_0),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \prev_word[31]_i_1 
       (.I0(\seq_latched_reg[31] ),
        .I1(gtx_tx_valid_reg),
        .I2(state[1]),
        .I3(p_0_in8_out),
        .I4(state[2]),
        .I5(state[0]),
        .O(\prev_word[31]_i_1_n_0 ));
  FDRE \prev_word_reg[0] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[0]),
        .Q(\prev_word_reg_n_0_[0] ),
        .R(rst));
  FDRE \prev_word_reg[10] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[10]),
        .Q(\prev_word_reg_n_0_[10] ),
        .R(rst));
  FDRE \prev_word_reg[11] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[11]),
        .Q(\prev_word_reg_n_0_[11] ),
        .R(rst));
  FDRE \prev_word_reg[12] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[12]),
        .Q(\prev_word_reg_n_0_[12] ),
        .R(rst));
  FDRE \prev_word_reg[13] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[13]),
        .Q(\prev_word_reg_n_0_[13] ),
        .R(rst));
  FDRE \prev_word_reg[14] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[14]),
        .Q(\prev_word_reg_n_0_[14] ),
        .R(rst));
  FDRE \prev_word_reg[15] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[15]),
        .Q(\prev_word_reg_n_0_[15] ),
        .R(rst));
  FDRE \prev_word_reg[16] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[16]),
        .Q(\prev_word_reg_n_0_[16] ),
        .R(rst));
  FDRE \prev_word_reg[17] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[17]),
        .Q(\prev_word_reg_n_0_[17] ),
        .R(rst));
  FDRE \prev_word_reg[18] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[18]),
        .Q(\prev_word_reg_n_0_[18] ),
        .R(rst));
  FDRE \prev_word_reg[19] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[19]),
        .Q(\prev_word_reg_n_0_[19] ),
        .R(rst));
  FDRE \prev_word_reg[1] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[1]),
        .Q(\prev_word_reg_n_0_[1] ),
        .R(rst));
  FDRE \prev_word_reg[20] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[20]),
        .Q(\prev_word_reg_n_0_[20] ),
        .R(rst));
  FDRE \prev_word_reg[21] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[21]),
        .Q(\prev_word_reg_n_0_[21] ),
        .R(rst));
  FDRE \prev_word_reg[22] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[22]),
        .Q(\prev_word_reg_n_0_[22] ),
        .R(rst));
  FDRE \prev_word_reg[23] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[23]),
        .Q(\prev_word_reg_n_0_[23] ),
        .R(rst));
  FDRE \prev_word_reg[24] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[24]),
        .Q(\prev_word_reg_n_0_[24] ),
        .R(rst));
  FDRE \prev_word_reg[25] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[25]),
        .Q(\prev_word_reg_n_0_[25] ),
        .R(rst));
  FDRE \prev_word_reg[26] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[26]),
        .Q(\prev_word_reg_n_0_[26] ),
        .R(rst));
  FDRE \prev_word_reg[27] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[27]),
        .Q(\prev_word_reg_n_0_[27] ),
        .R(rst));
  FDRE \prev_word_reg[28] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[28]),
        .Q(\prev_word_reg_n_0_[28] ),
        .R(rst));
  FDRE \prev_word_reg[29] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[29]),
        .Q(\prev_word_reg_n_0_[29] ),
        .R(rst));
  FDRE \prev_word_reg[2] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[2]),
        .Q(\prev_word_reg_n_0_[2] ),
        .R(rst));
  FDRE \prev_word_reg[30] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[30]),
        .Q(\prev_word_reg_n_0_[30] ),
        .R(rst));
  FDRE \prev_word_reg[31] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[31]),
        .Q(\prev_word_reg_n_0_[31] ),
        .R(rst));
  FDRE \prev_word_reg[3] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[3]),
        .Q(\prev_word_reg_n_0_[3] ),
        .R(rst));
  FDRE \prev_word_reg[4] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[4]),
        .Q(\prev_word_reg_n_0_[4] ),
        .R(rst));
  FDRE \prev_word_reg[5] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[5]),
        .Q(\prev_word_reg_n_0_[5] ),
        .R(rst));
  FDRE \prev_word_reg[6] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[6]),
        .Q(\prev_word_reg_n_0_[6] ),
        .R(rst));
  FDRE \prev_word_reg[7] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[7]),
        .Q(\prev_word_reg_n_0_[7] ),
        .R(rst));
  FDRE \prev_word_reg[8] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[8]),
        .Q(\prev_word_reg_n_0_[8] ),
        .R(rst));
  FDRE \prev_word_reg[9] 
       (.C(clk),
        .CE(\prev_word[31]_i_1_n_0 ),
        .D(Q[9]),
        .Q(\prev_word_reg_n_0_[9] ),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rx_frame_count[31]_i_3 
       (.I0(\addr_latched_reg[31] [39]),
        .I1(\addr_latched_reg[31] [46]),
        .I2(\rx_frame_count[31]_i_4_n_0 ),
        .I3(\rx_frame_count[31]_i_5_n_0 ),
        .I4(\rx_frame_count[31]_i_6_n_0 ),
        .I5(\rx_frame_count[31]_i_7_n_0 ),
        .O(crc_ok1__24));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rx_frame_count[31]_i_4 
       (.I0(\addr_latched_reg[31] [36]),
        .I1(\addr_latched_reg[31] [41]),
        .I2(\addr_latched_reg[31] [34]),
        .I3(\addr_latched_reg[31] [43]),
        .O(\rx_frame_count[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rx_frame_count[31]_i_5 
       (.I0(\addr_latched_reg[31] [32]),
        .I1(\addr_latched_reg[31] [45]),
        .I2(m_axis_tkeep),
        .I3(rx_axis_tlast),
        .O(\rx_frame_count[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_frame_count[31]_i_6 
       (.I0(\addr_latched_reg[31] [44]),
        .I1(\addr_latched_reg[31] [33]),
        .I2(\addr_latched_reg[31] [42]),
        .I3(\addr_latched_reg[31] [35]),
        .O(\rx_frame_count[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \rx_frame_count[31]_i_7 
       (.I0(\addr_latched_reg[31] [40]),
        .I1(\addr_latched_reg[31] [37]),
        .I2(\addr_latched_reg[31] [38]),
        .I3(\addr_latched_reg[31] [47]),
        .O(\rx_frame_count[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \seq_latched[31]_i_1 
       (.I0(p_0_in8_out_0),
        .I1(\seq_latched_reg[31] ),
        .I2(\state_reg[0] ),
        .I3(\state_reg[1] ),
        .O(\seq_latched_reg[31]_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \state[0]_i_2 
       (.I0(\addr_latched_reg[31] [54]),
        .I1(\state[0]_i_3_n_0 ),
        .I2(\state[0]_i_4_n_0 ),
        .I3(\state[0]_i_5_n_0 ),
        .I4(\state[0]_i_6_n_0 ),
        .O(p_0_in8_out_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \state[0]_i_3 
       (.I0(\addr_latched_reg[31] [53]),
        .I1(\addr_latched_reg[31] [55]),
        .I2(\addr_latched_reg[31] [51]),
        .I3(\addr_latched_reg[31] [56]),
        .O(\state[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \state[0]_i_4 
       (.I0(\addr_latched_reg[31] [49]),
        .I1(\addr_latched_reg[31] [58]),
        .I2(m_axis_tkeep),
        .I3(rx_axis_tlast),
        .I4(\addr_latched_reg[31] [60]),
        .O(\state[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[0]_i_5 
       (.I0(\addr_latched_reg[31] [61]),
        .I1(\addr_latched_reg[31] [63]),
        .I2(\addr_latched_reg[31] [59]),
        .I3(\addr_latched_reg[31] [48]),
        .O(\state[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \state[0]_i_6 
       (.I0(\addr_latched_reg[31] [57]),
        .I1(\addr_latched_reg[31] [50]),
        .I2(\addr_latched_reg[31] [62]),
        .I3(\addr_latched_reg[31] [52]),
        .O(\state[0]_i_6_n_0 ));
endmodule

(* ORIG_REF_NAME = "loopback_checker" *) 
module loopback_debug_bd_min_optical_loopback_debug_top_0_0_loopback_checker
   (match_count,
    crc_error_count,
    format_error_count,
    last_rx_seq,
    last_rx_addr,
    last_rx_data,
    rst,
    format_ok_reg,
    clk,
    format_ok_reg_0,
    cmd_valid_reg,
    cmd_valid,
    Q,
    \rx_addr_reg[31] ,
    \rx_cmd_data_reg[31] );
  output [31:0]match_count;
  output [31:0]crc_error_count;
  output [31:0]format_error_count;
  output [31:0]last_rx_seq;
  output [31:0]last_rx_addr;
  output [31:0]last_rx_data;
  input rst;
  input format_ok_reg;
  input clk;
  input format_ok_reg_0;
  input cmd_valid_reg;
  input cmd_valid;
  input [31:0]Q;
  input [31:0]\rx_addr_reg[31] ;
  input [31:0]\rx_cmd_data_reg[31] ;

  wire [31:0]Q;
  wire clk;
  wire cmd_valid;
  wire cmd_valid_reg;
  wire [31:0]crc_error_count;
  wire \crc_error_count[3]_i_2_n_0 ;
  wire \crc_error_count_reg[11]_i_1_n_0 ;
  wire \crc_error_count_reg[11]_i_1_n_1 ;
  wire \crc_error_count_reg[11]_i_1_n_2 ;
  wire \crc_error_count_reg[11]_i_1_n_3 ;
  wire \crc_error_count_reg[11]_i_1_n_4 ;
  wire \crc_error_count_reg[11]_i_1_n_5 ;
  wire \crc_error_count_reg[11]_i_1_n_6 ;
  wire \crc_error_count_reg[11]_i_1_n_7 ;
  wire \crc_error_count_reg[15]_i_1_n_0 ;
  wire \crc_error_count_reg[15]_i_1_n_1 ;
  wire \crc_error_count_reg[15]_i_1_n_2 ;
  wire \crc_error_count_reg[15]_i_1_n_3 ;
  wire \crc_error_count_reg[15]_i_1_n_4 ;
  wire \crc_error_count_reg[15]_i_1_n_5 ;
  wire \crc_error_count_reg[15]_i_1_n_6 ;
  wire \crc_error_count_reg[15]_i_1_n_7 ;
  wire \crc_error_count_reg[19]_i_1_n_0 ;
  wire \crc_error_count_reg[19]_i_1_n_1 ;
  wire \crc_error_count_reg[19]_i_1_n_2 ;
  wire \crc_error_count_reg[19]_i_1_n_3 ;
  wire \crc_error_count_reg[19]_i_1_n_4 ;
  wire \crc_error_count_reg[19]_i_1_n_5 ;
  wire \crc_error_count_reg[19]_i_1_n_6 ;
  wire \crc_error_count_reg[19]_i_1_n_7 ;
  wire \crc_error_count_reg[23]_i_1_n_0 ;
  wire \crc_error_count_reg[23]_i_1_n_1 ;
  wire \crc_error_count_reg[23]_i_1_n_2 ;
  wire \crc_error_count_reg[23]_i_1_n_3 ;
  wire \crc_error_count_reg[23]_i_1_n_4 ;
  wire \crc_error_count_reg[23]_i_1_n_5 ;
  wire \crc_error_count_reg[23]_i_1_n_6 ;
  wire \crc_error_count_reg[23]_i_1_n_7 ;
  wire \crc_error_count_reg[27]_i_1_n_0 ;
  wire \crc_error_count_reg[27]_i_1_n_1 ;
  wire \crc_error_count_reg[27]_i_1_n_2 ;
  wire \crc_error_count_reg[27]_i_1_n_3 ;
  wire \crc_error_count_reg[27]_i_1_n_4 ;
  wire \crc_error_count_reg[27]_i_1_n_5 ;
  wire \crc_error_count_reg[27]_i_1_n_6 ;
  wire \crc_error_count_reg[27]_i_1_n_7 ;
  wire \crc_error_count_reg[31]_i_2_n_1 ;
  wire \crc_error_count_reg[31]_i_2_n_2 ;
  wire \crc_error_count_reg[31]_i_2_n_3 ;
  wire \crc_error_count_reg[31]_i_2_n_4 ;
  wire \crc_error_count_reg[31]_i_2_n_5 ;
  wire \crc_error_count_reg[31]_i_2_n_6 ;
  wire \crc_error_count_reg[31]_i_2_n_7 ;
  wire \crc_error_count_reg[3]_i_1_n_0 ;
  wire \crc_error_count_reg[3]_i_1_n_1 ;
  wire \crc_error_count_reg[3]_i_1_n_2 ;
  wire \crc_error_count_reg[3]_i_1_n_3 ;
  wire \crc_error_count_reg[3]_i_1_n_4 ;
  wire \crc_error_count_reg[3]_i_1_n_5 ;
  wire \crc_error_count_reg[3]_i_1_n_6 ;
  wire \crc_error_count_reg[3]_i_1_n_7 ;
  wire \crc_error_count_reg[7]_i_1_n_0 ;
  wire \crc_error_count_reg[7]_i_1_n_1 ;
  wire \crc_error_count_reg[7]_i_1_n_2 ;
  wire \crc_error_count_reg[7]_i_1_n_3 ;
  wire \crc_error_count_reg[7]_i_1_n_4 ;
  wire \crc_error_count_reg[7]_i_1_n_5 ;
  wire \crc_error_count_reg[7]_i_1_n_6 ;
  wire \crc_error_count_reg[7]_i_1_n_7 ;
  wire [31:0]format_error_count;
  wire \format_error_count[3]_i_2_n_0 ;
  wire \format_error_count_reg[11]_i_1_n_0 ;
  wire \format_error_count_reg[11]_i_1_n_1 ;
  wire \format_error_count_reg[11]_i_1_n_2 ;
  wire \format_error_count_reg[11]_i_1_n_3 ;
  wire \format_error_count_reg[11]_i_1_n_4 ;
  wire \format_error_count_reg[11]_i_1_n_5 ;
  wire \format_error_count_reg[11]_i_1_n_6 ;
  wire \format_error_count_reg[11]_i_1_n_7 ;
  wire \format_error_count_reg[15]_i_1_n_0 ;
  wire \format_error_count_reg[15]_i_1_n_1 ;
  wire \format_error_count_reg[15]_i_1_n_2 ;
  wire \format_error_count_reg[15]_i_1_n_3 ;
  wire \format_error_count_reg[15]_i_1_n_4 ;
  wire \format_error_count_reg[15]_i_1_n_5 ;
  wire \format_error_count_reg[15]_i_1_n_6 ;
  wire \format_error_count_reg[15]_i_1_n_7 ;
  wire \format_error_count_reg[19]_i_1_n_0 ;
  wire \format_error_count_reg[19]_i_1_n_1 ;
  wire \format_error_count_reg[19]_i_1_n_2 ;
  wire \format_error_count_reg[19]_i_1_n_3 ;
  wire \format_error_count_reg[19]_i_1_n_4 ;
  wire \format_error_count_reg[19]_i_1_n_5 ;
  wire \format_error_count_reg[19]_i_1_n_6 ;
  wire \format_error_count_reg[19]_i_1_n_7 ;
  wire \format_error_count_reg[23]_i_1_n_0 ;
  wire \format_error_count_reg[23]_i_1_n_1 ;
  wire \format_error_count_reg[23]_i_1_n_2 ;
  wire \format_error_count_reg[23]_i_1_n_3 ;
  wire \format_error_count_reg[23]_i_1_n_4 ;
  wire \format_error_count_reg[23]_i_1_n_5 ;
  wire \format_error_count_reg[23]_i_1_n_6 ;
  wire \format_error_count_reg[23]_i_1_n_7 ;
  wire \format_error_count_reg[27]_i_1_n_0 ;
  wire \format_error_count_reg[27]_i_1_n_1 ;
  wire \format_error_count_reg[27]_i_1_n_2 ;
  wire \format_error_count_reg[27]_i_1_n_3 ;
  wire \format_error_count_reg[27]_i_1_n_4 ;
  wire \format_error_count_reg[27]_i_1_n_5 ;
  wire \format_error_count_reg[27]_i_1_n_6 ;
  wire \format_error_count_reg[27]_i_1_n_7 ;
  wire \format_error_count_reg[31]_i_2_n_1 ;
  wire \format_error_count_reg[31]_i_2_n_2 ;
  wire \format_error_count_reg[31]_i_2_n_3 ;
  wire \format_error_count_reg[31]_i_2_n_4 ;
  wire \format_error_count_reg[31]_i_2_n_5 ;
  wire \format_error_count_reg[31]_i_2_n_6 ;
  wire \format_error_count_reg[31]_i_2_n_7 ;
  wire \format_error_count_reg[3]_i_1_n_0 ;
  wire \format_error_count_reg[3]_i_1_n_1 ;
  wire \format_error_count_reg[3]_i_1_n_2 ;
  wire \format_error_count_reg[3]_i_1_n_3 ;
  wire \format_error_count_reg[3]_i_1_n_4 ;
  wire \format_error_count_reg[3]_i_1_n_5 ;
  wire \format_error_count_reg[3]_i_1_n_6 ;
  wire \format_error_count_reg[3]_i_1_n_7 ;
  wire \format_error_count_reg[7]_i_1_n_0 ;
  wire \format_error_count_reg[7]_i_1_n_1 ;
  wire \format_error_count_reg[7]_i_1_n_2 ;
  wire \format_error_count_reg[7]_i_1_n_3 ;
  wire \format_error_count_reg[7]_i_1_n_4 ;
  wire \format_error_count_reg[7]_i_1_n_5 ;
  wire \format_error_count_reg[7]_i_1_n_6 ;
  wire \format_error_count_reg[7]_i_1_n_7 ;
  wire format_ok_reg;
  wire format_ok_reg_0;
  wire [31:0]last_rx_addr;
  wire [31:0]last_rx_data;
  wire [31:0]last_rx_seq;
  wire [31:0]match_count;
  wire \match_count[3]_i_2_n_0 ;
  wire \match_count_reg[11]_i_1_n_0 ;
  wire \match_count_reg[11]_i_1_n_1 ;
  wire \match_count_reg[11]_i_1_n_2 ;
  wire \match_count_reg[11]_i_1_n_3 ;
  wire \match_count_reg[11]_i_1_n_4 ;
  wire \match_count_reg[11]_i_1_n_5 ;
  wire \match_count_reg[11]_i_1_n_6 ;
  wire \match_count_reg[11]_i_1_n_7 ;
  wire \match_count_reg[15]_i_1_n_0 ;
  wire \match_count_reg[15]_i_1_n_1 ;
  wire \match_count_reg[15]_i_1_n_2 ;
  wire \match_count_reg[15]_i_1_n_3 ;
  wire \match_count_reg[15]_i_1_n_4 ;
  wire \match_count_reg[15]_i_1_n_5 ;
  wire \match_count_reg[15]_i_1_n_6 ;
  wire \match_count_reg[15]_i_1_n_7 ;
  wire \match_count_reg[19]_i_1_n_0 ;
  wire \match_count_reg[19]_i_1_n_1 ;
  wire \match_count_reg[19]_i_1_n_2 ;
  wire \match_count_reg[19]_i_1_n_3 ;
  wire \match_count_reg[19]_i_1_n_4 ;
  wire \match_count_reg[19]_i_1_n_5 ;
  wire \match_count_reg[19]_i_1_n_6 ;
  wire \match_count_reg[19]_i_1_n_7 ;
  wire \match_count_reg[23]_i_1_n_0 ;
  wire \match_count_reg[23]_i_1_n_1 ;
  wire \match_count_reg[23]_i_1_n_2 ;
  wire \match_count_reg[23]_i_1_n_3 ;
  wire \match_count_reg[23]_i_1_n_4 ;
  wire \match_count_reg[23]_i_1_n_5 ;
  wire \match_count_reg[23]_i_1_n_6 ;
  wire \match_count_reg[23]_i_1_n_7 ;
  wire \match_count_reg[27]_i_1_n_0 ;
  wire \match_count_reg[27]_i_1_n_1 ;
  wire \match_count_reg[27]_i_1_n_2 ;
  wire \match_count_reg[27]_i_1_n_3 ;
  wire \match_count_reg[27]_i_1_n_4 ;
  wire \match_count_reg[27]_i_1_n_5 ;
  wire \match_count_reg[27]_i_1_n_6 ;
  wire \match_count_reg[27]_i_1_n_7 ;
  wire \match_count_reg[31]_i_2_n_1 ;
  wire \match_count_reg[31]_i_2_n_2 ;
  wire \match_count_reg[31]_i_2_n_3 ;
  wire \match_count_reg[31]_i_2_n_4 ;
  wire \match_count_reg[31]_i_2_n_5 ;
  wire \match_count_reg[31]_i_2_n_6 ;
  wire \match_count_reg[31]_i_2_n_7 ;
  wire \match_count_reg[3]_i_1_n_0 ;
  wire \match_count_reg[3]_i_1_n_1 ;
  wire \match_count_reg[3]_i_1_n_2 ;
  wire \match_count_reg[3]_i_1_n_3 ;
  wire \match_count_reg[3]_i_1_n_4 ;
  wire \match_count_reg[3]_i_1_n_5 ;
  wire \match_count_reg[3]_i_1_n_6 ;
  wire \match_count_reg[3]_i_1_n_7 ;
  wire \match_count_reg[7]_i_1_n_0 ;
  wire \match_count_reg[7]_i_1_n_1 ;
  wire \match_count_reg[7]_i_1_n_2 ;
  wire \match_count_reg[7]_i_1_n_3 ;
  wire \match_count_reg[7]_i_1_n_4 ;
  wire \match_count_reg[7]_i_1_n_5 ;
  wire \match_count_reg[7]_i_1_n_6 ;
  wire \match_count_reg[7]_i_1_n_7 ;
  wire rst;
  wire [31:0]\rx_addr_reg[31] ;
  wire [31:0]\rx_cmd_data_reg[31] ;
  wire [3:3]\NLW_crc_error_count_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_format_error_count_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_match_count_reg[31]_i_2_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \crc_error_count[3]_i_2 
       (.I0(crc_error_count[0]),
        .O(\crc_error_count[3]_i_2_n_0 ));
  FDRE \crc_error_count_reg[0] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[3]_i_1_n_7 ),
        .Q(crc_error_count[0]),
        .R(rst));
  FDRE \crc_error_count_reg[10] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[11]_i_1_n_5 ),
        .Q(crc_error_count[10]),
        .R(rst));
  FDRE \crc_error_count_reg[11] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[11]_i_1_n_4 ),
        .Q(crc_error_count[11]),
        .R(rst));
  CARRY4 \crc_error_count_reg[11]_i_1 
       (.CI(\crc_error_count_reg[7]_i_1_n_0 ),
        .CO({\crc_error_count_reg[11]_i_1_n_0 ,\crc_error_count_reg[11]_i_1_n_1 ,\crc_error_count_reg[11]_i_1_n_2 ,\crc_error_count_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\crc_error_count_reg[11]_i_1_n_4 ,\crc_error_count_reg[11]_i_1_n_5 ,\crc_error_count_reg[11]_i_1_n_6 ,\crc_error_count_reg[11]_i_1_n_7 }),
        .S(crc_error_count[11:8]));
  FDRE \crc_error_count_reg[12] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[15]_i_1_n_7 ),
        .Q(crc_error_count[12]),
        .R(rst));
  FDRE \crc_error_count_reg[13] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[15]_i_1_n_6 ),
        .Q(crc_error_count[13]),
        .R(rst));
  FDRE \crc_error_count_reg[14] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[15]_i_1_n_5 ),
        .Q(crc_error_count[14]),
        .R(rst));
  FDRE \crc_error_count_reg[15] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[15]_i_1_n_4 ),
        .Q(crc_error_count[15]),
        .R(rst));
  CARRY4 \crc_error_count_reg[15]_i_1 
       (.CI(\crc_error_count_reg[11]_i_1_n_0 ),
        .CO({\crc_error_count_reg[15]_i_1_n_0 ,\crc_error_count_reg[15]_i_1_n_1 ,\crc_error_count_reg[15]_i_1_n_2 ,\crc_error_count_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\crc_error_count_reg[15]_i_1_n_4 ,\crc_error_count_reg[15]_i_1_n_5 ,\crc_error_count_reg[15]_i_1_n_6 ,\crc_error_count_reg[15]_i_1_n_7 }),
        .S(crc_error_count[15:12]));
  FDRE \crc_error_count_reg[16] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[19]_i_1_n_7 ),
        .Q(crc_error_count[16]),
        .R(rst));
  FDRE \crc_error_count_reg[17] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[19]_i_1_n_6 ),
        .Q(crc_error_count[17]),
        .R(rst));
  FDRE \crc_error_count_reg[18] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[19]_i_1_n_5 ),
        .Q(crc_error_count[18]),
        .R(rst));
  FDRE \crc_error_count_reg[19] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[19]_i_1_n_4 ),
        .Q(crc_error_count[19]),
        .R(rst));
  CARRY4 \crc_error_count_reg[19]_i_1 
       (.CI(\crc_error_count_reg[15]_i_1_n_0 ),
        .CO({\crc_error_count_reg[19]_i_1_n_0 ,\crc_error_count_reg[19]_i_1_n_1 ,\crc_error_count_reg[19]_i_1_n_2 ,\crc_error_count_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\crc_error_count_reg[19]_i_1_n_4 ,\crc_error_count_reg[19]_i_1_n_5 ,\crc_error_count_reg[19]_i_1_n_6 ,\crc_error_count_reg[19]_i_1_n_7 }),
        .S(crc_error_count[19:16]));
  FDRE \crc_error_count_reg[1] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[3]_i_1_n_6 ),
        .Q(crc_error_count[1]),
        .R(rst));
  FDRE \crc_error_count_reg[20] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[23]_i_1_n_7 ),
        .Q(crc_error_count[20]),
        .R(rst));
  FDRE \crc_error_count_reg[21] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[23]_i_1_n_6 ),
        .Q(crc_error_count[21]),
        .R(rst));
  FDRE \crc_error_count_reg[22] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[23]_i_1_n_5 ),
        .Q(crc_error_count[22]),
        .R(rst));
  FDRE \crc_error_count_reg[23] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[23]_i_1_n_4 ),
        .Q(crc_error_count[23]),
        .R(rst));
  CARRY4 \crc_error_count_reg[23]_i_1 
       (.CI(\crc_error_count_reg[19]_i_1_n_0 ),
        .CO({\crc_error_count_reg[23]_i_1_n_0 ,\crc_error_count_reg[23]_i_1_n_1 ,\crc_error_count_reg[23]_i_1_n_2 ,\crc_error_count_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\crc_error_count_reg[23]_i_1_n_4 ,\crc_error_count_reg[23]_i_1_n_5 ,\crc_error_count_reg[23]_i_1_n_6 ,\crc_error_count_reg[23]_i_1_n_7 }),
        .S(crc_error_count[23:20]));
  FDRE \crc_error_count_reg[24] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[27]_i_1_n_7 ),
        .Q(crc_error_count[24]),
        .R(rst));
  FDRE \crc_error_count_reg[25] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[27]_i_1_n_6 ),
        .Q(crc_error_count[25]),
        .R(rst));
  FDRE \crc_error_count_reg[26] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[27]_i_1_n_5 ),
        .Q(crc_error_count[26]),
        .R(rst));
  FDRE \crc_error_count_reg[27] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[27]_i_1_n_4 ),
        .Q(crc_error_count[27]),
        .R(rst));
  CARRY4 \crc_error_count_reg[27]_i_1 
       (.CI(\crc_error_count_reg[23]_i_1_n_0 ),
        .CO({\crc_error_count_reg[27]_i_1_n_0 ,\crc_error_count_reg[27]_i_1_n_1 ,\crc_error_count_reg[27]_i_1_n_2 ,\crc_error_count_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\crc_error_count_reg[27]_i_1_n_4 ,\crc_error_count_reg[27]_i_1_n_5 ,\crc_error_count_reg[27]_i_1_n_6 ,\crc_error_count_reg[27]_i_1_n_7 }),
        .S(crc_error_count[27:24]));
  FDRE \crc_error_count_reg[28] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[31]_i_2_n_7 ),
        .Q(crc_error_count[28]),
        .R(rst));
  FDRE \crc_error_count_reg[29] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[31]_i_2_n_6 ),
        .Q(crc_error_count[29]),
        .R(rst));
  FDRE \crc_error_count_reg[2] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[3]_i_1_n_5 ),
        .Q(crc_error_count[2]),
        .R(rst));
  FDRE \crc_error_count_reg[30] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[31]_i_2_n_5 ),
        .Q(crc_error_count[30]),
        .R(rst));
  FDRE \crc_error_count_reg[31] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[31]_i_2_n_4 ),
        .Q(crc_error_count[31]),
        .R(rst));
  CARRY4 \crc_error_count_reg[31]_i_2 
       (.CI(\crc_error_count_reg[27]_i_1_n_0 ),
        .CO({\NLW_crc_error_count_reg[31]_i_2_CO_UNCONNECTED [3],\crc_error_count_reg[31]_i_2_n_1 ,\crc_error_count_reg[31]_i_2_n_2 ,\crc_error_count_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\crc_error_count_reg[31]_i_2_n_4 ,\crc_error_count_reg[31]_i_2_n_5 ,\crc_error_count_reg[31]_i_2_n_6 ,\crc_error_count_reg[31]_i_2_n_7 }),
        .S(crc_error_count[31:28]));
  FDRE \crc_error_count_reg[3] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[3]_i_1_n_4 ),
        .Q(crc_error_count[3]),
        .R(rst));
  CARRY4 \crc_error_count_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\crc_error_count_reg[3]_i_1_n_0 ,\crc_error_count_reg[3]_i_1_n_1 ,\crc_error_count_reg[3]_i_1_n_2 ,\crc_error_count_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\crc_error_count_reg[3]_i_1_n_4 ,\crc_error_count_reg[3]_i_1_n_5 ,\crc_error_count_reg[3]_i_1_n_6 ,\crc_error_count_reg[3]_i_1_n_7 }),
        .S({crc_error_count[3:1],\crc_error_count[3]_i_2_n_0 }));
  FDRE \crc_error_count_reg[4] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[7]_i_1_n_7 ),
        .Q(crc_error_count[4]),
        .R(rst));
  FDRE \crc_error_count_reg[5] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[7]_i_1_n_6 ),
        .Q(crc_error_count[5]),
        .R(rst));
  FDRE \crc_error_count_reg[6] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[7]_i_1_n_5 ),
        .Q(crc_error_count[6]),
        .R(rst));
  FDRE \crc_error_count_reg[7] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[7]_i_1_n_4 ),
        .Q(crc_error_count[7]),
        .R(rst));
  CARRY4 \crc_error_count_reg[7]_i_1 
       (.CI(\crc_error_count_reg[3]_i_1_n_0 ),
        .CO({\crc_error_count_reg[7]_i_1_n_0 ,\crc_error_count_reg[7]_i_1_n_1 ,\crc_error_count_reg[7]_i_1_n_2 ,\crc_error_count_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\crc_error_count_reg[7]_i_1_n_4 ,\crc_error_count_reg[7]_i_1_n_5 ,\crc_error_count_reg[7]_i_1_n_6 ,\crc_error_count_reg[7]_i_1_n_7 }),
        .S(crc_error_count[7:4]));
  FDRE \crc_error_count_reg[8] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[11]_i_1_n_7 ),
        .Q(crc_error_count[8]),
        .R(rst));
  FDRE \crc_error_count_reg[9] 
       (.C(clk),
        .CE(format_ok_reg_0),
        .D(\crc_error_count_reg[11]_i_1_n_6 ),
        .Q(crc_error_count[9]),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \format_error_count[3]_i_2 
       (.I0(format_error_count[0]),
        .O(\format_error_count[3]_i_2_n_0 ));
  FDRE \format_error_count_reg[0] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[3]_i_1_n_7 ),
        .Q(format_error_count[0]),
        .R(rst));
  FDRE \format_error_count_reg[10] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[11]_i_1_n_5 ),
        .Q(format_error_count[10]),
        .R(rst));
  FDRE \format_error_count_reg[11] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[11]_i_1_n_4 ),
        .Q(format_error_count[11]),
        .R(rst));
  CARRY4 \format_error_count_reg[11]_i_1 
       (.CI(\format_error_count_reg[7]_i_1_n_0 ),
        .CO({\format_error_count_reg[11]_i_1_n_0 ,\format_error_count_reg[11]_i_1_n_1 ,\format_error_count_reg[11]_i_1_n_2 ,\format_error_count_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\format_error_count_reg[11]_i_1_n_4 ,\format_error_count_reg[11]_i_1_n_5 ,\format_error_count_reg[11]_i_1_n_6 ,\format_error_count_reg[11]_i_1_n_7 }),
        .S(format_error_count[11:8]));
  FDRE \format_error_count_reg[12] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[15]_i_1_n_7 ),
        .Q(format_error_count[12]),
        .R(rst));
  FDRE \format_error_count_reg[13] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[15]_i_1_n_6 ),
        .Q(format_error_count[13]),
        .R(rst));
  FDRE \format_error_count_reg[14] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[15]_i_1_n_5 ),
        .Q(format_error_count[14]),
        .R(rst));
  FDRE \format_error_count_reg[15] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[15]_i_1_n_4 ),
        .Q(format_error_count[15]),
        .R(rst));
  CARRY4 \format_error_count_reg[15]_i_1 
       (.CI(\format_error_count_reg[11]_i_1_n_0 ),
        .CO({\format_error_count_reg[15]_i_1_n_0 ,\format_error_count_reg[15]_i_1_n_1 ,\format_error_count_reg[15]_i_1_n_2 ,\format_error_count_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\format_error_count_reg[15]_i_1_n_4 ,\format_error_count_reg[15]_i_1_n_5 ,\format_error_count_reg[15]_i_1_n_6 ,\format_error_count_reg[15]_i_1_n_7 }),
        .S(format_error_count[15:12]));
  FDRE \format_error_count_reg[16] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[19]_i_1_n_7 ),
        .Q(format_error_count[16]),
        .R(rst));
  FDRE \format_error_count_reg[17] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[19]_i_1_n_6 ),
        .Q(format_error_count[17]),
        .R(rst));
  FDRE \format_error_count_reg[18] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[19]_i_1_n_5 ),
        .Q(format_error_count[18]),
        .R(rst));
  FDRE \format_error_count_reg[19] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[19]_i_1_n_4 ),
        .Q(format_error_count[19]),
        .R(rst));
  CARRY4 \format_error_count_reg[19]_i_1 
       (.CI(\format_error_count_reg[15]_i_1_n_0 ),
        .CO({\format_error_count_reg[19]_i_1_n_0 ,\format_error_count_reg[19]_i_1_n_1 ,\format_error_count_reg[19]_i_1_n_2 ,\format_error_count_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\format_error_count_reg[19]_i_1_n_4 ,\format_error_count_reg[19]_i_1_n_5 ,\format_error_count_reg[19]_i_1_n_6 ,\format_error_count_reg[19]_i_1_n_7 }),
        .S(format_error_count[19:16]));
  FDRE \format_error_count_reg[1] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[3]_i_1_n_6 ),
        .Q(format_error_count[1]),
        .R(rst));
  FDRE \format_error_count_reg[20] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[23]_i_1_n_7 ),
        .Q(format_error_count[20]),
        .R(rst));
  FDRE \format_error_count_reg[21] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[23]_i_1_n_6 ),
        .Q(format_error_count[21]),
        .R(rst));
  FDRE \format_error_count_reg[22] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[23]_i_1_n_5 ),
        .Q(format_error_count[22]),
        .R(rst));
  FDRE \format_error_count_reg[23] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[23]_i_1_n_4 ),
        .Q(format_error_count[23]),
        .R(rst));
  CARRY4 \format_error_count_reg[23]_i_1 
       (.CI(\format_error_count_reg[19]_i_1_n_0 ),
        .CO({\format_error_count_reg[23]_i_1_n_0 ,\format_error_count_reg[23]_i_1_n_1 ,\format_error_count_reg[23]_i_1_n_2 ,\format_error_count_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\format_error_count_reg[23]_i_1_n_4 ,\format_error_count_reg[23]_i_1_n_5 ,\format_error_count_reg[23]_i_1_n_6 ,\format_error_count_reg[23]_i_1_n_7 }),
        .S(format_error_count[23:20]));
  FDRE \format_error_count_reg[24] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[27]_i_1_n_7 ),
        .Q(format_error_count[24]),
        .R(rst));
  FDRE \format_error_count_reg[25] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[27]_i_1_n_6 ),
        .Q(format_error_count[25]),
        .R(rst));
  FDRE \format_error_count_reg[26] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[27]_i_1_n_5 ),
        .Q(format_error_count[26]),
        .R(rst));
  FDRE \format_error_count_reg[27] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[27]_i_1_n_4 ),
        .Q(format_error_count[27]),
        .R(rst));
  CARRY4 \format_error_count_reg[27]_i_1 
       (.CI(\format_error_count_reg[23]_i_1_n_0 ),
        .CO({\format_error_count_reg[27]_i_1_n_0 ,\format_error_count_reg[27]_i_1_n_1 ,\format_error_count_reg[27]_i_1_n_2 ,\format_error_count_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\format_error_count_reg[27]_i_1_n_4 ,\format_error_count_reg[27]_i_1_n_5 ,\format_error_count_reg[27]_i_1_n_6 ,\format_error_count_reg[27]_i_1_n_7 }),
        .S(format_error_count[27:24]));
  FDRE \format_error_count_reg[28] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[31]_i_2_n_7 ),
        .Q(format_error_count[28]),
        .R(rst));
  FDRE \format_error_count_reg[29] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[31]_i_2_n_6 ),
        .Q(format_error_count[29]),
        .R(rst));
  FDRE \format_error_count_reg[2] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[3]_i_1_n_5 ),
        .Q(format_error_count[2]),
        .R(rst));
  FDRE \format_error_count_reg[30] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[31]_i_2_n_5 ),
        .Q(format_error_count[30]),
        .R(rst));
  FDRE \format_error_count_reg[31] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[31]_i_2_n_4 ),
        .Q(format_error_count[31]),
        .R(rst));
  CARRY4 \format_error_count_reg[31]_i_2 
       (.CI(\format_error_count_reg[27]_i_1_n_0 ),
        .CO({\NLW_format_error_count_reg[31]_i_2_CO_UNCONNECTED [3],\format_error_count_reg[31]_i_2_n_1 ,\format_error_count_reg[31]_i_2_n_2 ,\format_error_count_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\format_error_count_reg[31]_i_2_n_4 ,\format_error_count_reg[31]_i_2_n_5 ,\format_error_count_reg[31]_i_2_n_6 ,\format_error_count_reg[31]_i_2_n_7 }),
        .S(format_error_count[31:28]));
  FDRE \format_error_count_reg[3] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[3]_i_1_n_4 ),
        .Q(format_error_count[3]),
        .R(rst));
  CARRY4 \format_error_count_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\format_error_count_reg[3]_i_1_n_0 ,\format_error_count_reg[3]_i_1_n_1 ,\format_error_count_reg[3]_i_1_n_2 ,\format_error_count_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\format_error_count_reg[3]_i_1_n_4 ,\format_error_count_reg[3]_i_1_n_5 ,\format_error_count_reg[3]_i_1_n_6 ,\format_error_count_reg[3]_i_1_n_7 }),
        .S({format_error_count[3:1],\format_error_count[3]_i_2_n_0 }));
  FDRE \format_error_count_reg[4] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[7]_i_1_n_7 ),
        .Q(format_error_count[4]),
        .R(rst));
  FDRE \format_error_count_reg[5] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[7]_i_1_n_6 ),
        .Q(format_error_count[5]),
        .R(rst));
  FDRE \format_error_count_reg[6] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[7]_i_1_n_5 ),
        .Q(format_error_count[6]),
        .R(rst));
  FDRE \format_error_count_reg[7] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[7]_i_1_n_4 ),
        .Q(format_error_count[7]),
        .R(rst));
  CARRY4 \format_error_count_reg[7]_i_1 
       (.CI(\format_error_count_reg[3]_i_1_n_0 ),
        .CO({\format_error_count_reg[7]_i_1_n_0 ,\format_error_count_reg[7]_i_1_n_1 ,\format_error_count_reg[7]_i_1_n_2 ,\format_error_count_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\format_error_count_reg[7]_i_1_n_4 ,\format_error_count_reg[7]_i_1_n_5 ,\format_error_count_reg[7]_i_1_n_6 ,\format_error_count_reg[7]_i_1_n_7 }),
        .S(format_error_count[7:4]));
  FDRE \format_error_count_reg[8] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[11]_i_1_n_7 ),
        .Q(format_error_count[8]),
        .R(rst));
  FDRE \format_error_count_reg[9] 
       (.C(clk),
        .CE(cmd_valid_reg),
        .D(\format_error_count_reg[11]_i_1_n_6 ),
        .Q(format_error_count[9]),
        .R(rst));
  FDRE \last_rx_addr_reg[0] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [0]),
        .Q(last_rx_addr[0]),
        .R(rst));
  FDRE \last_rx_addr_reg[10] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [10]),
        .Q(last_rx_addr[10]),
        .R(rst));
  FDRE \last_rx_addr_reg[11] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [11]),
        .Q(last_rx_addr[11]),
        .R(rst));
  FDRE \last_rx_addr_reg[12] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [12]),
        .Q(last_rx_addr[12]),
        .R(rst));
  FDRE \last_rx_addr_reg[13] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [13]),
        .Q(last_rx_addr[13]),
        .R(rst));
  FDRE \last_rx_addr_reg[14] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [14]),
        .Q(last_rx_addr[14]),
        .R(rst));
  FDRE \last_rx_addr_reg[15] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [15]),
        .Q(last_rx_addr[15]),
        .R(rst));
  FDRE \last_rx_addr_reg[16] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [16]),
        .Q(last_rx_addr[16]),
        .R(rst));
  FDRE \last_rx_addr_reg[17] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [17]),
        .Q(last_rx_addr[17]),
        .R(rst));
  FDRE \last_rx_addr_reg[18] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [18]),
        .Q(last_rx_addr[18]),
        .R(rst));
  FDRE \last_rx_addr_reg[19] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [19]),
        .Q(last_rx_addr[19]),
        .R(rst));
  FDRE \last_rx_addr_reg[1] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [1]),
        .Q(last_rx_addr[1]),
        .R(rst));
  FDRE \last_rx_addr_reg[20] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [20]),
        .Q(last_rx_addr[20]),
        .R(rst));
  FDRE \last_rx_addr_reg[21] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [21]),
        .Q(last_rx_addr[21]),
        .R(rst));
  FDRE \last_rx_addr_reg[22] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [22]),
        .Q(last_rx_addr[22]),
        .R(rst));
  FDRE \last_rx_addr_reg[23] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [23]),
        .Q(last_rx_addr[23]),
        .R(rst));
  FDRE \last_rx_addr_reg[24] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [24]),
        .Q(last_rx_addr[24]),
        .R(rst));
  FDRE \last_rx_addr_reg[25] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [25]),
        .Q(last_rx_addr[25]),
        .R(rst));
  FDRE \last_rx_addr_reg[26] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [26]),
        .Q(last_rx_addr[26]),
        .R(rst));
  FDRE \last_rx_addr_reg[27] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [27]),
        .Q(last_rx_addr[27]),
        .R(rst));
  FDRE \last_rx_addr_reg[28] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [28]),
        .Q(last_rx_addr[28]),
        .R(rst));
  FDRE \last_rx_addr_reg[29] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [29]),
        .Q(last_rx_addr[29]),
        .R(rst));
  FDRE \last_rx_addr_reg[2] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [2]),
        .Q(last_rx_addr[2]),
        .R(rst));
  FDRE \last_rx_addr_reg[30] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [30]),
        .Q(last_rx_addr[30]),
        .R(rst));
  FDRE \last_rx_addr_reg[31] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [31]),
        .Q(last_rx_addr[31]),
        .R(rst));
  FDRE \last_rx_addr_reg[3] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [3]),
        .Q(last_rx_addr[3]),
        .R(rst));
  FDRE \last_rx_addr_reg[4] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [4]),
        .Q(last_rx_addr[4]),
        .R(rst));
  FDRE \last_rx_addr_reg[5] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [5]),
        .Q(last_rx_addr[5]),
        .R(rst));
  FDRE \last_rx_addr_reg[6] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [6]),
        .Q(last_rx_addr[6]),
        .R(rst));
  FDRE \last_rx_addr_reg[7] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [7]),
        .Q(last_rx_addr[7]),
        .R(rst));
  FDRE \last_rx_addr_reg[8] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [8]),
        .Q(last_rx_addr[8]),
        .R(rst));
  FDRE \last_rx_addr_reg[9] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_addr_reg[31] [9]),
        .Q(last_rx_addr[9]),
        .R(rst));
  FDRE \last_rx_data_reg[0] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [0]),
        .Q(last_rx_data[0]),
        .R(rst));
  FDRE \last_rx_data_reg[10] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [10]),
        .Q(last_rx_data[10]),
        .R(rst));
  FDRE \last_rx_data_reg[11] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [11]),
        .Q(last_rx_data[11]),
        .R(rst));
  FDRE \last_rx_data_reg[12] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [12]),
        .Q(last_rx_data[12]),
        .R(rst));
  FDRE \last_rx_data_reg[13] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [13]),
        .Q(last_rx_data[13]),
        .R(rst));
  FDRE \last_rx_data_reg[14] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [14]),
        .Q(last_rx_data[14]),
        .R(rst));
  FDRE \last_rx_data_reg[15] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [15]),
        .Q(last_rx_data[15]),
        .R(rst));
  FDRE \last_rx_data_reg[16] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [16]),
        .Q(last_rx_data[16]),
        .R(rst));
  FDRE \last_rx_data_reg[17] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [17]),
        .Q(last_rx_data[17]),
        .R(rst));
  FDRE \last_rx_data_reg[18] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [18]),
        .Q(last_rx_data[18]),
        .R(rst));
  FDRE \last_rx_data_reg[19] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [19]),
        .Q(last_rx_data[19]),
        .R(rst));
  FDRE \last_rx_data_reg[1] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [1]),
        .Q(last_rx_data[1]),
        .R(rst));
  FDRE \last_rx_data_reg[20] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [20]),
        .Q(last_rx_data[20]),
        .R(rst));
  FDRE \last_rx_data_reg[21] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [21]),
        .Q(last_rx_data[21]),
        .R(rst));
  FDRE \last_rx_data_reg[22] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [22]),
        .Q(last_rx_data[22]),
        .R(rst));
  FDRE \last_rx_data_reg[23] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [23]),
        .Q(last_rx_data[23]),
        .R(rst));
  FDRE \last_rx_data_reg[24] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [24]),
        .Q(last_rx_data[24]),
        .R(rst));
  FDRE \last_rx_data_reg[25] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [25]),
        .Q(last_rx_data[25]),
        .R(rst));
  FDRE \last_rx_data_reg[26] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [26]),
        .Q(last_rx_data[26]),
        .R(rst));
  FDRE \last_rx_data_reg[27] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [27]),
        .Q(last_rx_data[27]),
        .R(rst));
  FDRE \last_rx_data_reg[28] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [28]),
        .Q(last_rx_data[28]),
        .R(rst));
  FDRE \last_rx_data_reg[29] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [29]),
        .Q(last_rx_data[29]),
        .R(rst));
  FDRE \last_rx_data_reg[2] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [2]),
        .Q(last_rx_data[2]),
        .R(rst));
  FDRE \last_rx_data_reg[30] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [30]),
        .Q(last_rx_data[30]),
        .R(rst));
  FDRE \last_rx_data_reg[31] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [31]),
        .Q(last_rx_data[31]),
        .R(rst));
  FDRE \last_rx_data_reg[3] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [3]),
        .Q(last_rx_data[3]),
        .R(rst));
  FDRE \last_rx_data_reg[4] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [4]),
        .Q(last_rx_data[4]),
        .R(rst));
  FDRE \last_rx_data_reg[5] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [5]),
        .Q(last_rx_data[5]),
        .R(rst));
  FDRE \last_rx_data_reg[6] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [6]),
        .Q(last_rx_data[6]),
        .R(rst));
  FDRE \last_rx_data_reg[7] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [7]),
        .Q(last_rx_data[7]),
        .R(rst));
  FDRE \last_rx_data_reg[8] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [8]),
        .Q(last_rx_data[8]),
        .R(rst));
  FDRE \last_rx_data_reg[9] 
       (.C(clk),
        .CE(cmd_valid),
        .D(\rx_cmd_data_reg[31] [9]),
        .Q(last_rx_data[9]),
        .R(rst));
  FDRE \last_rx_seq_reg[0] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[0]),
        .Q(last_rx_seq[0]),
        .R(rst));
  FDRE \last_rx_seq_reg[10] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[10]),
        .Q(last_rx_seq[10]),
        .R(rst));
  FDRE \last_rx_seq_reg[11] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[11]),
        .Q(last_rx_seq[11]),
        .R(rst));
  FDRE \last_rx_seq_reg[12] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[12]),
        .Q(last_rx_seq[12]),
        .R(rst));
  FDRE \last_rx_seq_reg[13] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[13]),
        .Q(last_rx_seq[13]),
        .R(rst));
  FDRE \last_rx_seq_reg[14] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[14]),
        .Q(last_rx_seq[14]),
        .R(rst));
  FDRE \last_rx_seq_reg[15] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[15]),
        .Q(last_rx_seq[15]),
        .R(rst));
  FDRE \last_rx_seq_reg[16] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[16]),
        .Q(last_rx_seq[16]),
        .R(rst));
  FDRE \last_rx_seq_reg[17] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[17]),
        .Q(last_rx_seq[17]),
        .R(rst));
  FDRE \last_rx_seq_reg[18] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[18]),
        .Q(last_rx_seq[18]),
        .R(rst));
  FDRE \last_rx_seq_reg[19] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[19]),
        .Q(last_rx_seq[19]),
        .R(rst));
  FDRE \last_rx_seq_reg[1] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[1]),
        .Q(last_rx_seq[1]),
        .R(rst));
  FDRE \last_rx_seq_reg[20] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[20]),
        .Q(last_rx_seq[20]),
        .R(rst));
  FDRE \last_rx_seq_reg[21] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[21]),
        .Q(last_rx_seq[21]),
        .R(rst));
  FDRE \last_rx_seq_reg[22] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[22]),
        .Q(last_rx_seq[22]),
        .R(rst));
  FDRE \last_rx_seq_reg[23] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[23]),
        .Q(last_rx_seq[23]),
        .R(rst));
  FDRE \last_rx_seq_reg[24] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[24]),
        .Q(last_rx_seq[24]),
        .R(rst));
  FDRE \last_rx_seq_reg[25] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[25]),
        .Q(last_rx_seq[25]),
        .R(rst));
  FDRE \last_rx_seq_reg[26] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[26]),
        .Q(last_rx_seq[26]),
        .R(rst));
  FDRE \last_rx_seq_reg[27] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[27]),
        .Q(last_rx_seq[27]),
        .R(rst));
  FDRE \last_rx_seq_reg[28] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[28]),
        .Q(last_rx_seq[28]),
        .R(rst));
  FDRE \last_rx_seq_reg[29] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[29]),
        .Q(last_rx_seq[29]),
        .R(rst));
  FDRE \last_rx_seq_reg[2] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[2]),
        .Q(last_rx_seq[2]),
        .R(rst));
  FDRE \last_rx_seq_reg[30] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[30]),
        .Q(last_rx_seq[30]),
        .R(rst));
  FDRE \last_rx_seq_reg[31] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[31]),
        .Q(last_rx_seq[31]),
        .R(rst));
  FDRE \last_rx_seq_reg[3] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[3]),
        .Q(last_rx_seq[3]),
        .R(rst));
  FDRE \last_rx_seq_reg[4] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[4]),
        .Q(last_rx_seq[4]),
        .R(rst));
  FDRE \last_rx_seq_reg[5] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[5]),
        .Q(last_rx_seq[5]),
        .R(rst));
  FDRE \last_rx_seq_reg[6] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[6]),
        .Q(last_rx_seq[6]),
        .R(rst));
  FDRE \last_rx_seq_reg[7] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[7]),
        .Q(last_rx_seq[7]),
        .R(rst));
  FDRE \last_rx_seq_reg[8] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[8]),
        .Q(last_rx_seq[8]),
        .R(rst));
  FDRE \last_rx_seq_reg[9] 
       (.C(clk),
        .CE(cmd_valid),
        .D(Q[9]),
        .Q(last_rx_seq[9]),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \match_count[3]_i_2 
       (.I0(match_count[0]),
        .O(\match_count[3]_i_2_n_0 ));
  FDRE \match_count_reg[0] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[3]_i_1_n_7 ),
        .Q(match_count[0]),
        .R(rst));
  FDRE \match_count_reg[10] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[11]_i_1_n_5 ),
        .Q(match_count[10]),
        .R(rst));
  FDRE \match_count_reg[11] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[11]_i_1_n_4 ),
        .Q(match_count[11]),
        .R(rst));
  CARRY4 \match_count_reg[11]_i_1 
       (.CI(\match_count_reg[7]_i_1_n_0 ),
        .CO({\match_count_reg[11]_i_1_n_0 ,\match_count_reg[11]_i_1_n_1 ,\match_count_reg[11]_i_1_n_2 ,\match_count_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\match_count_reg[11]_i_1_n_4 ,\match_count_reg[11]_i_1_n_5 ,\match_count_reg[11]_i_1_n_6 ,\match_count_reg[11]_i_1_n_7 }),
        .S(match_count[11:8]));
  FDRE \match_count_reg[12] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[15]_i_1_n_7 ),
        .Q(match_count[12]),
        .R(rst));
  FDRE \match_count_reg[13] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[15]_i_1_n_6 ),
        .Q(match_count[13]),
        .R(rst));
  FDRE \match_count_reg[14] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[15]_i_1_n_5 ),
        .Q(match_count[14]),
        .R(rst));
  FDRE \match_count_reg[15] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[15]_i_1_n_4 ),
        .Q(match_count[15]),
        .R(rst));
  CARRY4 \match_count_reg[15]_i_1 
       (.CI(\match_count_reg[11]_i_1_n_0 ),
        .CO({\match_count_reg[15]_i_1_n_0 ,\match_count_reg[15]_i_1_n_1 ,\match_count_reg[15]_i_1_n_2 ,\match_count_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\match_count_reg[15]_i_1_n_4 ,\match_count_reg[15]_i_1_n_5 ,\match_count_reg[15]_i_1_n_6 ,\match_count_reg[15]_i_1_n_7 }),
        .S(match_count[15:12]));
  FDRE \match_count_reg[16] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[19]_i_1_n_7 ),
        .Q(match_count[16]),
        .R(rst));
  FDRE \match_count_reg[17] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[19]_i_1_n_6 ),
        .Q(match_count[17]),
        .R(rst));
  FDRE \match_count_reg[18] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[19]_i_1_n_5 ),
        .Q(match_count[18]),
        .R(rst));
  FDRE \match_count_reg[19] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[19]_i_1_n_4 ),
        .Q(match_count[19]),
        .R(rst));
  CARRY4 \match_count_reg[19]_i_1 
       (.CI(\match_count_reg[15]_i_1_n_0 ),
        .CO({\match_count_reg[19]_i_1_n_0 ,\match_count_reg[19]_i_1_n_1 ,\match_count_reg[19]_i_1_n_2 ,\match_count_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\match_count_reg[19]_i_1_n_4 ,\match_count_reg[19]_i_1_n_5 ,\match_count_reg[19]_i_1_n_6 ,\match_count_reg[19]_i_1_n_7 }),
        .S(match_count[19:16]));
  FDRE \match_count_reg[1] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[3]_i_1_n_6 ),
        .Q(match_count[1]),
        .R(rst));
  FDRE \match_count_reg[20] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[23]_i_1_n_7 ),
        .Q(match_count[20]),
        .R(rst));
  FDRE \match_count_reg[21] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[23]_i_1_n_6 ),
        .Q(match_count[21]),
        .R(rst));
  FDRE \match_count_reg[22] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[23]_i_1_n_5 ),
        .Q(match_count[22]),
        .R(rst));
  FDRE \match_count_reg[23] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[23]_i_1_n_4 ),
        .Q(match_count[23]),
        .R(rst));
  CARRY4 \match_count_reg[23]_i_1 
       (.CI(\match_count_reg[19]_i_1_n_0 ),
        .CO({\match_count_reg[23]_i_1_n_0 ,\match_count_reg[23]_i_1_n_1 ,\match_count_reg[23]_i_1_n_2 ,\match_count_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\match_count_reg[23]_i_1_n_4 ,\match_count_reg[23]_i_1_n_5 ,\match_count_reg[23]_i_1_n_6 ,\match_count_reg[23]_i_1_n_7 }),
        .S(match_count[23:20]));
  FDRE \match_count_reg[24] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[27]_i_1_n_7 ),
        .Q(match_count[24]),
        .R(rst));
  FDRE \match_count_reg[25] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[27]_i_1_n_6 ),
        .Q(match_count[25]),
        .R(rst));
  FDRE \match_count_reg[26] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[27]_i_1_n_5 ),
        .Q(match_count[26]),
        .R(rst));
  FDRE \match_count_reg[27] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[27]_i_1_n_4 ),
        .Q(match_count[27]),
        .R(rst));
  CARRY4 \match_count_reg[27]_i_1 
       (.CI(\match_count_reg[23]_i_1_n_0 ),
        .CO({\match_count_reg[27]_i_1_n_0 ,\match_count_reg[27]_i_1_n_1 ,\match_count_reg[27]_i_1_n_2 ,\match_count_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\match_count_reg[27]_i_1_n_4 ,\match_count_reg[27]_i_1_n_5 ,\match_count_reg[27]_i_1_n_6 ,\match_count_reg[27]_i_1_n_7 }),
        .S(match_count[27:24]));
  FDRE \match_count_reg[28] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[31]_i_2_n_7 ),
        .Q(match_count[28]),
        .R(rst));
  FDRE \match_count_reg[29] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[31]_i_2_n_6 ),
        .Q(match_count[29]),
        .R(rst));
  FDRE \match_count_reg[2] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[3]_i_1_n_5 ),
        .Q(match_count[2]),
        .R(rst));
  FDRE \match_count_reg[30] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[31]_i_2_n_5 ),
        .Q(match_count[30]),
        .R(rst));
  FDRE \match_count_reg[31] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[31]_i_2_n_4 ),
        .Q(match_count[31]),
        .R(rst));
  CARRY4 \match_count_reg[31]_i_2 
       (.CI(\match_count_reg[27]_i_1_n_0 ),
        .CO({\NLW_match_count_reg[31]_i_2_CO_UNCONNECTED [3],\match_count_reg[31]_i_2_n_1 ,\match_count_reg[31]_i_2_n_2 ,\match_count_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\match_count_reg[31]_i_2_n_4 ,\match_count_reg[31]_i_2_n_5 ,\match_count_reg[31]_i_2_n_6 ,\match_count_reg[31]_i_2_n_7 }),
        .S(match_count[31:28]));
  FDRE \match_count_reg[3] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[3]_i_1_n_4 ),
        .Q(match_count[3]),
        .R(rst));
  CARRY4 \match_count_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\match_count_reg[3]_i_1_n_0 ,\match_count_reg[3]_i_1_n_1 ,\match_count_reg[3]_i_1_n_2 ,\match_count_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\match_count_reg[3]_i_1_n_4 ,\match_count_reg[3]_i_1_n_5 ,\match_count_reg[3]_i_1_n_6 ,\match_count_reg[3]_i_1_n_7 }),
        .S({match_count[3:1],\match_count[3]_i_2_n_0 }));
  FDRE \match_count_reg[4] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[7]_i_1_n_7 ),
        .Q(match_count[4]),
        .R(rst));
  FDRE \match_count_reg[5] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[7]_i_1_n_6 ),
        .Q(match_count[5]),
        .R(rst));
  FDRE \match_count_reg[6] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[7]_i_1_n_5 ),
        .Q(match_count[6]),
        .R(rst));
  FDRE \match_count_reg[7] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[7]_i_1_n_4 ),
        .Q(match_count[7]),
        .R(rst));
  CARRY4 \match_count_reg[7]_i_1 
       (.CI(\match_count_reg[3]_i_1_n_0 ),
        .CO({\match_count_reg[7]_i_1_n_0 ,\match_count_reg[7]_i_1_n_1 ,\match_count_reg[7]_i_1_n_2 ,\match_count_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\match_count_reg[7]_i_1_n_4 ,\match_count_reg[7]_i_1_n_5 ,\match_count_reg[7]_i_1_n_6 ,\match_count_reg[7]_i_1_n_7 }),
        .S(match_count[7:4]));
  FDRE \match_count_reg[8] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[11]_i_1_n_7 ),
        .Q(match_count[8]),
        .R(rst));
  FDRE \match_count_reg[9] 
       (.C(clk),
        .CE(format_ok_reg),
        .D(\match_count_reg[11]_i_1_n_6 ),
        .Q(match_count[9]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "loopback_debug_block" *) 
module loopback_debug_bd_min_optical_loopback_debug_top_0_0_loopback_debug_block
   (rx_frame_count,
    match_count,
    crc_error_count,
    format_error_count,
    rx_axis_tvalid,
    prev_valid_reg,
    last_rx_seq,
    last_rx_addr,
    last_rx_data,
    rst,
    clk,
    Q,
    gtx_tx_valid_reg,
    p_0_in8_out,
    gtx_tx_valid_reg_0,
    \gtx_tx_data_reg[1] ,
    \gtx_tx_data_reg[10] ,
    \gtx_tx_data_reg[8] ,
    \gtx_tx_data_reg[4] );
  output [31:0]rx_frame_count;
  output [31:0]match_count;
  output [31:0]crc_error_count;
  output [31:0]format_error_count;
  output rx_axis_tvalid;
  output prev_valid_reg;
  output [31:0]last_rx_seq;
  output [31:0]last_rx_addr;
  output [31:0]last_rx_data;
  input rst;
  input clk;
  input [31:0]Q;
  input gtx_tx_valid_reg;
  input p_0_in8_out;
  input gtx_tx_valid_reg_0;
  input \gtx_tx_data_reg[1] ;
  input \gtx_tx_data_reg[10] ;
  input \gtx_tx_data_reg[8] ;
  input \gtx_tx_data_reg[4] ;

  wire [31:0]Q;
  wire [14:0]calc_crc16_return__79;
  wire clk;
  wire cmd_valid;
  wire [31:0]crc_error_count;
  wire crc_ok1__24;
  wire data_latched;
  wire [31:0]format_error_count;
  wire \gtx_tx_data_reg[10] ;
  wire \gtx_tx_data_reg[1] ;
  wire \gtx_tx_data_reg[4] ;
  wire \gtx_tx_data_reg[8] ;
  wire gtx_tx_valid_reg;
  wire gtx_tx_valid_reg_0;
  wire [31:0]last_rx_addr;
  wire [31:0]last_rx_data;
  wire [31:0]last_rx_seq;
  wire [31:0]m_axis_tdata;
  wire [3:3]m_axis_tkeep;
  wire [31:0]match_count;
  wire p_0_in8_out;
  wire p_0_in8_out_0;
  wire prev_valid_reg;
  wire rst;
  wire [31:0]rx_addr;
  wire [63:32]rx_axis_tdata;
  wire rx_axis_tlast;
  wire rx_axis_tvalid;
  wire [31:0]rx_cmd_data;
  wire [31:0]rx_frame_count;
  wire [31:0]rx_seq;
  wire u_gtx_rx32_to_stream64_n_10;
  wire u_gtx_rx32_to_stream64_n_5;
  wire u_gtx_rx32_to_stream64_n_7;
  wire u_gtx_rx32_to_stream64_n_75;
  wire u_gtx_rx32_to_stream64_n_76;
  wire u_gtx_rx32_to_stream64_n_8;
  wire u_gtx_rx32_to_stream64_n_9;
  wire u_optical_cmd_rx_n_33;
  wire u_optical_cmd_rx_n_49;
  wire u_optical_cmd_rx_n_50;
  wire u_optical_cmd_rx_n_51;
  wire u_optical_cmd_rx_n_52;

  loopback_debug_bd_min_optical_loopback_debug_top_0_0_gtx_rx32_to_stream64 u_gtx_rx32_to_stream64
       (.E(data_latched),
        .Q(Q),
        .S({u_gtx_rx32_to_stream64_n_7,u_gtx_rx32_to_stream64_n_8,u_gtx_rx32_to_stream64_n_9,u_gtx_rx32_to_stream64_n_10}),
        .\addr_latched_reg[31] ({rx_axis_tdata,m_axis_tdata}),
        .calc_crc16_return__79(calc_crc16_return__79),
        .clk(clk),
        .crc_ok1__24(crc_ok1__24),
        .crc_ok_reg(u_gtx_rx32_to_stream64_n_76),
        .\gtx_tx_data_reg[10] (\gtx_tx_data_reg[10] ),
        .\gtx_tx_data_reg[1] (\gtx_tx_data_reg[1] ),
        .\gtx_tx_data_reg[4] (\gtx_tx_data_reg[4] ),
        .\gtx_tx_data_reg[8] (\gtx_tx_data_reg[8] ),
        .gtx_tx_valid_reg(gtx_tx_valid_reg),
        .gtx_tx_valid_reg_0(gtx_tx_valid_reg_0),
        .m_axis_tkeep(m_axis_tkeep),
        .p_0_in8_out(p_0_in8_out),
        .p_0_in8_out_0(p_0_in8_out_0),
        .prev_valid_reg_0(prev_valid_reg),
        .rst(rst),
        .rx_axis_tlast(rx_axis_tlast),
        .\rx_frame_count_reg[0] (u_gtx_rx32_to_stream64_n_75),
        .\seq_latched_reg[31] (rx_axis_tvalid),
        .\seq_latched_reg[31]_0 (u_gtx_rx32_to_stream64_n_5),
        .\state_reg[0] (u_optical_cmd_rx_n_51),
        .\state_reg[1] (u_optical_cmd_rx_n_52));
  loopback_debug_bd_min_optical_loopback_debug_top_0_0_loopback_checker u_loopback_checker
       (.Q(rx_seq),
        .clk(clk),
        .cmd_valid(cmd_valid),
        .cmd_valid_reg(u_optical_cmd_rx_n_49),
        .crc_error_count(crc_error_count),
        .format_error_count(format_error_count),
        .format_ok_reg(u_optical_cmd_rx_n_50),
        .format_ok_reg_0(u_optical_cmd_rx_n_33),
        .last_rx_addr(last_rx_addr),
        .last_rx_data(last_rx_data),
        .last_rx_seq(last_rx_seq),
        .match_count(match_count),
        .rst(rst),
        .\rx_addr_reg[31] (rx_addr),
        .\rx_cmd_data_reg[31] (rx_cmd_data));
  loopback_debug_bd_min_optical_loopback_debug_top_0_0_optical_cmd_rx u_optical_cmd_rx
       (.E(data_latched),
        .Q(rx_seq),
        .S({u_gtx_rx32_to_stream64_n_7,u_gtx_rx32_to_stream64_n_8,u_gtx_rx32_to_stream64_n_9,u_gtx_rx32_to_stream64_n_10}),
        .clk(clk),
        .cmd_valid(cmd_valid),
        .\crc_error_count_reg[0] (u_optical_cmd_rx_n_33),
        .crc_ok1__24(crc_ok1__24),
        .\format_error_count_reg[0] (u_optical_cmd_rx_n_49),
        .\last_rx_addr_reg[31] (rx_addr),
        .\last_rx_data_reg[31] (rx_cmd_data),
        .\m_axis_tdata_reg[60] (u_gtx_rx32_to_stream64_n_75),
        .\m_axis_tdata_reg[63] ({rx_axis_tdata,m_axis_tdata}),
        .m_axis_tkeep(m_axis_tkeep),
        .\m_axis_tkeep_reg[3] (u_gtx_rx32_to_stream64_n_76),
        .m_axis_tvalid_reg(rx_axis_tvalid),
        .m_axis_tvalid_reg_0(u_gtx_rx32_to_stream64_n_5),
        .\match_count_reg[31] (u_optical_cmd_rx_n_50),
        .p_0_in8_out(p_0_in8_out_0),
        .rst(rst),
        .rx_axis_tlast(rx_axis_tlast),
        .rx_frame_count(rx_frame_count),
        .\rx_frame_count_reg[0]_0 (calc_crc16_return__79),
        .\state_reg[1]_0 (u_optical_cmd_rx_n_51),
        .\state_reg[1]_1 (u_optical_cmd_rx_n_52));
endmodule

(* ORIG_REF_NAME = "min_optical_loopback_debug_top" *) 
module loopback_debug_bd_min_optical_loopback_debug_top_0_0_min_optical_loopback_debug_top
   (tx_frame_count,
    optical_tx_valid,
    gtx_tx_valid,
    Q,
    status_reg_3_sp_1,
    optical_tx_data,
    gtx_tx_last,
    last_rx_seq,
    last_rx_addr,
    last_rx_data,
    status_reg,
    gtx_tx_word_count,
    rx_frame_count,
    match_count,
    crc_error_count,
    format_error_count,
    optical_tx_last,
    optical_tx_keep,
    gtx_tx_word_index,
    pcie_wr_addr,
    clk,
    rst,
    pcie_wr_data,
    pcie_wr_en);
  output [31:0]tx_frame_count;
  output optical_tx_valid;
  output gtx_tx_valid;
  output [31:0]Q;
  output status_reg_3_sp_1;
  output [63:0]optical_tx_data;
  output gtx_tx_last;
  output [31:0]last_rx_seq;
  output [31:0]last_rx_addr;
  output [31:0]last_rx_data;
  output [28:0]status_reg;
  output [31:0]gtx_tx_word_count;
  output [31:0]rx_frame_count;
  output [31:0]match_count;
  output [31:0]crc_error_count;
  output [31:0]format_error_count;
  output optical_tx_last;
  output [0:0]optical_tx_keep;
  output [0:0]gtx_tx_word_index;
  input [31:0]pcie_wr_addr;
  input clk;
  input rst;
  input [31:0]pcie_wr_data;
  input pcie_wr_en;

  wire [31:0]Q;
  wire clk;
  wire [31:0]crc_error_count;
  wire [31:0]format_error_count;
  wire gtx_tx_last;
  wire gtx_tx_valid;
  wire [31:0]gtx_tx_word_count;
  wire [0:0]gtx_tx_word_index;
  wire [31:0]last_rx_addr;
  wire [31:0]last_rx_data;
  wire [31:0]last_rx_seq;
  wire [31:0]match_count;
  wire [63:0]optical_tx_data;
  wire [0:0]optical_tx_keep;
  wire optical_tx_last;
  wire optical_tx_valid;
  wire [31:0]pcie_wr_addr;
  wire [31:0]pcie_wr_data;
  wire pcie_wr_en;
  wire rst;
  wire rx_axis_tvalid;
  wire [31:0]rx_frame_count;
  wire [28:0]status_reg;
  wire status_reg_3_sn_1;
  wire [31:0]tx_frame_count;
  wire \u_gtx_rx32_to_stream64/p_0_in8_out ;
  wire u_loopback_debug_block_n_129;
  wire u_pcie_cmd_to_optical_gtx_top_n_101;
  wire u_pcie_cmd_to_optical_gtx_top_n_134;
  wire u_pcie_cmd_to_optical_gtx_top_n_136;
  wire u_pcie_cmd_to_optical_gtx_top_n_137;
  wire u_pcie_cmd_to_optical_gtx_top_n_99;

  assign status_reg_3_sp_1 = status_reg_3_sn_1;
  loopback_debug_bd_min_optical_loopback_debug_top_0_0_loopback_debug_block u_loopback_debug_block
       (.Q(Q),
        .clk(clk),
        .crc_error_count(crc_error_count),
        .format_error_count(format_error_count),
        .\gtx_tx_data_reg[10] (u_pcie_cmd_to_optical_gtx_top_n_101),
        .\gtx_tx_data_reg[1] (u_pcie_cmd_to_optical_gtx_top_n_134),
        .\gtx_tx_data_reg[4] (u_pcie_cmd_to_optical_gtx_top_n_136),
        .\gtx_tx_data_reg[8] (u_pcie_cmd_to_optical_gtx_top_n_137),
        .gtx_tx_valid_reg(gtx_tx_valid),
        .gtx_tx_valid_reg_0(u_pcie_cmd_to_optical_gtx_top_n_99),
        .last_rx_addr(last_rx_addr),
        .last_rx_data(last_rx_data),
        .last_rx_seq(last_rx_seq),
        .match_count(match_count),
        .p_0_in8_out(\u_gtx_rx32_to_stream64/p_0_in8_out ),
        .prev_valid_reg(u_loopback_debug_block_n_129),
        .rst(rst),
        .rx_axis_tvalid(rx_axis_tvalid),
        .rx_frame_count(rx_frame_count));
  loopback_debug_bd_min_optical_loopback_debug_top_0_0_pcie_cmd_to_optical_gtx_top u_pcie_cmd_to_optical_gtx_top
       (.Q(Q),
        .S(tx_frame_count[3:1]),
        .clk(clk),
        .gtx_tx_last(gtx_tx_last),
        .gtx_tx_valid(gtx_tx_valid),
        .gtx_tx_word_count(gtx_tx_word_count),
        .gtx_tx_word_index(gtx_tx_word_index),
        .m_axis_tlast_reg(u_pcie_cmd_to_optical_gtx_top_n_101),
        .m_axis_tlast_reg_0(u_pcie_cmd_to_optical_gtx_top_n_134),
        .m_axis_tlast_reg_1(u_pcie_cmd_to_optical_gtx_top_n_136),
        .m_axis_tlast_reg_2(u_pcie_cmd_to_optical_gtx_top_n_137),
        .optical_tx_data(optical_tx_data),
        .optical_tx_keep(optical_tx_keep),
        .optical_tx_last(optical_tx_last),
        .optical_tx_valid(optical_tx_valid),
        .p_0_in8_out(\u_gtx_rx32_to_stream64/p_0_in8_out ),
        .pcie_wr_addr(pcie_wr_addr),
        .pcie_wr_data(pcie_wr_data),
        .pcie_wr_en(pcie_wr_en),
        .prev_valid_reg(u_pcie_cmd_to_optical_gtx_top_n_99),
        .prev_valid_reg_0(u_loopback_debug_block_n_129),
        .rst(rst),
        .rx_axis_tvalid(rx_axis_tvalid),
        .status_reg(status_reg),
        .status_reg_3_sp_1(status_reg_3_sn_1),
        .\tx_frame_count[0] (tx_frame_count[0]),
        .\tx_frame_count[11] (tx_frame_count[11:8]),
        .\tx_frame_count[15] (tx_frame_count[15:12]),
        .\tx_frame_count[19] (tx_frame_count[19:16]),
        .\tx_frame_count[23] (tx_frame_count[23:20]),
        .\tx_frame_count[27] (tx_frame_count[27:24]),
        .\tx_frame_count[31] (tx_frame_count[31:28]),
        .\tx_frame_count[7] (tx_frame_count[7:4]));
endmodule

(* ORIG_REF_NAME = "optical_cmd_rx" *) 
module loopback_debug_bd_min_optical_loopback_debug_top_0_0_optical_cmd_rx
   (cmd_valid,
    rx_frame_count,
    \crc_error_count_reg[0] ,
    \rx_frame_count_reg[0]_0 ,
    \format_error_count_reg[0] ,
    \match_count_reg[31] ,
    \state_reg[1]_0 ,
    \state_reg[1]_1 ,
    Q,
    \last_rx_addr_reg[31] ,
    \last_rx_data_reg[31] ,
    rst,
    clk,
    S,
    \m_axis_tdata_reg[60] ,
    \m_axis_tdata_reg[63] ,
    m_axis_tvalid_reg,
    crc_ok1__24,
    \m_axis_tkeep_reg[3] ,
    m_axis_tkeep,
    rx_axis_tlast,
    p_0_in8_out,
    E,
    m_axis_tvalid_reg_0);
  output cmd_valid;
  output [31:0]rx_frame_count;
  output \crc_error_count_reg[0] ;
  output [14:0]\rx_frame_count_reg[0]_0 ;
  output \format_error_count_reg[0] ;
  output \match_count_reg[31] ;
  output \state_reg[1]_0 ;
  output \state_reg[1]_1 ;
  output [31:0]Q;
  output [31:0]\last_rx_addr_reg[31] ;
  output [31:0]\last_rx_data_reg[31] ;
  input rst;
  input clk;
  input [3:0]S;
  input [0:0]\m_axis_tdata_reg[60] ;
  input [63:0]\m_axis_tdata_reg[63] ;
  input m_axis_tvalid_reg;
  input crc_ok1__24;
  input \m_axis_tkeep_reg[3] ;
  input [0:0]m_axis_tkeep;
  input rx_axis_tlast;
  input p_0_in8_out;
  input [0:0]E;
  input [0:0]m_axis_tvalid_reg_0;

  wire [0:0]E;
  wire [31:0]Q;
  wire [3:0]S;
  wire [31:0]addr;
  wire [15:15]calc_crc16_return__79;
  wire clk;
  wire cmd_valid;
  wire cmd_valid_i_1_n_0;
  wire \crc_error_count_reg[0] ;
  wire crc_ok;
  wire crc_ok0__6;
  wire crc_ok0_carry__0_i_1_n_0;
  wire crc_ok0_carry__0_n_3;
  wire crc_ok0_carry_n_0;
  wire crc_ok0_carry_n_1;
  wire crc_ok0_carry_n_2;
  wire crc_ok0_carry_n_3;
  wire crc_ok1__24;
  wire crc_ok_i_1_n_0;
  wire [31:0]data;
  wire \format_error_count_reg[0] ;
  wire format_ok;
  wire format_ok_i_1_n_0;
  wire [31:0]\last_rx_addr_reg[31] ;
  wire [31:0]\last_rx_data_reg[31] ;
  wire [0:0]\m_axis_tdata_reg[60] ;
  wire [63:0]\m_axis_tdata_reg[63] ;
  wire [0:0]m_axis_tkeep;
  wire \m_axis_tkeep_reg[3] ;
  wire m_axis_tvalid_reg;
  wire [0:0]m_axis_tvalid_reg_0;
  wire \match_count_reg[31] ;
  wire p_0_in8_out;
  wire rst;
  wire rx_axis_tlast;
  wire [31:0]rx_frame_count;
  wire \rx_frame_count[31]_i_1_n_0 ;
  wire \rx_frame_count[3]_i_2_n_0 ;
  wire [14:0]\rx_frame_count_reg[0]_0 ;
  wire \rx_frame_count_reg[11]_i_1_n_0 ;
  wire \rx_frame_count_reg[11]_i_1_n_1 ;
  wire \rx_frame_count_reg[11]_i_1_n_2 ;
  wire \rx_frame_count_reg[11]_i_1_n_3 ;
  wire \rx_frame_count_reg[11]_i_1_n_4 ;
  wire \rx_frame_count_reg[11]_i_1_n_5 ;
  wire \rx_frame_count_reg[11]_i_1_n_6 ;
  wire \rx_frame_count_reg[11]_i_1_n_7 ;
  wire \rx_frame_count_reg[15]_i_1_n_0 ;
  wire \rx_frame_count_reg[15]_i_1_n_1 ;
  wire \rx_frame_count_reg[15]_i_1_n_2 ;
  wire \rx_frame_count_reg[15]_i_1_n_3 ;
  wire \rx_frame_count_reg[15]_i_1_n_4 ;
  wire \rx_frame_count_reg[15]_i_1_n_5 ;
  wire \rx_frame_count_reg[15]_i_1_n_6 ;
  wire \rx_frame_count_reg[15]_i_1_n_7 ;
  wire \rx_frame_count_reg[19]_i_1_n_0 ;
  wire \rx_frame_count_reg[19]_i_1_n_1 ;
  wire \rx_frame_count_reg[19]_i_1_n_2 ;
  wire \rx_frame_count_reg[19]_i_1_n_3 ;
  wire \rx_frame_count_reg[19]_i_1_n_4 ;
  wire \rx_frame_count_reg[19]_i_1_n_5 ;
  wire \rx_frame_count_reg[19]_i_1_n_6 ;
  wire \rx_frame_count_reg[19]_i_1_n_7 ;
  wire \rx_frame_count_reg[23]_i_1_n_0 ;
  wire \rx_frame_count_reg[23]_i_1_n_1 ;
  wire \rx_frame_count_reg[23]_i_1_n_2 ;
  wire \rx_frame_count_reg[23]_i_1_n_3 ;
  wire \rx_frame_count_reg[23]_i_1_n_4 ;
  wire \rx_frame_count_reg[23]_i_1_n_5 ;
  wire \rx_frame_count_reg[23]_i_1_n_6 ;
  wire \rx_frame_count_reg[23]_i_1_n_7 ;
  wire \rx_frame_count_reg[27]_i_1_n_0 ;
  wire \rx_frame_count_reg[27]_i_1_n_1 ;
  wire \rx_frame_count_reg[27]_i_1_n_2 ;
  wire \rx_frame_count_reg[27]_i_1_n_3 ;
  wire \rx_frame_count_reg[27]_i_1_n_4 ;
  wire \rx_frame_count_reg[27]_i_1_n_5 ;
  wire \rx_frame_count_reg[27]_i_1_n_6 ;
  wire \rx_frame_count_reg[27]_i_1_n_7 ;
  wire \rx_frame_count_reg[31]_i_2_n_1 ;
  wire \rx_frame_count_reg[31]_i_2_n_2 ;
  wire \rx_frame_count_reg[31]_i_2_n_3 ;
  wire \rx_frame_count_reg[31]_i_2_n_4 ;
  wire \rx_frame_count_reg[31]_i_2_n_5 ;
  wire \rx_frame_count_reg[31]_i_2_n_6 ;
  wire \rx_frame_count_reg[31]_i_2_n_7 ;
  wire \rx_frame_count_reg[3]_i_1_n_0 ;
  wire \rx_frame_count_reg[3]_i_1_n_1 ;
  wire \rx_frame_count_reg[3]_i_1_n_2 ;
  wire \rx_frame_count_reg[3]_i_1_n_3 ;
  wire \rx_frame_count_reg[3]_i_1_n_4 ;
  wire \rx_frame_count_reg[3]_i_1_n_5 ;
  wire \rx_frame_count_reg[3]_i_1_n_6 ;
  wire \rx_frame_count_reg[3]_i_1_n_7 ;
  wire \rx_frame_count_reg[7]_i_1_n_0 ;
  wire \rx_frame_count_reg[7]_i_1_n_1 ;
  wire \rx_frame_count_reg[7]_i_1_n_2 ;
  wire \rx_frame_count_reg[7]_i_1_n_3 ;
  wire \rx_frame_count_reg[7]_i_1_n_4 ;
  wire \rx_frame_count_reg[7]_i_1_n_5 ;
  wire \rx_frame_count_reg[7]_i_1_n_6 ;
  wire \rx_frame_count_reg[7]_i_1_n_7 ;
  wire [31:0]seq;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire [3:0]NLW_crc_ok0_carry_O_UNCONNECTED;
  wire [3:2]NLW_crc_ok0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_crc_ok0_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_rx_frame_count_reg[31]_i_2_CO_UNCONNECTED ;

  FDRE \addr_latched_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [32]),
        .Q(addr[0]),
        .R(rst));
  FDRE \addr_latched_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [42]),
        .Q(addr[10]),
        .R(rst));
  FDRE \addr_latched_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [43]),
        .Q(addr[11]),
        .R(rst));
  FDRE \addr_latched_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [44]),
        .Q(addr[12]),
        .R(rst));
  FDRE \addr_latched_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [45]),
        .Q(addr[13]),
        .R(rst));
  FDRE \addr_latched_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [46]),
        .Q(addr[14]),
        .R(rst));
  FDRE \addr_latched_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [47]),
        .Q(addr[15]),
        .R(rst));
  FDRE \addr_latched_reg[16] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [48]),
        .Q(addr[16]),
        .R(rst));
  FDRE \addr_latched_reg[17] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [49]),
        .Q(addr[17]),
        .R(rst));
  FDRE \addr_latched_reg[18] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [50]),
        .Q(addr[18]),
        .R(rst));
  FDRE \addr_latched_reg[19] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [51]),
        .Q(addr[19]),
        .R(rst));
  FDRE \addr_latched_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [33]),
        .Q(addr[1]),
        .R(rst));
  FDRE \addr_latched_reg[20] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [52]),
        .Q(addr[20]),
        .R(rst));
  FDRE \addr_latched_reg[21] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [53]),
        .Q(addr[21]),
        .R(rst));
  FDRE \addr_latched_reg[22] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [54]),
        .Q(addr[22]),
        .R(rst));
  FDRE \addr_latched_reg[23] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [55]),
        .Q(addr[23]),
        .R(rst));
  FDRE \addr_latched_reg[24] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [56]),
        .Q(addr[24]),
        .R(rst));
  FDRE \addr_latched_reg[25] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [57]),
        .Q(addr[25]),
        .R(rst));
  FDRE \addr_latched_reg[26] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [58]),
        .Q(addr[26]),
        .R(rst));
  FDRE \addr_latched_reg[27] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [59]),
        .Q(addr[27]),
        .R(rst));
  FDRE \addr_latched_reg[28] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [60]),
        .Q(addr[28]),
        .R(rst));
  FDRE \addr_latched_reg[29] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [61]),
        .Q(addr[29]),
        .R(rst));
  FDRE \addr_latched_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [34]),
        .Q(addr[2]),
        .R(rst));
  FDRE \addr_latched_reg[30] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [62]),
        .Q(addr[30]),
        .R(rst));
  FDRE \addr_latched_reg[31] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [63]),
        .Q(addr[31]),
        .R(rst));
  FDRE \addr_latched_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [35]),
        .Q(addr[3]),
        .R(rst));
  FDRE \addr_latched_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [36]),
        .Q(addr[4]),
        .R(rst));
  FDRE \addr_latched_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [37]),
        .Q(addr[5]),
        .R(rst));
  FDRE \addr_latched_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [38]),
        .Q(addr[6]),
        .R(rst));
  FDRE \addr_latched_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [39]),
        .Q(addr[7]),
        .R(rst));
  FDRE \addr_latched_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [40]),
        .Q(addr[8]),
        .R(rst));
  FDRE \addr_latched_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [41]),
        .Q(addr[9]),
        .R(rst));
  LUT3 #(
    .INIT(8'h40)) 
    cmd_valid_i_1
       (.I0(\state_reg[1]_0 ),
        .I1(m_axis_tvalid_reg),
        .I2(\state_reg[1]_1 ),
        .O(cmd_valid_i_1_n_0));
  FDRE cmd_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd_valid_i_1_n_0),
        .Q(cmd_valid),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \crc_error_count[31]_i_1 
       (.I0(format_ok),
        .I1(cmd_valid),
        .I2(crc_ok),
        .O(\crc_error_count_reg[0] ));
  CARRY4 crc_ok0_carry
       (.CI(1'b0),
        .CO({crc_ok0_carry_n_0,crc_ok0_carry_n_1,crc_ok0_carry_n_2,crc_ok0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_crc_ok0_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 crc_ok0_carry__0
       (.CI(crc_ok0_carry_n_0),
        .CO({NLW_crc_ok0_carry__0_CO_UNCONNECTED[3:2],crc_ok0__6,crc_ok0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_crc_ok0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,crc_ok0_carry__0_i_1_n_0,\m_axis_tdata_reg[60] }));
  LUT2 #(
    .INIT(4'h9)) 
    crc_ok0_carry__0_i_1
       (.I0(calc_crc16_return__79),
        .I1(\m_axis_tdata_reg[63] [63]),
        .O(crc_ok0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    crc_ok0_carry__0_i_3
       (.I0(data[15]),
        .I1(seq[31]),
        .I2(addr[31]),
        .I3(seq[15]),
        .I4(data[31]),
        .I5(addr[15]),
        .O(calc_crc16_return__79));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    crc_ok0_carry__0_i_4
       (.I0(data[12]),
        .I1(seq[28]),
        .I2(addr[28]),
        .I3(seq[12]),
        .I4(data[28]),
        .I5(addr[12]),
        .O(\rx_frame_count_reg[0]_0 [12]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    crc_ok0_carry__0_i_5
       (.I0(data[14]),
        .I1(seq[30]),
        .I2(addr[30]),
        .I3(seq[14]),
        .I4(data[30]),
        .I5(addr[14]),
        .O(\rx_frame_count_reg[0]_0 [14]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    crc_ok0_carry__0_i_6
       (.I0(data[13]),
        .I1(seq[29]),
        .I2(addr[29]),
        .I3(seq[13]),
        .I4(data[29]),
        .I5(addr[13]),
        .O(\rx_frame_count_reg[0]_0 [13]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    crc_ok0_carry_i_10
       (.I0(data[7]),
        .I1(seq[23]),
        .I2(addr[23]),
        .I3(seq[7]),
        .I4(data[23]),
        .I5(addr[7]),
        .O(\rx_frame_count_reg[0]_0 [7]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    crc_ok0_carry_i_11
       (.I0(data[3]),
        .I1(seq[19]),
        .I2(addr[19]),
        .I3(seq[3]),
        .I4(data[19]),
        .I5(addr[3]),
        .O(\rx_frame_count_reg[0]_0 [3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    crc_ok0_carry_i_12
       (.I0(data[5]),
        .I1(seq[21]),
        .I2(addr[21]),
        .I3(seq[5]),
        .I4(data[21]),
        .I5(addr[5]),
        .O(\rx_frame_count_reg[0]_0 [5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    crc_ok0_carry_i_13
       (.I0(data[4]),
        .I1(seq[20]),
        .I2(addr[20]),
        .I3(seq[4]),
        .I4(data[20]),
        .I5(addr[4]),
        .O(\rx_frame_count_reg[0]_0 [4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    crc_ok0_carry_i_14
       (.I0(data[0]),
        .I1(seq[16]),
        .I2(addr[16]),
        .I3(seq[0]),
        .I4(data[16]),
        .I5(addr[0]),
        .O(\rx_frame_count_reg[0]_0 [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    crc_ok0_carry_i_15
       (.I0(data[2]),
        .I1(seq[18]),
        .I2(addr[18]),
        .I3(seq[2]),
        .I4(data[18]),
        .I5(addr[2]),
        .O(\rx_frame_count_reg[0]_0 [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    crc_ok0_carry_i_16
       (.I0(data[1]),
        .I1(seq[17]),
        .I2(addr[17]),
        .I3(seq[1]),
        .I4(data[17]),
        .I5(addr[1]),
        .O(\rx_frame_count_reg[0]_0 [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    crc_ok0_carry_i_5
       (.I0(data[9]),
        .I1(seq[25]),
        .I2(addr[25]),
        .I3(seq[9]),
        .I4(data[25]),
        .I5(addr[9]),
        .O(\rx_frame_count_reg[0]_0 [9]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    crc_ok0_carry_i_6
       (.I0(data[11]),
        .I1(seq[27]),
        .I2(addr[27]),
        .I3(seq[11]),
        .I4(data[27]),
        .I5(addr[11]),
        .O(\rx_frame_count_reg[0]_0 [11]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    crc_ok0_carry_i_7
       (.I0(data[10]),
        .I1(seq[26]),
        .I2(addr[26]),
        .I3(seq[10]),
        .I4(data[26]),
        .I5(addr[10]),
        .O(\rx_frame_count_reg[0]_0 [10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    crc_ok0_carry_i_8
       (.I0(data[6]),
        .I1(seq[22]),
        .I2(addr[22]),
        .I3(seq[6]),
        .I4(data[22]),
        .I5(addr[6]),
        .O(\rx_frame_count_reg[0]_0 [6]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    crc_ok0_carry_i_9
       (.I0(data[8]),
        .I1(seq[24]),
        .I2(addr[24]),
        .I3(seq[8]),
        .I4(data[24]),
        .I5(addr[8]),
        .O(\rx_frame_count_reg[0]_0 [8]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    crc_ok_i_1
       (.I0(\state_reg[1]_1 ),
        .I1(crc_ok0__6),
        .I2(crc_ok1__24),
        .I3(\m_axis_tkeep_reg[3] ),
        .I4(crc_ok),
        .O(crc_ok_i_1_n_0));
  FDRE crc_ok_reg
       (.C(clk),
        .CE(1'b1),
        .D(crc_ok_i_1_n_0),
        .Q(crc_ok),
        .R(rst));
  FDRE \data_latched_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [0]),
        .Q(data[0]),
        .R(rst));
  FDRE \data_latched_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [10]),
        .Q(data[10]),
        .R(rst));
  FDRE \data_latched_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [11]),
        .Q(data[11]),
        .R(rst));
  FDRE \data_latched_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [12]),
        .Q(data[12]),
        .R(rst));
  FDRE \data_latched_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [13]),
        .Q(data[13]),
        .R(rst));
  FDRE \data_latched_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [14]),
        .Q(data[14]),
        .R(rst));
  FDRE \data_latched_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [15]),
        .Q(data[15]),
        .R(rst));
  FDRE \data_latched_reg[16] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [16]),
        .Q(data[16]),
        .R(rst));
  FDRE \data_latched_reg[17] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [17]),
        .Q(data[17]),
        .R(rst));
  FDRE \data_latched_reg[18] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [18]),
        .Q(data[18]),
        .R(rst));
  FDRE \data_latched_reg[19] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [19]),
        .Q(data[19]),
        .R(rst));
  FDRE \data_latched_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [1]),
        .Q(data[1]),
        .R(rst));
  FDRE \data_latched_reg[20] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [20]),
        .Q(data[20]),
        .R(rst));
  FDRE \data_latched_reg[21] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [21]),
        .Q(data[21]),
        .R(rst));
  FDRE \data_latched_reg[22] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [22]),
        .Q(data[22]),
        .R(rst));
  FDRE \data_latched_reg[23] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [23]),
        .Q(data[23]),
        .R(rst));
  FDRE \data_latched_reg[24] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [24]),
        .Q(data[24]),
        .R(rst));
  FDRE \data_latched_reg[25] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [25]),
        .Q(data[25]),
        .R(rst));
  FDRE \data_latched_reg[26] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [26]),
        .Q(data[26]),
        .R(rst));
  FDRE \data_latched_reg[27] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [27]),
        .Q(data[27]),
        .R(rst));
  FDRE \data_latched_reg[28] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [28]),
        .Q(data[28]),
        .R(rst));
  FDRE \data_latched_reg[29] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [29]),
        .Q(data[29]),
        .R(rst));
  FDRE \data_latched_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [2]),
        .Q(data[2]),
        .R(rst));
  FDRE \data_latched_reg[30] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [30]),
        .Q(data[30]),
        .R(rst));
  FDRE \data_latched_reg[31] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [31]),
        .Q(data[31]),
        .R(rst));
  FDRE \data_latched_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [3]),
        .Q(data[3]),
        .R(rst));
  FDRE \data_latched_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [4]),
        .Q(data[4]),
        .R(rst));
  FDRE \data_latched_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [5]),
        .Q(data[5]),
        .R(rst));
  FDRE \data_latched_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [6]),
        .Q(data[6]),
        .R(rst));
  FDRE \data_latched_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [7]),
        .Q(data[7]),
        .R(rst));
  FDRE \data_latched_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [8]),
        .Q(data[8]),
        .R(rst));
  FDRE \data_latched_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\m_axis_tdata_reg[63] [9]),
        .Q(data[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \format_error_count[31]_i_1 
       (.I0(cmd_valid),
        .I1(format_ok),
        .O(\format_error_count_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    format_ok_i_1
       (.I0(\state_reg[1]_1 ),
        .I1(crc_ok1__24),
        .I2(\m_axis_tkeep_reg[3] ),
        .I3(format_ok),
        .O(format_ok_i_1_n_0));
  FDRE format_ok_reg
       (.C(clk),
        .CE(1'b1),
        .D(format_ok_i_1_n_0),
        .Q(format_ok),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \match_count[31]_i_1 
       (.I0(format_ok),
        .I1(cmd_valid),
        .I2(crc_ok),
        .O(\match_count_reg[31] ));
  FDRE \rx_addr_reg[0] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[0]),
        .Q(\last_rx_addr_reg[31] [0]),
        .R(rst));
  FDRE \rx_addr_reg[10] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[10]),
        .Q(\last_rx_addr_reg[31] [10]),
        .R(rst));
  FDRE \rx_addr_reg[11] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[11]),
        .Q(\last_rx_addr_reg[31] [11]),
        .R(rst));
  FDRE \rx_addr_reg[12] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[12]),
        .Q(\last_rx_addr_reg[31] [12]),
        .R(rst));
  FDRE \rx_addr_reg[13] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[13]),
        .Q(\last_rx_addr_reg[31] [13]),
        .R(rst));
  FDRE \rx_addr_reg[14] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[14]),
        .Q(\last_rx_addr_reg[31] [14]),
        .R(rst));
  FDRE \rx_addr_reg[15] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[15]),
        .Q(\last_rx_addr_reg[31] [15]),
        .R(rst));
  FDRE \rx_addr_reg[16] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[16]),
        .Q(\last_rx_addr_reg[31] [16]),
        .R(rst));
  FDRE \rx_addr_reg[17] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[17]),
        .Q(\last_rx_addr_reg[31] [17]),
        .R(rst));
  FDRE \rx_addr_reg[18] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[18]),
        .Q(\last_rx_addr_reg[31] [18]),
        .R(rst));
  FDRE \rx_addr_reg[19] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[19]),
        .Q(\last_rx_addr_reg[31] [19]),
        .R(rst));
  FDRE \rx_addr_reg[1] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[1]),
        .Q(\last_rx_addr_reg[31] [1]),
        .R(rst));
  FDRE \rx_addr_reg[20] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[20]),
        .Q(\last_rx_addr_reg[31] [20]),
        .R(rst));
  FDRE \rx_addr_reg[21] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[21]),
        .Q(\last_rx_addr_reg[31] [21]),
        .R(rst));
  FDRE \rx_addr_reg[22] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[22]),
        .Q(\last_rx_addr_reg[31] [22]),
        .R(rst));
  FDRE \rx_addr_reg[23] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[23]),
        .Q(\last_rx_addr_reg[31] [23]),
        .R(rst));
  FDRE \rx_addr_reg[24] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[24]),
        .Q(\last_rx_addr_reg[31] [24]),
        .R(rst));
  FDRE \rx_addr_reg[25] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[25]),
        .Q(\last_rx_addr_reg[31] [25]),
        .R(rst));
  FDRE \rx_addr_reg[26] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[26]),
        .Q(\last_rx_addr_reg[31] [26]),
        .R(rst));
  FDRE \rx_addr_reg[27] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[27]),
        .Q(\last_rx_addr_reg[31] [27]),
        .R(rst));
  FDRE \rx_addr_reg[28] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[28]),
        .Q(\last_rx_addr_reg[31] [28]),
        .R(rst));
  FDRE \rx_addr_reg[29] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[29]),
        .Q(\last_rx_addr_reg[31] [29]),
        .R(rst));
  FDRE \rx_addr_reg[2] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[2]),
        .Q(\last_rx_addr_reg[31] [2]),
        .R(rst));
  FDRE \rx_addr_reg[30] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[30]),
        .Q(\last_rx_addr_reg[31] [30]),
        .R(rst));
  FDRE \rx_addr_reg[31] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[31]),
        .Q(\last_rx_addr_reg[31] [31]),
        .R(rst));
  FDRE \rx_addr_reg[3] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[3]),
        .Q(\last_rx_addr_reg[31] [3]),
        .R(rst));
  FDRE \rx_addr_reg[4] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[4]),
        .Q(\last_rx_addr_reg[31] [4]),
        .R(rst));
  FDRE \rx_addr_reg[5] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[5]),
        .Q(\last_rx_addr_reg[31] [5]),
        .R(rst));
  FDRE \rx_addr_reg[6] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[6]),
        .Q(\last_rx_addr_reg[31] [6]),
        .R(rst));
  FDRE \rx_addr_reg[7] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[7]),
        .Q(\last_rx_addr_reg[31] [7]),
        .R(rst));
  FDRE \rx_addr_reg[8] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[8]),
        .Q(\last_rx_addr_reg[31] [8]),
        .R(rst));
  FDRE \rx_addr_reg[9] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(addr[9]),
        .Q(\last_rx_addr_reg[31] [9]),
        .R(rst));
  FDRE \rx_cmd_data_reg[0] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[0]),
        .Q(\last_rx_data_reg[31] [0]),
        .R(rst));
  FDRE \rx_cmd_data_reg[10] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[10]),
        .Q(\last_rx_data_reg[31] [10]),
        .R(rst));
  FDRE \rx_cmd_data_reg[11] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[11]),
        .Q(\last_rx_data_reg[31] [11]),
        .R(rst));
  FDRE \rx_cmd_data_reg[12] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[12]),
        .Q(\last_rx_data_reg[31] [12]),
        .R(rst));
  FDRE \rx_cmd_data_reg[13] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[13]),
        .Q(\last_rx_data_reg[31] [13]),
        .R(rst));
  FDRE \rx_cmd_data_reg[14] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[14]),
        .Q(\last_rx_data_reg[31] [14]),
        .R(rst));
  FDRE \rx_cmd_data_reg[15] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[15]),
        .Q(\last_rx_data_reg[31] [15]),
        .R(rst));
  FDRE \rx_cmd_data_reg[16] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[16]),
        .Q(\last_rx_data_reg[31] [16]),
        .R(rst));
  FDRE \rx_cmd_data_reg[17] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[17]),
        .Q(\last_rx_data_reg[31] [17]),
        .R(rst));
  FDRE \rx_cmd_data_reg[18] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[18]),
        .Q(\last_rx_data_reg[31] [18]),
        .R(rst));
  FDRE \rx_cmd_data_reg[19] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[19]),
        .Q(\last_rx_data_reg[31] [19]),
        .R(rst));
  FDRE \rx_cmd_data_reg[1] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[1]),
        .Q(\last_rx_data_reg[31] [1]),
        .R(rst));
  FDRE \rx_cmd_data_reg[20] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[20]),
        .Q(\last_rx_data_reg[31] [20]),
        .R(rst));
  FDRE \rx_cmd_data_reg[21] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[21]),
        .Q(\last_rx_data_reg[31] [21]),
        .R(rst));
  FDRE \rx_cmd_data_reg[22] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[22]),
        .Q(\last_rx_data_reg[31] [22]),
        .R(rst));
  FDRE \rx_cmd_data_reg[23] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[23]),
        .Q(\last_rx_data_reg[31] [23]),
        .R(rst));
  FDRE \rx_cmd_data_reg[24] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[24]),
        .Q(\last_rx_data_reg[31] [24]),
        .R(rst));
  FDRE \rx_cmd_data_reg[25] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[25]),
        .Q(\last_rx_data_reg[31] [25]),
        .R(rst));
  FDRE \rx_cmd_data_reg[26] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[26]),
        .Q(\last_rx_data_reg[31] [26]),
        .R(rst));
  FDRE \rx_cmd_data_reg[27] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[27]),
        .Q(\last_rx_data_reg[31] [27]),
        .R(rst));
  FDRE \rx_cmd_data_reg[28] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[28]),
        .Q(\last_rx_data_reg[31] [28]),
        .R(rst));
  FDRE \rx_cmd_data_reg[29] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[29]),
        .Q(\last_rx_data_reg[31] [29]),
        .R(rst));
  FDRE \rx_cmd_data_reg[2] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[2]),
        .Q(\last_rx_data_reg[31] [2]),
        .R(rst));
  FDRE \rx_cmd_data_reg[30] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[30]),
        .Q(\last_rx_data_reg[31] [30]),
        .R(rst));
  FDRE \rx_cmd_data_reg[31] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[31]),
        .Q(\last_rx_data_reg[31] [31]),
        .R(rst));
  FDRE \rx_cmd_data_reg[3] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[3]),
        .Q(\last_rx_data_reg[31] [3]),
        .R(rst));
  FDRE \rx_cmd_data_reg[4] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[4]),
        .Q(\last_rx_data_reg[31] [4]),
        .R(rst));
  FDRE \rx_cmd_data_reg[5] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[5]),
        .Q(\last_rx_data_reg[31] [5]),
        .R(rst));
  FDRE \rx_cmd_data_reg[6] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[6]),
        .Q(\last_rx_data_reg[31] [6]),
        .R(rst));
  FDRE \rx_cmd_data_reg[7] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[7]),
        .Q(\last_rx_data_reg[31] [7]),
        .R(rst));
  FDRE \rx_cmd_data_reg[8] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[8]),
        .Q(\last_rx_data_reg[31] [8]),
        .R(rst));
  FDRE \rx_cmd_data_reg[9] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(data[9]),
        .Q(\last_rx_data_reg[31] [9]),
        .R(rst));
  LUT5 #(
    .INIT(32'h40000000)) 
    \rx_frame_count[31]_i_1 
       (.I0(\state_reg[1]_0 ),
        .I1(crc_ok1__24),
        .I2(m_axis_tvalid_reg),
        .I3(crc_ok0__6),
        .I4(\state_reg[1]_1 ),
        .O(\rx_frame_count[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_frame_count[3]_i_2 
       (.I0(rx_frame_count[0]),
        .O(\rx_frame_count[3]_i_2_n_0 ));
  FDRE \rx_frame_count_reg[0] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[3]_i_1_n_7 ),
        .Q(rx_frame_count[0]),
        .R(rst));
  FDRE \rx_frame_count_reg[10] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[11]_i_1_n_5 ),
        .Q(rx_frame_count[10]),
        .R(rst));
  FDRE \rx_frame_count_reg[11] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[11]_i_1_n_4 ),
        .Q(rx_frame_count[11]),
        .R(rst));
  CARRY4 \rx_frame_count_reg[11]_i_1 
       (.CI(\rx_frame_count_reg[7]_i_1_n_0 ),
        .CO({\rx_frame_count_reg[11]_i_1_n_0 ,\rx_frame_count_reg[11]_i_1_n_1 ,\rx_frame_count_reg[11]_i_1_n_2 ,\rx_frame_count_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rx_frame_count_reg[11]_i_1_n_4 ,\rx_frame_count_reg[11]_i_1_n_5 ,\rx_frame_count_reg[11]_i_1_n_6 ,\rx_frame_count_reg[11]_i_1_n_7 }),
        .S(rx_frame_count[11:8]));
  FDRE \rx_frame_count_reg[12] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[15]_i_1_n_7 ),
        .Q(rx_frame_count[12]),
        .R(rst));
  FDRE \rx_frame_count_reg[13] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[15]_i_1_n_6 ),
        .Q(rx_frame_count[13]),
        .R(rst));
  FDRE \rx_frame_count_reg[14] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[15]_i_1_n_5 ),
        .Q(rx_frame_count[14]),
        .R(rst));
  FDRE \rx_frame_count_reg[15] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[15]_i_1_n_4 ),
        .Q(rx_frame_count[15]),
        .R(rst));
  CARRY4 \rx_frame_count_reg[15]_i_1 
       (.CI(\rx_frame_count_reg[11]_i_1_n_0 ),
        .CO({\rx_frame_count_reg[15]_i_1_n_0 ,\rx_frame_count_reg[15]_i_1_n_1 ,\rx_frame_count_reg[15]_i_1_n_2 ,\rx_frame_count_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rx_frame_count_reg[15]_i_1_n_4 ,\rx_frame_count_reg[15]_i_1_n_5 ,\rx_frame_count_reg[15]_i_1_n_6 ,\rx_frame_count_reg[15]_i_1_n_7 }),
        .S(rx_frame_count[15:12]));
  FDRE \rx_frame_count_reg[16] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[19]_i_1_n_7 ),
        .Q(rx_frame_count[16]),
        .R(rst));
  FDRE \rx_frame_count_reg[17] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[19]_i_1_n_6 ),
        .Q(rx_frame_count[17]),
        .R(rst));
  FDRE \rx_frame_count_reg[18] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[19]_i_1_n_5 ),
        .Q(rx_frame_count[18]),
        .R(rst));
  FDRE \rx_frame_count_reg[19] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[19]_i_1_n_4 ),
        .Q(rx_frame_count[19]),
        .R(rst));
  CARRY4 \rx_frame_count_reg[19]_i_1 
       (.CI(\rx_frame_count_reg[15]_i_1_n_0 ),
        .CO({\rx_frame_count_reg[19]_i_1_n_0 ,\rx_frame_count_reg[19]_i_1_n_1 ,\rx_frame_count_reg[19]_i_1_n_2 ,\rx_frame_count_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rx_frame_count_reg[19]_i_1_n_4 ,\rx_frame_count_reg[19]_i_1_n_5 ,\rx_frame_count_reg[19]_i_1_n_6 ,\rx_frame_count_reg[19]_i_1_n_7 }),
        .S(rx_frame_count[19:16]));
  FDRE \rx_frame_count_reg[1] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[3]_i_1_n_6 ),
        .Q(rx_frame_count[1]),
        .R(rst));
  FDRE \rx_frame_count_reg[20] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[23]_i_1_n_7 ),
        .Q(rx_frame_count[20]),
        .R(rst));
  FDRE \rx_frame_count_reg[21] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[23]_i_1_n_6 ),
        .Q(rx_frame_count[21]),
        .R(rst));
  FDRE \rx_frame_count_reg[22] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[23]_i_1_n_5 ),
        .Q(rx_frame_count[22]),
        .R(rst));
  FDRE \rx_frame_count_reg[23] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[23]_i_1_n_4 ),
        .Q(rx_frame_count[23]),
        .R(rst));
  CARRY4 \rx_frame_count_reg[23]_i_1 
       (.CI(\rx_frame_count_reg[19]_i_1_n_0 ),
        .CO({\rx_frame_count_reg[23]_i_1_n_0 ,\rx_frame_count_reg[23]_i_1_n_1 ,\rx_frame_count_reg[23]_i_1_n_2 ,\rx_frame_count_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rx_frame_count_reg[23]_i_1_n_4 ,\rx_frame_count_reg[23]_i_1_n_5 ,\rx_frame_count_reg[23]_i_1_n_6 ,\rx_frame_count_reg[23]_i_1_n_7 }),
        .S(rx_frame_count[23:20]));
  FDRE \rx_frame_count_reg[24] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[27]_i_1_n_7 ),
        .Q(rx_frame_count[24]),
        .R(rst));
  FDRE \rx_frame_count_reg[25] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[27]_i_1_n_6 ),
        .Q(rx_frame_count[25]),
        .R(rst));
  FDRE \rx_frame_count_reg[26] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[27]_i_1_n_5 ),
        .Q(rx_frame_count[26]),
        .R(rst));
  FDRE \rx_frame_count_reg[27] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[27]_i_1_n_4 ),
        .Q(rx_frame_count[27]),
        .R(rst));
  CARRY4 \rx_frame_count_reg[27]_i_1 
       (.CI(\rx_frame_count_reg[23]_i_1_n_0 ),
        .CO({\rx_frame_count_reg[27]_i_1_n_0 ,\rx_frame_count_reg[27]_i_1_n_1 ,\rx_frame_count_reg[27]_i_1_n_2 ,\rx_frame_count_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rx_frame_count_reg[27]_i_1_n_4 ,\rx_frame_count_reg[27]_i_1_n_5 ,\rx_frame_count_reg[27]_i_1_n_6 ,\rx_frame_count_reg[27]_i_1_n_7 }),
        .S(rx_frame_count[27:24]));
  FDRE \rx_frame_count_reg[28] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[31]_i_2_n_7 ),
        .Q(rx_frame_count[28]),
        .R(rst));
  FDRE \rx_frame_count_reg[29] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[31]_i_2_n_6 ),
        .Q(rx_frame_count[29]),
        .R(rst));
  FDRE \rx_frame_count_reg[2] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[3]_i_1_n_5 ),
        .Q(rx_frame_count[2]),
        .R(rst));
  FDRE \rx_frame_count_reg[30] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[31]_i_2_n_5 ),
        .Q(rx_frame_count[30]),
        .R(rst));
  FDRE \rx_frame_count_reg[31] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[31]_i_2_n_4 ),
        .Q(rx_frame_count[31]),
        .R(rst));
  CARRY4 \rx_frame_count_reg[31]_i_2 
       (.CI(\rx_frame_count_reg[27]_i_1_n_0 ),
        .CO({\NLW_rx_frame_count_reg[31]_i_2_CO_UNCONNECTED [3],\rx_frame_count_reg[31]_i_2_n_1 ,\rx_frame_count_reg[31]_i_2_n_2 ,\rx_frame_count_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rx_frame_count_reg[31]_i_2_n_4 ,\rx_frame_count_reg[31]_i_2_n_5 ,\rx_frame_count_reg[31]_i_2_n_6 ,\rx_frame_count_reg[31]_i_2_n_7 }),
        .S(rx_frame_count[31:28]));
  FDRE \rx_frame_count_reg[3] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[3]_i_1_n_4 ),
        .Q(rx_frame_count[3]),
        .R(rst));
  CARRY4 \rx_frame_count_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\rx_frame_count_reg[3]_i_1_n_0 ,\rx_frame_count_reg[3]_i_1_n_1 ,\rx_frame_count_reg[3]_i_1_n_2 ,\rx_frame_count_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rx_frame_count_reg[3]_i_1_n_4 ,\rx_frame_count_reg[3]_i_1_n_5 ,\rx_frame_count_reg[3]_i_1_n_6 ,\rx_frame_count_reg[3]_i_1_n_7 }),
        .S({rx_frame_count[3:1],\rx_frame_count[3]_i_2_n_0 }));
  FDRE \rx_frame_count_reg[4] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[7]_i_1_n_7 ),
        .Q(rx_frame_count[4]),
        .R(rst));
  FDRE \rx_frame_count_reg[5] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[7]_i_1_n_6 ),
        .Q(rx_frame_count[5]),
        .R(rst));
  FDRE \rx_frame_count_reg[6] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[7]_i_1_n_5 ),
        .Q(rx_frame_count[6]),
        .R(rst));
  FDRE \rx_frame_count_reg[7] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[7]_i_1_n_4 ),
        .Q(rx_frame_count[7]),
        .R(rst));
  CARRY4 \rx_frame_count_reg[7]_i_1 
       (.CI(\rx_frame_count_reg[3]_i_1_n_0 ),
        .CO({\rx_frame_count_reg[7]_i_1_n_0 ,\rx_frame_count_reg[7]_i_1_n_1 ,\rx_frame_count_reg[7]_i_1_n_2 ,\rx_frame_count_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rx_frame_count_reg[7]_i_1_n_4 ,\rx_frame_count_reg[7]_i_1_n_5 ,\rx_frame_count_reg[7]_i_1_n_6 ,\rx_frame_count_reg[7]_i_1_n_7 }),
        .S(rx_frame_count[7:4]));
  FDRE \rx_frame_count_reg[8] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[11]_i_1_n_7 ),
        .Q(rx_frame_count[8]),
        .R(rst));
  FDRE \rx_frame_count_reg[9] 
       (.C(clk),
        .CE(\rx_frame_count[31]_i_1_n_0 ),
        .D(\rx_frame_count_reg[11]_i_1_n_6 ),
        .Q(rx_frame_count[9]),
        .R(rst));
  FDRE \rx_seq_reg[0] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[0]),
        .Q(Q[0]),
        .R(rst));
  FDRE \rx_seq_reg[10] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[10]),
        .Q(Q[10]),
        .R(rst));
  FDRE \rx_seq_reg[11] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[11]),
        .Q(Q[11]),
        .R(rst));
  FDRE \rx_seq_reg[12] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[12]),
        .Q(Q[12]),
        .R(rst));
  FDRE \rx_seq_reg[13] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[13]),
        .Q(Q[13]),
        .R(rst));
  FDRE \rx_seq_reg[14] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[14]),
        .Q(Q[14]),
        .R(rst));
  FDRE \rx_seq_reg[15] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[15]),
        .Q(Q[15]),
        .R(rst));
  FDRE \rx_seq_reg[16] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[16]),
        .Q(Q[16]),
        .R(rst));
  FDRE \rx_seq_reg[17] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[17]),
        .Q(Q[17]),
        .R(rst));
  FDRE \rx_seq_reg[18] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[18]),
        .Q(Q[18]),
        .R(rst));
  FDRE \rx_seq_reg[19] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[19]),
        .Q(Q[19]),
        .R(rst));
  FDRE \rx_seq_reg[1] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[1]),
        .Q(Q[1]),
        .R(rst));
  FDRE \rx_seq_reg[20] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[20]),
        .Q(Q[20]),
        .R(rst));
  FDRE \rx_seq_reg[21] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[21]),
        .Q(Q[21]),
        .R(rst));
  FDRE \rx_seq_reg[22] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[22]),
        .Q(Q[22]),
        .R(rst));
  FDRE \rx_seq_reg[23] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[23]),
        .Q(Q[23]),
        .R(rst));
  FDRE \rx_seq_reg[24] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[24]),
        .Q(Q[24]),
        .R(rst));
  FDRE \rx_seq_reg[25] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[25]),
        .Q(Q[25]),
        .R(rst));
  FDRE \rx_seq_reg[26] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[26]),
        .Q(Q[26]),
        .R(rst));
  FDRE \rx_seq_reg[27] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[27]),
        .Q(Q[27]),
        .R(rst));
  FDRE \rx_seq_reg[28] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[28]),
        .Q(Q[28]),
        .R(rst));
  FDRE \rx_seq_reg[29] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[29]),
        .Q(Q[29]),
        .R(rst));
  FDRE \rx_seq_reg[2] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[2]),
        .Q(Q[2]),
        .R(rst));
  FDRE \rx_seq_reg[30] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[30]),
        .Q(Q[30]),
        .R(rst));
  FDRE \rx_seq_reg[31] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[31]),
        .Q(Q[31]),
        .R(rst));
  FDRE \rx_seq_reg[3] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[3]),
        .Q(Q[3]),
        .R(rst));
  FDRE \rx_seq_reg[4] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[4]),
        .Q(Q[4]),
        .R(rst));
  FDRE \rx_seq_reg[5] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[5]),
        .Q(Q[5]),
        .R(rst));
  FDRE \rx_seq_reg[6] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[6]),
        .Q(Q[6]),
        .R(rst));
  FDRE \rx_seq_reg[7] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[7]),
        .Q(Q[7]),
        .R(rst));
  FDRE \rx_seq_reg[8] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[8]),
        .Q(Q[8]),
        .R(rst));
  FDRE \rx_seq_reg[9] 
       (.C(clk),
        .CE(cmd_valid_i_1_n_0),
        .D(seq[9]),
        .Q(Q[9]),
        .R(rst));
  FDRE \seq_latched_reg[0] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [0]),
        .Q(seq[0]),
        .R(rst));
  FDRE \seq_latched_reg[10] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [10]),
        .Q(seq[10]),
        .R(rst));
  FDRE \seq_latched_reg[11] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [11]),
        .Q(seq[11]),
        .R(rst));
  FDRE \seq_latched_reg[12] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [12]),
        .Q(seq[12]),
        .R(rst));
  FDRE \seq_latched_reg[13] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [13]),
        .Q(seq[13]),
        .R(rst));
  FDRE \seq_latched_reg[14] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [14]),
        .Q(seq[14]),
        .R(rst));
  FDRE \seq_latched_reg[15] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [15]),
        .Q(seq[15]),
        .R(rst));
  FDRE \seq_latched_reg[16] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [16]),
        .Q(seq[16]),
        .R(rst));
  FDRE \seq_latched_reg[17] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [17]),
        .Q(seq[17]),
        .R(rst));
  FDRE \seq_latched_reg[18] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [18]),
        .Q(seq[18]),
        .R(rst));
  FDRE \seq_latched_reg[19] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [19]),
        .Q(seq[19]),
        .R(rst));
  FDRE \seq_latched_reg[1] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [1]),
        .Q(seq[1]),
        .R(rst));
  FDRE \seq_latched_reg[20] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [20]),
        .Q(seq[20]),
        .R(rst));
  FDRE \seq_latched_reg[21] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [21]),
        .Q(seq[21]),
        .R(rst));
  FDRE \seq_latched_reg[22] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [22]),
        .Q(seq[22]),
        .R(rst));
  FDRE \seq_latched_reg[23] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [23]),
        .Q(seq[23]),
        .R(rst));
  FDRE \seq_latched_reg[24] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [24]),
        .Q(seq[24]),
        .R(rst));
  FDRE \seq_latched_reg[25] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [25]),
        .Q(seq[25]),
        .R(rst));
  FDRE \seq_latched_reg[26] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [26]),
        .Q(seq[26]),
        .R(rst));
  FDRE \seq_latched_reg[27] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [27]),
        .Q(seq[27]),
        .R(rst));
  FDRE \seq_latched_reg[28] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [28]),
        .Q(seq[28]),
        .R(rst));
  FDRE \seq_latched_reg[29] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [29]),
        .Q(seq[29]),
        .R(rst));
  FDRE \seq_latched_reg[2] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [2]),
        .Q(seq[2]),
        .R(rst));
  FDRE \seq_latched_reg[30] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [30]),
        .Q(seq[30]),
        .R(rst));
  FDRE \seq_latched_reg[31] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [31]),
        .Q(seq[31]),
        .R(rst));
  FDRE \seq_latched_reg[3] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [3]),
        .Q(seq[3]),
        .R(rst));
  FDRE \seq_latched_reg[4] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [4]),
        .Q(seq[4]),
        .R(rst));
  FDRE \seq_latched_reg[5] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [5]),
        .Q(seq[5]),
        .R(rst));
  FDRE \seq_latched_reg[6] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [6]),
        .Q(seq[6]),
        .R(rst));
  FDRE \seq_latched_reg[7] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [7]),
        .Q(seq[7]),
        .R(rst));
  FDRE \seq_latched_reg[8] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [8]),
        .Q(seq[8]),
        .R(rst));
  FDRE \seq_latched_reg[9] 
       (.C(clk),
        .CE(m_axis_tvalid_reg_0),
        .D(\m_axis_tdata_reg[63] [9]),
        .Q(seq[9]),
        .R(rst));
  LUT4 #(
    .INIT(16'h0308)) 
    \state[0]_i_1 
       (.I0(p_0_in8_out),
        .I1(m_axis_tvalid_reg),
        .I2(\state_reg[1]_1 ),
        .I3(\state_reg[1]_0 ),
        .O(\state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200F00)) 
    \state[1]_i_1 
       (.I0(m_axis_tkeep),
        .I1(rx_axis_tlast),
        .I2(m_axis_tvalid_reg),
        .I3(\state_reg[1]_1 ),
        .I4(\state_reg[1]_0 ),
        .O(\state[1]_i_1_n_0 ));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg[1]_0 ),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg[1]_1 ),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "optical_stream_to_gtx32" *) 
module loopback_debug_bd_min_optical_loopback_debug_top_0_0_optical_stream_to_gtx32
   (gtx_tx_valid,
    gtx_tx_last,
    gtx_tx_word_count,
    gtx_tx_word_index,
    \tx_keep_reg[7] ,
    state,
    prev_valid_reg,
    p_0_in8_out,
    m_axis_tlast_reg,
    Q,
    m_axis_tlast_reg_0,
    m_axis_tlast_reg_1,
    m_axis_tlast_reg_2,
    rst,
    clk,
    optical_tx_last,
    tx_valid_reg,
    rx_axis_tvalid,
    prev_valid_reg_0,
    optical_tx_data);
  output gtx_tx_valid;
  output gtx_tx_last;
  output [31:0]gtx_tx_word_count;
  output [0:0]gtx_tx_word_index;
  output \tx_keep_reg[7] ;
  output [1:0]state;
  output prev_valid_reg;
  output p_0_in8_out;
  output m_axis_tlast_reg;
  output [31:0]Q;
  output m_axis_tlast_reg_0;
  output m_axis_tlast_reg_1;
  output m_axis_tlast_reg_2;
  input rst;
  input clk;
  input optical_tx_last;
  input tx_valid_reg;
  input rx_axis_tvalid;
  input prev_valid_reg_0;
  input [63:0]optical_tx_data;

  wire [31:0]Q;
  wire clk;
  wire [63:0]frame_data;
  wire \frame_data[63]_i_1_n_0 ;
  wire frame_last;
  wire gtx_tx_last;
  wire gtx_tx_last_i_1_n_0;
  wire gtx_tx_valid;
  wire [31:0]gtx_tx_word_count;
  wire \gtx_tx_word_count[31]_i_1_n_0 ;
  wire \gtx_tx_word_count[3]_i_2_n_0 ;
  wire \gtx_tx_word_count_reg[11]_i_1_n_0 ;
  wire \gtx_tx_word_count_reg[11]_i_1_n_1 ;
  wire \gtx_tx_word_count_reg[11]_i_1_n_2 ;
  wire \gtx_tx_word_count_reg[11]_i_1_n_3 ;
  wire \gtx_tx_word_count_reg[11]_i_1_n_4 ;
  wire \gtx_tx_word_count_reg[11]_i_1_n_5 ;
  wire \gtx_tx_word_count_reg[11]_i_1_n_6 ;
  wire \gtx_tx_word_count_reg[11]_i_1_n_7 ;
  wire \gtx_tx_word_count_reg[15]_i_1_n_0 ;
  wire \gtx_tx_word_count_reg[15]_i_1_n_1 ;
  wire \gtx_tx_word_count_reg[15]_i_1_n_2 ;
  wire \gtx_tx_word_count_reg[15]_i_1_n_3 ;
  wire \gtx_tx_word_count_reg[15]_i_1_n_4 ;
  wire \gtx_tx_word_count_reg[15]_i_1_n_5 ;
  wire \gtx_tx_word_count_reg[15]_i_1_n_6 ;
  wire \gtx_tx_word_count_reg[15]_i_1_n_7 ;
  wire \gtx_tx_word_count_reg[19]_i_1_n_0 ;
  wire \gtx_tx_word_count_reg[19]_i_1_n_1 ;
  wire \gtx_tx_word_count_reg[19]_i_1_n_2 ;
  wire \gtx_tx_word_count_reg[19]_i_1_n_3 ;
  wire \gtx_tx_word_count_reg[19]_i_1_n_4 ;
  wire \gtx_tx_word_count_reg[19]_i_1_n_5 ;
  wire \gtx_tx_word_count_reg[19]_i_1_n_6 ;
  wire \gtx_tx_word_count_reg[19]_i_1_n_7 ;
  wire \gtx_tx_word_count_reg[23]_i_1_n_0 ;
  wire \gtx_tx_word_count_reg[23]_i_1_n_1 ;
  wire \gtx_tx_word_count_reg[23]_i_1_n_2 ;
  wire \gtx_tx_word_count_reg[23]_i_1_n_3 ;
  wire \gtx_tx_word_count_reg[23]_i_1_n_4 ;
  wire \gtx_tx_word_count_reg[23]_i_1_n_5 ;
  wire \gtx_tx_word_count_reg[23]_i_1_n_6 ;
  wire \gtx_tx_word_count_reg[23]_i_1_n_7 ;
  wire \gtx_tx_word_count_reg[27]_i_1_n_0 ;
  wire \gtx_tx_word_count_reg[27]_i_1_n_1 ;
  wire \gtx_tx_word_count_reg[27]_i_1_n_2 ;
  wire \gtx_tx_word_count_reg[27]_i_1_n_3 ;
  wire \gtx_tx_word_count_reg[27]_i_1_n_4 ;
  wire \gtx_tx_word_count_reg[27]_i_1_n_5 ;
  wire \gtx_tx_word_count_reg[27]_i_1_n_6 ;
  wire \gtx_tx_word_count_reg[27]_i_1_n_7 ;
  wire \gtx_tx_word_count_reg[31]_i_2_n_1 ;
  wire \gtx_tx_word_count_reg[31]_i_2_n_2 ;
  wire \gtx_tx_word_count_reg[31]_i_2_n_3 ;
  wire \gtx_tx_word_count_reg[31]_i_2_n_4 ;
  wire \gtx_tx_word_count_reg[31]_i_2_n_5 ;
  wire \gtx_tx_word_count_reg[31]_i_2_n_6 ;
  wire \gtx_tx_word_count_reg[31]_i_2_n_7 ;
  wire \gtx_tx_word_count_reg[3]_i_1_n_0 ;
  wire \gtx_tx_word_count_reg[3]_i_1_n_1 ;
  wire \gtx_tx_word_count_reg[3]_i_1_n_2 ;
  wire \gtx_tx_word_count_reg[3]_i_1_n_3 ;
  wire \gtx_tx_word_count_reg[3]_i_1_n_4 ;
  wire \gtx_tx_word_count_reg[3]_i_1_n_5 ;
  wire \gtx_tx_word_count_reg[3]_i_1_n_6 ;
  wire \gtx_tx_word_count_reg[3]_i_1_n_7 ;
  wire \gtx_tx_word_count_reg[7]_i_1_n_0 ;
  wire \gtx_tx_word_count_reg[7]_i_1_n_1 ;
  wire \gtx_tx_word_count_reg[7]_i_1_n_2 ;
  wire \gtx_tx_word_count_reg[7]_i_1_n_3 ;
  wire \gtx_tx_word_count_reg[7]_i_1_n_4 ;
  wire \gtx_tx_word_count_reg[7]_i_1_n_5 ;
  wire \gtx_tx_word_count_reg[7]_i_1_n_6 ;
  wire \gtx_tx_word_count_reg[7]_i_1_n_7 ;
  wire [0:0]gtx_tx_word_index;
  wire \gtx_tx_word_index[0]_i_1_n_0 ;
  wire i__i_2_n_0;
  wire i__i_3__0_n_0;
  wire i__i_3_n_0;
  wire i__i_4__0_n_0;
  wire i__i_4_n_0;
  wire i__i_5_n_0;
  wire i__i_6_n_0;
  wire i__i_7_n_0;
  wire i__i_8_n_0;
  wire i__i_9_n_0;
  wire m_axis_tlast_i_10_n_0;
  wire m_axis_tlast_i_7_n_0;
  wire m_axis_tlast_i_8_n_0;
  wire m_axis_tlast_i_9_n_0;
  wire m_axis_tlast_reg;
  wire m_axis_tlast_reg_0;
  wire m_axis_tlast_reg_1;
  wire m_axis_tlast_reg_2;
  wire [63:0]optical_tx_data;
  wire optical_tx_last;
  wire p_0_in8_out;
  wire [31:0]p_1_in;
  wire prev_valid_reg;
  wire prev_valid_reg_0;
  wire rst;
  wire rx_axis_tvalid;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \tx_keep_reg[7] ;
  wire tx_valid_reg;
  wire [3:3]\NLW_gtx_tx_word_count_reg[31]_i_2_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(gtx_tx_valid),
        .I1(rx_axis_tvalid),
        .O(prev_valid_reg));
  LUT3 #(
    .INIT(8'h02)) 
    \frame_data[63]_i_1 
       (.I0(tx_valid_reg),
        .I1(state[0]),
        .I2(state[1]),
        .O(\frame_data[63]_i_1_n_0 ));
  FDRE \frame_data_reg[0] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[0]),
        .Q(frame_data[0]),
        .R(rst));
  FDRE \frame_data_reg[10] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[10]),
        .Q(frame_data[10]),
        .R(rst));
  FDRE \frame_data_reg[11] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[11]),
        .Q(frame_data[11]),
        .R(rst));
  FDRE \frame_data_reg[12] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[12]),
        .Q(frame_data[12]),
        .R(rst));
  FDRE \frame_data_reg[13] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[13]),
        .Q(frame_data[13]),
        .R(rst));
  FDRE \frame_data_reg[14] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[14]),
        .Q(frame_data[14]),
        .R(rst));
  FDRE \frame_data_reg[15] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[15]),
        .Q(frame_data[15]),
        .R(rst));
  FDRE \frame_data_reg[16] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[16]),
        .Q(frame_data[16]),
        .R(rst));
  FDRE \frame_data_reg[17] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[17]),
        .Q(frame_data[17]),
        .R(rst));
  FDRE \frame_data_reg[18] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[18]),
        .Q(frame_data[18]),
        .R(rst));
  FDRE \frame_data_reg[19] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[19]),
        .Q(frame_data[19]),
        .R(rst));
  FDRE \frame_data_reg[1] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[1]),
        .Q(frame_data[1]),
        .R(rst));
  FDRE \frame_data_reg[20] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[20]),
        .Q(frame_data[20]),
        .R(rst));
  FDRE \frame_data_reg[21] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[21]),
        .Q(frame_data[21]),
        .R(rst));
  FDRE \frame_data_reg[22] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[22]),
        .Q(frame_data[22]),
        .R(rst));
  FDRE \frame_data_reg[23] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[23]),
        .Q(frame_data[23]),
        .R(rst));
  FDRE \frame_data_reg[24] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[24]),
        .Q(frame_data[24]),
        .R(rst));
  FDRE \frame_data_reg[25] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[25]),
        .Q(frame_data[25]),
        .R(rst));
  FDRE \frame_data_reg[26] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[26]),
        .Q(frame_data[26]),
        .R(rst));
  FDRE \frame_data_reg[27] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[27]),
        .Q(frame_data[27]),
        .R(rst));
  FDRE \frame_data_reg[28] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[28]),
        .Q(frame_data[28]),
        .R(rst));
  FDRE \frame_data_reg[29] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[29]),
        .Q(frame_data[29]),
        .R(rst));
  FDRE \frame_data_reg[2] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[2]),
        .Q(frame_data[2]),
        .R(rst));
  FDRE \frame_data_reg[30] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[30]),
        .Q(frame_data[30]),
        .R(rst));
  FDRE \frame_data_reg[31] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[31]),
        .Q(frame_data[31]),
        .R(rst));
  FDRE \frame_data_reg[32] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[32]),
        .Q(frame_data[32]),
        .R(rst));
  FDRE \frame_data_reg[33] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[33]),
        .Q(frame_data[33]),
        .R(rst));
  FDRE \frame_data_reg[34] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[34]),
        .Q(frame_data[34]),
        .R(rst));
  FDRE \frame_data_reg[35] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[35]),
        .Q(frame_data[35]),
        .R(rst));
  FDRE \frame_data_reg[36] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[36]),
        .Q(frame_data[36]),
        .R(rst));
  FDRE \frame_data_reg[37] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[37]),
        .Q(frame_data[37]),
        .R(rst));
  FDRE \frame_data_reg[38] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[38]),
        .Q(frame_data[38]),
        .R(rst));
  FDRE \frame_data_reg[39] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[39]),
        .Q(frame_data[39]),
        .R(rst));
  FDRE \frame_data_reg[3] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[3]),
        .Q(frame_data[3]),
        .R(rst));
  FDRE \frame_data_reg[40] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[40]),
        .Q(frame_data[40]),
        .R(rst));
  FDRE \frame_data_reg[41] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[41]),
        .Q(frame_data[41]),
        .R(rst));
  FDRE \frame_data_reg[42] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[42]),
        .Q(frame_data[42]),
        .R(rst));
  FDRE \frame_data_reg[43] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[43]),
        .Q(frame_data[43]),
        .R(rst));
  FDRE \frame_data_reg[44] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[44]),
        .Q(frame_data[44]),
        .R(rst));
  FDRE \frame_data_reg[45] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[45]),
        .Q(frame_data[45]),
        .R(rst));
  FDRE \frame_data_reg[46] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[46]),
        .Q(frame_data[46]),
        .R(rst));
  FDRE \frame_data_reg[47] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[47]),
        .Q(frame_data[47]),
        .R(rst));
  FDRE \frame_data_reg[48] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[48]),
        .Q(frame_data[48]),
        .R(rst));
  FDRE \frame_data_reg[49] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[49]),
        .Q(frame_data[49]),
        .R(rst));
  FDRE \frame_data_reg[4] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[4]),
        .Q(frame_data[4]),
        .R(rst));
  FDRE \frame_data_reg[50] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[50]),
        .Q(frame_data[50]),
        .R(rst));
  FDRE \frame_data_reg[51] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[51]),
        .Q(frame_data[51]),
        .R(rst));
  FDRE \frame_data_reg[52] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[52]),
        .Q(frame_data[52]),
        .R(rst));
  FDRE \frame_data_reg[53] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[53]),
        .Q(frame_data[53]),
        .R(rst));
  FDRE \frame_data_reg[54] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[54]),
        .Q(frame_data[54]),
        .R(rst));
  FDRE \frame_data_reg[55] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[55]),
        .Q(frame_data[55]),
        .R(rst));
  FDRE \frame_data_reg[56] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[56]),
        .Q(frame_data[56]),
        .R(rst));
  FDRE \frame_data_reg[57] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[57]),
        .Q(frame_data[57]),
        .R(rst));
  FDRE \frame_data_reg[58] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[58]),
        .Q(frame_data[58]),
        .R(rst));
  FDRE \frame_data_reg[59] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[59]),
        .Q(frame_data[59]),
        .R(rst));
  FDRE \frame_data_reg[5] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[5]),
        .Q(frame_data[5]),
        .R(rst));
  FDRE \frame_data_reg[60] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[60]),
        .Q(frame_data[60]),
        .R(rst));
  FDRE \frame_data_reg[61] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[61]),
        .Q(frame_data[61]),
        .R(rst));
  FDRE \frame_data_reg[62] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[62]),
        .Q(frame_data[62]),
        .R(rst));
  FDRE \frame_data_reg[63] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[63]),
        .Q(frame_data[63]),
        .R(rst));
  FDRE \frame_data_reg[6] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[6]),
        .Q(frame_data[6]),
        .R(rst));
  FDRE \frame_data_reg[7] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[7]),
        .Q(frame_data[7]),
        .R(rst));
  FDRE \frame_data_reg[8] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[8]),
        .Q(frame_data[8]),
        .R(rst));
  FDRE \frame_data_reg[9] 
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_data[9]),
        .Q(frame_data[9]),
        .R(rst));
  FDRE frame_last_reg
       (.C(clk),
        .CE(\frame_data[63]_i_1_n_0 ),
        .D(optical_tx_last),
        .Q(frame_last),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[0]_i_1 
       (.I0(frame_data[32]),
        .I1(state[1]),
        .I2(frame_data[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[10]_i_1 
       (.I0(frame_data[42]),
        .I1(state[1]),
        .I2(frame_data[10]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[11]_i_1 
       (.I0(frame_data[43]),
        .I1(state[1]),
        .I2(frame_data[11]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[12]_i_1 
       (.I0(frame_data[44]),
        .I1(state[1]),
        .I2(frame_data[12]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[13]_i_1 
       (.I0(frame_data[45]),
        .I1(state[1]),
        .I2(frame_data[13]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[14]_i_1 
       (.I0(frame_data[46]),
        .I1(state[1]),
        .I2(frame_data[14]),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[15]_i_1 
       (.I0(frame_data[47]),
        .I1(state[1]),
        .I2(frame_data[15]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[16]_i_1 
       (.I0(frame_data[48]),
        .I1(state[1]),
        .I2(frame_data[16]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[17]_i_1 
       (.I0(frame_data[49]),
        .I1(state[1]),
        .I2(frame_data[17]),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[18]_i_1 
       (.I0(frame_data[50]),
        .I1(state[1]),
        .I2(frame_data[18]),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[19]_i_1 
       (.I0(frame_data[51]),
        .I1(state[1]),
        .I2(frame_data[19]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[1]_i_1 
       (.I0(frame_data[33]),
        .I1(state[1]),
        .I2(frame_data[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[20]_i_1 
       (.I0(frame_data[52]),
        .I1(state[1]),
        .I2(frame_data[20]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[21]_i_1 
       (.I0(frame_data[53]),
        .I1(state[1]),
        .I2(frame_data[21]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[22]_i_1 
       (.I0(frame_data[54]),
        .I1(state[1]),
        .I2(frame_data[22]),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[23]_i_1 
       (.I0(frame_data[55]),
        .I1(state[1]),
        .I2(frame_data[23]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[24]_i_1 
       (.I0(frame_data[56]),
        .I1(state[1]),
        .I2(frame_data[24]),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[25]_i_1 
       (.I0(frame_data[57]),
        .I1(state[1]),
        .I2(frame_data[25]),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[26]_i_1 
       (.I0(frame_data[58]),
        .I1(state[1]),
        .I2(frame_data[26]),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[27]_i_1 
       (.I0(frame_data[59]),
        .I1(state[1]),
        .I2(frame_data[27]),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[28]_i_1 
       (.I0(frame_data[60]),
        .I1(state[1]),
        .I2(frame_data[28]),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[29]_i_1 
       (.I0(frame_data[61]),
        .I1(state[1]),
        .I2(frame_data[29]),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[2]_i_1 
       (.I0(frame_data[34]),
        .I1(state[1]),
        .I2(frame_data[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[30]_i_1 
       (.I0(frame_data[62]),
        .I1(state[1]),
        .I2(frame_data[30]),
        .O(p_1_in[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[31]_i_1 
       (.I0(frame_data[63]),
        .I1(state[1]),
        .I2(frame_data[31]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[3]_i_1 
       (.I0(frame_data[35]),
        .I1(state[1]),
        .I2(frame_data[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[4]_i_1 
       (.I0(frame_data[36]),
        .I1(state[1]),
        .I2(frame_data[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[5]_i_1 
       (.I0(frame_data[37]),
        .I1(state[1]),
        .I2(frame_data[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[6]_i_1 
       (.I0(frame_data[38]),
        .I1(state[1]),
        .I2(frame_data[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[7]_i_1 
       (.I0(frame_data[39]),
        .I1(state[1]),
        .I2(frame_data[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[8]_i_1 
       (.I0(frame_data[40]),
        .I1(state[1]),
        .I2(frame_data[8]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gtx_tx_data[9]_i_1 
       (.I0(frame_data[41]),
        .I1(state[1]),
        .I2(frame_data[9]),
        .O(p_1_in[9]));
  FDRE \gtx_tx_data_reg[0] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(Q[0]),
        .R(rst));
  FDRE \gtx_tx_data_reg[10] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(Q[10]),
        .R(rst));
  FDRE \gtx_tx_data_reg[11] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(Q[11]),
        .R(rst));
  FDRE \gtx_tx_data_reg[12] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(Q[12]),
        .R(rst));
  FDRE \gtx_tx_data_reg[13] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(Q[13]),
        .R(rst));
  FDRE \gtx_tx_data_reg[14] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(Q[14]),
        .R(rst));
  FDRE \gtx_tx_data_reg[15] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(Q[15]),
        .R(rst));
  FDRE \gtx_tx_data_reg[16] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(Q[16]),
        .R(rst));
  FDRE \gtx_tx_data_reg[17] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(Q[17]),
        .R(rst));
  FDRE \gtx_tx_data_reg[18] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[18]),
        .Q(Q[18]),
        .R(rst));
  FDRE \gtx_tx_data_reg[19] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[19]),
        .Q(Q[19]),
        .R(rst));
  FDRE \gtx_tx_data_reg[1] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(Q[1]),
        .R(rst));
  FDRE \gtx_tx_data_reg[20] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[20]),
        .Q(Q[20]),
        .R(rst));
  FDRE \gtx_tx_data_reg[21] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[21]),
        .Q(Q[21]),
        .R(rst));
  FDRE \gtx_tx_data_reg[22] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[22]),
        .Q(Q[22]),
        .R(rst));
  FDRE \gtx_tx_data_reg[23] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[23]),
        .Q(Q[23]),
        .R(rst));
  FDRE \gtx_tx_data_reg[24] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[24]),
        .Q(Q[24]),
        .R(rst));
  FDRE \gtx_tx_data_reg[25] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[25]),
        .Q(Q[25]),
        .R(rst));
  FDRE \gtx_tx_data_reg[26] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[26]),
        .Q(Q[26]),
        .R(rst));
  FDRE \gtx_tx_data_reg[27] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[27]),
        .Q(Q[27]),
        .R(rst));
  FDRE \gtx_tx_data_reg[28] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[28]),
        .Q(Q[28]),
        .R(rst));
  FDRE \gtx_tx_data_reg[29] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[29]),
        .Q(Q[29]),
        .R(rst));
  FDRE \gtx_tx_data_reg[2] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(Q[2]),
        .R(rst));
  FDRE \gtx_tx_data_reg[30] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[30]),
        .Q(Q[30]),
        .R(rst));
  FDRE \gtx_tx_data_reg[31] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[31]),
        .Q(Q[31]),
        .R(rst));
  FDRE \gtx_tx_data_reg[3] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(Q[3]),
        .R(rst));
  FDRE \gtx_tx_data_reg[4] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(Q[4]),
        .R(rst));
  FDRE \gtx_tx_data_reg[5] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(Q[5]),
        .R(rst));
  FDRE \gtx_tx_data_reg[6] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(Q[6]),
        .R(rst));
  FDRE \gtx_tx_data_reg[7] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(Q[7]),
        .R(rst));
  FDRE \gtx_tx_data_reg[8] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(Q[8]),
        .R(rst));
  FDRE \gtx_tx_data_reg[9] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(Q[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h40)) 
    gtx_tx_last_i_1
       (.I0(state[0]),
        .I1(frame_last),
        .I2(state[1]),
        .O(gtx_tx_last_i_1_n_0));
  FDRE gtx_tx_last_reg
       (.C(clk),
        .CE(1'b1),
        .D(gtx_tx_last_i_1_n_0),
        .Q(gtx_tx_last),
        .R(rst));
  FDRE gtx_tx_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(\gtx_tx_word_count[31]_i_1_n_0 ),
        .Q(gtx_tx_valid),
        .R(rst));
  LUT2 #(
    .INIT(4'h6)) 
    \gtx_tx_word_count[31]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\gtx_tx_word_count[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gtx_tx_word_count[3]_i_2 
       (.I0(gtx_tx_word_count[0]),
        .O(\gtx_tx_word_count[3]_i_2_n_0 ));
  FDRE \gtx_tx_word_count_reg[0] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[3]_i_1_n_7 ),
        .Q(gtx_tx_word_count[0]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[10] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[11]_i_1_n_5 ),
        .Q(gtx_tx_word_count[10]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[11] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[11]_i_1_n_4 ),
        .Q(gtx_tx_word_count[11]),
        .R(rst));
  CARRY4 \gtx_tx_word_count_reg[11]_i_1 
       (.CI(\gtx_tx_word_count_reg[7]_i_1_n_0 ),
        .CO({\gtx_tx_word_count_reg[11]_i_1_n_0 ,\gtx_tx_word_count_reg[11]_i_1_n_1 ,\gtx_tx_word_count_reg[11]_i_1_n_2 ,\gtx_tx_word_count_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gtx_tx_word_count_reg[11]_i_1_n_4 ,\gtx_tx_word_count_reg[11]_i_1_n_5 ,\gtx_tx_word_count_reg[11]_i_1_n_6 ,\gtx_tx_word_count_reg[11]_i_1_n_7 }),
        .S(gtx_tx_word_count[11:8]));
  FDRE \gtx_tx_word_count_reg[12] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[15]_i_1_n_7 ),
        .Q(gtx_tx_word_count[12]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[13] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[15]_i_1_n_6 ),
        .Q(gtx_tx_word_count[13]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[14] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[15]_i_1_n_5 ),
        .Q(gtx_tx_word_count[14]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[15] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[15]_i_1_n_4 ),
        .Q(gtx_tx_word_count[15]),
        .R(rst));
  CARRY4 \gtx_tx_word_count_reg[15]_i_1 
       (.CI(\gtx_tx_word_count_reg[11]_i_1_n_0 ),
        .CO({\gtx_tx_word_count_reg[15]_i_1_n_0 ,\gtx_tx_word_count_reg[15]_i_1_n_1 ,\gtx_tx_word_count_reg[15]_i_1_n_2 ,\gtx_tx_word_count_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gtx_tx_word_count_reg[15]_i_1_n_4 ,\gtx_tx_word_count_reg[15]_i_1_n_5 ,\gtx_tx_word_count_reg[15]_i_1_n_6 ,\gtx_tx_word_count_reg[15]_i_1_n_7 }),
        .S(gtx_tx_word_count[15:12]));
  FDRE \gtx_tx_word_count_reg[16] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[19]_i_1_n_7 ),
        .Q(gtx_tx_word_count[16]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[17] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[19]_i_1_n_6 ),
        .Q(gtx_tx_word_count[17]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[18] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[19]_i_1_n_5 ),
        .Q(gtx_tx_word_count[18]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[19] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[19]_i_1_n_4 ),
        .Q(gtx_tx_word_count[19]),
        .R(rst));
  CARRY4 \gtx_tx_word_count_reg[19]_i_1 
       (.CI(\gtx_tx_word_count_reg[15]_i_1_n_0 ),
        .CO({\gtx_tx_word_count_reg[19]_i_1_n_0 ,\gtx_tx_word_count_reg[19]_i_1_n_1 ,\gtx_tx_word_count_reg[19]_i_1_n_2 ,\gtx_tx_word_count_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gtx_tx_word_count_reg[19]_i_1_n_4 ,\gtx_tx_word_count_reg[19]_i_1_n_5 ,\gtx_tx_word_count_reg[19]_i_1_n_6 ,\gtx_tx_word_count_reg[19]_i_1_n_7 }),
        .S(gtx_tx_word_count[19:16]));
  FDRE \gtx_tx_word_count_reg[1] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[3]_i_1_n_6 ),
        .Q(gtx_tx_word_count[1]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[20] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[23]_i_1_n_7 ),
        .Q(gtx_tx_word_count[20]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[21] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[23]_i_1_n_6 ),
        .Q(gtx_tx_word_count[21]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[22] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[23]_i_1_n_5 ),
        .Q(gtx_tx_word_count[22]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[23] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[23]_i_1_n_4 ),
        .Q(gtx_tx_word_count[23]),
        .R(rst));
  CARRY4 \gtx_tx_word_count_reg[23]_i_1 
       (.CI(\gtx_tx_word_count_reg[19]_i_1_n_0 ),
        .CO({\gtx_tx_word_count_reg[23]_i_1_n_0 ,\gtx_tx_word_count_reg[23]_i_1_n_1 ,\gtx_tx_word_count_reg[23]_i_1_n_2 ,\gtx_tx_word_count_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gtx_tx_word_count_reg[23]_i_1_n_4 ,\gtx_tx_word_count_reg[23]_i_1_n_5 ,\gtx_tx_word_count_reg[23]_i_1_n_6 ,\gtx_tx_word_count_reg[23]_i_1_n_7 }),
        .S(gtx_tx_word_count[23:20]));
  FDRE \gtx_tx_word_count_reg[24] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[27]_i_1_n_7 ),
        .Q(gtx_tx_word_count[24]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[25] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[27]_i_1_n_6 ),
        .Q(gtx_tx_word_count[25]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[26] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[27]_i_1_n_5 ),
        .Q(gtx_tx_word_count[26]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[27] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[27]_i_1_n_4 ),
        .Q(gtx_tx_word_count[27]),
        .R(rst));
  CARRY4 \gtx_tx_word_count_reg[27]_i_1 
       (.CI(\gtx_tx_word_count_reg[23]_i_1_n_0 ),
        .CO({\gtx_tx_word_count_reg[27]_i_1_n_0 ,\gtx_tx_word_count_reg[27]_i_1_n_1 ,\gtx_tx_word_count_reg[27]_i_1_n_2 ,\gtx_tx_word_count_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gtx_tx_word_count_reg[27]_i_1_n_4 ,\gtx_tx_word_count_reg[27]_i_1_n_5 ,\gtx_tx_word_count_reg[27]_i_1_n_6 ,\gtx_tx_word_count_reg[27]_i_1_n_7 }),
        .S(gtx_tx_word_count[27:24]));
  FDRE \gtx_tx_word_count_reg[28] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[31]_i_2_n_7 ),
        .Q(gtx_tx_word_count[28]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[29] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[31]_i_2_n_6 ),
        .Q(gtx_tx_word_count[29]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[2] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[3]_i_1_n_5 ),
        .Q(gtx_tx_word_count[2]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[30] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[31]_i_2_n_5 ),
        .Q(gtx_tx_word_count[30]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[31] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[31]_i_2_n_4 ),
        .Q(gtx_tx_word_count[31]),
        .R(rst));
  CARRY4 \gtx_tx_word_count_reg[31]_i_2 
       (.CI(\gtx_tx_word_count_reg[27]_i_1_n_0 ),
        .CO({\NLW_gtx_tx_word_count_reg[31]_i_2_CO_UNCONNECTED [3],\gtx_tx_word_count_reg[31]_i_2_n_1 ,\gtx_tx_word_count_reg[31]_i_2_n_2 ,\gtx_tx_word_count_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gtx_tx_word_count_reg[31]_i_2_n_4 ,\gtx_tx_word_count_reg[31]_i_2_n_5 ,\gtx_tx_word_count_reg[31]_i_2_n_6 ,\gtx_tx_word_count_reg[31]_i_2_n_7 }),
        .S(gtx_tx_word_count[31:28]));
  FDRE \gtx_tx_word_count_reg[3] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[3]_i_1_n_4 ),
        .Q(gtx_tx_word_count[3]),
        .R(rst));
  CARRY4 \gtx_tx_word_count_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gtx_tx_word_count_reg[3]_i_1_n_0 ,\gtx_tx_word_count_reg[3]_i_1_n_1 ,\gtx_tx_word_count_reg[3]_i_1_n_2 ,\gtx_tx_word_count_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\gtx_tx_word_count_reg[3]_i_1_n_4 ,\gtx_tx_word_count_reg[3]_i_1_n_5 ,\gtx_tx_word_count_reg[3]_i_1_n_6 ,\gtx_tx_word_count_reg[3]_i_1_n_7 }),
        .S({gtx_tx_word_count[3:1],\gtx_tx_word_count[3]_i_2_n_0 }));
  FDRE \gtx_tx_word_count_reg[4] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[7]_i_1_n_7 ),
        .Q(gtx_tx_word_count[4]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[5] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[7]_i_1_n_6 ),
        .Q(gtx_tx_word_count[5]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[6] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[7]_i_1_n_5 ),
        .Q(gtx_tx_word_count[6]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[7] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[7]_i_1_n_4 ),
        .Q(gtx_tx_word_count[7]),
        .R(rst));
  CARRY4 \gtx_tx_word_count_reg[7]_i_1 
       (.CI(\gtx_tx_word_count_reg[3]_i_1_n_0 ),
        .CO({\gtx_tx_word_count_reg[7]_i_1_n_0 ,\gtx_tx_word_count_reg[7]_i_1_n_1 ,\gtx_tx_word_count_reg[7]_i_1_n_2 ,\gtx_tx_word_count_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gtx_tx_word_count_reg[7]_i_1_n_4 ,\gtx_tx_word_count_reg[7]_i_1_n_5 ,\gtx_tx_word_count_reg[7]_i_1_n_6 ,\gtx_tx_word_count_reg[7]_i_1_n_7 }),
        .S(gtx_tx_word_count[7:4]));
  FDRE \gtx_tx_word_count_reg[8] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[11]_i_1_n_7 ),
        .Q(gtx_tx_word_count[8]),
        .R(rst));
  FDRE \gtx_tx_word_count_reg[9] 
       (.C(clk),
        .CE(\gtx_tx_word_count[31]_i_1_n_0 ),
        .D(\gtx_tx_word_count_reg[11]_i_1_n_6 ),
        .Q(gtx_tx_word_count[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hC4)) 
    \gtx_tx_word_index[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(gtx_tx_word_index),
        .O(\gtx_tx_word_index[0]_i_1_n_0 ));
  FDRE \gtx_tx_word_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\gtx_tx_word_index[0]_i_1_n_0 ),
        .Q(gtx_tx_word_index),
        .R(rst));
  LUT5 #(
    .INIT(32'h00000002)) 
    i__i_1
       (.I0(prev_valid_reg_0),
        .I1(i__i_2_n_0),
        .I2(i__i_3_n_0),
        .I3(i__i_4_n_0),
        .I4(i__i_5_n_0),
        .O(p_0_in8_out));
  LUT5 #(
    .INIT(32'h00000001)) 
    i__i_1__0
       (.I0(Q[8]),
        .I1(Q[10]),
        .I2(Q[12]),
        .I3(Q[14]),
        .I4(i__i_3__0_n_0),
        .O(m_axis_tlast_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    i__i_2
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[15]),
        .I3(Q[14]),
        .I4(i__i_6_n_0),
        .O(i__i_2_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    i__i_2__0
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(i__i_4__0_n_0),
        .O(m_axis_tlast_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    i__i_3
       (.I0(Q[19]),
        .I1(Q[21]),
        .I2(Q[30]),
        .I3(Q[17]),
        .I4(i__i_7_n_0),
        .O(i__i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__i_3__0
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[7]),
        .I3(Q[5]),
        .O(i__i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    i__i_4
       (.I0(Q[29]),
        .I1(Q[0]),
        .I2(Q[7]),
        .I3(Q[31]),
        .I4(i__i_8_n_0),
        .O(i__i_4_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    i__i_4__0
       (.I0(Q[11]),
        .I1(Q[9]),
        .I2(Q[15]),
        .I3(Q[13]),
        .O(i__i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    i__i_5
       (.I0(Q[4]),
        .I1(Q[20]),
        .I2(Q[3]),
        .I3(Q[22]),
        .I4(i__i_9_n_0),
        .O(i__i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__i_6
       (.I0(Q[10]),
        .I1(Q[11]),
        .I2(Q[8]),
        .I3(Q[9]),
        .O(i__i_6_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    i__i_7
       (.I0(Q[24]),
        .I1(Q[23]),
        .I2(Q[28]),
        .I3(Q[26]),
        .O(i__i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__i_8
       (.I0(Q[1]),
        .I1(Q[27]),
        .I2(Q[2]),
        .I3(Q[25]),
        .O(i__i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__i_9
       (.I0(Q[18]),
        .I1(Q[5]),
        .I2(Q[16]),
        .I3(Q[6]),
        .O(i__i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    m_axis_tlast_i_10
       (.I0(Q[17]),
        .I1(Q[30]),
        .I2(Q[21]),
        .I3(Q[19]),
        .O(m_axis_tlast_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_tlast_i_5
       (.I0(i__i_8_n_0),
        .I1(m_axis_tlast_i_7_n_0),
        .I2(i__i_9_n_0),
        .I3(m_axis_tlast_i_8_n_0),
        .O(m_axis_tlast_reg_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_tlast_i_6
       (.I0(i__i_6_n_0),
        .I1(m_axis_tlast_i_9_n_0),
        .I2(i__i_7_n_0),
        .I3(m_axis_tlast_i_10_n_0),
        .O(m_axis_tlast_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_tlast_i_7
       (.I0(Q[31]),
        .I1(Q[7]),
        .I2(Q[0]),
        .I3(Q[29]),
        .O(m_axis_tlast_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_tlast_i_8
       (.I0(Q[22]),
        .I1(Q[3]),
        .I2(Q[20]),
        .I3(Q[4]),
        .O(m_axis_tlast_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_tlast_i_9
       (.I0(Q[14]),
        .I1(Q[15]),
        .I2(Q[12]),
        .I3(Q[13]),
        .O(m_axis_tlast_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \state[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(tx_valid_reg),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \state[1]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\state[1]_i_1_n_0 ));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \tx_keep[7]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(tx_valid_reg),
        .O(\tx_keep_reg[7] ));
endmodule

(* ORIG_REF_NAME = "pcie_bar_cmd_rx" *) 
module loopback_debug_bd_min_optical_loopback_debug_top_0_0_pcie_bar_cmd_rx
   (fifo_wr_en,
    status_reg,
    fifo_wr_en_reg_0,
    fifo_wr_en_reg_1,
    fifo_wr_en_reg_2,
    Q,
    rst,
    commit_count0,
    clk,
    pcie_wr_addr,
    pcie_wr_en,
    pcie_wr_data);
  output fifo_wr_en;
  output [27:0]status_reg;
  output fifo_wr_en_reg_0;
  output fifo_wr_en_reg_1;
  output fifo_wr_en_reg_2;
  output [63:0]Q;
  input rst;
  input commit_count0;
  input clk;
  input [31:0]pcie_wr_addr;
  input pcie_wr_en;
  input [31:0]pcie_wr_data;

  wire [63:0]Q;
  wire clk;
  wire [31:0]cmd_addr_reg;
  wire cmd_addr_reg0;
  wire \cmd_addr_reg[31]_i_2_n_0 ;
  wire [31:0]cmd_data_reg;
  wire cmd_data_reg0;
  wire \cmd_data_reg[31]_i_2_n_0 ;
  wire \cmd_data_reg[31]_i_3_n_0 ;
  wire \cmd_data_reg[31]_i_4_n_0 ;
  wire \cmd_data_reg[31]_i_5_n_0 ;
  wire \cmd_data_reg[31]_i_6_n_0 ;
  wire \cmd_data_reg[31]_i_7_n_0 ;
  wire \cmd_data_reg[31]_i_8_n_0 ;
  wire \cmd_data_reg[31]_i_9_n_0 ;
  wire commit_count0;
  wire \commit_count[27]_i_10_n_0 ;
  wire \commit_count[27]_i_7_n_0 ;
  wire \commit_count[27]_i_8_n_0 ;
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
  wire [31:0]pcie_wr_addr;
  wire [31:0]pcie_wr_data;
  wire pcie_wr_en;
  wire rst;
  wire [27:0]status_reg;
  wire [3:3]\NLW_commit_count_reg[27]_i_2_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h02)) 
    \cmd_addr_reg[31]_i_1 
       (.I0(pcie_wr_en),
        .I1(\cmd_addr_reg[31]_i_2_n_0 ),
        .I2(\cmd_data_reg[31]_i_3_n_0 ),
        .O(cmd_addr_reg0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cmd_addr_reg[31]_i_2 
       (.I0(\cmd_data_reg[31]_i_4_n_0 ),
        .I1(pcie_wr_addr[2]),
        .I2(pcie_wr_addr[3]),
        .I3(pcie_wr_addr[0]),
        .I4(pcie_wr_addr[1]),
        .I5(\cmd_data_reg[31]_i_5_n_0 ),
        .O(\cmd_addr_reg[31]_i_2_n_0 ));
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
    .INIT(8'h02)) 
    \cmd_data_reg[31]_i_1 
       (.I0(pcie_wr_en),
        .I1(\cmd_data_reg[31]_i_2_n_0 ),
        .I2(\cmd_data_reg[31]_i_3_n_0 ),
        .O(cmd_data_reg0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \cmd_data_reg[31]_i_2 
       (.I0(\cmd_data_reg[31]_i_4_n_0 ),
        .I1(pcie_wr_addr[0]),
        .I2(pcie_wr_addr[3]),
        .I3(pcie_wr_addr[2]),
        .I4(pcie_wr_addr[1]),
        .I5(\cmd_data_reg[31]_i_5_n_0 ),
        .O(\cmd_data_reg[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cmd_data_reg[31]_i_3 
       (.I0(\cmd_data_reg[31]_i_6_n_0 ),
        .I1(pcie_wr_addr[31]),
        .I2(pcie_wr_addr[30]),
        .I3(pcie_wr_addr[28]),
        .I4(pcie_wr_addr[29]),
        .I5(\cmd_data_reg[31]_i_7_n_0 ),
        .O(\cmd_data_reg[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cmd_data_reg[31]_i_4 
       (.I0(pcie_wr_addr[13]),
        .I1(pcie_wr_addr[12]),
        .I2(pcie_wr_addr[15]),
        .I3(pcie_wr_addr[14]),
        .I4(\cmd_data_reg[31]_i_8_n_0 ),
        .O(\cmd_data_reg[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cmd_data_reg[31]_i_5 
       (.I0(pcie_wr_addr[6]),
        .I1(pcie_wr_addr[7]),
        .I2(pcie_wr_addr[4]),
        .I3(pcie_wr_addr[5]),
        .O(\cmd_data_reg[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cmd_data_reg[31]_i_6 
       (.I0(pcie_wr_addr[26]),
        .I1(pcie_wr_addr[27]),
        .I2(pcie_wr_addr[24]),
        .I3(pcie_wr_addr[25]),
        .O(\cmd_data_reg[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cmd_data_reg[31]_i_7 
       (.I0(pcie_wr_addr[21]),
        .I1(pcie_wr_addr[20]),
        .I2(pcie_wr_addr[23]),
        .I3(pcie_wr_addr[22]),
        .I4(\cmd_data_reg[31]_i_9_n_0 ),
        .O(\cmd_data_reg[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cmd_data_reg[31]_i_8 
       (.I0(pcie_wr_addr[10]),
        .I1(pcie_wr_addr[11]),
        .I2(pcie_wr_addr[8]),
        .I3(pcie_wr_addr[9]),
        .O(\cmd_data_reg[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cmd_data_reg[31]_i_9 
       (.I0(pcie_wr_addr[18]),
        .I1(pcie_wr_addr[19]),
        .I2(pcie_wr_addr[16]),
        .I3(pcie_wr_addr[17]),
        .O(\cmd_data_reg[31]_i_9_n_0 ));
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
       (.I0(pcie_wr_addr[16]),
        .I1(pcie_wr_addr[17]),
        .I2(pcie_wr_addr[14]),
        .I3(pcie_wr_addr[15]),
        .O(\commit_count[27]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \commit_count[27]_i_4 
       (.I0(\commit_count[27]_i_7_n_0 ),
        .I1(pcie_wr_addr[28]),
        .I2(pcie_wr_addr[29]),
        .I3(pcie_wr_addr[26]),
        .I4(pcie_wr_addr[27]),
        .I5(\commit_count[27]_i_8_n_0 ),
        .O(fifo_wr_en_reg_2));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \commit_count[27]_i_5 
       (.I0(pcie_wr_addr[8]),
        .I1(pcie_wr_addr[9]),
        .I2(pcie_wr_addr[6]),
        .I3(pcie_wr_addr[7]),
        .O(fifo_wr_en_reg_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \commit_count[27]_i_7 
       (.I0(pcie_wr_addr[24]),
        .I1(pcie_wr_addr[25]),
        .I2(pcie_wr_addr[22]),
        .I3(pcie_wr_addr[23]),
        .O(\commit_count[27]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \commit_count[27]_i_8 
       (.I0(pcie_wr_addr[19]),
        .I1(pcie_wr_addr[18]),
        .I2(pcie_wr_addr[21]),
        .I3(pcie_wr_addr[20]),
        .I4(\commit_count[27]_i_10_n_0 ),
        .O(\commit_count[27]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \commit_count[27]_i_9 
       (.I0(pcie_wr_addr[0]),
        .I1(pcie_wr_addr[1]),
        .I2(pcie_wr_data[0]),
        .I3(pcie_wr_addr[3]),
        .O(fifo_wr_en_reg_0));
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
        .D(commit_count0),
        .Q(fifo_wr_en),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "pcie_cmd_to_optical_gtx_top" *) 
module loopback_debug_bd_min_optical_loopback_debug_top_0_0_pcie_cmd_to_optical_gtx_top
   (gtx_tx_valid,
    gtx_tx_last,
    status_reg,
    \tx_frame_count[0] ,
    S,
    \tx_frame_count[7] ,
    \tx_frame_count[11] ,
    \tx_frame_count[15] ,
    \tx_frame_count[19] ,
    \tx_frame_count[23] ,
    \tx_frame_count[27] ,
    \tx_frame_count[31] ,
    gtx_tx_word_count,
    optical_tx_last,
    optical_tx_valid,
    optical_tx_keep,
    gtx_tx_word_index,
    prev_valid_reg,
    p_0_in8_out,
    m_axis_tlast_reg,
    Q,
    m_axis_tlast_reg_0,
    status_reg_3_sp_1,
    m_axis_tlast_reg_1,
    m_axis_tlast_reg_2,
    optical_tx_data,
    rst,
    clk,
    pcie_wr_addr,
    rx_axis_tvalid,
    pcie_wr_en,
    pcie_wr_data,
    prev_valid_reg_0);
  output gtx_tx_valid;
  output gtx_tx_last;
  output [28:0]status_reg;
  output \tx_frame_count[0] ;
  output [2:0]S;
  output [3:0]\tx_frame_count[7] ;
  output [3:0]\tx_frame_count[11] ;
  output [3:0]\tx_frame_count[15] ;
  output [3:0]\tx_frame_count[19] ;
  output [3:0]\tx_frame_count[23] ;
  output [3:0]\tx_frame_count[27] ;
  output [3:0]\tx_frame_count[31] ;
  output [31:0]gtx_tx_word_count;
  output optical_tx_last;
  output optical_tx_valid;
  output [0:0]optical_tx_keep;
  output [0:0]gtx_tx_word_index;
  output prev_valid_reg;
  output p_0_in8_out;
  output m_axis_tlast_reg;
  output [31:0]Q;
  output m_axis_tlast_reg_0;
  output status_reg_3_sp_1;
  output m_axis_tlast_reg_1;
  output m_axis_tlast_reg_2;
  output [63:0]optical_tx_data;
  input rst;
  input clk;
  input [31:0]pcie_wr_addr;
  input rx_axis_tvalid;
  input pcie_wr_en;
  input [31:0]pcie_wr_data;
  input prev_valid_reg_0;

  wire [31:0]Q;
  wire [2:0]S;
  wire clk;
  wire gtx_tx_last;
  wire gtx_tx_valid;
  wire [31:0]gtx_tx_word_count;
  wire [0:0]gtx_tx_word_index;
  wire m_axis_tlast_reg;
  wire m_axis_tlast_reg_0;
  wire m_axis_tlast_reg_1;
  wire m_axis_tlast_reg_2;
  wire [63:0]optical_tx_data;
  wire [0:0]optical_tx_keep;
  wire optical_tx_last;
  wire optical_tx_valid;
  wire p_0_in8_out;
  wire [31:0]pcie_wr_addr;
  wire [31:0]pcie_wr_data;
  wire pcie_wr_en;
  wire prev_valid_reg;
  wire prev_valid_reg_0;
  wire rst;
  wire rx_axis_tvalid;
  wire [1:0]state;
  wire [28:0]status_reg;
  wire status_reg_3_sn_1;
  wire \tx_frame_count[0] ;
  wire [3:0]\tx_frame_count[11] ;
  wire [3:0]\tx_frame_count[15] ;
  wire [3:0]\tx_frame_count[19] ;
  wire [3:0]\tx_frame_count[23] ;
  wire [3:0]\tx_frame_count[27] ;
  wire [3:0]\tx_frame_count[31] ;
  wire [3:0]\tx_frame_count[7] ;
  wire u_optical_stream_to_gtx32_n_35;

  assign status_reg_3_sp_1 = status_reg_3_sn_1;
  loopback_debug_bd_min_optical_loopback_debug_top_0_0_optical_stream_to_gtx32 u_optical_stream_to_gtx32
       (.Q(Q),
        .clk(clk),
        .gtx_tx_last(gtx_tx_last),
        .gtx_tx_valid(gtx_tx_valid),
        .gtx_tx_word_count(gtx_tx_word_count),
        .gtx_tx_word_index(gtx_tx_word_index),
        .m_axis_tlast_reg(m_axis_tlast_reg),
        .m_axis_tlast_reg_0(m_axis_tlast_reg_0),
        .m_axis_tlast_reg_1(m_axis_tlast_reg_1),
        .m_axis_tlast_reg_2(m_axis_tlast_reg_2),
        .optical_tx_data(optical_tx_data),
        .optical_tx_last(optical_tx_last),
        .p_0_in8_out(p_0_in8_out),
        .prev_valid_reg(prev_valid_reg),
        .prev_valid_reg_0(prev_valid_reg_0),
        .rst(rst),
        .rx_axis_tvalid(rx_axis_tvalid),
        .state(state),
        .\tx_keep_reg[7] (u_optical_stream_to_gtx32_n_35),
        .tx_valid_reg(optical_tx_valid));
  loopback_debug_bd_min_optical_loopback_debug_top_0_0_pcie_cmd_to_optical_top u_pcie_cmd_to_optical_top
       (.S(S),
        .clk(clk),
        .optical_tx_data(optical_tx_data),
        .optical_tx_keep(optical_tx_keep),
        .optical_tx_last(optical_tx_last),
        .optical_tx_valid(optical_tx_valid),
        .pcie_wr_addr(pcie_wr_addr),
        .pcie_wr_data(pcie_wr_data),
        .pcie_wr_en(pcie_wr_en),
        .rst(rst),
        .state(state),
        .\state_reg[1] (u_optical_stream_to_gtx32_n_35),
        .status_reg(status_reg),
        .status_reg_3_sp_1(status_reg_3_sn_1),
        .\tx_frame_count[0] (\tx_frame_count[0] ),
        .\tx_frame_count[11] (\tx_frame_count[11] ),
        .\tx_frame_count[15] (\tx_frame_count[15] ),
        .\tx_frame_count[19] (\tx_frame_count[19] ),
        .\tx_frame_count[23] (\tx_frame_count[23] ),
        .\tx_frame_count[27] (\tx_frame_count[27] ),
        .\tx_frame_count[31] (\tx_frame_count[31] ),
        .\tx_frame_count[7] (\tx_frame_count[7] ));
endmodule

(* ORIG_REF_NAME = "pcie_cmd_to_optical_top" *) 
module loopback_debug_bd_min_optical_loopback_debug_top_0_0_pcie_cmd_to_optical_top
   (status_reg,
    \tx_frame_count[0] ,
    S,
    \tx_frame_count[7] ,
    \tx_frame_count[11] ,
    \tx_frame_count[15] ,
    \tx_frame_count[19] ,
    \tx_frame_count[23] ,
    \tx_frame_count[27] ,
    \tx_frame_count[31] ,
    optical_tx_valid,
    optical_tx_keep,
    optical_tx_last,
    status_reg_3_sp_1,
    optical_tx_data,
    rst,
    clk,
    pcie_wr_addr,
    pcie_wr_en,
    pcie_wr_data,
    \state_reg[1] ,
    state);
  output [28:0]status_reg;
  output \tx_frame_count[0] ;
  output [2:0]S;
  output [3:0]\tx_frame_count[7] ;
  output [3:0]\tx_frame_count[11] ;
  output [3:0]\tx_frame_count[15] ;
  output [3:0]\tx_frame_count[19] ;
  output [3:0]\tx_frame_count[23] ;
  output [3:0]\tx_frame_count[27] ;
  output [3:0]\tx_frame_count[31] ;
  output optical_tx_valid;
  output [0:0]optical_tx_keep;
  output optical_tx_last;
  output status_reg_3_sp_1;
  output [63:0]optical_tx_data;
  input rst;
  input clk;
  input [31:0]pcie_wr_addr;
  input pcie_wr_en;
  input [31:0]pcie_wr_data;
  input \state_reg[1] ;
  input [1:0]state;

  wire [2:0]S;
  wire [15:0]calc_crc16_return;
  wire clk;
  wire commit_count0;
  wire [63:0]fifo_rd_data;
  wire fifo_rd_en;
  wire [63:0]fifo_wr_data;
  wire fifo_wr_en;
  wire [63:0]optical_tx_data;
  wire [0:0]optical_tx_keep;
  wire optical_tx_last;
  wire optical_tx_valid;
  wire [31:0]pcie_wr_addr;
  wire [31:0]pcie_wr_data;
  wire pcie_wr_en;
  wire rst;
  wire [1:0]state;
  wire \state_reg[1] ;
  wire [28:0]status_reg;
  wire status_reg_3_sn_1;
  wire \tx_frame_count[0] ;
  wire [3:0]\tx_frame_count[11] ;
  wire [3:0]\tx_frame_count[15] ;
  wire [3:0]\tx_frame_count[19] ;
  wire [3:0]\tx_frame_count[23] ;
  wire [3:0]\tx_frame_count[27] ;
  wire [3:0]\tx_frame_count[31] ;
  wire [3:0]\tx_frame_count[7] ;
  wire u_pcie_bar_cmd_rx_n_29;
  wire u_pcie_bar_cmd_rx_n_30;
  wire u_pcie_bar_cmd_rx_n_31;

  assign status_reg_3_sp_1 = status_reg_3_sn_1;
  loopback_debug_bd_min_optical_loopback_debug_top_0_0_custom_optical_tx u_custom_optical_tx
       (.D(calc_crc16_return),
        .S(S),
        .clk(clk),
        .fifo_rd_en(fifo_rd_en),
        .optical_tx_data(optical_tx_data),
        .optical_tx_keep(optical_tx_keep),
        .optical_tx_last(optical_tx_last),
        .optical_tx_valid(optical_tx_valid),
        .rd_data(fifo_rd_data),
        .rst(rst),
        .state(state),
        .\state_reg[1] (\state_reg[1] ),
        .\tx_frame_count[0] (\tx_frame_count[0] ),
        .\tx_frame_count[11] (\tx_frame_count[11] ),
        .\tx_frame_count[15] (\tx_frame_count[15] ),
        .\tx_frame_count[19] (\tx_frame_count[19] ),
        .\tx_frame_count[23] (\tx_frame_count[23] ),
        .\tx_frame_count[27] (\tx_frame_count[27] ),
        .\tx_frame_count[31] (\tx_frame_count[31] ),
        .\tx_frame_count[7] (\tx_frame_count[7] ),
        .\usedw_reg[3] (status_reg_3_sn_1));
  loopback_debug_bd_min_optical_loopback_debug_top_0_0_pcie_bar_cmd_rx u_pcie_bar_cmd_rx
       (.Q(fifo_wr_data),
        .clk(clk),
        .commit_count0(commit_count0),
        .fifo_wr_en(fifo_wr_en),
        .fifo_wr_en_reg_0(u_pcie_bar_cmd_rx_n_29),
        .fifo_wr_en_reg_1(u_pcie_bar_cmd_rx_n_30),
        .fifo_wr_en_reg_2(u_pcie_bar_cmd_rx_n_31),
        .pcie_wr_addr(pcie_wr_addr),
        .pcie_wr_data(pcie_wr_data),
        .pcie_wr_en(pcie_wr_en),
        .rst(rst),
        .status_reg(status_reg[28:1]));
  loopback_debug_bd_min_optical_loopback_debug_top_0_0_simple_sync_fifo u_simple_sync_fifo
       (.D(calc_crc16_return),
        .S(S),
        .clk(clk),
        .commit_count0(commit_count0),
        .fifo_rd_en(fifo_rd_en),
        .fifo_wr_en(fifo_wr_en),
        .pcie_wr_addr({pcie_wr_addr[31:30],pcie_wr_addr[13:10],pcie_wr_addr[5:4],pcie_wr_addr[2]}),
        .\pcie_wr_addr[15] (u_pcie_bar_cmd_rx_n_31),
        .pcie_wr_addr_3_sp_1(u_pcie_bar_cmd_rx_n_29),
        .pcie_wr_addr_7_sp_1(u_pcie_bar_cmd_rx_n_30),
        .pcie_wr_en(pcie_wr_en),
        .rd_data(fifo_rd_data),
        .rst(rst),
        .\seq_cnt_reg[0] (\tx_frame_count[0] ),
        .\seq_cnt_reg[11] (\tx_frame_count[11] ),
        .\seq_cnt_reg[15] (\tx_frame_count[15] ),
        .\seq_cnt_reg[19] (\tx_frame_count[19] ),
        .\seq_cnt_reg[23] (\tx_frame_count[23] ),
        .\seq_cnt_reg[27] (\tx_frame_count[27] ),
        .\seq_cnt_reg[31] (\tx_frame_count[31] ),
        .\seq_cnt_reg[7] (\tx_frame_count[7] ),
        .status_reg(status_reg[0]),
        .\status_reg[3] (status_reg_3_sn_1),
        .wr_data(fifo_wr_data));
endmodule

(* ORIG_REF_NAME = "simple_sync_fifo" *) 
module loopback_debug_bd_min_optical_loopback_debug_top_0_0_simple_sync_fifo
   (commit_count0,
    status_reg,
    D,
    rd_data,
    \status_reg[3] ,
    rst,
    clk,
    fifo_wr_en,
    fifo_rd_en,
    pcie_wr_addr,
    pcie_wr_en,
    \pcie_wr_addr[15] ,
    pcie_wr_addr_7_sp_1,
    pcie_wr_addr_3_sp_1,
    \seq_cnt_reg[19] ,
    \seq_cnt_reg[0] ,
    S,
    \seq_cnt_reg[23] ,
    \seq_cnt_reg[7] ,
    \seq_cnt_reg[27] ,
    \seq_cnt_reg[11] ,
    \seq_cnt_reg[31] ,
    \seq_cnt_reg[15] ,
    wr_data);
  output commit_count0;
  output [0:0]status_reg;
  output [15:0]D;
  output [63:0]rd_data;
  output \status_reg[3] ;
  input rst;
  input clk;
  input fifo_wr_en;
  input fifo_rd_en;
  input [8:0]pcie_wr_addr;
  input pcie_wr_en;
  input \pcie_wr_addr[15] ;
  input pcie_wr_addr_7_sp_1;
  input pcie_wr_addr_3_sp_1;
  input [3:0]\seq_cnt_reg[19] ;
  input \seq_cnt_reg[0] ;
  input [2:0]S;
  input [3:0]\seq_cnt_reg[23] ;
  input [3:0]\seq_cnt_reg[7] ;
  input [3:0]\seq_cnt_reg[27] ;
  input [3:0]\seq_cnt_reg[11] ;
  input [3:0]\seq_cnt_reg[31] ;
  input [3:0]\seq_cnt_reg[15] ;
  input [63:0]wr_data;

  wire [15:0]D;
  wire [2:0]S;
  wire clk;
  wire commit_count0;
  wire \commit_count[27]_i_3_n_0 ;
  wire \commit_count[27]_i_6_n_0 ;
  wire fifo_rd_en;
  wire fifo_wr_en;
  wire mem_reg_i_1_n_0;
  wire mem_reg_i_2_n_0;
  wire mem_reg_i_3_n_0;
  wire [3:0]p_0_in;
  wire [8:0]pcie_wr_addr;
  wire \pcie_wr_addr[15] ;
  wire pcie_wr_addr_3_sn_1;
  wire pcie_wr_addr_7_sn_1;
  wire pcie_wr_en;
  wire [63:0]rd_data;
  wire [3:0]rd_ptr;
  wire \rd_ptr[0]_i_1_n_0 ;
  wire \rd_ptr[1]_i_1_n_0 ;
  wire \rd_ptr[2]_i_1_n_0 ;
  wire \rd_ptr[2]_i_2_n_0 ;
  wire \rd_ptr[3]_i_1_n_0 ;
  wire rst;
  wire \seq_cnt_reg[0] ;
  wire [3:0]\seq_cnt_reg[11] ;
  wire [3:0]\seq_cnt_reg[15] ;
  wire [3:0]\seq_cnt_reg[19] ;
  wire [3:0]\seq_cnt_reg[23] ;
  wire [3:0]\seq_cnt_reg[27] ;
  wire [3:0]\seq_cnt_reg[31] ;
  wire [3:0]\seq_cnt_reg[7] ;
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

  assign pcie_wr_addr_3_sn_1 = pcie_wr_addr_3_sp_1;
  assign pcie_wr_addr_7_sn_1 = pcie_wr_addr_7_sp_1;
  LUT5 #(
    .INIT(32'h00000010)) 
    \commit_count[27]_i_1 
       (.I0(pcie_wr_addr[7]),
        .I1(pcie_wr_addr[8]),
        .I2(pcie_wr_en),
        .I3(\commit_count[27]_i_3_n_0 ),
        .I4(\pcie_wr_addr[15] ),
        .O(commit_count0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \commit_count[27]_i_3 
       (.I0(pcie_wr_addr_7_sn_1),
        .I1(pcie_wr_addr[5]),
        .I2(pcie_wr_addr[6]),
        .I3(pcie_wr_addr[3]),
        .I4(pcie_wr_addr[4]),
        .I5(\commit_count[27]_i_6_n_0 ),
        .O(\commit_count[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \commit_count[27]_i_6 
       (.I0(status_reg),
        .I1(pcie_wr_addr[0]),
        .I2(pcie_wr_addr[2]),
        .I3(pcie_wr_addr[1]),
        .I4(pcie_wr_addr_3_sn_1),
        .O(\commit_count[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc16[0]_i_1 
       (.I0(rd_data[0]),
        .I1(\seq_cnt_reg[19] [0]),
        .I2(rd_data[48]),
        .I3(\seq_cnt_reg[0] ),
        .I4(rd_data[16]),
        .I5(rd_data[32]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc16[10]_i_1 
       (.I0(rd_data[10]),
        .I1(\seq_cnt_reg[27] [2]),
        .I2(rd_data[58]),
        .I3(\seq_cnt_reg[11] [2]),
        .I4(rd_data[26]),
        .I5(rd_data[42]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc16[11]_i_1 
       (.I0(rd_data[11]),
        .I1(\seq_cnt_reg[27] [3]),
        .I2(rd_data[59]),
        .I3(\seq_cnt_reg[11] [3]),
        .I4(rd_data[27]),
        .I5(rd_data[43]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc16[12]_i_1 
       (.I0(rd_data[12]),
        .I1(\seq_cnt_reg[31] [0]),
        .I2(rd_data[60]),
        .I3(\seq_cnt_reg[15] [0]),
        .I4(rd_data[28]),
        .I5(rd_data[44]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc16[13]_i_1 
       (.I0(rd_data[13]),
        .I1(\seq_cnt_reg[31] [1]),
        .I2(rd_data[61]),
        .I3(\seq_cnt_reg[15] [1]),
        .I4(rd_data[29]),
        .I5(rd_data[45]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc16[14]_i_1 
       (.I0(rd_data[14]),
        .I1(\seq_cnt_reg[31] [2]),
        .I2(rd_data[62]),
        .I3(\seq_cnt_reg[15] [2]),
        .I4(rd_data[30]),
        .I5(rd_data[46]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc16[15]_i_1 
       (.I0(rd_data[15]),
        .I1(\seq_cnt_reg[31] [3]),
        .I2(rd_data[63]),
        .I3(\seq_cnt_reg[15] [3]),
        .I4(rd_data[31]),
        .I5(rd_data[47]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc16[1]_i_1 
       (.I0(rd_data[1]),
        .I1(\seq_cnt_reg[19] [1]),
        .I2(rd_data[49]),
        .I3(S[0]),
        .I4(rd_data[17]),
        .I5(rd_data[33]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc16[2]_i_1 
       (.I0(rd_data[2]),
        .I1(\seq_cnt_reg[19] [2]),
        .I2(rd_data[50]),
        .I3(S[1]),
        .I4(rd_data[18]),
        .I5(rd_data[34]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc16[3]_i_1 
       (.I0(rd_data[3]),
        .I1(\seq_cnt_reg[19] [3]),
        .I2(rd_data[51]),
        .I3(S[2]),
        .I4(rd_data[19]),
        .I5(rd_data[35]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc16[4]_i_1 
       (.I0(rd_data[4]),
        .I1(\seq_cnt_reg[23] [0]),
        .I2(rd_data[52]),
        .I3(\seq_cnt_reg[7] [0]),
        .I4(rd_data[20]),
        .I5(rd_data[36]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc16[5]_i_1 
       (.I0(rd_data[5]),
        .I1(\seq_cnt_reg[23] [1]),
        .I2(rd_data[53]),
        .I3(\seq_cnt_reg[7] [1]),
        .I4(rd_data[21]),
        .I5(rd_data[37]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc16[6]_i_1 
       (.I0(rd_data[6]),
        .I1(\seq_cnt_reg[23] [2]),
        .I2(rd_data[54]),
        .I3(\seq_cnt_reg[7] [2]),
        .I4(rd_data[22]),
        .I5(rd_data[38]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc16[7]_i_1 
       (.I0(rd_data[7]),
        .I1(\seq_cnt_reg[23] [3]),
        .I2(rd_data[55]),
        .I3(\seq_cnt_reg[7] [3]),
        .I4(rd_data[23]),
        .I5(rd_data[39]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc16[8]_i_1 
       (.I0(rd_data[8]),
        .I1(\seq_cnt_reg[27] [0]),
        .I2(rd_data[56]),
        .I3(\seq_cnt_reg[11] [0]),
        .I4(rd_data[24]),
        .I5(rd_data[40]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc16[9]_i_1 
       (.I0(rd_data[9]),
        .I1(\seq_cnt_reg[27] [1]),
        .I2(rd_data[57]),
        .I3(\seq_cnt_reg[11] [1]),
        .I4(rd_data[25]),
        .I5(rd_data[41]),
        .O(D[9]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "63" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
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
        .ENBWREN(mem_reg_i_2_n_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rst),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    mem_reg_i_1
       (.I0(rst),
        .I1(\rd_ptr[2]_i_1_n_0 ),
        .O(mem_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    mem_reg_i_2
       (.I0(fifo_wr_en),
        .I1(usedw_reg__0[1]),
        .I2(usedw_reg__0[0]),
        .I3(usedw_reg__0[4]),
        .I4(usedw_reg__0[2]),
        .I5(usedw_reg__0[3]),
        .O(mem_reg_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mem_reg_i_3
       (.I0(rst),
        .O(mem_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr[0]_i_1 
       (.I0(rd_ptr[0]),
        .O(\rd_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr[1]_i_1 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .O(\rd_ptr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \rd_ptr[2]_i_1 
       (.I0(fifo_rd_en),
        .I1(usedw_reg__0[2]),
        .I2(usedw_reg__0[1]),
        .I3(usedw_reg__0[0]),
        .I4(usedw_reg__0[4]),
        .I5(usedw_reg__0[3]),
        .O(\rd_ptr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_ptr[2]_i_2 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .I2(rd_ptr[2]),
        .O(\rd_ptr[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_ptr[3]_i_1 
       (.I0(rd_ptr[1]),
        .I1(rd_ptr[0]),
        .I2(rd_ptr[2]),
        .I3(rd_ptr[3]),
        .O(\rd_ptr[3]_i_1_n_0 ));
  FDRE \rd_ptr_reg[0] 
       (.C(clk),
        .CE(\rd_ptr[2]_i_1_n_0 ),
        .D(\rd_ptr[0]_i_1_n_0 ),
        .Q(rd_ptr[0]),
        .R(rst));
  FDRE \rd_ptr_reg[1] 
       (.C(clk),
        .CE(\rd_ptr[2]_i_1_n_0 ),
        .D(\rd_ptr[1]_i_1_n_0 ),
        .Q(rd_ptr[1]),
        .R(rst));
  FDRE \rd_ptr_reg[2] 
       (.C(clk),
        .CE(\rd_ptr[2]_i_1_n_0 ),
        .D(\rd_ptr[2]_i_2_n_0 ),
        .Q(rd_ptr[2]),
        .R(rst));
  FDRE \rd_ptr_reg[3] 
       (.C(clk),
        .CE(\rd_ptr[2]_i_1_n_0 ),
        .D(\rd_ptr[3]_i_1_n_0 ),
        .Q(rd_ptr[3]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \status_reg[2]_INST_0 
       (.I0(usedw_reg__0[3]),
        .I1(usedw_reg__0[2]),
        .I2(usedw_reg__0[4]),
        .I3(usedw_reg__0[0]),
        .I4(usedw_reg__0[1]),
        .O(status_reg));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \status_reg[3]_INST_0 
       (.I0(usedw_reg__0[3]),
        .I1(usedw_reg__0[4]),
        .I2(usedw_reg__0[0]),
        .I3(usedw_reg__0[1]),
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
        .I1(usedw_reg__0[1]),
        .I2(usedw_reg__0[0]),
        .I3(usedw_reg__0[4]),
        .I4(usedw_reg__0[2]),
        .I5(usedw_reg__0[3]),
        .O(\usedw[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h77778888EEEE1131)) 
    \usedw[2]_i_1 
       (.I0(fifo_wr_en),
        .I1(usedw_reg__0[0]),
        .I2(usedw_reg__0[4]),
        .I3(usedw_reg__0[3]),
        .I4(usedw_reg__0[2]),
        .I5(usedw_reg__0[1]),
        .O(usedw[2]));
  LUT6 #(
    .INIT(64'h3FFFC000FFFC0023)) 
    \usedw[3]_i_1 
       (.I0(usedw_reg__0[4]),
        .I1(usedw_reg__0[0]),
        .I2(fifo_wr_en),
        .I3(usedw_reg__0[1]),
        .I4(usedw_reg__0[3]),
        .I5(usedw_reg__0[2]),
        .O(usedw[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \usedw[4]_i_1 
       (.I0(\rd_ptr[2]_i_1_n_0 ),
        .I1(mem_reg_i_2_n_0),
        .O(\usedw[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFA0001)) 
    \usedw[4]_i_2 
       (.I0(usedw_reg__0[1]),
        .I1(fifo_wr_en),
        .I2(usedw_reg__0[0]),
        .I3(usedw_reg__0[2]),
        .I4(usedw_reg__0[4]),
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
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr[0]_i_1 
       (.I0(wr_ptr_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[1]_i_1 
       (.I0(wr_ptr_reg__0[0]),
        .I1(wr_ptr_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_ptr[2]_i_1 
       (.I0(wr_ptr_reg__0[0]),
        .I1(wr_ptr_reg__0[1]),
        .I2(wr_ptr_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_ptr[3]_i_1 
       (.I0(wr_ptr_reg__0[1]),
        .I1(wr_ptr_reg__0[0]),
        .I2(wr_ptr_reg__0[2]),
        .I3(wr_ptr_reg__0[3]),
        .O(p_0_in[3]));
  FDRE \wr_ptr_reg[0] 
       (.C(clk),
        .CE(mem_reg_i_2_n_0),
        .D(p_0_in[0]),
        .Q(wr_ptr_reg__0[0]),
        .R(rst));
  FDRE \wr_ptr_reg[1] 
       (.C(clk),
        .CE(mem_reg_i_2_n_0),
        .D(p_0_in[1]),
        .Q(wr_ptr_reg__0[1]),
        .R(rst));
  FDRE \wr_ptr_reg[2] 
       (.C(clk),
        .CE(mem_reg_i_2_n_0),
        .D(p_0_in[2]),
        .Q(wr_ptr_reg__0[2]),
        .R(rst));
  FDRE \wr_ptr_reg[3] 
       (.C(clk),
        .CE(mem_reg_i_2_n_0),
        .D(p_0_in[3]),
        .Q(wr_ptr_reg__0[3]),
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
