from __future__ import annotations

from pathlib import Path

import yaml
from pydantic import BaseModel, Field


class AppSettings(BaseModel):
    qt_environment_name: str = "qt"
    default_device_uri: str = "mock://fpga0"
    poll_interval_ms: int = Field(default=500, ge=100, le=60_000)
    default_send_interval_ms: int = Field(default=1000, ge=0, le=60_000)
    auto_connect: bool = False
    log_dir: str = "logs"


def load_settings(project_root: Path) -> AppSettings:
    config_file = project_root / "config.yaml"
    if not config_file.exists():
        return AppSettings()
    data = yaml.safe_load(config_file.read_text(encoding="utf-8")) or {}
    return AppSettings.model_validate(data)
