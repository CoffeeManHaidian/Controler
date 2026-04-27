`timescale 1ns / 1ps

module sfp_srio_base_top (
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

wire        dbg_gt0_cplllock;
wire        dbg_gt0_cpllfbclklost;
wire        dbg_gt0_txresetdone;
wire        dbg_gt0_txfsmresetdone;
wire        dbg_gt0_tx_system_reset;
wire        dbg_gt0_txuserrdy;
wire        dbg_gt0_gttxreset;
wire        dbg_gt0_txpmareset;
wire        dbg_gt0_txpcsreset;
wire [31:0] dbg_gt0_txdata;
wire [3:0]  dbg_gt0_txcharisk;
wire [8:0]  dbg_gt0_tx_read_counter;
wire        dbg_gt0_txusrclk2;
wire        dbg_gt0_rxresetdone;
wire        dbg_gt0_rxfsmresetdone;
wire        dbg_gt0_rx_system_reset;
wire        dbg_gt0_rxuserrdy;
wire        dbg_gt0_gtrxreset;
wire        dbg_gt0_rxpmareset;
wire        dbg_gt0_rxpcsreset;
wire [31:0] dbg_gt0_rxdata;
wire [3:0]  dbg_gt0_rxcharisk;
wire [7:0]  dbg_gt0_error_count;
wire        dbg_gt0_track_data;
wire [3:0]  dbg_gt0_rxdisperr;
wire [3:0]  dbg_gt0_rxnotintable;
wire        dbg_gt0_rxbyteisaligned;
wire        dbg_gt0_rxbyterealign;
wire        dbg_gt0_rxcommadet;
wire        dbg_gt0_rxmcommaalignen;
wire        dbg_gt0_rxpcommaalignen;
wire [1:0]  dbg_gt0_rxclkcorcnt;
wire        dbg_gt0_rxusrclk2;
wire        dbg_soft_reset;
wire        dbg_drpclk_heartbeat;

assign SFP3_TXDISABLE = 1'b0;

srio_base_shell u_srio_base_shell (
    .Q2_CLK1_GTREFCLK_PAD_N_IN(Q2_CLK1_GTREFCLK_PAD_N_IN),
    .Q2_CLK1_GTREFCLK_PAD_P_IN(Q2_CLK1_GTREFCLK_PAD_P_IN),
    .CLK_IN_50M(CLK_IN_50M),
    .RXN_IN(SFP3_RX_N),
    .RXP_IN(SFP3_RX_P),
    .TXN_OUT(SFP3_TX_N),
    .TXP_OUT(SFP3_TX_P),
    .ad9516_ld_in(AD9516_LD_IN),
    .ad9516_cs_n_out(AD9516_CS_N_OUT),
    .ad9516_sclk_out(AD9516_SCLK_OUT),
    .ad9516_sdata_out(AD9516_SDATA_OUT),
    .ad9516_refsel_out(AD9516_REFSEL_OUT),
    .ad9516_pdwn_out(AD9516_PDWN_OUT),
    .ad9516_rstn_out(AD9516_RSTN_OUT),
    .ad9516_syn_n_out(AD9516_SYN_N_OUT),
    .TRACK_DATA_OUT(TRACK_DATA_OUT),
    .DBG_GT0_CPLLLOCK(dbg_gt0_cplllock),
    .DBG_GT0_CPLLFBCLKLOST(dbg_gt0_cpllfbclklost),
    .DBG_GT0_TXRESETDONE(dbg_gt0_txresetdone),
    .DBG_GT0_TXFSMRESETDONE(dbg_gt0_txfsmresetdone),
    .DBG_GT0_TX_SYSTEM_RESET(dbg_gt0_tx_system_reset),
    .DBG_GT0_TXUSERRDY(dbg_gt0_txuserrdy),
    .DBG_GT0_GTTXRESET(dbg_gt0_gttxreset),
    .DBG_GT0_TXPMARESET(dbg_gt0_txpmareset),
    .DBG_GT0_TXPCSRESET(dbg_gt0_txpcsreset),
    .DBG_GT0_TXDATA(dbg_gt0_txdata),
    .DBG_GT0_TXCHARISK(dbg_gt0_txcharisk),
    .DBG_GT0_TX_READ_COUNTER(dbg_gt0_tx_read_counter),
    .DBG_GT0_TXUSRCLK2(dbg_gt0_txusrclk2),
    .DBG_GT0_RXRESETDONE(dbg_gt0_rxresetdone),
    .DBG_GT0_RXFSMRESETDONE(dbg_gt0_rxfsmresetdone),
    .DBG_GT0_RX_SYSTEM_RESET(dbg_gt0_rx_system_reset),
    .DBG_GT0_RXUSERRDY(dbg_gt0_rxuserrdy),
    .DBG_GT0_GTRXRESET(dbg_gt0_gtrxreset),
    .DBG_GT0_RXPMARESET(dbg_gt0_rxpmareset),
    .DBG_GT0_RXPCSRESET(dbg_gt0_rxpcsreset),
    .DBG_GT0_RXDATA(dbg_gt0_rxdata),
    .DBG_GT0_RXCHARISK(dbg_gt0_rxcharisk),
    .DBG_GT0_ERROR_COUNT(dbg_gt0_error_count),
    .DBG_GT0_TRACK_DATA(dbg_gt0_track_data),
    .DBG_GT0_RXDISPERR(dbg_gt0_rxdisperr),
    .DBG_GT0_RXNOTINTABLE(dbg_gt0_rxnotintable),
    .DBG_GT0_RXBYTEISALIGNED(dbg_gt0_rxbyteisaligned),
    .DBG_GT0_RXBYTEREALIGN(dbg_gt0_rxbyterealign),
    .DBG_GT0_RXCOMMADET(dbg_gt0_rxcommadet),
    .DBG_GT0_RXMCOMMAALIGNEN(dbg_gt0_rxmcommaalignen),
    .DBG_GT0_RXPCOMMAALIGNEN(dbg_gt0_rxpcommaalignen),
    .DBG_GT0_RXCLKCORCNT(dbg_gt0_rxclkcorcnt),
    .DBG_GT0_RXUSRCLK2(dbg_gt0_rxusrclk2),
    .DBG_SOFT_RESET(dbg_soft_reset),
    .DBG_DRPCLK_HEARTBEAT(dbg_drpclk_heartbeat)
);

ila_sfp_tx u_ila_sfp_tx (
    .clk(dbg_gt0_txusrclk2),
    .probe0(dbg_gt0_txdata),
    .probe1(dbg_gt0_txcharisk),
    .probe2(dbg_gt0_txresetdone),
    .probe3(dbg_gt0_txfsmresetdone),
    .probe4(dbg_gt0_tx_system_reset),
    .probe5(dbg_gt0_cplllock),
    .probe6(dbg_gt0_cpllfbclklost),
    .probe7(dbg_gt0_txuserrdy),
    .probe8(dbg_gt0_gttxreset),
    .probe9(dbg_gt0_txpmareset),
    .probe10(dbg_gt0_txpcsreset),
    .probe11(dbg_soft_reset),
    .probe12(dbg_drpclk_heartbeat),
    .probe13(dbg_gt0_tx_read_counter)
);

ila_sfp_rx u_ila_sfp_rx (
    .clk(dbg_gt0_rxusrclk2),
    .probe0(dbg_gt0_rxdata),
    .probe1(dbg_gt0_rxcharisk),
    .probe2(dbg_gt0_error_count),
    .probe3(dbg_gt0_track_data),
    .probe4(dbg_gt0_rxresetdone),
    .probe5(dbg_gt0_rxfsmresetdone),
    .probe6(dbg_gt0_rxdisperr),
    .probe7(dbg_gt0_rxnotintable),
    .probe8(dbg_gt0_rx_system_reset),
    .probe9(dbg_gt0_rxuserrdy),
    .probe10(dbg_gt0_gtrxreset),
    .probe11(dbg_gt0_rxpmareset),
    .probe12(dbg_gt0_rxpcsreset),
    .probe13(dbg_gt0_rxbyteisaligned),
    .probe14(dbg_gt0_rxbyterealign),
    .probe15(dbg_gt0_rxcommadet),
    .probe16(dbg_gt0_rxmcommaalignen),
    .probe17(dbg_gt0_rxpcommaalignen),
    .probe18(dbg_gt0_rxclkcorcnt)
);

endmodule
