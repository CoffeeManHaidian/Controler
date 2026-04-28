`timescale 1ns / 1ps

module hv_proto_tx_tb;

reg         clk;
reg         rst;
reg  [15:0] data_in;
reg         data_valid;
reg         use_internal_source;
reg  [15:0] addr_base;
reg  [15:0] addr_limit;
reg  [6:0]  frame_valid_count;
wire [31:0] packet_out;
wire        packet_valid;
wire [15:0] current_addr;
wire        using_internal_source;

hv_proto_tx dut (
    .clk(clk),
    .rst(rst),
    .data_in(data_in),
    .data_valid(data_valid),
    .use_internal_source(use_internal_source),
    .addr_base(addr_base),
    .addr_limit(addr_limit),
    .frame_valid_count(frame_valid_count),
    .packet_out(packet_out),
    .packet_valid(packet_valid),
    .current_addr(current_addr),
    .using_internal_source(using_internal_source)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    rst = 1'b1;
    data_in = 16'h0000;
    data_valid = 1'b0;
    use_internal_source = 1'b1;
    addr_base = 16'h1000;
    addr_limit = 16'h11A4;
    frame_valid_count = 7'd97;

    #20;
    rst = 1'b0;

    @(posedge clk); #1;
    if (!packet_valid) begin
        $fatal(1, "expected internal source to emit a packet immediately after reset release");
    end
    if (packet_out !== 32'h1000_1000) begin
        $fatal(1, "expected first frame word 1000_1000, got %h", packet_out);
    end

    repeat (95) @(posedge clk);
    #1;
    if (packet_out !== 32'h105F_105F) begin
        $fatal(1, "expected word 95 to be 105F_105F, got %h", packet_out);
    end

    @(posedge clk); #1;
    if (packet_out !== 32'h1060_1060) begin
        $fatal(1, "expected word 96 to be 1060_1060, got %h", packet_out);
    end

    @(posedge clk); #1;
    if (packet_out !== 32'h1061_90BC) begin
        $fatal(1, "expected word 97 to be invalid fill 1061_90BC, got %h", packet_out);
    end

    @(posedge clk); #1;
    if (packet_out !== 32'h1062_90BC) begin
        $fatal(1, "expected word 98 to be invalid fill 1062_90BC, got %h", packet_out);
    end

    @(posedge clk); #1;
    if (packet_out !== 32'h1063_90BC) begin
        $fatal(1, "expected word 99 to be invalid fill 1063_90BC, got %h", packet_out);
    end

    @(posedge clk); #1;
    if (packet_out !== 32'h1000_1000) begin
        $fatal(1, "expected next frame to restart at 1000_1000, got %h", packet_out);
    end

    $display("hv_proto_tx_tb PASS");
    $finish;
end

endmodule
