module pcie_xdma_axil_sfp_loopback_top #(
    parameter ENABLE_LOOPBACK_DEBUG = 1'b1
) (
    input  wire [7:0] pcie_mgt_rxn,
    input  wire [7:0] pcie_mgt_rxp,
    output wire [7:0] pcie_mgt_txn,
    output wire [7:0] pcie_mgt_txp,
    input  wire [0:0] sys_clk_clk_n,
    input  wire [0:0] sys_clk_clk_p,
    input  wire       sys_rst,
    output wire       user_lnk_up,

    input  wire       GTREFCLK1_P,
    input  wire       GTREFCLK1_N,
    input  wire       SFP_RX_P,
    input  wire       SFP_RX_N,
    output wire       SFP_TX_P,
    output wire       SFP_TX_N,
    input  wire       SFP_TXFAULT,
    input  wire       SFP_LOS,
    output wire       SFP_TXDISABLE
);

    wire        xdma_sys_clk;
    wire        axi_aclk;
    wire        axi_aresetn;
    wire [0:0]  usr_irq_req;
    wire [0:0]  usr_irq_ack;
    wire        msi_enable;
    wire [2:0]  msi_vector_width;

    // The XDMA core still exposes its AXI MM DMA interface even when the
    // PCIe-to-AXI-Lite master is enabled. We do not use the DMA path in this
    // top, so keep the response side tied to an idle slave to avoid floating
    // inputs on the core.
    wire [3:0]  m_axi_awid_unused;
    wire [63:0] m_axi_awaddr_unused;
    wire [7:0]  m_axi_awlen_unused;
    wire [2:0]  m_axi_awsize_unused;
    wire [1:0]  m_axi_awburst_unused;
    wire [2:0]  m_axi_awprot_unused;
    wire        m_axi_awvalid_unused;
    wire        m_axi_awlock_unused;
    wire [3:0]  m_axi_awcache_unused;
    wire [127:0] m_axi_wdata_unused;
    wire [15:0]  m_axi_wstrb_unused;
    wire         m_axi_wlast_unused;
    wire         m_axi_wvalid_unused;
    wire         m_axi_bready_unused;
    wire [3:0]   m_axi_arid_unused;
    wire [63:0]  m_axi_araddr_unused;
    wire [7:0]   m_axi_arlen_unused;
    wire [2:0]   m_axi_arsize_unused;
    wire [1:0]   m_axi_arburst_unused;
    wire [2:0]   m_axi_arprot_unused;
    wire         m_axi_arvalid_unused;
    wire         m_axi_arlock_unused;
    wire [3:0]   m_axi_arcache_unused;
    wire         m_axi_rready_unused;

    wire [31:0] m_axil_awaddr;
    wire [2:0]  m_axil_awprot;
    wire        m_axil_awvalid;
    wire        m_axil_awready;

    wire [31:0] m_axil_wdata;
    wire [3:0]  m_axil_wstrb;
    wire        m_axil_wvalid;
    wire        m_axil_wready;

    wire [1:0]  m_axil_bresp;
    wire        m_axil_bvalid;
    wire        m_axil_bready;

    wire [31:0] m_axil_araddr;
    wire [2:0]  m_axil_arprot;
    wire        m_axil_arvalid;
    wire        m_axil_arready;

    wire [31:0] m_axil_rdata;
    wire [1:0]  m_axil_rresp;
    wire        m_axil_rvalid;
    wire        m_axil_rready;

    wire [31:0] status_reg;
    wire [31:0] tx_frame_count;
    wire [31:0] optical_status;
    wire [31:0] gtx_tx_word_count;
    wire [31:0] phy_debug_status;
    wire [31:0] rx_frame_count;
    wire [31:0] crc_error_count;
    wire [31:0] format_error_count;
    wire [31:0] match_count;
    wire [31:0] last_rx_seq;
    wire [31:0] last_rx_addr;
    wire [31:0] last_rx_data;
    wire [31:0] board_test_status;

    assign usr_irq_req = 1'b0;

    IBUFDS_GTE2 u_pcie_refclk_buf (
        .I    (sys_clk_clk_p[0]),
        .IB   (sys_clk_clk_n[0]),
        .CEB  (1'b0),
        .O    (xdma_sys_clk),
        .ODIV2()
    );

    xdma_sys_xdma_0_0 u_xdma_0 (
        .sys_clk          (xdma_sys_clk),
        .sys_rst_n        (sys_rst),
        .user_lnk_up      (user_lnk_up),
        .pci_exp_txp      (pcie_mgt_txp),
        .pci_exp_txn      (pcie_mgt_txn),
        .pci_exp_rxp      (pcie_mgt_rxp),
        .pci_exp_rxn      (pcie_mgt_rxn),
        .axi_aclk         (axi_aclk),
        .axi_aresetn      (axi_aresetn),
        .usr_irq_req      (usr_irq_req),
        .usr_irq_ack      (usr_irq_ack),
        .msi_enable       (msi_enable),
        .msi_vector_width (msi_vector_width),
        .m_axi_awready    (1'b0),
        .m_axi_wready     (1'b0),
        .m_axi_bid        (4'd0),
        .m_axi_bresp      (2'b00),
        .m_axi_bvalid     (1'b0),
        .m_axi_arready    (1'b0),
        .m_axi_rid        (4'd0),
        .m_axi_rdata      (128'd0),
        .m_axi_rresp      (2'b00),
        .m_axi_rlast      (1'b0),
        .m_axi_rvalid     (1'b0),
        .m_axi_awid       (m_axi_awid_unused),
        .m_axi_awaddr     (m_axi_awaddr_unused),
        .m_axi_awlen      (m_axi_awlen_unused),
        .m_axi_awsize     (m_axi_awsize_unused),
        .m_axi_awburst    (m_axi_awburst_unused),
        .m_axi_awprot     (m_axi_awprot_unused),
        .m_axi_awvalid    (m_axi_awvalid_unused),
        .m_axi_awlock     (m_axi_awlock_unused),
        .m_axi_awcache    (m_axi_awcache_unused),
        .m_axi_wdata      (m_axi_wdata_unused),
        .m_axi_wstrb      (m_axi_wstrb_unused),
        .m_axi_wlast      (m_axi_wlast_unused),
        .m_axi_wvalid     (m_axi_wvalid_unused),
        .m_axi_bready     (m_axi_bready_unused),
        .m_axi_arid       (m_axi_arid_unused),
        .m_axi_araddr     (m_axi_araddr_unused),
        .m_axi_arlen      (m_axi_arlen_unused),
        .m_axi_arsize     (m_axi_arsize_unused),
        .m_axi_arburst    (m_axi_arburst_unused),
        .m_axi_arprot     (m_axi_arprot_unused),
        .m_axi_arvalid    (m_axi_arvalid_unused),
        .m_axi_arlock     (m_axi_arlock_unused),
        .m_axi_arcache    (m_axi_arcache_unused),
        .m_axi_rready     (m_axi_rready_unused),
        .m_axil_awaddr    (m_axil_awaddr),
        .m_axil_awprot    (m_axil_awprot),
        .m_axil_awvalid   (m_axil_awvalid),
        .m_axil_awready   (m_axil_awready),
        .m_axil_wdata     (m_axil_wdata),
        .m_axil_wstrb     (m_axil_wstrb),
        .m_axil_wvalid    (m_axil_wvalid),
        .m_axil_wready    (m_axil_wready),
        .m_axil_bresp     (m_axil_bresp),
        .m_axil_bvalid    (m_axil_bvalid),
        .m_axil_bready    (m_axil_bready),
        .m_axil_araddr    (m_axil_araddr),
        .m_axil_arprot    (m_axil_arprot),
        .m_axil_arvalid   (m_axil_arvalid),
        .m_axil_arready   (m_axil_arready),
        .m_axil_rdata     (m_axil_rdata),
        .m_axil_rresp     (m_axil_rresp),
        .m_axil_rvalid    (m_axil_rvalid),
        .m_axil_rready    (m_axil_rready)
    );

    xdma_m_axil_optical_loopback_top #(
        .ENABLE_LOOPBACK_DEBUG(ENABLE_LOOPBACK_DEBUG)
    ) u_xdma_m_axil_optical_loopback_top (
        .axil_aclk         (axi_aclk),
        .axil_aresetn      (axi_aresetn),
        .m_axil_awaddr     (m_axil_awaddr),
        .m_axil_awprot     (m_axil_awprot),
        .m_axil_awvalid    (m_axil_awvalid),
        .m_axil_awready    (m_axil_awready),
        .m_axil_wdata      (m_axil_wdata),
        .m_axil_wstrb      (m_axil_wstrb),
        .m_axil_wvalid     (m_axil_wvalid),
        .m_axil_wready     (m_axil_wready),
        .m_axil_bresp      (m_axil_bresp),
        .m_axil_bvalid     (m_axil_bvalid),
        .m_axil_bready     (m_axil_bready),
        .m_axil_araddr     (m_axil_araddr),
        .m_axil_arprot     (m_axil_arprot),
        .m_axil_arvalid    (m_axil_arvalid),
        .m_axil_arready    (m_axil_arready),
        .m_axil_rdata      (m_axil_rdata),
        .m_axil_rresp      (m_axil_rresp),
        .m_axil_rvalid     (m_axil_rvalid),
        .m_axil_rready     (m_axil_rready),
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
