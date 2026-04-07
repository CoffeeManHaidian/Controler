# FPGA Host GUI

独立于 Verilog 工程的 Python Qt 上位机项目，目录位于 `D:\Controler\fpga_host_gui`。

## 环境

- Python 3.10
- PySide6
- 在同一个 conda Qt 环境中完成开发、调试、测试

## 安装

在 Qt conda 环境中执行：

```powershell
pip install -r requirements.txt
```

## 启动 GUI

```powershell
python -m fpga_host_gui.app
```

## 测试

```powershell
pytest
```

## 当前实现说明

- 默认设备地址使用 `mock://fpga0`
- 已实现 FPGA 寄存器协议封装
- 已实现 GUI、后台发送任务、状态轮询
- 已预留 PCIe BAR/XDMA 硬件访问接口
- 若底层读寄存器尚未打通，状态区会自动降级显示
