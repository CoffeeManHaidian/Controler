module pcie_cmd_to_optical_board_top #(
    parameter ENABLE_LOOPBACK_DEBUG = 1'b0
) (
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
    input  wire        pcie_rd_en,
    input  wire [31:0] pcie_rd_addr,
    output wire [31:0] pcie_rd_data,

    output wire [31:0] status_reg,
    output wire [31:0] tx_frame_count,
    output wire [31:0] optical_status,
    output wire [31:0] gtx_tx_word_count,
    output wire [31:0] phy_debug_status,
    output wire [31:0] rx_frame_count,
    output wire [31:0] crc_error_count,
    output wire [31:0] format_error_count,
    output wire [31:0] match_count,
    output wire [31:0] last_rx_seq,
    output wire [31:0] last_rx_addr,
    output wire [31:0] last_rx_data,
    output wire [31:0] board_test_status,
    output wire [31:0] decode_status,
    input  wire [63:0] cmd_bram_rd_data,
    output wire        cmd_bram_rd_en,
    output wire [7:0]  cmd_bram_rd_addr
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
    wire [31:0] phy_rx_data;
    wire        phy_rx_data_valid;
    wire [34:0] tx_fifo_din;
    wire [34:0] tx_fifo_dout;
    wire        tx_fifo_full;
    wire        tx_fifo_empty;
    wire        tx_fifo_rd_en;
    wire [31:0] tx_data_txclk;
    wire        tx_valid_txclk;
    wire        tx_last_txclk;
    wire [1:0]  tx_word_index_txclk;
    wire [31:0] rx_frame_count_dbg;
    wire [31:0] crc_error_count_dbg;
    wire [31:0] format_error_count_dbg;
    wire [31:0] match_count_dbg;
    wire [31:0] last_rx_seq_dbg;
    wire [31:0] last_rx_addr_dbg;
    wire [31:0] last_rx_data_dbg;
    wire [31:0] decode_status_dbg;
    wire        clear_status_pulse_sys;
    reg  [2:0]  clear_status_sync = 3'd0;
    wire        clear_status_pulse_rx;

    pcie_cmd_to_optical_gtx_top u_core (
        .SYSCLK_I            (SYSCLK_I),
        .rst                 (rst),
        .pcie_wr_en          (pcie_wr_en),
        .pcie_wr_addr        (pcie_wr_addr),
        .pcie_wr_data        (pcie_wr_data),
        .pcie_rd_en          (pcie_rd_en),
        .pcie_rd_addr        (pcie_rd_addr),
        .pcie_rd_data        (pcie_rd_data),
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
        .gtx_tx_ready        (~tx_fifo_full),
        .gtx_tx_data         (gtx_tx_data),
        .gtx_tx_valid        (gtx_tx_valid),
        .gtx_tx_last         (gtx_tx_last),
        .gtx_tx_word_index   (gtx_tx_word_index),
        .gtx_tx_word_count   (gtx_tx_word_count),
        .status_reg          (status_reg),
        .tx_frame_count      (tx_frame_count),
        .optical_status      (optical_status),
        .phy_debug_status    (phy_debug_status),
        .rx_frame_count      (rx_frame_count),
        .match_count         (match_count),
        .crc_error_count     (crc_error_count),
        .format_error_count  (format_error_count),
        .last_rx_seq         (last_rx_seq),
        .last_rx_addr        (last_rx_addr),
        .last_rx_data        (last_rx_data),
        .board_test_status   (board_test_status),
        .decode_status       (decode_status),
        .cmd_bram_rd_en      (cmd_bram_rd_en),
        .cmd_bram_rd_addr    (cmd_bram_rd_addr),
        .cmd_bram_rd_data    (cmd_bram_rd_data),
        .clear_status_pulse  (clear_status_pulse_sys)
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
        .phy_debug_status(phy_debug_status),
        .rx_data         (phy_rx_data),
        .rx_data_valid   (phy_rx_data_valid)
    );

    always @(posedge rx_usrclk2_out or posedge rst) begin
        if (rst) begin
            clear_status_sync <= 3'd0;
        end else begin
            clear_status_sync <= {clear_status_sync[1:0], clear_status_pulse_sys};
        end
    end

    assign clear_status_pulse_rx = clear_status_sync[2] ^ clear_status_sync[1];

    generate
        if (ENABLE_LOOPBACK_DEBUG) begin : gen_loopback_debug
            loopback_debug_block u_loopback_debug_block (
                .rx_clk            (rx_usrclk2_out),
                .rst               (rst),
                .clear_counters    (clear_status_pulse_rx),
                .phy_rx_data       (phy_rx_data),
                .phy_rx_data_valid (phy_rx_data_valid),
                .rx_frame_count    (rx_frame_count_dbg),
                .crc_error_count   (crc_error_count_dbg),
                .format_error_count(format_error_count_dbg),
                .match_count       (match_count_dbg),
                .last_rx_seq       (last_rx_seq_dbg),
                .last_rx_addr      (last_rx_addr_dbg),
                .last_rx_data      (last_rx_data_dbg),
                .decode_status     (decode_status_dbg)
            );
        end
    endgenerate

    assign rx_frame_count    = ENABLE_LOOPBACK_DEBUG ? rx_frame_count_dbg    : 32'd0;
    assign crc_error_count   = ENABLE_LOOPBACK_DEBUG ? crc_error_count_dbg   : 32'd0;
    assign format_error_count= ENABLE_LOOPBACK_DEBUG ? format_error_count_dbg: 32'd0;
    assign match_count       = ENABLE_LOOPBACK_DEBUG ? match_count_dbg       : 32'd0;
    assign last_rx_seq       = ENABLE_LOOPBACK_DEBUG ? last_rx_seq_dbg       : 32'd0;
    assign last_rx_addr      = ENABLE_LOOPBACK_DEBUG ? last_rx_addr_dbg      : 32'd0;
    assign last_rx_data      = ENABLE_LOOPBACK_DEBUG ? last_rx_data_dbg      : 32'd0;
    assign decode_status     = ENABLE_LOOPBACK_DEBUG ? decode_status_dbg     : 32'd0;

    assign board_test_status = {
        ENABLE_LOOPBACK_DEBUG,
        tx_fifo_full,
        tx_fifo_empty,
        optical_tx_ready_dbg,
        optical_tx_valid_dbg,
        gtx_tx_valid,
        phy_channel_up,
        phy_tx_resetdone,
        phy_rx_resetdone,
        ~SFP_LOS,
        ~SFP_TXFAULT,
        (ENABLE_LOOPBACK_DEBUG ? (|match_count_dbg)        : 1'b0),
        (ENABLE_LOOPBACK_DEBUG ? (|crc_error_count_dbg)    : 1'b0),
        (ENABLE_LOOPBACK_DEBUG ? (|format_error_count_dbg) : 1'b0),
        2'b00,
        status_reg[15:0]
    };

    // Keep optical transmitter enabled for bring-up.
    assign SFP_TXDISABLE = 1'b0;

endmodule
