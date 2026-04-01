module pcie_bar_cmd_rx (
    input  wire        clk,
    input  wire        rst,
    input  wire        wr_en,
    input  wire [31:0] wr_addr,
    input  wire [31:0] wr_data,
    output reg         fifo_wr_en,
    output reg  [63:0] fifo_wr_data,
    input  wire        fifo_full,
    output wire [31:0] status_reg,
    input  wire        fifo_empty
);

    localparam ADDR_CMD_ADDR   = 32'h0000_0000;
    localparam ADDR_CMD_DATA   = 32'h0000_0004;
    localparam ADDR_CMD_COMMIT = 32'h0000_0008;

    reg [31:0] cmd_addr_reg;
    reg [31:0] cmd_data_reg;
    reg [31:0] commit_count;

    assign status_reg = {
        commit_count[27:0],
        fifo_empty,
        fifo_full,
        1'b1,
        1'b0
    };

    always @(posedge clk) begin
        if (rst) begin
            cmd_addr_reg <= 32'd0;
            cmd_data_reg <= 32'd0;
            commit_count <= 32'd0;
            fifo_wr_en   <= 1'b0;
            fifo_wr_data <= 64'd0;
        end else begin
            fifo_wr_en <= 1'b0;

            if (wr_en && (wr_addr == ADDR_CMD_ADDR)) begin
                cmd_addr_reg <= wr_data;
            end

            if (wr_en && (wr_addr == ADDR_CMD_DATA)) begin
                cmd_data_reg <= wr_data;
            end

            if (wr_en && (wr_addr == ADDR_CMD_COMMIT) && wr_data[0] && !fifo_full) begin
                fifo_wr_en   <= 1'b1;
                fifo_wr_data <= {cmd_addr_reg, cmd_data_reg};
                commit_count <= commit_count + 1'b1;
            end
        end
    end

endmodule
