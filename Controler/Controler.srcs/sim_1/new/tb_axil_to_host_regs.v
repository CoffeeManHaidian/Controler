`timescale 1ns/1ps

module tb_axil_to_host_regs;

    reg         clk;
    reg         aresetn;
    reg  [31:0] awaddr;
    reg  [2:0]  awprot;
    reg         awvalid;
    wire        awready;
    reg  [31:0] wdata;
    reg  [3:0]  wstrb;
    reg         wvalid;
    wire        wready;
    wire [1:0]  bresp;
    wire        bvalid;
    reg         bready;
    reg  [31:0] araddr;
    reg  [2:0]  arprot;
    reg         arvalid;
    wire        arready;
    wire [31:0] rdata;
    wire [1:0]  rresp;
    wire        rvalid;
    reg         rready;

    wire        host_wr_en;
    wire [31:0] host_wr_addr;
    wire [31:0] host_wr_data;
    wire        host_rd_en;
    wire [31:0] host_rd_addr;
    reg  [31:0] host_rd_data;

    axil_to_host_regs u_dut (
        .s_axi_aclk    (clk),
        .s_axi_aresetn (aresetn),
        .s_axi_awaddr  (awaddr),
        .s_axi_awprot  (awprot),
        .s_axi_awvalid (awvalid),
        .s_axi_awready (awready),
        .s_axi_wdata   (wdata),
        .s_axi_wstrb   (wstrb),
        .s_axi_wvalid  (wvalid),
        .s_axi_wready  (wready),
        .s_axi_bresp   (bresp),
        .s_axi_bvalid  (bvalid),
        .s_axi_bready  (bready),
        .s_axi_araddr  (araddr),
        .s_axi_arprot  (arprot),
        .s_axi_arvalid (arvalid),
        .s_axi_arready (arready),
        .s_axi_rdata   (rdata),
        .s_axi_rresp   (rresp),
        .s_axi_rvalid  (rvalid),
        .s_axi_rready  (rready),
        .host_wr_en    (host_wr_en),
        .host_wr_addr  (host_wr_addr),
        .host_wr_data  (host_wr_data),
        .host_rd_en    (host_rd_en),
        .host_rd_addr  (host_rd_addr),
        .host_rd_data  (host_rd_data)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
        aresetn    = 1'b0;
        awaddr     = 32'd0;
        awprot     = 3'd0;
        awvalid    = 1'b0;
        wdata      = 32'd0;
        wstrb      = 4'hF;
        wvalid     = 1'b0;
        bready     = 1'b1;
        araddr     = 32'd0;
        arprot     = 3'd0;
        arvalid    = 1'b0;
        rready     = 1'b1;
        host_rd_data = 32'hDEAD_BEEF;

        repeat (4) @(posedge clk);
        aresetn = 1'b1;

        @(posedge clk);
        awaddr  <= 32'h0000_0010;
        awvalid <= 1'b1;
        wdata   <= 32'h1234_5678;
        wvalid  <= 1'b1;

        wait (bvalid);
        @(posedge clk);
        awvalid <= 1'b0;
        wvalid  <= 1'b0;

        if (!host_wr_en || host_wr_addr !== 32'h0000_0010 || host_wr_data !== 32'h1234_5678) begin
            $display("ERROR: AXI-Lite write bridge failed");
            $stop;
        end

        @(posedge clk);
        araddr  <= 32'h0000_0020;
        arvalid <= 1'b1;
        host_rd_data <= 32'hA5A5_5A5A;

        wait (rvalid);
        #1;
        if (!host_rd_en || host_rd_addr !== 32'h0000_0020 || rdata !== 32'hA5A5_5A5A) begin
            $display("ERROR: AXI-Lite read bridge failed");
            $stop;
        end

        @(posedge clk);
        arvalid <= 1'b0;

        $display("PASS: AXI-Lite bridge generated host read/write transactions correctly");
        $finish;
    end

endmodule
