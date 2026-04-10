module pcie_bar_cmd_rx (
    input  wire        clk,
    input  wire        rst,
    input  wire        wr_en,
    input  wire [31:0] wr_addr,
    input  wire [31:0] wr_data,
    input  wire        rd_en,
    input  wire [31:0] rd_addr,
    output reg  [31:0] rd_data,
    output reg         fifo_wr_en,
    output reg  [63:0] fifo_wr_data,
    input  wire        fifo_full,
    output reg         tx_enable,
    output reg  [1:0]  test_mode,
    output reg         clear_status_pulse,
    output reg         tx_start_pulse,
    output reg  [15:0] cmd_bram_count,
    output wire [31:0] status_reg,
    input  wire        fifo_empty,
    input  wire [31:0] tx_frame_count,
    input  wire [31:0] rx_frame_count,
    input  wire [31:0] match_count,
    input  wire [31:0] crc_error_count,
    input  wire [31:0] format_error_count,
    input  wire [31:0] last_rx_seq,
    input  wire [31:0] last_rx_addr,
    input  wire [31:0] last_rx_data,
    input  wire [31:0] optical_status,
    input  wire [31:0] phy_debug_status,
    input  wire [31:0] board_test_status,
    input  wire [31:0] decode_status
);

    localparam ADDR_CMD_ADDR   = 32'h0000_0000;
    localparam ADDR_CMD_DATA   = 32'h0000_0004;
    localparam ADDR_CMD_CTRL   = 32'h0000_0008;
    localparam ADDR_CMD_CFG    = 32'h0000_000C;
    localparam ADDR_STATUS     = 32'h0000_0010;
    localparam ADDR_TX_COUNT   = 32'h0000_0014;
    localparam ADDR_RX_COUNT   = 32'h0000_0018;
    localparam ADDR_MATCH_CNT  = 32'h0000_001C;
    localparam ADDR_CRC_ERR    = 32'h0000_0020;
    localparam ADDR_FMT_ERR    = 32'h0000_0024;
    localparam ADDR_LAST_SEQ   = 32'h0000_0028;
    localparam ADDR_LAST_ADDR  = 32'h0000_002C;
    localparam ADDR_LAST_DATA  = 32'h0000_0030;
    localparam ADDR_OPT_STATUS = 32'h0000_0034;
    localparam ADDR_PHY_STATUS = 32'h0000_0038;
    localparam ADDR_BOARD_STAT = 32'h0000_003C;
    localparam ADDR_COMMIT_CNT = 32'h0000_0040;
    localparam ADDR_DECODE_STAT= 32'h0000_0044;
    localparam ADDR_CMD_COUNT  = 32'h0000_0048;

    reg [31:0] cmd_addr_reg;
    reg [31:0] cmd_data_reg;
    reg [31:0] commit_count;

    assign status_reg = {
        commit_count[23:0],
        test_mode,
        fifo_empty,
        fifo_full,
        tx_enable,
        3'b000
    };

    always @(posedge clk) begin
        if (rst) begin
            cmd_addr_reg <= 32'd0;
            cmd_data_reg <= 32'd0;
            commit_count <= 32'd0;
            fifo_wr_en   <= 1'b0;
            fifo_wr_data <= 64'd0;
            tx_enable    <= 1'b0;
            test_mode    <= 2'd0;
            clear_status_pulse <= 1'b0;
            tx_start_pulse <= 1'b0;
            cmd_bram_count <= 16'd0;
        end else begin
            fifo_wr_en          <= 1'b0;
            clear_status_pulse  <= 1'b0;
            tx_start_pulse      <= 1'b0;

            if (wr_en && (wr_addr == ADDR_CMD_ADDR)) begin
                cmd_addr_reg <= wr_data;
            end

            if (wr_en && (wr_addr == ADDR_CMD_DATA)) begin
                cmd_data_reg <= wr_data;
            end

            if (wr_en && (wr_addr == ADDR_CMD_CFG)) begin
                tx_enable <= wr_data[0];
                test_mode <= wr_data[9:8];
            end

            if (wr_en && (wr_addr == ADDR_CMD_COUNT)) begin
                cmd_bram_count <= wr_data[15:0];
            end

            if (wr_en && (wr_addr == ADDR_CMD_CTRL)) begin
                if (wr_data[1]) begin
                    clear_status_pulse <= 1'b1;
                    commit_count       <= 32'd0;
                end

                if (wr_data[0] && tx_enable) begin
                    tx_start_pulse <= 1'b1;
                    commit_count <= commit_count + 1'b1;
                end
            end
        end
    end

    always @(*) begin
        rd_data = 32'd0;

        if (rd_en) begin
            case (rd_addr)
                ADDR_CMD_ADDR:   rd_data = cmd_addr_reg;
                ADDR_CMD_DATA:   rd_data = cmd_data_reg;
                ADDR_CMD_CTRL:   rd_data = {30'd0, fifo_full, tx_enable};
                ADDR_CMD_CFG:    rd_data = {22'd0, test_mode, 6'd0, tx_enable};
                ADDR_STATUS:     rd_data = status_reg;
                ADDR_TX_COUNT:   rd_data = tx_frame_count;
                ADDR_RX_COUNT:   rd_data = rx_frame_count;
                ADDR_MATCH_CNT:  rd_data = match_count;
                ADDR_CRC_ERR:    rd_data = crc_error_count;
                ADDR_FMT_ERR:    rd_data = format_error_count;
                ADDR_LAST_SEQ:   rd_data = last_rx_seq;
                ADDR_LAST_ADDR:  rd_data = last_rx_addr;
                ADDR_LAST_DATA:  rd_data = last_rx_data;
                ADDR_OPT_STATUS: rd_data = optical_status;
                ADDR_PHY_STATUS: rd_data = phy_debug_status;
                ADDR_BOARD_STAT: rd_data = board_test_status;
                ADDR_COMMIT_CNT: rd_data = commit_count;
                ADDR_DECODE_STAT:rd_data = decode_status;
                ADDR_CMD_COUNT:  rd_data = {16'd0, cmd_bram_count};
                default:         rd_data = 32'd0;
            endcase
        end
    end

endmodule
