-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Thu Mar 26 14:47:12 2026
-- Host        : DESKTOP-IR4AFNC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Controler/Controler/Controler.srcs/sources_1/bd/min_debug_bd/ip/min_debug_bd_min_pcie_to_udp_debug_top_0_1/min_debug_bd_min_pcie_to_udp_debug_top_0_1_sim_netlist.vhdl
-- Design      : min_debug_bd_min_pcie_to_udp_debug_top_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity min_debug_bd_min_pcie_to_udp_debug_top_0_1_pcie_bar_cmd_rx is
  port (
    status_reg : out STD_LOGIC_VECTOR ( 27 downto 0 );
    fifo_wr_en : out STD_LOGIC;
    fifo_wr_en_reg_0 : out STD_LOGIC;
    fifo_wr_en_reg_1 : out STD_LOGIC;
    fifo_wr_en_reg_2 : out STD_LOGIC;
    fifo_wr_en_reg_3 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rst : in STD_LOGIC;
    commit_count0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \usedw_reg[3]\ : in STD_LOGIC;
    pcie_wr_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcie_wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcie_wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of min_debug_bd_min_pcie_to_udp_debug_top_0_1_pcie_bar_cmd_rx : entity is "pcie_bar_cmd_rx";
end min_debug_bd_min_pcie_to_udp_debug_top_0_1_pcie_bar_cmd_rx;

architecture STRUCTURE of min_debug_bd_min_pcie_to_udp_debug_top_0_1_pcie_bar_cmd_rx is
  signal cmd_addr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cmd_addr_reg0 : STD_LOGIC;
  signal cmd_data_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cmd_data_reg0 : STD_LOGIC;
  signal \cmd_data_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \cmd_data_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \cmd_data_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \commit_count[27]_i_10_n_0\ : STD_LOGIC;
  signal \commit_count[27]_i_11_n_0\ : STD_LOGIC;
  signal \commit_count[27]_i_7_n_0\ : STD_LOGIC;
  signal \commit_count[27]_i_8_n_0\ : STD_LOGIC;
  signal \commit_count[27]_i_9_n_0\ : STD_LOGIC;
  signal \commit_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \commit_count_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \commit_count_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \commit_count_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \commit_count_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \commit_count_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \commit_count_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \commit_count_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \commit_count_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \commit_count_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \commit_count_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \commit_count_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \commit_count_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \commit_count_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \commit_count_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \commit_count_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \commit_count_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \commit_count_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \commit_count_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \commit_count_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \commit_count_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \commit_count_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \commit_count_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \commit_count_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \commit_count_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \commit_count_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \commit_count_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \commit_count_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \commit_count_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \commit_count_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \commit_count_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \commit_count_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \commit_count_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \commit_count_reg[27]_i_2_n_1\ : STD_LOGIC;
  signal \commit_count_reg[27]_i_2_n_2\ : STD_LOGIC;
  signal \commit_count_reg[27]_i_2_n_3\ : STD_LOGIC;
  signal \commit_count_reg[27]_i_2_n_4\ : STD_LOGIC;
  signal \commit_count_reg[27]_i_2_n_5\ : STD_LOGIC;
  signal \commit_count_reg[27]_i_2_n_6\ : STD_LOGIC;
  signal \commit_count_reg[27]_i_2_n_7\ : STD_LOGIC;
  signal \commit_count_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \commit_count_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \commit_count_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \commit_count_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \commit_count_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \commit_count_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \commit_count_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \commit_count_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \commit_count_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \commit_count_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \commit_count_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \commit_count_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \commit_count_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \commit_count_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \commit_count_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \commit_count_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^fifo_wr_en_reg_2\ : STD_LOGIC;
  signal \^status_reg\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \NLW_commit_count_reg[27]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cmd_data_reg[31]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \commit_count[27]_i_4\ : label is "soft_lutpair0";
begin
  fifo_wr_en_reg_2 <= \^fifo_wr_en_reg_2\;
  status_reg(27 downto 0) <= \^status_reg\(27 downto 0);
\cmd_addr_reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \cmd_data_reg[31]_i_2_n_0\,
      I1 => \cmd_data_reg[31]_i_3_n_0\,
      I2 => pcie_wr_addr(2),
      O => cmd_addr_reg0
    );
\cmd_addr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(0),
      Q => cmd_addr_reg(0),
      R => rst
    );
\cmd_addr_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(10),
      Q => cmd_addr_reg(10),
      R => rst
    );
\cmd_addr_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(11),
      Q => cmd_addr_reg(11),
      R => rst
    );
\cmd_addr_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(12),
      Q => cmd_addr_reg(12),
      R => rst
    );
\cmd_addr_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(13),
      Q => cmd_addr_reg(13),
      R => rst
    );
\cmd_addr_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(14),
      Q => cmd_addr_reg(14),
      R => rst
    );
\cmd_addr_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(15),
      Q => cmd_addr_reg(15),
      R => rst
    );
\cmd_addr_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(16),
      Q => cmd_addr_reg(16),
      R => rst
    );
\cmd_addr_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(17),
      Q => cmd_addr_reg(17),
      R => rst
    );
\cmd_addr_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(18),
      Q => cmd_addr_reg(18),
      R => rst
    );
\cmd_addr_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(19),
      Q => cmd_addr_reg(19),
      R => rst
    );
\cmd_addr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(1),
      Q => cmd_addr_reg(1),
      R => rst
    );
\cmd_addr_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(20),
      Q => cmd_addr_reg(20),
      R => rst
    );
\cmd_addr_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(21),
      Q => cmd_addr_reg(21),
      R => rst
    );
\cmd_addr_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(22),
      Q => cmd_addr_reg(22),
      R => rst
    );
\cmd_addr_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(23),
      Q => cmd_addr_reg(23),
      R => rst
    );
\cmd_addr_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(24),
      Q => cmd_addr_reg(24),
      R => rst
    );
\cmd_addr_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(25),
      Q => cmd_addr_reg(25),
      R => rst
    );
\cmd_addr_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(26),
      Q => cmd_addr_reg(26),
      R => rst
    );
\cmd_addr_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(27),
      Q => cmd_addr_reg(27),
      R => rst
    );
\cmd_addr_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(28),
      Q => cmd_addr_reg(28),
      R => rst
    );
\cmd_addr_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(29),
      Q => cmd_addr_reg(29),
      R => rst
    );
\cmd_addr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(2),
      Q => cmd_addr_reg(2),
      R => rst
    );
\cmd_addr_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(30),
      Q => cmd_addr_reg(30),
      R => rst
    );
\cmd_addr_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(31),
      Q => cmd_addr_reg(31),
      R => rst
    );
\cmd_addr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(3),
      Q => cmd_addr_reg(3),
      R => rst
    );
\cmd_addr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(4),
      Q => cmd_addr_reg(4),
      R => rst
    );
\cmd_addr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(5),
      Q => cmd_addr_reg(5),
      R => rst
    );
\cmd_addr_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(6),
      Q => cmd_addr_reg(6),
      R => rst
    );
\cmd_addr_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(7),
      Q => cmd_addr_reg(7),
      R => rst
    );
\cmd_addr_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(8),
      Q => cmd_addr_reg(8),
      R => rst
    );
\cmd_addr_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr_reg0,
      D => pcie_wr_data(9),
      Q => cmd_addr_reg(9),
      R => rst
    );
\cmd_data_reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \cmd_data_reg[31]_i_2_n_0\,
      I1 => pcie_wr_addr(2),
      I2 => \cmd_data_reg[31]_i_3_n_0\,
      O => cmd_data_reg0
    );
\cmd_data_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \commit_count[27]_i_10_n_0\,
      I1 => \commit_count[27]_i_9_n_0\,
      I2 => \commit_count[27]_i_8_n_0\,
      I3 => \commit_count[27]_i_7_n_0\,
      I4 => \commit_count[27]_i_11_n_0\,
      I5 => \cmd_data_reg[31]_i_4_n_0\,
      O => \cmd_data_reg[31]_i_2_n_0\
    );
\cmd_data_reg[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \^fifo_wr_en_reg_2\,
      I1 => pcie_wr_addr(3),
      I2 => pcie_wr_en,
      I3 => pcie_wr_addr(6),
      I4 => pcie_wr_addr(7),
      O => \cmd_data_reg[31]_i_3_n_0\
    );
\cmd_data_reg[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pcie_wr_addr(20),
      I1 => pcie_wr_addr(11),
      I2 => pcie_wr_addr(31),
      I3 => pcie_wr_addr(8),
      O => \cmd_data_reg[31]_i_4_n_0\
    );
\cmd_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(0),
      Q => cmd_data_reg(0),
      R => rst
    );
\cmd_data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(10),
      Q => cmd_data_reg(10),
      R => rst
    );
\cmd_data_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(11),
      Q => cmd_data_reg(11),
      R => rst
    );
\cmd_data_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(12),
      Q => cmd_data_reg(12),
      R => rst
    );
\cmd_data_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(13),
      Q => cmd_data_reg(13),
      R => rst
    );
\cmd_data_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(14),
      Q => cmd_data_reg(14),
      R => rst
    );
\cmd_data_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(15),
      Q => cmd_data_reg(15),
      R => rst
    );
\cmd_data_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(16),
      Q => cmd_data_reg(16),
      R => rst
    );
\cmd_data_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(17),
      Q => cmd_data_reg(17),
      R => rst
    );
\cmd_data_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(18),
      Q => cmd_data_reg(18),
      R => rst
    );
\cmd_data_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(19),
      Q => cmd_data_reg(19),
      R => rst
    );
\cmd_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(1),
      Q => cmd_data_reg(1),
      R => rst
    );
\cmd_data_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(20),
      Q => cmd_data_reg(20),
      R => rst
    );
\cmd_data_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(21),
      Q => cmd_data_reg(21),
      R => rst
    );
\cmd_data_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(22),
      Q => cmd_data_reg(22),
      R => rst
    );
\cmd_data_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(23),
      Q => cmd_data_reg(23),
      R => rst
    );
\cmd_data_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(24),
      Q => cmd_data_reg(24),
      R => rst
    );
\cmd_data_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(25),
      Q => cmd_data_reg(25),
      R => rst
    );
\cmd_data_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(26),
      Q => cmd_data_reg(26),
      R => rst
    );
\cmd_data_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(27),
      Q => cmd_data_reg(27),
      R => rst
    );
\cmd_data_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(28),
      Q => cmd_data_reg(28),
      R => rst
    );
\cmd_data_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(29),
      Q => cmd_data_reg(29),
      R => rst
    );
\cmd_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(2),
      Q => cmd_data_reg(2),
      R => rst
    );
\cmd_data_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(30),
      Q => cmd_data_reg(30),
      R => rst
    );
\cmd_data_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(31),
      Q => cmd_data_reg(31),
      R => rst
    );
\cmd_data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(3),
      Q => cmd_data_reg(3),
      R => rst
    );
\cmd_data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(4),
      Q => cmd_data_reg(4),
      R => rst
    );
\cmd_data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(5),
      Q => cmd_data_reg(5),
      R => rst
    );
\cmd_data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(6),
      Q => cmd_data_reg(6),
      R => rst
    );
\cmd_data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(7),
      Q => cmd_data_reg(7),
      R => rst
    );
\cmd_data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(8),
      Q => cmd_data_reg(8),
      R => rst
    );
\cmd_data_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_data_reg0,
      D => pcie_wr_data(9),
      Q => cmd_data_reg(9),
      R => rst
    );
\commit_count[27]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pcie_wr_addr(28),
      I1 => pcie_wr_addr(24),
      I2 => pcie_wr_addr(22),
      I3 => pcie_wr_addr(15),
      O => \commit_count[27]_i_10_n_0\
    );
\commit_count[27]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pcie_wr_addr(30),
      I1 => pcie_wr_addr(10),
      I2 => pcie_wr_addr(21),
      I3 => pcie_wr_addr(9),
      O => \commit_count[27]_i_11_n_0\
    );
\commit_count[27]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \commit_count[27]_i_7_n_0\,
      I1 => \commit_count[27]_i_8_n_0\,
      I2 => \commit_count[27]_i_9_n_0\,
      I3 => \commit_count[27]_i_10_n_0\,
      O => fifo_wr_en_reg_3
    );
\commit_count[27]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => pcie_wr_addr(8),
      I1 => pcie_wr_addr(31),
      I2 => pcie_wr_addr(11),
      I3 => pcie_wr_addr(20),
      I4 => \commit_count[27]_i_11_n_0\,
      O => fifo_wr_en_reg_0
    );
\commit_count[27]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pcie_wr_addr(1),
      I1 => pcie_wr_addr(0),
      I2 => pcie_wr_addr(5),
      I3 => pcie_wr_addr(4),
      O => \^fifo_wr_en_reg_2\
    );
\commit_count[27]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => pcie_wr_addr(7),
      I1 => pcie_wr_addr(6),
      I2 => pcie_wr_addr(3),
      I3 => pcie_wr_data(0),
      I4 => pcie_wr_addr(2),
      I5 => pcie_wr_en,
      O => fifo_wr_en_reg_1
    );
\commit_count[27]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pcie_wr_addr(27),
      I1 => pcie_wr_addr(25),
      I2 => pcie_wr_addr(19),
      I3 => pcie_wr_addr(17),
      O => \commit_count[27]_i_7_n_0\
    );
\commit_count[27]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => pcie_wr_addr(26),
      I1 => pcie_wr_addr(16),
      I2 => pcie_wr_addr(29),
      I3 => pcie_wr_addr(12),
      O => \commit_count[27]_i_8_n_0\
    );
\commit_count[27]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pcie_wr_addr(14),
      I1 => pcie_wr_addr(13),
      I2 => pcie_wr_addr(23),
      I3 => pcie_wr_addr(18),
      O => \commit_count[27]_i_9_n_0\
    );
\commit_count[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^status_reg\(0),
      O => \commit_count[3]_i_2_n_0\
    );
\commit_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[3]_i_1_n_7\,
      Q => \^status_reg\(0),
      R => rst
    );
\commit_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[11]_i_1_n_5\,
      Q => \^status_reg\(10),
      R => rst
    );
\commit_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[11]_i_1_n_4\,
      Q => \^status_reg\(11),
      R => rst
    );
\commit_count_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \commit_count_reg[7]_i_1_n_0\,
      CO(3) => \commit_count_reg[11]_i_1_n_0\,
      CO(2) => \commit_count_reg[11]_i_1_n_1\,
      CO(1) => \commit_count_reg[11]_i_1_n_2\,
      CO(0) => \commit_count_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \commit_count_reg[11]_i_1_n_4\,
      O(2) => \commit_count_reg[11]_i_1_n_5\,
      O(1) => \commit_count_reg[11]_i_1_n_6\,
      O(0) => \commit_count_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^status_reg\(11 downto 8)
    );
\commit_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[15]_i_1_n_7\,
      Q => \^status_reg\(12),
      R => rst
    );
\commit_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[15]_i_1_n_6\,
      Q => \^status_reg\(13),
      R => rst
    );
\commit_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[15]_i_1_n_5\,
      Q => \^status_reg\(14),
      R => rst
    );
\commit_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[15]_i_1_n_4\,
      Q => \^status_reg\(15),
      R => rst
    );
\commit_count_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \commit_count_reg[11]_i_1_n_0\,
      CO(3) => \commit_count_reg[15]_i_1_n_0\,
      CO(2) => \commit_count_reg[15]_i_1_n_1\,
      CO(1) => \commit_count_reg[15]_i_1_n_2\,
      CO(0) => \commit_count_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \commit_count_reg[15]_i_1_n_4\,
      O(2) => \commit_count_reg[15]_i_1_n_5\,
      O(1) => \commit_count_reg[15]_i_1_n_6\,
      O(0) => \commit_count_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^status_reg\(15 downto 12)
    );
\commit_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[19]_i_1_n_7\,
      Q => \^status_reg\(16),
      R => rst
    );
\commit_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[19]_i_1_n_6\,
      Q => \^status_reg\(17),
      R => rst
    );
\commit_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[19]_i_1_n_5\,
      Q => \^status_reg\(18),
      R => rst
    );
\commit_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[19]_i_1_n_4\,
      Q => \^status_reg\(19),
      R => rst
    );
\commit_count_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \commit_count_reg[15]_i_1_n_0\,
      CO(3) => \commit_count_reg[19]_i_1_n_0\,
      CO(2) => \commit_count_reg[19]_i_1_n_1\,
      CO(1) => \commit_count_reg[19]_i_1_n_2\,
      CO(0) => \commit_count_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \commit_count_reg[19]_i_1_n_4\,
      O(2) => \commit_count_reg[19]_i_1_n_5\,
      O(1) => \commit_count_reg[19]_i_1_n_6\,
      O(0) => \commit_count_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^status_reg\(19 downto 16)
    );
\commit_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[3]_i_1_n_6\,
      Q => \^status_reg\(1),
      R => rst
    );
\commit_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[23]_i_1_n_7\,
      Q => \^status_reg\(20),
      R => rst
    );
\commit_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[23]_i_1_n_6\,
      Q => \^status_reg\(21),
      R => rst
    );
\commit_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[23]_i_1_n_5\,
      Q => \^status_reg\(22),
      R => rst
    );
\commit_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[23]_i_1_n_4\,
      Q => \^status_reg\(23),
      R => rst
    );
\commit_count_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \commit_count_reg[19]_i_1_n_0\,
      CO(3) => \commit_count_reg[23]_i_1_n_0\,
      CO(2) => \commit_count_reg[23]_i_1_n_1\,
      CO(1) => \commit_count_reg[23]_i_1_n_2\,
      CO(0) => \commit_count_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \commit_count_reg[23]_i_1_n_4\,
      O(2) => \commit_count_reg[23]_i_1_n_5\,
      O(1) => \commit_count_reg[23]_i_1_n_6\,
      O(0) => \commit_count_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^status_reg\(23 downto 20)
    );
\commit_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[27]_i_2_n_7\,
      Q => \^status_reg\(24),
      R => rst
    );
\commit_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[27]_i_2_n_6\,
      Q => \^status_reg\(25),
      R => rst
    );
\commit_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[27]_i_2_n_5\,
      Q => \^status_reg\(26),
      R => rst
    );
\commit_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[27]_i_2_n_4\,
      Q => \^status_reg\(27),
      R => rst
    );
\commit_count_reg[27]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \commit_count_reg[23]_i_1_n_0\,
      CO(3) => \NLW_commit_count_reg[27]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \commit_count_reg[27]_i_2_n_1\,
      CO(1) => \commit_count_reg[27]_i_2_n_2\,
      CO(0) => \commit_count_reg[27]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \commit_count_reg[27]_i_2_n_4\,
      O(2) => \commit_count_reg[27]_i_2_n_5\,
      O(1) => \commit_count_reg[27]_i_2_n_6\,
      O(0) => \commit_count_reg[27]_i_2_n_7\,
      S(3 downto 0) => \^status_reg\(27 downto 24)
    );
\commit_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[3]_i_1_n_5\,
      Q => \^status_reg\(2),
      R => rst
    );
\commit_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[3]_i_1_n_4\,
      Q => \^status_reg\(3),
      R => rst
    );
\commit_count_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \commit_count_reg[3]_i_1_n_0\,
      CO(2) => \commit_count_reg[3]_i_1_n_1\,
      CO(1) => \commit_count_reg[3]_i_1_n_2\,
      CO(0) => \commit_count_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \commit_count_reg[3]_i_1_n_4\,
      O(2) => \commit_count_reg[3]_i_1_n_5\,
      O(1) => \commit_count_reg[3]_i_1_n_6\,
      O(0) => \commit_count_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^status_reg\(3 downto 1),
      S(0) => \commit_count[3]_i_2_n_0\
    );
\commit_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[7]_i_1_n_7\,
      Q => \^status_reg\(4),
      R => rst
    );
\commit_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[7]_i_1_n_6\,
      Q => \^status_reg\(5),
      R => rst
    );
\commit_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[7]_i_1_n_5\,
      Q => \^status_reg\(6),
      R => rst
    );
\commit_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[7]_i_1_n_4\,
      Q => \^status_reg\(7),
      R => rst
    );
\commit_count_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \commit_count_reg[3]_i_1_n_0\,
      CO(3) => \commit_count_reg[7]_i_1_n_0\,
      CO(2) => \commit_count_reg[7]_i_1_n_1\,
      CO(1) => \commit_count_reg[7]_i_1_n_2\,
      CO(0) => \commit_count_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \commit_count_reg[7]_i_1_n_4\,
      O(2) => \commit_count_reg[7]_i_1_n_5\,
      O(1) => \commit_count_reg[7]_i_1_n_6\,
      O(0) => \commit_count_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^status_reg\(7 downto 4)
    );
\commit_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[11]_i_1_n_7\,
      Q => \^status_reg\(8),
      R => rst
    );
\commit_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => \commit_count_reg[11]_i_1_n_6\,
      Q => \^status_reg\(9),
      R => rst
    );
\fifo_wr_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(0),
      Q => Q(0),
      R => rst
    );
\fifo_wr_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(10),
      Q => Q(10),
      R => rst
    );
\fifo_wr_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(11),
      Q => Q(11),
      R => rst
    );
\fifo_wr_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(12),
      Q => Q(12),
      R => rst
    );
\fifo_wr_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(13),
      Q => Q(13),
      R => rst
    );
\fifo_wr_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(14),
      Q => Q(14),
      R => rst
    );
\fifo_wr_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(15),
      Q => Q(15),
      R => rst
    );
\fifo_wr_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(16),
      Q => Q(16),
      R => rst
    );
\fifo_wr_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(17),
      Q => Q(17),
      R => rst
    );
\fifo_wr_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(18),
      Q => Q(18),
      R => rst
    );
\fifo_wr_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(19),
      Q => Q(19),
      R => rst
    );
\fifo_wr_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(1),
      Q => Q(1),
      R => rst
    );
\fifo_wr_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(20),
      Q => Q(20),
      R => rst
    );
\fifo_wr_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(21),
      Q => Q(21),
      R => rst
    );
\fifo_wr_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(22),
      Q => Q(22),
      R => rst
    );
\fifo_wr_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(23),
      Q => Q(23),
      R => rst
    );
\fifo_wr_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(24),
      Q => Q(24),
      R => rst
    );
\fifo_wr_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(25),
      Q => Q(25),
      R => rst
    );
\fifo_wr_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(26),
      Q => Q(26),
      R => rst
    );
\fifo_wr_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(27),
      Q => Q(27),
      R => rst
    );
\fifo_wr_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(28),
      Q => Q(28),
      R => rst
    );
\fifo_wr_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(29),
      Q => Q(29),
      R => rst
    );
\fifo_wr_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(2),
      Q => Q(2),
      R => rst
    );
\fifo_wr_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(30),
      Q => Q(30),
      R => rst
    );
\fifo_wr_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(31),
      Q => Q(31),
      R => rst
    );
\fifo_wr_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(0),
      Q => Q(32),
      R => rst
    );
\fifo_wr_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(1),
      Q => Q(33),
      R => rst
    );
\fifo_wr_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(2),
      Q => Q(34),
      R => rst
    );
\fifo_wr_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(3),
      Q => Q(35),
      R => rst
    );
\fifo_wr_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(4),
      Q => Q(36),
      R => rst
    );
\fifo_wr_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(5),
      Q => Q(37),
      R => rst
    );
\fifo_wr_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(6),
      Q => Q(38),
      R => rst
    );
\fifo_wr_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(7),
      Q => Q(39),
      R => rst
    );
\fifo_wr_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(3),
      Q => Q(3),
      R => rst
    );
\fifo_wr_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(8),
      Q => Q(40),
      R => rst
    );
\fifo_wr_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(9),
      Q => Q(41),
      R => rst
    );
\fifo_wr_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(10),
      Q => Q(42),
      R => rst
    );
\fifo_wr_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(11),
      Q => Q(43),
      R => rst
    );
\fifo_wr_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(12),
      Q => Q(44),
      R => rst
    );
\fifo_wr_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(13),
      Q => Q(45),
      R => rst
    );
\fifo_wr_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(14),
      Q => Q(46),
      R => rst
    );
\fifo_wr_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(15),
      Q => Q(47),
      R => rst
    );
\fifo_wr_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(16),
      Q => Q(48),
      R => rst
    );
\fifo_wr_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(17),
      Q => Q(49),
      R => rst
    );
\fifo_wr_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(4),
      Q => Q(4),
      R => rst
    );
\fifo_wr_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(18),
      Q => Q(50),
      R => rst
    );
\fifo_wr_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(19),
      Q => Q(51),
      R => rst
    );
\fifo_wr_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(20),
      Q => Q(52),
      R => rst
    );
\fifo_wr_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(21),
      Q => Q(53),
      R => rst
    );
\fifo_wr_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(22),
      Q => Q(54),
      R => rst
    );
\fifo_wr_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(23),
      Q => Q(55),
      R => rst
    );
\fifo_wr_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(24),
      Q => Q(56),
      R => rst
    );
\fifo_wr_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(25),
      Q => Q(57),
      R => rst
    );
\fifo_wr_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(26),
      Q => Q(58),
      R => rst
    );
\fifo_wr_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(27),
      Q => Q(59),
      R => rst
    );
\fifo_wr_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(5),
      Q => Q(5),
      R => rst
    );
\fifo_wr_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(28),
      Q => Q(60),
      R => rst
    );
\fifo_wr_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(29),
      Q => Q(61),
      R => rst
    );
\fifo_wr_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(30),
      Q => Q(62),
      R => rst
    );
\fifo_wr_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_addr_reg(31),
      Q => Q(63),
      R => rst
    );
\fifo_wr_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(6),
      Q => Q(6),
      R => rst
    );
\fifo_wr_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(7),
      Q => Q(7),
      R => rst
    );
\fifo_wr_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(8),
      Q => Q(8),
      R => rst
    );
\fifo_wr_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => commit_count0,
      D => cmd_data_reg(9),
      Q => Q(9),
      R => rst
    );
fifo_wr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \usedw_reg[3]\,
      Q => fifo_wr_en,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity min_debug_bd_min_pcie_to_udp_debug_top_0_1_simple_sync_fifo is
  port (
    commit_count0 : out STD_LOGIC;
    status_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \status_reg[3]\ : out STD_LOGIC;
    fifo_wr_en_reg : out STD_LOGIC;
    rd_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    fifo_wr_en : in STD_LOGIC;
    \pcie_wr_addr[15]\ : in STD_LOGIC;
    \pcie_wr_addr[9]\ : in STD_LOGIC;
    \pcie_wr_addr[4]\ : in STD_LOGIC;
    pcie_wr_en : in STD_LOGIC;
    fifo_rd_en : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC;
    wr_data : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of min_debug_bd_min_pcie_to_udp_debug_top_0_1_simple_sync_fifo : entity is "simple_sync_fifo";
end min_debug_bd_min_pcie_to_udp_debug_top_0_1_simple_sync_fifo;

architecture STRUCTURE of min_debug_bd_min_pcie_to_udp_debug_top_0_1_simple_sync_fifo is
  signal mem_reg_i_1_n_0 : STD_LOGIC;
  signal mem_reg_i_4_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal rd_ptr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rd_ptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr[1]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr[2]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr[3]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr[3]_i_2_n_0\ : STD_LOGIC;
  signal \^status_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal usedw : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \usedw[1]_i_1_n_0\ : STD_LOGIC;
  signal \usedw[4]_i_1_n_0\ : STD_LOGIC;
  signal \usedw_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \wr_ptr_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d64";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d64";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg : label is 511;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg : label is 63;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rd_ptr[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rd_ptr[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rd_ptr[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rd_ptr[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \status_reg[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \status_reg[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wr_ptr[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wr_ptr[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wr_ptr[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wr_ptr[3]_i_1\ : label is "soft_lutpair2";
begin
  status_reg(0) <= \^status_reg\(0);
\commit_count[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \pcie_wr_addr[15]\,
      I1 => \^status_reg\(0),
      I2 => \pcie_wr_addr[9]\,
      I3 => \pcie_wr_addr[4]\,
      I4 => pcie_wr_en,
      O => commit_count0
    );
fifo_wr_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => pcie_wr_en,
      I1 => \pcie_wr_addr[4]\,
      I2 => \pcie_wr_addr[9]\,
      I3 => \^status_reg\(0),
      I4 => \pcie_wr_addr[15]\,
      I5 => rst,
      O => fifo_wr_en_reg
    );
mem_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(15 downto 10) => B"111111",
      ADDRARDADDR(9 downto 6) => rd_ptr(3 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(15 downto 10) => B"111111",
      ADDRBWRADDR(9 downto 6) => \wr_ptr_reg__0\(3 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_mem_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => wr_data(31 downto 0),
      DIBDI(31 downto 0) => wr_data(63 downto 32),
      DIPADIP(3 downto 0) => B"1111",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 0) => rd_data(31 downto 0),
      DOBDO(31 downto 0) => rd_data(63 downto 32),
      DOPADOP(3 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_i_1_n_0,
      ENBWREN => p_0_in_0(1),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_mem_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => \state_reg[0]\,
      REGCEB => '0',
      RSTRAMARSTRAM => rst,
      RSTRAMB => '0',
      RSTREGARSTREG => rst,
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => mem_reg_i_4_n_0,
      WEBWE(6) => mem_reg_i_4_n_0,
      WEBWE(5) => mem_reg_i_4_n_0,
      WEBWE(4) => mem_reg_i_4_n_0,
      WEBWE(3) => mem_reg_i_4_n_0,
      WEBWE(2) => mem_reg_i_4_n_0,
      WEBWE(1) => mem_reg_i_4_n_0,
      WEBWE(0) => mem_reg_i_4_n_0
    );
mem_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst,
      I1 => \rd_ptr[3]_i_1_n_0\,
      O => mem_reg_i_1_n_0
    );
mem_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => fifo_wr_en,
      I1 => \usedw_reg__0\(0),
      I2 => \usedw_reg__0\(1),
      I3 => \usedw_reg__0\(4),
      I4 => \usedw_reg__0\(2),
      I5 => \usedw_reg__0\(3),
      O => p_0_in_0(1)
    );
mem_reg_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => mem_reg_i_4_n_0
    );
\rd_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_ptr(0),
      O => \rd_ptr[0]_i_1_n_0\
    );
\rd_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr(0),
      I1 => rd_ptr(1),
      O => \rd_ptr[1]_i_1_n_0\
    );
\rd_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => rd_ptr(2),
      I1 => rd_ptr(1),
      I2 => rd_ptr(0),
      O => \rd_ptr[2]_i_1_n_0\
    );
\rd_ptr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => fifo_rd_en,
      I1 => \usedw_reg__0\(2),
      I2 => \usedw_reg__0\(0),
      I3 => \usedw_reg__0\(1),
      I4 => \usedw_reg__0\(3),
      I5 => \usedw_reg__0\(4),
      O => \rd_ptr[3]_i_1_n_0\
    );
\rd_ptr[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => rd_ptr(3),
      I1 => rd_ptr(0),
      I2 => rd_ptr(1),
      I3 => rd_ptr(2),
      O => \rd_ptr[3]_i_2_n_0\
    );
\rd_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_ptr[3]_i_1_n_0\,
      D => \rd_ptr[0]_i_1_n_0\,
      Q => rd_ptr(0),
      R => rst
    );
\rd_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_ptr[3]_i_1_n_0\,
      D => \rd_ptr[1]_i_1_n_0\,
      Q => rd_ptr(1),
      R => rst
    );
\rd_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_ptr[3]_i_1_n_0\,
      D => \rd_ptr[2]_i_1_n_0\,
      Q => rd_ptr(2),
      R => rst
    );
\rd_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_ptr[3]_i_1_n_0\,
      D => \rd_ptr[3]_i_2_n_0\,
      Q => rd_ptr(3),
      R => rst
    );
\status_reg[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \usedw_reg__0\(3),
      I1 => \usedw_reg__0\(2),
      I2 => \usedw_reg__0\(4),
      I3 => \usedw_reg__0\(1),
      I4 => \usedw_reg__0\(0),
      O => \^status_reg\(0)
    );
\status_reg[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \usedw_reg__0\(4),
      I1 => \usedw_reg__0\(3),
      I2 => \usedw_reg__0\(1),
      I3 => \usedw_reg__0\(0),
      I4 => \usedw_reg__0\(2),
      O => \status_reg[3]\
    );
\usedw[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \usedw_reg__0\(0),
      O => usedw(0)
    );
\usedw[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969696969696B69"
    )
        port map (
      I0 => fifo_wr_en,
      I1 => \usedw_reg__0\(0),
      I2 => \usedw_reg__0\(1),
      I3 => \usedw_reg__0\(4),
      I4 => \usedw_reg__0\(2),
      I5 => \usedw_reg__0\(3),
      O => \usedw[1]_i_1_n_0\
    );
\usedw[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFFF000FFF0040F"
    )
        port map (
      I0 => \usedw_reg__0\(3),
      I1 => \usedw_reg__0\(4),
      I2 => \usedw_reg__0\(0),
      I3 => fifo_wr_en,
      I4 => \usedw_reg__0\(2),
      I5 => \usedw_reg__0\(1),
      O => usedw(2)
    );
\usedw[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F8080FEFE1101"
    )
        port map (
      I0 => \usedw_reg__0\(0),
      I1 => \usedw_reg__0\(1),
      I2 => fifo_wr_en,
      I3 => \usedw_reg__0\(4),
      I4 => \usedw_reg__0\(3),
      I5 => \usedw_reg__0\(2),
      O => usedw(3)
    );
\usedw[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_ptr[3]_i_1_n_0\,
      I1 => p_0_in_0(1),
      O => \usedw[4]_i_1_n_0\
    );
\usedw[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F80FF00FF00EE01"
    )
        port map (
      I0 => \usedw_reg__0\(0),
      I1 => \usedw_reg__0\(1),
      I2 => fifo_wr_en,
      I3 => \usedw_reg__0\(4),
      I4 => \usedw_reg__0\(2),
      I5 => \usedw_reg__0\(3),
      O => usedw(4)
    );
\usedw_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usedw[4]_i_1_n_0\,
      D => usedw(0),
      Q => \usedw_reg__0\(0),
      R => rst
    );
\usedw_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usedw[4]_i_1_n_0\,
      D => \usedw[1]_i_1_n_0\,
      Q => \usedw_reg__0\(1),
      R => rst
    );
\usedw_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usedw[4]_i_1_n_0\,
      D => usedw(2),
      Q => \usedw_reg__0\(2),
      R => rst
    );
\usedw_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usedw[4]_i_1_n_0\,
      D => usedw(3),
      Q => \usedw_reg__0\(3),
      R => rst
    );
\usedw_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usedw[4]_i_1_n_0\,
      D => usedw(4),
      Q => \usedw_reg__0\(4),
      R => rst
    );
\wr_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wr_ptr_reg__0\(0),
      O => p_0_in(0)
    );
\wr_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_reg__0\(0),
      I1 => \wr_ptr_reg__0\(1),
      O => p_0_in(1)
    );
\wr_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \wr_ptr_reg__0\(2),
      I1 => \wr_ptr_reg__0\(1),
      I2 => \wr_ptr_reg__0\(0),
      O => p_0_in(2)
    );
\wr_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \wr_ptr_reg__0\(3),
      I1 => \wr_ptr_reg__0\(0),
      I2 => \wr_ptr_reg__0\(1),
      I3 => \wr_ptr_reg__0\(2),
      O => p_0_in(3)
    );
\wr_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in_0(1),
      D => p_0_in(0),
      Q => \wr_ptr_reg__0\(0),
      R => rst
    );
\wr_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in_0(1),
      D => p_0_in(1),
      Q => \wr_ptr_reg__0\(1),
      R => rst
    );
\wr_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in_0(1),
      D => p_0_in(2),
      Q => \wr_ptr_reg__0\(2),
      R => rst
    );
\wr_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in_0(1),
      D => p_0_in(3),
      Q => \wr_ptr_reg__0\(3),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity min_debug_bd_min_pcie_to_udp_debug_top_0_1_udp_frame_tx_min is
  port (
    tx_frame_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_rd_en : out STD_LOGIC;
    tx_axis_tkeep : out STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_axis_tlast : out STD_LOGIC;
    mem_reg : out STD_LOGIC;
    tx_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    rd_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \usedw_reg[4]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of min_debug_bd_min_pcie_to_udp_debug_top_0_1_udp_frame_tx_min : entity is "udp_frame_tx_min";
end min_debug_bd_min_pcie_to_udp_debug_top_0_1_udp_frame_tx_min;

architecture STRUCTURE of min_debug_bd_min_pcie_to_udp_debug_top_0_1_udp_frame_tx_min is
  signal \beat_idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \beat_idx[1]_i_1_n_0\ : STD_LOGIC;
  signal \beat_idx[2]_i_1_n_0\ : STD_LOGIC;
  signal fifo_rd_en_i_1_n_0 : STD_LOGIC;
  signal frame_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal frame_byte0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal frame_byte1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal frame_byte2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal frame_byte3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal frame_byte4 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal frame_byte5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal frame_byte6 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal idx : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal \seq_cnt[31]_i_1_n_0\ : STD_LOGIC;
  signal \seq_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \seq_cnt_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \seq_cnt_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \seq_cnt_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \seq_cnt_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \seq_cnt_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \seq_cnt_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \seq_cnt_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \seq_cnt_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \seq_cnt_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \seq_cnt_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \seq_cnt_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \seq_cnt_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \seq_cnt_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \seq_cnt_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \seq_cnt_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \seq_cnt_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \seq_cnt_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \seq_cnt_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \seq_cnt_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \seq_cnt_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \seq_cnt_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \seq_cnt_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \seq_cnt_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \seq_cnt_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \seq_cnt_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \seq_cnt_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \seq_cnt_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \seq_cnt_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \seq_cnt_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \seq_cnt_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \seq_cnt_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \seq_cnt_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \seq_cnt_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \seq_cnt_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \seq_cnt_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \seq_cnt_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \seq_cnt_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \seq_cnt_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \seq_cnt_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \seq_cnt_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \seq_cnt_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \seq_cnt_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \seq_cnt_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \seq_cnt_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \seq_cnt_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \seq_cnt_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \seq_cnt_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \seq_cnt_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \seq_cnt_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \seq_cnt_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \seq_cnt_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \seq_cnt_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \seq_cnt_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \seq_cnt_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \seq_cnt_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \seq_cnt_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \seq_cnt_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \seq_cnt_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \seq_cnt_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \seq_cnt_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \seq_cnt_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \seq_cnt_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \seq_cnt_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_axis_tdata[63]_i_1_n_0\ : STD_LOGIC;
  signal \^tx_axis_tkeep\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \tx_axis_tkeep[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_axis_tkeep[7]_i_1_n_0\ : STD_LOGIC;
  signal \^tx_axis_tlast\ : STD_LOGIC;
  signal tx_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal \^tx_frame_count\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_seq_cnt_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \beat_idx[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \beat_idx[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \beat_idx[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tx_axis_tdata[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tx_axis_tdata[10]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tx_axis_tdata[11]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tx_axis_tdata[12]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tx_axis_tdata[13]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tx_axis_tdata[14]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tx_axis_tdata[15]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tx_axis_tdata[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tx_axis_tdata[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tx_axis_tdata[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tx_axis_tdata[48]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tx_axis_tdata[49]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tx_axis_tdata[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tx_axis_tdata[50]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tx_axis_tdata[51]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tx_axis_tdata[52]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tx_axis_tdata[53]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tx_axis_tdata[54]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tx_axis_tdata[55]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tx_axis_tdata[56]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tx_axis_tdata[57]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tx_axis_tdata[58]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tx_axis_tdata[59]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tx_axis_tdata[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tx_axis_tdata[60]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tx_axis_tdata[61]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tx_axis_tdata[62]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tx_axis_tdata[63]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tx_axis_tdata[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tx_axis_tdata[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tx_axis_tdata[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tx_axis_tdata[9]_i_1\ : label is "soft_lutpair16";
begin
  tx_axis_tkeep(1 downto 0) <= \^tx_axis_tkeep\(1 downto 0);
  tx_axis_tlast <= \^tx_axis_tlast\;
  tx_frame_count(31 downto 0) <= \^tx_frame_count\(31 downto 0);
\beat_idx[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4A4A4A4"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => idx(3),
      I3 => idx(4),
      I4 => idx(5),
      O => \beat_idx[0]_i_1_n_0\
    );
\beat_idx[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EE40AE40"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => idx(3),
      I3 => idx(4),
      I4 => idx(5),
      O => \beat_idx[1]_i_1_n_0\
    );
\beat_idx[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE4000"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => idx(3),
      I3 => idx(4),
      I4 => idx(5),
      O => \beat_idx[2]_i_1_n_0\
    );
\beat_idx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \beat_idx[0]_i_1_n_0\,
      Q => idx(3),
      R => rst
    );
\beat_idx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \beat_idx[1]_i_1_n_0\,
      Q => idx(4),
      R => rst
    );
\beat_idx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \beat_idx[2]_i_1_n_0\,
      Q => idx(5),
      R => rst
    );
fifo_rd_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \usedw_reg[4]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => rst,
      O => fifo_rd_en_i_1_n_0
    );
fifo_rd_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fifo_rd_en_i_1_n_0,
      Q => fifo_rd_en,
      R => '0'
    );
mem_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => mem_reg
    );
\seq_cnt[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => idx(5),
      I1 => idx(4),
      I2 => idx(3),
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      O => \seq_cnt[31]_i_1_n_0\
    );
\seq_cnt[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^tx_frame_count\(0),
      O => \seq_cnt[3]_i_2_n_0\
    );
\seq_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[3]_i_1_n_7\,
      Q => \^tx_frame_count\(0),
      R => rst
    );
\seq_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[11]_i_1_n_5\,
      Q => \^tx_frame_count\(10),
      R => rst
    );
\seq_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[11]_i_1_n_4\,
      Q => \^tx_frame_count\(11),
      R => rst
    );
\seq_cnt_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \seq_cnt_reg[7]_i_1_n_0\,
      CO(3) => \seq_cnt_reg[11]_i_1_n_0\,
      CO(2) => \seq_cnt_reg[11]_i_1_n_1\,
      CO(1) => \seq_cnt_reg[11]_i_1_n_2\,
      CO(0) => \seq_cnt_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \seq_cnt_reg[11]_i_1_n_4\,
      O(2) => \seq_cnt_reg[11]_i_1_n_5\,
      O(1) => \seq_cnt_reg[11]_i_1_n_6\,
      O(0) => \seq_cnt_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^tx_frame_count\(11 downto 8)
    );
\seq_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[15]_i_1_n_7\,
      Q => \^tx_frame_count\(12),
      R => rst
    );
\seq_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[15]_i_1_n_6\,
      Q => \^tx_frame_count\(13),
      R => rst
    );
\seq_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[15]_i_1_n_5\,
      Q => \^tx_frame_count\(14),
      R => rst
    );
\seq_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[15]_i_1_n_4\,
      Q => \^tx_frame_count\(15),
      R => rst
    );
\seq_cnt_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \seq_cnt_reg[11]_i_1_n_0\,
      CO(3) => \seq_cnt_reg[15]_i_1_n_0\,
      CO(2) => \seq_cnt_reg[15]_i_1_n_1\,
      CO(1) => \seq_cnt_reg[15]_i_1_n_2\,
      CO(0) => \seq_cnt_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \seq_cnt_reg[15]_i_1_n_4\,
      O(2) => \seq_cnt_reg[15]_i_1_n_5\,
      O(1) => \seq_cnt_reg[15]_i_1_n_6\,
      O(0) => \seq_cnt_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^tx_frame_count\(15 downto 12)
    );
\seq_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[19]_i_1_n_7\,
      Q => \^tx_frame_count\(16),
      R => rst
    );
\seq_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[19]_i_1_n_6\,
      Q => \^tx_frame_count\(17),
      R => rst
    );
\seq_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[19]_i_1_n_5\,
      Q => \^tx_frame_count\(18),
      R => rst
    );
\seq_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[19]_i_1_n_4\,
      Q => \^tx_frame_count\(19),
      R => rst
    );
\seq_cnt_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \seq_cnt_reg[15]_i_1_n_0\,
      CO(3) => \seq_cnt_reg[19]_i_1_n_0\,
      CO(2) => \seq_cnt_reg[19]_i_1_n_1\,
      CO(1) => \seq_cnt_reg[19]_i_1_n_2\,
      CO(0) => \seq_cnt_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \seq_cnt_reg[19]_i_1_n_4\,
      O(2) => \seq_cnt_reg[19]_i_1_n_5\,
      O(1) => \seq_cnt_reg[19]_i_1_n_6\,
      O(0) => \seq_cnt_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^tx_frame_count\(19 downto 16)
    );
\seq_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[3]_i_1_n_6\,
      Q => \^tx_frame_count\(1),
      R => rst
    );
\seq_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[23]_i_1_n_7\,
      Q => \^tx_frame_count\(20),
      R => rst
    );
\seq_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[23]_i_1_n_6\,
      Q => \^tx_frame_count\(21),
      R => rst
    );
\seq_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[23]_i_1_n_5\,
      Q => \^tx_frame_count\(22),
      R => rst
    );
\seq_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[23]_i_1_n_4\,
      Q => \^tx_frame_count\(23),
      R => rst
    );
\seq_cnt_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \seq_cnt_reg[19]_i_1_n_0\,
      CO(3) => \seq_cnt_reg[23]_i_1_n_0\,
      CO(2) => \seq_cnt_reg[23]_i_1_n_1\,
      CO(1) => \seq_cnt_reg[23]_i_1_n_2\,
      CO(0) => \seq_cnt_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \seq_cnt_reg[23]_i_1_n_4\,
      O(2) => \seq_cnt_reg[23]_i_1_n_5\,
      O(1) => \seq_cnt_reg[23]_i_1_n_6\,
      O(0) => \seq_cnt_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^tx_frame_count\(23 downto 20)
    );
\seq_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[27]_i_1_n_7\,
      Q => \^tx_frame_count\(24),
      R => rst
    );
\seq_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[27]_i_1_n_6\,
      Q => \^tx_frame_count\(25),
      R => rst
    );
\seq_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[27]_i_1_n_5\,
      Q => \^tx_frame_count\(26),
      R => rst
    );
\seq_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[27]_i_1_n_4\,
      Q => \^tx_frame_count\(27),
      R => rst
    );
\seq_cnt_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \seq_cnt_reg[23]_i_1_n_0\,
      CO(3) => \seq_cnt_reg[27]_i_1_n_0\,
      CO(2) => \seq_cnt_reg[27]_i_1_n_1\,
      CO(1) => \seq_cnt_reg[27]_i_1_n_2\,
      CO(0) => \seq_cnt_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \seq_cnt_reg[27]_i_1_n_4\,
      O(2) => \seq_cnt_reg[27]_i_1_n_5\,
      O(1) => \seq_cnt_reg[27]_i_1_n_6\,
      O(0) => \seq_cnt_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^tx_frame_count\(27 downto 24)
    );
\seq_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[31]_i_2_n_7\,
      Q => \^tx_frame_count\(28),
      R => rst
    );
\seq_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[31]_i_2_n_6\,
      Q => \^tx_frame_count\(29),
      R => rst
    );
\seq_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[3]_i_1_n_5\,
      Q => \^tx_frame_count\(2),
      R => rst
    );
\seq_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[31]_i_2_n_5\,
      Q => \^tx_frame_count\(30),
      R => rst
    );
\seq_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[31]_i_2_n_4\,
      Q => \^tx_frame_count\(31),
      R => rst
    );
\seq_cnt_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \seq_cnt_reg[27]_i_1_n_0\,
      CO(3) => \NLW_seq_cnt_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \seq_cnt_reg[31]_i_2_n_1\,
      CO(1) => \seq_cnt_reg[31]_i_2_n_2\,
      CO(0) => \seq_cnt_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \seq_cnt_reg[31]_i_2_n_4\,
      O(2) => \seq_cnt_reg[31]_i_2_n_5\,
      O(1) => \seq_cnt_reg[31]_i_2_n_6\,
      O(0) => \seq_cnt_reg[31]_i_2_n_7\,
      S(3 downto 0) => \^tx_frame_count\(31 downto 28)
    );
\seq_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[3]_i_1_n_4\,
      Q => \^tx_frame_count\(3),
      R => rst
    );
\seq_cnt_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \seq_cnt_reg[3]_i_1_n_0\,
      CO(2) => \seq_cnt_reg[3]_i_1_n_1\,
      CO(1) => \seq_cnt_reg[3]_i_1_n_2\,
      CO(0) => \seq_cnt_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \seq_cnt_reg[3]_i_1_n_4\,
      O(2) => \seq_cnt_reg[3]_i_1_n_5\,
      O(1) => \seq_cnt_reg[3]_i_1_n_6\,
      O(0) => \seq_cnt_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^tx_frame_count\(3 downto 1),
      S(0) => \seq_cnt[3]_i_2_n_0\
    );
\seq_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[7]_i_1_n_7\,
      Q => \^tx_frame_count\(4),
      R => rst
    );
\seq_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[7]_i_1_n_6\,
      Q => \^tx_frame_count\(5),
      R => rst
    );
\seq_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[7]_i_1_n_5\,
      Q => \^tx_frame_count\(6),
      R => rst
    );
\seq_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[7]_i_1_n_4\,
      Q => \^tx_frame_count\(7),
      R => rst
    );
\seq_cnt_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \seq_cnt_reg[3]_i_1_n_0\,
      CO(3) => \seq_cnt_reg[7]_i_1_n_0\,
      CO(2) => \seq_cnt_reg[7]_i_1_n_1\,
      CO(1) => \seq_cnt_reg[7]_i_1_n_2\,
      CO(0) => \seq_cnt_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \seq_cnt_reg[7]_i_1_n_4\,
      O(2) => \seq_cnt_reg[7]_i_1_n_5\,
      O(1) => \seq_cnt_reg[7]_i_1_n_6\,
      O(0) => \seq_cnt_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^tx_frame_count\(7 downto 4)
    );
\seq_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[11]_i_1_n_7\,
      Q => \^tx_frame_count\(8),
      R => rst
    );
\seq_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \seq_cnt[31]_i_1_n_0\,
      D => \seq_cnt_reg[11]_i_1_n_6\,
      Q => \^tx_frame_count\(9),
      R => rst
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008985"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state[1]_i_2_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \usedw_reg[4]\,
      I4 => rst,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009B88"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \usedw_reg[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => rst,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15555555"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => idx(3),
      I3 => idx(4),
      I4 => idx(5),
      O => \state[1]_i_2_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => '0'
    );
\tx_axis_tdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"380C"
    )
        port map (
      I0 => rd_data(40),
      I1 => idx(5),
      I2 => idx(3),
      I3 => idx(4),
      O => frame_byte6(0)
    );
\tx_axis_tdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E06"
    )
        port map (
      I0 => idx(4),
      I1 => idx(5),
      I2 => idx(3),
      I3 => rd_data(34),
      O => frame_byte5(2)
    );
\tx_axis_tdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => idx(3),
      I1 => idx(4),
      I2 => rd_data(35),
      I3 => idx(5),
      O => frame_byte5(3)
    );
\tx_axis_tdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => rd_data(36),
      I1 => idx(5),
      I2 => idx(4),
      I3 => idx(3),
      O => frame_byte5(4)
    );
\tx_axis_tdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E06"
    )
        port map (
      I0 => idx(4),
      I1 => idx(5),
      I2 => idx(3),
      I3 => rd_data(37),
      O => frame_byte5(5)
    );
\tx_axis_tdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => idx(3),
      I1 => idx(5),
      I2 => rd_data(38),
      I3 => idx(4),
      O => frame_byte5(6)
    );
\tx_axis_tdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => rd_data(39),
      I1 => idx(5),
      I2 => idx(4),
      I3 => idx(3),
      O => frame_byte5(7)
    );
\tx_axis_tdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50D000D0"
    )
        port map (
      I0 => idx(3),
      I1 => \^tx_frame_count\(24),
      I2 => idx(5),
      I3 => idx(4),
      I4 => rd_data(24),
      O => frame_byte4(0)
    );
\tx_axis_tdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50D000D0"
    )
        port map (
      I0 => idx(3),
      I1 => \^tx_frame_count\(25),
      I2 => idx(5),
      I3 => idx(4),
      I4 => rd_data(25),
      O => frame_byte4(1)
    );
\tx_axis_tdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38000800"
    )
        port map (
      I0 => \^tx_frame_count\(26),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      I4 => rd_data(26),
      O => frame_byte4(2)
    );
\tx_axis_tdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38000800"
    )
        port map (
      I0 => \^tx_frame_count\(27),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      I4 => rd_data(27),
      O => frame_byte4(3)
    );
\tx_axis_tdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C03"
    )
        port map (
      I0 => rd_data(41),
      I1 => idx(3),
      I2 => idx(5),
      I3 => idx(4),
      O => frame_byte6(1)
    );
\tx_axis_tdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50D000D0"
    )
        port map (
      I0 => idx(3),
      I1 => \^tx_frame_count\(28),
      I2 => idx(5),
      I3 => idx(4),
      I4 => rd_data(28),
      O => frame_byte4(4)
    );
\tx_axis_tdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38000800"
    )
        port map (
      I0 => \^tx_frame_count\(29),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      I4 => rd_data(29),
      O => frame_byte4(5)
    );
\tx_axis_tdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38C008C0"
    )
        port map (
      I0 => \^tx_frame_count\(30),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      I4 => rd_data(30),
      O => frame_byte4(6)
    );
\tx_axis_tdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38C008C0"
    )
        port map (
      I0 => \^tx_frame_count\(31),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      I4 => rd_data(31),
      O => frame_byte4(7)
    );
\tx_axis_tdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"380C080C"
    )
        port map (
      I0 => \^tx_frame_count\(16),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      I4 => rd_data(16),
      O => frame_byte3(0)
    );
\tx_axis_tdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38000800"
    )
        port map (
      I0 => \^tx_frame_count\(17),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      I4 => rd_data(17),
      O => frame_byte3(1)
    );
\tx_axis_tdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38000800"
    )
        port map (
      I0 => \^tx_frame_count\(18),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      I4 => rd_data(18),
      O => frame_byte3(2)
    );
\tx_axis_tdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CF0AF00"
    )
        port map (
      I0 => rd_data(19),
      I1 => \^tx_frame_count\(19),
      I2 => idx(4),
      I3 => idx(5),
      I4 => idx(3),
      O => frame_byte3(3)
    );
\tx_axis_tdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38000800"
    )
        port map (
      I0 => \^tx_frame_count\(20),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      I4 => rd_data(20),
      O => frame_byte3(4)
    );
\tx_axis_tdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38C008C0"
    )
        port map (
      I0 => \^tx_frame_count\(21),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      I4 => rd_data(21),
      O => frame_byte3(5)
    );
\tx_axis_tdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4808"
    )
        port map (
      I0 => idx(3),
      I1 => idx(4),
      I2 => idx(5),
      I3 => rd_data(42),
      O => frame_byte6(2)
    );
\tx_axis_tdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38000800"
    )
        port map (
      I0 => \^tx_frame_count\(22),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      I4 => rd_data(22),
      O => frame_byte3(6)
    );
\tx_axis_tdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CF0AF00"
    )
        port map (
      I0 => rd_data(23),
      I1 => \^tx_frame_count\(23),
      I2 => idx(4),
      I3 => idx(5),
      I4 => idx(3),
      O => frame_byte3(7)
    );
\tx_axis_tdata[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CF0AF00"
    )
        port map (
      I0 => rd_data(8),
      I1 => \^tx_frame_count\(8),
      I2 => idx(4),
      I3 => idx(5),
      I4 => idx(3),
      O => frame_byte2(0)
    );
\tx_axis_tdata[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50D000D0"
    )
        port map (
      I0 => idx(3),
      I1 => \^tx_frame_count\(9),
      I2 => idx(5),
      I3 => idx(4),
      I4 => rd_data(9),
      O => frame_byte2(1)
    );
\tx_axis_tdata[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50D000D0"
    )
        port map (
      I0 => idx(3),
      I1 => \^tx_frame_count\(10),
      I2 => idx(5),
      I3 => idx(4),
      I4 => rd_data(10),
      O => frame_byte2(2)
    );
\tx_axis_tdata[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"380C080C"
    )
        port map (
      I0 => \^tx_frame_count\(11),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      I4 => rd_data(11),
      O => frame_byte2(3)
    );
\tx_axis_tdata[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50D000D0"
    )
        port map (
      I0 => idx(3),
      I1 => \^tx_frame_count\(12),
      I2 => idx(5),
      I3 => idx(4),
      I4 => rd_data(12),
      O => frame_byte2(4)
    );
\tx_axis_tdata[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38000800"
    )
        port map (
      I0 => \^tx_frame_count\(13),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      I4 => rd_data(13),
      O => frame_byte2(5)
    );
\tx_axis_tdata[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"380C080C"
    )
        port map (
      I0 => rd_data(14),
      I1 => idx(4),
      I2 => idx(3),
      I3 => idx(5),
      I4 => \^tx_frame_count\(14),
      O => frame_byte2(6)
    );
\tx_axis_tdata[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38000800"
    )
        port map (
      I0 => \^tx_frame_count\(15),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      I4 => rd_data(15),
      O => frame_byte2(7)
    );
\tx_axis_tdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => rd_data(43),
      I1 => idx(5),
      I2 => idx(4),
      I3 => idx(3),
      O => frame_byte6(3)
    );
\tx_axis_tdata[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38000800"
    )
        port map (
      I0 => \^tx_frame_count\(0),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      I4 => rd_data(0),
      O => frame_byte1(0)
    );
\tx_axis_tdata[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2CC32C03"
    )
        port map (
      I0 => \^tx_frame_count\(1),
      I1 => idx(4),
      I2 => idx(5),
      I3 => idx(3),
      I4 => rd_data(1),
      O => frame_byte1(1)
    );
\tx_axis_tdata[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38000800"
    )
        port map (
      I0 => \^tx_frame_count\(2),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      I4 => rd_data(2),
      O => frame_byte1(2)
    );
\tx_axis_tdata[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38C008C0"
    )
        port map (
      I0 => \^tx_frame_count\(3),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      I4 => rd_data(3),
      O => frame_byte1(3)
    );
\tx_axis_tdata[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50D000D0"
    )
        port map (
      I0 => idx(3),
      I1 => \^tx_frame_count\(4),
      I2 => idx(5),
      I3 => idx(4),
      I4 => rd_data(4),
      O => frame_byte1(4)
    );
\tx_axis_tdata[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50D000D0"
    )
        port map (
      I0 => idx(3),
      I1 => \^tx_frame_count\(5),
      I2 => idx(5),
      I3 => idx(4),
      I4 => rd_data(5),
      O => frame_byte1(5)
    );
\tx_axis_tdata[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50D000D0"
    )
        port map (
      I0 => idx(3),
      I1 => \^tx_frame_count\(6),
      I2 => idx(5),
      I3 => idx(4),
      I4 => rd_data(6),
      O => frame_byte1(6)
    );
\tx_axis_tdata[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38000800"
    )
        port map (
      I0 => \^tx_frame_count\(7),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      I4 => rd_data(7),
      O => frame_byte1(7)
    );
\tx_axis_tdata[48]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => idx(4),
      I1 => idx(3),
      I2 => rd_data(56),
      I3 => idx(5),
      O => frame_byte0(0)
    );
\tx_axis_tdata[49]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0083"
    )
        port map (
      I0 => rd_data(57),
      I1 => idx(5),
      I2 => idx(3),
      I3 => idx(4),
      O => frame_byte0(1)
    );
\tx_axis_tdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4808"
    )
        port map (
      I0 => idx(3),
      I1 => idx(4),
      I2 => idx(5),
      I3 => rd_data(44),
      O => frame_byte6(4)
    );
\tx_axis_tdata[50]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => idx(4),
      I1 => idx(3),
      I2 => rd_data(58),
      I3 => idx(5),
      O => frame_byte0(2)
    );
\tx_axis_tdata[51]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => rd_data(59),
      I1 => idx(5),
      I2 => idx(3),
      I3 => idx(4),
      O => frame_byte0(3)
    );
\tx_axis_tdata[52]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => rd_data(60),
      I1 => idx(5),
      I2 => idx(3),
      I3 => idx(4),
      O => frame_byte0(4)
    );
\tx_axis_tdata[53]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => rd_data(61),
      I1 => idx(5),
      I2 => idx(3),
      I3 => idx(4),
      O => frame_byte0(5)
    );
\tx_axis_tdata[54]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08FC"
    )
        port map (
      I0 => rd_data(62),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      O => frame_byte0(6)
    );
\tx_axis_tdata[55]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4088"
    )
        port map (
      I0 => idx(4),
      I1 => idx(3),
      I2 => rd_data(63),
      I3 => idx(5),
      O => frame_byte0(7)
    );
\tx_axis_tdata[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0830"
    )
        port map (
      I0 => rd_data(48),
      I1 => idx(3),
      I2 => idx(4),
      I3 => idx(5),
      O => frame_byte(0)
    );
\tx_axis_tdata[57]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => rd_data(49),
      I1 => idx(5),
      I2 => idx(3),
      I3 => idx(4),
      O => frame_byte(1)
    );
\tx_axis_tdata[58]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => rd_data(50),
      I1 => idx(5),
      I2 => idx(3),
      I3 => idx(4),
      O => frame_byte(2)
    );
\tx_axis_tdata[59]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AD0"
    )
        port map (
      I0 => idx(3),
      I1 => rd_data(51),
      I2 => idx(5),
      I3 => idx(4),
      O => frame_byte(3)
    );
\tx_axis_tdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4808"
    )
        port map (
      I0 => idx(3),
      I1 => idx(4),
      I2 => idx(5),
      I3 => rd_data(45),
      O => frame_byte6(5)
    );
\tx_axis_tdata[60]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4066"
    )
        port map (
      I0 => idx(4),
      I1 => idx(5),
      I2 => rd_data(52),
      I3 => idx(3),
      O => frame_byte(4)
    );
\tx_axis_tdata[61]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4088"
    )
        port map (
      I0 => idx(4),
      I1 => idx(3),
      I2 => rd_data(53),
      I3 => idx(5),
      O => frame_byte(5)
    );
\tx_axis_tdata[62]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => rd_data(54),
      I1 => idx(5),
      I2 => idx(3),
      I3 => idx(4),
      O => frame_byte(6)
    );
\tx_axis_tdata[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      O => \tx_axis_tdata[63]_i_1_n_0\
    );
\tx_axis_tdata[63]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20C0"
    )
        port map (
      I0 => rd_data(55),
      I1 => idx(4),
      I2 => idx(3),
      I3 => idx(5),
      O => frame_byte(7)
    );
\tx_axis_tdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => rd_data(46),
      I1 => idx(5),
      I2 => idx(4),
      I3 => idx(3),
      O => frame_byte6(6)
    );
\tx_axis_tdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4808"
    )
        port map (
      I0 => idx(3),
      I1 => idx(4),
      I2 => idx(5),
      I3 => rd_data(47),
      O => frame_byte6(7)
    );
\tx_axis_tdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => rd_data(32),
      I1 => idx(5),
      I2 => idx(4),
      I3 => idx(3),
      O => frame_byte5(0)
    );
\tx_axis_tdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4808"
    )
        port map (
      I0 => idx(3),
      I1 => idx(4),
      I2 => idx(5),
      I3 => rd_data(33),
      O => frame_byte5(1)
    );
\tx_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte6(0),
      Q => tx_axis_tdata(0),
      R => rst
    );
\tx_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte5(2),
      Q => tx_axis_tdata(10),
      R => rst
    );
\tx_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte5(3),
      Q => tx_axis_tdata(11),
      R => rst
    );
\tx_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte5(4),
      Q => tx_axis_tdata(12),
      R => rst
    );
\tx_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte5(5),
      Q => tx_axis_tdata(13),
      R => rst
    );
\tx_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte5(6),
      Q => tx_axis_tdata(14),
      R => rst
    );
\tx_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte5(7),
      Q => tx_axis_tdata(15),
      R => rst
    );
\tx_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte4(0),
      Q => tx_axis_tdata(16),
      R => rst
    );
\tx_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte4(1),
      Q => tx_axis_tdata(17),
      R => rst
    );
\tx_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte4(2),
      Q => tx_axis_tdata(18),
      R => rst
    );
\tx_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte4(3),
      Q => tx_axis_tdata(19),
      R => rst
    );
\tx_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte6(1),
      Q => tx_axis_tdata(1),
      R => rst
    );
\tx_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte4(4),
      Q => tx_axis_tdata(20),
      R => rst
    );
\tx_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte4(5),
      Q => tx_axis_tdata(21),
      R => rst
    );
\tx_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte4(6),
      Q => tx_axis_tdata(22),
      R => rst
    );
\tx_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte4(7),
      Q => tx_axis_tdata(23),
      R => rst
    );
\tx_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte3(0),
      Q => tx_axis_tdata(24),
      R => rst
    );
\tx_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte3(1),
      Q => tx_axis_tdata(25),
      R => rst
    );
\tx_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte3(2),
      Q => tx_axis_tdata(26),
      R => rst
    );
\tx_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte3(3),
      Q => tx_axis_tdata(27),
      R => rst
    );
\tx_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte3(4),
      Q => tx_axis_tdata(28),
      R => rst
    );
\tx_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte3(5),
      Q => tx_axis_tdata(29),
      R => rst
    );
\tx_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte6(2),
      Q => tx_axis_tdata(2),
      R => rst
    );
\tx_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte3(6),
      Q => tx_axis_tdata(30),
      R => rst
    );
\tx_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte3(7),
      Q => tx_axis_tdata(31),
      R => rst
    );
\tx_axis_tdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte2(0),
      Q => tx_axis_tdata(32),
      R => rst
    );
\tx_axis_tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte2(1),
      Q => tx_axis_tdata(33),
      R => rst
    );
\tx_axis_tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte2(2),
      Q => tx_axis_tdata(34),
      R => rst
    );
\tx_axis_tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte2(3),
      Q => tx_axis_tdata(35),
      R => rst
    );
\tx_axis_tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte2(4),
      Q => tx_axis_tdata(36),
      R => rst
    );
\tx_axis_tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte2(5),
      Q => tx_axis_tdata(37),
      R => rst
    );
\tx_axis_tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte2(6),
      Q => tx_axis_tdata(38),
      R => rst
    );
\tx_axis_tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte2(7),
      Q => tx_axis_tdata(39),
      R => rst
    );
\tx_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte6(3),
      Q => tx_axis_tdata(3),
      R => rst
    );
\tx_axis_tdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte1(0),
      Q => tx_axis_tdata(40),
      R => rst
    );
\tx_axis_tdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte1(1),
      Q => tx_axis_tdata(41),
      R => rst
    );
\tx_axis_tdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte1(2),
      Q => tx_axis_tdata(42),
      R => rst
    );
\tx_axis_tdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte1(3),
      Q => tx_axis_tdata(43),
      R => rst
    );
\tx_axis_tdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte1(4),
      Q => tx_axis_tdata(44),
      R => rst
    );
\tx_axis_tdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte1(5),
      Q => tx_axis_tdata(45),
      R => rst
    );
\tx_axis_tdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte1(6),
      Q => tx_axis_tdata(46),
      R => rst
    );
\tx_axis_tdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte1(7),
      Q => tx_axis_tdata(47),
      R => rst
    );
\tx_axis_tdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte0(0),
      Q => tx_axis_tdata(48),
      R => rst
    );
\tx_axis_tdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte0(1),
      Q => tx_axis_tdata(49),
      R => rst
    );
\tx_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte6(4),
      Q => tx_axis_tdata(4),
      R => rst
    );
\tx_axis_tdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte0(2),
      Q => tx_axis_tdata(50),
      R => rst
    );
\tx_axis_tdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte0(3),
      Q => tx_axis_tdata(51),
      R => rst
    );
\tx_axis_tdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte0(4),
      Q => tx_axis_tdata(52),
      R => rst
    );
\tx_axis_tdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte0(5),
      Q => tx_axis_tdata(53),
      R => rst
    );
\tx_axis_tdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte0(6),
      Q => tx_axis_tdata(54),
      R => rst
    );
\tx_axis_tdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte0(7),
      Q => tx_axis_tdata(55),
      R => rst
    );
\tx_axis_tdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte(0),
      Q => tx_axis_tdata(56),
      R => rst
    );
\tx_axis_tdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte(1),
      Q => tx_axis_tdata(57),
      R => rst
    );
\tx_axis_tdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte(2),
      Q => tx_axis_tdata(58),
      R => rst
    );
\tx_axis_tdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte(3),
      Q => tx_axis_tdata(59),
      R => rst
    );
\tx_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte6(5),
      Q => tx_axis_tdata(5),
      R => rst
    );
\tx_axis_tdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte(4),
      Q => tx_axis_tdata(60),
      R => rst
    );
\tx_axis_tdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte(5),
      Q => tx_axis_tdata(61),
      R => rst
    );
\tx_axis_tdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte(6),
      Q => tx_axis_tdata(62),
      R => rst
    );
\tx_axis_tdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte(7),
      Q => tx_axis_tdata(63),
      R => rst
    );
\tx_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte6(6),
      Q => tx_axis_tdata(6),
      R => rst
    );
\tx_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte6(7),
      Q => tx_axis_tdata(7),
      R => rst
    );
\tx_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte5(0),
      Q => tx_axis_tdata(8),
      R => rst
    );
\tx_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_axis_tdata[63]_i_1_n_0\,
      D => frame_byte5(1),
      Q => tx_axis_tdata(9),
      R => rst
    );
\tx_axis_tkeep[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \^tx_axis_tkeep\(0),
      O => \tx_axis_tkeep[3]_i_1_n_0\
    );
\tx_axis_tkeep[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2AAA00002AAA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => idx(5),
      I2 => idx(4),
      I3 => idx(3),
      I4 => \state_reg_n_0_[0]\,
      I5 => \^tx_axis_tkeep\(1),
      O => \tx_axis_tkeep[7]_i_1_n_0\
    );
\tx_axis_tkeep_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tx_axis_tkeep[3]_i_1_n_0\,
      Q => \^tx_axis_tkeep\(0),
      R => rst
    );
\tx_axis_tkeep_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tx_axis_tkeep[7]_i_1_n_0\,
      Q => \^tx_axis_tkeep\(1),
      R => rst
    );
tx_axis_tlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000008000"
    )
        port map (
      I0 => idx(5),
      I1 => idx(4),
      I2 => idx(3),
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \^tx_axis_tlast\,
      O => tx_axis_tlast_i_1_n_0
    );
tx_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tx_axis_tlast_i_1_n_0,
      Q => \^tx_axis_tlast\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity min_debug_bd_min_pcie_to_udp_debug_top_0_1_min_pcie_to_udp_top is
  port (
    status_reg_3_sp_1 : out STD_LOGIC;
    tx_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    status_reg : out STD_LOGIC_VECTOR ( 28 downto 0 );
    tx_frame_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tx_axis_tkeep : out STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_axis_tlast : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    pcie_wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcie_wr_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcie_wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of min_debug_bd_min_pcie_to_udp_debug_top_0_1_min_pcie_to_udp_top : entity is "min_pcie_to_udp_top";
end min_debug_bd_min_pcie_to_udp_debug_top_0_1_min_pcie_to_udp_top;

architecture STRUCTURE of min_debug_bd_min_pcie_to_udp_debug_top_0_1_min_pcie_to_udp_top is
  signal commit_count0 : STD_LOGIC;
  signal data10 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data6 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data8 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data9 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_rd_data : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal fifo_rd_en : STD_LOGIC;
  signal fifo_wr_data : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal fifo_wr_en : STD_LOGIC;
  signal status_reg_3_sn_1 : STD_LOGIC;
  signal u_pcie_bar_cmd_rx_n_29 : STD_LOGIC;
  signal u_pcie_bar_cmd_rx_n_30 : STD_LOGIC;
  signal u_pcie_bar_cmd_rx_n_31 : STD_LOGIC;
  signal u_pcie_bar_cmd_rx_n_32 : STD_LOGIC;
  signal u_simple_sync_fifo_n_3 : STD_LOGIC;
  signal u_udp_frame_tx_min_n_36 : STD_LOGIC;
begin
  status_reg_3_sp_1 <= status_reg_3_sn_1;
u_pcie_bar_cmd_rx: entity work.min_debug_bd_min_pcie_to_udp_debug_top_0_1_pcie_bar_cmd_rx
     port map (
      Q(63 downto 0) => fifo_wr_data(63 downto 0),
      clk => clk,
      commit_count0 => commit_count0,
      fifo_wr_en => fifo_wr_en,
      fifo_wr_en_reg_0 => u_pcie_bar_cmd_rx_n_29,
      fifo_wr_en_reg_1 => u_pcie_bar_cmd_rx_n_30,
      fifo_wr_en_reg_2 => u_pcie_bar_cmd_rx_n_31,
      fifo_wr_en_reg_3 => u_pcie_bar_cmd_rx_n_32,
      pcie_wr_addr(31 downto 0) => pcie_wr_addr(31 downto 0),
      pcie_wr_data(31 downto 0) => pcie_wr_data(31 downto 0),
      pcie_wr_en => pcie_wr_en,
      rst => rst,
      status_reg(27 downto 0) => status_reg(28 downto 1),
      \usedw_reg[3]\ => u_simple_sync_fifo_n_3
    );
u_simple_sync_fifo: entity work.min_debug_bd_min_pcie_to_udp_debug_top_0_1_simple_sync_fifo
     port map (
      clk => clk,
      commit_count0 => commit_count0,
      fifo_rd_en => fifo_rd_en,
      fifo_wr_en => fifo_wr_en,
      fifo_wr_en_reg => u_simple_sync_fifo_n_3,
      \pcie_wr_addr[15]\ => u_pcie_bar_cmd_rx_n_32,
      \pcie_wr_addr[4]\ => u_pcie_bar_cmd_rx_n_31,
      \pcie_wr_addr[9]\ => u_pcie_bar_cmd_rx_n_29,
      pcie_wr_en => u_pcie_bar_cmd_rx_n_30,
      rd_data(63 downto 56) => data4(7 downto 0),
      rd_data(55 downto 48) => data5(7 downto 0),
      rd_data(47 downto 40) => data6(7 downto 0),
      rd_data(39 downto 32) => fifo_rd_data(39 downto 32),
      rd_data(31 downto 24) => data8(7 downto 0),
      rd_data(23 downto 16) => data9(7 downto 0),
      rd_data(15 downto 8) => data10(7 downto 0),
      rd_data(7 downto 0) => fifo_rd_data(7 downto 0),
      rst => rst,
      \state_reg[0]\ => u_udp_frame_tx_min_n_36,
      status_reg(0) => status_reg(0),
      \status_reg[3]\ => status_reg_3_sn_1,
      wr_data(63 downto 0) => fifo_wr_data(63 downto 0)
    );
u_udp_frame_tx_min: entity work.min_debug_bd_min_pcie_to_udp_debug_top_0_1_udp_frame_tx_min
     port map (
      clk => clk,
      fifo_rd_en => fifo_rd_en,
      mem_reg => u_udp_frame_tx_min_n_36,
      rd_data(63 downto 56) => data4(7 downto 0),
      rd_data(55 downto 48) => data5(7 downto 0),
      rd_data(47 downto 40) => data6(7 downto 0),
      rd_data(39 downto 32) => fifo_rd_data(39 downto 32),
      rd_data(31 downto 24) => data8(7 downto 0),
      rd_data(23 downto 16) => data9(7 downto 0),
      rd_data(15 downto 8) => data10(7 downto 0),
      rd_data(7 downto 0) => fifo_rd_data(7 downto 0),
      rst => rst,
      tx_axis_tdata(63 downto 0) => tx_axis_tdata(63 downto 0),
      tx_axis_tkeep(1 downto 0) => tx_axis_tkeep(1 downto 0),
      tx_axis_tlast => tx_axis_tlast,
      tx_frame_count(31 downto 0) => tx_frame_count(31 downto 0),
      \usedw_reg[4]\ => status_reg_3_sn_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity min_debug_bd_min_pcie_to_udp_debug_top_0_1_min_pcie_to_udp_debug_top is
  port (
    status_reg_3_sp_1 : out STD_LOGIC;
    tx_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    status_reg : out STD_LOGIC_VECTOR ( 28 downto 0 );
    tx_frame_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tx_axis_tkeep : out STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_axis_tlast : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    pcie_wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcie_wr_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcie_wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of min_debug_bd_min_pcie_to_udp_debug_top_0_1_min_pcie_to_udp_debug_top : entity is "min_pcie_to_udp_debug_top";
end min_debug_bd_min_pcie_to_udp_debug_top_0_1_min_pcie_to_udp_debug_top;

architecture STRUCTURE of min_debug_bd_min_pcie_to_udp_debug_top_0_1_min_pcie_to_udp_debug_top is
  signal status_reg_3_sn_1 : STD_LOGIC;
begin
  status_reg_3_sp_1 <= status_reg_3_sn_1;
u_min_pcie_to_udp_top: entity work.min_debug_bd_min_pcie_to_udp_debug_top_0_1_min_pcie_to_udp_top
     port map (
      clk => clk,
      pcie_wr_addr(31 downto 0) => pcie_wr_addr(31 downto 0),
      pcie_wr_data(31 downto 0) => pcie_wr_data(31 downto 0),
      pcie_wr_en => pcie_wr_en,
      rst => rst,
      status_reg(28 downto 0) => status_reg(28 downto 0),
      status_reg_3_sp_1 => status_reg_3_sn_1,
      tx_axis_tdata(63 downto 0) => tx_axis_tdata(63 downto 0),
      tx_axis_tkeep(1 downto 0) => tx_axis_tkeep(1 downto 0),
      tx_axis_tlast => tx_axis_tlast,
      tx_frame_count(31 downto 0) => tx_frame_count(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity min_debug_bd_min_pcie_to_udp_debug_top_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of min_debug_bd_min_pcie_to_udp_debug_top_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of min_debug_bd_min_pcie_to_udp_debug_top_0_1 : entity is "min_debug_bd_min_pcie_to_udp_debug_top_0_1,min_pcie_to_udp_debug_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of min_debug_bd_min_pcie_to_udp_debug_top_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of min_debug_bd_min_pcie_to_udp_debug_top_0_1 : entity is "min_pcie_to_udp_debug_top,Vivado 2017.4";
end min_debug_bd_min_pcie_to_udp_debug_top_0_1;

architecture STRUCTURE of min_debug_bd_min_pcie_to_udp_debug_top_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^status_reg\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \^tx_axis_tkeep\ : STD_LOGIC_VECTOR ( 6 downto 2 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF tx_axis, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN min_debug_bd_clk";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of tx_axis_tlast : signal is "xilinx.com:interface:axis:1.0 tx_axis TLAST";
  attribute X_INTERFACE_PARAMETER of tx_axis_tlast : signal is "XIL_INTERFACENAME tx_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN min_debug_bd_clk, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of tx_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 tx_axis TVALID";
  attribute X_INTERFACE_INFO of tx_axis_tdata : signal is "xilinx.com:interface:axis:1.0 tx_axis TDATA";
  attribute X_INTERFACE_INFO of tx_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 tx_axis TKEEP";
begin
  status_reg(31 downto 2) <= \^status_reg\(31 downto 2);
  status_reg(1) <= \<const1>\;
  status_reg(0) <= \<const0>\;
  tx_axis_tkeep(7) <= \^tx_axis_tkeep\(6);
  tx_axis_tkeep(6) <= \^tx_axis_tkeep\(6);
  tx_axis_tkeep(5) <= \^tx_axis_tkeep\(6);
  tx_axis_tkeep(4) <= \^tx_axis_tkeep\(6);
  tx_axis_tkeep(3) <= \^tx_axis_tkeep\(2);
  tx_axis_tkeep(2) <= \^tx_axis_tkeep\(2);
  tx_axis_tkeep(1) <= \^tx_axis_tkeep\(2);
  tx_axis_tkeep(0) <= \^tx_axis_tkeep\(2);
  tx_axis_tvalid <= \^tx_axis_tkeep\(2);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.min_debug_bd_min_pcie_to_udp_debug_top_0_1_min_pcie_to_udp_debug_top
     port map (
      clk => clk,
      pcie_wr_addr(31 downto 0) => pcie_wr_addr(31 downto 0),
      pcie_wr_data(31 downto 0) => pcie_wr_data(31 downto 0),
      pcie_wr_en => pcie_wr_en,
      rst => rst,
      status_reg(28 downto 1) => \^status_reg\(31 downto 4),
      status_reg(0) => \^status_reg\(2),
      status_reg_3_sp_1 => \^status_reg\(3),
      tx_axis_tdata(63 downto 0) => tx_axis_tdata(63 downto 0),
      tx_axis_tkeep(1) => \^tx_axis_tkeep\(6),
      tx_axis_tkeep(0) => \^tx_axis_tkeep\(2),
      tx_axis_tlast => tx_axis_tlast,
      tx_frame_count(31 downto 0) => tx_frame_count(31 downto 0)
    );
end STRUCTURE;
