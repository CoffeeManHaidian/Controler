from __future__ import annotations

import pytest

from fpga_host_gui.models import Command


def test_command_rejects_out_of_range_values() -> None:
    with pytest.raises(Exception):
        Command(cmd_addr=-1, cmd_data=1)

    with pytest.raises(Exception):
        Command(cmd_addr=0, cmd_data=0x1_0000_0000)
