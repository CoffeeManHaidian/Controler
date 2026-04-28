`timescale 1ns / 1ps

module hv_proto_tx_tb;

reg         clk;
reg         rst;
reg  [15:0] data_in;
reg         data_valid;
reg         use_internal_source;
reg  [15:0] addr_base;
reg  [15:0] addr_limit;
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
    addr_base = 16'h11A4;
    addr_limit = 16'h11A7;

    #20;
    rst = 1'b0;

    @(posedge clk); #1;
    if (!packet_valid) begin
        $fatal(1, "expected internal source to emit a packet immediately after reset release");
    end
    if (packet_out !== 32'h11A4_1000) begin
        $fatal(1, "expected first packet 11A4_1000, got %h", packet_out);
    end

    @(posedge clk); #1;
    if (packet_out !== 32'h11A5_1001) begin
        $fatal(1, "expected second packet 11A5_1001, got %h", packet_out);
    end

    @(posedge clk); #1;
    if (packet_out !== 32'h11A6_1002) begin
        $fatal(1, "expected third packet 11A6_1002, got %h", packet_out);
    end

    @(posedge clk); #1;
    if (packet_out !== 32'h11A7_1003) begin
        $fatal(1, "expected fourth packet 11A7_1003, got %h", packet_out);
    end

    @(posedge clk); #1;
    if (packet_out !== 32'h11A4_1010) begin
        $fatal(1, "expected wrapped packet 11A4_1010, got %h", packet_out);
    end

    use_internal_source = 1'b0;
    data_valid = 1'b1;
    data_in = 16'h55AA;

    @(posedge clk); #1;
    if (!packet_valid) begin
        $fatal(1, "expected packet_valid during external data transfer");
    end
    if (packet_out !== 32'h11A5_55AA) begin
        $fatal(1, "expected external packet 11A5_55AA, got %h", packet_out);
    end
    if (using_internal_source) begin
        $fatal(1, "expected using_internal_source to deassert in external mode");
    end

    data_valid = 1'b0;
    @(posedge clk); #1;
    if (packet_valid) begin
        $fatal(1, "expected packet_valid to deassert when external mode has no data");
    end

    $display("hv_proto_tx_tb PASS");
    $finish;
end

endmodule
