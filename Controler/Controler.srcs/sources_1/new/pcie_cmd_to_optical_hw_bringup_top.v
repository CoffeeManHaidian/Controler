module pcie_cmd_to_optical_hw_bringup_top #(
    parameter ENABLE_LOOPBACK_DEBUG = 1'b1
) (
    input  wire SYSCLK_I,
    input  wire GTREFCLK1_P,
    input  wire GTREFCLK1_N,
    input  wire SFP_RX_P,
    input  wire SFP_RX_N,
    output wire SFP_TX_P,
    output wire SFP_TX_N,
    input  wire SFP_TXFAULT,
    input  wire SFP_LOS,
    output wire SFP_TXDISABLE
);

    localparam ST_RESET  = 3'd0;
    localparam ST_ADDR   = 3'd1;
    localparam ST_DATA   = 3'd2;
    localparam ST_COMMIT = 3'd3;
    localparam ST_WAIT   = 3'd4;

    reg [2:0]  state = ST_RESET;
    reg [31:0] reset_cnt = 32'd0;
    reg [23:0] wait_cnt = 24'd0;
    reg        rst = 1'b1;
    reg        pcie_wr_en = 1'b0;
    reg [31:0] pcie_wr_addr = 32'd0;
    reg [31:0] pcie_wr_data = 32'd0;
    reg [31:0] addr_counter = 32'd4;
    reg [31:0] data_counter = 32'd1;

    (* mark_debug = "true" *) wire [31:0] status_reg_dbg;
    (* mark_debug = "true" *) wire [31:0] tx_frame_count_dbg;
    (* mark_debug = "true" *) wire [31:0] optical_status_dbg;
    (* mark_debug = "true" *) wire [31:0] gtx_tx_word_count_dbg;
    (* mark_debug = "true" *) wire [31:0] phy_debug_status_dbg;
    (* mark_debug = "true" *) wire [31:0] rx_frame_count_dbg;
    (* mark_debug = "true" *) wire [31:0] crc_error_count_dbg;
    (* mark_debug = "true" *) wire [31:0] format_error_count_dbg;
    (* mark_debug = "true" *) wire [31:0] match_count_dbg;
    (* mark_debug = "true" *) wire [31:0] last_rx_seq_dbg;
    (* mark_debug = "true" *) wire [31:0] last_rx_addr_dbg;
    (* mark_debug = "true" *) wire [31:0] last_rx_data_dbg;
    (* mark_debug = "true" *) wire [31:0] board_test_status_dbg;

    always @(posedge SYSCLK_I) begin
        if (reset_cnt != 32'd5000) begin
            reset_cnt    <= reset_cnt + 1'b1;
            rst          <= 1'b1;
            state        <= ST_RESET;
            wait_cnt     <= 24'd0;
            pcie_wr_en   <= 1'b0;
            pcie_wr_addr <= 32'd0;
            pcie_wr_data <= 32'd0;
            addr_counter <= 32'd4;
            data_counter <= 32'd1;
        end else begin
            rst        <= 1'b0;
            pcie_wr_en <= 1'b0;

            case (state)
                ST_RESET: begin
                    state <= ST_ADDR;
                end

                ST_ADDR: begin
                    pcie_wr_en   <= 1'b1;
                    pcie_wr_addr <= 32'h0000_0000;
                    pcie_wr_data <= addr_counter;
                    state        <= ST_DATA;
                end

                ST_DATA: begin
                    pcie_wr_en   <= 1'b1;
                    pcie_wr_addr <= 32'h0000_0004;
                    pcie_wr_data <= data_counter;
                    state        <= ST_COMMIT;
                end

                ST_COMMIT: begin
                    pcie_wr_en   <= 1'b1;
                    pcie_wr_addr <= 32'h0000_0008;
                    pcie_wr_data <= 32'h0000_0001;
                    addr_counter <= addr_counter + 32'd4;
                    data_counter <= data_counter + 1'b1;
                    wait_cnt     <= 24'd0;
                    state        <= ST_WAIT;
                end

                ST_WAIT: begin
                    if (wait_cnt == 24'd5_000_000) begin
                        state <= ST_ADDR;
                    end else begin
                        wait_cnt <= wait_cnt + 1'b1;
                    end
                end

                default: state <= ST_RESET;
            endcase
        end
    end

    pcie_cmd_to_optical_board_top #(
        .ENABLE_LOOPBACK_DEBUG(ENABLE_LOOPBACK_DEBUG)
    ) u_board_top (
        .SYSCLK_I          (SYSCLK_I),
        .GTREFCLK1_P       (GTREFCLK1_P),
        .GTREFCLK1_N       (GTREFCLK1_N),
        .SFP_RX_P          (SFP_RX_P),
        .SFP_RX_N          (SFP_RX_N),
        .SFP_TX_P          (SFP_TX_P),
        .SFP_TX_N          (SFP_TX_N),
        .SFP_TXFAULT       (SFP_TXFAULT),
        .SFP_LOS           (SFP_LOS),
        .SFP_TXDISABLE     (SFP_TXDISABLE),
        .rst               (rst),
        .pcie_wr_en        (pcie_wr_en),
        .pcie_wr_addr      (pcie_wr_addr),
        .pcie_wr_data      (pcie_wr_data),
        .pcie_rd_en        (1'b0),
        .pcie_rd_addr      (32'd0),
        .pcie_rd_data      (),
        .status_reg        (status_reg_dbg),
        .tx_frame_count    (tx_frame_count_dbg),
        .optical_status    (optical_status_dbg),
        .gtx_tx_word_count (gtx_tx_word_count_dbg),
        .phy_debug_status  (phy_debug_status_dbg),
        .rx_frame_count    (rx_frame_count_dbg),
        .crc_error_count   (crc_error_count_dbg),
        .format_error_count(format_error_count_dbg),
        .match_count       (match_count_dbg),
        .last_rx_seq       (last_rx_seq_dbg),
        .last_rx_addr      (last_rx_addr_dbg),
        .last_rx_data      (last_rx_data_dbg),
        .board_test_status (board_test_status_dbg)
    );

endmodule
