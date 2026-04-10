module cmd_bram_dual_port #(
    parameter ADDR_WIDTH = 8
) (
    input  wire                   clka,
    input  wire                   ena,
    input  wire [7:0]             wea,
    input  wire [ADDR_WIDTH-1:0]  addra,
    input  wire [63:0]            dina,
    output reg  [63:0]            douta,

    input  wire                   clkb,
    input  wire                   enb,
    input  wire [ADDR_WIDTH-1:0]  addrb,
    output reg  [63:0]            doutb
);

    (* ram_style = "block" *) reg [63:0] mem [0:(1<<ADDR_WIDTH)-1];
    integer i;

    always @(posedge clka) begin
        if (ena) begin
            for (i = 0; i < 8; i = i + 1) begin
                if (wea[i]) begin
                    mem[addra][i*8 +: 8] <= dina[i*8 +: 8];
                end
            end
            douta <= mem[addra];
        end
    end

    always @(posedge clkb) begin
        if (enb) begin
            doutb <= mem[addrb];
        end
    end

endmodule
