module pcie_cmd_to_optical_top (
    input  wire        clk,
    input  wire        rst,

    // PCIe-style host write interface
    input  wire        pcie_wr_en,
    input  wire [31:0] pcie_wr_addr,
    input  wire [31:0] pcie_wr_data,

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

    output wire [31:0] status_reg,
    output wire [31:0] tx_frame_count,
    output wire [31:0] optical_status
);

    wire        fifo_wr_en;
    wire [63:0] fifo_wr_data;
    wire [63:0] fifo_rd_data;
    wire        fifo_rd_en;
    wire        fifo_full;
    wire        fifo_empty;
    wire [4:0]  fifo_usedw;

    pcie_bar_cmd_rx u_pcie_bar_cmd_rx (
        .clk         (clk),
        .rst         (rst),
        .wr_en       (pcie_wr_en),
        .wr_addr     (pcie_wr_addr),
        .wr_data     (pcie_wr_data),
        .fifo_wr_en  (fifo_wr_en),
        .fifo_wr_data(fifo_wr_data),
        .fifo_full   (fifo_full),
        .status_reg  (status_reg),
        .fifo_empty  (fifo_empty)
    );

    simple_sync_fifo #(
        .DATA_WIDTH(64),
        .DEPTH     (16),
        .ADDR_WIDTH(4)
    ) u_simple_sync_fifo (
        .clk    (clk),
        .rst    (rst),
        .wr_en  (fifo_wr_en),
        .wr_data(fifo_wr_data),
        .rd_en  (fifo_rd_en),
        .rd_data(fifo_rd_data),
        .full   (fifo_full),
        .empty  (fifo_empty),
        .usedw  (fifo_usedw)
    );

    custom_optical_tx u_custom_optical_tx (
        .clk           (clk),
        .rst           (rst),
        .fifo_rd_data  (fifo_rd_data),
        .fifo_empty    (fifo_empty),
        .fifo_rd_en    (fifo_rd_en),
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
