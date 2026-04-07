from __future__ import annotations

from dataclasses import dataclass, field

from .base import HardwareAccess, HardwareAccessError, ReadNotSupportedError


@dataclass
class MockHardwareAccess(HardwareAccess):
    device_uri: str
    supports_reads: bool = True
    _connected: bool = field(default=False, init=False)
    _registers: dict[int, int] = field(default_factory=dict, init=False)

    def connect(self) -> None:
        self._connected = True
        self._registers.setdefault(0x0010, 0x0000_0004)
        self._registers.setdefault(0x0014, 0)
        self._registers.setdefault(0x0018, 0x0000_001F)

    def disconnect(self) -> None:
        self._connected = False

    @property
    def is_connected(self) -> bool:
        return self._connected

    def _require_connection(self) -> None:
        if not self._connected:
            raise HardwareAccessError("device is not connected")

    def write_reg(self, addr: int, value: int) -> None:
        self._require_connection()
        self._registers[addr] = value & 0xFFFF_FFFF
        if addr == 0x0000_0008 and (value & 0x1):
            self._registers[0x0014] = (self._registers.get(0x0014, 0) + 1) & 0xFFFF_FFFF

    def read_reg(self, addr: int) -> int:
        self._require_connection()
        if not self.supports_reads:
            raise ReadNotSupportedError("readback path is not available in current hardware access backend")
        return self._registers.get(addr, 0)
