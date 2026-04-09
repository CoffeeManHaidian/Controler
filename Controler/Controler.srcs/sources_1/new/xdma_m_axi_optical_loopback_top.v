module xdma_m_axi_optical_loopback_top #(
    parameter ENABLE_LOOPBACK_DEBUG = 1'b1,
    parameter AXI_ADDR_WIDTH = 64,
    parameter AXI_DATA_WIDTH = 128
) (
    input  wire                      axi_aclk,
    input  wire                      axi_aresetn,

    input  wire [AXI_ADDR_WIDTH-1:0] m_axi_awaddr,
    input  wire [3:0]                m_axi_awid,
    input  wire [7:0]                m_axi_awlen,
    input  wire [2:0]                m_axi_awsize,
    input  wire [1:0]                m_axi_awburst,
    input  wire                      m_axi_awvalid,
    output wire                      m_axi_awready,

    input  wire [AXI_DATA_WIDTH-1:0] m_axi_wdata,
    input  wire [(AXI_DATA_WIDTH/8)-1:0] m_axi_wstrb,
    input  wire                      m_axi_wlast,
    input  wire                      m_axi_wvalid,
    output wire                      m_axi_wready,

    output wire [1:0]                m_axi_bresp,
    output wire [3:0]                m_axi_bid,
    output wire                      m_axi_bvalid,
    input  wire                      m_axi_bready,

    input  wire [AXI_ADDR_WIDTH-1:0] m_axi_araddr,
    input  wire [3:0]                m_axi_arid,
    input  wire [7:0]                m_axi_arlen,
    input  wire [2:0]                m_axi_arsize,
    input  wire [1:0]                m_axi_arburst,
    input  wire                      m_axi_arvalid,
    output wire                      m_axi_arready,

    output wire [AXI_DATA_WIDTH-1:0] m_axi_rdata,
    output wire [3:0]                m_axi_rid,
    output wire [1:0]                m_axi_rresp,
    output wire                      m_axi_rlast,
    output wire                      m_axi_rvalid,
    input  wire                      m_axi_rready,

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

    wire [31:0] axil_awaddr;
    wire [2:0]  axil_awprot;
    wire        axil_awvalid;
    wire        axil_awready;
    wire [31:0] axil_wdata;
    wire [3:0]  axil_wstrb;
    wire        axil_wvalid;
    wire        axil_wready;
    wire [1:0]  axil_bresp;
    wire        axil_bvalid;
    wire        axil_bready;
    wire [31:0] axil_araddr;
    wire [2:0]  axil_arprot;
    wire        axil_arvalid;
    wire        axil_arready;
    wire [31:0] axil_rdata;
    wire [1:0]  axil_rresp;
    wire        axil_rvalid;
    wire        axil_rready;

    assign m_axi_bid = m_axi_awid;
    assign m_axi_rid = m_axi_arid;

    axi_mm_to_axil_bridge #(
        .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),
        .AXI_DATA_WIDTH(AXI_DATA_WIDTH)
    ) u_axi_mm_to_axil_bridge (
        .aclk         (axi_aclk),
        .aresetn      (axi_aresetn),
        .s_axi_awaddr (m_axi_awaddr),
        .s_axi_awlen  (m_axi_awlen),
        .s_axi_awsize (m_axi_awsize),
        .s_axi_awburst(m_axi_awburst),
        .s_axi_awvalid(m_axi_awvalid),
        .s_axi_awready(m_axi_awready),
        .s_axi_wdata  (m_axi_wdata),
        .s_axi_wstrb  (m_axi_wstrb),
        .s_axi_wlast  (m_axi_wlast),
        .s_axi_wvalid (m_axi_wvalid),
        .s_axi_wready (m_axi_wready),
        .s_axi_bresp  (m_axi_bresp),
        .s_axi_bvalid (m_axi_bvalid),
        .s_axi_bready (m_axi_bready),
        .s_axi_araddr (m_axi_araddr),
        .s_axi_arlen  (m_axi_arlen),
        .s_axi_arsize (m_axi_arsize),
        .s_axi_arburst(m_axi_arburst),
        .s_axi_arvalid(m_axi_arvalid),
        .s_axi_arready(m_axi_arready),
        .s_axi_rdata  (m_axi_rdata),
        .s_axi_rresp  (m_axi_rresp),
        .s_axi_rlast  (m_axi_rlast),
        .s_axi_rvalid (m_axi_rvalid),
        .s_axi_rready (m_axi_rready),
        .m_axil_awaddr(axil_awaddr),
        .m_axil_awprot(axil_awprot),
        .m_axil_awvalid(axil_awvalid),
        .m_axil_awready(axil_awready),
        .m_axil_wdata (axil_wdata),
        .m_axil_wstrb (axil_wstrb),
        .m_axil_wvalid(axil_wvalid),
        .m_axil_wready(axil_wready),
        .m_axil_bresp (axil_bresp),
        .m_axil_bvalid(axil_bvalid),
        .m_axil_bready(axil_bready),
        .m_axil_araddr(axil_araddr),
        .m_axil_arprot(axil_arprot),
        .m_axil_arvalid(axil_arvalid),
        .m_axil_arready(axil_arready),
        .m_axil_rdata (axil_rdata),
        .m_axil_rresp (axil_rresp),
        .m_axil_rvalid(axil_rvalid),
        .m_axil_rready(axil_rready)
    );

    pcie_cmd_to_optical_axil_loopback_top #(
        .ENABLE_LOOPBACK_DEBUG(ENABLE_LOOPBACK_DEBUG)
    ) u_axil_loopback_top (
        .s_axil_aclk       (axi_aclk),
        .s_axil_aresetn    (axi_aresetn),
        .s_axil_awaddr     (axil_awaddr),
        .s_axil_awprot     (axil_awprot),
        .s_axil_awvalid    (axil_awvalid),
        .s_axil_awready    (axil_awready),
        .s_axil_wdata      (axil_wdata),
        .s_axil_wstrb      (axil_wstrb),
        .s_axil_wvalid     (axil_wvalid),
        .s_axil_wready     (axil_wready),
        .s_axil_bresp      (axil_bresp),
        .s_axil_bvalid     (axil_bvalid),
        .s_axil_bready     (axil_bready),
        .s_axil_araddr     (axil_araddr),
        .s_axil_arprot     (axil_arprot),
        .s_axil_arvalid    (axil_arvalid),
        .s_axil_arready    (axil_arready),
        .s_axil_rdata      (axil_rdata),
        .s_axil_rresp      (axil_rresp),
        .s_axil_rvalid     (axil_rvalid),
        .s_axil_rready     (axil_rready),
        .GTREFCLK1_P       (GTREFCLK1_P),
        .GTREFCLK1_N       (GTREFCLK1_N),
        .SFP_RX_P          (SFP_RX_P),
        .SFP_RX_N          (SFP_RX_N),
        .SFP_TX_P          (SFP_TX_P),
        .SFP_TX_N          (SFP_TX_N),
        .SFP_TXFAULT       (SFP_TXFAULT),
        .SFP_LOS           (SFP_LOS),
        .SFP_TXDISABLE     (SFP_TXDISABLE),
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
