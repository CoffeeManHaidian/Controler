module gtx_rx32_to_stream64 (
    input  wire        clk,
    input  wire        rst,

    input  wire [31:0] rx_data,
    input  wire        rx_data_valid,

    output reg  [63:0] m_axis_tdata,
    output reg  [7:0]  m_axis_tkeep,
    output reg         m_axis_tvalid,
    output reg         m_axis_tlast,
    input  wire        m_axis_tready
);

    localparam [15:0] SOF = 16'h55AA;
    localparam [15:0] EOF = 16'hAA55;

    localparam ST_SEARCH = 3'd0;
    localparam ST_B1_LO  = 3'd1;
    localparam ST_B1_HI  = 3'd2;
    localparam ST_B2_LO  = 3'd3;
    localparam ST_B2_HI  = 3'd4;

    reg [2:0]  state;
    reg [31:0] prev_word;
    reg        prev_valid;
    reg [31:0] beat_lo_word;

    always @(posedge clk) begin
        if (rst) begin
            state        <= ST_SEARCH;
            prev_word    <= 32'd0;
            prev_valid   <= 1'b0;
            beat_lo_word <= 32'd0;
            m_axis_tdata <= 64'd0;
            m_axis_tkeep <= 8'd0;
            m_axis_tvalid<= 1'b0;
            m_axis_tlast <= 1'b0;
        end else begin
            if (m_axis_tvalid && m_axis_tready) begin
                m_axis_tvalid <= 1'b0;
                m_axis_tlast  <= 1'b0;
            end

            if (!m_axis_tvalid && rx_data_valid) begin
                case (state)
                    ST_SEARCH: begin
                        if (prev_valid && (rx_data[31:16] == SOF) && (rx_data[15:0] == 16'h0000)) begin
                            m_axis_tdata  <= {rx_data, prev_word};
                            m_axis_tkeep  <= 8'hFF;
                            m_axis_tvalid <= 1'b1;
                            m_axis_tlast  <= 1'b0;
                            prev_valid    <= 1'b0;
                            state         <= ST_B1_LO;
                        end else begin
                            prev_word  <= rx_data;
                            prev_valid <= 1'b1;
                        end
                    end

                    ST_B1_LO: begin
                        beat_lo_word <= rx_data;
                        state        <= ST_B1_HI;
                    end

                    ST_B1_HI: begin
                        m_axis_tdata  <= {rx_data, beat_lo_word};
                        m_axis_tkeep  <= 8'hFF;
                        m_axis_tvalid <= 1'b1;
                        m_axis_tlast  <= 1'b0;
                        state         <= ST_B2_LO;
                    end

                    ST_B2_LO: begin
                        beat_lo_word <= rx_data;
                        state        <= ST_B2_HI;
                    end

                    ST_B2_HI: begin
                        m_axis_tdata  <= {rx_data, beat_lo_word};
                        m_axis_tkeep  <= 8'hFF;
                        m_axis_tvalid <= 1'b1;
                        m_axis_tlast  <= (rx_data[15:0] == EOF);
                        prev_valid    <= 1'b0;
                        state         <= ST_SEARCH;
                    end

                    default: begin
                        state <= ST_SEARCH;
                    end
                endcase
            end
        end
    end

endmodule
