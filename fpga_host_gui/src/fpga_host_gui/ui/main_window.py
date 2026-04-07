from __future__ import annotations

import logging
from pathlib import Path

from PySide6.QtCore import Qt, Signal
from PySide6.QtWidgets import (
    QCheckBox,
    QFormLayout,
    QGridLayout,
    QGroupBox,
    QHBoxLayout,
    QLabel,
    QLineEdit,
    QMainWindow,
    QMessageBox,
    QPushButton,
    QPlainTextEdit,
    QSpinBox,
    QVBoxLayout,
    QWidget,
)

from fpga_host_gui.config import AppSettings
from fpga_host_gui.core import FpgaController
from fpga_host_gui.hw_access import create_hardware_access
from fpga_host_gui.models import BasicStatus, Command
from fpga_host_gui.services import CommandDispatcher, StatusPoller


class MainWindow(QMainWindow):
    log_message = Signal(str)
    error_message = Signal(str)
    task_finished = Signal()

    def __init__(self, controller: FpgaController, settings: AppSettings, project_root: Path):
        super().__init__()
        self.controller = controller
        self.settings = settings
        self.project_root = project_root
        self.dispatcher = CommandDispatcher(controller)
        self.poller = StatusPoller(controller, settings.poll_interval_ms)
        self.poller.status_ready.connect(self._apply_status)
        self.poller.poll_error.connect(self._append_log)
        self.log_message.connect(self._append_log)
        self.error_message.connect(self._show_error)
        self.task_finished.connect(lambda: self._append_log("continuous send stopped"))

        self.logger = logging.getLogger("fpga_host_gui")
        self.setWindowTitle("FPGA Host GUI")
        self.resize(980, 720)
        self._build_ui()

        if self.settings.auto_connect:
            self._connect_device()

    def _build_ui(self) -> None:
        central = QWidget(self)
        main_layout = QVBoxLayout(central)
        main_layout.addWidget(self._build_connection_group())
        main_layout.addWidget(self._build_send_group())
        main_layout.addWidget(self._build_continuous_group())
        main_layout.addWidget(self._build_status_group())
        main_layout.addWidget(self._build_log_group(), stretch=1)
        self.setCentralWidget(central)

    def _build_connection_group(self) -> QGroupBox:
        group = QGroupBox("设备连接")
        layout = QGridLayout(group)

        self.device_uri_edit = QLineEdit(self.settings.default_device_uri)
        self.connect_button = QPushButton("连接")
        self.disconnect_button = QPushButton("断开")
        self.connection_label = QLabel("未连接")

        self.connect_button.clicked.connect(self._connect_device)
        self.disconnect_button.clicked.connect(self._disconnect_device)

        layout.addWidget(QLabel("设备 URI"), 0, 0)
        layout.addWidget(self.device_uri_edit, 0, 1, 1, 3)
        layout.addWidget(self.connect_button, 0, 4)
        layout.addWidget(self.disconnect_button, 0, 5)
        layout.addWidget(QLabel("状态"), 1, 0)
        layout.addWidget(self.connection_label, 1, 1, 1, 2)
        return group

    def _build_send_group(self) -> QGroupBox:
        group = QGroupBox("单条命令发送")
        layout = QFormLayout(group)

        self.addr_edit = QLineEdit("0x00000004")
        self.data_edit = QLineEdit("0x00000001")
        self.send_once_button = QPushButton("发送一次")
        self.send_once_button.clicked.connect(self._send_once)

        layout.addRow("cmd_addr", self.addr_edit)
        layout.addRow("cmd_data", self.data_edit)
        layout.addRow("", self.send_once_button)
        return group

    def _build_continuous_group(self) -> QGroupBox:
        group = QGroupBox("连续发送")
        layout = QHBoxLayout(group)

        self.interval_spin = QSpinBox()
        self.interval_spin.setRange(0, 60_000)
        self.interval_spin.setValue(self.settings.default_send_interval_ms)
        self.repeat_spin = QSpinBox()
        self.repeat_spin.setRange(1, 1_000_000)
        self.repeat_spin.setValue(10)
        self.infinite_checkbox = QCheckBox("无限发送")
        self.start_button = QPushButton("开始")
        self.stop_button = QPushButton("停止")

        self.start_button.clicked.connect(self._start_continuous_send)
        self.stop_button.clicked.connect(self._stop_continuous_send)

        layout.addWidget(QLabel("周期(ms)"))
        layout.addWidget(self.interval_spin)
        layout.addWidget(QLabel("次数"))
        layout.addWidget(self.repeat_spin)
        layout.addWidget(self.infinite_checkbox)
        layout.addWidget(self.start_button)
        layout.addWidget(self.stop_button)
        return group

    def _build_status_group(self) -> QGroupBox:
        group = QGroupBox("基础状态")
        layout = QGridLayout(group)

        self.status_reg_label = QLabel("N/A")
        self.tx_frame_count_label = QLabel("N/A")
        self.optical_status_label = QLabel("N/A")
        self.last_error_label = QLabel("无")
        self.last_error_label.setWordWrap(True)
        self.last_error_label.setTextInteractionFlags(Qt.TextSelectableByMouse)

        layout.addWidget(QLabel("status_reg"), 0, 0)
        layout.addWidget(self.status_reg_label, 0, 1)
        layout.addWidget(QLabel("tx_frame_count"), 1, 0)
        layout.addWidget(self.tx_frame_count_label, 1, 1)
        layout.addWidget(QLabel("optical_status"), 2, 0)
        layout.addWidget(self.optical_status_label, 2, 1)
        layout.addWidget(QLabel("最后错误"), 3, 0)
        layout.addWidget(self.last_error_label, 3, 1, 1, 3)
        return group

    def _build_log_group(self) -> QGroupBox:
        group = QGroupBox("日志")
        layout = QVBoxLayout(group)
        self.log_edit = QPlainTextEdit()
        self.log_edit.setReadOnly(True)
        layout.addWidget(self.log_edit)
        return group

    def _connect_device(self) -> None:
        try:
            self.controller.hardware_access = create_hardware_access(self.device_uri_edit.text().strip())
            self.controller.connect()
            self.connection_label.setText("已连接")
            self._append_log(f"connected to {self.device_uri_edit.text().strip()}")
            self.poller.start()
            self._apply_status(self.controller.read_basic_status())
        except Exception as exc:  # noqa: BLE001
            self.connection_label.setText("连接失败")
            self._show_error(str(exc))

    def _disconnect_device(self) -> None:
        self.dispatcher.stop()
        self.poller.stop()
        self.controller.disconnect()
        self.connection_label.setText("未连接")
        self._apply_status(BasicStatus(connected=False, last_error="device is not connected"))
        self._append_log("device disconnected")

    def _send_once(self) -> None:
        try:
            cmd = self._build_command(repeat=1, interval_ms=None)
            self.controller.send_command(cmd.cmd_addr, cmd.cmd_data)
            self._append_log(f"sent once: addr=0x{cmd.cmd_addr:08X}, data=0x{cmd.cmd_data:08X}")
            self._apply_status(self.controller.read_basic_status())
        except Exception as exc:  # noqa: BLE001
            self._show_error(str(exc))

    def _start_continuous_send(self) -> None:
        try:
            repeat = 0 if self.infinite_checkbox.isChecked() else self.repeat_spin.value()
            cmd = self._build_command(repeat=repeat, interval_ms=self.interval_spin.value())
            self.dispatcher.start(
                command=cmd,
                on_log=self.log_message.emit,
                on_error=self.error_message.emit,
                on_finished=self.task_finished.emit,
            )
            self._append_log("continuous send started")
        except Exception as exc:  # noqa: BLE001
            self._show_error(str(exc))

    def _stop_continuous_send(self) -> None:
        self.dispatcher.stop()
        self._append_log("stop requested")

    def _build_command(self, repeat: int, interval_ms: int | None) -> Command:
        cmd_addr = self._parse_u32(self.addr_edit.text())
        cmd_data = self._parse_u32(self.data_edit.text())
        return Command(cmd_addr=cmd_addr, cmd_data=cmd_data, repeat=repeat, interval_ms=interval_ms)

    @staticmethod
    def _parse_u32(raw: str) -> int:
        text = raw.strip()
        if not text:
            raise ValueError("input cannot be empty")
        return int(text, 0)

    def _apply_status(self, status: BasicStatus) -> None:
        self.connection_label.setText("已连接" if status.connected else "未连接")
        self.status_reg_label.setText(self._format_optional_hex(status.status_reg))
        self.tx_frame_count_label.setText(str(status.tx_frame_count) if status.tx_frame_count is not None else "N/A")
        self.optical_status_label.setText(self._format_optional_hex(status.optical_status))
        self.last_error_label.setText(status.last_error or "无")

    @staticmethod
    def _format_optional_hex(value: int | None) -> str:
        if value is None:
            return "N/A"
        return f"0x{value:08X}"

    def _append_log(self, message: str) -> None:
        self.log_edit.appendPlainText(message)
        self.logger.info(message)

    def _show_error(self, message: str) -> None:
        self._append_log(f"ERROR: {message}")
        QMessageBox.critical(self, "错误", message)
