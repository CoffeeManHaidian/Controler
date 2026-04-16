module axil_bram_ctrl_simple #(
    parameter ADDR_WIDTH = 8
) (
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

    output reg                     bram_en,
    output reg  [7:0]              bram_we,
    output reg  [ADDR_WIDTH-1:0]   bram_addr,
    output reg  [63:0]             bram_din,
    input  wire [63:0]             bram_dout
);

    wire rst = ~s_axi_aresetn;
    wire [ADDR_WIDTH-1:0] word_addr_aw = s_axi_awaddr[ADDR_WIDTH+2:3];
    wire [ADDR_WIDTH-1:0] word_addr_ar = s_axi_araddr[ADDR_WIDTH+2:3];
    reg [31:0] awaddr_latched;
    reg [31:0] wdata_latched;
    reg [3:0]  wstrb_latched;
    reg        aw_seen;
    reg        w_seen;

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
            bram_en       <= 1'b0;
            bram_we       <= 8'd0;
            bram_addr     <= {ADDR_WIDTH{1'b0}};
            bram_din      <= 64'd0;
            awaddr_latched<= 32'd0;
            wdata_latched <= 32'd0;
            wstrb_latched <= 4'd0;
            aw_seen       <= 1'b0;
            w_seen        <= 1'b0;
        end else begin
            s_axi_awready <= 1'b0;
            s_axi_wready  <= 1'b0;
            s_axi_arready <= 1'b0;
            bram_en       <= 1'b0;
            bram_we       <= 8'd0;

            if (!s_axi_bvalid) begin
                if (!aw_seen && s_axi_awvalid) begin
                    s_axi_awready <= 1'b1;
                    awaddr_latched<= s_axi_awaddr;
                    aw_seen       <= 1'b1;
                end

                if (!w_seen && s_axi_wvalid) begin
                    s_axi_wready  <= 1'b1;
                    wdata_latched <= s_axi_wdata;
                    wstrb_latched <= s_axi_wstrb;
                    w_seen        <= 1'b1;
                end

                if (aw_seen && w_seen) begin
                    s_axi_bvalid  <= 1'b1;
                    s_axi_bresp   <= 2'b00;
                    bram_en       <= 1'b1;
                    bram_addr     <= awaddr_latched[ADDR_WIDTH+2:3];
                    if (awaddr_latched[2]) begin
                        bram_din[63:32] <= wdata_latched;
                        bram_din[31:0]  <= 32'd0;
                        bram_we[7:4]    <= wstrb_latched;
                        bram_we[3:0]    <= 4'd0;
                    end else begin
                        bram_din[31:0]  <= wdata_latched;
                        bram_din[63:32] <= 32'd0;
                        bram_we[3:0]    <= wstrb_latched;
                        bram_we[7:4]    <= 4'd0;
                    end
                    aw_seen      <= 1'b0;
                    w_seen       <= 1'b0;
                end
            end else if (s_axi_bvalid && s_axi_bready) begin
                s_axi_bvalid <= 1'b0;
            end

            if (!s_axi_bvalid && !aw_seen && !w_seen && s_axi_awvalid && s_axi_wvalid) begin
                // Fast path for masters that present AXI-Lite address and data
                // together; the latched path above handles separated channels.
                s_axi_awready <= 1'b1;
                s_axi_wready  <= 1'b1;
                s_axi_bvalid  <= 1'b1;
                s_axi_bresp   <= 2'b00;
                bram_en       <= 1'b1;
                bram_addr     <= word_addr_aw;
                if (s_axi_awaddr[2]) begin
                    bram_din[63:32] <= s_axi_wdata;
                    bram_din[31:0]  <= 32'd0;
                    bram_we[7:4]    <= s_axi_wstrb;
                    bram_we[3:0]    <= 4'd0;
                end else begin
                    bram_din[31:0]  <= s_axi_wdata;
                    bram_din[63:32] <= 32'd0;
                    bram_we[3:0]    <= s_axi_wstrb;
                    bram_we[7:4]    <= 4'd0;
                end
                aw_seen <= 1'b0;
                w_seen  <= 1'b0;
            end

            if (!s_axi_rvalid && s_axi_arvalid) begin
                s_axi_arready <= 1'b1;
                s_axi_rvalid  <= 1'b1;
                s_axi_rresp   <= 2'b00;
                bram_en       <= 1'b1;
                bram_addr     <= word_addr_ar;
                s_axi_rdata   <= s_axi_araddr[2] ? bram_dout[63:32] : bram_dout[31:0];
            end else if (s_axi_rvalid && s_axi_rready) begin
                s_axi_rvalid <= 1'b0;
            end
        end
    end

endmodule
