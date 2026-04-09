`timescale 1ns/1ps

module tb_optical_cmd_loopback;

    reg         clk;
    reg         rst;
    reg  [63:0] fifo_rd_data;
    reg         fifo_empty;
    wire        fifo_rd_en;

    wire [63:0] tx_data;
    wire [7:0]  tx_keep;
    wire        tx_valid;
    wire        tx_last;
    wire [31:0] tx_frame_count;

    wire        cmd_valid;
    wire        crc_ok;
    wire        format_ok;
    wire [31:0] rx_seq;
    wire [31:0] rx_addr;
    wire [31:0] rx_cmd_data;
    wire [31:0] rx_frame_count;
    wire [31:0] crc_error_count;
    wire [31:0] format_error_count;

    custom_optical_tx u_custom_optical_tx (
        .clk           (clk),
        .rst           (rst),
        .clear_counters(1'b0),
        .fifo_rd_data  (fifo_rd_data),
        .fifo_empty    (fifo_empty),
        .fifo_rd_en    (fifo_rd_en),
        .tx_data       (tx_data),
        .tx_keep       (tx_keep),
        .tx_valid      (tx_valid),
        .tx_last       (tx_last),
        .tx_ready      (1'b1),
        .tx_frame_count(tx_frame_count)
    );

    optical_cmd_rx u_optical_cmd_rx (
        .clk               (clk),
        .rst               (rst),
        .clear_counters    (1'b0),
        .rx_data           (tx_data),
        .rx_keep           (tx_keep),
        .rx_valid          (tx_valid),
        .rx_last           (tx_last),
        .rx_ready          (),
        .cmd_valid         (cmd_valid),
        .crc_ok            (crc_ok),
        .format_ok         (format_ok),
        .rx_seq            (rx_seq),
        .rx_addr           (rx_addr),
        .rx_cmd_data       (rx_cmd_data),
        .rx_frame_count    (rx_frame_count),
        .crc_error_count   (crc_error_count),
        .format_error_count(format_error_count)
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

        wait (cmd_valid == 1'b1);
        @(posedge clk);

        if (!format_ok) begin
            $display("ERROR: expected format_ok=1");
            $stop;
        end

        if (!crc_ok) begin
            $display("ERROR: expected crc_ok=1");
            $stop;
        end

        if (rx_seq !== 32'h0000_0000) begin
            $display("ERROR: expected rx_seq=0, got %h", rx_seq);
            $stop;
        end

        if (rx_addr !== 32'h1234_5678) begin
            $display("ERROR: expected rx_addr=0x12345678, got %h", rx_addr);
            $stop;
        end

        if (rx_cmd_data !== 32'hA5A5_0055) begin
            $display("ERROR: expected rx_cmd_data=0xA5A50055, got %h", rx_cmd_data);
            $stop;
        end

        if (tx_frame_count !== 32'd1 || rx_frame_count !== 32'd1) begin
            $display("ERROR: expected tx/rx frame count = 1, got tx=%0d rx=%0d",
                     tx_frame_count, rx_frame_count);
            $stop;
        end

        if (crc_error_count !== 32'd0 || format_error_count !== 32'd0) begin
            $display("ERROR: expected zero error counters, got crc=%0d format=%0d",
                     crc_error_count, format_error_count);
            $stop;
        end

        $display("PASS: optical TX/RX loopback decoded seq=%0d addr=%h data=%h",
                 rx_seq, rx_addr, rx_cmd_data);
        $finish;
    end

endmodule
