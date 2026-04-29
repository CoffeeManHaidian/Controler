`timescale 1ns / 1ps

module hv_mmio_tx_reader_tb;

reg         clk;
reg         rst;
reg         start;
wire [6:0]  tx_bram_index;
reg  [31:0] tx_bram_rdata;
wire [31:0] packet_out;
wire        packet_valid;
wire        busy;
wire        frame_done;

reg [31:0] tx_mem [0:99];
integer i;
integer seen_count;

hv_mmio_tx_reader dut (
    .clk(clk),
    .rst(rst),
    .start(start),
    .tx_bram_rdata(tx_bram_rdata),
    .tx_bram_index(tx_bram_index),
    .packet_out(packet_out),
    .packet_valid(packet_valid),
    .busy(busy),
    .frame_done(frame_done)
);

always #5 clk = ~clk;

always @(*) begin
    tx_bram_rdata = tx_mem[tx_bram_index];
end

always @(posedge clk) begin
    if (packet_valid) begin
        if (packet_out !== tx_mem[seen_count]) begin
            $fatal(1, "packet mismatch at %0d", seen_count);
        end
        seen_count = seen_count + 1;
    end
end

initial begin
    clk = 1'b0;
    rst = 1'b1;
    start = 1'b0;
    seen_count = 0;

    for (i = 0; i < 100; i = i + 1) begin
        tx_mem[i] = {16'h1000 + i[15:0], 16'h2000 + i[15:0]};
    end

    #20;
    rst = 1'b0;
    #10;
    start = 1'b1;
    #10;
    start = 1'b0;

    wait(frame_done);
    repeat (2) @(posedge clk);
    if (seen_count != 100) $fatal(1, "seen_count mismatch");
    $display("hv_mmio_tx_reader_tb PASS");
    $finish;
end

endmodule
