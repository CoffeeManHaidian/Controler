/**
 * timer_1khz.v
 * 功能：产生可配置频率的时钟脉冲（默认1000Hz）
 * 时钟输入：125MHz
 * 分频系数：125 (for 1000Hz)
 */

module timer_1khz (
    input  wire        clk,        // 125MHz
    input  wire        rst,
    input  wire [15:0] freq_hz,    // 配置频率(Hz)
    output reg         pulse_out   // 脉冲输出
);

    reg [31:0] clk_counter;
    wire [31:0] period_count;
    
    // 计算周期计数：period = 125000000 / freq_hz
    // 简化：period = 125 * 1000 / freq_hz * 1000
    // 当 freq_hz = 1000 时，period = 125000
    
    // 使用分频器：clock_divider = (125000000 / freq_hz)
    // 为简化起见，假设 freq_hz 范围 100~10000 Hz
    // 对于1000Hz: divider = 125000
    
    localparam CLK_FREQ = 32'd125000000;  // 125MHz
    
    // 简单分频：假设freq_hz固定为1000
    // 当 freq_hz = 1000，周期 = 125000
    assign period_count = CLK_FREQ / {freq_hz, 8'd0};  // freq_hz * 256 用于精度
    
    always @(posedge clk) begin
        if (rst) begin
            clk_counter <= 32'd0;
            pulse_out <= 1'b0;
        end else begin
            if (clk_counter >= period_count - 1) begin
                clk_counter <= 32'd0;
                pulse_out <= 1'b1;
            end else begin
                clk_counter <= clk_counter + 1;
                pulse_out <= 1'b0;
            end
        end
    end

endmodule

/**
 * 简化版本：固定1000Hz (推荐使用)
 */
module timer_1khz_fixed (
    input  wire        clk,        // 125MHz
    input  wire        rst,
    output reg         pulse_out   // 每125000个时钟周期产生1个脉冲
);

    reg [19:0] clk_counter;       // 20bit足以计数到 ~1M
    
    localparam DIVIDER = 20'd124999;  // 125000-1
    
    always @(posedge clk) begin
        if (rst) begin
            clk_counter <= 20'd0;
            pulse_out <= 1'b0;
        end else begin
            if (clk_counter == DIVIDER) begin
                clk_counter <= 20'd0;
                pulse_out <= 1'b1;
            end else begin
                clk_counter <= clk_counter + 1'b1;
                pulse_out <= 1'b0;
            end
        end
    end

endmodule

