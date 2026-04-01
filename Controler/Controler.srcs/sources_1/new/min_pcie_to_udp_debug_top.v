module min_pcie_to_udp_debug_top (
    input  wire        clk,
    input  wire        rst,
    input  wire        pcie_wr_en,
    input  wire [31:0] pcie_wr_addr,
    input  wire [31:0] pcie_wr_data,
    output wire [31:0] status_reg,
    output wire [63:0] tx_axis_tdata,
    output wire [7:0]  tx_axis_tkeep,
    output wire        tx_axis_tvalid,
    output wire        tx_axis_tlast,
    output wire [31:0] tx_frame_count
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

    udp_frame_tx_min u_udp_frame_tx_min (
        .clk           (clk),
        .rst           (rst),
        .fifo_rd_data  (fifo_rd_data),
        .fifo_empty    (fifo_empty),
        .fifo_rd_en    (fifo_rd_en),
        .tx_axis_tdata (tx_axis_tdata),
        .tx_axis_tkeep (tx_axis_tkeep),
        .tx_axis_tvalid(tx_axis_tvalid),
        .tx_axis_tlast (tx_axis_tlast),
        .tx_axis_tready(1'b1),
        .tx_frame_count(tx_frame_count)
    );

endmodule
