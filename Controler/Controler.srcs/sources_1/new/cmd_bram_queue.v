module cmd_bram_queue #(
    parameter DATA_WIDTH = 64,
    parameter DEPTH = 256,
    parameter ADDR_WIDTH = 8
) (
    input  wire                  clk,
    input  wire                  rst,
    input  wire                  wr_en,
    input  wire [DATA_WIDTH-1:0] wr_data,
    input  wire                  rd_en,
    output reg  [DATA_WIDTH-1:0] rd_data,
    output wire                  full,
    output wire                  empty,
    output reg  [ADDR_WIDTH:0]   usedw
);

    (* ram_style = "block" *) reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];

    reg [ADDR_WIDTH-1:0] wr_ptr;
    reg [ADDR_WIDTH-1:0] rd_ptr;

    wire do_write;
    wire do_read;

    assign full  = (usedw == DEPTH);
    assign empty = (usedw == 0);

    assign do_write = wr_en && !full;
    assign do_read  = rd_en && !empty;

    always @(posedge clk) begin
        if (rst) begin
            wr_ptr  <= {ADDR_WIDTH{1'b0}};
            rd_ptr  <= {ADDR_WIDTH{1'b0}};
            rd_data <= {DATA_WIDTH{1'b0}};
            usedw   <= {(ADDR_WIDTH + 1){1'b0}};
        end else begin
            if (do_write) begin
                mem[wr_ptr] <= wr_data;
                wr_ptr <= wr_ptr + 1'b1;
            end

            if (do_read) begin
                rd_data <= mem[rd_ptr];
                rd_ptr <= rd_ptr + 1'b1;
            end

            case ({do_write, do_read})
                2'b10: usedw <= usedw + 1'b1;
                2'b01: usedw <= usedw - 1'b1;
                default: usedw <= usedw;
            endcase
        end
    end

endmodule
