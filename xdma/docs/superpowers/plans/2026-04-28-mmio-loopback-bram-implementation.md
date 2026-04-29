# BAR/MMIO 回环测试 Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** 在 `sfp_srio_base_top` 基线上新增基于 XDMA 用户 BAR/MMIO 的真回环测试路径，使上位机可以把完整 `32bit {addr,data}` 写入 `TX BRAM`，再从独立 `RX BRAM` 读回光回环结果进行逐字比对。

**Architecture:** 新增一层 MMIO 回环测试壳，提供 `TX BRAM / RX BRAM / CTRL-STATUS` 三块独立地址空间。发送状态机从 `TX BRAM` 顺序取出 100 字一帧送入现有 SRIO Base 发送链，接收状态机从 RX 业务层恢复出 100 字并写入 `RX BRAM`，同时更新 `RX_DONE / RX_FRAME_ID / RX_ERROR_COUNT / RX_CAPTURE_COUNT` 等状态寄存器。

**Tech Stack:** Verilog RTL、Vivado 2017.4、XDMA 用户 BAR/MMIO、`xdma_rw.exe`、远端 Vivado batch 构建、Windows 驱动调试。

---

## 文件结构

- **新增：** `D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\hv_mmio_regs.v`
  - 提供 `TX BRAM / RX BRAM / CTRL-STATUS` 的 MMIO 地址译码和寄存器读写。
- **新增：** `D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\hv_mmio_tx_reader.v`
  - 从 `TX BRAM` 读取 100 字一帧并送给发送链。
- **新增：** `D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\hv_mmio_rx_capture.v`
  - 从 RX 业务层抓取 100 字一帧并写入 `RX BRAM`，同时更新状态寄存器。
- **新增：** `D:\Controler\xdma\project_1\project_1.srcs\sim_1\new\hv_mmio_tx_reader_tb.v`
  - `TX BRAM` 读帧状态机仿真。
- **新增：** `D:\Controler\xdma\project_1\project_1.srcs\sim_1\new\hv_mmio_rx_capture_tb.v`
  - `RX BRAM` 回写和状态更新仿真。
- **修改：** `D:\Controler\xdma\gtwizard_0_ex\gtwizard_0_ex.srcs\sources_1\imports\example_design\gtwizard_0_exdes.v`
  - 接入 MMIO 发送输入源，替换当前本地 `hv_proto_tx` 自动生成路径；增加 RX 捕获输出接口。
- **修改：** `D:\Controler\xdma\project_1\project_1.srcs\sources_1\vendor_sfp3\example_design\srio_base_shell.v`
  - 透传 MMIO 回环测试所需的 TX/RX 业务口与状态口。
- **修改：** `D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\sfp_srio_base_top.v`
  - 新增 MMIO 测试壳的顶层连线，并保留必要 ILA 观测点。
- **修改：** `D:\Controler\xdma\scripts\use_srio_base_top.tcl`
  - 把新增 RTL 和仿真相关文件纳入工程。
- **文档：**
  - `D:\Controler\xdma\docs\superpowers\specs\2026-04-28-mmio-loopback-bram-design.md`

### Task 1: 新建 MMIO 地址映射寄存器模块

**Files:**
- Create: `D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\hv_mmio_regs.v`
- Test: `D:\Controler\xdma\project_1\project_1.srcs\sim_1\new\hv_mmio_regs_tb.v`

- [ ] **Step 1: 写 `hv_mmio_regs.v` 模块骨架**

```verilog
`timescale 1ns / 1ps

module hv_mmio_regs (
    input  wire        clk,
    input  wire        rst,
    input  wire [15:0] mmio_addr,
    input  wire [31:0] mmio_wdata,
    input  wire        mmio_we,
    input  wire        mmio_re,
    output reg  [31:0] mmio_rdata,
    output reg         start_loopback,
    output reg         clear_status,
    output reg  [6:0]  tx_word_count,
    output reg  [15:0] tx_frame_id,
    input  wire        rx_done,
    input  wire [15:0] rx_frame_id,
    input  wire [7:0]  rx_error_count,
    input  wire [6:0]  rx_capture_count
);

endmodule
```

- [ ] **Step 2: 在模块内定义 BAR/MMIO 地址常量**

```verilog
localparam [15:0] TX_BRAM_BASE     = 16'h0000;
localparam [15:0] RX_BRAM_BASE     = 16'h1000;
localparam [15:0] REG_CTRL         = 16'h2000;
localparam [15:0] REG_TX_WORD_CNT  = 16'h2004;
localparam [15:0] REG_TX_FRAME_ID  = 16'h2008;
localparam [15:0] REG_RX_DONE      = 16'h200C;
localparam [15:0] REG_RX_FRAME_ID  = 16'h2010;
localparam [15:0] REG_RX_ERR_CNT   = 16'h2014;
localparam [15:0] REG_RX_CAP_CNT   = 16'h2018;
```

- [ ] **Step 3: 实现控制寄存器写逻辑**

```verilog
always @(posedge clk) begin
    if (rst) begin
        start_loopback <= 1'b0;
        clear_status   <= 1'b0;
        tx_word_count  <= 7'd97;
        tx_frame_id    <= 16'h0001;
    end else begin
        start_loopback <= 1'b0;
        clear_status   <= 1'b0;
        if (mmio_we) begin
            case (mmio_addr)
                REG_CTRL: begin
                    start_loopback <= mmio_wdata[0];
                    clear_status   <= mmio_wdata[1];
                end
                REG_TX_WORD_CNT: tx_word_count <= mmio_wdata[6:0];
                REG_TX_FRAME_ID: tx_frame_id   <= mmio_wdata[15:0];
            endcase
        end
    end
end
```

- [ ] **Step 4: 实现状态寄存器读逻辑**

```verilog
always @(*) begin
    mmio_rdata = 32'h0000_0000;
    if (mmio_re) begin
        case (mmio_addr)
            REG_CTRL:        mmio_rdata = 32'h0000_0000;
            REG_TX_WORD_CNT: mmio_rdata = {25'd0, tx_word_count};
            REG_TX_FRAME_ID: mmio_rdata = {16'h0000, tx_frame_id};
            REG_RX_DONE:     mmio_rdata = {31'd0, rx_done};
            REG_RX_FRAME_ID: mmio_rdata = {16'h0000, rx_frame_id};
            REG_RX_ERR_CNT:  mmio_rdata = {24'h000000, rx_error_count};
            REG_RX_CAP_CNT:  mmio_rdata = {25'd0, rx_capture_count};
        endcase
    end
end
```

- [ ] **Step 5: 写一个最小寄存器仿真测试**

```verilog
initial begin
    rst = 1'b1;
    mmio_we = 1'b0;
    mmio_re = 1'b0;
    #40;
    rst = 1'b0;

    mmio_addr  = 16'h2004;
    mmio_wdata = 32'd97;
    mmio_we    = 1'b1;
    #10;
    mmio_we    = 1'b0;

    mmio_addr  = 16'h2004;
    mmio_re    = 1'b1;
    #10;
    if (mmio_rdata[6:0] != 7'd97) $fatal(1, "tx_word_count mismatch");
    mmio_re = 1'b0;
end
```

- [ ] **Step 6: 运行仿真确认寄存器读写通过**

Run: `xelab/xsim` 跑 `hv_mmio_regs_tb`

Expected: PASS，无 `$fatal`

- [ ] **Step 7: Commit**

```bash
git -C D:\Controler add xdma/project_1/project_1.srcs/sources_1/new/hv_mmio_regs.v xdma/project_1/project_1.srcs/sim_1/new/hv_mmio_regs_tb.v
git -C D:\Controler commit -m "feat: add mmio loopback control registers"
```

### Task 2: 新建 TX BRAM 读帧状态机

**Files:**
- Create: `D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\hv_mmio_tx_reader.v`
- Test: `D:\Controler\xdma\project_1\project_1.srcs\sim_1\new\hv_mmio_tx_reader_tb.v`

- [ ] **Step 1: 写 `hv_mmio_tx_reader.v` 模块骨架**

```verilog
`timescale 1ns / 1ps

module hv_mmio_tx_reader (
    input  wire        clk,
    input  wire        rst,
    input  wire        start,
    input  wire [31:0] tx_bram_rdata,
    output reg  [6:0]  tx_bram_index,
    output reg  [31:0] packet_out,
    output reg         packet_valid,
    output reg         busy,
    output reg         frame_done
);

endmodule
```

- [ ] **Step 2: 实现 100 字发送循环**

```verilog
always @(posedge clk) begin
    if (rst) begin
        tx_bram_index <= 7'd0;
        packet_out    <= 32'h0000_0000;
        packet_valid  <= 1'b0;
        busy          <= 1'b0;
        frame_done    <= 1'b0;
    end else begin
        packet_valid <= 1'b0;
        frame_done   <= 1'b0;

        if (start && !busy) begin
            busy          <= 1'b1;
            tx_bram_index <= 7'd0;
        end else if (busy) begin
            packet_out   <= tx_bram_rdata;
            packet_valid <= 1'b1;
            if (tx_bram_index == 7'd99) begin
                busy          <= 1'b0;
                frame_done    <= 1'b1;
                tx_bram_index <= 7'd0;
            end else begin
                tx_bram_index <= tx_bram_index + 7'd1;
            end
        end
    end
end
```

- [ ] **Step 3: 写读帧状态机仿真**

```verilog
reg [31:0] tx_mem [0:99];

initial begin
    integer i;
    for (i = 0; i < 100; i = i + 1) begin
        tx_mem[i] = {16'h1000 + i[15:0], 16'h2000 + i[15:0]};
    end
end

always @(*) begin
    tx_bram_rdata = tx_mem[tx_bram_index];
end
```

- [ ] **Step 4: 在仿真里验证第 0 个字到第 99 个字都按顺序发出**

```verilog
if (packet_valid) begin
    if (packet_out !== tx_mem[seen_count]) begin
        $fatal(1, "packet mismatch at %0d", seen_count);
    end
    seen_count = seen_count + 1;
end
```

- [ ] **Step 5: 运行仿真确认发送状态机通过**

Run: `xelab/xsim` 跑 `hv_mmio_tx_reader_tb`

Expected: PASS，`frame_done` 在第 100 个字后拉高

- [ ] **Step 6: Commit**

```bash
git -C D:\Controler add xdma/project_1/project_1.srcs/sources_1/new/hv_mmio_tx_reader.v xdma/project_1/project_1.srcs/sim_1/new/hv_mmio_tx_reader_tb.v
git -C D:\Controler commit -m "feat: add mmio tx frame reader"
```

### Task 3: 新建 RX BRAM 捕获状态机

**Files:**
- Create: `D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\hv_mmio_rx_capture.v`
- Test: `D:\Controler\xdma\project_1\project_1.srcs\sim_1\new\hv_mmio_rx_capture_tb.v`

- [ ] **Step 1: 写 `hv_mmio_rx_capture.v` 模块骨架**

```verilog
`timescale 1ns / 1ps

module hv_mmio_rx_capture (
    input  wire        clk,
    input  wire        rst,
    input  wire        clear_status,
    input  wire [31:0] rx_packet_in,
    input  wire        rx_packet_valid,
    output reg  [6:0]  rx_bram_index,
    output reg  [31:0] rx_bram_wdata,
    output reg         rx_bram_we,
    output reg         rx_done,
    output reg  [15:0] rx_frame_id,
    output reg  [7:0]  rx_error_count,
    output reg  [6:0]  rx_capture_count
);

endmodule
```

- [ ] **Step 2: 实现清状态逻辑和基础捕获逻辑**

```verilog
always @(posedge clk) begin
    if (rst || clear_status) begin
        rx_bram_index    <= 7'd0;
        rx_bram_wdata    <= 32'h0000_0000;
        rx_bram_we       <= 1'b0;
        rx_done          <= 1'b0;
        rx_frame_id      <= 16'h0000;
        rx_error_count   <= 8'd0;
        rx_capture_count <= 7'd0;
    end else begin
        rx_bram_we <= 1'b0;
        if (rx_packet_valid && !rx_done) begin
            rx_bram_wdata <= rx_packet_in;
            rx_bram_we    <= 1'b1;
            if (rx_bram_index == 7'd0) begin
                rx_frame_id <= rx_packet_in[15:0];
            end
            if (rx_bram_index == 7'd99) begin
                rx_done          <= 1'b1;
                rx_capture_count <= 7'd100;
                rx_bram_index    <= 7'd0;
            end else begin
                rx_bram_index    <= rx_bram_index + 7'd1;
                rx_capture_count <= rx_capture_count + 7'd1;
            end
        end
    end
end
```

- [ ] **Step 3: 写一个最小 RX 捕获仿真**

```verilog
initial begin
    clear_status = 1'b0;
    rx_packet_valid = 1'b0;
    #40;
    for (i = 0; i < 100; i = i + 1) begin
        rx_packet_in    = (i == 0) ? 32'hA5F0_0001 : {16'h1000 + i[15:0], 16'h2000 + i[15:0]};
        rx_packet_valid = 1'b1;
        #10;
    end
    rx_packet_valid = 1'b0;
end
```

- [ ] **Step 4: 在仿真里验证 `rx_done/rx_frame_id/rx_capture_count`**

```verilog
if (!rx_done)               $fatal(1, "rx_done not asserted");
if (rx_frame_id != 16'h0001)$fatal(1, "rx_frame_id mismatch");
if (rx_capture_count != 7'd100) $fatal(1, "rx_capture_count mismatch");
```

- [ ] **Step 5: 运行仿真确认 RX 捕获状态机通过**

Run: `xelab/xsim` 跑 `hv_mmio_rx_capture_tb`

Expected: PASS，状态寄存器更新正确

- [ ] **Step 6: Commit**

```bash
git -C D:\Controler add xdma/project_1/project_1.srcs/sources_1/new/hv_mmio_rx_capture.v xdma/project_1/project_1.srcs/sim_1/new/hv_mmio_rx_capture_tb.v
git -C D:\Controler commit -m "feat: add mmio rx frame capture"
```

### Task 4: 接入 SRIO Base 顶层与业务壳

**Files:**
- Modify: `D:\Controler\xdma\gtwizard_0_ex\gtwizard_0_ex.srcs\sources_1\imports\example_design\gtwizard_0_exdes.v`
- Modify: `D:\Controler\xdma\project_1\project_1.srcs\sources_1\vendor_sfp3\example_design\srio_base_shell.v`
- Modify: `D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\sfp_srio_base_top.v`

- [ ] **Step 1: 在 exdes 中预留 MMIO 发送输入和 RX 捕获输出接口**

新增端口：

```verilog
    input  wire [31:0] MMIO_TX_PACKET_IN,
    input  wire        MMIO_TX_PACKET_VALID,
    output wire [31:0] MMIO_RX_PACKET_OUT,
    output wire        MMIO_RX_PACKET_VALID,
```

- [ ] **Step 2: 用 MMIO 发送输入替换当前自动生成 payload**

原则：

- 当 `MMIO_TX_PACKET_VALID=1` 时，发送链使用 `MMIO_TX_PACKET_IN`
- 第一阶段保留现有控制字符生成，不改时钟壳和 GT reset 壳

目标代码片段：

```verilog
assign gt0_hv_packet_i       = MMIO_TX_PACKET_IN;
assign gt0_hv_packet_valid_i = MMIO_TX_PACKET_VALID;
```

- [ ] **Step 3: 在 RX 侧导出对齐后用于业务捕获的数据**

目标代码片段：

```verilog
assign MMIO_RX_PACKET_OUT   = gt0_rxdata_track_dbg_i;
assign MMIO_RX_PACKET_VALID = gt0_rxbyteisaligned_i &&
                              !gt0_rx_system_reset_c &&
                              (gt0_rxdisperr_i == 4'd0) &&
                              (gt0_rxnotintable_i == 4'd0);
```

- [ ] **Step 4: 在 `srio_base_shell.v` 透传这些新接口**

确保顶层壳不改变 SFP/AD9516 结构，只把 MMIO 业务数据和状态口穿上来。

- [ ] **Step 5: 在 `sfp_srio_base_top.v` 实例化 `hv_mmio_regs / hv_mmio_tx_reader / hv_mmio_rx_capture`**

顶层需要新增连接：

```verilog
wire [31:0] mmio_tx_packet;
wire        mmio_tx_packet_valid;
wire [31:0] mmio_rx_packet;
wire        mmio_rx_packet_valid;
```

并把：

- `hv_mmio_tx_reader.packet_out -> srio_base_shell.MMIO_TX_PACKET_IN`
- `hv_mmio_tx_reader.packet_valid -> srio_base_shell.MMIO_TX_PACKET_VALID`
- `srio_base_shell.MMIO_RX_PACKET_OUT -> hv_mmio_rx_capture.rx_packet_in`
- `srio_base_shell.MMIO_RX_PACKET_VALID -> hv_mmio_rx_capture.rx_packet_valid`

- [ ] **Step 6: 运行语法检查/综合前检查**

Run: 当前工程的本地语法检查或 `xelab` 最小编译

Expected: 无端口未连接、位宽不匹配错误

- [ ] **Step 7: Commit**

```bash
git -C D:\Controler add xdma/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/gtwizard_0_exdes.v xdma/project_1/project_1.srcs/sources_1/vendor_sfp3/example_design/srio_base_shell.v xdma/project_1/project_1.srcs/sources_1/new/sfp_srio_base_top.v
git -C D:\Controler commit -m "feat: wire mmio loopback path into srio base"
```

### Task 5: 更新工程脚本并跑远端构建

**Files:**
- Modify: `D:\Controler\xdma\scripts\use_srio_base_top.tcl`

- [ ] **Step 1: 把新增 RTL 文件纳入 `use_srio_base_top.tcl`**

需要加入：

```tcl
[file join $src_root "new" "hv_mmio_regs.v"] \
[file join $src_root "new" "hv_mmio_tx_reader.v"] \
[file join $src_root "new" "hv_mmio_rx_capture.v"] \
```

- [ ] **Step 2: 保留现有构建入口不变**

Run: `Get-Content 'D:\Controler\xdma\scripts\build_srio_base_bit.tcl'`

Expected: 仍然构建 `sfp_srio_base_top`

- [ ] **Step 3: 同步到远端并重编**

Run: 复制修改文件到 `100.116.43.113`，然后调用：

```powershell
ssh PS@100.116.43.113 "cmd /c C:\Users\PS\Desktop\Controler\xdma\run_build_srio_base_bit_remote.bat"
```

Expected: `write_bitstream Complete!`

- [ ] **Step 4: 把最新 `bit/ltx` 复制到远端 `bit_mcs`**

目标文件：

```text
C:\Users\PS\Desktop\Controler\xdma\bit_mcs\sfp_srio_base_top.bit
C:\Users\PS\Desktop\Controler\xdma\bit_mcs\sfp_srio_base_top.ltx
```

- [ ] **Step 5: Commit**

```bash
git -C D:\Controler add xdma/scripts/use_srio_base_top.tcl
git -C D:\Controler commit -m "build: include mmio loopback modules in srio base flow"
```

### Task 6: 给出 `xdma_rw.exe` 回环测试步骤并完成验收

**Files:**
- Modify: `D:\Controler\xdma\docs\superpowers\specs\2026-04-28-mmio-loopback-bram-design.md`

- [ ] **Step 1: 生成一组 100 字测试帧**

约定：

```text
word[0]  = A5F0_0001
word[1]  = 1001_2001
...
word[97] = 1061_2061
word[98] = 1062_90BC
word[99] = 1063_90BC
```

- [ ] **Step 2: 用 `xdma_rw.exe user` 写入 `TX BRAM` 和寄存器**

示例流程应覆盖：

```text
write TX BRAM words
write TX_WORD_COUNT
write TX_FRAME_ID
write CTRL.start_loopback
poll RX_DONE
read RX BRAM words
read RX_ERROR_COUNT
```

- [ ] **Step 3: 明确验收条件**

验收标准：

- `RX_DONE = 1`
- `RX_FRAME_ID = TX_FRAME_ID`
- `RX_ERROR_COUNT = 0`
- `RX_CAPTURE_COUNT = 100`
- `RX BRAM[0..99] == TX BRAM[0..99]`

- [ ] **Step 4: 把测试步骤补充到文档**

在 spec 末尾增加一节：

```markdown
## xdma_rw.exe 测试步骤
...
```

- [ ] **Step 5: Commit**

```bash
git -C D:\Controler add xdma/docs/superpowers/specs/2026-04-28-mmio-loopback-bram-design.md
git -C D:\Controler commit -m "docs: add xdma_rw mmio loopback test procedure"
```

## Self-Review

- 覆盖检查：
  - `TX BRAM / RX BRAM / CTRL-STATUS` 均有独立任务
  - 顶层集成、远端构建、`xdma_rw.exe` 测试流程均有任务
- 占位检查：
  - 没有使用 `TODO/TBD`
  - 每个任务都给出具体文件和命令
- 类型一致性：
  - BRAM 索引统一使用 `7'd0..7'd99`
  - 帧大小统一为 `100`
  - 状态寄存器位宽和地址映射在全计划中一致
