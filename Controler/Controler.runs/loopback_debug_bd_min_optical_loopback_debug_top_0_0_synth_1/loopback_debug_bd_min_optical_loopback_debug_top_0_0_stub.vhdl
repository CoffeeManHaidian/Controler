-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Apr  1 10:04:52 2026
-- Host        : DESKTOP-IR4AFNC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ loopback_debug_bd_min_optical_loopback_debug_top_0_0_stub.vhdl
-- Design      : loopback_debug_bd_min_optical_loopback_debug_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    pcie_wr_en : in STD_LOGIC;
    pcie_wr_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcie_wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    status_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tx_frame_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gtx_tx_word_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_frame_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    crc_error_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    format_error_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    match_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    last_rx_seq : out STD_LOGIC_VECTOR ( 31 downto 0 );
    last_rx_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    last_rx_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    optical_status : out STD_LOGIC_VECTOR ( 31 downto 0 );
    optical_tx_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    optical_tx_keep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    optical_tx_valid : out STD_LOGIC;
    optical_tx_last : out STD_LOGIC;
    gtx_tx_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gtx_tx_valid : out STD_LOGIC;
    gtx_tx_last : out STD_LOGIC;
    gtx_tx_word_index : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,pcie_wr_en,pcie_wr_addr[31:0],pcie_wr_data[31:0],status_reg[31:0],tx_frame_count[31:0],gtx_tx_word_count[31:0],rx_frame_count[31:0],crc_error_count[31:0],format_error_count[31:0],match_count[31:0],last_rx_seq[31:0],last_rx_addr[31:0],last_rx_data[31:0],optical_status[31:0],optical_tx_data[63:0],optical_tx_keep[7:0],optical_tx_valid,optical_tx_last,gtx_tx_data[31:0],gtx_tx_valid,gtx_tx_last,gtx_tx_word_index[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "min_optical_loopback_debug_top,Vivado 2017.4";
begin
end;
