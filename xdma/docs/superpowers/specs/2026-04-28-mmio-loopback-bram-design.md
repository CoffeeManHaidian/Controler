# BAR/MMIO 回环测试设计说明

## 目标

在当前已经稳定的 `sfp_srio_base_top` 基线上，新增一条基于 XDMA 用户 BAR/MMIO 的真回环测试路径，用于完成下面这件事：

1. 上位机通过 `xdma_rw.exe` 直接向 FPGA 的 `TX BRAM` 写入完整的 `32bit {addr,data}` 协议字
2. FPGA 从 `TX BRAM` 顺序取数，经现有 `SRIO Base` 发送链发出
3. 光回环收到的数据由 FPGA 写入独立的 `RX BRAM`
4. 上位机通过 `xdma_rw.exe` 再把 `RX BRAM` 读回
5. 通过对比 `TX BRAM` 与 `RX BRAM` 内容，确认真实回环是否打通

这个阶段的重点是“把真实闭环数据路径验证干净”，而不是继续依赖 ILA 观测。

## 背景

当前工程已经具备：

- `SFP3 + AD9516 + GT + SRIO Base` 的稳定链路
- `hv_proto_tx` 的帧式发送能力
- TX 侧已经能清楚看到 `100` 字一帧、前 `97` 个有效、尾部 `90BC` 填充

当前还缺少的，是一个能把“主机原始输入”和“回环返回结果”彻底分开的测试架构。

如果继续只看 ILA，会有两个问题：

1. 很难区分当前看到的是发送层、接收层还是重对齐后的中间层
2. 很难证明主机写进去的内容，是否真的沿整条链路走了一圈又返回

因此，下一阶段应该切换到 BRAM 回环测试。

## 设计原则

### 1. TX 和 RX 必须物理分区

不能让上位机写入区和回环接收区共用一块 BRAM 地址空间。

否则会出现：

- 刚写进去的数据还没发就被读回
- RX 回写覆盖 TX 原始数据
- 无法判断读回的数据到底来自主机原始输入，还是来自真实回环返回

因此必须分成：

- `TX BRAM`：上位机写，FPGA 读
- `RX BRAM`：FPGA 写，上位机读

### 2. 状态寄存器独立

不能仅靠“读到某些数据了”判断回环成功。

必须有独立状态寄存器给出：

- 本次测试是否启动
- RX 是否接收完成
- 收到多少个字
- 是否有协议顺序错误
- 帧号是否匹配

### 3. 先走 BAR/MMIO，不先走 DMA 通道

本阶段优先使用 `xdma_rw.exe user ...` 直接访问用户 BAR 空间。

原因：

- 地址映射清楚
- 最容易把 `TX BRAM / RX BRAM / STATUS` 分开
- 最适合第一步排除“到底是写入问题、发送问题还是接收问题”

DMA `h2c/c2h` 可以留到后续版本。

## 总体结构

新增一个 MMIO 测试层，挂在 `sfp_srio_base_top` 的业务壳外侧。

结构分成三块：

1. `hv_loopback_mmio_regs`
   - 对外暴露 BAR/MMIO 可访问的控制和状态寄存器
2. `hv_loopback_tx_buf`
   - `TX BRAM`
   - 存放主机写入的完整 `32bit {addr,data}` 帧
3. `hv_loopback_rx_buf`
   - `RX BRAM`
   - 存放 FPGA 回环接收并解包后的完整 `32bit {addr,data}` 帧

发送和接收的业务路径为：

```text
Host xdma_rw.exe
    -> TX BRAM
    -> TX frame reader
    -> SRIO Base TX
    -> 光回环
    -> SRIO Base RX
    -> RX frame capture
    -> RX BRAM
    -> Host xdma_rw.exe
```

## BAR/MMIO 地址映射

### 1. TX BRAM 区

- 基地址：`0x0000`
- 长度：`100 * 4 = 0x190`

含义：

- `0x0000 + 4*i` 对应第 `i` 个发送字
- 每个字都是完整的 `32bit {addr,data}`

### 2. RX BRAM 区

- 基地址：`0x1000`
- 长度：`100 * 4 = 0x190`

含义：

- `0x1000 + 4*i` 对应第 `i` 个接收字
- 由 FPGA 回环接收后写入

### 3. CTRL/STATUS 区

- 基地址：`0x2000`

定义如下：

- `0x2000 CTRL`
  - bit0: `start_loopback`
  - bit1: `clear_status`
- `0x2004 TX_WORD_COUNT`
  - 本帧有效业务字数，例如 `97`
- `0x2008 TX_FRAME_ID`
  - 主机写入的测试帧号
- `0x200C RX_DONE`
  - FPGA 收满一帧后置 `1`
- `0x2010 RX_FRAME_ID`
  - FPGA 解析到的帧号
- `0x2014 RX_ERROR_COUNT`
  - 协议顺序或帧检查错误数
- `0x2018 RX_CAPTURE_COUNT`
  - 本次实际写入 `RX BRAM` 的字数

## 帧格式

### 一帧固定 100 个 32bit 字

本阶段仍采用“固定 100 字一帧”的业务形态。

为了避免把旧数据误判成新帧，帧内第 0 个字保留为帧头/帧号字：

- `word[0] = 32'hA5F0_0000 | frame_id[15:0]`

其余字定义为：

- `word[1] ~ word[97]`：有效 `32bit {addr,data}`
- `word[98] ~ word[99]`：无效填充，低 16 位固定为 `16'h90BC`

也就是说：

- `TX_WORD_COUNT = 97` 时
  - 总共会发送 `100` 个字
  - 第 0 个字是帧头
  - 第 1~97 个字是有效业务字
  - 第 98~99 个字是填充

本阶段重点是“帧结构可识别、TX/RX 一一比对”，不是立即复刻最终 420 点业务规则。

## FPGA 行为定义

### 1. 启动

当主机写：

- `TX BRAM`
- `TX_WORD_COUNT`
- `TX_FRAME_ID`

之后，再把 `CTRL.start_loopback` 置位，FPGA 开始一次回环测试。

### 2. 发送侧

发送状态机从 `TX BRAM[0]` 开始，连续读取 100 个字送入发送链。

第一阶段不再由 `hv_proto_tx` 本地自动生成 `{addr,data}`。

改成：

- `hv_proto_tx` 退化为“透传/适配器”
- 或由新的 `hv_mmio_tx_reader` 直接把 `TX BRAM` 内容送入 `SRIO Base` payload

核心原则是：

- **主机写什么，链路就发什么**

### 3. 接收侧

接收状态机从 RX 业务层恢复出的 `32bit {addr,data}` 中抓取数据，并顺序写入 `RX BRAM`。

写满 100 个字后：

- 置位 `RX_DONE`
- 写入 `RX_CAPTURE_COUNT`
- 更新 `RX_ERROR_COUNT`

### 4. 清状态

主机写 `CTRL.clear_status=1` 后：

- `RX_DONE` 清零
- `RX_ERROR_COUNT` 清零
- `RX_CAPTURE_COUNT` 清零
- 接收状态机回到等待新帧状态

## 为什么这能区分“前端写入”和“回环返回”

因为读取路径已经被设计成了两个独立空间：

- 读 `0x0000` 区看到的一定是“主机原始输入”
- 读 `0x1000` 区看到的一定是“回环返回结果”

再结合：

- `TX_FRAME_ID`
- `RX_FRAME_ID`
- `RX_DONE`
- `RX_ERROR_COUNT`

就可以把“写进去的是哪一帧”和“读回来的是不是这一帧”判断得很清楚。

## 上位机测试流程

第一阶段建议固定用下面的步骤：

1. 用 `xdma_rw.exe user` 写 `TX BRAM`
2. 写 `TX_WORD_COUNT`
3. 写 `TX_FRAME_ID`
4. 写 `CTRL.start_loopback = 1`
5. 轮询 `RX_DONE`
6. 读 `RX_BRAM`
7. 比较 `TX BRAM` 和 `RX BRAM`

## 验收标准

本阶段完成后，应满足：

1. 上位机能通过用户 BAR 直接写入 `TX BRAM`
2. FPGA 能发送完整 100 字帧
3. FPGA 能把回环收到的一帧完整写入 `RX BRAM`
4. 上位机能通过用户 BAR 读回 `RX BRAM`
5. `TX_FRAME_ID == RX_FRAME_ID`
6. `RX_ERROR_COUNT == 0`
7. `TX BRAM` 与 `RX BRAM` 对比一致

## 本阶段不做的内容

为保持范围清晰，下面内容不纳入本轮：

- 走 `h2c/c2h` DMA 通道做同样测试
- 动态主机流式输入
- 最终 420 点高压业务规则
- 上位机 GUI
- 自动化批量测试工具

## 后续演进

在 BAR/MMIO 版本跑通后，后续可以继续叠加：

1. `h2c/c2h` DMA 版本
2. 更完整的帧头/帧尾/CRC
3. 高压协议正式接收解析
4. 最终 420 点控制规则
