`timescale 1ns / 1ps

module pcie_xdma_sfp_frame_tx_top (
    input  wire [0:0] diff_clock_rtl_0_clk_n,
    input  wire [0:0] diff_clock_rtl_0_clk_p,
    input  wire [7:0] pcie_7x_mgt_rtl_0_rxn,
    input  wire [7:0] pcie_7x_mgt_rtl_0_rxp,
    output wire [7:0] pcie_7x_mgt_rtl_0_txn,
    output wire [7:0] pcie_7x_mgt_rtl_0_txp,
    input  wire       reset_rtl_0,
    output wire       user_lnk_up_0,

    input  wire Q2_CLK1_GTREFCLK_PAD_N_IN,
    input  wire Q2_CLK1_GTREFCLK_PAD_P_IN,
    input  wire CLK_IN_50M,
    input  wire SFP3_RX_N,
    input  wire SFP3_RX_P,
    output wire SFP3_TX_N,
    output wire SFP3_TX_P,
    input  wire SFP3_TXFAULT,
    input  wire SFP3_LOS,
    output wire SFP3_TXDISABLE,
    input  wire AD9516_LD_IN,
    output wire AD9516_CS_N_OUT,
    output wire AD9516_SCLK_OUT,
    output wire AD9516_SDATA_OUT,
    output wire AD9516_REFSEL_OUT,
    output wire AD9516_PDWN_OUT,
    output wire AD9516_RSTN_OUT,
    output wire AD9516_SYN_N_OUT
);

wire xdma_sys_clk;
wire axi_aclk;
wire axi_aresetn;
wire [3:0] usr_irq_req;
wire [3:0] usr_irq_ack;
wire       msi_enable;
wire [2:0] msi_vector_width;

wire [3:0]   m_axi_awid;
wire [63:0]  m_axi_awaddr;
wire [7:0]   m_axi_awlen;
wire [2:0]   m_axi_awsize;
wire [1:0]   m_axi_awburst;
wire [2:0]   m_axi_awprot;
wire         m_axi_awvalid;
wire         m_axi_awready;
wire         m_axi_awlock;
wire [3:0]   m_axi_awcache;
wire [127:0] m_axi_wdata;
wire [15:0]  m_axi_wstrb;
wire         m_axi_wlast;
wire         m_axi_wvalid;
wire         m_axi_wready;
wire [3:0]   m_axi_bid;
wire [1:0]   m_axi_bresp;
wire         m_axi_bvalid;
wire         m_axi_bready;
wire [3:0]   m_axi_arid;
wire [63:0]  m_axi_araddr;
wire [7:0]   m_axi_arlen;
wire [2:0]   m_axi_arsize;
wire [1:0]   m_axi_arburst;
wire [2:0]   m_axi_arprot;
wire         m_axi_arvalid;
wire         m_axi_arready;
wire         m_axi_arlock;
wire [3:0]   m_axi_arcache;
wire [3:0]   m_axi_rid;
wire [127:0] m_axi_rdata;
wire [1:0]   m_axi_rresp;
wire         m_axi_rlast;
wire         m_axi_rvalid;
wire         m_axi_rready;

wire [31:0] m_axil_awaddr;
wire [2:0]  m_axil_awprot;
wire        m_axil_awvalid;
wire        m_axil_awready;
wire [31:0] m_axil_wdata;
wire [3:0]  m_axil_wstrb;
wire        m_axil_wvalid;
wire        m_axil_wready;
wire        m_axil_bvalid;
wire [1:0]  m_axil_bresp;
wire        m_axil_bready;
wire [31:0] m_axil_araddr;
wire [2:0]  m_axil_arprot;
wire        m_axil_arvalid;
wire        m_axil_arready;
wire [31:0] m_axil_rdata;
wire [1:0]  m_axil_rresp;
wire        m_axil_rvalid;
wire        m_axil_rready;

wire         host_wr_en;
wire [31:0]  host_wr_addr;
wire [31:0]  host_wr_data;
wire         host_rd_en;
wire [31:0]  host_rd_addr;
wire [31:0]  host_rd_data;

wire         start_loopback;
wire         clear_status;
wire [6:0]   tx_word_count;
wire [15:0]  tx_frame_id;
wire [6:0]   tx_bram_index;
wire [31:0]  tx_bram_rdata;
wire [6:0]   rx_bram_raddr;
wire [31:0]  rx_bram_rdata;
wire [31:0]  tx_packet_out;
wire         tx_packet_valid;
wire         tx_busy;
wire         tx_frame_done;
wire [6:0]   tx_sent_count;
wire [31:0]  rx_packet_out;
wire         rx_packet_valid;
wire [6:0]   rx_bram_index;
wire [31:0]  rx_bram_wdata;
wire         rx_bram_we;
wire         rx_done_rxclk;
wire [15:0]  rx_frame_id_rxclk;
wire [7:0]   rx_error_count_rxclk;
wire [6:0]   rx_capture_count_rxclk;
wire         rx_done_axi;
reg          rx_done_axi_ff1;
reg          rx_done_axi_ff2;
reg  [15:0]  rx_frame_id_axi;
reg  [7:0]   rx_error_count_axi;
reg  [6:0]   rx_capture_count_axi;
wire         clear_status_rxclk;
wire         dbg_gt0_rxusrclk2_unused;

wire         track_data_unused;
wire [31:0]  dbg_gt0_txdata_unused;
wire [3:0]   dbg_gt0_txcharisk_unused;
wire [8:0]   dbg_gt0_tx_read_counter_unused;
wire [31:0]  dbg_hv_packet_out_unused;
wire [15:0]  dbg_hv_current_addr_unused;
wire         dbg_hv_packet_valid_unused;

assign usr_irq_req = 4'b0000;
assign SFP3_TXDISABLE = 1'b0;
assign rx_done_axi = rx_done_axi_ff2;

IBUFDS_GTE2 u_pcie_refclk_buf (
    .I(diff_clock_rtl_0_clk_p[0]),
    .IB(diff_clock_rtl_0_clk_n[0]),
    .CEB(1'b0),
    .O(xdma_sys_clk),
    .ODIV2()
);

xdma_sys_xdma_0_0 u_xdma_0 (
    .sys_clk(xdma_sys_clk),
    .sys_rst_n(reset_rtl_0),
    .user_lnk_up(user_lnk_up_0),
    .pci_exp_txp(pcie_7x_mgt_rtl_0_txp),
    .pci_exp_txn(pcie_7x_mgt_rtl_0_txn),
    .pci_exp_rxp(pcie_7x_mgt_rtl_0_rxp),
    .pci_exp_rxn(pcie_7x_mgt_rtl_0_rxn),
    .axi_aclk(axi_aclk),
    .axi_aresetn(axi_aresetn),
    .usr_irq_req(usr_irq_req),
    .usr_irq_ack(usr_irq_ack),
    .msi_enable(msi_enable),
    .msi_vector_width(msi_vector_width),
    .m_axi_awready(m_axi_awready),
    .m_axi_wready(m_axi_wready),
    .m_axi_bid(m_axi_bid),
    .m_axi_bresp(m_axi_bresp),
    .m_axi_bvalid(m_axi_bvalid),
    .m_axi_arready(m_axi_arready),
    .m_axi_rid(m_axi_rid),
    .m_axi_rdata(m_axi_rdata),
    .m_axi_rresp(m_axi_rresp),
    .m_axi_rlast(m_axi_rlast),
    .m_axi_rvalid(m_axi_rvalid),
    .m_axi_awid(m_axi_awid),
    .m_axi_awaddr(m_axi_awaddr),
    .m_axi_awlen(m_axi_awlen),
    .m_axi_awsize(m_axi_awsize),
    .m_axi_awburst(m_axi_awburst),
    .m_axi_awprot(m_axi_awprot),
    .m_axi_awvalid(m_axi_awvalid),
    .m_axi_awlock(m_axi_awlock),
    .m_axi_awcache(m_axi_awcache),
    .m_axi_wdata(m_axi_wdata),
    .m_axi_wstrb(m_axi_wstrb),
    .m_axi_wlast(m_axi_wlast),
    .m_axi_wvalid(m_axi_wvalid),
    .m_axi_bready(m_axi_bready),
    .m_axi_arid(m_axi_arid),
    .m_axi_araddr(m_axi_araddr),
    .m_axi_arlen(m_axi_arlen),
    .m_axi_arsize(m_axi_arsize),
    .m_axi_arburst(m_axi_arburst),
    .m_axi_arprot(m_axi_arprot),
    .m_axi_arvalid(m_axi_arvalid),
    .m_axi_arlock(m_axi_arlock),
    .m_axi_arcache(m_axi_arcache),
    .m_axi_rready(m_axi_rready),
    .m_axil_awaddr(m_axil_awaddr),
    .m_axil_awprot(m_axil_awprot),
    .m_axil_awvalid(m_axil_awvalid),
    .m_axil_awready(m_axil_awready),
    .m_axil_wdata(m_axil_wdata),
    .m_axil_wstrb(m_axil_wstrb),
    .m_axil_wvalid(m_axil_wvalid),
    .m_axil_wready(m_axil_wready),
    .m_axil_bvalid(m_axil_bvalid),
    .m_axil_bresp(m_axil_bresp),
    .m_axil_bready(m_axil_bready),
    .m_axil_araddr(m_axil_araddr),
    .m_axil_arprot(m_axil_arprot),
    .m_axil_arvalid(m_axil_arvalid),
    .m_axil_arready(m_axil_arready),
    .m_axil_rdata(m_axil_rdata),
    .m_axil_rresp(m_axil_rresp),
    .m_axil_rvalid(m_axil_rvalid),
    .m_axil_rready(m_axil_rready)
);

assign m_axi_awready = 1'b1;
assign m_axi_wready  = 1'b1;
assign m_axi_bid     = 4'd0;
assign m_axi_bresp   = 2'b00;
assign m_axi_bvalid  = 1'b0;
assign m_axi_arready = 1'b1;
assign m_axi_rid     = 4'd0;
assign m_axi_rdata   = 128'd0;
assign m_axi_rresp   = 2'b00;
assign m_axi_rlast   = 1'b0;
assign m_axi_rvalid  = 1'b0;

axil_to_host_regs u_axil_to_host_regs (
    .s_axi_aclk(axi_aclk),
    .s_axi_aresetn(axi_aresetn),
    .s_axi_awaddr(m_axil_awaddr),
    .s_axi_awprot(m_axil_awprot),
    .s_axi_awvalid(m_axil_awvalid),
    .s_axi_awready(m_axil_awready),
    .s_axi_wdata(m_axil_wdata),
    .s_axi_wstrb(m_axil_wstrb),
    .s_axi_wvalid(m_axil_wvalid),
    .s_axi_wready(m_axil_wready),
    .s_axi_bresp(m_axil_bresp),
    .s_axi_bvalid(m_axil_bvalid),
    .s_axi_bready(m_axil_bready),
    .s_axi_araddr(m_axil_araddr),
    .s_axi_arprot(m_axil_arprot),
    .s_axi_arvalid(m_axil_arvalid),
    .s_axi_arready(m_axil_arready),
    .s_axi_rdata(m_axil_rdata),
    .s_axi_rresp(m_axil_rresp),
    .s_axi_rvalid(m_axil_rvalid),
    .s_axi_rready(m_axil_rready),
    .host_wr_en(host_wr_en),
    .host_wr_addr(host_wr_addr),
    .host_wr_data(host_wr_data),
    .host_rd_en(host_rd_en),
    .host_rd_addr(host_rd_addr),
    .host_rd_data(host_rd_data)
);

hv_mmio_regs u_hv_mmio_regs (
    .clk(axi_aclk),
    .rst(~axi_aresetn),
    .host_wr_en(host_wr_en),
    .host_wr_addr(host_wr_addr),
    .host_wr_data(host_wr_data),
    .host_rd_en(host_rd_en),
    .host_rd_addr(host_rd_addr),
    .host_rd_data(host_rd_data),
    .start_loopback(start_loopback),
    .clear_status(clear_status),
    .tx_word_count(tx_word_count),
    .tx_frame_id(tx_frame_id),
    .tx_busy(tx_busy),
    .tx_frame_done(tx_frame_done),
    .tx_sent_count(tx_sent_count),
    .rx_done(rx_done_axi),
    .rx_frame_id(rx_frame_id_axi),
    .rx_error_count(rx_error_count_axi),
    .rx_capture_count(rx_capture_count_axi),
    .rx_buf_raddr(rx_bram_raddr),
    .rx_buf_rdata(rx_bram_rdata),
    .tx_buf_index(tx_bram_index),
    .tx_buf_rdata(tx_bram_rdata)
);

hv_mmio_tx_reader u_hv_mmio_tx_reader (
    .clk(axi_aclk),
    .rst(~axi_aresetn),
    .start(start_loopback),
    .tx_bram_rdata(tx_bram_rdata),
    .tx_bram_index(tx_bram_index),
    .packet_out(tx_packet_out),
    .packet_valid(tx_packet_valid),
    .busy(tx_busy),
    .frame_done(tx_frame_done),
    .sent_count(tx_sent_count)
);

hv_async_pulse_sync u_clear_status_sync (
    .src_clk(axi_aclk),
    .src_rst(~axi_aresetn),
    .src_pulse(clear_status),
    .dst_clk(dbg_gt0_rxusrclk2_unused),
    .dst_rst(1'b0),
    .dst_pulse(clear_status_rxclk)
);

hv_mmio_rx_capture u_hv_mmio_rx_capture (
    .clk(dbg_gt0_rxusrclk2_unused),
    .rst(1'b0),
    .clear_status(clear_status_rxclk),
    .rx_packet_in(rx_packet_out),
    .rx_packet_valid(rx_packet_valid),
    .rx_bram_index(rx_bram_index),
    .rx_bram_wdata(rx_bram_wdata),
    .rx_bram_we(rx_bram_we),
    .rx_done(rx_done_rxclk),
    .rx_frame_id(rx_frame_id_rxclk),
    .rx_error_count(rx_error_count_rxclk),
    .rx_capture_count(rx_capture_count_rxclk),
    .current_packet(),
    .current_addr(),
    .current_data(),
    .expected_addr(),
    .packet_seen(),
    .addr_in_range(),
    .invalid_fill(),
    .seq_locked(),
    .seq_ok()
);

hv_dual_port_ram #(
    .ADDR_WIDTH(7),
    .DATA_WIDTH(32)
) u_hv_rx_bram (
    .wr_clk(dbg_gt0_rxusrclk2_unused),
    .wr_en(rx_bram_we),
    .wr_addr(rx_bram_index),
    .wr_data(rx_bram_wdata),
    .rd_clk(axi_aclk),
    .rd_addr(rx_bram_raddr),
    .rd_data(rx_bram_rdata)
);

always @(posedge axi_aclk) begin
    if (!axi_aresetn) begin
        rx_done_axi_ff1      <= 1'b0;
        rx_done_axi_ff2      <= 1'b0;
        rx_frame_id_axi      <= 16'd0;
        rx_error_count_axi   <= 8'd0;
        rx_capture_count_axi <= 7'd0;
    end else begin
        rx_done_axi_ff1 <= rx_done_rxclk;
        rx_done_axi_ff2 <= rx_done_axi_ff1;

        if (clear_status) begin
            rx_frame_id_axi      <= 16'd0;
            rx_error_count_axi   <= 8'd0;
            rx_capture_count_axi <= 7'd0;
        end else if (!rx_done_axi_ff2 && rx_done_axi_ff1) begin
            rx_frame_id_axi      <= rx_frame_id_rxclk;
            rx_error_count_axi   <= rx_error_count_rxclk;
            rx_capture_count_axi <= rx_capture_count_rxclk;
        end
    end
end

srio_base_shell u_srio_base_shell (
    .Q2_CLK1_GTREFCLK_PAD_N_IN(Q2_CLK1_GTREFCLK_PAD_N_IN),
    .Q2_CLK1_GTREFCLK_PAD_P_IN(Q2_CLK1_GTREFCLK_PAD_P_IN),
    .CLK_IN_50M(CLK_IN_50M),
    .RXN_IN(SFP3_RX_N),
    .RXP_IN(SFP3_RX_P),
    .TXN_OUT(SFP3_TX_N),
    .TXP_OUT(SFP3_TX_P),
    .ad9516_ld_in(AD9516_LD_IN),
    .ad9516_cs_n_out(AD9516_CS_N_OUT),
    .ad9516_sclk_out(AD9516_SCLK_OUT),
    .ad9516_sdata_out(AD9516_SDATA_OUT),
    .ad9516_refsel_out(AD9516_REFSEL_OUT),
    .ad9516_pdwn_out(AD9516_PDWN_OUT),
    .ad9516_rstn_out(AD9516_RSTN_OUT),
    .ad9516_syn_n_out(AD9516_SYN_N_OUT),
    .TRACK_DATA_OUT(track_data_unused),
    .HV_TX_PACKET_IN(tx_packet_out),
    .HV_TX_PACKET_VALID(tx_packet_valid),
    .HV_USE_EXTERNAL_PACKET(1'b1),
    .DBG_GT0_CPLLLOCK(),
    .DBG_GT0_CPLLFBCLKLOST(),
    .DBG_GT0_TXRESETDONE(),
    .DBG_GT0_TXFSMRESETDONE(),
    .DBG_GT0_TX_SYSTEM_RESET(),
    .DBG_GT0_TXUSERRDY(),
    .DBG_GT0_GTTXRESET(),
    .DBG_GT0_TXPMARESET(),
    .DBG_GT0_TXPCSRESET(),
    .DBG_GT0_TXDATA(dbg_gt0_txdata_unused),
    .DBG_GT0_TXCHARISK(dbg_gt0_txcharisk_unused),
    .DBG_GT0_TX_READ_COUNTER(dbg_gt0_tx_read_counter_unused),
    .DBG_GT0_TXUSRCLK2(),
    .DBG_GT0_RXRESETDONE(),
    .DBG_GT0_RXFSMRESETDONE(),
    .DBG_GT0_RX_SYSTEM_RESET(),
    .DBG_GT0_RXUSERRDY(),
    .DBG_GT0_GTRXRESET(),
    .DBG_GT0_RXPMARESET(),
    .DBG_GT0_RXPCSRESET(),
    .DBG_GT0_RXDATA(),
    .DBG_GT0_RXCHARISK(),
    .DBG_GT0_ERROR_COUNT(),
    .DBG_GT0_TRACK_DATA(),
    .DBG_GT0_RXDISPERR(),
    .DBG_GT0_RXNOTINTABLE(),
    .DBG_GT0_RXBYTEISALIGNED(),
    .DBG_GT0_RXBYTEREALIGN(),
    .DBG_GT0_RXCOMMADET(),
    .DBG_GT0_RXMCOMMAALIGNEN(),
    .DBG_GT0_RXPCOMMAALIGNEN(),
    .DBG_GT0_RXCLKCORCNT(),
    .DBG_GT0_RXDATA_ALIGNED(),
    .DBG_GT0_RXDATA_TRACK(),
    .DBG_GT0_RXALIGN_SEL(),
    .DBG_GT0_RXSTART_OF_PACKET(),
    .DBG_GT0_RXUSRCLK2(dbg_gt0_rxusrclk2_unused),
    .DBG_HV_PACKET_OUT(dbg_hv_packet_out_unused),
    .DBG_HV_CURRENT_ADDR(dbg_hv_current_addr_unused),
    .DBG_HV_PACKET_VALID(dbg_hv_packet_valid_unused),
    .DBG_HV_USING_INTERNAL_SOURCE(),
    .DBG_HV_RX_PACKET_OUT(rx_packet_out),
    .DBG_HV_RX_PACKET_VALID(rx_packet_valid),
    .DBG_HV_RX_CURRENT_ADDR(),
    .DBG_HV_RX_CURRENT_DATA(),
    .DBG_HV_RX_EXPECTED_ADDR(),
    .DBG_HV_RX_PACKET_SEEN(),
    .DBG_HV_RX_ADDR_IN_RANGE(),
    .DBG_HV_RX_SEQ_LOCKED(),
    .DBG_HV_RX_SEQ_OK(),
    .DBG_HV_RX_INVALID_FILL(),
    .DBG_HV_RX_SEQ_ERROR_COUNT(),
    .DBG_SOFT_RESET(),
    .DBG_DRPCLK_HEARTBEAT()
);

endmodule
