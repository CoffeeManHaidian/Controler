module optical_cmd_rx (
    input  wire        clk,
    input  wire        rst,

    input  wire [63:0] rx_data,
    input  wire [7:0]  rx_keep,
    input  wire        rx_valid,
    input  wire        rx_last,
    output wire        rx_ready,

    output reg         cmd_valid,
    output reg         crc_ok,
    output reg         format_ok,
    output reg  [31:0] rx_seq,
    output reg  [31:0] rx_addr,
    output reg  [31:0] rx_cmd_data,
    output reg  [31:0] rx_frame_count,
    output reg  [31:0] crc_error_count,
    output reg  [31:0] format_error_count
);

    localparam [15:0] SOF = 16'h55AA;
    localparam [15:0] EOF = 16'hAA55;

    localparam ST_IDLE = 2'd0;
    localparam ST_B1   = 2'd1;
    localparam ST_B2   = 2'd2;

    reg [1:0]  state;
    reg [31:0] seq_latched;
    reg [31:0] addr_latched;
    reg [31:0] data_latched;

    function [15:0] calc_crc16;
        input [31:0] seq;
        input [31:0] addr;
        input [31:0] data;
        begin
            calc_crc16 = seq[31:16] ^ seq[15:0] ^ addr[31:16] ^ addr[15:0] ^ data[31:16] ^ data[15:0];
        end
    endfunction

    assign rx_ready = 1'b1;

    always @(posedge clk) begin
        if (rst) begin
            state              <= ST_IDLE;
            cmd_valid          <= 1'b0;
            crc_ok             <= 1'b0;
            format_ok          <= 1'b0;
            rx_seq             <= 32'd0;
            rx_addr            <= 32'd0;
            rx_cmd_data        <= 32'd0;
            rx_frame_count     <= 32'd0;
            crc_error_count    <= 32'd0;
            format_error_count <= 32'd0;
            seq_latched        <= 32'd0;
            addr_latched       <= 32'd0;
            data_latched       <= 32'd0;
        end else begin
            cmd_valid <= 1'b0;

            case (state)
                ST_IDLE: begin
                    if (rx_valid) begin
                        if ((rx_keep == 8'hFF) && !rx_last && (rx_data[63:48] == SOF)) begin
                            seq_latched <= rx_data[31:0];
                            state       <= ST_B1;
                        end else begin
                            format_ok          <= 1'b0;
                            crc_ok             <= 1'b0;
                            format_error_count <= format_error_count + 1'b1;
                            state              <= ST_IDLE;
                        end
                    end
                end

                ST_B1: begin
                    if (rx_valid) begin
                        if ((rx_keep == 8'hFF) && !rx_last) begin
                            addr_latched <= rx_data[63:32];
                            data_latched <= rx_data[31:0];
                            state        <= ST_B2;
                        end else begin
                            format_ok          <= 1'b0;
                            crc_ok             <= 1'b0;
                            format_error_count <= format_error_count + 1'b1;
                            state              <= ST_IDLE;
                        end
                    end
                end

                ST_B2: begin
                    if (rx_valid) begin
                        rx_seq      <= seq_latched;
                        rx_addr     <= addr_latched;
                        rx_cmd_data <= data_latched;
                        cmd_valid   <= 1'b1;

                        if ((rx_keep == 8'hFF) && rx_last && (rx_data[47:32] == EOF)) begin
                            format_ok <= 1'b1;

                            if (rx_data[63:48] == calc_crc16(seq_latched, addr_latched, data_latched)) begin
                                crc_ok         <= 1'b1;
                                rx_frame_count <= rx_frame_count + 1'b1;
                            end else begin
                                crc_ok          <= 1'b0;
                                crc_error_count <= crc_error_count + 1'b1;
                            end
                        end else begin
                            format_ok          <= 1'b0;
                            crc_ok             <= 1'b0;
                            format_error_count <= format_error_count + 1'b1;
                        end

                        state <= ST_IDLE;
                    end
                end

                default: begin
                    state <= ST_IDLE;
                end
            endcase
        end
    end

endmodule
