`timescale 1ns/1ps

module tb_host_register_loopback;

    reg         clk;
    reg         rst;
    reg         wr_en;
    reg  [31:0] wr_addr;
    reg  [31:0] wr_data;
    reg         rd_en;
    reg  [31:0] rd_addr;
    wire [31:0] rd_data;

    wire [31:0] status_reg;
    wire [31:0] tx_frame_count;
    wire [31:0] optical_status;
    wire [31:0] clear_status_pulse;

    reg  [31:0] rx_frame_count;
    reg  [31:0] match_count;
    reg  [31:0] crc_error_count;
    reg  [31:0] format_error_count;
    reg  [31:0] last_rx_seq;
    reg  [31:0] last_rx_addr;
    reg  [31:0] last_rx_data;
    reg  [31:0] phy_debug_status;
    reg  [31:0] board_test_status;

    localparam ADDR_CMD_ADDR   = 32'h0000_0000;
    localparam ADDR_CMD_DATA   = 32'h0000_0004;
    localparam ADDR_CMD_CTRL   = 32'h0000_0008;
    localparam ADDR_CMD_CFG    = 32'h0000_000C;
    localparam ADDR_TX_COUNT   = 32'h0000_0014;
    localparam ADDR_RX_COUNT   = 32'h0000_0018;
    localparam ADDR_MATCH_CNT  = 32'h0000_001C;
    localparam ADDR_CRC_ERR    = 32'h0000_0020;
    localparam ADDR_FMT_ERR    = 32'h0000_0024;
    localparam ADDR_LAST_ADDR  = 32'h0000_002C;
    localparam ADDR_LAST_DATA  = 32'h0000_0030;

    pcie_cmd_to_optical_top u_dut (
        .clk               (clk),
        .rst               (rst),
        .pcie_wr_en        (wr_en),
        .pcie_wr_addr      (wr_addr),
        .pcie_wr_data      (wr_data),
        .pcie_rd_en        (rd_en),
        .pcie_rd_addr      (rd_addr),
        .pcie_rd_data      (rd_data),
        .optical_tx_data   (),
        .optical_tx_keep   (),
        .optical_tx_valid  (),
        .optical_tx_last   (),
        .optical_tx_ready  (1'b1),
        .sfp_signal_detect (1'b1),
        .sfp_tx_fault      (1'b0),
        .phy_tx_resetdone  (1'b1),
        .phy_rx_resetdone  (1'b1),
        .phy_channel_up    (1'b1),
        .phy_debug_status  (phy_debug_status),
        .rx_frame_count    (rx_frame_count),
        .match_count       (match_count),
        .crc_error_count   (crc_error_count),
        .format_error_count(format_error_count),
        .last_rx_seq       (last_rx_seq),
        .last_rx_addr      (last_rx_addr),
        .last_rx_data      (last_rx_data),
        .board_test_status (board_test_status),
        .status_reg        (status_reg),
        .tx_frame_count    (tx_frame_count),
        .optical_status    (optical_status),
        .clear_status_pulse(clear_status_pulse)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    task host_write;
        input [31:0] addr;
        input [31:0] data;
        begin
            @(posedge clk);
            wr_en   <= 1'b1;
            wr_addr <= addr;
            wr_data <= data;
            @(posedge clk);
            wr_en   <= 1'b0;
            wr_addr <= 32'd0;
            wr_data <= 32'd0;
        end
    endtask

    task host_read_expect;
        input [31:0] addr;
        input [31:0] expected;
        begin
            @(posedge clk);
            rd_en   <= 1'b1;
            rd_addr <= addr;
            #1;
            if (rd_data !== expected) begin
                $display("ERROR: read addr=%h expected=%h got=%h", addr, expected, rd_data);
                $stop;
            end
            @(posedge clk);
            rd_en   <= 1'b0;
            rd_addr <= 32'd0;
        end
    endtask

    initial begin
        rst               = 1'b1;
        wr_en             = 1'b0;
        wr_addr           = 32'd0;
        wr_data           = 32'd0;
        rd_en             = 1'b0;
        rd_addr           = 32'd0;
        rx_frame_count    = 32'd0;
        match_count       = 32'd0;
        crc_error_count   = 32'd0;
        format_error_count= 32'd0;
        last_rx_seq       = 32'd0;
        last_rx_addr      = 32'd0;
        last_rx_data      = 32'd0;
        phy_debug_status  = 32'hA5A5_5A5A;
        board_test_status = 32'h1234_5678;

        repeat (5) @(posedge clk);
        rst = 1'b0;

        host_write(ADDR_CMD_CFG, 32'h0000_0001);
        host_write(ADDR_CMD_ADDR, 32'h0000_0100);
        host_write(ADDR_CMD_DATA, 32'hCAFE_BABE);
        host_write(ADDR_CMD_CTRL, 32'h0000_0001);

        host_read_expect(ADDR_TX_COUNT, 32'd1);

        rx_frame_count     = 32'd1;
        match_count        = 32'd1;
        crc_error_count    = 32'd0;
        format_error_count = 32'd0;
        last_rx_seq        = 32'd0;
        last_rx_addr       = 32'h0000_0100;
        last_rx_data       = 32'hCAFE_BABE;

        host_read_expect(ADDR_RX_COUNT,   32'd1);
        host_read_expect(ADDR_MATCH_CNT,  32'd1);
        host_read_expect(ADDR_CRC_ERR,    32'd0);
        host_read_expect(ADDR_FMT_ERR,    32'd0);
        host_read_expect(ADDR_LAST_ADDR,  32'h0000_0100);
        host_read_expect(ADDR_LAST_DATA,  32'hCAFE_BABE);

        host_write(ADDR_CMD_CTRL, 32'h0000_0002);
        @(posedge clk);
        if (clear_status_pulse !== 1'b1) begin
            $display("ERROR: expected clear_status_pulse to assert");
            $stop;
        end

        $display("PASS: host register path can configure TX and read back loopback status");
        $finish;
    end

endmodule
