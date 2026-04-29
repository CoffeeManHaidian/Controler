`timescale 1ns / 1ps

module hv_sfp_loopback_ctrl_tb;

reg         clk;
reg         rst;
wire [31:0] tx_packet_out;
wire        tx_packet_valid;
wire [15:0] tx_current_addr;
wire        tx_using_internal_source;
wire [31:0] rx_current_packet;
wire [15:0] rx_current_addr;
wire [15:0] rx_current_data;
wire [15:0] rx_expected_addr;
wire        rx_packet_seen;
wire        rx_addr_in_range;
wire        rx_invalid_fill;
wire        rx_seq_locked;
wire        rx_seq_ok;
wire [7:0]  rx_seq_error_count;

hv_sfp_loopback_ctrl dut (
    .tx_clk(clk),
    .tx_rst(rst),
    .rx_clk(clk),
    .rx_rst(rst),
    .rx_packet_in(tx_packet_out),
    .rx_packet_valid(tx_packet_valid),
    .tx_packet_out(tx_packet_out),
    .tx_packet_valid(tx_packet_valid),
    .tx_current_addr(tx_current_addr),
    .tx_using_internal_source(tx_using_internal_source),
    .rx_current_packet(rx_current_packet),
    .rx_current_addr(rx_current_addr),
    .rx_current_data(rx_current_data),
    .rx_expected_addr(rx_expected_addr),
    .rx_packet_seen(rx_packet_seen),
    .rx_addr_in_range(rx_addr_in_range),
    .rx_invalid_fill(rx_invalid_fill),
    .rx_seq_locked(rx_seq_locked),
    .rx_seq_ok(rx_seq_ok),
    .rx_seq_error_count(rx_seq_error_count)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    rst = 1'b1;

    #30;
    rst = 1'b0;

    wait (rx_seq_locked);
    wait (rx_invalid_fill);
    repeat (4) @(posedge clk);

    if (!tx_using_internal_source) $fatal(1, "tx_using_internal_source mismatch");
    if (!rx_packet_seen) $fatal(1, "rx_packet_seen mismatch");
    if (!rx_addr_in_range) $fatal(1, "rx_addr_in_range mismatch");
    if (!rx_seq_locked) $fatal(1, "rx_seq_locked mismatch");
    if (!rx_seq_ok) $fatal(1, "rx_seq_ok mismatch");
    if (rx_seq_error_count != 8'd0) $fatal(1, "rx_seq_error_count mismatch");
    if (!rx_invalid_fill) $fatal(1, "rx_invalid_fill mismatch");
    if (rx_current_addr != 16'h1062) $fatal(1, "rx_current_addr mismatch");
    if (rx_current_data != 16'h90BC) $fatal(1, "rx_current_data mismatch");
    if (rx_expected_addr != 16'h1062) $fatal(1, "rx_expected_addr mismatch");
    if (rx_current_packet != 32'h1062_90BC) $fatal(1, "rx_current_packet mismatch");

    $display("hv_sfp_loopback_ctrl_tb PASS");
    $finish;
end

endmodule
