module pcie_cmd_to_optical_board_top (
    input  wire        SYSCLK_I,
    input  wire        GTREFCLK1_P,
    input  wire        GTREFCLK1_N,
    input  wire        SFP_RX_P,
    input  wire        SFP_RX_N,
    output wire        SFP_TX_P,
    output wire        SFP_TX_N,
    input  wire        SFP_TXFAULT,
    input  wire        SFP_LOS,
    output wire        SFP_TXDISABLE,

    input  wire        rst,
    input  wire        pcie_wr_en,
    input  wire [31:0] pcie_wr_addr,
    input  wire [31:0] pcie_wr_data,

    output wire [31:0] status_reg,
    output wire [31:0] tx_frame_count,
    output wire [31:0] optical_status,
    output wire [31:0] gtx_tx_word_count,
    output wire [31:0] phy_debug_status
);

    wire [63:0] optical_tx_data_dbg;
    wire [7:0]  optical_tx_keep_dbg;
    wire        optical_tx_valid_dbg;
    wire        optical_tx_last_dbg;
    wire        optical_tx_ready_dbg;

    wire [31:0] gtx_tx_data;
    wire        gtx_tx_valid;
    wire        gtx_tx_last;
    wire [1:0]  gtx_tx_word_index;
    wire        tx_usrclk_out;
    wire        tx_usrclk2_out;
    wire        rx_usrclk_out;
    wire        rx_usrclk2_out;
    wire        phy_tx_resetdone;
    wire        phy_rx_resetdone;
    wire        phy_channel_up;
    wire [34:0] tx_fifo_din;
    wire [34:0] tx_fifo_dout;
    wire        tx_fifo_full;
    wire        tx_fifo_empty;
    wire        tx_fifo_rd_en;
    wire [31:0] tx_data_txclk;
    wire        tx_valid_txclk;
    wire        tx_last_txclk;
    wire [1:0]  tx_word_index_txclk;

    pcie_cmd_to_optical_gtx_top u_core (
        .SYSCLK_I            (SYSCLK_I),
        .rst                 (rst),
        .pcie_wr_en          (pcie_wr_en),
        .pcie_wr_addr        (pcie_wr_addr),
        .pcie_wr_data        (pcie_wr_data),
        .sfp_signal_detect   (~SFP_LOS),
        .sfp_tx_fault        (SFP_TXFAULT),
        .phy_tx_resetdone    (phy_tx_resetdone),
        .phy_rx_resetdone    (phy_rx_resetdone),
        .phy_channel_up      (phy_channel_up),
        .optical_tx_data_dbg (optical_tx_data_dbg),
        .optical_tx_keep_dbg (optical_tx_keep_dbg),
        .optical_tx_valid_dbg(optical_tx_valid_dbg),
        .optical_tx_last_dbg (optical_tx_last_dbg),
        .optical_tx_ready_dbg(optical_tx_ready_dbg),
        .gtx_tx_data         (gtx_tx_data),
        .gtx_tx_valid        (gtx_tx_valid),
        .gtx_tx_last         (gtx_tx_last),
        .gtx_tx_word_index   (gtx_tx_word_index),
        .gtx_tx_word_count   (gtx_tx_word_count),
        .status_reg          (status_reg),
        .tx_frame_count      (tx_frame_count),
        .optical_status      (optical_status)
    );

    assign tx_fifo_din = {gtx_tx_word_index, gtx_tx_last, gtx_tx_data};

    async_gtx_word_fifo u_async_gtx_word_fifo (
        .rst    (rst),
        .wr_clk (SYSCLK_I),
        .wr_en  (gtx_tx_valid),
        .din    (tx_fifo_din),
        .full   (tx_fifo_full),
        .rd_clk (tx_usrclk2_out),
        .rd_en  (tx_fifo_rd_en),
        .dout   (tx_fifo_dout),
        .empty  (tx_fifo_empty)
    );

    assign tx_fifo_rd_en      = ~tx_fifo_empty;
    assign tx_data_txclk      = tx_fifo_empty ? 32'd0 : tx_fifo_dout[31:0];
    assign tx_last_txclk      = tx_fifo_empty ? 1'b0  : tx_fifo_dout[32];
    assign tx_word_index_txclk= tx_fifo_empty ? 2'd0  : tx_fifo_dout[34:33];
    assign tx_valid_txclk     = ~tx_fifo_empty;

    custom_gtx_phy_gtwizard0 u_phy (
        .sys_clk         (SYSCLK_I),
        .rst             (rst),
        .tx_usrclk_out   (tx_usrclk_out),
        .tx_usrclk2_out  (tx_usrclk2_out),
        .rx_usrclk_out   (rx_usrclk_out),
        .rx_usrclk2_out  (rx_usrclk2_out),
        .tx_data         (tx_data_txclk),
        .tx_valid        (tx_valid_txclk),
        .tx_last         (tx_last_txclk),
        .tx_word_index   (tx_word_index_txclk),
        .gt_refclk_p     (GTREFCLK1_P),
        .gt_refclk_n     (GTREFCLK1_N),
        .sfp_rx_p        (SFP_RX_P),
        .sfp_rx_n        (SFP_RX_N),
        .sfp_tx_p        (SFP_TX_P),
        .sfp_tx_n        (SFP_TX_N),
        .phy_tx_resetdone(phy_tx_resetdone),
        .phy_rx_resetdone(phy_rx_resetdone),
        .phy_channel_up  (phy_channel_up),
        .phy_debug_status(phy_debug_status)
    );

    // Keep optical transmitter enabled for bring-up.
    assign SFP_TXDISABLE = 1'b0;

endmodule
