`timescale 1ns / 1ps

module hv_mmio_tx_reader (
    input  wire        clk,
    input  wire        rst,
    input  wire        start,
    input  wire [31:0] tx_bram_rdata,
    output reg  [6:0]  tx_bram_index,
    output reg  [31:0] packet_out,
    output reg         packet_valid,
    output reg         busy,
    output reg         frame_done,
    output reg  [6:0]  sent_count
);

localparam [6:0] FRAME_WORD_COUNT = 7'd100;

always @(posedge clk) begin
    if (rst) begin
        tx_bram_index <= 7'd0;
        packet_out    <= 32'h0000_0000;
        packet_valid  <= 1'b0;
        busy          <= 1'b0;
        frame_done    <= 1'b0;
        sent_count    <= 7'd0;
    end else begin
        packet_valid <= 1'b0;
        frame_done   <= 1'b0;

        if (start && !busy) begin
            busy          <= 1'b1;
            tx_bram_index <= 7'd0;
            sent_count    <= 7'd0;
        end else if (busy) begin
            packet_out   <= tx_bram_rdata;
            packet_valid <= 1'b1;
            sent_count   <= tx_bram_index + 7'd1;

            if (tx_bram_index == (FRAME_WORD_COUNT - 7'd1)) begin
                busy          <= 1'b0;
                frame_done    <= 1'b1;
                tx_bram_index <= 7'd0;
            end else begin
                tx_bram_index <= tx_bram_index + 7'd1;
            end
        end
    end
end

endmodule
