from __future__ import annotations

from PySide6.QtCore import QObject, QTimer, Signal

from fpga_host_gui.core import FpgaController
from fpga_host_gui.models import BasicStatus


class StatusPoller(QObject):
    status_ready = Signal(object)
    poll_error = Signal(str)

    def __init__(self, controller: FpgaController, interval_ms: int):
        super().__init__()
        self._controller = controller
        self._timer = QTimer(self)
        self._timer.setInterval(interval_ms)
        self._timer.timeout.connect(self._poll)

    def start(self) -> None:
        self._timer.start()

    def stop(self) -> None:
        self._timer.stop()

    def _poll(self) -> None:
        try:
            status = self._controller.read_basic_status()
            self.status_ready.emit(status)
            if status.last_error:
                self.poll_error.emit(status.last_error)
        except Exception as exc:  # noqa: BLE001
            self.poll_error.emit(str(exc))
            self.status_ready.emit(BasicStatus(connected=self._controller.is_connected, last_error=str(exc)))
