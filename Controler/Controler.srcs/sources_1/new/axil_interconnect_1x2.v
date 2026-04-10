module axil_interconnect_1x2 #(
    parameter BRAM_BASE_ADDR = 32'h0000_1000
) (
    input  wire        aclk,
    input  wire        aresetn,

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

    output wire [31:0] m0_awaddr,
    output wire [2:0]  m0_awprot,
    output wire        m0_awvalid,
    input  wire        m0_awready,
    output wire [31:0] m0_wdata,
    output wire [3:0]  m0_wstrb,
    output wire        m0_wvalid,
    input  wire        m0_wready,
    input  wire [1:0]  m0_bresp,
    input  wire        m0_bvalid,
    output wire        m0_bready,
    output wire [31:0] m0_araddr,
    output wire [2:0]  m0_arprot,
    output wire        m0_arvalid,
    input  wire        m0_arready,
    input  wire [31:0] m0_rdata,
    input  wire [1:0]  m0_rresp,
    input  wire        m0_rvalid,
    output wire        m0_rready,

    output wire [31:0] m1_awaddr,
    output wire [2:0]  m1_awprot,
    output wire        m1_awvalid,
    input  wire        m1_awready,
    output wire [31:0] m1_wdata,
    output wire [3:0]  m1_wstrb,
    output wire        m1_wvalid,
    input  wire        m1_wready,
    input  wire [1:0]  m1_bresp,
    input  wire        m1_bvalid,
    output wire        m1_bready,
    output wire [31:0] m1_araddr,
    output wire [2:0]  m1_arprot,
    output wire        m1_arvalid,
    input  wire        m1_arready,
    input  wire [31:0] m1_rdata,
    input  wire [1:0]  m1_rresp,
    input  wire        m1_rvalid,
    output wire        m1_rready
);

    reg write_sel;
    reg read_sel;
    reg write_active;
    reg read_active;

    wire aw_to_bram = (s_axil_awaddr >= BRAM_BASE_ADDR);
    wire ar_to_bram = (s_axil_araddr >= BRAM_BASE_ADDR);

    always @(posedge aclk) begin
        if (!aresetn) begin
            write_sel    <= 1'b0;
            read_sel     <= 1'b0;
            write_active <= 1'b0;
            read_active  <= 1'b0;
        end else begin
            if (!write_active && s_axil_awvalid && s_axil_wvalid) begin
                write_sel    <= aw_to_bram;
                write_active <= 1'b1;
            end else if (write_active) begin
                if ((!write_sel && m0_bvalid && s_axil_bready) ||
                    ( write_sel && m1_bvalid && s_axil_bready)) begin
                    write_active <= 1'b0;
                end
            end

            if (!read_active && s_axil_arvalid) begin
                read_sel    <= ar_to_bram;
                read_active <= 1'b1;
            end else if (read_active) begin
                if ((!read_sel && m0_rvalid && s_axil_rready) ||
                    ( read_sel && m1_rvalid && s_axil_rready)) begin
                    read_active <= 1'b0;
                end
            end
        end
    end

    assign m0_awaddr  = s_axil_awaddr;
    assign m0_awprot  = s_axil_awprot;
    assign m0_awvalid = s_axil_awvalid && !aw_to_bram && !write_active;
    assign m0_wdata   = s_axil_wdata;
    assign m0_wstrb   = s_axil_wstrb;
    assign m0_wvalid  = s_axil_wvalid && !aw_to_bram && !write_active;
    assign m0_bready  = s_axil_bready && !write_sel;
    assign m0_araddr  = s_axil_araddr;
    assign m0_arprot  = s_axil_arprot;
    assign m0_arvalid = s_axil_arvalid && !ar_to_bram && !read_active;
    assign m0_rready  = s_axil_rready && !read_sel;

    assign m1_awaddr  = s_axil_awaddr - BRAM_BASE_ADDR;
    assign m1_awprot  = s_axil_awprot;
    assign m1_awvalid = s_axil_awvalid && aw_to_bram && !write_active;
    assign m1_wdata   = s_axil_wdata;
    assign m1_wstrb   = s_axil_wstrb;
    assign m1_wvalid  = s_axil_wvalid && aw_to_bram && !write_active;
    assign m1_bready  = s_axil_bready && write_sel;
    assign m1_araddr  = s_axil_araddr - BRAM_BASE_ADDR;
    assign m1_arprot  = s_axil_arprot;
    assign m1_arvalid = s_axil_arvalid && ar_to_bram && !read_active;
    assign m1_rready  = s_axil_rready && read_sel;

    assign s_axil_awready = aw_to_bram ? m1_awready : m0_awready;
    assign s_axil_wready  = aw_to_bram ? m1_wready  : m0_wready;
    assign s_axil_bresp   = write_sel  ? m1_bresp   : m0_bresp;
    assign s_axil_bvalid  = write_sel  ? m1_bvalid  : m0_bvalid;
    assign s_axil_arready = ar_to_bram ? m1_arready : m0_arready;
    assign s_axil_rdata   = read_sel   ? m1_rdata   : m0_rdata;
    assign s_axil_rresp   = read_sel   ? m1_rresp   : m0_rresp;
    assign s_axil_rvalid  = read_sel   ? m1_rvalid  : m0_rvalid;

endmodule
