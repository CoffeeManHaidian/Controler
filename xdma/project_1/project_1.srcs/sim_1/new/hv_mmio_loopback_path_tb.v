`timescale 1ns / 1ps

module hv_mmio_loopback_path_tb;

reg         axi_clk;
reg         rx_clk;
reg         axi_rst;
reg         rx_rst;
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
wire        rx_done_axi;
reg         rx_done_axi_ff1;
reg         rx_done_axi_ff2;
reg  [15:0] rx_frame_id_axi;
reg  [7:0]  rx_error_count_axi;
reg  [6:0]  rx_capture_count_axi;
wire [6:0]  rx_buf_raddr;
wire [31:0] rx_buf_rdata;

reg  [31:0] rx_packet_in;
reg         rx_packet_valid;
wire [6:0]  rx_bram_index;
wire [31:0] rx_bram_wdata;
wire        rx_bram_we;
wire        rx_done_rxclk;
wire [15:0] rx_frame_id_rxclk;
wire [7:0]  rx_error_count_rxclk;
wire [6:0]  rx_capture_count_rxclk;
wire        clear_status_rxclk;

integer i;
reg [15:0] payload_word;

assign rx_done_axi = rx_done_axi_ff2;

hv_mmio_regs u_regs (
    .clk(axi_clk),
    .rst(axi_rst),
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
    .rx_done(rx_done_axi),
    .rx_frame_id(rx_frame_id_axi),
    .rx_error_count(rx_error_count_axi),
    .rx_capture_count(rx_capture_count_axi),
    .rx_buf_raddr(rx_buf_raddr),
    .rx_buf_rdata(rx_buf_rdata),
    .tx_buf_index(7'd0),
    .tx_buf_rdata()
);

hv_async_pulse_sync u_clear_status_sync (
    .src_clk(axi_clk),
    .src_rst(axi_rst),
    .src_pulse(clear_status),
    .dst_clk(rx_clk),
    .dst_rst(rx_rst),
    .dst_pulse(clear_status_rxclk)
);

hv_mmio_rx_capture u_rx_capture (
    .clk(rx_clk),
    .rst(rx_rst),
    .clear_status(clear_status_rxclk),
    .rx_packet_in(rx_packet_in),
    .rx_packet_valid(rx_packet_valid),
    .rx_bram_index(rx_bram_index),
    .rx_bram_wdata(rx_bram_wdata),
    .rx_bram_we(rx_bram_we),
    .rx_done(rx_done_rxclk),
    .rx_frame_id(rx_frame_id_rxclk),
    .rx_error_count(rx_error_count_rxclk),
    .rx_capture_count(rx_capture_count_rxclk),
    .current_packet(),
    .current_addr(),
    .current_data(),
    .expected_addr(),
    .packet_seen(),
    .addr_in_range(),
    .invalid_fill(),
    .seq_locked(),
    .seq_ok()
);

hv_dual_port_ram #(
    .ADDR_WIDTH(7),
    .DATA_WIDTH(32)
) u_rx_bram (
    .wr_clk(rx_clk),
    .wr_en(rx_bram_we),
    .wr_addr(rx_bram_index),
    .wr_data(rx_bram_wdata),
    .rd_clk(axi_clk),
    .rd_addr(rx_buf_raddr),
    .rd_data(rx_buf_rdata)
);

always #5 axi_clk = ~axi_clk;
always #4 rx_clk = ~rx_clk;

always @(posedge axi_clk) begin
    if (axi_rst) begin
        rx_done_axi_ff1      <= 1'b0;
        rx_done_axi_ff2      <= 1'b0;
        rx_frame_id_axi      <= 16'd0;
        rx_error_count_axi   <= 8'd0;
        rx_capture_count_axi <= 7'd0;
    end else begin
        rx_done_axi_ff1 <= rx_done_rxclk;
        rx_done_axi_ff2 <= rx_done_axi_ff1;

        if (clear_status) begin
            rx_frame_id_axi      <= 16'd0;
            rx_error_count_axi   <= 8'd0;
            rx_capture_count_axi <= 7'd0;
        end else if (!rx_done_axi_ff2 && rx_done_axi_ff1) begin
            rx_frame_id_axi      <= rx_frame_id_rxclk;
            rx_error_count_axi   <= rx_error_count_rxclk;
            rx_capture_count_axi <= rx_capture_count_rxclk;
        end
    end
end

task host_write32;
    input [31:0] addr;
    input [31:0] data;
    begin
        @(negedge axi_clk);
        host_wr_addr = addr;
        host_wr_data = data;
        host_wr_en   = 1'b1;
        @(negedge axi_clk);
        host_wr_en   = 1'b0;
        host_wr_addr = 32'd0;
        host_wr_data = 32'd0;
    end
endtask

task host_read32_expect;
    input [31:0] addr;
    input [31:0] expected;
    begin
        @(negedge axi_clk);
        host_rd_addr = addr;
        host_rd_en   = 1'b1;
        @(posedge axi_clk);
        @(posedge axi_clk);
        #1;
        if (host_rd_data !== expected) begin
            $fatal(1, "host read mismatch addr=%h expected=%h actual=%h", addr, expected, host_rd_data);
        end
        @(negedge axi_clk);
        host_rd_en   = 1'b0;
        host_rd_addr = 32'd0;
    end
endtask

initial begin
    axi_clk = 1'b0;
    rx_clk = 1'b0;
    axi_rst = 1'b1;
    rx_rst = 1'b1;
    host_wr_en = 1'b0;
    host_wr_addr = 32'd0;
    host_wr_data = 32'd0;
    host_rd_en = 1'b0;
    host_rd_addr = 32'd0;
    tx_busy = 1'b0;
    tx_frame_done = 1'b0;
    tx_sent_count = 7'd0;
    rx_packet_in = 32'd0;
    rx_packet_valid = 1'b0;

    repeat (4) @(posedge axi_clk);
    axi_rst = 1'b0;
    repeat (4) @(posedge rx_clk);
    rx_rst = 1'b0;

    host_write32(32'h0000_4004, 32'd97);
    host_read32_expect(32'h0000_4004, 32'd97);

    for (i = 0; i < 100; i = i + 1) begin
        @(negedge rx_clk);
        if (i == 0) begin
            rx_packet_in = 32'hA5F0_0001;
        end else if (i <= 97) begin
            payload_word = 16'h1000 + i - 1;
            rx_packet_in = {payload_word, payload_word};
        end else begin
            payload_word = 16'h1000 + i - 1;
            rx_packet_in = {payload_word, 16'h90BC};
        end
        rx_packet_valid = 1'b1;
        @(posedge rx_clk);
    end

    @(negedge rx_clk);
    rx_packet_valid = 1'b0;
    rx_packet_in = 32'd0;

    wait (rx_done_axi);
    repeat (3) @(posedge axi_clk);

    host_read32_expect(32'h0000_400C, 32'h0000_0001);
    host_read32_expect(32'h0000_4010, 32'h0000_0001);
    host_read32_expect(32'h0000_4014, 32'h0000_0000);
    host_read32_expect(32'h0000_4018, 32'd100);
    host_read32_expect(32'h0000_1000, 32'hA5F0_0001);
    host_read32_expect(32'h0000_1004, 32'h1000_1000);
    host_read32_expect(32'h0000_1188, 32'h1061_90BC);

    host_write32(32'h0000_4000, 32'h0000_0002);
    repeat (4) @(posedge axi_clk);
    repeat (4) @(posedge rx_clk);

    host_read32_expect(32'h0000_400C, 32'h0000_0000);
    host_read32_expect(32'h0000_4010, 32'h0000_0000);
    host_read32_expect(32'h0000_4014, 32'h0000_0000);
    host_read32_expect(32'h0000_4018, 32'h0000_0000);

    $display("hv_mmio_loopback_path_tb PASS");
    $finish;
end

endmodule
