module custom_optical_tx_bram #(
    parameter ADDR_WIDTH = 8
) (
    input  wire                   clk,
    input  wire                   rst,
    input  wire                   clear_counters,
    input  wire                   tx_enable,
    input  wire                   tx_start_pulse,
    input  wire [15:0]            cmd_count,
    output reg                    bram_rd_en,
    output reg  [ADDR_WIDTH-1:0]  bram_rd_addr,
    input  wire [63:0]            bram_rd_data,

    output reg  [63:0] tx_data,
    output reg  [7:0]  tx_keep,
    output reg         tx_valid,
    output reg         tx_last,
    input  wire        tx_ready,
    output reg  [31:0] tx_frame_count
);

    localparam [15:0] SOF = 16'h55AA;
    localparam [15:0] EOF = 16'hAA55;

    localparam ST_IDLE  = 3'd0;
    localparam ST_FETCH = 3'd1;
    localparam ST_SEND0 = 3'd2;
    localparam ST_SEND1 = 3'd3;
    localparam ST_SEND2 = 3'd4;

    reg [2:0]  state;
    reg [31:0] seq_cnt;
    reg [15:0] cmd_index;
    reg [31:0] cmd_addr;
    reg [31:0] cmd_data;
    reg [15:0] crc16;

    function [15:0] calc_crc16;
        input [31:0] seq;
        input [31:0] addr;
        input [31:0] data;
        begin
            calc_crc16 = seq[31:16] ^ seq[15:0] ^ addr[31:16] ^ addr[15:0] ^ data[31:16] ^ data[15:0];
        end
    endfunction

    always @(posedge clk) begin
        if (rst || clear_counters) begin
            state          <= ST_IDLE;
            seq_cnt        <= 32'd0;
            cmd_index      <= 16'd0;
            cmd_addr       <= 32'd0;
            cmd_data       <= 32'd0;
            crc16          <= 16'd0;
            bram_rd_en     <= 1'b0;
            bram_rd_addr   <= {ADDR_WIDTH{1'b0}};
            tx_data        <= 64'd0;
            tx_keep        <= 8'd0;
            tx_valid       <= 1'b0;
            tx_last        <= 1'b0;
            tx_frame_count <= 32'd0;
        end else begin
            bram_rd_en <= 1'b0;

            case (state)
                ST_IDLE: begin
                    tx_valid <= 1'b0;
                    tx_last  <= 1'b0;
                    tx_keep  <= 8'd0;
                    if (tx_start_pulse && tx_enable && (cmd_count != 0)) begin
                        cmd_index    <= 16'd0;
                        bram_rd_addr <= {ADDR_WIDTH{1'b0}};
                        bram_rd_en   <= 1'b1;
                        state        <= ST_FETCH;
                    end
                end

                ST_FETCH: begin
                    cmd_addr <= bram_rd_data[63:32];
                    cmd_data <= bram_rd_data[31:0];
                    crc16    <= calc_crc16(seq_cnt, bram_rd_data[63:32], bram_rd_data[31:0]);
                    state    <= ST_SEND0;
                end

                ST_SEND0: begin
                    if (!tx_valid || tx_ready) begin
                        tx_data  <= {SOF, 16'h0000, seq_cnt};
                        tx_keep  <= 8'hFF;
                        tx_valid <= 1'b1;
                        tx_last  <= 1'b0;
                        state    <= ST_SEND1;
                    end
                end

                ST_SEND1: begin
                    if (!tx_valid || tx_ready) begin
                        tx_data  <= {cmd_addr, cmd_data};
                        tx_keep  <= 8'hFF;
                        tx_valid <= 1'b1;
                        tx_last  <= 1'b0;
                        state    <= ST_SEND2;
                    end
                end

                ST_SEND2: begin
                    if (!tx_valid || tx_ready) begin
                        tx_data  <= {crc16, EOF, 32'h0000_0000};
                        tx_keep  <= 8'hFF;
                        tx_valid <= 1'b1;
                        tx_last  <= 1'b1;
                        seq_cnt  <= seq_cnt + 1'b1;
                        tx_frame_count <= tx_frame_count + 1'b1;

                        if ((cmd_index + 1'b1) < cmd_count) begin
                            cmd_index    <= cmd_index + 1'b1;
                            bram_rd_addr <= cmd_index + 1'b1;
                            bram_rd_en   <= 1'b1;
                            state        <= ST_FETCH;
                        end else begin
                            state        <= ST_IDLE;
                        end
                    end
                end

                default: state <= ST_IDLE;
            endcase
        end
    end

endmodule
