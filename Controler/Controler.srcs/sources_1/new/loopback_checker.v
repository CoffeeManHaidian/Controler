module loopback_checker (
    input  wire        clk,
    input  wire        rst,
    input  wire        clear_counters,

    input  wire        cmd_valid,
    input  wire        crc_ok,
    input  wire        format_ok,
    input  wire [31:0] rx_seq,
    input  wire [31:0] rx_addr,
    input  wire [31:0] rx_cmd_data,

    output reg  [31:0] decode_status,
    output reg  [31:0] match_count,
    output reg  [31:0] crc_error_count,
    output reg  [31:0] format_error_count,
    output reg  [31:0] last_rx_seq,
    output reg  [31:0] last_rx_addr,
    output reg  [31:0] last_rx_data
);

    always @(posedge clk) begin
        if (rst || clear_counters) begin
            decode_status       <= 32'd0;
            match_count        <= 32'd0;
            crc_error_count    <= 32'd0;
            format_error_count <= 32'd0;
            last_rx_seq        <= 32'd0;
            last_rx_addr       <= 32'd0;
            last_rx_data       <= 32'd0;
        end else if (cmd_valid) begin
            decode_status[0] <= 1'b1;
            decode_status[1] <= crc_ok;
            decode_status[2] <= format_ok;
            decode_status[3] <= format_ok && crc_ok;
            decode_status[4] <= !format_ok;
            decode_status[5] <= format_ok && !crc_ok;
            decode_status[31:6] <= 26'd0;
            last_rx_seq  <= rx_seq;
            last_rx_addr <= rx_addr;
            last_rx_data <= rx_cmd_data;

            if (format_ok && crc_ok) begin
                match_count <= match_count + 1'b1;
            end

            if (!format_ok) begin
                format_error_count <= format_error_count + 1'b1;
            end

            if (format_ok && !crc_ok) begin
                crc_error_count <= crc_error_count + 1'b1;
            end
        end
    end

endmodule
