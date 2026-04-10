module pcie_cmd_to_optical_top (
    input  wire        clk,
    input  wire        rst,

    // PCIe-style host write interface
    input  wire        pcie_wr_en,
    input  wire [31:0] pcie_wr_addr,
    input  wire [31:0] pcie_wr_data,
    input  wire        pcie_rd_en,
    input  wire [31:0] pcie_rd_addr,
    output wire [31:0] pcie_rd_data,

    // Custom optical TX user interface toward GTX/GTH or Aurora wrapper
    output wire [63:0] optical_tx_data,
    output wire [7:0]  optical_tx_keep,
    output wire        optical_tx_valid,
    output wire        optical_tx_last,
    input  wire        optical_tx_ready,

    // Link / board status for monitoring
    input  wire        sfp_signal_detect,
    input  wire        sfp_tx_fault,
    input  wire        phy_tx_resetdone,
    input  wire        phy_rx_resetdone,
    input  wire        phy_channel_up,
    input  wire [31:0] phy_debug_status,
    input  wire [31:0] rx_frame_count,
    input  wire [31:0] match_count,
    input  wire [31:0] crc_error_count,
    input  wire [31:0] format_error_count,
    input  wire [31:0] last_rx_seq,
    input  wire [31:0] last_rx_addr,
    input  wire [31:0] last_rx_data,
    input  wire [31:0] board_test_status,
    input  wire [31:0] decode_status,
    output wire        cmd_bram_rd_en,
    output wire [7:0]  cmd_bram_rd_addr,
    input  wire [63:0] cmd_bram_rd_data,

    output wire [31:0] status_reg,
    output wire [31:0] tx_frame_count,
    output wire [31:0] optical_status,
    output wire        clear_status_pulse
);

    wire        fifo_wr_en_unused;
    wire [63:0] fifo_wr_data_unused;
    wire        fifo_full_unused;
    wire        tx_enable;
    wire        tx_start_pulse;
    wire [15:0] cmd_bram_count;

    assign fifo_full_unused = 1'b0;

    pcie_bar_cmd_rx u_pcie_bar_cmd_rx (
        .clk         (clk),
        .rst         (rst),
        .wr_en       (pcie_wr_en),
        .wr_addr     (pcie_wr_addr),
        .wr_data     (pcie_wr_data),
        .rd_en       (pcie_rd_en),
        .rd_addr     (pcie_rd_addr),
        .rd_data     (pcie_rd_data),
        .fifo_wr_en  (fifo_wr_en_unused),
        .fifo_wr_data(fifo_wr_data_unused),
        .fifo_full   (fifo_full_unused),
        .tx_enable   (tx_enable),
        .test_mode   (),
        .clear_status_pulse(clear_status_pulse),
        .tx_start_pulse(tx_start_pulse),
        .cmd_bram_count(cmd_bram_count),
        .status_reg  (status_reg),
        .fifo_empty  (cmd_bram_count == 0),
        .tx_frame_count   (tx_frame_count),
        .rx_frame_count   (rx_frame_count),
        .match_count      (match_count),
        .crc_error_count  (crc_error_count),
        .format_error_count(format_error_count),
        .last_rx_seq      (last_rx_seq),
        .last_rx_addr     (last_rx_addr),
        .last_rx_data     (last_rx_data),
        .optical_status   (optical_status),
        .phy_debug_status (phy_debug_status),
        .board_test_status(board_test_status),
        .decode_status    (decode_status)
    );

    custom_optical_tx_bram #(
        .ADDR_WIDTH(8)
    ) u_custom_optical_tx_bram (
        .clk           (clk),
        .rst           (rst),
        .clear_counters(clear_status_pulse),
        .tx_enable     (tx_enable),
        .tx_start_pulse(tx_start_pulse),
        .cmd_count     (cmd_bram_count),
        .bram_rd_en    (cmd_bram_rd_en),
        .bram_rd_addr  (cmd_bram_rd_addr),
        .bram_rd_data  (cmd_bram_rd_data),
        .tx_data       (optical_tx_data),
        .tx_keep       (optical_tx_keep),
        .tx_valid      (optical_tx_valid),
        .tx_last       (optical_tx_last),
        .tx_ready      (optical_tx_ready),
        .tx_frame_count(tx_frame_count)
    );

    assign optical_status = {
        27'd0,
        phy_channel_up,
        phy_rx_resetdone,
        phy_tx_resetdone,
        sfp_tx_fault,
        sfp_signal_detect
    };

endmodule
