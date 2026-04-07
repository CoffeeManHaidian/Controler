from __future__ import annotations

from fpga_host_gui.core import FpgaController
from fpga_host_gui.hw_access.mock_xdma import MockHardwareAccess


class RecordingAccess(MockHardwareAccess):
    def __init__(self) -> None:
        super().__init__(device_uri="mock://fpga0")
        self.ops: list[tuple[int, int]] = []

    def write_reg(self, addr: int, value: int) -> None:
        super().write_reg(addr, value)
        self.ops.append((addr, value))


def test_send_command_writes_expected_sequence() -> None:
    access = RecordingAccess()
    access.connect()
    controller = FpgaController(access)

    controller.send_command(0x0000_0004, 0x1234_5678)

    assert access.ops == [
        (0x0000_0000, 0x0000_0004),
        (0x0000_0004, 0x1234_5678),
        (0x0000_0008, 0x0000_0001),
    ]


def test_read_basic_status_degrades_when_readback_is_unavailable() -> None:
    access = MockHardwareAccess(device_uri="mock://fpga0?readback=off", supports_reads=False)
    access.connect()
    controller = FpgaController(access)

    status = controller.read_basic_status()

    assert status.connected is True
    assert status.status_reg is None
    assert "readback" in (status.last_error or "")
