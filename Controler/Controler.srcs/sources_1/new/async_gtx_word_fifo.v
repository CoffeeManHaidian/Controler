module async_gtx_word_fifo (
    input  wire        rst,

    input  wire        wr_clk,
    input  wire        wr_en,
    input  wire [34:0] din,
    output wire        full,

    input  wire        rd_clk,
    input  wire        rd_en,
    output wire [34:0] dout,
    output wire        empty
);

    // This module keeps the legacy name to minimize integration churn, but it
    // is no longer a FIFO. It is a single-word async mailbox with request/ack
    // handshakes across the two clock domains.

    reg [34:0] wr_payload = 35'd0;
    reg        req_toggle = 1'b0;
    reg        ack_toggle_wr_meta = 1'b0;
    reg        ack_toggle_wr_sync = 1'b0;

    reg        req_toggle_rd_meta = 1'b0;
    reg        req_toggle_rd_sync = 1'b0;
    reg [34:0] payload_rd_meta = 35'd0;
    reg [34:0] payload_rd_sync = 35'd0;
    reg [34:0] rd_payload = 35'd0;
    reg        rd_valid = 1'b0;
    reg        ack_toggle = 1'b0;

    wire busy_wr;
    wire pending_rd;

    assign busy_wr   = (req_toggle != ack_toggle_wr_sync);
    assign full      = busy_wr;
    assign pending_rd = (req_toggle_rd_sync != ack_toggle);
    assign empty     = ~rd_valid;
    assign dout      = rd_payload;

    always @(posedge wr_clk) begin
        if (rst) begin
            wr_payload        <= 35'd0;
            req_toggle        <= 1'b0;
            ack_toggle_wr_meta<= 1'b0;
            ack_toggle_wr_sync<= 1'b0;
        end else begin
            ack_toggle_wr_meta <= ack_toggle;
            ack_toggle_wr_sync <= ack_toggle_wr_meta;

            if (wr_en && !busy_wr) begin
                wr_payload <= din;
                req_toggle <= ~req_toggle;
            end
        end
    end

    always @(posedge rd_clk) begin
        if (rst) begin
            req_toggle_rd_meta <= 1'b0;
            req_toggle_rd_sync <= 1'b0;
            payload_rd_meta    <= 35'd0;
            payload_rd_sync    <= 35'd0;
            rd_payload         <= 35'd0;
            rd_valid           <= 1'b0;
            ack_toggle         <= 1'b0;
        end else begin
            req_toggle_rd_meta <= req_toggle;
            req_toggle_rd_sync <= req_toggle_rd_meta;
            payload_rd_meta    <= wr_payload;
            payload_rd_sync    <= payload_rd_meta;

            if (!rd_valid && pending_rd) begin
                rd_payload <= payload_rd_sync;
                rd_valid   <= 1'b1;
            end else if (rd_valid && rd_en) begin
                rd_valid   <= 1'b0;
                ack_toggle <= req_toggle_rd_sync;
            end
        end
    end

endmodule
