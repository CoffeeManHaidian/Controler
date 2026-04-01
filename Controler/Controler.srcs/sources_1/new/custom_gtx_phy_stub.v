module custom_gtx_phy_stub (
    input  wire        sys_clk,
    input  wire        rst,

    input  wire [31:0] tx_data,
    input  wire        tx_valid,
    input  wire        tx_last,
    input  wire [1:0]  tx_word_index,

    input  wire        gt_refclk_p,
    input  wire        gt_refclk_n,
    input  wire        sfp_rx_p,
    input  wire        sfp_rx_n,
    output wire        sfp_tx_p,
    output wire        sfp_tx_n,

    output wire        phy_tx_resetdone,
    output wire        phy_rx_resetdone,
    output wire        phy_channel_up,
    output wire [31:0] phy_debug_status
);

    reg [31:0] tx_word_seen_cnt;
    reg [31:0] last_word_data;

    always @(posedge sys_clk) begin
        if (rst) begin
            tx_word_seen_cnt <= 32'd0;
            last_word_data   <= 32'd0;
        end else if (tx_valid) begin
            tx_word_seen_cnt <= tx_word_seen_cnt + 1'b1;
            last_word_data   <= tx_data;
        end
    end

    assign sfp_tx_p         = 1'b0;
    assign sfp_tx_n         = 1'b1;
    assign phy_tx_resetdone = ~rst;
    assign phy_rx_resetdone = ~rst;
    assign phy_channel_up   = ~rst;
    assign phy_debug_status = {
        4'd0,
        tx_word_index,
        tx_last,
        tx_valid,
        gt_refclk_p,
        gt_refclk_n,
        sfp_rx_p,
        sfp_rx_n,
        tx_word_seen_cnt[15:0]
    };

endmodule
