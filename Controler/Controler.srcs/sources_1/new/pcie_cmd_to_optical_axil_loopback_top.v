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
    output wire [31:0] board_test_status,
    output wire [31:0] decode_status
);

    wire        ctrl_awready, ctrl_wready, ctrl_bvalid, ctrl_arready, ctrl_rvalid;
    wire [1:0]  ctrl_bresp, ctrl_rresp;
    wire [31:0] ctrl_rdata;
    wire [31:0] ctrl_awaddr, ctrl_wdata, ctrl_araddr;
    wire [2:0]  ctrl_awprot, ctrl_arprot;
    wire [3:0]  ctrl_wstrb;
    wire        ctrl_awvalid, ctrl_wvalid, ctrl_bready, ctrl_arvalid, ctrl_rready;

    wire        bram_awready, bram_wready, bram_bvalid, bram_arready, bram_rvalid;
    wire [1:0]  bram_bresp, bram_rresp;
    wire [31:0] bram_rdata;
    wire [31:0] bram_awaddr, bram_wdata, bram_araddr;
    wire [2:0]  bram_awprot, bram_arprot;
    wire [3:0]  bram_wstrb;
    wire        bram_awvalid, bram_wvalid, bram_bready, bram_arvalid, bram_rready;

    wire        host_wr_en;
    wire [31:0] host_wr_addr;
    wire [31:0] host_wr_data;
    wire        host_rd_en;
    wire [31:0] host_rd_addr;
    wire [31:0] host_rd_data;

    wire        bram_porta_en;
    wire [7:0]  bram_porta_we;
    wire [7:0]  bram_porta_addr;
    wire [63:0] bram_porta_din;
    wire [63:0] bram_porta_dout;
    wire        cmd_bram_rd_en;
    wire [7:0]  cmd_bram_rd_addr;
    wire [63:0] cmd_bram_rd_data;

    axil_interconnect_1x2 #(
        .BRAM_BASE_ADDR(32'h0000_1000)
    ) u_axil_interconnect_1x2 (
        .aclk          (s_axil_aclk),
        .aresetn       (s_axil_aresetn),
        .s_axil_awaddr (s_axil_awaddr),
        .s_axil_awprot (s_axil_awprot),
        .s_axil_awvalid(s_axil_awvalid),
        .s_axil_awready(s_axil_awready),
        .s_axil_wdata  (s_axil_wdata),
        .s_axil_wstrb  (s_axil_wstrb),
        .s_axil_wvalid (s_axil_wvalid),
        .s_axil_wready (s_axil_wready),
        .s_axil_bresp  (s_axil_bresp),
        .s_axil_bvalid (s_axil_bvalid),
        .s_axil_bready (s_axil_bready),
        .s_axil_araddr (s_axil_araddr),
        .s_axil_arprot (s_axil_arprot),
        .s_axil_arvalid(s_axil_arvalid),
        .s_axil_arready(s_axil_arready),
        .s_axil_rdata  (s_axil_rdata),
        .s_axil_rresp  (s_axil_rresp),
        .s_axil_rvalid (s_axil_rvalid),
        .s_axil_rready (s_axil_rready),
        .m0_awaddr     (ctrl_awaddr),
        .m0_awprot     (ctrl_awprot),
        .m0_awvalid    (ctrl_awvalid),
        .m0_awready    (ctrl_awready),
        .m0_wdata      (ctrl_wdata),
        .m0_wstrb      (ctrl_wstrb),
        .m0_wvalid     (ctrl_wvalid),
        .m0_wready     (ctrl_wready),
        .m0_bresp      (ctrl_bresp),
        .m0_bvalid     (ctrl_bvalid),
        .m0_bready     (ctrl_bready),
        .m0_araddr     (ctrl_araddr),
        .m0_arprot     (ctrl_arprot),
        .m0_arvalid    (ctrl_arvalid),
        .m0_arready    (ctrl_arready),
        .m0_rdata      (ctrl_rdata),
        .m0_rresp      (ctrl_rresp),
        .m0_rvalid     (ctrl_rvalid),
        .m0_rready     (ctrl_rready),
        .m1_awaddr     (bram_awaddr),
        .m1_awprot     (bram_awprot),
        .m1_awvalid    (bram_awvalid),
        .m1_awready    (bram_awready),
        .m1_wdata      (bram_wdata),
        .m1_wstrb      (bram_wstrb),
        .m1_wvalid     (bram_wvalid),
        .m1_wready     (bram_wready),
        .m1_bresp      (bram_bresp),
        .m1_bvalid     (bram_bvalid),
        .m1_bready     (bram_bready),
        .m1_araddr     (bram_araddr),
        .m1_arprot     (bram_arprot),
        .m1_arvalid    (bram_arvalid),
        .m1_arready    (bram_arready),
        .m1_rdata      (bram_rdata),
        .m1_rresp      (bram_rresp),
        .m1_rvalid     (bram_rvalid),
        .m1_rready     (bram_rready)
    );

    axil_to_host_regs u_axil_to_host_regs (
        .s_axi_aclk    (s_axil_aclk),
        .s_axi_aresetn (s_axil_aresetn),
        .s_axi_awaddr  (ctrl_awaddr),
        .s_axi_awprot  (ctrl_awprot),
        .s_axi_awvalid (ctrl_awvalid),
        .s_axi_awready (ctrl_awready),
        .s_axi_wdata   (ctrl_wdata),
        .s_axi_wstrb   (ctrl_wstrb),
        .s_axi_wvalid  (ctrl_wvalid),
        .s_axi_wready  (ctrl_wready),
        .s_axi_bresp   (ctrl_bresp),
        .s_axi_bvalid  (ctrl_bvalid),
        .s_axi_bready  (ctrl_bready),
        .s_axi_araddr  (ctrl_araddr),
        .s_axi_arprot  (ctrl_arprot),
        .s_axi_arvalid (ctrl_arvalid),
        .s_axi_arready (ctrl_arready),
        .s_axi_rdata   (ctrl_rdata),
        .s_axi_rresp   (ctrl_rresp),
        .s_axi_rvalid  (ctrl_rvalid),
        .s_axi_rready  (ctrl_rready),
        .host_wr_en    (host_wr_en),
        .host_wr_addr  (host_wr_addr),
        .host_wr_data  (host_wr_data),
        .host_rd_en    (host_rd_en),
        .host_rd_addr  (host_rd_addr),
        .host_rd_data  (host_rd_data)
    );

    axil_bram_ctrl_simple #(
        .ADDR_WIDTH(8)
    ) u_axil_bram_ctrl_simple (
        .s_axi_aclk    (s_axil_aclk),
        .s_axi_aresetn (s_axil_aresetn),
        .s_axi_awaddr  (bram_awaddr),
        .s_axi_awprot  (bram_awprot),
        .s_axi_awvalid (bram_awvalid),
        .s_axi_awready (bram_awready),
        .s_axi_wdata   (bram_wdata),
        .s_axi_wstrb   (bram_wstrb),
        .s_axi_wvalid  (bram_wvalid),
        .s_axi_wready  (bram_wready),
        .s_axi_bresp   (bram_bresp),
        .s_axi_bvalid  (bram_bvalid),
        .s_axi_bready  (bram_bready),
        .s_axi_araddr  (bram_araddr),
        .s_axi_arprot  (bram_arprot),
        .s_axi_arvalid (bram_arvalid),
        .s_axi_arready (bram_arready),
        .s_axi_rdata   (bram_rdata),
        .s_axi_rresp   (bram_rresp),
        .s_axi_rvalid  (bram_rvalid),
        .s_axi_rready  (bram_rready),
        .bram_en       (bram_porta_en),
        .bram_we       (bram_porta_we),
        .bram_addr     (bram_porta_addr),
        .bram_din      (bram_porta_din),
        .bram_dout     (bram_porta_dout)
    );

    cmd_bram_dual_port #(
        .ADDR_WIDTH(8)
    ) u_cmd_bram_dual_port (
        .clka   (s_axil_aclk),
        .ena    (bram_porta_en),
        .wea    (bram_porta_we),
        .addra  (bram_porta_addr),
        .dina   (bram_porta_din),
        .douta  (bram_porta_dout),
        .clkb   (s_axil_aclk),
        .enb    (cmd_bram_rd_en),
        .addrb  (cmd_bram_rd_addr),
        .doutb  (cmd_bram_rd_data)
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
        .cmd_bram_rd_data  (cmd_bram_rd_data),
        .cmd_bram_rd_en    (cmd_bram_rd_en),
        .cmd_bram_rd_addr  (cmd_bram_rd_addr),
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
        .board_test_status (board_test_status),
        .decode_status     (decode_status)
    );

endmodule
