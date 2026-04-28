`timescale 1ns / 1ps

module hv_proto_tx (
    input  wire        clk,
    input  wire        rst,
    input  wire [15:0] data_in,
    input  wire        data_valid,
    input  wire        use_internal_source,
    input  wire [15:0] addr_base,
    input  wire [15:0] addr_limit,
    input  wire [6:0]  frame_valid_count,
    output reg  [31:0] packet_out,
    output reg         packet_valid,
    output reg  [15:0] current_addr,
    output reg         using_internal_source
);

localparam [6:0] FRAME_WORD_COUNT = 7'd100;
localparam [15:0] INVALID_DATA_WORD = 16'h90BC;

reg  [6:0]  frame_index;
wire        slot_has_valid_payload;
wire [15:0] slot_addr;
wire [15:0] next_data_word;

assign slot_has_valid_payload = (frame_index < frame_valid_count);
assign slot_addr = addr_base + {9'd0, frame_index};
assign next_data_word =
    !slot_has_valid_payload ? INVALID_DATA_WORD :
    use_internal_source     ? slot_addr :
    data_valid              ? data_in :
                              INVALID_DATA_WORD;

always @(posedge clk) begin
    if (rst) begin
        packet_out             <= 32'h0000_0000;
        packet_valid           <= 1'b0;
        current_addr           <= addr_base;
        using_internal_source  <= 1'b1;
        frame_index            <= 7'd0;
    end else begin
        using_internal_source <= use_internal_source;
        packet_valid          <= 1'b1;
        packet_out            <= {slot_addr, next_data_word};
        current_addr          <= slot_addr;

        if (frame_index == (FRAME_WORD_COUNT - 7'd1)) begin
            frame_index <= 7'd0;
        end else begin
            frame_index <= frame_index + 7'd1;
        end
    end
end

endmodule
