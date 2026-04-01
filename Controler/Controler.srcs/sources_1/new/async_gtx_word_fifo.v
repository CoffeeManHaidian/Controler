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

    wire overflow_unused;
    wire underflow_unused;
    wire wr_rst_busy_unused;
    wire rd_rst_busy_unused;

    xpm_fifo_async #(
        .CDC_SYNC_STAGES      (2),
        .DOUT_RESET_VALUE     ("0"),
        .ECC_MODE             ("no_ecc"),
        .FIFO_MEMORY_TYPE     ("auto"),
        .FIFO_READ_LATENCY    (0),
        .FIFO_WRITE_DEPTH     (16),
        .FULL_RESET_VALUE     (0),
        .PROG_EMPTY_THRESH    (10),
        .PROG_FULL_THRESH     (10),
        .RD_DATA_COUNT_WIDTH  (1),
        .READ_DATA_WIDTH      (35),
        .READ_MODE            ("fwft"),
        .RELATED_CLOCKS       (0),
        .USE_ADV_FEATURES     ("0000"),
        .WAKEUP_TIME          (0),
        .WRITE_DATA_WIDTH     (35),
        .WR_DATA_COUNT_WIDTH  (1)
    ) u_xpm_fifo_async (
        .sleep        (1'b0),
        .rst          (rst),
        .wr_clk       (wr_clk),
        .wr_en        (wr_en),
        .din          (din),
        .full         (full),
        .overflow     (overflow_unused),
        .wr_rst_busy  (wr_rst_busy_unused),
        .rd_clk       (rd_clk),
        .rd_en        (rd_en),
        .dout         (dout),
        .empty        (empty),
        .underflow    (underflow_unused),
        .rd_rst_busy  (rd_rst_busy_unused)
    );

endmodule
