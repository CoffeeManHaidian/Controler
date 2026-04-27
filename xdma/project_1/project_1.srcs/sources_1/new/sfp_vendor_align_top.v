`timescale 1ns / 1ps

module sfp_vendor_align_top (
    input  wire Q2_CLK1_GTREFCLK_PAD_N_IN,
    input  wire Q2_CLK1_GTREFCLK_PAD_P_IN,

    input  wire CLK_IN_50M,

    input  wire SFP3_RX_N,
    input  wire SFP3_RX_P,
    output wire SFP3_TX_N,
    output wire SFP3_TX_P,

    input  wire SFP3_TXFAULT,
    input  wire SFP3_LOS,
    output wire SFP3_TXDISABLE,

    input  wire AD9516_LD_IN,
    output wire AD9516_CS_N_OUT,
    output wire AD9516_SCLK_OUT,
    output wire AD9516_SDATA_OUT,
    output wire AD9516_REFSEL_OUT,
    output wire AD9516_PDWN_OUT,
    output wire AD9516_RSTN_OUT,
    output wire AD9516_SYN_N_OUT,

    output wire TRACK_DATA_OUT
);

wire [3:0] rxn_i;
wire [3:0] rxp_i;
wire [3:0] txn_i;
wire [3:0] txp_i;
wire       dbg_gt0_qplllock;
wire       dbg_gt0_qpllrefclklost;
wire       dbg_gt3_txresetdone;
wire       dbg_gt3_txfsmresetdone;
wire       dbg_gt3_rxresetdone;
wire       dbg_gt3_rxfsmresetdone;
wire       dbg_gt3_tx_system_reset;
wire       dbg_user_tx_reset;
wire       dbg_drpclk_heartbeat;
wire [31:0] dbg_gt3_txdata;
wire [1:0] dbg_gt3_txheader;
wire [6:0] dbg_gt3_txsequence;
wire [31:0] dbg_gt3_rxdata;
wire [3:0]  dbg_gt3_rxctrl;
wire [7:0]  dbg_gt3_error_count;
wire        dbg_gt3_track_data;
wire        dbg_gt3_block_lock;
wire        dbg_gt3_rxgearboxslip;
wire        dbg_gt3_txusrclk2;
wire        dbg_gt3_rxusrclk2;

assign rxn_i = {SFP3_RX_N, 3'b000};
assign rxp_i = {SFP3_RX_P, 3'b000};

assign SFP3_TX_N      = txn_i[3];
assign SFP3_TX_P      = txp_i[3];
assign SFP3_TXDISABLE = 1'b0;

ip_gtwizard_v2_4_1x_4ch_exdes #(
    .EXAMPLE_USE_CHIPSCOPE(0),
    .EXAMPLE_SIMULATION(0)
) u_exdes (
    .Q2_CLK1_GTREFCLK_PAD_N_IN(Q2_CLK1_GTREFCLK_PAD_N_IN),
    .Q2_CLK1_GTREFCLK_PAD_P_IN(Q2_CLK1_GTREFCLK_PAD_P_IN),
    .TRACK_DATA_OUT(TRACK_DATA_OUT),
    .RXN_IN(rxn_i),
    .RXP_IN(rxp_i),
    .TXN_OUT(txn_i),
    .TXP_OUT(txp_i),
    .clk_in(CLK_IN_50M),
    .ad9516_ld_in(AD9516_LD_IN),
    .ad9516_cs_n_out(AD9516_CS_N_OUT),
    .ad9516_sclk_out(AD9516_SCLK_OUT),
    .ad9516_sdata_out(AD9516_SDATA_OUT),
    .ad9516_refsel_out(AD9516_REFSEL_OUT),
    .ad9516_pdwn_out(AD9516_PDWN_OUT),
    .ad9516_rstn_out(AD9516_RSTN_OUT),
    .ad9516_syn_n_out(AD9516_SYN_N_OUT),
    .DBG_GT0_QPLLLOCK(dbg_gt0_qplllock),
    .DBG_GT0_QPLLREFCLKLOST(dbg_gt0_qpllrefclklost),
    .DBG_GT3_TXRESETDONE(dbg_gt3_txresetdone),
    .DBG_GT3_TXFSMRESETDONE(dbg_gt3_txfsmresetdone),
    .DBG_GT3_TX_SYSTEM_RESET(dbg_gt3_tx_system_reset),
    .DBG_USER_TX_RESET(dbg_user_tx_reset),
    .DBG_DRPCLK_HEARTBEAT(dbg_drpclk_heartbeat),
    .DBG_GT3_TXDATA(dbg_gt3_txdata),
    .DBG_GT3_TXHEADER(dbg_gt3_txheader),
    .DBG_DRPCLK_OUT(),
    .DBG_GT3_TXSEQUENCE(dbg_gt3_txsequence),
    .DBG_GT3_RXDATA(dbg_gt3_rxdata),
    .DBG_GT3_RXCTRL(dbg_gt3_rxctrl),
    .DBG_GT3_ERROR_COUNT(dbg_gt3_error_count),
    .DBG_GT3_TRACK_DATA(dbg_gt3_track_data),
    .DBG_GT3_BLOCK_LOCK(dbg_gt3_block_lock),
    .DBG_GT3_RXRESETDONE(dbg_gt3_rxresetdone),
    .DBG_GT3_RXFSMRESETDONE(dbg_gt3_rxfsmresetdone),
    .DBG_GT3_RXGEARBOXSLIP(dbg_gt3_rxgearboxslip),
    .DBG_GT3_TXUSRCLK2(dbg_gt3_txusrclk2),
    .DBG_GT3_RXUSRCLK2(dbg_gt3_rxusrclk2)
);

ila_sfp_tx u_ila_sfp_tx (
    .clk(dbg_gt3_txusrclk2),
    .probe0(dbg_gt3_txdata),
    .probe1({2'b00, dbg_gt3_txheader}),
    .probe2(dbg_gt0_qplllock),
    .probe3(dbg_gt3_txresetdone),
    .probe4(dbg_gt3_txfsmresetdone)
);

ila_sfp_rx u_ila_sfp_rx (
    .clk(dbg_gt3_rxusrclk2),
    .probe0(dbg_gt3_rxdata),
    .probe1(dbg_gt3_rxctrl),
    .probe2(dbg_gt3_error_count),
    .probe3(dbg_gt3_track_data),
    .probe4(dbg_gt3_block_lock),
    .probe5(dbg_gt3_rxresetdone),
    .probe6({3'b000, dbg_gt3_rxfsmresetdone}),
    .probe7({3'b000, dbg_gt3_rxgearboxslip}),
    .probe8(dbg_gt0_qpllrefclklost)
);

endmodule
