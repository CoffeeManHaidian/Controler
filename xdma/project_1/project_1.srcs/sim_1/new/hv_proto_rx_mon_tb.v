`timescale 1ns / 1ps

module hv_proto_rx_mon_tb;

reg         clk;
reg         rst;
reg  [31:0] packet_in;
reg         packet_valid;
reg  [15:0] addr_base;
reg  [15:0] addr_limit;
reg  [6:0]  frame_valid_count;
integer     filler_addr;
wire [31:0] packet_out;
wire [15:0] current_addr;
wire [15:0] current_data;
wire [15:0] expected_addr;
wire        packet_seen;
wire        addr_in_range;
wire        seq_locked;
wire        seq_ok;
wire        invalid_fill;
wire [7:0]  seq_error_count;

hv_proto_rx_mon dut (
    .clk(clk),
    .rst(rst),
    .packet_in(packet_in),
    .packet_valid(packet_valid),
    .addr_base(addr_base),
    .addr_limit(addr_limit),
    .frame_valid_count(frame_valid_count),
    .packet_out(packet_out),
    .current_addr(current_addr),
    .current_data(current_data),
    .expected_addr(expected_addr),
    .packet_seen(packet_seen),
    .addr_in_range(addr_in_range),
    .seq_locked(seq_locked),
    .seq_ok(seq_ok),
    .invalid_fill(invalid_fill),
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
    addr_limit = 16'h11A4;
    frame_valid_count = 7'd2;

    #20;
    rst = 1'b0;

    send_packet(32'h1000_1000);
    if (!packet_seen || !addr_in_range || !seq_locked || !seq_ok || invalid_fill) begin
        $fatal(1, "expected first packet to establish RX monitor lock");
    end
    if (expected_addr !== 16'h1001) begin
        $fatal(1, "expected next address 1001, got %h", expected_addr);
    end

    send_packet(32'h1001_1001);
    if (!seq_ok || seq_error_count !== 8'h00 || invalid_fill) begin
        $fatal(1, "expected second packet to remain a valid payload");
    end

    send_packet(32'h1002_90BC);
    if (!invalid_fill) begin
        $fatal(1, "expected first filler packet to be detected as invalid fill");
    end
    if (!seq_ok || seq_error_count !== 8'h00) begin
        $fatal(1, "expected first filler packet to preserve sequence");
    end

    for (filler_addr = 16'h1003; filler_addr <= 16'h1063; filler_addr = filler_addr + 1) begin
        send_packet({filler_addr[15:0], 16'h90BC});
        if (!invalid_fill) begin
            $fatal(1, "expected filler packet %h to remain invalid fill", filler_addr[15:0]);
        end
        if (!seq_ok || seq_error_count !== 8'h00) begin
            $fatal(1, "expected filler packet %h to preserve sequence", filler_addr[15:0]);
        end
    end

    send_packet(32'h1000_1000);
    if (!seq_ok || seq_error_count !== 8'h00 || invalid_fill) begin
        $fatal(1, "expected next frame restart to clear back into good sequence");
    end

    $display("hv_proto_rx_mon_tb PASS");
    $finish;
end

endmodule
