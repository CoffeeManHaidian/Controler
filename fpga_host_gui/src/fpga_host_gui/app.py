from __future__ import annotations

import logging
from logging.handlers import RotatingFileHandler
from pathlib import Path
import sys

from PySide6.QtWidgets import QApplication

from fpga_host_gui.config import load_settings
from fpga_host_gui.core import FpgaController
from fpga_host_gui.hw_access import create_hardware_access
from fpga_host_gui.ui import MainWindow


def configure_logging(project_root: Path, log_dir_name: str) -> None:
    log_dir = project_root / log_dir_name
    log_dir.mkdir(parents=True, exist_ok=True)
    log_file = log_dir / "fpga_host_gui.log"

    logger = logging.getLogger("fpga_host_gui")
    logger.setLevel(logging.INFO)
    logger.handlers.clear()

    handler = RotatingFileHandler(log_file, maxBytes=512 * 1024, backupCount=3, encoding="utf-8")
    formatter = logging.Formatter("%(asctime)s [%(levelname)s] %(message)s")
    handler.setFormatter(formatter)
    logger.addHandler(handler)


def main() -> int:
    project_root = Path(__file__).resolve().parents[2]
    settings = load_settings(project_root)
    configure_logging(project_root, settings.log_dir)

    app = QApplication(sys.argv)
    controller = FpgaController(create_hardware_access(settings.default_device_uri))
    window = MainWindow(controller=controller, settings=settings, project_root=project_root)
    window.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())
