module axi_mm_to_axil_bridge #(
    parameter AXI_ADDR_WIDTH = 64,
    parameter AXI_DATA_WIDTH = 128
) (
    input  wire                      aclk,
    input  wire                      aresetn,

    input  wire [AXI_ADDR_WIDTH-1:0] s_axi_awaddr,
    input  wire [7:0]                s_axi_awlen,
    input  wire [2:0]                s_axi_awsize,
    input  wire [1:0]                s_axi_awburst,
    input  wire                      s_axi_awvalid,
    output reg                       s_axi_awready,

    input  wire [AXI_DATA_WIDTH-1:0] s_axi_wdata,
    input  wire [(AXI_DATA_WIDTH/8)-1:0] s_axi_wstrb,
    input  wire                      s_axi_wlast,
    input  wire                      s_axi_wvalid,
    output reg                       s_axi_wready,

    output reg  [1:0]                s_axi_bresp,
    output reg                       s_axi_bvalid,
    input  wire                      s_axi_bready,

    input  wire [AXI_ADDR_WIDTH-1:0] s_axi_araddr,
    input  wire [7:0]                s_axi_arlen,
    input  wire [2:0]                s_axi_arsize,
    input  wire [1:0]                s_axi_arburst,
    input  wire                      s_axi_arvalid,
    output reg                       s_axi_arready,

    output reg  [AXI_DATA_WIDTH-1:0] s_axi_rdata,
    output reg  [1:0]                s_axi_rresp,
    output reg                       s_axi_rlast,
    output reg                       s_axi_rvalid,
    input  wire                      s_axi_rready,

    output reg  [31:0]               m_axil_awaddr,
    output reg  [2:0]                m_axil_awprot,
    output reg                       m_axil_awvalid,
    input  wire                      m_axil_awready,

    output reg  [31:0]               m_axil_wdata,
    output reg  [3:0]                m_axil_wstrb,
    output reg                       m_axil_wvalid,
    input  wire                      m_axil_wready,

    input  wire [1:0]                m_axil_bresp,
    input  wire                      m_axil_bvalid,
    output reg                       m_axil_bready,

    output reg  [31:0]               m_axil_araddr,
    output reg  [2:0]                m_axil_arprot,
    output reg                       m_axil_arvalid,
    input  wire                      m_axil_arready,

    input  wire [31:0]               m_axil_rdata,
    input  wire [1:0]                m_axil_rresp,
    input  wire                      m_axil_rvalid,
    output reg                       m_axil_rready
);

    localparam ST_IDLE       = 3'd0;
    localparam ST_WRITE_ADDR = 3'd1;
    localparam ST_WRITE_RESP = 3'd2;
    localparam ST_READ_ADDR  = 3'd3;
    localparam ST_READ_DATA  = 3'd4;

    reg [2:0] state;
    reg [AXI_ADDR_WIDTH-1:0] awaddr_latched;
    reg [AXI_DATA_WIDTH-1:0] wdata_latched;
    reg [(AXI_DATA_WIDTH/8)-1:0] wstrb_latched;
    reg aw_seen;
    reg w_seen;

    wire rst = ~aresetn;

    function [31:0] translate_axi_addr;
        input [31:0] axi_addr;
        begin
            // The XDMA M_AXI aperture in this project is 0x1000..0x1fff.
            // Map it into the internal AXI-Lite address plan:
            //   0x1000..0x17ff -> 0x0000..0x07ff  control/status registers
            //   0x1800..0x1fff -> 0x1000..0x17ff  command BRAM window
            // Direct addresses are preserved for user-BAR/debug builds.
            if (axi_addr[31:12] == 20'h00001) begin
                if (axi_addr[11]) begin
                    translate_axi_addr = 32'h0000_1000 + {21'd0, axi_addr[10:0]};
                end else begin
                    translate_axi_addr = {21'd0, axi_addr[10:0]};
                end
            end else begin
                translate_axi_addr = axi_addr;
            end
        end
    endfunction

    always @(posedge aclk) begin
        if (rst) begin
            state         <= ST_IDLE;
            s_axi_awready <= 1'b0;
            s_axi_wready  <= 1'b0;
            s_axi_bresp   <= 2'b00;
            s_axi_bvalid  <= 1'b0;
            s_axi_arready <= 1'b0;
            s_axi_rdata   <= {AXI_DATA_WIDTH{1'b0}};
            s_axi_rresp   <= 2'b00;
            s_axi_rlast   <= 1'b0;
            s_axi_rvalid  <= 1'b0;
            m_axil_awaddr <= 32'd0;
            m_axil_awprot <= 3'd0;
            m_axil_awvalid<= 1'b0;
            m_axil_wdata  <= 32'd0;
            m_axil_wstrb  <= 4'd0;
            m_axil_wvalid <= 1'b0;
            m_axil_bready <= 1'b0;
            m_axil_araddr <= 32'd0;
            m_axil_arprot <= 3'd0;
            m_axil_arvalid<= 1'b0;
            m_axil_rready <= 1'b0;
            awaddr_latched<= {AXI_ADDR_WIDTH{1'b0}};
            wdata_latched <= {AXI_DATA_WIDTH{1'b0}};
            wstrb_latched <= {(AXI_DATA_WIDTH/8){1'b0}};
            aw_seen       <= 1'b0;
            w_seen        <= 1'b0;
        end else begin
            s_axi_awready <= 1'b0;
            s_axi_wready  <= 1'b0;
            s_axi_arready <= 1'b0;

            case (state)
                ST_IDLE: begin
                    s_axi_rlast <= 1'b0;

                    if (!aw_seen && s_axi_awvalid && (s_axi_awlen == 8'd0)) begin
                        s_axi_awready  <= 1'b1;
                        awaddr_latched <= s_axi_awaddr;
                        aw_seen        <= 1'b1;
                    end

                    if (!w_seen && s_axi_wvalid && s_axi_wlast) begin
                        s_axi_wready   <= 1'b1;
                        wdata_latched  <= s_axi_wdata;
                        wstrb_latched  <= s_axi_wstrb;
                        w_seen         <= 1'b1;
                    end

                    if ((aw_seen || (s_axi_awvalid && (s_axi_awlen == 8'd0))) &&
                        (w_seen  || (s_axi_wvalid && s_axi_wlast))) begin
                        m_axil_awaddr  <= translate_axi_addr((aw_seen ? awaddr_latched[31:0] : s_axi_awaddr[31:0]));
                        m_axil_awprot  <= 3'd0;
                        m_axil_awvalid <= 1'b1;
                        case ((aw_seen ? awaddr_latched[3:2] : s_axi_awaddr[3:2]))
                            2'd0: begin
                                m_axil_wdata <= (w_seen ? wdata_latched[31:0]   : s_axi_wdata[31:0]);
                                m_axil_wstrb <= (w_seen ? wstrb_latched[3:0]   : s_axi_wstrb[3:0]);
                            end
                            2'd1: begin
                                m_axil_wdata <= (w_seen ? wdata_latched[63:32]  : s_axi_wdata[63:32]);
                                m_axil_wstrb <= (w_seen ? wstrb_latched[7:4]   : s_axi_wstrb[7:4]);
                            end
                            2'd2: begin
                                m_axil_wdata <= (w_seen ? wdata_latched[95:64]  : s_axi_wdata[95:64]);
                                m_axil_wstrb <= (w_seen ? wstrb_latched[11:8]  : s_axi_wstrb[11:8]);
                            end
                            default: begin
                                m_axil_wdata <= (w_seen ? wdata_latched[127:96] : s_axi_wdata[127:96]);
                                m_axil_wstrb <= (w_seen ? wstrb_latched[15:12] : s_axi_wstrb[15:12]);
                            end
                        endcase
                        m_axil_wvalid  <= 1'b1;
                        aw_seen        <= 1'b0;
                        w_seen         <= 1'b0;
                        state          <= ST_WRITE_ADDR;
                    end else if (s_axi_arvalid && (s_axi_arlen == 8'd0)) begin
                        s_axi_arready  <= 1'b1;
                        m_axil_araddr  <= translate_axi_addr(s_axi_araddr[31:0]);
                        m_axil_arprot  <= 3'd0;
                        m_axil_arvalid <= 1'b1;
                        state          <= ST_READ_ADDR;
                    end
                end

                ST_WRITE_ADDR: begin
                    if (m_axil_awready) begin
                        m_axil_awvalid <= 1'b0;
                    end

                    if (m_axil_wready) begin
                        m_axil_wvalid <= 1'b0;
                    end

                    if (!m_axil_awvalid && !m_axil_wvalid) begin
                        m_axil_bready <= 1'b1;
                        state         <= ST_WRITE_RESP;
                    end
                end

                ST_WRITE_RESP: begin
                    if (m_axil_bvalid) begin
                        s_axi_bresp  <= m_axil_bresp;
                        s_axi_bvalid <= 1'b1;
                        m_axil_bready<= 1'b0;
                    end

                    if (s_axi_bvalid && s_axi_bready) begin
                        s_axi_bvalid <= 1'b0;
                        state        <= ST_IDLE;
                    end
                end

                ST_READ_ADDR: begin
                    if (m_axil_arready) begin
                        m_axil_arvalid <= 1'b0;
                        m_axil_rready  <= 1'b1;
                        state          <= ST_READ_DATA;
                    end
                end

                ST_READ_DATA: begin
                    if (m_axil_rvalid) begin
                        s_axi_rdata           <= {{(AXI_DATA_WIDTH-32){1'b0}}, m_axil_rdata};
                        s_axi_rresp           <= m_axil_rresp;
                        s_axi_rlast           <= 1'b1;
                        s_axi_rvalid          <= 1'b1;
                        m_axil_rready         <= 1'b0;
                    end

                    if (s_axi_rvalid && s_axi_rready) begin
                        s_axi_rvalid <= 1'b0;
                        s_axi_rlast  <= 1'b0;
                        state        <= ST_IDLE;
                    end
                end

                default: begin
                    state <= ST_IDLE;
                end
            endcase
        end
    end

endmodule
