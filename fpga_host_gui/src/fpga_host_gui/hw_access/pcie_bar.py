from __future__ import annotations

from .base import HardwareAccess, HardwareAccessError


class PcieBarHardwareAccess(HardwareAccess):
    def __init__(self, device_uri: str):
        self.device_uri = device_uri
        self._connected = False

    @property
    def is_connected(self) -> bool:
        return self._connected

    def connect(self) -> None:
        raise HardwareAccessError(
            "PCIe BAR/XDMA backend is not implemented yet. "
            "Use mock://fpga0 for GUI development or extend PcieBarHardwareAccess."
        )

    def disconnect(self) -> None:
        self._connected = False

    def write_reg(self, addr: int, value: int) -> None:
        raise HardwareAccessError("PCIe BAR/XDMA backend is not implemented yet")

    def read_reg(self, addr: int) -> int:
        raise HardwareAccessError("PCIe BAR/XDMA backend is not implemented yet")
