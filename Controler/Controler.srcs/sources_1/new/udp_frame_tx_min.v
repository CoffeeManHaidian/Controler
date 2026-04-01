module udp_frame_tx_min #(
    parameter [47:0] DST_MAC  = 48'h02_00_00_00_00_02,
    parameter [47:0] SRC_MAC  = 48'h02_00_00_00_00_01,
    parameter [31:0] SRC_IP   = 32'hC0A8_010A,
    parameter [31:0] DST_IP   = 32'hC0A8_0164,
    parameter [15:0] SRC_PORT = 16'd5000,
    parameter [15:0] DST_PORT = 16'd6000
) (
    input  wire        clk,
    input  wire        rst,
    input  wire [63:0] fifo_rd_data,
    input  wire        fifo_empty,
    output reg         fifo_rd_en,
    output reg  [63:0] tx_axis_tdata,
    output reg  [7:0]  tx_axis_tkeep,
    output reg         tx_axis_tvalid,
    output reg         tx_axis_tlast,
    input  wire        tx_axis_tready,
    output reg  [31:0] tx_frame_count
);

    localparam [15:0] ETH_TYPE_IPV4   = 16'h0800;
    localparam [15:0] IP_TOTAL_LEN    = 16'd44;
    localparam [15:0] IP_ID           = 16'h0000;
    localparam [15:0] IP_FLAGS_FRAG   = 16'h4000;
    localparam [7:0]  IP_TTL          = 8'h40;
    localparam [7:0]  IP_PROTO_UDP    = 8'h11;
    localparam [15:0] IP_HDR_CHECKSUM = 16'hB702;
    localparam [15:0] UDP_LEN         = 16'd24;
    localparam [15:0] UDP_CHECKSUM    = 16'h0000;

    localparam ST_IDLE  = 2'd0;
    localparam ST_LATCH = 2'd1;
    localparam ST_SEND  = 2'd2;

    reg [1:0] state;
    reg [2:0] beat_idx;
    reg [31:0] cmd_addr;
    reg [31:0] cmd_data;
    reg [31:0] seq_cnt;

    function [7:0] frame_byte;
        input [5:0] idx;
        begin
            case (idx)
                6'd0:  frame_byte = DST_MAC[47:40];
                6'd1:  frame_byte = DST_MAC[39:32];
                6'd2:  frame_byte = DST_MAC[31:24];
                6'd3:  frame_byte = DST_MAC[23:16];
                6'd4:  frame_byte = DST_MAC[15:8];
                6'd5:  frame_byte = DST_MAC[7:0];
                6'd6:  frame_byte = SRC_MAC[47:40];
                6'd7:  frame_byte = SRC_MAC[39:32];
                6'd8:  frame_byte = SRC_MAC[31:24];
                6'd9:  frame_byte = SRC_MAC[23:16];
                6'd10: frame_byte = SRC_MAC[15:8];
                6'd11: frame_byte = SRC_MAC[7:0];
                6'd12: frame_byte = ETH_TYPE_IPV4[15:8];
                6'd13: frame_byte = ETH_TYPE_IPV4[7:0];
                6'd14: frame_byte = 8'h45;
                6'd15: frame_byte = 8'h00;
                6'd16: frame_byte = IP_TOTAL_LEN[15:8];
                6'd17: frame_byte = IP_TOTAL_LEN[7:0];
                6'd18: frame_byte = IP_ID[15:8];
                6'd19: frame_byte = IP_ID[7:0];
                6'd20: frame_byte = IP_FLAGS_FRAG[15:8];
                6'd21: frame_byte = IP_FLAGS_FRAG[7:0];
                6'd22: frame_byte = IP_TTL;
                6'd23: frame_byte = IP_PROTO_UDP;
                6'd24: frame_byte = IP_HDR_CHECKSUM[15:8];
                6'd25: frame_byte = IP_HDR_CHECKSUM[7:0];
                6'd26: frame_byte = SRC_IP[31:24];
                6'd27: frame_byte = SRC_IP[23:16];
                6'd28: frame_byte = SRC_IP[15:8];
                6'd29: frame_byte = SRC_IP[7:0];
                6'd30: frame_byte = DST_IP[31:24];
                6'd31: frame_byte = DST_IP[23:16];
                6'd32: frame_byte = DST_IP[15:8];
                6'd33: frame_byte = DST_IP[7:0];
                6'd34: frame_byte = SRC_PORT[15:8];
                6'd35: frame_byte = SRC_PORT[7:0];
                6'd36: frame_byte = DST_PORT[15:8];
                6'd37: frame_byte = DST_PORT[7:0];
                6'd38: frame_byte = UDP_LEN[15:8];
                6'd39: frame_byte = UDP_LEN[7:0];
                6'd40: frame_byte = UDP_CHECKSUM[15:8];
                6'd41: frame_byte = UDP_CHECKSUM[7:0];
                6'd42: frame_byte = seq_cnt[31:24];
                6'd43: frame_byte = seq_cnt[23:16];
                6'd44: frame_byte = seq_cnt[15:8];
                6'd45: frame_byte = seq_cnt[7:0];
                6'd46: frame_byte = cmd_addr[31:24];
                6'd47: frame_byte = cmd_addr[23:16];
                6'd48: frame_byte = cmd_addr[15:8];
                6'd49: frame_byte = cmd_addr[7:0];
                6'd50: frame_byte = cmd_data[31:24];
                6'd51: frame_byte = cmd_data[23:16];
                6'd52: frame_byte = cmd_data[15:8];
                6'd53: frame_byte = cmd_data[7:0];
                6'd54: frame_byte = 8'h00;
                6'd55: frame_byte = 8'h00;
                6'd56: frame_byte = 8'h00;
                6'd57: frame_byte = 8'h00;
                6'd58: frame_byte = 8'h00;
                default: frame_byte = 8'h00;
            endcase
        end
    endfunction

    function [63:0] pack_beat;
        input [2:0] beat;
        reg [5:0] base;
        begin
            base = {beat, 3'b000};
            pack_beat = {
                frame_byte(base + 6'd7),
                frame_byte(base + 6'd6),
                frame_byte(base + 6'd5),
                frame_byte(base + 6'd4),
                frame_byte(base + 6'd3),
                frame_byte(base + 6'd2),
                frame_byte(base + 6'd1),
                frame_byte(base + 6'd0)
            };
        end
    endfunction

    always @(posedge clk) begin
        if (rst) begin
            state          <= ST_IDLE;
            beat_idx       <= 3'd0;
            cmd_addr       <= 32'd0;
            cmd_data       <= 32'd0;
            seq_cnt        <= 32'd0;
            tx_frame_count <= 32'd0;
            fifo_rd_en     <= 1'b0;
            tx_axis_tdata  <= 64'd0;
            tx_axis_tkeep  <= 8'd0;
            tx_axis_tvalid <= 1'b0;
            tx_axis_tlast  <= 1'b0;
        end else begin
            fifo_rd_en <= 1'b0;

            case (state)
                ST_IDLE: begin
                    tx_axis_tvalid <= 1'b0;
                    tx_axis_tlast  <= 1'b0;
                    tx_axis_tkeep  <= 8'd0;
                    beat_idx       <= 3'd0;

                    if (!fifo_empty) begin
                        fifo_rd_en <= 1'b1;
                        state      <= ST_LATCH;
                    end
                end

                ST_LATCH: begin
                    cmd_addr <= fifo_rd_data[63:32];
                    cmd_data <= fifo_rd_data[31:0];
                    state     <= ST_SEND;
                end

                ST_SEND: begin
                    if (!tx_axis_tvalid || tx_axis_tready) begin
                        tx_axis_tvalid <= 1'b1;
                        tx_axis_tdata  <= pack_beat(beat_idx);
                        tx_axis_tlast  <= (beat_idx == 3'd7);
                        tx_axis_tkeep  <= (beat_idx == 3'd7) ? 8'h0F : 8'hFF;

                        if (beat_idx == 3'd7) begin
                            seq_cnt        <= seq_cnt + 1'b1;
                            tx_frame_count <= tx_frame_count + 1'b1;
                            state          <= ST_IDLE;
                        end else begin
                            beat_idx <= beat_idx + 1'b1;
                        end
                    end
                end

                default: state <= ST_IDLE;
            endcase
        end
    end

endmodule
