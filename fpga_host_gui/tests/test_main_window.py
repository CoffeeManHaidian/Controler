from __future__ import annotations

import pytest
from PySide6.QtCore import Qt
from PySide6.QtWidgets import QMessageBox

from fpga_host_gui.config import AppSettings
from fpga_host_gui.core import FpgaController
from fpga_host_gui.hw_access.mock_xdma import MockHardwareAccess
from fpga_host_gui.ui import MainWindow


@pytest.fixture
def window(qtbot, monkeypatch, tmp_path):
    monkeypatch.setattr(QMessageBox, "critical", lambda *args, **kwargs: QMessageBox.Ok)
    controller = FpgaController(MockHardwareAccess("mock://fpga0"))
    widget = MainWindow(controller, AppSettings(), tmp_path)
    qtbot.addWidget(widget)
    return widget


def test_window_can_be_created(window) -> None:
    assert window.windowTitle() == "FPGA Host GUI"


def test_send_without_connection_shows_error_in_log(window, qtbot) -> None:
    window.addr_edit.setText("0x4")
    window.data_edit.setText("0x1")

    qtbot.mouseClick(window.send_once_button, Qt.LeftButton)

    assert "ERROR:" in window.log_edit.toPlainText()
