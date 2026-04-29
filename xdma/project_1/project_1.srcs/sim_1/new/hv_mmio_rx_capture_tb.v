`timescale 1ns / 1ps

module hv_mmio_rx_capture_tb;

reg         clk;
reg         rst;
reg         clear_status;
reg  [31:0] rx_packet_in;
reg         rx_packet_valid;
wire [6:0]  rx_bram_index;
wire [31:0] rx_bram_wdata;
wire        rx_bram_we;
wire        rx_done;
wire [15:0] rx_frame_id;
wire [7:0]  rx_error_count;
wire [6:0]  rx_capture_count;
wire [31:0] current_packet;
wire [15:0] current_addr;
wire [15:0] current_data;
wire [15:0] expected_addr;
wire        packet_seen;
wire        addr_in_range;
wire        invalid_fill;
wire        seq_locked;
wire        seq_ok;

integer i;
reg [15:0] payload_word;

hv_mmio_rx_capture dut (
    .clk(clk),
    .rst(rst),
    .clear_status(clear_status),
    .rx_packet_in(rx_packet_in),
    .rx_packet_valid(rx_packet_valid),
    .rx_bram_index(rx_bram_index),
    .rx_bram_wdata(rx_bram_wdata),
    .rx_bram_we(rx_bram_we),
    .rx_done(rx_done),
    .rx_frame_id(rx_frame_id),
    .rx_error_count(rx_error_count),
    .rx_capture_count(rx_capture_count),
    .current_packet(current_packet),
    .current_addr(current_addr),
    .current_data(current_data),
    .expected_addr(expected_addr),
    .packet_seen(packet_seen),
    .addr_in_range(addr_in_range),
    .invalid_fill(invalid_fill),
    .seq_locked(seq_locked),
    .seq_ok(seq_ok)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    rst = 1'b1;
    clear_status = 1'b0;
    rx_packet_in = 32'd0;
    rx_packet_valid = 1'b0;

    repeat (3) @(posedge clk);
    rst = 1'b0;
    @(posedge clk);

    for (i = 0; i < 100; i = i + 1) begin
        @(negedge clk);
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
        @(posedge clk);
    end

    @(negedge clk);
    rx_packet_valid = 1'b0;
    rx_packet_in = 32'd0;
    repeat (2) @(posedge clk);

    if (!rx_done) $fatal(1, "rx_done not asserted");
    if (rx_frame_id != 16'h0001) $fatal(1, "rx_frame_id mismatch");
    if (rx_capture_count != 7'd100) $fatal(1, "rx_capture_count mismatch");
    if (rx_error_count != 8'd0) $fatal(1, "rx_error_count mismatch");
    if (!packet_seen) $fatal(1, "packet_seen mismatch");
    if (!seq_locked) $fatal(1, "seq_locked mismatch");
    if (!seq_ok) $fatal(1, "seq_ok mismatch");
    if (!invalid_fill) $fatal(1, "invalid_fill mismatch");
    if (current_addr != 16'h1062) $fatal(1, "current_addr mismatch");
    if (current_data != 16'h90BC) $fatal(1, "current_data mismatch");

    clear_status = 1'b1;
    #10;
    clear_status = 1'b0;
    #10;

    if (rx_done) $fatal(1, "rx_done not cleared");

    $display("hv_mmio_rx_capture_tb PASS");
    $finish;
end

endmodule
