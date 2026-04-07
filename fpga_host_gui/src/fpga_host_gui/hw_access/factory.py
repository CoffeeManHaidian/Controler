from __future__ import annotations

from .base import HardwareAccess
from .mock_xdma import MockHardwareAccess
from .pcie_bar import PcieBarHardwareAccess


def create_hardware_access(device_uri: str) -> HardwareAccess:
    if device_uri.startswith("mock://"):
        supports_reads = not device_uri.endswith("?readback=off")
        return MockHardwareAccess(device_uri=device_uri, supports_reads=supports_reads)
    return PcieBarHardwareAccess(device_uri=device_uri)
