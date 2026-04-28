`timescale 1ns / 1ps

module hv_proto_tx (
    input  wire        clk,
    input  wire        rst,
    input  wire [15:0] data_in,
    input  wire        data_valid,
    input  wire        use_internal_source,
    input  wire [15:0] addr_base,
    input  wire [15:0] addr_limit,
    output reg  [31:0] packet_out,
    output reg         packet_valid,
    output reg  [15:0] current_addr,
    output reg         using_internal_source
);

reg [15:0] internal_rom [0:15];
reg [3:0]  internal_index;

wire        use_external_word;
wire        use_internal_word;
wire        emit_word;
wire [15:0] next_data_word;

assign use_external_word = (~use_internal_source) & data_valid;
assign use_internal_word = use_internal_source;
assign emit_word         = use_external_word | use_internal_word;
assign next_data_word    = use_internal_source ? internal_rom[internal_index] : data_in;

initial begin
    internal_rom[0]  = 16'h1000;
    internal_rom[1]  = 16'h1001;
    internal_rom[2]  = 16'h1002;
    internal_rom[3]  = 16'h1003;
    internal_rom[4]  = 16'h1010;
    internal_rom[5]  = 16'h1011;
    internal_rom[6]  = 16'h1012;
    internal_rom[7]  = 16'h1013;
    internal_rom[8]  = 16'h1020;
    internal_rom[9]  = 16'h1021;
    internal_rom[10] = 16'h1022;
    internal_rom[11] = 16'h1023;
    internal_rom[12] = 16'h1030;
    internal_rom[13] = 16'h1031;
    internal_rom[14] = 16'h1032;
    internal_rom[15] = 16'h1033;
end

always @(posedge clk) begin
    if (rst) begin
        packet_out             <= 32'h0000_0000;
        packet_valid           <= 1'b0;
        current_addr           <= addr_base;
        using_internal_source  <= 1'b1;
        internal_index         <= 4'd0;
    end else begin
        using_internal_source <= use_internal_source;
        packet_valid          <= emit_word;

        if (emit_word) begin
            packet_out <= {current_addr, next_data_word};

            if (use_internal_word) begin
                internal_index <= internal_index + 4'd1;
            end

            if (current_addr >= addr_limit) begin
                current_addr <= addr_base;
            end else begin
                current_addr <= current_addr + 16'd1;
            end
        end
    end
end

endmodule
