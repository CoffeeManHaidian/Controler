`timescale 1ns / 1ps

module hv_sfp_loopback_ctrl (
    input  wire        tx_clk,
    input  wire        tx_rst,
    input  wire        rx_clk,
    input  wire        rx_rst,
    input  wire [31:0] rx_packet_in,
    input  wire        rx_packet_valid,
    output wire [31:0] tx_packet_out,
    output wire        tx_packet_valid,
    output wire [15:0] tx_current_addr,
    output wire        tx_using_internal_source,
    output wire [31:0] rx_current_packet,
    output wire [15:0] rx_current_addr,
    output wire [15:0] rx_current_data,
    output wire [15:0] rx_expected_addr,
    output wire        rx_packet_seen,
    output wire        rx_addr_in_range,
    output wire        rx_invalid_fill,
    output wire        rx_seq_locked,
    output wire        rx_seq_ok,
    output wire [7:0]  rx_seq_error_count
);

localparam [6:0] FRAME_WORD_COUNT = 7'd100;
localparam [15:0] FRAME_HEADER_HI = 16'hA5F0;
localparam [15:0] INVALID_DATA_WORD = 16'h90BC;

wire [6:0]  tx_bram_index_i;
wire [31:0] tx_bram_rdata_i;
wire [31:0] tx_packet_word_i;
wire        tx_busy_i;
wire        tx_frame_done_i;
wire [6:0]  rx_bram_index_i;
wire [31:0] rx_bram_wdata_i;
wire        rx_bram_we_i;
wire        rx_done_i;
wire [15:0] rx_frame_id_i;
wire [6:0]  rx_capture_count_i;
wire [31:0] rx_current_packet_i;

reg start_req = 1'b1;
reg start_pulse = 1'b0;

function [31:0] build_frame_word;
    input [6:0] index;
    reg [15:0] payload_addr;
    begin
        if (index == 7'd0) begin
            build_frame_word = {FRAME_HEADER_HI, 16'h0001};
        end else begin
            payload_addr = 16'h1000 + {9'd0, (index - 7'd1)};
            if (index <= 7'd97) begin
                build_frame_word = {payload_addr, payload_addr};
            end else begin
                build_frame_word = {payload_addr, INVALID_DATA_WORD};
            end
        end
    end
endfunction

assign tx_bram_rdata_i = build_frame_word(tx_bram_index_i);
assign tx_packet_out = tx_packet_word_i;
assign tx_current_addr = tx_packet_word_i[31:16];
assign tx_using_internal_source = 1'b1;

assign rx_current_packet = rx_current_packet_i;

always @(posedge tx_clk) begin
    if (tx_rst) begin
        start_req <= 1'b1;
        start_pulse <= 1'b0;
    end else begin
        start_pulse <= 1'b0;

        if (tx_frame_done_i) begin
            start_req <= 1'b1;
        end

        if (start_req && !tx_busy_i) begin
            start_pulse <= 1'b1;
            start_req <= 1'b0;
        end
    end
end

hv_mmio_tx_reader u_hv_mmio_tx_reader (
    .clk(tx_clk),
    .rst(tx_rst),
    .start(start_pulse),
    .tx_bram_rdata(tx_bram_rdata_i),
    .tx_bram_index(tx_bram_index_i),
    .packet_out(tx_packet_word_i),
    .packet_valid(tx_packet_valid),
    .busy(tx_busy_i),
    .frame_done(tx_frame_done_i)
);

hv_mmio_rx_capture u_hv_mmio_rx_capture (
    .clk(rx_clk),
    .rst(rx_rst),
    .clear_status(1'b0),
    .rx_packet_in(rx_packet_in),
    .rx_packet_valid(rx_packet_valid),
    .rx_bram_index(rx_bram_index_i),
    .rx_bram_wdata(rx_bram_wdata_i),
    .rx_bram_we(rx_bram_we_i),
    .rx_done(rx_done_i),
    .rx_frame_id(rx_frame_id_i),
    .rx_error_count(rx_seq_error_count),
    .rx_capture_count(rx_capture_count_i),
    .current_packet(rx_current_packet_i),
    .current_addr(rx_current_addr),
    .current_data(rx_current_data),
    .expected_addr(rx_expected_addr),
    .packet_seen(rx_packet_seen),
    .addr_in_range(rx_addr_in_range),
    .invalid_fill(rx_invalid_fill),
    .seq_locked(rx_seq_locked),
    .seq_ok(rx_seq_ok)
);

endmodule
