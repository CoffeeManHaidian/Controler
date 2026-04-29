`timescale 1ns / 1ps

module hv_mmio_regs_tb;

reg         clk;
reg         rst;
reg         host_wr_en;
reg  [31:0] host_wr_addr;
reg  [31:0] host_wr_data;
reg         host_rd_en;
reg  [31:0] host_rd_addr;
wire [31:0] host_rd_data;
wire        start_loopback;
wire        clear_status;
wire [6:0]  tx_word_count;
wire [15:0] tx_frame_id;
reg         tx_busy;
reg         tx_frame_done;
reg  [6:0]  tx_sent_count;
reg         rx_done;
reg  [15:0] rx_frame_id;
reg  [7:0]  rx_error_count;
reg  [6:0]  rx_capture_count;
wire [6:0]  rx_buf_raddr;
reg  [31:0] rx_buf_rdata;
reg  [6:0]  tx_buf_index;
wire [31:0] tx_buf_rdata;
reg  [31:0] rx_mem [0:99];
integer i;

hv_mmio_regs dut (
    .clk(clk),
    .rst(rst),
    .host_wr_en(host_wr_en),
    .host_wr_addr(host_wr_addr),
    .host_wr_data(host_wr_data),
    .host_rd_en(host_rd_en),
    .host_rd_addr(host_rd_addr),
    .host_rd_data(host_rd_data),
    .start_loopback(start_loopback),
    .clear_status(clear_status),
    .tx_word_count(tx_word_count),
    .tx_frame_id(tx_frame_id),
    .tx_busy(tx_busy),
    .tx_frame_done(tx_frame_done),
    .tx_sent_count(tx_sent_count),
    .rx_done(rx_done),
    .rx_frame_id(rx_frame_id),
    .rx_error_count(rx_error_count),
    .rx_capture_count(rx_capture_count),
    .rx_buf_raddr(rx_buf_raddr),
    .rx_buf_rdata(rx_buf_rdata),
    .tx_buf_index(tx_buf_index),
    .tx_buf_rdata(tx_buf_rdata)
);

always #5 clk = ~clk;

always @(*) begin
    rx_buf_rdata = rx_mem[rx_buf_raddr];
end

initial begin
    clk = 1'b0;
    rst = 1'b1;
    host_wr_en = 1'b0;
    host_wr_addr = 32'd0;
    host_wr_data = 32'd0;
    host_rd_en = 1'b0;
    host_rd_addr = 32'd0;
    tx_busy = 1'b0;
    tx_frame_done = 1'b0;
    tx_sent_count = 7'd0;
    rx_done = 1'b0;
    rx_frame_id = 16'h0000;
    rx_error_count = 8'd0;
    rx_capture_count = 7'd0;
    rx_buf_rdata = 32'd0;
    tx_buf_index = 7'd0;
    for (i = 0; i < 100; i = i + 1) begin
        rx_mem[i] = 32'd0;
    end

    #20;
    rst = 1'b0;

    host_wr_addr = 32'h0000_0000;
    host_wr_data = 32'hA5F0_0001;
    host_wr_en   = 1'b1;
    #10;
    host_wr_en   = 1'b0;

    tx_buf_index = 7'd0;
    #1;
    if (tx_buf_rdata != 32'hA5F0_0001) $fatal(1, "tx_mem[0] mismatch");

    host_wr_addr = 32'h0000_4004;
    host_wr_data = 32'd97;
    host_wr_en   = 1'b1;
    #10;
    host_wr_en   = 1'b0;

    host_rd_addr = 32'h0000_4004;
    host_rd_en   = 1'b1;
    #1;
    if (host_rd_data[6:0] != 7'd97) $fatal(1, "tx_word_count mismatch");
    #9;
    host_rd_en   = 1'b0;

    rx_mem[0] = 32'hA5F0_0001;

    host_rd_addr = 32'h0000_1000;
    host_rd_en   = 1'b1;
    #1;
    if (host_rd_data != 32'hA5F0_0001) $fatal(1, "rx_mem[0] mismatch");
    #9;
    host_rd_en   = 1'b0;

    rx_done          = 1'b1;
    rx_frame_id      = 16'h0001;
    rx_error_count   = 8'd0;
    rx_capture_count = 7'd100;
    tx_busy          = 1'b1;
    tx_frame_done    = 1'b1;
    tx_sent_count    = 7'd100;
    #10;
    tx_frame_done    = 1'b0;

    host_rd_addr = 32'h0000_400C;
    host_rd_en   = 1'b1;
    #1;
    if (host_rd_data[0] != 1'b1) $fatal(1, "rx_done mismatch");
    #9;
    host_rd_en   = 1'b0;

    host_rd_addr = 32'h0000_4024;
    host_rd_en   = 1'b1;
    #1;
    if (host_rd_data[6:0] != 7'd100) $fatal(1, "tx_sent_count mismatch");
    #9;
    host_rd_en   = 1'b0;

    $display("hv_mmio_regs_tb PASS");
    $finish;
end

endmodule
