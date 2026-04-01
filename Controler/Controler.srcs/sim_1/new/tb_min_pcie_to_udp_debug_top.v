`timescale 1ns/1ps

module tb_min_pcie_to_udp_debug_top;

    reg         clk;
    reg         rst;
    reg         pcie_wr_en;
    reg [31:0]  pcie_wr_addr;
    reg [31:0]  pcie_wr_data;
    wire [31:0] status_reg;
    wire [63:0] tx_axis_tdata;
    wire [7:0]  tx_axis_tkeep;
    wire        tx_axis_tvalid;
    wire        tx_axis_tlast;
    wire [31:0] tx_frame_count;

    integer beat_count;
    integer last_count;

    min_pcie_to_udp_debug_top dut (
        .clk          (clk),
        .rst          (rst),
        .pcie_wr_en   (pcie_wr_en),
        .pcie_wr_addr (pcie_wr_addr),
        .pcie_wr_data (pcie_wr_data),
        .status_reg   (status_reg),
        .tx_axis_tdata(tx_axis_tdata),
        .tx_axis_tkeep(tx_axis_tkeep),
        .tx_axis_tvalid(tx_axis_tvalid),
        .tx_axis_tlast(tx_axis_tlast),
        .tx_frame_count(tx_frame_count)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    task pcie_write;
        input [31:0] addr;
        input [31:0] data;
        begin
            @(posedge clk);
            pcie_wr_addr <= addr;
            pcie_wr_data <= data;
            pcie_wr_en   <= 1'b1;
            @(posedge clk);
            pcie_wr_en   <= 1'b0;
            pcie_wr_addr <= 32'd0;
            pcie_wr_data <= 32'd0;
        end
    endtask

    initial begin
        rst          = 1'b1;
        pcie_wr_en   = 1'b0;
        pcie_wr_addr = 32'd0;
        pcie_wr_data = 32'd0;
        beat_count   = 0;
        last_count   = 0;

        repeat (5) @(posedge clk);
        rst = 1'b0;

        pcie_write(32'h0000_0000, 32'h1234_5678);
        pcie_write(32'h0000_0004, 32'hA5A5_0055);
        pcie_write(32'h0000_0008, 32'h0000_0001);

        repeat (30) @(posedge clk);

        if (beat_count != 8) begin
            $display("ERROR: expected 8 AXIS beats, got %0d", beat_count);
            $stop;
        end

        if (last_count != 1) begin
            $display("ERROR: expected 1 TLAST pulse, got %0d", last_count);
            $stop;
        end

        if (tx_frame_count != 32'd1) begin
            $display("ERROR: expected tx_frame_count=1, got %0d", tx_frame_count);
            $stop;
        end

        $display("PASS: generated 1 UDP frame for addr=0x12345678 data=0xA5A50055");
        $finish;
    end

    always @(posedge clk) begin
        if (tx_axis_tvalid) begin
            beat_count <= beat_count + 1;
            if (tx_axis_tlast) begin
                last_count <= last_count + 1;
            end
        end
    end

endmodule
