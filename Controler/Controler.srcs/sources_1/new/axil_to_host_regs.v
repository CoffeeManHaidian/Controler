module axil_to_host_regs (
    input  wire        s_axi_aclk,
    input  wire        s_axi_aresetn,

    input  wire [31:0] s_axi_awaddr,
    input  wire [2:0]  s_axi_awprot,
    input  wire        s_axi_awvalid,
    output reg         s_axi_awready,

    input  wire [31:0] s_axi_wdata,
    input  wire [3:0]  s_axi_wstrb,
    input  wire        s_axi_wvalid,
    output reg         s_axi_wready,

    output reg  [1:0]  s_axi_bresp,
    output reg         s_axi_bvalid,
    input  wire        s_axi_bready,

    input  wire [31:0] s_axi_araddr,
    input  wire [2:0]  s_axi_arprot,
    input  wire        s_axi_arvalid,
    output reg         s_axi_arready,

    output reg  [31:0] s_axi_rdata,
    output reg  [1:0]  s_axi_rresp,
    output reg         s_axi_rvalid,
    input  wire        s_axi_rready,

    output reg         host_wr_en,
    output reg  [31:0] host_wr_addr,
    output reg  [31:0] host_wr_data,
    output reg         host_rd_en,
    output reg  [31:0] host_rd_addr,
    input  wire [31:0] host_rd_data
);

    reg [31:0] awaddr_latched;
    reg [31:0] araddr_latched;
    reg [31:0] wdata_latched;
    reg        aw_seen;
    reg        w_seen;
    reg        ar_pending;

    wire rst = ~s_axi_aresetn;

    always @(posedge s_axi_aclk) begin
        if (rst) begin
            s_axi_awready <= 1'b0;
            s_axi_wready  <= 1'b0;
            s_axi_bresp   <= 2'b00;
            s_axi_bvalid  <= 1'b0;
            s_axi_arready <= 1'b0;
            s_axi_rdata   <= 32'd0;
            s_axi_rresp   <= 2'b00;
            s_axi_rvalid  <= 1'b0;
            host_wr_en    <= 1'b0;
            host_wr_addr  <= 32'd0;
            host_wr_data  <= 32'd0;
            host_rd_en    <= 1'b0;
            host_rd_addr  <= 32'd0;
            awaddr_latched<= 32'd0;
            araddr_latched<= 32'd0;
            wdata_latched <= 32'd0;
            aw_seen       <= 1'b0;
            w_seen        <= 1'b0;
            ar_pending    <= 1'b0;
        end else begin
            host_wr_en    <= 1'b0;
            host_rd_en    <= 1'b0;
            s_axi_awready <= 1'b0;
            s_axi_wready  <= 1'b0;
            s_axi_arready <= 1'b0;

            if (!s_axi_bvalid) begin
                if (!aw_seen && s_axi_awvalid) begin
                    s_axi_awready  <= 1'b1;
                    awaddr_latched <= s_axi_awaddr;
                    aw_seen        <= 1'b1;
                end

                if (!w_seen && s_axi_wvalid) begin
                    s_axi_wready <= 1'b1;
                    wdata_latched<= s_axi_wdata;
                    w_seen       <= 1'b1;
                end

                if (aw_seen && w_seen) begin
                    host_wr_en   <= 1'b1;
                    host_wr_addr <= awaddr_latched;
                    host_wr_data <= wdata_latched;
                    s_axi_bresp  <= 2'b00;
                    s_axi_bvalid <= 1'b1;
                    aw_seen      <= 1'b0;
                    w_seen       <= 1'b0;
                end
            end else if (s_axi_bready) begin
                s_axi_bvalid <= 1'b0;
            end

            if (!s_axi_rvalid && !ar_pending && s_axi_arvalid) begin
                s_axi_arready <= 1'b1;
                araddr_latched <= s_axi_araddr;
                host_rd_addr   <= s_axi_araddr;
                ar_pending     <= 1'b1;
            end else if (ar_pending) begin
                host_rd_en   <= 1'b1;
                s_axi_rdata  <= host_rd_data;
                s_axi_rresp  <= 2'b00;
                s_axi_rvalid <= 1'b1;
                ar_pending   <= 1'b0;
            end else if (s_axi_rvalid && s_axi_rready) begin
                s_axi_rvalid <= 1'b0;
            end
        end
    end

endmodule
