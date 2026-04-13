module pcie_xdma_sfp_loopback_top #(
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

    wire [3:0]  m_axi_awid;
    wire [63:0] m_axi_awaddr;
    wire [7:0]  m_axi_awlen;
    wire [2:0]  m_axi_awsize;
    wire [1:0]  m_axi_awburst;
    wire [2:0]  m_axi_awprot;
    wire        m_axi_awvalid;
    wire        m_axi_awready;
    wire        m_axi_awlock;
    wire [3:0]  m_axi_awcache;

    wire [127:0] m_axi_wdata;
    wire [15:0]  m_axi_wstrb;
    wire         m_axi_wlast;
    wire         m_axi_wvalid;
    wire         m_axi_wready;

    wire [3:0]  m_axi_bid;
    wire [1:0]  m_axi_bresp;
    wire        m_axi_bvalid;
    wire        m_axi_bready;

    wire [3:0]  m_axi_arid;
    wire [63:0] m_axi_araddr;
    wire [7:0]  m_axi_arlen;
    wire [2:0]  m_axi_arsize;
    wire [1:0]  m_axi_arburst;
    wire [2:0]  m_axi_arprot;
    wire        m_axi_arvalid;
    wire        m_axi_arready;
    wire        m_axi_arlock;
    wire [3:0]  m_axi_arcache;

    wire [3:0]   m_axi_rid;
    wire [127:0] m_axi_rdata;
    wire [1:0]   m_axi_rresp;
    wire         m_axi_rlast;
    wire         m_axi_rvalid;
    wire         m_axi_rready;

    // Keep status signals internal for the PCIe top. Host software reads them
    // back through the BAR/register path rather than through FPGA package pins.
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

    // Match the reference project's differential PCIe refclk handling.
    IBUFDS_GTE2 u_pcie_refclk_buf (
        .I   (sys_clk_clk_p[0]),
        .IB  (sys_clk_clk_n[0]),
        .CEB (1'b0),
        .O   (xdma_sys_clk),
        .ODIV2 ()
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
        .m_axi_awready    (m_axi_awready),
        .m_axi_wready     (m_axi_wready),
        .m_axi_bid        (m_axi_bid),
        .m_axi_bresp      (m_axi_bresp),
        .m_axi_bvalid     (m_axi_bvalid),
        .m_axi_arready    (m_axi_arready),
        .m_axi_rid        (m_axi_rid),
        .m_axi_rdata      (m_axi_rdata),
        .m_axi_rresp      (m_axi_rresp),
        .m_axi_rlast      (m_axi_rlast),
        .m_axi_rvalid     (m_axi_rvalid),
        .m_axi_awid       (m_axi_awid),
        .m_axi_awaddr     (m_axi_awaddr),
        .m_axi_awlen      (m_axi_awlen),
        .m_axi_awsize     (m_axi_awsize),
        .m_axi_awburst    (m_axi_awburst),
        .m_axi_awprot     (m_axi_awprot),
        .m_axi_awvalid    (m_axi_awvalid),
        .m_axi_awlock     (m_axi_awlock),
        .m_axi_awcache    (m_axi_awcache),
        .m_axi_wdata      (m_axi_wdata),
        .m_axi_wstrb      (m_axi_wstrb),
        .m_axi_wlast      (m_axi_wlast),
        .m_axi_wvalid     (m_axi_wvalid),
        .m_axi_bready     (m_axi_bready),
        .m_axi_arid       (m_axi_arid),
        .m_axi_araddr     (m_axi_araddr),
        .m_axi_arlen      (m_axi_arlen),
        .m_axi_arsize     (m_axi_arsize),
        .m_axi_arburst    (m_axi_arburst),
        .m_axi_arprot     (m_axi_arprot),
        .m_axi_arvalid    (m_axi_arvalid),
        .m_axi_arlock     (m_axi_arlock),
        .m_axi_arcache    (m_axi_arcache),
        .m_axi_rready     (m_axi_rready)
    );

    xdma_m_axi_optical_loopback_top #(
        .ENABLE_LOOPBACK_DEBUG(ENABLE_LOOPBACK_DEBUG),
        .AXI_ADDR_WIDTH      (64),
        .AXI_DATA_WIDTH      (128)
    ) u_xdma_m_axi_optical_loopback_top (
        .axi_aclk         (axi_aclk),
        .axi_aresetn      (axi_aresetn),
        .m_axi_awaddr     (m_axi_awaddr),
        .m_axi_awid       (m_axi_awid),
        .m_axi_awlen      (m_axi_awlen),
        .m_axi_awsize     (m_axi_awsize),
        .m_axi_awburst    (m_axi_awburst),
        .m_axi_awvalid    (m_axi_awvalid),
        .m_axi_awready    (m_axi_awready),
        .m_axi_wdata      (m_axi_wdata),
        .m_axi_wstrb      (m_axi_wstrb),
        .m_axi_wlast      (m_axi_wlast),
        .m_axi_wvalid     (m_axi_wvalid),
        .m_axi_wready     (m_axi_wready),
        .m_axi_bresp      (m_axi_bresp),
        .m_axi_bid        (m_axi_bid),
        .m_axi_bvalid     (m_axi_bvalid),
        .m_axi_bready     (m_axi_bready),
        .m_axi_araddr     (m_axi_araddr),
        .m_axi_arid       (m_axi_arid),
        .m_axi_arlen      (m_axi_arlen),
        .m_axi_arsize     (m_axi_arsize),
        .m_axi_arburst    (m_axi_arburst),
        .m_axi_arvalid    (m_axi_arvalid),
        .m_axi_arready    (m_axi_arready),
        .m_axi_rdata      (m_axi_rdata),
        .m_axi_rid        (m_axi_rid),
        .m_axi_rresp      (m_axi_rresp),
        .m_axi_rlast      (m_axi_rlast),
        .m_axi_rvalid     (m_axi_rvalid),
        .m_axi_rready     (m_axi_rready),
        .GTREFCLK1_P      (GTREFCLK1_P),
        .GTREFCLK1_N      (GTREFCLK1_N),
        .SFP_RX_P         (SFP_RX_P),
        .SFP_RX_N         (SFP_RX_N),
        .SFP_TX_P         (SFP_TX_P),
        .SFP_TX_N         (SFP_TX_N),
        .SFP_TXFAULT      (SFP_TXFAULT),
        .SFP_LOS          (SFP_LOS),
        .SFP_TXDISABLE    (SFP_TXDISABLE),
        .status_reg       (status_reg),
        .tx_frame_count   (tx_frame_count),
        .optical_status   (optical_status),
        .gtx_tx_word_count(gtx_tx_word_count),
        .phy_debug_status (phy_debug_status),
        .rx_frame_count   (rx_frame_count),
        .crc_error_count  (crc_error_count),
        .format_error_count(format_error_count),
        .match_count      (match_count),
        .last_rx_seq      (last_rx_seq),
        .last_rx_addr     (last_rx_addr),
        .last_rx_data     (last_rx_data),
        .board_test_status(board_test_status)
    );

endmodule
