module min_optical_loopback_debug_top (
    input  wire        clk,
    input  wire        rst,
    input  wire        pcie_wr_en,
    input  wire [31:0] pcie_wr_addr,
    input  wire [31:0] pcie_wr_data,

    output wire [31:0] status_reg,
    output wire [31:0] tx_frame_count,
    output wire [31:0] gtx_tx_word_count,
    output wire [31:0] rx_frame_count,
    output wire [31:0] crc_error_count,
    output wire [31:0] format_error_count,
    output wire [31:0] match_count,
    output wire [31:0] last_rx_seq,
    output wire [31:0] last_rx_addr,
    output wire [31:0] last_rx_data,
    output wire [31:0] optical_status,
    output wire [63:0] optical_tx_data,
    output wire [7:0]  optical_tx_keep,
    output wire        optical_tx_valid,
    output wire        optical_tx_last,
    output wire [31:0] gtx_tx_data,
    output wire        gtx_tx_valid,
    output wire        gtx_tx_last,
    output wire [1:0]  gtx_tx_word_index
);

    pcie_cmd_to_optical_gtx_top u_pcie_cmd_to_optical_gtx_top (
        .SYSCLK_I            (clk),
        .rst                 (rst),
        .pcie_wr_en          (pcie_wr_en),
        .pcie_wr_addr        (pcie_wr_addr),
        .pcie_wr_data        (pcie_wr_data),
        .sfp_signal_detect   (1'b1),
        .sfp_tx_fault        (1'b0),
        .phy_tx_resetdone    (1'b1),
        .phy_rx_resetdone    (1'b1),
        .phy_channel_up      (1'b1),
        .optical_tx_data_dbg (optical_tx_data),
        .optical_tx_keep_dbg (optical_tx_keep),
        .optical_tx_valid_dbg(optical_tx_valid),
        .optical_tx_last_dbg (optical_tx_last),
        .optical_tx_ready_dbg(),
        .gtx_tx_ready        (1'b1),
        .gtx_tx_data         (gtx_tx_data),
        .gtx_tx_valid        (gtx_tx_valid),
        .gtx_tx_last         (gtx_tx_last),
        .gtx_tx_word_index   (gtx_tx_word_index),
        .gtx_tx_word_count   (gtx_tx_word_count),
        .status_reg          (status_reg),
        .tx_frame_count      (tx_frame_count),
        .optical_status      (optical_status)
    );

    loopback_debug_block u_loopback_debug_block (
        .rx_clk            (clk),
        .rst               (rst),
        .phy_rx_data       (gtx_tx_data),
        .phy_rx_data_valid (gtx_tx_valid),
        .rx_frame_count    (rx_frame_count),
        .crc_error_count   (crc_error_count),
        .format_error_count(format_error_count),
        .match_count       (match_count),
        .last_rx_seq       (last_rx_seq),
        .last_rx_addr      (last_rx_addr),
        .last_rx_data      (last_rx_data)
    );

endmodule
