-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Thu Mar 26 14:47:12 2026
-- Host        : DESKTOP-IR4AFNC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Controler/Controler/Controler.srcs/sources_1/bd/min_debug_bd/ip/min_debug_bd_min_pcie_to_udp_debug_top_0_1/min_debug_bd_min_pcie_to_udp_debug_top_0_1_stub.vhdl
-- Design      : min_debug_bd_min_pcie_to_udp_debug_top_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity min_debug_bd_min_pcie_to_udp_debug_top_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    pcie_wr_en : in STD_LOGIC;
    pcie_wr_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcie_wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    status_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tx_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_axis_tvalid : out STD_LOGIC;
    tx_axis_tlast : out STD_LOGIC;
    tx_frame_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end min_debug_bd_min_pcie_to_udp_debug_top_0_1;

architecture stub of min_debug_bd_min_pcie_to_udp_debug_top_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,pcie_wr_en,pcie_wr_addr[31:0],pcie_wr_data[31:0],status_reg[31:0],tx_axis_tdata[63:0],tx_axis_tkeep[7:0],tx_axis_tvalid,tx_axis_tlast,tx_frame_count[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "min_pcie_to_udp_debug_top,Vivado 2017.4";
begin
end;
