# Windows 主机侧回环验证工具

## 文件

- `host/xdma_loopback_verify_win.cpp`

这个程序通过 XDMA 用户 BAR 设备直接读写当前工程中的控制/状态寄存器，用来完成：

- 默认循环发送验证
- 单次发送验证
- 连续多帧发送验证
- 发送/接收频率测量

## 编译

在已配置好的 Visual C++ 命令行中执行：

```bat
cl /EHsc /std:c++17 host\xdma_loopback_verify_win.cpp
```

生成：

```text
xdma_loopback_verify_win.exe
```

## 默认设备

程序默认会自动探测以下设备节点：

- `\\.\xdma*_user`
- `\\.\xdma*_h2c_*` 与 `\\.\xdma*_c2h_*`
- `\\.\xdma*_control`

如果探测成功，程序会自动打印实际使用的读写设备。

如果需要先做诊断，也可以运行：

```bat
xdma_loopback_verify_win.exe scan
```

它会：

- 扫描常见的 `xdma*_user`
- 扫描 `xdma*_h2c_*` / `xdma*_c2h_*`
- 扫描 `xdma*_control`
- 尝试通过 Windows SetupDi 枚举 XDMA 设备接口

这样可以快速判断当前部署机上驱动究竟暴露了哪些可访问入口。

如果你希望强制指定某个设备，也可以手工传入设备名。

## 默认设备

优先按下面顺序自动探测：

1. `\\.\xdma*_user`
2. `\\.\xdma*_h2c_*` + `\\.\xdma*_c2h_*`
3. `\\.\xdma*_control`

如果你的设备名需要手工指定，可以把设备路径作为第一个参数传入。

例如：

```bat
xdma_loopback_verify_win.exe \\.\xdma1_user
```

## 寄存器映射

- `0x00` `CMD_ADDR`
- `0x04` `CMD_DATA`
- `0x08` `CMD_CTRL`
  - `bit0 = commit`
  - `bit1 = clear_status`
- `0x0C` `CMD_CFG`
  - `bit0 = tx_enable`
- `0x14` `TX_FRAME_COUNT`
- `0x18` `RX_FRAME_COUNT`
- `0x1C` `MATCH_COUNT`
- `0x20` `CRC_ERROR_COUNT`
- `0x24` `FORMAT_ERROR_COUNT`
- `0x28` `LAST_RX_SEQ`
- `0x2C` `LAST_RX_ADDR`
- `0x30` `LAST_RX_DATA`
- `0x34` `OPTICAL_STATUS`
- `0x38` `PHY_DEBUG_STATUS`
- `0x3C` `BOARD_TEST_STATUS`
- `0x40` `COMMIT_COUNT`

## 用法

### 1. 默认循环发送验证

直接运行：

```bat
xdma_loopback_verify_win.exe
```

程序会自动：

1. 打开发送使能
2. 清零统计
3. 连续发送 100 帧：
   - 起始 `addr = 0x00001000`
   - 起始 `data = 0xA5A50000`
   - 每帧 `addr += 4`
   - 每帧 `data += 1`
   - 帧间隔 `2 ms`
4. 读取并打印发送前后状态寄存器
5. 再做一次 1 秒窗口的频率测量

### 2. 指定单次发送内容

```bat
xdma_loopback_verify_win.exe single 0x10 0x12345678 20
```

参数含义：

- 第 1 个：发送地址
- 第 2 个：发送数据
- 第 3 个：发送后等待回环完成的毫秒数，可选，默认 `20`

### 3. 指定循环发送内容

```bat
xdma_loopback_verify_win.exe burst 0x1000 0xA5A50000 100 2 50
```

参数含义：

- 第 1 个：起始地址
- 第 2 个：起始数据
- 第 3 个：发送帧数
- 第 4 个：每帧间隔毫秒数，可选，默认 `0`
- 第 5 个：最后一帧后等待回环稳定的毫秒数，可选，默认 `50`

这一模式下程序会按下面方式递增：

- `addr += 4`
- `data += 1`

### 4. 频率测量

```bat
xdma_loopback_verify_win.exe rate 1000
```

参数表示测量窗口毫秒数。程序会读取前后两次计数器，计算：

- `TX rate`
- `RX rate`
- `MATCH rate`

## 成功判据

单次验证成功时应看到：

- `TX_FRAME_COUNT` 增加
- `RX_FRAME_COUNT` 增加
- `MATCH_COUNT` 增加
- `CRC_ERROR_COUNT = 0`
- `FORMAT_ERROR_COUNT = 0`
- `LAST_RX_ADDR == 写入地址`
- `LAST_RX_DATA == 写入数据`

循环发送验证成功时应看到：

- `TX_FRAME_COUNT` 增加值等于发送帧数
- `RX_FRAME_COUNT` 增加值等于发送帧数
- `MATCH_COUNT` 增加值等于发送帧数
- 错误计数保持为 `0`
- `LAST_RX_ADDR` 等于最后一帧地址
- `LAST_RX_DATA` 等于最后一帧数据

## 推荐验证顺序

1. 先跑默认循环发送验证
2. 再跑指定单次验证
3. 再跑更大规模的 burst，例如 1000 帧
4. 最后做 1 秒或 5 秒窗口的频率测量

## 说明

如果程序能正常打开 `\\.\xdma0_user`，但计数器不增长，优先检查：

1. PCIe 设备是否正常枚举
2. SFP 回环光纤是否接好
3. `tx_enable` 是否已置位
4. `commit` 是否真的写成功
5. `SFP_LOS` / `SFP_TXFAULT` 状态是否异常
