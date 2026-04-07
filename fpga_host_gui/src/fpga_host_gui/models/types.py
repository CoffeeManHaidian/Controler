from __future__ import annotations

from typing import Optional

from pydantic import BaseModel, ConfigDict, Field, field_validator


class Command(BaseModel):
    model_config = ConfigDict(str_strip_whitespace=True)

    cmd_addr: int = Field(..., ge=0, le=0xFFFF_FFFF)
    cmd_data: int = Field(..., ge=0, le=0xFFFF_FFFF)
    repeat: int = Field(default=1, ge=0, le=1_000_000)
    interval_ms: Optional[int] = Field(default=None, ge=0, le=3_600_000)
    tag: Optional[str] = Field(default=None, max_length=128)

    @field_validator("cmd_addr", "cmd_data")
    @classmethod
    def validate_u32(cls, value: int) -> int:
        if not 0 <= value <= 0xFFFF_FFFF:
            raise ValueError("value must fit in 32 bits")
        return value


class BasicStatus(BaseModel):
    connected: bool = False
    status_reg: Optional[int] = None
    tx_frame_count: Optional[int] = None
    optical_status: Optional[int] = None
    last_error: Optional[str] = None
