module pcie_cmd_to_optical_axil_loopback_top #(
    parameter ENABLE_LOOPBACK_DEBUG = 1'b1
) (
    input  wire        s_axil_aclk,
    input  wire        s_axil_aresetn,

    input  wire [31:0] s_axil_awaddr,
    input  wire [2:0]  s_axil_awprot,
    input  wire        s_axil_awvalid,
    output wire        s_axil_awready,

    input  wire [31:0] s_axil_wdata,
    input  wire [3:0]  s_axil_wstrb,
    input  wire        s_axil_wvalid,
    output wire        s_axil_wready,

    output wire [1:0]  s_axil_bresp,
    output wire        s_axil_bvalid,
    input  wire        s_axil_bready,

    input  wire [31:0] s_axil_araddr,
    input  wire [2:0]  s_axil_arprot,
    input  wire        s_axil_arvalid,
    output wire        s_axil_arready,

    output wire [31:0] s_axil_rdata,
    output wire [1:0]  s_axil_rresp,
    output wire        s_axil_rvalid,
    input  wire        s_axil_rready,

    input  wire        GTREFCLK1_P,
    input  wire        GTREFCLK1_N,
    input  wire        SFP_RX_P,
    input  wire        SFP_RX_N,
    output wire        SFP_TX_P,
    output wire        SFP_TX_N,
    input  wire        SFP_TXFAULT,
    input  wire        SFP_LOS,
    output wire        SFP_TXDISABLE,

    output wire [31:0] status_reg,
    output wire [31:0] tx_frame_count,
    output wire [31:0] optical_status,
    output wire [31:0] gtx_tx_word_count,
    output wire [31:0] phy_debug_status,
    output wire [31:0] rx_frame_count,
    output wire [31:0] crc_error_count,
    output wire [31:0] format_error_count,
    output wire [31:0] match_count,
    output wire [31:0] last_rx_seq,
    output wire [31:0] last_rx_addr,
    output wire [31:0] last_rx_data,
    output wire [31:0] board_test_status
);

    wire        host_wr_en;
    wire [31:0] host_wr_addr;
    wire [31:0] host_wr_data;
    wire        host_rd_en;
    wire [31:0] host_rd_addr;
    wire [31:0] host_rd_data;

    axil_to_host_regs u_axil_to_host_regs (
        .s_axi_aclk    (s_axil_aclk),
        .s_axi_aresetn (s_axil_aresetn),
        .s_axi_awaddr  (s_axil_awaddr),
        .s_axi_awprot  (s_axil_awprot),
        .s_axi_awvalid (s_axil_awvalid),
        .s_axi_awready (s_axil_awready),
        .s_axi_wdata   (s_axil_wdata),
        .s_axi_wstrb   (s_axil_wstrb),
        .s_axi_wvalid  (s_axil_wvalid),
        .s_axi_wready  (s_axil_wready),
        .s_axi_bresp   (s_axil_bresp),
        .s_axi_bvalid  (s_axil_bvalid),
        .s_axi_bready  (s_axil_bready),
        .s_axi_araddr  (s_axil_araddr),
        .s_axi_arprot  (s_axil_arprot),
        .s_axi_arvalid (s_axil_arvalid),
        .s_axi_arready (s_axil_arready),
        .s_axi_rdata   (s_axil_rdata),
        .s_axi_rresp   (s_axil_rresp),
        .s_axi_rvalid  (s_axil_rvalid),
        .s_axi_rready  (s_axil_rready),
        .host_wr_en    (host_wr_en),
        .host_wr_addr  (host_wr_addr),
        .host_wr_data  (host_wr_data),
        .host_rd_en    (host_rd_en),
        .host_rd_addr  (host_rd_addr),
        .host_rd_data  (host_rd_data)
    );

    pcie_cmd_to_optical_host_loopback_top #(
        .ENABLE_LOOPBACK_DEBUG(ENABLE_LOOPBACK_DEBUG)
    ) u_host_loopback_top (
        .SYSCLK_I          (s_axil_aclk),
        .GTREFCLK1_P       (GTREFCLK1_P),
        .GTREFCLK1_N       (GTREFCLK1_N),
        .SFP_RX_P          (SFP_RX_P),
        .SFP_RX_N          (SFP_RX_N),
        .SFP_TX_P          (SFP_TX_P),
        .SFP_TX_N          (SFP_TX_N),
        .SFP_TXFAULT       (SFP_TXFAULT),
        .SFP_LOS           (SFP_LOS),
        .SFP_TXDISABLE     (SFP_TXDISABLE),
        .rst               (~s_axil_aresetn),
        .host_wr_en        (host_wr_en),
        .host_wr_addr      (host_wr_addr),
        .host_wr_data      (host_wr_data),
        .host_rd_en        (host_rd_en),
        .host_rd_addr      (host_rd_addr),
        .host_rd_data      (host_rd_data),
        .status_reg        (status_reg),
        .tx_frame_count    (tx_frame_count),
        .optical_status    (optical_status),
        .gtx_tx_word_count (gtx_tx_word_count),
        .phy_debug_status  (phy_debug_status),
        .rx_frame_count    (rx_frame_count),
        .crc_error_count   (crc_error_count),
        .format_error_count(format_error_count),
        .match_count       (match_count),
        .last_rx_seq       (last_rx_seq),
        .last_rx_addr      (last_rx_addr),
        .last_rx_data      (last_rx_data),
        .board_test_status (board_test_status)
    );

endmodule
