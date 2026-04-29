`timescale 1ns / 1ps

module hv_async_pulse_sync (
    input  wire src_clk,
    input  wire src_rst,
    input  wire src_pulse,
    input  wire dst_clk,
    input  wire dst_rst,
    output wire dst_pulse
);

reg src_toggle;
(* ASYNC_REG = "TRUE" *) reg dst_sync_ff1;
(* ASYNC_REG = "TRUE" *) reg dst_sync_ff2;
reg dst_sync_ff3;

always @(posedge src_clk) begin
    if (src_rst) begin
        src_toggle <= 1'b0;
    end else if (src_pulse) begin
        src_toggle <= ~src_toggle;
    end
end

always @(posedge dst_clk) begin
    if (dst_rst) begin
        dst_sync_ff1 <= 1'b0;
        dst_sync_ff2 <= 1'b0;
        dst_sync_ff3 <= 1'b0;
    end else begin
        dst_sync_ff1 <= src_toggle;
        dst_sync_ff2 <= dst_sync_ff1;
        dst_sync_ff3 <= dst_sync_ff2;
    end
end

assign dst_pulse = dst_sync_ff2 ^ dst_sync_ff3;

endmodule
