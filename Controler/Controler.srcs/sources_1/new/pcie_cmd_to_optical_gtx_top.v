module pcie_cmd_to_optical_gtx_top (
    input  wire        SYSCLK_I,
    input  wire        rst,

    input  wire        pcie_wr_en,
    input  wire [31:0] pcie_wr_addr,
    input  wire [31:0] pcie_wr_data,
    input  wire        pcie_rd_en,
    input  wire [31:0] pcie_rd_addr,
    output wire [31:0] pcie_rd_data,

    input  wire        sfp_signal_detect,
    input  wire        sfp_tx_fault,
    input  wire        phy_tx_resetdone,
    input  wire        phy_rx_resetdone,
    input  wire        phy_channel_up,

    output wire [63:0] optical_tx_data_dbg,
    output wire [7:0]  optical_tx_keep_dbg,
    output wire        optical_tx_valid_dbg,
    output wire        optical_tx_last_dbg,
    output wire        optical_tx_ready_dbg,

    output wire [31:0] gtx_tx_data,
    output wire        gtx_tx_valid,
    output wire        gtx_tx_last,
    output wire [1:0]  gtx_tx_word_index,
    output wire [31:0] gtx_tx_word_count,

    output wire [31:0] status_reg,
    output wire [31:0] tx_frame_count,
    output wire [31:0] optical_status,
    input  wire [31:0] phy_debug_status,
    input  wire [31:0] rx_frame_count,
    input  wire [31:0] match_count,
    input  wire [31:0] crc_error_count,
    input  wire [31:0] format_error_count,
    input  wire [31:0] last_rx_seq,
    input  wire [31:0] last_rx_addr,
    input  wire [31:0] last_rx_data,
    input  wire [31:0] board_test_status,
    output wire        clear_status_pulse
);

    wire [63:0] optical_tx_data;
    wire [7:0]  optical_tx_keep;
    wire        optical_tx_valid;
    wire        optical_tx_last;
    wire        optical_tx_ready;

    pcie_cmd_to_optical_top u_pcie_cmd_to_optical_top (
        .clk              (SYSCLK_I),
        .rst              (rst),
        .pcie_wr_en       (pcie_wr_en),
        .pcie_wr_addr     (pcie_wr_addr),
        .pcie_wr_data     (pcie_wr_data),
        .pcie_rd_en       (pcie_rd_en),
        .pcie_rd_addr     (pcie_rd_addr),
        .pcie_rd_data     (pcie_rd_data),
        .optical_tx_data  (optical_tx_data),
        .optical_tx_keep  (optical_tx_keep),
        .optical_tx_valid (optical_tx_valid),
        .optical_tx_last  (optical_tx_last),
        .optical_tx_ready (optical_tx_ready),
        .sfp_signal_detect(sfp_signal_detect),
        .sfp_tx_fault     (sfp_tx_fault),
        .phy_tx_resetdone (phy_tx_resetdone),
        .phy_rx_resetdone (phy_rx_resetdone),
        .phy_channel_up   (phy_channel_up),
        .phy_debug_status (phy_debug_status),
        .rx_frame_count   (rx_frame_count),
        .match_count      (match_count),
        .crc_error_count  (crc_error_count),
        .format_error_count(format_error_count),
        .last_rx_seq      (last_rx_seq),
        .last_rx_addr     (last_rx_addr),
        .last_rx_data     (last_rx_data),
        .board_test_status(board_test_status),
        .status_reg       (status_reg),
        .tx_frame_count   (tx_frame_count),
        .optical_status   (optical_status),
        .clear_status_pulse(clear_status_pulse)
    );

    optical_stream_to_gtx32 u_optical_stream_to_gtx32 (
        .clk              (SYSCLK_I),
        .rst              (rst),
        .s_axis_tdata     (optical_tx_data),
        .s_axis_tkeep     (optical_tx_keep),
        .s_axis_tvalid    (optical_tx_valid),
        .s_axis_tlast     (optical_tx_last),
        .s_axis_tready    (optical_tx_ready),
        .gtx_tx_data      (gtx_tx_data),
        .gtx_tx_valid     (gtx_tx_valid),
        .gtx_tx_last      (gtx_tx_last),
        .gtx_tx_word_index(gtx_tx_word_index),
        .gtx_tx_word_count(gtx_tx_word_count)
    );

    assign optical_tx_data_dbg  = optical_tx_data;
    assign optical_tx_keep_dbg  = optical_tx_keep;
    assign optical_tx_valid_dbg = optical_tx_valid;
    assign optical_tx_last_dbg  = optical_tx_last;
    assign optical_tx_ready_dbg = optical_tx_ready;

endmodule
