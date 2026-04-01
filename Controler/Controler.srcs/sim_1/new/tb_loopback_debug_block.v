`timescale 1ns/1ps

module tb_loopback_debug_block;

    reg         clk;
    reg         rst;
    reg  [63:0] fifo_rd_data;
    reg         fifo_empty;
    wire        fifo_rd_en;

    wire [63:0] tx_data;
    wire [7:0]  tx_keep;
    wire        tx_valid;
    wire        tx_last;

    wire [31:0] gtx_tx_data;
    wire        gtx_tx_valid;
    wire        gtx_tx_last;
    wire [1:0]  gtx_tx_word_index;
    wire [31:0] gtx_tx_word_count;

    wire [31:0] rx_frame_count;
    wire [31:0] crc_error_count;
    wire [31:0] format_error_count;
    wire [31:0] match_count;
    wire [31:0] last_rx_seq;
    wire [31:0] last_rx_addr;
    wire [31:0] last_rx_data;

    custom_optical_tx u_custom_optical_tx (
        .clk           (clk),
        .rst           (rst),
        .fifo_rd_data  (fifo_rd_data),
        .fifo_empty    (fifo_empty),
        .fifo_rd_en    (fifo_rd_en),
        .tx_data       (tx_data),
        .tx_keep       (tx_keep),
        .tx_valid      (tx_valid),
        .tx_last       (tx_last),
        .tx_ready      (1'b1),
        .tx_frame_count()
    );

    optical_stream_to_gtx32 u_optical_stream_to_gtx32 (
        .clk              (clk),
        .rst              (rst),
        .s_axis_tdata     (tx_data),
        .s_axis_tkeep     (tx_keep),
        .s_axis_tvalid    (tx_valid),
        .s_axis_tlast     (tx_last),
        .s_axis_tready    (),
        .gtx_tx_data      (gtx_tx_data),
        .gtx_tx_valid     (gtx_tx_valid),
        .gtx_tx_last      (gtx_tx_last),
        .gtx_tx_word_index(gtx_tx_word_index),
        .gtx_tx_word_count(gtx_tx_word_count)
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

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst          = 1'b1;
        fifo_empty   = 1'b1;
        fifo_rd_data = 64'd0;

        repeat (5) @(posedge clk);
        rst = 1'b0;

        fifo_rd_data = {32'h1234_5678, 32'hA5A5_0055};
        fifo_empty   = 1'b0;

        wait (fifo_rd_en == 1'b1);
        @(posedge clk);
        fifo_empty = 1'b1;

        repeat (40) @(posedge clk);

        if (rx_frame_count !== 32'd1) begin
            $display("ERROR: expected rx_frame_count=1, got %0d", rx_frame_count);
            $stop;
        end

        if (match_count !== 32'd1) begin
            $display("ERROR: expected match_count=1, got %0d", match_count);
            $stop;
        end

        if (crc_error_count !== 32'd0) begin
            $display("ERROR: expected crc_error_count=0, got %0d", crc_error_count);
            $stop;
        end

        if (format_error_count !== 32'd0) begin
            $display("ERROR: expected format_error_count=0, got %0d", format_error_count);
            $stop;
        end

        if (last_rx_seq !== 32'd0) begin
            $display("ERROR: expected last_rx_seq=0, got %h", last_rx_seq);
            $stop;
        end

        if (last_rx_addr !== 32'h1234_5678) begin
            $display("ERROR: expected last_rx_addr=0x12345678, got %h", last_rx_addr);
            $stop;
        end

        if (last_rx_data !== 32'hA5A5_0055) begin
            $display("ERROR: expected last_rx_data=0xA5A50055, got %h", last_rx_data);
            $stop;
        end

        $display("PASS: loopback_debug_block decoded one frame correctly");
        $finish;
    end

endmodule
