module loopback_debug_block (
    input  wire        rx_clk,
    input  wire        rst,
    input  wire        clear_counters,

    input  wire [31:0] phy_rx_data,
    input  wire        phy_rx_data_valid,

    output wire [31:0] rx_frame_count,
    output wire [31:0] crc_error_count,
    output wire [31:0] format_error_count,
    output wire [31:0] match_count,
    output wire [31:0] last_rx_seq,
    output wire [31:0] last_rx_addr,
    output wire [31:0] last_rx_data
);

    wire [63:0] rx_axis_tdata;
    wire [7:0]  rx_axis_tkeep;
    wire        rx_axis_tvalid;
    wire        rx_axis_tlast;

    wire        cmd_valid;
    wire        crc_ok;
    wire        format_ok;
    wire [31:0] rx_seq;
    wire [31:0] rx_addr;
    wire [31:0] rx_cmd_data;

    gtx_rx32_to_stream64 u_gtx_rx32_to_stream64 (
        .clk          (rx_clk),
        .rst          (rst),
        .rx_data      (phy_rx_data),
        .rx_data_valid(phy_rx_data_valid),
        .m_axis_tdata (rx_axis_tdata),
        .m_axis_tkeep (rx_axis_tkeep),
        .m_axis_tvalid(rx_axis_tvalid),
        .m_axis_tlast (rx_axis_tlast),
        .m_axis_tready(1'b1)
    );

    optical_cmd_rx u_optical_cmd_rx (
        .clk               (rx_clk),
        .rst               (rst),
        .clear_counters    (clear_counters),
        .rx_data           (rx_axis_tdata),
        .rx_keep           (rx_axis_tkeep),
        .rx_valid          (rx_axis_tvalid),
        .rx_last           (rx_axis_tlast),
        .rx_ready          (),
        .cmd_valid         (cmd_valid),
        .crc_ok            (crc_ok),
        .format_ok         (format_ok),
        .rx_seq            (rx_seq),
        .rx_addr           (rx_addr),
        .rx_cmd_data       (rx_cmd_data),
        .rx_frame_count    (rx_frame_count),
        .crc_error_count   (),
        .format_error_count()
    );

    loopback_checker u_loopback_checker (
        .clk               (rx_clk),
        .rst               (rst),
        .clear_counters    (clear_counters),
        .cmd_valid         (cmd_valid),
        .crc_ok            (crc_ok),
        .format_ok         (format_ok),
        .rx_seq            (rx_seq),
        .rx_addr           (rx_addr),
        .rx_cmd_data       (rx_cmd_data),
        .match_count       (match_count),
        .crc_error_count   (crc_error_count),
        .format_error_count(format_error_count),
        .last_rx_seq       (last_rx_seq),
        .last_rx_addr      (last_rx_addr),
        .last_rx_data      (last_rx_data)
    );

endmodule
