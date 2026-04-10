module simple_sync_fifo #(
    parameter DATA_WIDTH = 8,
    parameter DEPTH = 16,
    parameter ADDR_WIDTH = 4
) (
    input  wire                  clk,
    input  wire                  rst,
    input  wire                  wr_en,
    input  wire [DATA_WIDTH-1:0] wr_data,
    input  wire                  rd_en,
    output wire [DATA_WIDTH-1:0] rd_data,
    output wire                  full,
    output wire                  empty,
    output wire [ADDR_WIDTH:0]   usedw
);

    wire overflow_unused;
    wire underflow_unused;
    wire wr_rst_busy_unused;
    wire rd_rst_busy_unused;

    xpm_fifo_sync #(
        .DOUT_RESET_VALUE    ("0"),
        .ECC_MODE            ("no_ecc"),
        .FIFO_MEMORY_TYPE    ("block"),
        .FIFO_READ_LATENCY   (0),
        .FIFO_WRITE_DEPTH    (DEPTH),
        .FULL_RESET_VALUE    (0),
        .PROG_EMPTY_THRESH   (10),
        .PROG_FULL_THRESH    (10),
        .RD_DATA_COUNT_WIDTH (ADDR_WIDTH + 1),
        .READ_DATA_WIDTH     (DATA_WIDTH),
        .READ_MODE           ("fwft"),
        .USE_ADV_FEATURES    ("0404"),
        .WAKEUP_TIME         (0),
        .WRITE_DATA_WIDTH    (DATA_WIDTH),
        .WR_DATA_COUNT_WIDTH (ADDR_WIDTH + 1)
    ) u_xpm_fifo_sync (
        .sleep         (1'b0),
        .rst           (rst),
        .wr_clk        (clk),
        .wr_en         (wr_en),
        .din           (wr_data),
        .full          (full),
        .overflow      (overflow_unused),
        .wr_rst_busy   (wr_rst_busy_unused),
        .rd_en         (rd_en),
        .dout          (rd_data),
        .empty         (empty),
        .underflow     (underflow_unused),
        .rd_rst_busy   (rd_rst_busy_unused),
        .rd_data_count (),
        .wr_data_count (usedw)
    );

endmodule
