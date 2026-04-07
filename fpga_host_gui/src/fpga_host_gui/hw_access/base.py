from __future__ import annotations

from abc import ABC, abstractmethod


class HardwareAccessError(RuntimeError):
    pass


class ReadNotSupportedError(HardwareAccessError):
    pass


class HardwareAccess(ABC):
    @abstractmethod
    def connect(self) -> None:
        raise NotImplementedError

    @abstractmethod
    def disconnect(self) -> None:
        raise NotImplementedError

    @abstractmethod
    def write_reg(self, addr: int, value: int) -> None:
        raise NotImplementedError

    @abstractmethod
    def read_reg(self, addr: int) -> int:
        raise NotImplementedError

    @property
    @abstractmethod
    def is_connected(self) -> bool:
        raise NotImplementedError
