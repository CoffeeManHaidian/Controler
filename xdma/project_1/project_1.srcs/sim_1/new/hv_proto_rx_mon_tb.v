`timescale 1ns / 1ps

module hv_proto_rx_mon_tb;

reg         clk;
reg         rst;
reg  [31:0] packet_in;
reg         packet_valid;
reg  [15:0] addr_base;
reg  [15:0] addr_limit;
wire [31:0] packet_out;
wire [15:0] current_addr;
wire [15:0] current_data;
wire [15:0] expected_addr;
wire        packet_seen;
wire        addr_in_range;
wire        seq_locked;
wire        seq_ok;
wire [7:0]  seq_error_count;

hv_proto_rx_mon dut (
    .clk(clk),
    .rst(rst),
    .packet_in(packet_in),
    .packet_valid(packet_valid),
    .addr_base(addr_base),
    .addr_limit(addr_limit),
    .packet_out(packet_out),
    .current_addr(current_addr),
    .current_data(current_data),
    .expected_addr(expected_addr),
    .packet_seen(packet_seen),
    .addr_in_range(addr_in_range),
    .seq_locked(seq_locked),
    .seq_ok(seq_ok),
    .seq_error_count(seq_error_count)
);

always #5 clk = ~clk;

task send_packet;
    input [31:0] value;
    begin
        packet_in = value;
        packet_valid = 1'b1;
        @(posedge clk); #1;
        packet_valid = 1'b0;
    end
endtask

initial begin
    clk = 1'b0;
    rst = 1'b1;
    packet_in = 32'h0000_0000;
    packet_valid = 1'b0;
    addr_base = 16'h1000;
    addr_limit = 16'h1003;

    #20;
    rst = 1'b0;

    send_packet(32'h1000_1000);
    if (!packet_seen || !addr_in_range || !seq_locked || !seq_ok) begin
        $fatal(1, "expected first packet to establish RX monitor lock");
    end
    if (expected_addr !== 16'h1001) begin
        $fatal(1, "expected next address 1001, got %h", expected_addr);
    end

    send_packet(32'h1001_1001);
    if (!seq_ok || seq_error_count !== 8'h00) begin
        $fatal(1, "expected second packet to match sequence");
    end

    send_packet(32'h1003_1003);
    if (seq_ok) begin
        $fatal(1, "expected skipped address to trip sequence error");
    end
    if (seq_error_count !== 8'h01) begin
        $fatal(1, "expected exactly one sequence error, got %h", seq_error_count);
    end

    send_packet(32'h1000_1010);
    if (!seq_ok) begin
        $fatal(1, "expected wrapped packet to match monitor expectation");
    end

    $display("hv_proto_rx_mon_tb PASS");
    $finish;
end

endmodule
