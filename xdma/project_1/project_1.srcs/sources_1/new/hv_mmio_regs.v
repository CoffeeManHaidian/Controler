`timescale 1ns / 1ps

module hv_mmio_regs (
    input  wire        clk,
    input  wire        rst,
    input  wire        host_wr_en,
    input  wire [31:0] host_wr_addr,
    input  wire [31:0] host_wr_data,
    input  wire        host_rd_en,
    input  wire [31:0] host_rd_addr,
    output reg  [31:0] host_rd_data,
    output reg         start_loopback,
    output reg         clear_status,
    output reg  [6:0]  tx_word_count,
    output reg  [15:0] tx_frame_id,
    input  wire        tx_busy,
    input  wire        tx_frame_done,
    input  wire [6:0]  tx_sent_count,
    input  wire        rx_done,
    input  wire [15:0] rx_frame_id,
    input  wire [7:0]  rx_error_count,
    input  wire [6:0]  rx_capture_count,
    output wire [6:0]  rx_buf_raddr,
    input  wire [31:0] rx_buf_rdata,
    input  wire [6:0]  tx_buf_index,
    output wire [31:0] tx_buf_rdata
);

localparam [31:0] TX_BRAM_BASE    = 32'h0000_0000;
localparam [31:0] RX_BRAM_BASE    = 32'h0000_1000;
localparam [31:0] REG_CTRL        = 32'h0000_4000;
localparam [31:0] REG_TX_WORD_CNT = 32'h0000_4004;
localparam [31:0] REG_TX_FRAME_ID = 32'h0000_4008;
localparam [31:0] REG_RX_DONE     = 32'h0000_400C;
localparam [31:0] REG_RX_FRAME_ID = 32'h0000_4010;
localparam [31:0] REG_RX_ERR_CNT  = 32'h0000_4014;
localparam [31:0] REG_RX_CAP_CNT  = 32'h0000_4018;
localparam [31:0] REG_TX_BUSY     = 32'h0000_401C;
localparam [31:0] REG_TX_DONE     = 32'h0000_4020;
localparam [31:0] REG_TX_SENT_CNT = 32'h0000_4024;

reg [31:0] tx_mem [0:99];
reg        tx_done_sticky;
reg [6:0]  tx_sent_count_latched;

wire [6:0] host_tx_index;

assign host_tx_index = host_wr_addr[8:2];
assign tx_buf_rdata  = tx_mem[tx_buf_index];
assign rx_buf_raddr  = host_rd_addr[8:2];

integer i;

always @(posedge clk) begin
    if (rst) begin
        start_loopback <= 1'b0;
        clear_status   <= 1'b0;
        tx_word_count  <= 7'd97;
        tx_frame_id    <= 16'h0001;
        tx_done_sticky <= 1'b0;
        tx_sent_count_latched <= 7'd0;
        for (i = 0; i < 100; i = i + 1) begin
            tx_mem[i] <= 32'h0000_0000;
        end
    end else begin
        start_loopback <= 1'b0;
        clear_status   <= 1'b0;

        if (tx_frame_done) begin
            tx_done_sticky       <= 1'b1;
            tx_sent_count_latched <= tx_sent_count;
        end

        if (host_wr_en) begin
            if ((host_wr_addr >= TX_BRAM_BASE) &&
                (host_wr_addr < (TX_BRAM_BASE + 32'd400))) begin
                tx_mem[host_tx_index] <= host_wr_data;
            end else begin
                case (host_wr_addr)
                    REG_CTRL: begin
                        start_loopback <= host_wr_data[0];
                        clear_status   <= host_wr_data[1];
                        if (host_wr_data[0]) begin
                            tx_done_sticky <= 1'b0;
                        end
                        if (host_wr_data[1]) begin
                            tx_done_sticky <= 1'b0;
                            tx_sent_count_latched <= 7'd0;
                        end
                    end
                    REG_TX_WORD_CNT: tx_word_count <= host_wr_data[6:0];
                    REG_TX_FRAME_ID: tx_frame_id   <= host_wr_data[15:0];
                endcase
            end
        end
    end
end

always @(*) begin
    host_rd_data = 32'h0000_0000;

    if (host_rd_en) begin
        if ((host_rd_addr >= TX_BRAM_BASE) &&
            (host_rd_addr < (TX_BRAM_BASE + 32'd400))) begin
            host_rd_data = tx_mem[host_rd_addr[8:2]];
        end else if ((host_rd_addr >= RX_BRAM_BASE) &&
                     (host_rd_addr < (RX_BRAM_BASE + 32'd400))) begin
            host_rd_data = rx_buf_rdata;
        end else begin
            case (host_rd_addr)
                REG_CTRL:        host_rd_data = 32'h0000_0000;
                REG_TX_WORD_CNT: host_rd_data = {25'd0, tx_word_count};
                REG_TX_FRAME_ID: host_rd_data = {16'h0000, tx_frame_id};
                REG_RX_DONE:     host_rd_data = {31'd0, rx_done};
                REG_RX_FRAME_ID: host_rd_data = {16'h0000, rx_frame_id};
                REG_RX_ERR_CNT:  host_rd_data = {24'h000000, rx_error_count};
                REG_RX_CAP_CNT:  host_rd_data = {25'd0, rx_capture_count};
                REG_TX_BUSY:     host_rd_data = {31'd0, tx_busy};
                REG_TX_DONE:     host_rd_data = {31'd0, tx_done_sticky};
                REG_TX_SENT_CNT: host_rd_data = {25'd0, tx_sent_count_latched};
                default:         host_rd_data = 32'h0000_0000;
            endcase
        end
    end
end

endmodule
