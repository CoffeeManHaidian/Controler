# 基于 Vendor 时钟框架的 SRIO Base 实施计划

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**目标：** 在保留已验证通过的 vendor `SFP3/AD9516/时钟复位` 框架的前提下，引入 `SRIO single-lane` 数据链，生成一个稳定可上板的 `SRIO Base` 比特流。

**架构：** 保留 vendor 路线中已经验证过的板级部分：`SFP3` 引脚、`AD9516` 初始化、参考时钟路径、`QPLL/GT` 复位风格、顶层 `ILA` 组织方式。新增一个 `SRIO Base` 顶层，外层负责板级和调试，内层接入 `SRIO` 例程数据链，并把 `TX/RX` 调试信号导到顶层 `ILA`，由 `txusrclk2/rxusrclk2` 采样。

**技术栈：** Vivado 2017.4、7 Series GTX 例程 RTL、AD9516 控制 RTL、顶层 Verilog 胶合逻辑、ILA IP、远端 `100.116.43.113` 的 Vivado batch 构建。

---

## 文件结构

- **新增：** `D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\sfp_srio_base_top.v`
  - 新的稳定顶层，保留 vendor 板级连线，同时承载 `SRIO` 数据链和顶层 `TX/RX ILA`。
- **新增：** `D:\Controler\xdma\project_1\project_1.srcs\sources_1\vendor_sfp3\example_design\srio_base_shell.v`
  - 适配层，只暴露新顶层需要的 `SRIO` 侧信号。
- **新增：** `D:\Controler\xdma\scripts\use_srio_base_top.tcl`
  - 工程切换脚本，激活新顶层，加入 `SRIO + vendor` 所需源文件，并配置 `TX/RX ILA IP`。
- **新增：** `D:\Controler\xdma\scripts\build_srio_base_bit.tcl`
  - 本地/远端的 `SRIO Base` 批处理构建入口。
- **修改：** `D:\Controler\xdma\gtwizard_0_ex\gtwizard_0_ex.srcs\sources_1\imports\example_design\gtwizard_0_exdes.v`
  - 保持为纯 `SRIO` 数据链/调试导出壳，不再含内部 `ILA`。
- **按需修改：** `D:\Controler\xdma\project_1\project_1.srcs\constrs_1\sfp_loopback\vendor_sfp3_top.xdc`
  - 如果新顶层需要独立约束集，就克隆或适配一份 `SRIO Base` 专用 `XDC`；引脚仍保持 `SFP3 + G8/G7`。
- **仅参考：** `D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\sfp_vendor_align_top.v`
  - 这是已验证通过的板级顶层和顶层 `ILA` 时钟结构参考。

### 任务 1：写清 SRIO Base 设计说明

**文件：**
- 新增：`D:\Controler\xdma\docs\superpowers\specs\2026-04-27-srio-base-on-vendor-clocking-design.md`

- [ ] **步骤 1：写设计说明**

```markdown
# 基于 Vendor 时钟框架的 SRIO Base 设计说明

## 目标
外层沿用 vendor 已验证通过的 SFP3/AD9516/QPLL/ILA 板级框架，内层用 SRIO single-lane 例程数据链替换 vendor Aurora/64B66B 数据链。

## 保留
- SFP3 引脚和 refclk 路径
- AD9516 初始化
- 顶层 ILA 使用 txusrclk2/rxusrclk2 采样

## 替换
- vendor 测试数据链替换为 SRIO 例程数据链
- vendor exdes 顶层集成方式替换为新的 SRIO Base 顶层集成

## 验收
- Hardware Manager 中可见 TX/RX ILA
- TX resetdone / RX resetdone 稳定
- RX 端进入 SRIO 例程要求的对齐/跟踪状态
```

- [ ] **步骤 2：确认设计说明文件已生成**

运行：`Test-Path 'D:\Controler\xdma\docs\superpowers\specs\2026-04-27-srio-base-on-vendor-clocking-design.md'`

期望：`True`

- [ ] **步骤 3：提交**

```bash
git add D:\Controler\xdma\docs\superpowers\specs\2026-04-27-srio-base-on-vendor-clocking-design.md
git commit -m "docs: add SRIO base on vendor clocking design note"
```

### 任务 2：创建新的 SRIO Base 顶层壳

**文件：**
- 新增：`D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\sfp_srio_base_top.v`
- 参考：`D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\sfp_vendor_align_top.v`

- [ ] **步骤 1：先建立一个最小顶层壳**

```verilog
`timescale 1ns / 1ps

module sfp_srio_base_top (
    input  wire Q2_CLK1_GTREFCLK_PAD_N_IN,
    input  wire Q2_CLK1_GTREFCLK_PAD_P_IN,
    input  wire CLK_IN_50M,
    input  wire SFP3_RX_N,
    input  wire SFP3_RX_P,
    output wire SFP3_TX_N,
    output wire SFP3_TX_P,
    input  wire AD9516_LD_IN,
    output wire AD9516_CS_N_OUT,
    output wire AD9516_SCLK_OUT,
    output wire AD9516_SDATA_OUT,
    output wire AD9516_REFSEL_OUT,
    output wire AD9516_PDWN_OUT,
    output wire AD9516_RSTN_OUT,
    output wire AD9516_SYN_N_OUT,
    output wire TRACK_DATA_OUT
);

// 先建壳，后续接入 SRIO 适配层和 ILA。

endmodule
```

- [ ] **步骤 2：检查顶层文件内容**

运行：`Get-Content 'D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\sfp_srio_base_top.v'`

期望：能看到上面的模块声明

- [ ] **步骤 3：补齐最小板级壳**

```verilog
wire [31:0] dbg_txdata;
wire [31:0] dbg_rxdata;
wire        dbg_txusrclk2;
wire        dbg_rxusrclk2;
wire [7:0]  dbg_error_count;
wire        dbg_track_data;

assign SFP3_TXDISABLE = 1'b0;

srio_base_shell u_srio_base_shell (
    .Q2_CLK1_GTREFCLK_PAD_N_IN(Q2_CLK1_GTREFCLK_PAD_N_IN),
    .Q2_CLK1_GTREFCLK_PAD_P_IN(Q2_CLK1_GTREFCLK_PAD_P_IN),
    .CLK_IN_50M(CLK_IN_50M),
    .RXN_IN(SFP3_RX_N),
    .RXP_IN(SFP3_RX_P),
    .TXN_OUT(SFP3_TX_N),
    .TXP_OUT(SFP3_TX_P),
    .ad9516_ld_in(AD9516_LD_IN),
    .ad9516_cs_n_out(AD9516_CS_N_OUT),
    .ad9516_sclk_out(AD9516_SCLK_OUT),
    .ad9516_sdata_out(AD9516_SDATA_OUT),
    .ad9516_refsel_out(AD9516_REFSEL_OUT),
    .ad9516_pdwn_out(AD9516_PDWN_OUT),
    .ad9516_rstn_out(AD9516_RSTN_OUT),
    .ad9516_syn_n_out(AD9516_SYN_N_OUT),
    .TRACK_DATA_OUT(TRACK_DATA_OUT),
    .DBG_TXDATA(dbg_txdata),
    .DBG_RXDATA(dbg_rxdata),
    .DBG_ERROR_COUNT(dbg_error_count),
    .DBG_TRACK_DATA(dbg_track_data),
    .DBG_TXUSRCLK2(dbg_txusrclk2),
    .DBG_RXUSRCLK2(dbg_rxusrclk2)
);
```

- [ ] **步骤 4：按 vendor 风格加顶层 ILA**

```verilog
ila_sfp_tx u_ila_sfp_tx (
    .clk(dbg_txusrclk2),
    .probe0(dbg_txdata)
);

ila_sfp_rx u_ila_sfp_rx (
    .clk(dbg_rxusrclk2),
    .probe0(dbg_rxdata),
    .probe2(dbg_error_count),
    .probe3(dbg_track_data)
);
```

- [ ] **步骤 5：提交**

```bash
git add D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\sfp_srio_base_top.v
git commit -m "feat: add SRIO base top shell"
```

### 任务 3：建立 SRIO 适配层

**文件：**
- 新增：`D:\Controler\xdma\project_1\project_1.srcs\sources_1\vendor_sfp3\example_design\srio_base_shell.v`
- 修改：`D:\Controler\xdma\gtwizard_0_ex\gtwizard_0_ex.srcs\sources_1\imports\example_design\gtwizard_0_exdes.v`

- [ ] **步骤 1：定义适配层接口**

```verilog
module srio_base_shell (
    input  wire Q2_CLK1_GTREFCLK_PAD_N_IN,
    input  wire Q2_CLK1_GTREFCLK_PAD_P_IN,
    input  wire CLK_IN_50M,
    input  wire RXN_IN,
    input  wire RXP_IN,
    output wire TXN_OUT,
    output wire TXP_OUT,
    input  wire ad9516_ld_in,
    output wire ad9516_cs_n_out,
    output wire ad9516_sclk_out,
    output wire ad9516_sdata_out,
    output wire ad9516_refsel_out,
    output wire ad9516_pdwn_out,
    output wire ad9516_rstn_out,
    output wire ad9516_syn_n_out,
    output wire TRACK_DATA_OUT,
    output wire [31:0] DBG_TXDATA,
    output wire [31:0] DBG_RXDATA,
    output wire [7:0]  DBG_ERROR_COUNT,
    output wire        DBG_TRACK_DATA,
    output wire        DBG_TXUSRCLK2,
    output wire        DBG_RXUSRCLK2
);
```

- [ ] **步骤 2：在适配层中实例化 SRIO exdes**

```verilog
gtwizard_0_exdes u_gtwizard_0_exdes (
    .Q2_CLK1_GTREFCLK_PAD_N_IN(Q2_CLK1_GTREFCLK_PAD_N_IN),
    .Q2_CLK1_GTREFCLK_PAD_P_IN(Q2_CLK1_GTREFCLK_PAD_P_IN),
    .CLK_IN_50M(CLK_IN_50M),
    .RXN_IN(RXN_IN),
    .RXP_IN(RXP_IN),
    .TXN_OUT(TXN_OUT),
    .TXP_OUT(TXP_OUT),
    .ad9516_ld_in(ad9516_ld_in),
    .ad9516_cs_n_out(ad9516_cs_n_out),
    .ad9516_sclk_out(ad9516_sclk_out),
    .ad9516_sdata_out(ad9516_sdata_out),
    .ad9516_refsel_out(ad9516_refsel_out),
    .ad9516_pdwn_out(ad9516_pdwn_out),
    .ad9516_rstn_out(ad9516_rstn_out),
    .ad9516_syn_n_out(ad9516_syn_n_out),
    .TRACK_DATA_OUT(TRACK_DATA_OUT),
    .DBG_GT0_TXDATA(DBG_TXDATA),
    .DBG_GT0_RXDATA(DBG_RXDATA),
    .DBG_GT0_ERROR_COUNT(DBG_ERROR_COUNT),
    .DBG_GT0_TRACK_DATA(DBG_TRACK_DATA),
    .DBG_GT0_TXUSRCLK2(DBG_TXUSRCLK2),
    .DBG_GT0_RXUSRCLK2(DBG_RXUSRCLK2)
);
```

- [ ] **步骤 3：确保 `gtwizard_0_exdes.v` 是纯导出壳**

```verilog
// gtwizard_0_exdes.v 中不再保留 u_ila_sfp_tx / u_ila_sfp_rx
assign DBG_GT0_TXDATA      = gt0_txdata_i;
assign DBG_GT0_RXDATA      = gt0_rxdata_i;
assign DBG_GT0_ERROR_COUNT = gt0_error_count_i;
assign DBG_GT0_TRACK_DATA  = gt0_track_data_i;
assign DBG_GT0_TXUSRCLK2   = gt0_txusrclk2_i;
assign DBG_GT0_RXUSRCLK2   = gt0_rxusrclk2_i;
```

- [ ] **步骤 4：检查边界是否干净**

运行：`Select-String -Path 'D:\Controler\xdma\gtwizard_0_ex\gtwizard_0_ex.srcs\sources_1\imports\example_design\gtwizard_0_exdes.v' -Pattern 'u_ila_sfp_tx|u_ila_sfp_rx'`

期望：无匹配结果

- [ ] **步骤 5：提交**

```bash
git add D:\Controler\xdma\project_1\project_1.srcs\sources_1\vendor_sfp3\example_design\srio_base_shell.v D:\Controler\xdma\gtwizard_0_ex\gtwizard_0_ex.srcs\sources_1\imports\example_design\gtwizard_0_exdes.v
git commit -m "feat: add SRIO adapter shell on vendor board framework"
```

### 任务 4：增加独立构建流程

**文件：**
- 新增：`D:\Controler\xdma\scripts\use_srio_base_top.tcl`
- 新增：`D:\Controler\xdma\scripts\build_srio_base_bit.tcl`

- [ ] **步骤 1：创建工程切换脚本**

```tcl
set script_dir [file dirname [file normalize [info script]]]
set repo_root [file dirname $script_dir]
set src_root [file join $repo_root "project_1" "project_1.srcs" "sources_1"]

set src_files [list \
    [file join $src_root "new" "sfp_srio_base_top.v"] \
    [file join $src_root "vendor_sfp3" "example_design" "srio_base_shell.v"] \
    [file join $repo_root "gtwizard_0_ex" "gtwizard_0_ex.srcs" "sources_1" "imports" "example_design" "gtwizard_0_exdes.v"] \
]
```

- [ ] **步骤 2：在同一个脚本里加入 vendor 板级文件和 SRIO 例程文件**

```tcl
lappend src_files \
    [file join $src_root "vendor_sfp3" "ip_mmcme2_clk.v"] \
    [file join $src_root "vendor_sfp3" "ad9516_ctl" "m_ad9516_ctl.v"] \
    [file join $repo_root "gtwizard_0_ex" "gtwizard_0_ex.srcs" "sources_1" "imports" "example_design" "gtwizard_0_gt_frame_gen.v"] \
    [file join $repo_root "gtwizard_0_ex" "gtwizard_0_ex.srcs" "sources_1" "imports" "example_design" "gtwizard_0_gt_frame_check.v"]
```

- [ ] **步骤 3：创建构建脚本**

```tcl
source [file join $script_dir "use_srio_base_top.tcl"]
catch {reset_run synth_1}
catch {reset_run impl_1}
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1
puts "impl_1 status: [get_property STATUS [get_runs impl_1]]"
```

- [ ] **步骤 4：做 Tcl 文本检查**

运行：`Get-Content 'D:\Controler\xdma\scripts\use_srio_base_top.tcl'`

期望：能看到 vendor 时钟文件和 SRIO 例程文件都被纳入

- [ ] **步骤 5：提交**

```bash
git add D:\Controler\xdma\scripts\use_srio_base_top.tcl D:\Controler\xdma\scripts\build_srio_base_bit.tcl
git commit -m "build: add SRIO base top Vivado scripts"
```

### 任务 5：远端构建并发布第一版 SRIO Base 产物

**文件：**
- 远端构建脚本：`C:\Users\PS\Desktop\Controler\xdma\scripts\build_srio_base_bit.tcl`
- 远端投递目录：`C:\Users\PS\Desktop\Controler\xdma\bit_mcs`

- [ ] **步骤 1：上传新增源文件和 Tcl 脚本**

```bash
scp D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\sfp_srio_base_top.v PS@100.116.43.113:sfp_srio_base_top.v
scp D:\Controler\xdma\project_1\project_1.srcs\sources_1\vendor_sfp3\example_design\srio_base_shell.v PS@100.116.43.113:srio_base_shell.v
scp D:\Controler\xdma\scripts\use_srio_base_top.tcl PS@100.116.43.113:use_srio_base_top.tcl
scp D:\Controler\xdma\scripts\build_srio_base_bit.tcl PS@100.116.43.113:build_srio_base_bit.tcl
```

- [ ] **步骤 2：把文件复制到远端工程目录**

```bash
ssh PS@100.116.43.113 "cmd /c copy /Y C:\Users\PS\sfp_srio_base_top.v C:\Users\PS\Desktop\Controler\xdma\project_1\project_1.srcs\sources_1\new\sfp_srio_base_top.v"
ssh PS@100.116.43.113 "cmd /c copy /Y C:\Users\PS\srio_base_shell.v C:\Users\PS\Desktop\Controler\xdma\project_1\project_1.srcs\sources_1\vendor_sfp3\example_design\srio_base_shell.v"
ssh PS@100.116.43.113 "cmd /c copy /Y C:\Users\PS\use_srio_base_top.tcl C:\Users\PS\Desktop\Controler\xdma\scripts\use_srio_base_top.tcl"
ssh PS@100.116.43.113 "cmd /c copy /Y C:\Users\PS\build_srio_base_bit.tcl C:\Users\PS\Desktop\Controler\xdma\scripts\build_srio_base_bit.tcl"
```

- [ ] **步骤 3：运行远端 batch 构建**

```bash
ssh PS@100.116.43.113 "cmd /c cd /d C:\Users\PS\Desktop\Controler\xdma && C:\Xilinx\Vivado\2017.4\bin\vivado.bat -mode batch -source C:\Users\PS\Desktop\Controler\xdma\scripts\build_srio_base_bit.tcl"
```

期望：输出中包含 `impl_1 status: write_bitstream Complete!`

- [ ] **步骤 4：发布第一版产物**

```bash
ssh PS@100.116.43.113 "cmd /c copy /Y C:\Users\PS\Desktop\Controler\xdma\project_1\project_1.runs\impl_1\sfp_srio_base_top.bit C:\Users\PS\Desktop\Controler\xdma\bit_mcs\sfp_srio_base_top.bit"
ssh PS@100.116.43.113 "cmd /c copy /Y C:\Users\PS\Desktop\Controler\xdma\project_1\project_1.runs\impl_1\sfp_srio_base_top.ltx C:\Users\PS\Desktop\Controler\xdma\bit_mcs\sfp_srio_base_top.ltx"
```

- [ ] **步骤 5：提交**

```bash
git add D:\Controler\xdma\project_1\project_1.srcs\sources_1\new\sfp_srio_base_top.v D:\Controler\xdma\project_1\project_1.srcs\sources_1\vendor_sfp3\example_design\srio_base_shell.v D:\Controler\xdma\scripts\use_srio_base_top.tcl D:\Controler\xdma\scripts\build_srio_base_bit.tcl
git commit -m "feat: build first SRIO base bitstream on vendor clocking"
```

### 任务 6：硬件验收和 GitHub 发布准备

**文件：**
- 远端产物：`C:\Users\PS\Desktop\Controler\xdma\bit_mcs\sfp_srio_base_top.bit`
- 远端产物：`C:\Users\PS\Desktop\Controler\xdma\bit_mcs\sfp_srio_base_top.ltx`
- 新增：`D:\Controler\xdma\RELEASE_NOTES_srio_base.md`

- [ ] **步骤 1：验证 LTX 中的 ILA**

运行：

```bash
ssh PS@100.116.43.113 "cmd /c findstr /C:u_ila_sfp_tx /C:u_ila_sfp_rx C:\Users\PS\Desktop\Controler\xdma\project_1\project_1.runs\impl_1\sfp_srio_base_top.ltx"
```

期望：同时匹配到 `u_ila_sfp_tx` 和 `u_ila_sfp_rx`

- [ ] **步骤 2：记录硬件验收标准**

```markdown
- TX resetdone = 1
- RX resetdone = 1
- Hardware Manager 中可见 TX/RX ILA
- SRIO RX 对齐/跟踪指示稳定
- 回环锁定后不再继续累积新错误
```

- [ ] **步骤 3：写发布说明**

```markdown
# SRIO Base 发布说明

- 保留了稳定的 SFP3/AD9516 vendor 板级外壳
- 使用 SRIO 例程数据链作为协议基线
- 顶层 TX/RX ILA 使用 txusrclk2/rxusrclk2 采样
- 为第二阶段“16位地址 + 16位数据”高压协议开发做好准备
```

- [ ] **步骤 4：提交**

```bash
git add D:\Controler\xdma\RELEASE_NOTES_srio_base.md
git commit -m "docs: add SRIO base release notes"
```

## 自检

- 覆盖性：这份计划覆盖了纠偏后的正确路线：保留 vendor 板级外壳，引入 SRIO 数据链，新增独立顶层和构建流，远端构建与产物验证，以及后续发布准备。
- 占位符检查：没有残留 `TODO` / `TBD` 这类占位内容；每个任务都给了明确文件和命令。
- 名称一致性：调试导出信号名沿用当前 `gtwizard_0_exdes` 中的命名，顶层 ILA 风格对齐 vendor 例程。

## 执行交接

计划已写入 `docs/superpowers/plans/2026-04-27-srio-base-on-vendor-clocking.md`。两种执行方式：

**1. Subagent-Driven（推荐）** - 我为每个任务派一个新的子代理，任务间复核，迭代快

**2. Inline Execution** - 在当前会话里直接分批执行并在关键点停下来复核

**你想用哪一种？**
