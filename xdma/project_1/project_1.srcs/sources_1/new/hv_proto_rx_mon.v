`timescale 1ns / 1ps

module hv_proto_rx_mon (
    input  wire        clk,
    input  wire        rst,
    input  wire [31:0] packet_in,
    input  wire        packet_valid,
    input  wire [15:0] addr_base,
    input  wire [15:0] addr_limit,
    input  wire [6:0]  frame_valid_count,
    output reg  [31:0] packet_out,
    output reg  [15:0] current_addr,
    output reg  [15:0] current_data,
    output reg  [15:0] expected_addr,
    output reg         packet_seen,
    output reg         addr_in_range,
    output reg         seq_locked,
    output reg         seq_ok,
    output reg         invalid_fill,
    output reg  [7:0]  seq_error_count
);

localparam [6:0]  FRAME_WORD_COUNT = 7'd100;
localparam [15:0] INVALID_DATA_WORD = 16'h90BC;

wire [15:0] packet_addr;
wire [15:0] frame_last_addr;
wire [15:0] next_expected_addr;

assign packet_addr = packet_in[31:16];
assign frame_last_addr = addr_base + (FRAME_WORD_COUNT - 7'd1);
assign next_expected_addr = (packet_addr >= frame_last_addr) ? addr_base : (packet_addr + 16'd1);

always @(posedge clk) begin
    if (rst) begin
        packet_out       <= 32'h0000_0000;
        current_addr     <= 16'h0000;
        current_data     <= 16'h0000;
        expected_addr    <= addr_base;
        packet_seen      <= 1'b0;
        addr_in_range    <= 1'b0;
        seq_locked       <= 1'b0;
        seq_ok           <= 1'b0;
        invalid_fill     <= 1'b0;
        seq_error_count  <= 8'h00;
    end else if (packet_valid) begin
        packet_out    <= packet_in;
        current_addr  <= packet_addr;
        current_data  <= packet_in[15:0];
        packet_seen   <= 1'b1;
        addr_in_range <= (packet_addr >= addr_base) && (packet_addr <= frame_last_addr);
        invalid_fill  <= (packet_in[15:0] == INVALID_DATA_WORD);

        if (!seq_locked) begin
            seq_locked <= 1'b1;
            seq_ok     <= 1'b1;
        end else begin
            seq_ok <= (packet_addr == expected_addr);
            if (packet_addr != expected_addr) begin
                seq_error_count <= seq_error_count + 8'd1;
            end
        end

        expected_addr <= next_expected_addr;
    end
end

endmodule
