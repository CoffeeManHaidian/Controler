from __future__ import annotations

from typing import Iterable

from pydantic import ValidationError

from fpga_host_gui.hw_access import HardwareAccess, HardwareAccessError, ReadNotSupportedError
from fpga_host_gui.models import BasicStatus, Command

from . import registers


class FpgaController:
    def __init__(self, hardware_access: HardwareAccess):
        self.hardware_access = hardware_access

    @property
    def is_connected(self) -> bool:
        return self.hardware_access.is_connected

    def connect(self) -> None:
        self.hardware_access.connect()

    def disconnect(self) -> None:
        self.hardware_access.disconnect()

    def write_reg(self, addr: int, value: int) -> None:
        self._validate_u32(addr, "addr")
        self._validate_u32(value, "value")
        self.hardware_access.write_reg(addr, value)

    def read_reg(self, addr: int) -> int:
        self._validate_u32(addr, "addr")
        return self.hardware_access.read_reg(addr)

    def send_command(self, cmd_addr: int, cmd_data: int) -> Command:
        command = Command(cmd_addr=cmd_addr, cmd_data=cmd_data)
        self.write_reg(registers.CMD_ADDR_REG, command.cmd_addr)
        self.write_reg(registers.CMD_DATA_REG, command.cmd_data)
        self.write_reg(registers.CMD_COMMIT_REG, 0x0000_0001)
        return command

    def send_commands(self, commands: Iterable[Command]) -> int:
        count = 0
        for command in commands:
            if not isinstance(command, Command):
                try:
                    command = Command.model_validate(command)
                except ValidationError as exc:
                    raise ValueError(str(exc)) from exc
            for _ in range(command.repeat):
                self.send_command(command.cmd_addr, command.cmd_data)
                count += 1
        return count

    def read_basic_status(self) -> BasicStatus:
        if not self.is_connected:
            return BasicStatus(connected=False, last_error="device is not connected")
        try:
            return BasicStatus(
                connected=True,
                status_reg=self.read_reg(registers.STATUS_REG),
                tx_frame_count=self.read_reg(registers.TX_FRAME_COUNT_REG),
                optical_status=self.read_reg(registers.OPTICAL_STATUS_REG),
            )
        except ReadNotSupportedError as exc:
            return BasicStatus(connected=True, last_error=str(exc))
        except HardwareAccessError as exc:
            return BasicStatus(connected=True, last_error=str(exc))

    @staticmethod
    def _validate_u32(value: int, field_name: str) -> None:
        if not isinstance(value, int):
            raise TypeError(f"{field_name} must be an int")
        if not 0 <= value <= 0xFFFF_FFFF:
            raise ValueError(f"{field_name} must be within 32-bit unsigned range")
