from __future__ import annotations

import threading
import time
from typing import Callable, Optional

from fpga_host_gui.core import FpgaController
from fpga_host_gui.models import Command


class CommandDispatcher:
    def __init__(self, controller: FpgaController):
        self.controller = controller
        self._thread: Optional[threading.Thread] = None
        self._stop_event = threading.Event()

    @property
    def is_running(self) -> bool:
        return self._thread is not None and self._thread.is_alive()

    def start(
        self,
        command: Command,
        on_log: Callable[[str], None],
        on_error: Callable[[str], None],
        on_finished: Callable[[], None],
    ) -> None:
        if self.is_running:
            raise RuntimeError("continuous sending is already running")

        self._stop_event.clear()

        def worker() -> None:
            try:
                repeat = command.repeat
                sent = 0
                while not self._stop_event.is_set() and (repeat == 0 or sent < repeat):
                    self.controller.send_command(command.cmd_addr, command.cmd_data)
                    sent += 1
                    on_log(
                        f"sent #{sent}: addr=0x{command.cmd_addr:08X}, data=0x{command.cmd_data:08X}"
                    )
                    interval_ms = command.interval_ms or 0
                    if interval_ms > 0 and not self._stop_event.wait(interval_ms / 1000.0):
                        continue
                    if interval_ms == 0:
                        time.sleep(0)
            except Exception as exc:  # noqa: BLE001
                on_error(str(exc))
            finally:
                on_finished()

        self._thread = threading.Thread(target=worker, name="command-dispatcher", daemon=True)
        self._thread.start()

    def stop(self) -> None:
        self._stop_event.set()
