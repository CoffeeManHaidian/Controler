# Board Loopback Bring-Up Guide

## Purpose

This document summarizes the current board-test flow for the optical loopback debug build and the signals to observe after programming the FPGA.

The current recommended top is:

- `pcie_cmd_to_optical_hw_bringup_top`

This top:

- internally generates write commands
- enables loopback debug by default
- drives the optical transmit path
- exposes loopback statistics as internal `mark_debug` signals

Relevant source files:

- `Controler.srcs/sources_1/new/pcie_cmd_to_optical_hw_bringup_top.v`
- `Controler.srcs/sources_1/new/pcie_cmd_to_optical_board_top.v`
- `Controler.srcs/sources_1/new/loopback_debug_block.v`
- `Controler.srcs/constrs_1/new/pcie_cmd_to_optical_board_top.xdc`

## Build Preparation

Before generating a bitstream, confirm the project is using the board bring-up path:

1. Open `Controler.xpr`.
2. Confirm the top module is `pcie_cmd_to_optical_hw_bringup_top`.
3. Confirm `pcie_cmd_to_optical_board_top.xdc` is enabled.
4. Confirm `pcie_cmd_to_optical_gtx_top.xdc` is disabled.
5. Confirm the optical loopback fiber is connected from TX back to RX.
6. Confirm the SFP module is inserted and powered correctly.

## Vivado Build Steps

Run the following flow in Vivado:

1. `Run Synthesis`
2. Check for synthesis errors and critical warnings
3. `Run Implementation`
4. Check for implementation errors and DRC violations
5. `Generate Bitstream`
6. Open `Hardware Manager`
7. Connect to the target board
8. `Program Device` with the generated `.bit`

If bitstream generation fails on DRC:

- re-check top selection
- re-check enabled XDC files
- re-check board clock and GT pin constraints

## Current Build Mode

The current hardware bring-up top defaults to:

```verilog
parameter ENABLE_LOOPBACK_DEBUG = 1'b1
```

That means the programmed image is the loopback debug build, not the TX-only release build.

## Expected Runtime Behavior

After reset is released, the top periodically generates a command sequence:

1. write command address to `0x00`
2. write command data to `0x04`
3. write commit flag to `0x08`
4. wait for a fixed interval
5. repeat

This means the transmit path should continuously generate traffic even without an external host.

## Debug Signals To Observe

The following internal signals are marked for debug in `pcie_cmd_to_optical_hw_bringup_top.v`:

- `status_reg_dbg`
- `tx_frame_count_dbg`
- `optical_status_dbg`
- `gtx_tx_word_count_dbg`
- `phy_debug_status_dbg`
- `rx_frame_count_dbg`
- `crc_error_count_dbg`
- `format_error_count_dbg`
- `match_count_dbg`
- `last_rx_seq_dbg`
- `last_rx_addr_dbg`
- `last_rx_data_dbg`
- `board_test_status_dbg`

These are the primary signals to use in ILA or Hardware Manager debug.

## Recommended Observation Order

Observe signals in this order:

1. `board_test_status_dbg`
2. `phy_debug_status_dbg`
3. `tx_frame_count_dbg`
4. `gtx_tx_word_count_dbg`
5. `rx_frame_count_dbg`
6. `match_count_dbg`
7. `crc_error_count_dbg`
8. `format_error_count_dbg`
9. `last_rx_seq_dbg`
10. `last_rx_addr_dbg`
11. `last_rx_data_dbg`

## What Each Group Means

### 1. Link And PHY Status

First check:

- `board_test_status_dbg`
- `phy_debug_status_dbg`
- `optical_status_dbg`

Expected behavior:

- PHY comes up
- TX reset completes
- RX reset completes
- optical link status is healthy
- no SFP fault indication

If these are not correct, first check:

- SFP insertion
- optical fiber loopback
- GT reference clock
- board XDC pin mapping

### 2. Transmit Path Activity

Check:

- `tx_frame_count_dbg`
- `gtx_tx_word_count_dbg`

Expected behavior:

- `tx_frame_count_dbg` increases continuously
- `gtx_tx_word_count_dbg` increases continuously

If not increasing, likely causes are:

- reset not released
- wrong top selected
- old bitstream still programmed
- command-generation state machine not running

### 3. Receive Loopback Activity

Check:

- `rx_frame_count_dbg`
- `match_count_dbg`

Expected behavior:

- `rx_frame_count_dbg` increases
- `match_count_dbg` increases

Interpretation:

- RX side is receiving valid looped-back traffic
- 32-bit GTX words are being reconstructed correctly
- protocol decoding is succeeding
- decoded packets are matching expected content

### 4. Error Counters

Check:

- `crc_error_count_dbg`
- `format_error_count_dbg`

Expected behavior:

- `crc_error_count_dbg = 0`
- `format_error_count_dbg = 0`

Interpretation:

- if `crc_error_count_dbg` increases:
  - the frame is being received but the payload or word ordering is wrong
- if `format_error_count_dbg` increases:
  - SOF/EOF or frame boundary recognition is failing

### 5. Last Received Content

Check:

- `last_rx_seq_dbg`
- `last_rx_addr_dbg`
- `last_rx_data_dbg`

Expected behavior:

- `last_rx_seq_dbg` changes over time
- `last_rx_addr_dbg` stays at the expected command address
- `last_rx_data_dbg` follows the internally generated counter sequence

These signals are useful for confirming that the receive decoder is aligned with the transmitted protocol.

## Quick Fault Isolation Table

### Case 1

- `tx_frame_count_dbg` does not increase

Likely issue:

- local command generation or reset sequencing

### Case 2

- `tx_frame_count_dbg` increases
- `rx_frame_count_dbg` does not increase

Likely issue:

- physical loopback path, SFP path, GTX RX side, or RX valid gating

### Case 3

- `rx_frame_count_dbg` increases
- `match_count_dbg` does not increase

Likely issue:

- frame reconstruction, decode alignment, or protocol comparison

### Case 4

- `crc_error_count_dbg` increases

Likely issue:

- payload ordering, CRC input mismatch, or word packing mismatch

### Case 5

- `format_error_count_dbg` increases

Likely issue:

- SOF/EOF recognition or beat/word boundary handling

## Success Criteria

The board loopback test is considered successful when all of the following are true:

- PHY link comes up
- `tx_frame_count_dbg` keeps increasing
- `gtx_tx_word_count_dbg` keeps increasing
- `rx_frame_count_dbg` keeps increasing
- `match_count_dbg` keeps increasing
- `crc_error_count_dbg` remains `0`
- `format_error_count_dbg` remains `0`

## Notes

- This document describes the loopback debug build.
- The final TX-only release build should use the same board path with loopback debug disabled.
- The current debug data is exposed as internal signals rather than extra external pins to avoid new board-constraint issues.
