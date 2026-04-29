`timescale 1ns / 1ps

module hv_mmio_rx_capture (
    input  wire        clk,
    input  wire        rst,
    input  wire        clear_status,
    input  wire [31:0] rx_packet_in,
    input  wire        rx_packet_valid,
    output reg  [6:0]  rx_bram_index,
    output reg  [31:0] rx_bram_wdata,
    output reg         rx_bram_we,
    output reg         rx_done,
    output reg  [15:0] rx_frame_id,
    output reg  [7:0]  rx_error_count,
    output reg  [6:0]  rx_capture_count,
    output reg  [31:0] current_packet,
    output reg  [15:0] current_addr,
    output reg  [15:0] current_data,
    output reg  [15:0] expected_addr,
    output reg         packet_seen,
    output reg         addr_in_range,
    output reg         invalid_fill,
    output reg         seq_locked,
    output reg         seq_ok
);

localparam [6:0] FRAME_WORD_COUNT = 7'd100;
localparam [15:0] FRAME_HEADER_HI = 16'hA5F0;
localparam [6:0] VALID_PAYLOAD_LAST_INDEX = 7'd97;

wire [15:0] expected_addr_now;
wire is_valid_payload_word;
wire is_invalid_fill_word;
wire packet_matches_expectation;
wire is_header_packet;
wire accept_header_packet;
wire accept_frame_packet;

reg frame_active;
reg [6:0] write_index_state;

assign accept_header_packet   = rx_packet_valid && !rx_done && !frame_active && is_header_packet;
assign accept_frame_packet    = rx_packet_valid && !rx_done && frame_active;
assign is_valid_payload_word  = (write_index_state >= 7'd1) && (write_index_state <= VALID_PAYLOAD_LAST_INDEX);
assign is_invalid_fill_word   = (write_index_state >= 7'd98) && (write_index_state <= 7'd99);
assign expected_addr_now      = 16'h1000 + {9'd0, (write_index_state - 7'd1)};
assign is_header_packet       = (rx_packet_in[31:16] == FRAME_HEADER_HI);
assign packet_matches_expectation =
    is_header_packet      ? 1'b1 :
    is_valid_payload_word ? (rx_packet_in == {expected_addr_now, expected_addr_now}) :
    is_invalid_fill_word  ? (rx_packet_in == {expected_addr_now, 16'h90BC}) :
                            1'b0;

always @(*) begin
    rx_bram_index = write_index_state;
    rx_bram_wdata = rx_packet_in;
    rx_bram_we    = accept_header_packet || accept_frame_packet;
end

always @(posedge clk) begin
    if (rst || clear_status) begin
        rx_done          <= 1'b0;
        rx_frame_id      <= 16'h0000;
        rx_error_count   <= 8'd0;
        rx_capture_count <= 7'd0;
        current_packet   <= 32'h0000_0000;
        current_addr     <= 16'h0000;
        current_data     <= 16'h0000;
        expected_addr    <= 16'h1000;
        packet_seen      <= 1'b0;
        addr_in_range    <= 1'b0;
        invalid_fill     <= 1'b0;
        seq_locked       <= 1'b0;
        seq_ok           <= 1'b0;
        frame_active     <= 1'b0;
        write_index_state <= 7'd0;
    end else begin
        if (accept_header_packet) begin
            current_packet   <= rx_packet_in;
            current_addr     <= rx_packet_in[31:16];
            current_data     <= rx_packet_in[15:0];
            expected_addr    <= 16'h1000;
            packet_seen      <= 1'b1;
            addr_in_range    <= 1'b1;
            invalid_fill     <= 1'b0;
            seq_locked       <= 1'b1;
            seq_ok           <= 1'b1;
            rx_frame_id      <= rx_packet_in[15:0];
            rx_capture_count <= 7'd1;
            frame_active     <= 1'b1;
            write_index_state <= 7'd1;
        end else if (accept_frame_packet) begin
            current_packet <= rx_packet_in;
            current_addr   <= rx_packet_in[31:16];
            current_data   <= rx_packet_in[15:0];
            expected_addr  <= expected_addr_now;
            packet_seen    <= 1'b1;
            addr_in_range  <= (rx_packet_in[31:16] == expected_addr_now);
            invalid_fill   <= is_invalid_fill_word && (rx_packet_in[15:0] == 16'h90BC);
            seq_locked     <= 1'b1;
            seq_ok         <= packet_matches_expectation;

            if (!packet_matches_expectation) begin
                rx_error_count <= rx_error_count + 8'd1;
            end

            if (write_index_state == (FRAME_WORD_COUNT - 7'd1)) begin
                rx_done          <= 1'b1;
                rx_capture_count <= FRAME_WORD_COUNT;
                frame_active     <= 1'b0;
                write_index_state <= 7'd0;
            end else begin
                write_index_state <= write_index_state + 7'd1;
                rx_capture_count <= rx_capture_count + 7'd1;
            end
        end
    end
end

endmodule
