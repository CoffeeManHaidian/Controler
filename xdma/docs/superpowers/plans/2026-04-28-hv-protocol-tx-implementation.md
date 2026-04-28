# 高压协议发送封装实现计划

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** 在现有稳定的 `SRIO Base` 顶层上新增一个独立的高压协议发送封装层，支持外部 `16bit` 数据输入接口、内部默认测试源、`16bit` 地址自动递增并在上限后回卷，同时保留当前远端构建和 ILA 调试能力。

**Architecture:** 新增 `hv_proto_tx.v` 作为独立协议层，输出 `32bit` `{addr,data}` 业务字。保留 `SFP3 / AD9516 / GT / SRIO Base / RX checker` 外壳不动，只在 `gtwizard_0_exdes` 的发送链上用高压协议封装输出替换当前固定 ROM 测试序列的有效载荷，并把关键状态导到顶层 `ILA` 方便上板验证。

**Tech Stack:** Verilog RTL、Vivado 2017.4、7 Series GTX SRIO example design、ILA IP、远端 `100.116.43.113` Vivado batch 构建、Git 分支发布。

---

## 文件结构

- **新增：** `D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\hv_proto_tx.v`
  - 高压协议发送封装层，负责地址递增、内部默认测试源、外部输入数据复用。
- **修改：** `D:\Controler\xdma\gtwizard_0_ex\gtwizard_0_ex.srcs\sources_1\imports\example_design\gtwizard_0_exdes.v`
  - 接入 `hv_proto_tx`，用其输出替换当前 `gt0_frame_gen` 的有效载荷来源，并导出新增调试信号。
- **修改：** `D:\Controler\xdma\project_1\project_1.srcs\sources_1\vendor_sfp3\example_design\srio_base_shell.v`
  - 透传高压协议调试信号到顶层。
- **修改：** `D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\sfp_srio_base_top.v`
  - 顶层接收新增调试信号，扩展 TX ILA probe。
- **修改：** `D:\Controler\xdma\scripts\use_srio_base_top.tcl`
  - 将 `hv_proto_tx.v` 纳入工程，并根据新增探针扩展 `ila_sfp_tx` 配置。
- **修改：** `D:\Controler\xdma\scripts\build_srio_base_bit.tcl`
  - 仅在需要时更新日志/产物名称检查；优先保持现有构建入口不变。
- **验证参考：**
  - `D:\Controler\xdma\docs\superpowers\specs\2026-04-28-hv-protocol-tx-design.md`
  - `D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\sfp_srio_base_top.v`
  - `D:\Controler\xdma\gtwizard_0_ex\gtwizard_0_ex.srcs\sources_1\imports\example_design\gtwizard_0_gt_frame_gen.v`

### Task 1: 建立开发分支并记录当前 SRIO Base 基线

**Files:**
- Modify: `D:\Controler\xdma\docs\superpowers\plans\2026-04-28-hv-protocol-tx-implementation.md`

- [ ] **Step 1: 查看当前 git 分支和工作区状态**

Run: `git -C D:\Controler branch --show-current; git -C D:\Controler status --short`

Expected: 输出当前分支名和未提交文件列表，确认当前工作区不是干净仓库。

- [ ] **Step 2: 创建或切换到高压协议开发分支**

Run: `git -C D:\Controler switch -c codex/hv-protocol-tx`

Expected: 成功切换到 `codex/hv-protocol-tx`；如果分支已存在，则改用 `git -C D:\Controler switch codex/hv-protocol-tx`。

- [ ] **Step 3: 记录当前 SRIO Base 构建入口供后续验证**

Run: `Get-Content 'D:\Controler\xdma\scripts\build_srio_base_bit.tcl' -TotalCount 40`

Expected: 看到当前 bit/ltx 构建入口仍为 `sfp_srio_base_top`。

### Task 2: 新增 hv_proto_tx 模块并写入最小可验证逻辑

**Files:**
- Create: `D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\hv_proto_tx.v`

- [ ] **Step 1: 写入高压协议发送封装模块骨架**

```verilog
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

endmodule
```

- [ ] **Step 2: 实现内部默认测试源 ROM 和索引递增**

```verilog
reg [15:0] internal_rom [0:15];
reg [3:0]  internal_index;
reg [15:0] selected_data;

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
```

- [ ] **Step 3: 实现地址递增与上限回卷**

```verilog
always @(posedge clk) begin
    if (rst) begin
        packet_out           <= 32'h0;
        packet_valid         <= 1'b0;
        current_addr         <= 16'h0;
        using_internal_source<= 1'b1;
        internal_index       <= 4'd0;
    end else begin
        using_internal_source <= use_internal_source;
        packet_valid <= use_internal_source | data_valid;

        if (use_internal_source) begin
            selected_data <= internal_rom[internal_index];
            internal_index <= internal_index + 4'd1;
        end else if (data_valid) begin
            selected_data <= data_in;
        end

        if (use_internal_source | data_valid) begin
            packet_out <= {current_addr, selected_data};
            if (current_addr >= addr_limit) begin
                current_addr <= addr_base;
            end else begin
                current_addr <= current_addr + 16'd1;
            end
        end
    end
end
```

- [ ] **Step 4: 修正复位时地址初值和 packet_out 同步数据问题**

实现要求：
- `current_addr` 复位后应加载 `addr_base`
- `packet_out` 应输出当前拍最终选择的数据，而不是上一拍残留

将上面的 always 块改成使用组合选择信号：

```verilog
wire use_external_word = (~use_internal_source) & data_valid;
wire use_internal_word = use_internal_source;
wire emit_word = use_external_word | use_internal_word;
wire [15:0] next_data_word = use_internal_source ? internal_rom[internal_index] : data_in;

always @(posedge clk) begin
    if (rst) begin
        packet_out            <= 32'h0;
        packet_valid          <= 1'b0;
        current_addr          <= addr_base;
        using_internal_source <= 1'b1;
        internal_index        <= 4'd0;
    end else begin
        using_internal_source <= use_internal_source;
        packet_valid <= emit_word;
        if (emit_word) begin
            packet_out <= {current_addr, next_data_word};
            if (use_internal_word) begin
                internal_index <= internal_index + 4'd1;
            end
            if (current_addr >= addr_limit) current_addr <= addr_base;
            else                            current_addr <= current_addr + 16'd1;
        end
    end
end
```

- [ ] **Step 5: 检查新文件内容**

Run: `Get-Content 'D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\hv_proto_tx.v'`

Expected: 能看到模块接口、16 项默认表、地址回卷逻辑。

- [ ] **Step 6: Commit**

```bash
git -C D:\Controler add xdma/project_1/project_1.srcs/sources_1/new/hv_proto_tx.v
git -C D:\Controler commit -m "feat: add high-voltage protocol tx wrapper"
```

### Task 3: 将 hv_proto_tx 接入 SRIO Base 发送链

**Files:**
- Modify: `D:\Controler\xdma\gtwizard_0_ex\gtwizard_0_ex.srcs\sources_1\imports\example_design\gtwizard_0_exdes.v`

- [ ] **Step 1: 在 exdes 模块端口列表中新增调试输出**

```verilog
    output wire [31:0]  DBG_HV_PACKET_OUT,
    output wire [15:0]  DBG_HV_CURRENT_ADDR,
    output wire         DBG_HV_PACKET_VALID,
    output wire         DBG_HV_USING_INTERNAL_SOURCE,
```

- [ ] **Step 2: 在内部信号区新增高压协议连线**

```verilog
    wire [31:0]  gt0_hv_packet_i;
    wire         gt0_hv_packet_valid_i;
    wire [15:0]  gt0_hv_current_addr_i;
    wire         gt0_hv_using_internal_i;
    wire [15:0]  gt0_hv_external_data_i;
    wire         gt0_hv_external_valid_i;
```

并在同一区域加入第一阶段默认配置：

```verilog
    assign gt0_hv_external_data_i  = 16'h0000;
    assign gt0_hv_external_valid_i = 1'b0;
```

- [ ] **Step 3: 实例化 hv_proto_tx**

```verilog
    hv_proto_tx gt0_hv_proto_tx (
        .clk                (gt0_txusrclk2_i),
        .rst                (gt0_tx_system_reset_c),
        .data_in            (gt0_hv_external_data_i),
        .data_valid         (gt0_hv_external_valid_i),
        .use_internal_source(1'b1),
        .addr_base          (16'h11A4),
        .addr_limit         (16'h11B3),
        .packet_out         (gt0_hv_packet_i),
        .packet_valid       (gt0_hv_packet_valid_i),
        .current_addr       (gt0_hv_current_addr_i),
        .using_internal_source(gt0_hv_using_internal_i)
    );
```

- [ ] **Step 4: 用高压协议 payload 替换发送数据中间 32 位**

把原来的 `gt0_frame_gen` 输出连接：

```verilog
.TX_DATA_OUT({gt0_txdata_float_i,gt0_txdata_i,gt0_txdata_float16_i}),
```

替换为先接到中间线：

```verilog
wire [79:0] gt0_frame_gen_data_i;
wire [7:0]  gt0_frame_gen_ctrl_i;

.TX_DATA_OUT(gt0_frame_gen_data_i),
.TXCTRL_OUT(gt0_frame_gen_ctrl_i),
```

然后在实例后增加：

```verilog
assign {gt0_txdata_float_i, gt0_txdata_i, gt0_txdata_float16_i} =
    gt0_hv_packet_valid_i
    ? {gt0_frame_gen_data_i[79:48], gt0_hv_packet_i, gt0_frame_gen_data_i[15:0]}
    : gt0_frame_gen_data_i;

assign {gt0_txcharisk_float_i, gt0_txcharisk_i} = gt0_frame_gen_ctrl_i;
```

- [ ] **Step 5: 导出新增 debug 信号**

```verilog
assign DBG_HV_PACKET_OUT            = gt0_hv_packet_i;
assign DBG_HV_CURRENT_ADDR          = gt0_hv_current_addr_i;
assign DBG_HV_PACKET_VALID          = gt0_hv_packet_valid_i;
assign DBG_HV_USING_INTERNAL_SOURCE = gt0_hv_using_internal_i;
```

- [ ] **Step 6: 快速静态检查**

Run: `Select-String -Path 'D:\Controler\xdma\gtwizard_0_ex\gtwizard_0_ex.srcs\sources_1\imports\example_design\gtwizard_0_exdes.v' -Pattern 'DBG_HV_PACKET_OUT|gt0_hv_proto_tx|gt0_frame_gen_data_i'`

Expected: 能看到新增端口、实例和 payload 替换连接。

- [ ] **Step 7: Commit**

```bash
git -C D:\Controler add xdma/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/gtwizard_0_exdes.v
git -C D:\Controler commit -m "feat: feed SRIO base tx path from hv protocol wrapper"
```

### Task 4: 透传新调试信号并扩展顶层 ILA

**Files:**
- Modify: `D:\Controler\xdma\project_1\project_1.srcs\sources_1\vendor_sfp3\example_design\srio_base_shell.v`
- Modify: `D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\sfp_srio_base_top.v`
- Modify: `D:\Controler\xdma\scripts\use_srio_base_top.tcl`

- [ ] **Step 1: 在 srio_base_shell 端口中增加高压协议调试输出**

```verilog
    output wire [31:0]  DBG_HV_PACKET_OUT,
    output wire [15:0]  DBG_HV_CURRENT_ADDR,
    output wire         DBG_HV_PACKET_VALID,
    output wire         DBG_HV_USING_INTERNAL_SOURCE,
```

并在 `gtwizard_0_exdes` 实例上补齐对应连接。

- [ ] **Step 2: 在 sfp_srio_base_top 中新增连线**

```verilog
wire [31:0] dbg_hv_packet_out;
wire [15:0] dbg_hv_current_addr;
wire        dbg_hv_packet_valid;
wire        dbg_hv_using_internal_source;
```

并从 `u_srio_base_shell` 连接进来。

- [ ] **Step 3: 扩展 TX ILA probe**

在 `sfp_srio_base_top.v` 中把 `ila_sfp_tx` 增加到 18 个 probe：

```verilog
    .probe14(dbg_hv_packet_out),
    .probe15(dbg_hv_current_addr),
    .probe16(dbg_hv_packet_valid),
    .probe17(dbg_hv_using_internal_source)
```

- [ ] **Step 4: 更新 use_srio_base_top.tcl**

在 `src_files` 中加入：

```tcl
[file join $src_root "new" "hv_proto_tx.v"] \
```

并把 `ila_sfp_tx` 配置改为：

```tcl
CONFIG.C_NUM_OF_PROBES {18}
CONFIG.C_PROBE14_WIDTH {32}
CONFIG.C_PROBE15_WIDTH {16}
CONFIG.C_PROBE16_WIDTH {1}
CONFIG.C_PROBE17_WIDTH {1}
```

- [ ] **Step 5: 检查 Tcl 和顶层修改**

Run: `Select-String -Path 'D:\Controler\xdma\scripts\use_srio_base_top.tcl','D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\sfp_srio_base_top.v','D:\Controler\xdma\project_1\project_1.srcs\sources_1\vendor_sfp3\example_design\srio_base_shell.v' -Pattern 'hv_proto_tx|DBG_HV_PACKET_OUT|C_NUM_OF_PROBES {18}'`

Expected: 三个文件都能匹配到新增内容。

- [ ] **Step 6: Commit**

```bash
git -C D:\Controler add xdma/project_1/project_1.srcs/sources_1/vendor_sfp3/example_design/srio_base_shell.v xdma/project_1/project_1.srcs/sources_1/new/sfp_srio_base_top.v xdma/scripts/use_srio_base_top.tcl
git -C D:\Controler commit -m "feat: expose hv tx debug signals through SRIO base top"
```

### Task 5: 本地检查、远端构建并验证产物

**Files:**
- Modify: `D:\Controler\xdma\scripts\build_srio_base_bit.tcl`（仅当需要）
- Verify: `D:\Controler\xdma\project_1\project_1.runs\impl_1\sfp_srio_base_top.bit`
- Verify: `D:\Controler\xdma\project_1\project_1.runs\impl_1\sfp_srio_base_top.ltx`

- [ ] **Step 1: 本地静态检查关键连接**

Run: `Select-String -Path 'D:\Controler\xdma\gtwizard_0_ex\gtwizard_0_ex.srcs\sources_1\imports\example_design\gtwizard_0_exdes.v' -Pattern 'gt0_hv_packet_i|gt0_hv_packet_valid_i|gt0_frame_gen_ctrl_i'`

Expected: 三类关键信号都存在。

- [ ] **Step 2: 同步修改过的文件到远端**

Run:

```powershell
scp D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\hv_proto_tx.v PS@100.116.43.113:hv_proto_tx.v
scp D:\Controler\xdma\gtwizard_0_ex\gtwizard_0_ex.srcs\sources_1\imports\example_design\gtwizard_0_exdes.v PS@100.116.43.113:gtwizard_0_exdes.v
scp D:\Controler\xdma\project_1\project_1.srcs\sources_1\vendor_sfp3\example_design\srio_base_shell.v PS@100.116.43.113:srio_base_shell.v
scp D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\sfp_srio_base_top.v PS@100.116.43.113:sfp_srio_base_top.v
scp D:\Controler\xdma\scripts\use_srio_base_top.tcl PS@100.116.43.113:use_srio_base_top.tcl
```

Expected: 文件成功上传，无 `No such file` 错误。

- [ ] **Step 3: 远端批量构建**

Run:

```powershell
ssh PS@100.116.43.113 "cmd /c copy /Y C:\Users\PS\hv_proto_tx.v C:\Users\PS\Desktop\Controler\xdma\project_1\project_1.srcs\sources_1\new\hv_proto_tx.v && copy /Y C:\Users\PS\gtwizard_0_exdes.v C:\Users\PS\Desktop\Controler\xdma\gtwizard_0_ex\gtwizard_0_ex.srcs\sources_1\imports\example_design\gtwizard_0_exdes.v && copy /Y C:\Users\PS\srio_base_shell.v C:\Users\PS\Desktop\Controler\xdma\project_1\project_1.srcs\sources_1\vendor_sfp3\example_design\srio_base_shell.v && copy /Y C:\Users\PS\sfp_srio_base_top.v C:\Users\PS\Desktop\Controler\xdma\project_1\project_1.srcs\sources_1\new\sfp_srio_base_top.v && copy /Y C:\Users\PS\use_srio_base_top.tcl C:\Users\PS\Desktop\Controler\xdma\scripts\use_srio_base_top.tcl && cd /d C:\Users\PS\Desktop\Controler\xdma && C:\Xilinx\Vivado\2017.4\bin\vivado.bat -mode batch -source C:\Users\PS\Desktop\Controler\xdma\scripts\build_srio_base_bit.tcl"
```

Expected: 日志末尾出现 `impl_1 status: write_bitstream Complete!`

- [ ] **Step 4: 检查远端 ltx 中新增 probe**

Run:

```powershell
ssh PS@100.116.43.113 "powershell -Command \"Select-String -Path C:\Users\PS\Desktop\Controler\xdma\project_1\project_1.runs\impl_1\sfp_srio_base_top.ltx -Pattern 'dbg_hv_packet_out|dbg_hv_current_addr|dbg_hv_packet_valid|dbg_hv_using_internal_source'\""
```

Expected: 4 个高压协议 probe 都能在 ltx 中找到。

- [ ] **Step 5: 复制 bit/ltx 到远端 bit_mcs**

Run:

```powershell
ssh PS@100.116.43.113 "cmd /c copy /Y C:\Users\PS\Desktop\Controler\xdma\project_1\project_1.runs\impl_1\sfp_srio_base_top.bit C:\Users\PS\Desktop\Controler\xdma\bit_mcs\sfp_srio_base_top.bit && copy /Y C:\Users\PS\Desktop\Controler\xdma\project_1\project_1.runs\impl_1\sfp_srio_base_top.ltx C:\Users\PS\Desktop\Controler\xdma\bit_mcs\sfp_srio_base_top.ltx"
```

Expected: `bit_mcs` 目录里的 `bit/ltx` 更新时间更新。

- [ ] **Step 6: Commit**

```bash
git -C D:\Controler add xdma/project_1/project_1.srcs/sources_1/new/hv_proto_tx.v xdma/gtwizard_0_ex/gtwizard_0_ex.srcs/sources_1/imports/example_design/gtwizard_0_exdes.v xdma/project_1/project_1.srcs/sources_1/vendor_sfp3/example_design/srio_base_shell.v xdma/project_1/project_1.srcs/sources_1/new/sfp_srio_base_top.v xdma/scripts/use_srio_base_top.tcl
git -C D:\Controler commit -m "feat: integrate high-voltage tx wrapper into SRIO base"
```

### Task 6: 上板验收与 GitHub 分支准备

**Files:**
- Verify: `C:\Users\PS\Desktop\Controler\xdma\bit_mcs\sfp_srio_base_top.bit`
- Verify: `C:\Users\PS\Desktop\Controler\xdma\bit_mcs\sfp_srio_base_top.ltx`

- [ ] **Step 1: 上板重点观测 TX ILA**

观测以下 probe：

```text
dbg_hv_packet_out[31:0]
dbg_hv_current_addr[15:0]
dbg_hv_packet_valid
dbg_hv_using_internal_source
dbg_gt0_txdata[31:0]
dbg_gt0_tx_read_counter[8:0]
```

Expected:
- `dbg_hv_packet_out = {addr,data}`
- 地址递增
- 地址到 `addr_limit` 后回到 `addr_base`
- `dbg_hv_using_internal_source = 1`

- [ ] **Step 2: 确认 RX 侧未被破坏**

观测以下 probe：

```text
dbg_gt0_error_count[7:0]
dbg_gt0_rxbyteisaligned
dbg_gt0_rxdisperr[3:0]
dbg_gt0_rxnotintable[3:0]
dbg_gt0_rxdata_aligned[31:0]
dbg_gt0_rxdata_track[31:0]
```

Expected:
- `error_count = 0`
- `rxbyteisaligned = 1`
- `rxdisperr = 0`
- `rxnotintable = 0`

- [ ] **Step 3: 推送开发分支到 GitHub**

Run: `git -C D:\Controler push --force-with-lease origin codex/hv-protocol-tx`

Expected: 远端分支创建/更新成功。

