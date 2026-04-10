module optical_stream_to_gtx32 (
    input  wire        clk,
    input  wire        rst,

    input  wire [63:0] s_axis_tdata,
    input  wire [7:0]  s_axis_tkeep,
    input  wire        s_axis_tvalid,
    input  wire        s_axis_tlast,
    output wire        s_axis_tready,

    input  wire        gtx_tx_ready,
    output reg  [31:0] gtx_tx_data,
    output reg         gtx_tx_valid,
    output reg         gtx_tx_last,
    output reg  [1:0]  gtx_tx_word_index,
    output reg  [31:0] gtx_tx_word_count
);

    localparam ST_IDLE = 3'd0;
    localparam ST_W0   = 3'd1;
    localparam ST_W1   = 3'd2;

    reg [2:0]  state;
    reg [63:0] frame_data;
    reg        frame_last;

    assign s_axis_tready = (state == ST_IDLE);

    always @(posedge clk) begin
        if (rst) begin
            state            <= ST_IDLE;
            frame_data       <= 64'd0;
            frame_last       <= 1'b0;
            gtx_tx_data      <= 32'd0;
            gtx_tx_valid     <= 1'b0;
            gtx_tx_last      <= 1'b0;
            gtx_tx_word_index<= 2'd0;
            gtx_tx_word_count<= 32'd0;
        end else begin
            gtx_tx_valid <= 1'b0;
            gtx_tx_last  <= 1'b0;

            case (state)
                ST_IDLE: begin
                    gtx_tx_word_index <= 2'd0;
                    if (s_axis_tvalid) begin
                        frame_data <= s_axis_tdata;
                        frame_last <= s_axis_tlast;
                        state      <= ST_W0;
                    end
                end

                ST_W0: begin
                    if (gtx_tx_ready) begin
                        gtx_tx_data       <= frame_data[31:0];
                        gtx_tx_valid      <= 1'b1;
                        gtx_tx_word_index <= 2'd0;
                        gtx_tx_word_count <= gtx_tx_word_count + 1'b1;
                        state             <= ST_W1;
                    end
                end

                ST_W1: begin
                    if (gtx_tx_ready) begin
                        gtx_tx_data       <= frame_data[63:32];
                        gtx_tx_valid      <= 1'b1;
                        gtx_tx_word_index <= 2'd1;
                        gtx_tx_last       <= frame_last;
                        gtx_tx_word_count <= gtx_tx_word_count + 1'b1;
                        state             <= ST_IDLE;
                    end
                end

                default: begin
                    state <= ST_IDLE;
                end
            endcase
        end
    end

endmodule
