-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Apr  1 10:04:53 2026
-- Host        : DESKTOP-IR4AFNC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_
--               loopback_debug_bd_min_optical_loopback_debug_top_0_0_sim_netlist.vhdl
-- Design      : loopback_debug_bd_min_optical_loopback_debug_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_custom_optical_tx is
  port (
    fifo_rd_en : out STD_LOGIC;
    \tx_frame_count[0]\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \tx_frame_count[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_frame_count[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_frame_count[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_frame_count[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_frame_count[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_frame_count[27]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_frame_count[31]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    optical_tx_valid : out STD_LOGIC;
    optical_tx_keep : out STD_LOGIC_VECTOR ( 0 to 0 );
    optical_tx_last : out STD_LOGIC;
    optical_tx_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC;
    rd_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \usedw_reg[3]\ : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_custom_optical_tx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_custom_optical_tx is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^s\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \__1/i__n_0\ : STD_LOGIC;
  signal cmd_addr : STD_LOGIC;
  signal \^optical_tx_keep\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^optical_tx_last\ : STD_LOGIC;
  signal \^optical_tx_valid\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 63 downto 48 );
  signal p_1_in : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal seq_cnt : STD_LOGIC;
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
  signal state_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state_0 : signal is "yes";
  signal \tx_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[24]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[25]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[26]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[27]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[28]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[29]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[30]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[32]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[33]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[34]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[35]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[36]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[37]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[38]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[39]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[40]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[41]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[42]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[43]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[44]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[45]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[46]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[47]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[48]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[49]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[50]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[51]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[52]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[53]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[54]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[55]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[56]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[57]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[58]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[59]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[60]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[61]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[62]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[63]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[63]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \^tx_frame_count[0]\ : STD_LOGIC;
  signal \^tx_frame_count[11]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^tx_frame_count[15]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^tx_frame_count[19]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^tx_frame_count[23]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^tx_frame_count[27]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^tx_frame_count[31]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^tx_frame_count[7]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tx_keep[7]_i_1_n_0\ : STD_LOGIC;
  signal tx_last_i_1_n_0 : STD_LOGIC;
  signal tx_valid_i_1_n_0 : STD_LOGIC;
  signal \NLW_seq_cnt_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ST_IDLE:000,ST_LATCH:001,ST_SEND0:010,ST_SEND1:011,ST_SEND2:100";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ST_IDLE:000,ST_LATCH:001,ST_SEND0:010,ST_SEND1:011,ST_SEND2:100";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "ST_IDLE:000,ST_LATCH:001,ST_SEND0:010,ST_SEND1:011,ST_SEND2:100";
  attribute KEEP of \FSM_sequential_state_reg[2]\ : label is "yes";
begin
  S(2 downto 0) <= \^s\(2 downto 0);
  optical_tx_keep(0) <= \^optical_tx_keep\(0);
  optical_tx_last <= \^optical_tx_last\;
  optical_tx_valid <= \^optical_tx_valid\;
  \tx_frame_count[0]\ <= \^tx_frame_count[0]\;
  \tx_frame_count[11]\(3 downto 0) <= \^tx_frame_count[11]\(3 downto 0);
  \tx_frame_count[15]\(3 downto 0) <= \^tx_frame_count[15]\(3 downto 0);
  \tx_frame_count[19]\(3 downto 0) <= \^tx_frame_count[19]\(3 downto 0);
  \tx_frame_count[23]\(3 downto 0) <= \^tx_frame_count[23]\(3 downto 0);
  \tx_frame_count[27]\(3 downto 0) <= \^tx_frame_count[27]\(3 downto 0);
  \tx_frame_count[31]\(3 downto 0) <= \^tx_frame_count[31]\(3 downto 0);
  \tx_frame_count[7]\(3 downto 0) <= \^tx_frame_count[7]\(3 downto 0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3277327700400045"
    )
        port map (
      I0 => state_0(2),
      I1 => \state_reg[1]\,
      I2 => state_0(1),
      I3 => state_0(0),
      I4 => \usedw_reg[3]\,
      I5 => state_0(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3777377205400540"
    )
        port map (
      I0 => state_0(2),
      I1 => \state_reg[1]\,
      I2 => state_0(1),
      I3 => state_0(0),
      I4 => \usedw_reg[3]\,
      I5 => state_0(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7237723240004000"
    )
        port map (
      I0 => state_0(2),
      I1 => \state_reg[1]\,
      I2 => state_0(1),
      I3 => state_0(0),
      I4 => \usedw_reg[3]\,
      I5 => state_0(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state_0(0),
      R => rst
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state_0(1),
      R => rst
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state_0(2),
      R => rst
    );
\__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => state_0(0),
      I1 => state_0(2),
      I2 => state_0(1),
      O => cmd_addr
    );
\__1/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => state_0(0),
      I1 => state_0(2),
      I2 => \usedw_reg[3]\,
      I3 => state_0(1),
      O => \__1/i__n_0\
    );
\cmd_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(32),
      Q => p_1_in(32),
      R => rst
    );
\cmd_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(42),
      Q => p_1_in(42),
      R => rst
    );
\cmd_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(43),
      Q => p_1_in(43),
      R => rst
    );
\cmd_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(44),
      Q => p_1_in(44),
      R => rst
    );
\cmd_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(45),
      Q => p_1_in(45),
      R => rst
    );
\cmd_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(46),
      Q => p_1_in(46),
      R => rst
    );
\cmd_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(47),
      Q => p_1_in(47),
      R => rst
    );
\cmd_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(48),
      Q => p_1_in(48),
      R => rst
    );
\cmd_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(49),
      Q => p_1_in(49),
      R => rst
    );
\cmd_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(50),
      Q => p_1_in(50),
      R => rst
    );
\cmd_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(51),
      Q => p_1_in(51),
      R => rst
    );
\cmd_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(33),
      Q => p_1_in(33),
      R => rst
    );
\cmd_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(52),
      Q => p_1_in(52),
      R => rst
    );
\cmd_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(53),
      Q => p_1_in(53),
      R => rst
    );
\cmd_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(54),
      Q => p_1_in(54),
      R => rst
    );
\cmd_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(55),
      Q => p_1_in(55),
      R => rst
    );
\cmd_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(56),
      Q => p_1_in(56),
      R => rst
    );
\cmd_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(57),
      Q => p_1_in(57),
      R => rst
    );
\cmd_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(58),
      Q => p_1_in(58),
      R => rst
    );
\cmd_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(59),
      Q => p_1_in(59),
      R => rst
    );
\cmd_addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(60),
      Q => p_1_in(60),
      R => rst
    );
\cmd_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(61),
      Q => p_1_in(61),
      R => rst
    );
\cmd_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(34),
      Q => p_1_in(34),
      R => rst
    );
\cmd_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(62),
      Q => p_1_in(62),
      R => rst
    );
\cmd_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(63),
      Q => p_1_in(63),
      R => rst
    );
\cmd_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(35),
      Q => p_1_in(35),
      R => rst
    );
\cmd_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(36),
      Q => p_1_in(36),
      R => rst
    );
\cmd_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(37),
      Q => p_1_in(37),
      R => rst
    );
\cmd_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(38),
      Q => p_1_in(38),
      R => rst
    );
\cmd_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(39),
      Q => p_1_in(39),
      R => rst
    );
\cmd_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(40),
      Q => p_1_in(40),
      R => rst
    );
\cmd_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(41),
      Q => p_1_in(41),
      R => rst
    );
\cmd_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(0),
      Q => p_1_in(0),
      R => rst
    );
\cmd_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(10),
      Q => p_1_in(10),
      R => rst
    );
\cmd_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(11),
      Q => p_1_in(11),
      R => rst
    );
\cmd_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(12),
      Q => p_1_in(12),
      R => rst
    );
\cmd_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(13),
      Q => p_1_in(13),
      R => rst
    );
\cmd_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(14),
      Q => p_1_in(14),
      R => rst
    );
\cmd_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(15),
      Q => p_1_in(15),
      R => rst
    );
\cmd_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(16),
      Q => p_1_in(16),
      R => rst
    );
\cmd_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(17),
      Q => p_1_in(17),
      R => rst
    );
\cmd_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(18),
      Q => p_1_in(18),
      R => rst
    );
\cmd_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(19),
      Q => p_1_in(19),
      R => rst
    );
\cmd_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(1),
      Q => p_1_in(1),
      R => rst
    );
\cmd_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(20),
      Q => p_1_in(20),
      R => rst
    );
\cmd_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(21),
      Q => p_1_in(21),
      R => rst
    );
\cmd_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(22),
      Q => p_1_in(22),
      R => rst
    );
\cmd_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(23),
      Q => p_1_in(23),
      R => rst
    );
\cmd_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(24),
      Q => p_1_in(24),
      R => rst
    );
\cmd_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(25),
      Q => p_1_in(25),
      R => rst
    );
\cmd_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(26),
      Q => p_1_in(26),
      R => rst
    );
\cmd_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(27),
      Q => p_1_in(27),
      R => rst
    );
\cmd_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(28),
      Q => p_1_in(28),
      R => rst
    );
\cmd_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(29),
      Q => p_1_in(29),
      R => rst
    );
\cmd_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(2),
      Q => p_1_in(2),
      R => rst
    );
\cmd_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(30),
      Q => p_1_in(30),
      R => rst
    );
\cmd_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(31),
      Q => p_1_in(31),
      R => rst
    );
\cmd_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(3),
      Q => p_1_in(3),
      R => rst
    );
\cmd_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(4),
      Q => p_1_in(4),
      R => rst
    );
\cmd_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(5),
      Q => p_1_in(5),
      R => rst
    );
\cmd_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(6),
      Q => p_1_in(6),
      R => rst
    );
\cmd_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(7),
      Q => p_1_in(7),
      R => rst
    );
\cmd_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(8),
      Q => p_1_in(8),
      R => rst
    );
\cmd_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => rd_data(9),
      Q => p_1_in(9),
      R => rst
    );
\crc16_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => D(0),
      Q => p_0_in(48),
      R => rst
    );
\crc16_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => D(10),
      Q => p_0_in(58),
      R => rst
    );
\crc16_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => D(11),
      Q => p_0_in(59),
      R => rst
    );
\crc16_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => D(12),
      Q => p_0_in(60),
      R => rst
    );
\crc16_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => D(13),
      Q => p_0_in(61),
      R => rst
    );
\crc16_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => D(14),
      Q => p_0_in(62),
      R => rst
    );
\crc16_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => D(15),
      Q => p_0_in(63),
      R => rst
    );
\crc16_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => D(1),
      Q => p_0_in(49),
      R => rst
    );
\crc16_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => D(2),
      Q => p_0_in(50),
      R => rst
    );
\crc16_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => D(3),
      Q => p_0_in(51),
      R => rst
    );
\crc16_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => D(4),
      Q => p_0_in(52),
      R => rst
    );
\crc16_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => D(5),
      Q => p_0_in(53),
      R => rst
    );
\crc16_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => D(6),
      Q => p_0_in(54),
      R => rst
    );
\crc16_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => D(7),
      Q => p_0_in(55),
      R => rst
    );
\crc16_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => D(8),
      Q => p_0_in(56),
      R => rst
    );
\crc16_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_addr,
      D => D(9),
      Q => p_0_in(57),
      R => rst
    );
fifo_rd_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \__1/i__n_0\,
      Q => fifo_rd_en,
      R => rst
    );
\seq_cnt[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001111100000000"
    )
        port map (
      I0 => state_0(0),
      I1 => state_0(1),
      I2 => state(1),
      I3 => state(0),
      I4 => \^optical_tx_valid\,
      I5 => state_0(2),
      O => seq_cnt
    );
\seq_cnt[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^tx_frame_count[0]\,
      O => \seq_cnt[3]_i_2_n_0\
    );
\seq_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[3]_i_1_n_7\,
      Q => \^tx_frame_count[0]\,
      R => rst
    );
\seq_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[11]_i_1_n_5\,
      Q => \^tx_frame_count[11]\(2),
      R => rst
    );
\seq_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[11]_i_1_n_4\,
      Q => \^tx_frame_count[11]\(3),
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
      S(3 downto 0) => \^tx_frame_count[11]\(3 downto 0)
    );
\seq_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[15]_i_1_n_7\,
      Q => \^tx_frame_count[15]\(0),
      R => rst
    );
\seq_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[15]_i_1_n_6\,
      Q => \^tx_frame_count[15]\(1),
      R => rst
    );
\seq_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[15]_i_1_n_5\,
      Q => \^tx_frame_count[15]\(2),
      R => rst
    );
\seq_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[15]_i_1_n_4\,
      Q => \^tx_frame_count[15]\(3),
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
      S(3 downto 0) => \^tx_frame_count[15]\(3 downto 0)
    );
\seq_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[19]_i_1_n_7\,
      Q => \^tx_frame_count[19]\(0),
      R => rst
    );
\seq_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[19]_i_1_n_6\,
      Q => \^tx_frame_count[19]\(1),
      R => rst
    );
\seq_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[19]_i_1_n_5\,
      Q => \^tx_frame_count[19]\(2),
      R => rst
    );
\seq_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[19]_i_1_n_4\,
      Q => \^tx_frame_count[19]\(3),
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
      S(3 downto 0) => \^tx_frame_count[19]\(3 downto 0)
    );
\seq_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[3]_i_1_n_6\,
      Q => \^s\(0),
      R => rst
    );
\seq_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[23]_i_1_n_7\,
      Q => \^tx_frame_count[23]\(0),
      R => rst
    );
\seq_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[23]_i_1_n_6\,
      Q => \^tx_frame_count[23]\(1),
      R => rst
    );
\seq_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[23]_i_1_n_5\,
      Q => \^tx_frame_count[23]\(2),
      R => rst
    );
\seq_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[23]_i_1_n_4\,
      Q => \^tx_frame_count[23]\(3),
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
      S(3 downto 0) => \^tx_frame_count[23]\(3 downto 0)
    );
\seq_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[27]_i_1_n_7\,
      Q => \^tx_frame_count[27]\(0),
      R => rst
    );
\seq_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[27]_i_1_n_6\,
      Q => \^tx_frame_count[27]\(1),
      R => rst
    );
\seq_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[27]_i_1_n_5\,
      Q => \^tx_frame_count[27]\(2),
      R => rst
    );
\seq_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[27]_i_1_n_4\,
      Q => \^tx_frame_count[27]\(3),
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
      S(3 downto 0) => \^tx_frame_count[27]\(3 downto 0)
    );
\seq_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[31]_i_2_n_7\,
      Q => \^tx_frame_count[31]\(0),
      R => rst
    );
\seq_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[31]_i_2_n_6\,
      Q => \^tx_frame_count[31]\(1),
      R => rst
    );
\seq_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[3]_i_1_n_5\,
      Q => \^s\(1),
      R => rst
    );
\seq_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[31]_i_2_n_5\,
      Q => \^tx_frame_count[31]\(2),
      R => rst
    );
\seq_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[31]_i_2_n_4\,
      Q => \^tx_frame_count[31]\(3),
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
      S(3 downto 0) => \^tx_frame_count[31]\(3 downto 0)
    );
\seq_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[3]_i_1_n_4\,
      Q => \^s\(2),
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
      S(3 downto 1) => \^s\(2 downto 0),
      S(0) => \seq_cnt[3]_i_2_n_0\
    );
\seq_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[7]_i_1_n_7\,
      Q => \^tx_frame_count[7]\(0),
      R => rst
    );
\seq_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[7]_i_1_n_6\,
      Q => \^tx_frame_count[7]\(1),
      R => rst
    );
\seq_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[7]_i_1_n_5\,
      Q => \^tx_frame_count[7]\(2),
      R => rst
    );
\seq_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[7]_i_1_n_4\,
      Q => \^tx_frame_count[7]\(3),
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
      S(3 downto 0) => \^tx_frame_count[7]\(3 downto 0)
    );
\seq_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[11]_i_1_n_7\,
      Q => \^tx_frame_count[11]\(0),
      R => rst
    );
\seq_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => seq_cnt,
      D => \seq_cnt_reg[11]_i_1_n_6\,
      Q => \^tx_frame_count[11]\(1),
      R => rst
    );
\tx_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[0]\,
      I1 => state_0(0),
      I2 => p_1_in(0),
      I3 => state_0(2),
      O => \tx_data[0]_i_1_n_0\
    );
\tx_data[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[11]\(2),
      I1 => state_0(0),
      I2 => p_1_in(10),
      I3 => state_0(2),
      O => \tx_data[10]_i_1_n_0\
    );
\tx_data[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[11]\(3),
      I1 => state_0(0),
      I2 => p_1_in(11),
      I3 => state_0(2),
      O => \tx_data[11]_i_1_n_0\
    );
\tx_data[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[15]\(0),
      I1 => state_0(0),
      I2 => p_1_in(12),
      I3 => state_0(2),
      O => \tx_data[12]_i_1_n_0\
    );
\tx_data[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[15]\(1),
      I1 => state_0(0),
      I2 => p_1_in(13),
      I3 => state_0(2),
      O => \tx_data[13]_i_1_n_0\
    );
\tx_data[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[15]\(2),
      I1 => state_0(0),
      I2 => p_1_in(14),
      I3 => state_0(2),
      O => \tx_data[14]_i_1_n_0\
    );
\tx_data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[15]\(3),
      I1 => state_0(0),
      I2 => p_1_in(15),
      I3 => state_0(2),
      O => \tx_data[15]_i_1_n_0\
    );
\tx_data[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[19]\(0),
      I1 => state_0(0),
      I2 => p_1_in(16),
      I3 => state_0(2),
      O => \tx_data[16]_i_1_n_0\
    );
\tx_data[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[19]\(1),
      I1 => state_0(0),
      I2 => p_1_in(17),
      I3 => state_0(2),
      O => \tx_data[17]_i_1_n_0\
    );
\tx_data[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[19]\(2),
      I1 => state_0(0),
      I2 => p_1_in(18),
      I3 => state_0(2),
      O => \tx_data[18]_i_1_n_0\
    );
\tx_data[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[19]\(3),
      I1 => state_0(0),
      I2 => p_1_in(19),
      I3 => state_0(2),
      O => \tx_data[19]_i_1_n_0\
    );
\tx_data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^s\(0),
      I1 => state_0(0),
      I2 => p_1_in(1),
      I3 => state_0(2),
      O => \tx_data[1]_i_1_n_0\
    );
\tx_data[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[23]\(0),
      I1 => state_0(0),
      I2 => p_1_in(20),
      I3 => state_0(2),
      O => \tx_data[20]_i_1_n_0\
    );
\tx_data[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[23]\(1),
      I1 => state_0(0),
      I2 => p_1_in(21),
      I3 => state_0(2),
      O => \tx_data[21]_i_1_n_0\
    );
\tx_data[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[23]\(2),
      I1 => state_0(0),
      I2 => p_1_in(22),
      I3 => state_0(2),
      O => \tx_data[22]_i_1_n_0\
    );
\tx_data[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[23]\(3),
      I1 => state_0(0),
      I2 => p_1_in(23),
      I3 => state_0(2),
      O => \tx_data[23]_i_1_n_0\
    );
\tx_data[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[27]\(0),
      I1 => state_0(0),
      I2 => p_1_in(24),
      I3 => state_0(2),
      O => \tx_data[24]_i_1_n_0\
    );
\tx_data[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[27]\(1),
      I1 => state_0(0),
      I2 => p_1_in(25),
      I3 => state_0(2),
      O => \tx_data[25]_i_1_n_0\
    );
\tx_data[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[27]\(2),
      I1 => state_0(0),
      I2 => p_1_in(26),
      I3 => state_0(2),
      O => \tx_data[26]_i_1_n_0\
    );
\tx_data[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[27]\(3),
      I1 => state_0(0),
      I2 => p_1_in(27),
      I3 => state_0(2),
      O => \tx_data[27]_i_1_n_0\
    );
\tx_data[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[31]\(0),
      I1 => state_0(0),
      I2 => p_1_in(28),
      I3 => state_0(2),
      O => \tx_data[28]_i_1_n_0\
    );
\tx_data[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[31]\(1),
      I1 => state_0(0),
      I2 => p_1_in(29),
      I3 => state_0(2),
      O => \tx_data[29]_i_1_n_0\
    );
\tx_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^s\(1),
      I1 => state_0(0),
      I2 => p_1_in(2),
      I3 => state_0(2),
      O => \tx_data[2]_i_1_n_0\
    );
\tx_data[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[31]\(2),
      I1 => state_0(0),
      I2 => p_1_in(30),
      I3 => state_0(2),
      O => \tx_data[30]_i_1_n_0\
    );
\tx_data[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[31]\(3),
      I1 => state_0(0),
      I2 => p_1_in(31),
      I3 => state_0(2),
      O => \tx_data[31]_i_1_n_0\
    );
\tx_data[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202F"
    )
        port map (
      I0 => p_1_in(32),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => state_0(1),
      O => \tx_data[32]_i_1_n_0\
    );
\tx_data[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_0(2),
      I1 => state_0(0),
      I2 => p_1_in(33),
      O => \tx_data[33]_i_1_n_0\
    );
\tx_data[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202F"
    )
        port map (
      I0 => p_1_in(34),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => state_0(1),
      O => \tx_data[34]_i_1_n_0\
    );
\tx_data[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_0(2),
      I1 => state_0(0),
      I2 => p_1_in(35),
      O => \tx_data[35]_i_1_n_0\
    );
\tx_data[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202F"
    )
        port map (
      I0 => p_1_in(36),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => state_0(1),
      O => \tx_data[36]_i_1_n_0\
    );
\tx_data[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_0(2),
      I1 => state_0(0),
      I2 => p_1_in(37),
      O => \tx_data[37]_i_1_n_0\
    );
\tx_data[38]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202F"
    )
        port map (
      I0 => p_1_in(38),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => state_0(1),
      O => \tx_data[38]_i_1_n_0\
    );
\tx_data[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_0(2),
      I1 => state_0(0),
      I2 => p_1_in(39),
      O => \tx_data[39]_i_1_n_0\
    );
\tx_data[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^s\(2),
      I1 => state_0(0),
      I2 => p_1_in(3),
      I3 => state_0(2),
      O => \tx_data[3]_i_1_n_0\
    );
\tx_data[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_0(2),
      I1 => state_0(0),
      I2 => p_1_in(40),
      O => \tx_data[40]_i_1_n_0\
    );
\tx_data[41]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202F"
    )
        port map (
      I0 => p_1_in(41),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => state_0(1),
      O => \tx_data[41]_i_1_n_0\
    );
\tx_data[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_0(2),
      I1 => state_0(0),
      I2 => p_1_in(42),
      O => \tx_data[42]_i_1_n_0\
    );
\tx_data[43]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202F"
    )
        port map (
      I0 => p_1_in(43),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => state_0(1),
      O => \tx_data[43]_i_1_n_0\
    );
\tx_data[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_0(2),
      I1 => state_0(0),
      I2 => p_1_in(44),
      O => \tx_data[44]_i_1_n_0\
    );
\tx_data[45]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202F"
    )
        port map (
      I0 => p_1_in(45),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => state_0(1),
      O => \tx_data[45]_i_1_n_0\
    );
\tx_data[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_0(2),
      I1 => state_0(0),
      I2 => p_1_in(46),
      O => \tx_data[46]_i_1_n_0\
    );
\tx_data[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202F"
    )
        port map (
      I0 => p_1_in(47),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => state_0(1),
      O => \tx_data[47]_i_1_n_0\
    );
\tx_data[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => p_1_in(48),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => p_0_in(48),
      I4 => state_0(1),
      O => \tx_data[48]_i_1_n_0\
    );
\tx_data[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0300B3B3"
    )
        port map (
      I0 => p_1_in(49),
      I1 => state_0(0),
      I2 => state_0(1),
      I3 => p_0_in(49),
      I4 => state_0(2),
      O => \tx_data[49]_i_1_n_0\
    );
\tx_data[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[7]\(0),
      I1 => state_0(0),
      I2 => p_1_in(4),
      I3 => state_0(2),
      O => \tx_data[4]_i_1_n_0\
    );
\tx_data[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => p_1_in(50),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => p_0_in(50),
      I4 => state_0(1),
      O => \tx_data[50]_i_1_n_0\
    );
\tx_data[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0300B3B3"
    )
        port map (
      I0 => p_1_in(51),
      I1 => state_0(0),
      I2 => state_0(1),
      I3 => p_0_in(51),
      I4 => state_0(2),
      O => \tx_data[51]_i_1_n_0\
    );
\tx_data[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => p_1_in(52),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => p_0_in(52),
      I4 => state_0(1),
      O => \tx_data[52]_i_1_n_0\
    );
\tx_data[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0300B3B3"
    )
        port map (
      I0 => p_1_in(53),
      I1 => state_0(0),
      I2 => state_0(1),
      I3 => p_0_in(53),
      I4 => state_0(2),
      O => \tx_data[53]_i_1_n_0\
    );
\tx_data[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => p_1_in(54),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => p_0_in(54),
      I4 => state_0(1),
      O => \tx_data[54]_i_1_n_0\
    );
\tx_data[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0300B3B3"
    )
        port map (
      I0 => p_1_in(55),
      I1 => state_0(0),
      I2 => state_0(1),
      I3 => p_0_in(55),
      I4 => state_0(2),
      O => \tx_data[55]_i_1_n_0\
    );
\tx_data[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0300B3B3"
    )
        port map (
      I0 => p_1_in(56),
      I1 => state_0(0),
      I2 => state_0(1),
      I3 => p_0_in(56),
      I4 => state_0(2),
      O => \tx_data[56]_i_1_n_0\
    );
\tx_data[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => p_1_in(57),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => p_0_in(57),
      I4 => state_0(1),
      O => \tx_data[57]_i_1_n_0\
    );
\tx_data[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0300B3B3"
    )
        port map (
      I0 => p_1_in(58),
      I1 => state_0(0),
      I2 => state_0(1),
      I3 => p_0_in(58),
      I4 => state_0(2),
      O => \tx_data[58]_i_1_n_0\
    );
\tx_data[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => p_1_in(59),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => p_0_in(59),
      I4 => state_0(1),
      O => \tx_data[59]_i_1_n_0\
    );
\tx_data[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[7]\(1),
      I1 => state_0(0),
      I2 => p_1_in(5),
      I3 => state_0(2),
      O => \tx_data[5]_i_1_n_0\
    );
\tx_data[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0300B3B3"
    )
        port map (
      I0 => p_1_in(60),
      I1 => state_0(0),
      I2 => state_0(1),
      I3 => p_0_in(60),
      I4 => state_0(2),
      O => \tx_data[60]_i_1_n_0\
    );
\tx_data[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => p_1_in(61),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => p_0_in(61),
      I4 => state_0(1),
      O => \tx_data[61]_i_1_n_0\
    );
\tx_data[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0300B3B3"
    )
        port map (
      I0 => p_1_in(62),
      I1 => state_0(0),
      I2 => state_0(1),
      I3 => p_0_in(62),
      I4 => state_0(2),
      O => \tx_data[62]_i_1_n_0\
    );
\tx_data[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000575700570000"
    )
        port map (
      I0 => \^optical_tx_valid\,
      I1 => state(0),
      I2 => state(1),
      I3 => state_0(0),
      I4 => state_0(2),
      I5 => state_0(1),
      O => \tx_data[63]_i_1_n_0\
    );
\tx_data[63]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => p_1_in(63),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => p_0_in(63),
      I4 => state_0(1),
      O => \tx_data[63]_i_2_n_0\
    );
\tx_data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[7]\(2),
      I1 => state_0(0),
      I2 => p_1_in(6),
      I3 => state_0(2),
      O => \tx_data[6]_i_1_n_0\
    );
\tx_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[7]\(3),
      I1 => state_0(0),
      I2 => p_1_in(7),
      I3 => state_0(2),
      O => \tx_data[7]_i_1_n_0\
    );
\tx_data[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[11]\(0),
      I1 => state_0(0),
      I2 => p_1_in(8),
      I3 => state_0(2),
      O => \tx_data[8]_i_1_n_0\
    );
\tx_data[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^tx_frame_count[11]\(1),
      I1 => state_0(0),
      I2 => p_1_in(9),
      I3 => state_0(2),
      O => \tx_data[9]_i_1_n_0\
    );
\tx_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[0]_i_1_n_0\,
      Q => optical_tx_data(0),
      R => rst
    );
\tx_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[10]_i_1_n_0\,
      Q => optical_tx_data(10),
      R => rst
    );
\tx_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[11]_i_1_n_0\,
      Q => optical_tx_data(11),
      R => rst
    );
\tx_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[12]_i_1_n_0\,
      Q => optical_tx_data(12),
      R => rst
    );
\tx_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[13]_i_1_n_0\,
      Q => optical_tx_data(13),
      R => rst
    );
\tx_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[14]_i_1_n_0\,
      Q => optical_tx_data(14),
      R => rst
    );
\tx_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[15]_i_1_n_0\,
      Q => optical_tx_data(15),
      R => rst
    );
\tx_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[16]_i_1_n_0\,
      Q => optical_tx_data(16),
      R => rst
    );
\tx_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[17]_i_1_n_0\,
      Q => optical_tx_data(17),
      R => rst
    );
\tx_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[18]_i_1_n_0\,
      Q => optical_tx_data(18),
      R => rst
    );
\tx_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[19]_i_1_n_0\,
      Q => optical_tx_data(19),
      R => rst
    );
\tx_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[1]_i_1_n_0\,
      Q => optical_tx_data(1),
      R => rst
    );
\tx_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[20]_i_1_n_0\,
      Q => optical_tx_data(20),
      R => rst
    );
\tx_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[21]_i_1_n_0\,
      Q => optical_tx_data(21),
      R => rst
    );
\tx_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[22]_i_1_n_0\,
      Q => optical_tx_data(22),
      R => rst
    );
\tx_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[23]_i_1_n_0\,
      Q => optical_tx_data(23),
      R => rst
    );
\tx_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[24]_i_1_n_0\,
      Q => optical_tx_data(24),
      R => rst
    );
\tx_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[25]_i_1_n_0\,
      Q => optical_tx_data(25),
      R => rst
    );
\tx_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[26]_i_1_n_0\,
      Q => optical_tx_data(26),
      R => rst
    );
\tx_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[27]_i_1_n_0\,
      Q => optical_tx_data(27),
      R => rst
    );
\tx_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[28]_i_1_n_0\,
      Q => optical_tx_data(28),
      R => rst
    );
\tx_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[29]_i_1_n_0\,
      Q => optical_tx_data(29),
      R => rst
    );
\tx_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[2]_i_1_n_0\,
      Q => optical_tx_data(2),
      R => rst
    );
\tx_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[30]_i_1_n_0\,
      Q => optical_tx_data(30),
      R => rst
    );
\tx_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[31]_i_1_n_0\,
      Q => optical_tx_data(31),
      R => rst
    );
\tx_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[32]_i_1_n_0\,
      Q => optical_tx_data(32),
      R => rst
    );
\tx_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[33]_i_1_n_0\,
      Q => optical_tx_data(33),
      R => rst
    );
\tx_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[34]_i_1_n_0\,
      Q => optical_tx_data(34),
      R => rst
    );
\tx_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[35]_i_1_n_0\,
      Q => optical_tx_data(35),
      R => rst
    );
\tx_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[36]_i_1_n_0\,
      Q => optical_tx_data(36),
      R => rst
    );
\tx_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[37]_i_1_n_0\,
      Q => optical_tx_data(37),
      R => rst
    );
\tx_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[38]_i_1_n_0\,
      Q => optical_tx_data(38),
      R => rst
    );
\tx_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[39]_i_1_n_0\,
      Q => optical_tx_data(39),
      R => rst
    );
\tx_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[3]_i_1_n_0\,
      Q => optical_tx_data(3),
      R => rst
    );
\tx_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[40]_i_1_n_0\,
      Q => optical_tx_data(40),
      R => rst
    );
\tx_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[41]_i_1_n_0\,
      Q => optical_tx_data(41),
      R => rst
    );
\tx_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[42]_i_1_n_0\,
      Q => optical_tx_data(42),
      R => rst
    );
\tx_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[43]_i_1_n_0\,
      Q => optical_tx_data(43),
      R => rst
    );
\tx_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[44]_i_1_n_0\,
      Q => optical_tx_data(44),
      R => rst
    );
\tx_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[45]_i_1_n_0\,
      Q => optical_tx_data(45),
      R => rst
    );
\tx_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[46]_i_1_n_0\,
      Q => optical_tx_data(46),
      R => rst
    );
\tx_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[47]_i_1_n_0\,
      Q => optical_tx_data(47),
      R => rst
    );
\tx_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[48]_i_1_n_0\,
      Q => optical_tx_data(48),
      R => rst
    );
\tx_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[49]_i_1_n_0\,
      Q => optical_tx_data(49),
      R => rst
    );
\tx_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[4]_i_1_n_0\,
      Q => optical_tx_data(4),
      R => rst
    );
\tx_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[50]_i_1_n_0\,
      Q => optical_tx_data(50),
      R => rst
    );
\tx_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[51]_i_1_n_0\,
      Q => optical_tx_data(51),
      R => rst
    );
\tx_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[52]_i_1_n_0\,
      Q => optical_tx_data(52),
      R => rst
    );
\tx_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[53]_i_1_n_0\,
      Q => optical_tx_data(53),
      R => rst
    );
\tx_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[54]_i_1_n_0\,
      Q => optical_tx_data(54),
      R => rst
    );
\tx_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[55]_i_1_n_0\,
      Q => optical_tx_data(55),
      R => rst
    );
\tx_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[56]_i_1_n_0\,
      Q => optical_tx_data(56),
      R => rst
    );
\tx_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[57]_i_1_n_0\,
      Q => optical_tx_data(57),
      R => rst
    );
\tx_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[58]_i_1_n_0\,
      Q => optical_tx_data(58),
      R => rst
    );
\tx_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[59]_i_1_n_0\,
      Q => optical_tx_data(59),
      R => rst
    );
\tx_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[5]_i_1_n_0\,
      Q => optical_tx_data(5),
      R => rst
    );
\tx_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[60]_i_1_n_0\,
      Q => optical_tx_data(60),
      R => rst
    );
\tx_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[61]_i_1_n_0\,
      Q => optical_tx_data(61),
      R => rst
    );
\tx_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[62]_i_1_n_0\,
      Q => optical_tx_data(62),
      R => rst
    );
\tx_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[63]_i_2_n_0\,
      Q => optical_tx_data(63),
      R => rst
    );
\tx_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[6]_i_1_n_0\,
      Q => optical_tx_data(6),
      R => rst
    );
\tx_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[7]_i_1_n_0\,
      Q => optical_tx_data(7),
      R => rst
    );
\tx_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[8]_i_1_n_0\,
      Q => optical_tx_data(8),
      R => rst
    );
\tx_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[63]_i_1_n_0\,
      D => \tx_data[9]_i_1_n_0\,
      Q => optical_tx_data(9),
      R => rst
    );
\tx_keep[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEE10A0"
    )
        port map (
      I0 => state_0(1),
      I1 => state_0(0),
      I2 => \state_reg[1]\,
      I3 => state_0(2),
      I4 => \^optical_tx_keep\(0),
      O => \tx_keep[7]_i_1_n_0\
    );
\tx_keep_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tx_keep[7]_i_1_n_0\,
      Q => \^optical_tx_keep\(0),
      R => rst
    );
tx_last_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4E1000"
    )
        port map (
      I0 => state_0(1),
      I1 => state_0(0),
      I2 => \state_reg[1]\,
      I3 => state_0(2),
      I4 => \^optical_tx_last\,
      O => tx_last_i_1_n_0
    );
tx_last_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tx_last_i_1_n_0,
      Q => \^optical_tx_last\,
      R => rst
    );
tx_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F1EA"
    )
        port map (
      I0 => state_0(1),
      I1 => state_0(0),
      I2 => \^optical_tx_valid\,
      I3 => state_0(2),
      O => tx_valid_i_1_n_0
    );
tx_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tx_valid_i_1_n_0,
      Q => \^optical_tx_valid\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtx_rx32_to_stream64 is
  port (
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    \seq_latched_reg[31]\ : out STD_LOGIC;
    prev_valid_reg_0 : out STD_LOGIC;
    rx_axis_tlast : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \seq_latched_reg[31]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in8_out_0 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \addr_latched_reg[31]\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \rx_frame_count_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    crc_ok_reg : out STD_LOGIC;
    \crc_ok1__24\ : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gtx_tx_valid_reg : in STD_LOGIC;
    p_0_in8_out : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC;
    \calc_crc16_return__79\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    gtx_tx_valid_reg_0 : in STD_LOGIC;
    \gtx_tx_data_reg[1]\ : in STD_LOGIC;
    \gtx_tx_data_reg[10]\ : in STD_LOGIC;
    \gtx_tx_data_reg[8]\ : in STD_LOGIC;
    \gtx_tx_data_reg[4]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtx_rx32_to_stream64;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtx_rx32_to_stream64 is
  signal \FSM_sequential_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \__2/i__n_0\ : STD_LOGIC;
  signal \_inferred__0/i__n_0\ : STD_LOGIC;
  signal \^addr_latched_reg[31]\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \beat_lo_word[31]_i_1_n_0\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[0]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[10]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[11]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[12]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[13]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[14]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[15]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[16]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[17]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[18]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[19]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[1]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[20]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[21]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[22]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[23]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[24]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[25]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[26]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[27]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[28]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[29]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[2]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[30]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[31]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[3]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[4]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[5]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[6]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[7]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[8]\ : STD_LOGIC;
  signal \beat_lo_word_reg_n_0_[9]\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[32]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[33]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[34]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[35]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[36]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[37]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[38]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[39]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[40]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[41]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[42]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[43]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[44]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[45]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[46]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[47]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[48]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[49]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[50]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[51]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[52]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[53]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[54]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[55]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[56]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[57]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[58]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[59]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[60]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[61]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[62]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[63]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tkeep\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_3_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_4_n_0 : STD_LOGIC;
  signal m_axis_tlast_reg_i_2_n_0 : STD_LOGIC;
  signal m_axis_tvalid5_out : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal \^p_0_in8_out_0\ : STD_LOGIC;
  signal prev_valid_i_1_n_0 : STD_LOGIC;
  signal \^prev_valid_reg_0\ : STD_LOGIC;
  signal \prev_word[31]_i_1_n_0\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[0]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[10]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[11]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[12]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[13]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[14]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[15]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[16]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[17]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[18]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[19]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[1]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[20]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[21]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[22]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[23]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[24]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[25]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[26]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[27]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[28]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[29]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[2]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[30]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[31]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[3]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[4]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[5]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[6]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[7]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[8]\ : STD_LOGIC;
  signal \prev_word_reg_n_0_[9]\ : STD_LOGIC;
  signal \^rx_axis_tlast\ : STD_LOGIC;
  signal \rx_frame_count[31]_i_4_n_0\ : STD_LOGIC;
  signal \rx_frame_count[31]_i_5_n_0\ : STD_LOGIC;
  signal \rx_frame_count[31]_i_6_n_0\ : STD_LOGIC;
  signal \rx_frame_count[31]_i_7_n_0\ : STD_LOGIC;
  signal \^seq_latched_reg[31]\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state : signal is "yes";
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \state[0]_i_5_n_0\ : STD_LOGIC;
  signal \state[0]_i_6_n_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ST_SEARCH:000,ST_B1_LO:001,ST_B1_HI:010,ST_B2_LO:011,ST_B2_HI:100";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ST_SEARCH:000,ST_B1_LO:001,ST_B1_HI:010,ST_B2_LO:011,ST_B2_HI:100";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "ST_SEARCH:000,ST_B1_LO:001,ST_B1_HI:010,ST_B2_LO:011,ST_B2_HI:100";
  attribute KEEP of \FSM_sequential_state_reg[2]\ : label is "yes";
begin
  \addr_latched_reg[31]\(63 downto 0) <= \^addr_latched_reg[31]\(63 downto 0);
  m_axis_tkeep(0) <= \^m_axis_tkeep\(0);
  p_0_in8_out_0 <= \^p_0_in8_out_0\;
  prev_valid_reg_0 <= \^prev_valid_reg_0\;
  rx_axis_tlast <= \^rx_axis_tlast\;
  \seq_latched_reg[31]\ <= \^seq_latched_reg[31]\;
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7D7D702020200"
    )
        port map (
      I0 => gtx_tx_valid_reg_0,
      I1 => state(0),
      I2 => state(2),
      I3 => p_0_in8_out,
      I4 => state(1),
      I5 => state(0),
      O => \FSM_sequential_state[0]_i_1__0_n_0\
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7DDDF02020808"
    )
        port map (
      I0 => gtx_tx_valid_reg_0,
      I1 => state(0),
      I2 => state(2),
      I3 => p_0_in8_out,
      I4 => state(1),
      I5 => state(1),
      O => \FSM_sequential_state[1]_i_1__0_n_0\
    );
\FSM_sequential_state[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFDD5D708080000"
    )
        port map (
      I0 => gtx_tx_valid_reg_0,
      I1 => state(0),
      I2 => state(2),
      I3 => p_0_in8_out,
      I4 => state(1),
      I5 => state(2),
      O => \FSM_sequential_state[2]_i_1__0_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1__0_n_0\,
      Q => state(0),
      R => rst
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1__0_n_0\,
      Q => state(1),
      R => rst
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1__0_n_0\,
      Q => state(2),
      R => rst
    );
\__2/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \gtx_tx_data_reg[8]\,
      I3 => \gtx_tx_data_reg[4]\,
      I4 => state(2),
      O => \__2/i__n_0\
    );
\_inferred__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => p_0_in8_out,
      I1 => state(2),
      I2 => state(1),
      O => \_inferred__0/i__n_0\
    );
\addr_latched[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \state_reg[1]\,
      I1 => \state_reg[0]\,
      I2 => \^seq_latched_reg[31]\,
      I3 => \^rx_axis_tlast\,
      I4 => \^m_axis_tkeep\(0),
      O => E(0)
    );
\beat_lo_word[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^seq_latched_reg[31]\,
      I1 => gtx_tx_valid_reg,
      I2 => state(2),
      I3 => state(0),
      O => \beat_lo_word[31]_i_1_n_0\
    );
\beat_lo_word_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(0),
      Q => \beat_lo_word_reg_n_0_[0]\,
      R => rst
    );
\beat_lo_word_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(10),
      Q => \beat_lo_word_reg_n_0_[10]\,
      R => rst
    );
\beat_lo_word_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(11),
      Q => \beat_lo_word_reg_n_0_[11]\,
      R => rst
    );
\beat_lo_word_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(12),
      Q => \beat_lo_word_reg_n_0_[12]\,
      R => rst
    );
\beat_lo_word_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(13),
      Q => \beat_lo_word_reg_n_0_[13]\,
      R => rst
    );
\beat_lo_word_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(14),
      Q => \beat_lo_word_reg_n_0_[14]\,
      R => rst
    );
\beat_lo_word_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(15),
      Q => \beat_lo_word_reg_n_0_[15]\,
      R => rst
    );
\beat_lo_word_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(16),
      Q => \beat_lo_word_reg_n_0_[16]\,
      R => rst
    );
\beat_lo_word_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(17),
      Q => \beat_lo_word_reg_n_0_[17]\,
      R => rst
    );
\beat_lo_word_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(18),
      Q => \beat_lo_word_reg_n_0_[18]\,
      R => rst
    );
\beat_lo_word_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(19),
      Q => \beat_lo_word_reg_n_0_[19]\,
      R => rst
    );
\beat_lo_word_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(1),
      Q => \beat_lo_word_reg_n_0_[1]\,
      R => rst
    );
\beat_lo_word_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(20),
      Q => \beat_lo_word_reg_n_0_[20]\,
      R => rst
    );
\beat_lo_word_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(21),
      Q => \beat_lo_word_reg_n_0_[21]\,
      R => rst
    );
\beat_lo_word_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(22),
      Q => \beat_lo_word_reg_n_0_[22]\,
      R => rst
    );
\beat_lo_word_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(23),
      Q => \beat_lo_word_reg_n_0_[23]\,
      R => rst
    );
\beat_lo_word_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(24),
      Q => \beat_lo_word_reg_n_0_[24]\,
      R => rst
    );
\beat_lo_word_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(25),
      Q => \beat_lo_word_reg_n_0_[25]\,
      R => rst
    );
\beat_lo_word_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(26),
      Q => \beat_lo_word_reg_n_0_[26]\,
      R => rst
    );
\beat_lo_word_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(27),
      Q => \beat_lo_word_reg_n_0_[27]\,
      R => rst
    );
\beat_lo_word_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(28),
      Q => \beat_lo_word_reg_n_0_[28]\,
      R => rst
    );
\beat_lo_word_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(29),
      Q => \beat_lo_word_reg_n_0_[29]\,
      R => rst
    );
\beat_lo_word_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(2),
      Q => \beat_lo_word_reg_n_0_[2]\,
      R => rst
    );
\beat_lo_word_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(30),
      Q => \beat_lo_word_reg_n_0_[30]\,
      R => rst
    );
\beat_lo_word_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(31),
      Q => \beat_lo_word_reg_n_0_[31]\,
      R => rst
    );
\beat_lo_word_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(3),
      Q => \beat_lo_word_reg_n_0_[3]\,
      R => rst
    );
\beat_lo_word_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(4),
      Q => \beat_lo_word_reg_n_0_[4]\,
      R => rst
    );
\beat_lo_word_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(5),
      Q => \beat_lo_word_reg_n_0_[5]\,
      R => rst
    );
\beat_lo_word_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(6),
      Q => \beat_lo_word_reg_n_0_[6]\,
      R => rst
    );
\beat_lo_word_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(7),
      Q => \beat_lo_word_reg_n_0_[7]\,
      R => rst
    );
\beat_lo_word_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(8),
      Q => \beat_lo_word_reg_n_0_[8]\,
      R => rst
    );
\beat_lo_word_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \beat_lo_word[31]_i_1_n_0\,
      D => Q(9),
      Q => \beat_lo_word_reg_n_0_[9]\,
      R => rst
    );
\crc_ok0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^addr_latched_reg[31]\(60),
      I1 => \calc_crc16_return__79\(12),
      I2 => \calc_crc16_return__79\(14),
      I3 => \^addr_latched_reg[31]\(62),
      I4 => \calc_crc16_return__79\(13),
      I5 => \^addr_latched_reg[31]\(61),
      O => \rx_frame_count_reg[0]\(0)
    );
crc_ok0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^addr_latched_reg[31]\(57),
      I1 => \calc_crc16_return__79\(9),
      I2 => \calc_crc16_return__79\(11),
      I3 => \^addr_latched_reg[31]\(59),
      I4 => \calc_crc16_return__79\(10),
      I5 => \^addr_latched_reg[31]\(58),
      O => S(3)
    );
crc_ok0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^addr_latched_reg[31]\(54),
      I1 => \calc_crc16_return__79\(6),
      I2 => \calc_crc16_return__79\(8),
      I3 => \^addr_latched_reg[31]\(56),
      I4 => \calc_crc16_return__79\(7),
      I5 => \^addr_latched_reg[31]\(55),
      O => S(2)
    );
crc_ok0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^addr_latched_reg[31]\(51),
      I1 => \calc_crc16_return__79\(3),
      I2 => \calc_crc16_return__79\(5),
      I3 => \^addr_latched_reg[31]\(53),
      I4 => \calc_crc16_return__79\(4),
      I5 => \^addr_latched_reg[31]\(52),
      O => S(1)
    );
crc_ok0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^addr_latched_reg[31]\(48),
      I1 => \calc_crc16_return__79\(0),
      I2 => \calc_crc16_return__79\(2),
      I3 => \^addr_latched_reg[31]\(50),
      I4 => \calc_crc16_return__79\(1),
      I5 => \^addr_latched_reg[31]\(49),
      O => S(0)
    );
crc_ok_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FD000000FDF0000"
    )
        port map (
      I0 => \^m_axis_tkeep\(0),
      I1 => \^rx_axis_tlast\,
      I2 => \state_reg[0]\,
      I3 => \state_reg[1]\,
      I4 => \^seq_latched_reg[31]\,
      I5 => \^p_0_in8_out_0\,
      O => crc_ok_reg
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[0]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[0]\,
      I3 => state(1),
      O => \m_axis_tdata[0]_i_1_n_0\
    );
\m_axis_tdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[10]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[10]\,
      I3 => state(1),
      O => \m_axis_tdata[10]_i_1_n_0\
    );
\m_axis_tdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[11]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[11]\,
      I3 => state(1),
      O => \m_axis_tdata[11]_i_1_n_0\
    );
\m_axis_tdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[12]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[12]\,
      I3 => state(1),
      O => \m_axis_tdata[12]_i_1_n_0\
    );
\m_axis_tdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[13]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[13]\,
      I3 => state(1),
      O => \m_axis_tdata[13]_i_1_n_0\
    );
\m_axis_tdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[14]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[14]\,
      I3 => state(1),
      O => \m_axis_tdata[14]_i_1_n_0\
    );
\m_axis_tdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[15]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[15]\,
      I3 => state(1),
      O => \m_axis_tdata[15]_i_1_n_0\
    );
\m_axis_tdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[16]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[16]\,
      I3 => state(1),
      O => \m_axis_tdata[16]_i_1_n_0\
    );
\m_axis_tdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[17]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[17]\,
      I3 => state(1),
      O => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[18]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[18]\,
      I3 => state(1),
      O => \m_axis_tdata[18]_i_1_n_0\
    );
\m_axis_tdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[19]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[19]\,
      I3 => state(1),
      O => \m_axis_tdata[19]_i_1_n_0\
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[1]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[1]\,
      I3 => state(1),
      O => \m_axis_tdata[1]_i_1_n_0\
    );
\m_axis_tdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[20]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[20]\,
      I3 => state(1),
      O => \m_axis_tdata[20]_i_1_n_0\
    );
\m_axis_tdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[21]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[21]\,
      I3 => state(1),
      O => \m_axis_tdata[21]_i_1_n_0\
    );
\m_axis_tdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[22]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[22]\,
      I3 => state(1),
      O => \m_axis_tdata[22]_i_1_n_0\
    );
\m_axis_tdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[23]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[23]\,
      I3 => state(1),
      O => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[24]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[24]\,
      I3 => state(1),
      O => \m_axis_tdata[24]_i_1_n_0\
    );
\m_axis_tdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[25]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[25]\,
      I3 => state(1),
      O => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[26]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[26]\,
      I3 => state(1),
      O => \m_axis_tdata[26]_i_1_n_0\
    );
\m_axis_tdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[27]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[27]\,
      I3 => state(1),
      O => \m_axis_tdata[27]_i_1_n_0\
    );
\m_axis_tdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[28]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[28]\,
      I3 => state(1),
      O => \m_axis_tdata[28]_i_1_n_0\
    );
\m_axis_tdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[29]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[29]\,
      I3 => state(1),
      O => \m_axis_tdata[29]_i_1_n_0\
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[2]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[2]\,
      I3 => state(1),
      O => \m_axis_tdata[2]_i_1_n_0\
    );
\m_axis_tdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[30]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[30]\,
      I3 => state(1),
      O => \m_axis_tdata[30]_i_1_n_0\
    );
\m_axis_tdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[31]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[31]\,
      I3 => state(1),
      O => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(0),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[32]_i_1_n_0\
    );
\m_axis_tdata[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(1),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[33]_i_1_n_0\
    );
\m_axis_tdata[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(2),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[34]_i_1_n_0\
    );
\m_axis_tdata[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(3),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[35]_i_1_n_0\
    );
\m_axis_tdata[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(4),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[36]_i_1_n_0\
    );
\m_axis_tdata[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(5),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[37]_i_1_n_0\
    );
\m_axis_tdata[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(6),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[38]_i_1_n_0\
    );
\m_axis_tdata[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(7),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[39]_i_1_n_0\
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[3]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[3]\,
      I3 => state(1),
      O => \m_axis_tdata[3]_i_1_n_0\
    );
\m_axis_tdata[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(8),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[40]_i_1_n_0\
    );
\m_axis_tdata[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(9),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[41]_i_1_n_0\
    );
\m_axis_tdata[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(10),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[42]_i_1_n_0\
    );
\m_axis_tdata[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(11),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[43]_i_1_n_0\
    );
\m_axis_tdata[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(12),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[44]_i_1_n_0\
    );
\m_axis_tdata[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(13),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[45]_i_1_n_0\
    );
\m_axis_tdata[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(14),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[46]_i_1_n_0\
    );
\m_axis_tdata[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(15),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[47]_i_1_n_0\
    );
\m_axis_tdata[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(16),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[48]_i_1_n_0\
    );
\m_axis_tdata[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(17),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[49]_i_1_n_0\
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[4]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[4]\,
      I3 => state(1),
      O => \m_axis_tdata[4]_i_1_n_0\
    );
\m_axis_tdata[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(18),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[50]_i_1_n_0\
    );
\m_axis_tdata[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(19),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[51]_i_1_n_0\
    );
\m_axis_tdata[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(20),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[52]_i_1_n_0\
    );
\m_axis_tdata[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(21),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[53]_i_1_n_0\
    );
\m_axis_tdata[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(22),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[54]_i_1_n_0\
    );
\m_axis_tdata[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(23),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[55]_i_1_n_0\
    );
\m_axis_tdata[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(24),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[56]_i_1_n_0\
    );
\m_axis_tdata[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(25),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[57]_i_1_n_0\
    );
\m_axis_tdata[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(26),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[58]_i_1_n_0\
    );
\m_axis_tdata[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(27),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[59]_i_1_n_0\
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[5]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[5]\,
      I3 => state(1),
      O => \m_axis_tdata[5]_i_1_n_0\
    );
\m_axis_tdata[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(28),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[60]_i_1_n_0\
    );
\m_axis_tdata[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(29),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[61]_i_1_n_0\
    );
\m_axis_tdata[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(30),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[62]_i_1_n_0\
    );
\m_axis_tdata[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000444440"
    )
        port map (
      I0 => \^seq_latched_reg[31]\,
      I1 => gtx_tx_valid_reg,
      I2 => p_0_in8_out,
      I3 => state(2),
      I4 => state(1),
      I5 => state(0),
      O => m_axis_tvalid5_out
    );
\m_axis_tdata[63]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(31),
      I1 => state(1),
      I2 => state(2),
      O => \m_axis_tdata[63]_i_2_n_0\
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[6]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[6]\,
      I3 => state(1),
      O => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[7]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[7]\,
      I3 => state(1),
      O => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[8]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[8]\,
      I3 => state(1),
      O => \m_axis_tdata[8]_i_1_n_0\
    );
\m_axis_tdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E2"
    )
        port map (
      I0 => \prev_word_reg_n_0_[9]\,
      I1 => state(2),
      I2 => \beat_lo_word_reg_n_0_[9]\,
      I3 => state(1),
      O => \m_axis_tdata[9]_i_1_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[0]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(0),
      R => rst
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[10]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(10),
      R => rst
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[11]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(11),
      R => rst
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[12]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(12),
      R => rst
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[13]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(13),
      R => rst
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[14]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(14),
      R => rst
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[15]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(15),
      R => rst
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[16]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(16),
      R => rst
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[17]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(17),
      R => rst
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[18]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(18),
      R => rst
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[19]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(19),
      R => rst
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[1]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(1),
      R => rst
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[20]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(20),
      R => rst
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[21]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(21),
      R => rst
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[22]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(22),
      R => rst
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[23]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(23),
      R => rst
    );
\m_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[24]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(24),
      R => rst
    );
\m_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[25]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(25),
      R => rst
    );
\m_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[26]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(26),
      R => rst
    );
\m_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[27]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(27),
      R => rst
    );
\m_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[28]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(28),
      R => rst
    );
\m_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[29]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(29),
      R => rst
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[2]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(2),
      R => rst
    );
\m_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[30]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(30),
      R => rst
    );
\m_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[31]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(31),
      R => rst
    );
\m_axis_tdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[32]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(32),
      R => rst
    );
\m_axis_tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[33]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(33),
      R => rst
    );
\m_axis_tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[34]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(34),
      R => rst
    );
\m_axis_tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[35]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(35),
      R => rst
    );
\m_axis_tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[36]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(36),
      R => rst
    );
\m_axis_tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[37]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(37),
      R => rst
    );
\m_axis_tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[38]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(38),
      R => rst
    );
\m_axis_tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[39]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(39),
      R => rst
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[3]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(3),
      R => rst
    );
\m_axis_tdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[40]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(40),
      R => rst
    );
\m_axis_tdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[41]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(41),
      R => rst
    );
\m_axis_tdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[42]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(42),
      R => rst
    );
\m_axis_tdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[43]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(43),
      R => rst
    );
\m_axis_tdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[44]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(44),
      R => rst
    );
\m_axis_tdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[45]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(45),
      R => rst
    );
\m_axis_tdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[46]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(46),
      R => rst
    );
\m_axis_tdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[47]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(47),
      R => rst
    );
\m_axis_tdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[48]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(48),
      R => rst
    );
\m_axis_tdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[49]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(49),
      R => rst
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[4]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(4),
      R => rst
    );
\m_axis_tdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[50]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(50),
      R => rst
    );
\m_axis_tdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[51]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(51),
      R => rst
    );
\m_axis_tdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[52]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(52),
      R => rst
    );
\m_axis_tdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[53]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(53),
      R => rst
    );
\m_axis_tdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[54]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(54),
      R => rst
    );
\m_axis_tdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[55]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(55),
      R => rst
    );
\m_axis_tdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[56]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(56),
      R => rst
    );
\m_axis_tdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[57]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(57),
      R => rst
    );
\m_axis_tdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[58]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(58),
      R => rst
    );
\m_axis_tdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[59]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(59),
      R => rst
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[5]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(5),
      R => rst
    );
\m_axis_tdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[60]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(60),
      R => rst
    );
\m_axis_tdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[61]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(61),
      R => rst
    );
\m_axis_tdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[62]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(62),
      R => rst
    );
\m_axis_tdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[63]_i_2_n_0\,
      Q => \^addr_latched_reg[31]\(63),
      R => rst
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[6]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(6),
      R => rst
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[7]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(7),
      R => rst
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[8]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(8),
      R => rst
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \m_axis_tdata[9]_i_1_n_0\,
      Q => \^addr_latched_reg[31]\(9),
      R => rst
    );
\m_axis_tkeep_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid5_out,
      D => \_inferred__0/i__n_0\,
      Q => \^m_axis_tkeep\(0),
      R => rst
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BF0080"
    )
        port map (
      I0 => \__2/i__n_0\,
      I1 => m_axis_tlast_reg_i_2_n_0,
      I2 => gtx_tx_valid_reg,
      I3 => \^seq_latched_reg[31]\,
      I4 => \^rx_axis_tlast\,
      O => m_axis_tlast_i_1_n_0
    );
m_axis_tlast_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFFFF10"
    )
        port map (
      I0 => \gtx_tx_data_reg[1]\,
      I1 => \gtx_tx_data_reg[10]\,
      I2 => \^prev_valid_reg_0\,
      I3 => \^seq_latched_reg[31]\,
      I4 => state(2),
      I5 => state(1),
      O => m_axis_tlast_i_3_n_0
    );
m_axis_tlast_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^seq_latched_reg[31]\,
      I1 => state(2),
      O => m_axis_tlast_i_4_n_0
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_axis_tlast_i_1_n_0,
      Q => \^rx_axis_tlast\,
      R => rst
    );
m_axis_tlast_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => m_axis_tlast_i_3_n_0,
      I1 => m_axis_tlast_i_4_n_0,
      O => m_axis_tlast_reg_i_2_n_0,
      S => state(0)
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005540000"
    )
        port map (
      I0 => state(0),
      I1 => p_0_in8_out,
      I2 => state(2),
      I3 => state(1),
      I4 => gtx_tx_valid_reg,
      I5 => \^seq_latched_reg[31]\,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_axis_tvalid_i_1_n_0,
      Q => \^seq_latched_reg[31]\,
      R => rst
    );
prev_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF1F00000010"
    )
        port map (
      I0 => state(2),
      I1 => p_0_in8_out,
      I2 => gtx_tx_valid_reg_0,
      I3 => state(1),
      I4 => state(0),
      I5 => \^prev_valid_reg_0\,
      O => prev_valid_i_1_n_0
    );
prev_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => prev_valid_i_1_n_0,
      Q => \^prev_valid_reg_0\,
      R => rst
    );
\prev_word[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \^seq_latched_reg[31]\,
      I1 => gtx_tx_valid_reg,
      I2 => state(1),
      I3 => p_0_in8_out,
      I4 => state(2),
      I5 => state(0),
      O => \prev_word[31]_i_1_n_0\
    );
\prev_word_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(0),
      Q => \prev_word_reg_n_0_[0]\,
      R => rst
    );
\prev_word_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(10),
      Q => \prev_word_reg_n_0_[10]\,
      R => rst
    );
\prev_word_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(11),
      Q => \prev_word_reg_n_0_[11]\,
      R => rst
    );
\prev_word_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(12),
      Q => \prev_word_reg_n_0_[12]\,
      R => rst
    );
\prev_word_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(13),
      Q => \prev_word_reg_n_0_[13]\,
      R => rst
    );
\prev_word_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(14),
      Q => \prev_word_reg_n_0_[14]\,
      R => rst
    );
\prev_word_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(15),
      Q => \prev_word_reg_n_0_[15]\,
      R => rst
    );
\prev_word_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(16),
      Q => \prev_word_reg_n_0_[16]\,
      R => rst
    );
\prev_word_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(17),
      Q => \prev_word_reg_n_0_[17]\,
      R => rst
    );
\prev_word_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(18),
      Q => \prev_word_reg_n_0_[18]\,
      R => rst
    );
\prev_word_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(19),
      Q => \prev_word_reg_n_0_[19]\,
      R => rst
    );
\prev_word_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(1),
      Q => \prev_word_reg_n_0_[1]\,
      R => rst
    );
\prev_word_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(20),
      Q => \prev_word_reg_n_0_[20]\,
      R => rst
    );
\prev_word_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(21),
      Q => \prev_word_reg_n_0_[21]\,
      R => rst
    );
\prev_word_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(22),
      Q => \prev_word_reg_n_0_[22]\,
      R => rst
    );
\prev_word_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(23),
      Q => \prev_word_reg_n_0_[23]\,
      R => rst
    );
\prev_word_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(24),
      Q => \prev_word_reg_n_0_[24]\,
      R => rst
    );
\prev_word_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(25),
      Q => \prev_word_reg_n_0_[25]\,
      R => rst
    );
\prev_word_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(26),
      Q => \prev_word_reg_n_0_[26]\,
      R => rst
    );
\prev_word_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(27),
      Q => \prev_word_reg_n_0_[27]\,
      R => rst
    );
\prev_word_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(28),
      Q => \prev_word_reg_n_0_[28]\,
      R => rst
    );
\prev_word_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(29),
      Q => \prev_word_reg_n_0_[29]\,
      R => rst
    );
\prev_word_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(2),
      Q => \prev_word_reg_n_0_[2]\,
      R => rst
    );
\prev_word_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(30),
      Q => \prev_word_reg_n_0_[30]\,
      R => rst
    );
\prev_word_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(31),
      Q => \prev_word_reg_n_0_[31]\,
      R => rst
    );
\prev_word_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(3),
      Q => \prev_word_reg_n_0_[3]\,
      R => rst
    );
\prev_word_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(4),
      Q => \prev_word_reg_n_0_[4]\,
      R => rst
    );
\prev_word_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(5),
      Q => \prev_word_reg_n_0_[5]\,
      R => rst
    );
\prev_word_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(6),
      Q => \prev_word_reg_n_0_[6]\,
      R => rst
    );
\prev_word_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(7),
      Q => \prev_word_reg_n_0_[7]\,
      R => rst
    );
\prev_word_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(8),
      Q => \prev_word_reg_n_0_[8]\,
      R => rst
    );
\prev_word_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \prev_word[31]_i_1_n_0\,
      D => Q(9),
      Q => \prev_word_reg_n_0_[9]\,
      R => rst
    );
\rx_frame_count[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^addr_latched_reg[31]\(39),
      I1 => \^addr_latched_reg[31]\(46),
      I2 => \rx_frame_count[31]_i_4_n_0\,
      I3 => \rx_frame_count[31]_i_5_n_0\,
      I4 => \rx_frame_count[31]_i_6_n_0\,
      I5 => \rx_frame_count[31]_i_7_n_0\,
      O => \crc_ok1__24\
    );
\rx_frame_count[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^addr_latched_reg[31]\(36),
      I1 => \^addr_latched_reg[31]\(41),
      I2 => \^addr_latched_reg[31]\(34),
      I3 => \^addr_latched_reg[31]\(43),
      O => \rx_frame_count[31]_i_4_n_0\
    );
\rx_frame_count[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^addr_latched_reg[31]\(32),
      I1 => \^addr_latched_reg[31]\(45),
      I2 => \^m_axis_tkeep\(0),
      I3 => \^rx_axis_tlast\,
      O => \rx_frame_count[31]_i_5_n_0\
    );
\rx_frame_count[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^addr_latched_reg[31]\(44),
      I1 => \^addr_latched_reg[31]\(33),
      I2 => \^addr_latched_reg[31]\(42),
      I3 => \^addr_latched_reg[31]\(35),
      O => \rx_frame_count[31]_i_6_n_0\
    );
\rx_frame_count[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \^addr_latched_reg[31]\(40),
      I1 => \^addr_latched_reg[31]\(37),
      I2 => \^addr_latched_reg[31]\(38),
      I3 => \^addr_latched_reg[31]\(47),
      O => \rx_frame_count[31]_i_7_n_0\
    );
\seq_latched[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^p_0_in8_out_0\,
      I1 => \^seq_latched_reg[31]\,
      I2 => \state_reg[0]\,
      I3 => \state_reg[1]\,
      O => \seq_latched_reg[31]_0\(0)
    );
\state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^addr_latched_reg[31]\(54),
      I1 => \state[0]_i_3_n_0\,
      I2 => \state[0]_i_4_n_0\,
      I3 => \state[0]_i_5_n_0\,
      I4 => \state[0]_i_6_n_0\,
      O => \^p_0_in8_out_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^addr_latched_reg[31]\(53),
      I1 => \^addr_latched_reg[31]\(55),
      I2 => \^addr_latched_reg[31]\(51),
      I3 => \^addr_latched_reg[31]\(56),
      O => \state[0]_i_3_n_0\
    );
\state[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFFFF"
    )
        port map (
      I0 => \^addr_latched_reg[31]\(49),
      I1 => \^addr_latched_reg[31]\(58),
      I2 => \^m_axis_tkeep\(0),
      I3 => \^rx_axis_tlast\,
      I4 => \^addr_latched_reg[31]\(60),
      O => \state[0]_i_4_n_0\
    );
\state[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^addr_latched_reg[31]\(61),
      I1 => \^addr_latched_reg[31]\(63),
      I2 => \^addr_latched_reg[31]\(59),
      I3 => \^addr_latched_reg[31]\(48),
      O => \state[0]_i_5_n_0\
    );
\state[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \^addr_latched_reg[31]\(57),
      I1 => \^addr_latched_reg[31]\(50),
      I2 => \^addr_latched_reg[31]\(62),
      I3 => \^addr_latched_reg[31]\(52),
      O => \state[0]_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loopback_checker is
  port (
    match_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    crc_error_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    format_error_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    last_rx_seq : out STD_LOGIC_VECTOR ( 31 downto 0 );
    last_rx_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    last_rx_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rst : in STD_LOGIC;
    format_ok_reg : in STD_LOGIC;
    clk : in STD_LOGIC;
    format_ok_reg_0 : in STD_LOGIC;
    cmd_valid_reg : in STD_LOGIC;
    cmd_valid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \rx_addr_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \rx_cmd_data_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loopback_checker;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loopback_checker is
  signal \^crc_error_count\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \crc_error_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \crc_error_count_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \crc_error_count_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \crc_error_count_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \crc_error_count_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \crc_error_count_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \crc_error_count_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \crc_error_count_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \crc_error_count_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \crc_error_count_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \crc_error_count_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \crc_error_count_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \crc_error_count_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \crc_error_count_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \crc_error_count_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \crc_error_count_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \crc_error_count_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \crc_error_count_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \crc_error_count_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \crc_error_count_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \crc_error_count_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \crc_error_count_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \crc_error_count_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \crc_error_count_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \crc_error_count_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \crc_error_count_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \crc_error_count_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \crc_error_count_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \crc_error_count_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \crc_error_count_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \crc_error_count_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \crc_error_count_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \crc_error_count_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \crc_error_count_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \crc_error_count_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \crc_error_count_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \crc_error_count_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \crc_error_count_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \crc_error_count_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \crc_error_count_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \crc_error_count_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \crc_error_count_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \crc_error_count_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \crc_error_count_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \crc_error_count_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \crc_error_count_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \crc_error_count_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \crc_error_count_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \crc_error_count_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \crc_error_count_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \crc_error_count_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \crc_error_count_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \crc_error_count_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \crc_error_count_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \crc_error_count_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \crc_error_count_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \crc_error_count_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \crc_error_count_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \crc_error_count_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \crc_error_count_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \crc_error_count_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \crc_error_count_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \crc_error_count_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \crc_error_count_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^format_error_count\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \format_error_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \format_error_count_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \format_error_count_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \format_error_count_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \format_error_count_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \format_error_count_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \format_error_count_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \format_error_count_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \format_error_count_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \format_error_count_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \format_error_count_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \format_error_count_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \format_error_count_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \format_error_count_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \format_error_count_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \format_error_count_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \format_error_count_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \format_error_count_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \format_error_count_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \format_error_count_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \format_error_count_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \format_error_count_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \format_error_count_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \format_error_count_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \format_error_count_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \format_error_count_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \format_error_count_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \format_error_count_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \format_error_count_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \format_error_count_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \format_error_count_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \format_error_count_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \format_error_count_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \format_error_count_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \format_error_count_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \format_error_count_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \format_error_count_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \format_error_count_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \format_error_count_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \format_error_count_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \format_error_count_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \format_error_count_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \format_error_count_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \format_error_count_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \format_error_count_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \format_error_count_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \format_error_count_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \format_error_count_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \format_error_count_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \format_error_count_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \format_error_count_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \format_error_count_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \format_error_count_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \format_error_count_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \format_error_count_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \format_error_count_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \format_error_count_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \format_error_count_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \format_error_count_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \format_error_count_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \format_error_count_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \format_error_count_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \format_error_count_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \format_error_count_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^match_count\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \match_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \match_count_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \match_count_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \match_count_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \match_count_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \match_count_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \match_count_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \match_count_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \match_count_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \match_count_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \match_count_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \match_count_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \match_count_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \match_count_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \match_count_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \match_count_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \match_count_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \match_count_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \match_count_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \match_count_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \match_count_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \match_count_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \match_count_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \match_count_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \match_count_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \match_count_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \match_count_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \match_count_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \match_count_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \match_count_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \match_count_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \match_count_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \match_count_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \match_count_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \match_count_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \match_count_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \match_count_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \match_count_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \match_count_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \match_count_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \match_count_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \match_count_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \match_count_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \match_count_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \match_count_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \match_count_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \match_count_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \match_count_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \match_count_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \match_count_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \match_count_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \match_count_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \match_count_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \match_count_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \match_count_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \match_count_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \match_count_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \match_count_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \match_count_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \match_count_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \match_count_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \match_count_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \match_count_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \match_count_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_crc_error_count_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_format_error_count_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_match_count_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  crc_error_count(31 downto 0) <= \^crc_error_count\(31 downto 0);
  format_error_count(31 downto 0) <= \^format_error_count\(31 downto 0);
  match_count(31 downto 0) <= \^match_count\(31 downto 0);
\crc_error_count[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^crc_error_count\(0),
      O => \crc_error_count[3]_i_2_n_0\
    );
\crc_error_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[3]_i_1_n_7\,
      Q => \^crc_error_count\(0),
      R => rst
    );
\crc_error_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[11]_i_1_n_5\,
      Q => \^crc_error_count\(10),
      R => rst
    );
\crc_error_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[11]_i_1_n_4\,
      Q => \^crc_error_count\(11),
      R => rst
    );
\crc_error_count_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \crc_error_count_reg[7]_i_1_n_0\,
      CO(3) => \crc_error_count_reg[11]_i_1_n_0\,
      CO(2) => \crc_error_count_reg[11]_i_1_n_1\,
      CO(1) => \crc_error_count_reg[11]_i_1_n_2\,
      CO(0) => \crc_error_count_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \crc_error_count_reg[11]_i_1_n_4\,
      O(2) => \crc_error_count_reg[11]_i_1_n_5\,
      O(1) => \crc_error_count_reg[11]_i_1_n_6\,
      O(0) => \crc_error_count_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^crc_error_count\(11 downto 8)
    );
\crc_error_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[15]_i_1_n_7\,
      Q => \^crc_error_count\(12),
      R => rst
    );
\crc_error_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[15]_i_1_n_6\,
      Q => \^crc_error_count\(13),
      R => rst
    );
\crc_error_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[15]_i_1_n_5\,
      Q => \^crc_error_count\(14),
      R => rst
    );
\crc_error_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[15]_i_1_n_4\,
      Q => \^crc_error_count\(15),
      R => rst
    );
\crc_error_count_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \crc_error_count_reg[11]_i_1_n_0\,
      CO(3) => \crc_error_count_reg[15]_i_1_n_0\,
      CO(2) => \crc_error_count_reg[15]_i_1_n_1\,
      CO(1) => \crc_error_count_reg[15]_i_1_n_2\,
      CO(0) => \crc_error_count_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \crc_error_count_reg[15]_i_1_n_4\,
      O(2) => \crc_error_count_reg[15]_i_1_n_5\,
      O(1) => \crc_error_count_reg[15]_i_1_n_6\,
      O(0) => \crc_error_count_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^crc_error_count\(15 downto 12)
    );
\crc_error_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[19]_i_1_n_7\,
      Q => \^crc_error_count\(16),
      R => rst
    );
\crc_error_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[19]_i_1_n_6\,
      Q => \^crc_error_count\(17),
      R => rst
    );
\crc_error_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[19]_i_1_n_5\,
      Q => \^crc_error_count\(18),
      R => rst
    );
\crc_error_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[19]_i_1_n_4\,
      Q => \^crc_error_count\(19),
      R => rst
    );
\crc_error_count_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \crc_error_count_reg[15]_i_1_n_0\,
      CO(3) => \crc_error_count_reg[19]_i_1_n_0\,
      CO(2) => \crc_error_count_reg[19]_i_1_n_1\,
      CO(1) => \crc_error_count_reg[19]_i_1_n_2\,
      CO(0) => \crc_error_count_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \crc_error_count_reg[19]_i_1_n_4\,
      O(2) => \crc_error_count_reg[19]_i_1_n_5\,
      O(1) => \crc_error_count_reg[19]_i_1_n_6\,
      O(0) => \crc_error_count_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^crc_error_count\(19 downto 16)
    );
\crc_error_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[3]_i_1_n_6\,
      Q => \^crc_error_count\(1),
      R => rst
    );
\crc_error_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[23]_i_1_n_7\,
      Q => \^crc_error_count\(20),
      R => rst
    );
\crc_error_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[23]_i_1_n_6\,
      Q => \^crc_error_count\(21),
      R => rst
    );
\crc_error_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[23]_i_1_n_5\,
      Q => \^crc_error_count\(22),
      R => rst
    );
\crc_error_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[23]_i_1_n_4\,
      Q => \^crc_error_count\(23),
      R => rst
    );
\crc_error_count_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \crc_error_count_reg[19]_i_1_n_0\,
      CO(3) => \crc_error_count_reg[23]_i_1_n_0\,
      CO(2) => \crc_error_count_reg[23]_i_1_n_1\,
      CO(1) => \crc_error_count_reg[23]_i_1_n_2\,
      CO(0) => \crc_error_count_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \crc_error_count_reg[23]_i_1_n_4\,
      O(2) => \crc_error_count_reg[23]_i_1_n_5\,
      O(1) => \crc_error_count_reg[23]_i_1_n_6\,
      O(0) => \crc_error_count_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^crc_error_count\(23 downto 20)
    );
\crc_error_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[27]_i_1_n_7\,
      Q => \^crc_error_count\(24),
      R => rst
    );
\crc_error_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[27]_i_1_n_6\,
      Q => \^crc_error_count\(25),
      R => rst
    );
\crc_error_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[27]_i_1_n_5\,
      Q => \^crc_error_count\(26),
      R => rst
    );
\crc_error_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[27]_i_1_n_4\,
      Q => \^crc_error_count\(27),
      R => rst
    );
\crc_error_count_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \crc_error_count_reg[23]_i_1_n_0\,
      CO(3) => \crc_error_count_reg[27]_i_1_n_0\,
      CO(2) => \crc_error_count_reg[27]_i_1_n_1\,
      CO(1) => \crc_error_count_reg[27]_i_1_n_2\,
      CO(0) => \crc_error_count_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \crc_error_count_reg[27]_i_1_n_4\,
      O(2) => \crc_error_count_reg[27]_i_1_n_5\,
      O(1) => \crc_error_count_reg[27]_i_1_n_6\,
      O(0) => \crc_error_count_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^crc_error_count\(27 downto 24)
    );
\crc_error_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[31]_i_2_n_7\,
      Q => \^crc_error_count\(28),
      R => rst
    );
\crc_error_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[31]_i_2_n_6\,
      Q => \^crc_error_count\(29),
      R => rst
    );
\crc_error_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[3]_i_1_n_5\,
      Q => \^crc_error_count\(2),
      R => rst
    );
\crc_error_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[31]_i_2_n_5\,
      Q => \^crc_error_count\(30),
      R => rst
    );
\crc_error_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[31]_i_2_n_4\,
      Q => \^crc_error_count\(31),
      R => rst
    );
\crc_error_count_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \crc_error_count_reg[27]_i_1_n_0\,
      CO(3) => \NLW_crc_error_count_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \crc_error_count_reg[31]_i_2_n_1\,
      CO(1) => \crc_error_count_reg[31]_i_2_n_2\,
      CO(0) => \crc_error_count_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \crc_error_count_reg[31]_i_2_n_4\,
      O(2) => \crc_error_count_reg[31]_i_2_n_5\,
      O(1) => \crc_error_count_reg[31]_i_2_n_6\,
      O(0) => \crc_error_count_reg[31]_i_2_n_7\,
      S(3 downto 0) => \^crc_error_count\(31 downto 28)
    );
\crc_error_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[3]_i_1_n_4\,
      Q => \^crc_error_count\(3),
      R => rst
    );
\crc_error_count_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \crc_error_count_reg[3]_i_1_n_0\,
      CO(2) => \crc_error_count_reg[3]_i_1_n_1\,
      CO(1) => \crc_error_count_reg[3]_i_1_n_2\,
      CO(0) => \crc_error_count_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \crc_error_count_reg[3]_i_1_n_4\,
      O(2) => \crc_error_count_reg[3]_i_1_n_5\,
      O(1) => \crc_error_count_reg[3]_i_1_n_6\,
      O(0) => \crc_error_count_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^crc_error_count\(3 downto 1),
      S(0) => \crc_error_count[3]_i_2_n_0\
    );
\crc_error_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[7]_i_1_n_7\,
      Q => \^crc_error_count\(4),
      R => rst
    );
\crc_error_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[7]_i_1_n_6\,
      Q => \^crc_error_count\(5),
      R => rst
    );
\crc_error_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[7]_i_1_n_5\,
      Q => \^crc_error_count\(6),
      R => rst
    );
\crc_error_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[7]_i_1_n_4\,
      Q => \^crc_error_count\(7),
      R => rst
    );
\crc_error_count_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \crc_error_count_reg[3]_i_1_n_0\,
      CO(3) => \crc_error_count_reg[7]_i_1_n_0\,
      CO(2) => \crc_error_count_reg[7]_i_1_n_1\,
      CO(1) => \crc_error_count_reg[7]_i_1_n_2\,
      CO(0) => \crc_error_count_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \crc_error_count_reg[7]_i_1_n_4\,
      O(2) => \crc_error_count_reg[7]_i_1_n_5\,
      O(1) => \crc_error_count_reg[7]_i_1_n_6\,
      O(0) => \crc_error_count_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^crc_error_count\(7 downto 4)
    );
\crc_error_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[11]_i_1_n_7\,
      Q => \^crc_error_count\(8),
      R => rst
    );
\crc_error_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg_0,
      D => \crc_error_count_reg[11]_i_1_n_6\,
      Q => \^crc_error_count\(9),
      R => rst
    );
\format_error_count[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^format_error_count\(0),
      O => \format_error_count[3]_i_2_n_0\
    );
\format_error_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[3]_i_1_n_7\,
      Q => \^format_error_count\(0),
      R => rst
    );
\format_error_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[11]_i_1_n_5\,
      Q => \^format_error_count\(10),
      R => rst
    );
\format_error_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[11]_i_1_n_4\,
      Q => \^format_error_count\(11),
      R => rst
    );
\format_error_count_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \format_error_count_reg[7]_i_1_n_0\,
      CO(3) => \format_error_count_reg[11]_i_1_n_0\,
      CO(2) => \format_error_count_reg[11]_i_1_n_1\,
      CO(1) => \format_error_count_reg[11]_i_1_n_2\,
      CO(0) => \format_error_count_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \format_error_count_reg[11]_i_1_n_4\,
      O(2) => \format_error_count_reg[11]_i_1_n_5\,
      O(1) => \format_error_count_reg[11]_i_1_n_6\,
      O(0) => \format_error_count_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^format_error_count\(11 downto 8)
    );
\format_error_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[15]_i_1_n_7\,
      Q => \^format_error_count\(12),
      R => rst
    );
\format_error_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[15]_i_1_n_6\,
      Q => \^format_error_count\(13),
      R => rst
    );
\format_error_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[15]_i_1_n_5\,
      Q => \^format_error_count\(14),
      R => rst
    );
\format_error_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[15]_i_1_n_4\,
      Q => \^format_error_count\(15),
      R => rst
    );
\format_error_count_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \format_error_count_reg[11]_i_1_n_0\,
      CO(3) => \format_error_count_reg[15]_i_1_n_0\,
      CO(2) => \format_error_count_reg[15]_i_1_n_1\,
      CO(1) => \format_error_count_reg[15]_i_1_n_2\,
      CO(0) => \format_error_count_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \format_error_count_reg[15]_i_1_n_4\,
      O(2) => \format_error_count_reg[15]_i_1_n_5\,
      O(1) => \format_error_count_reg[15]_i_1_n_6\,
      O(0) => \format_error_count_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^format_error_count\(15 downto 12)
    );
\format_error_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[19]_i_1_n_7\,
      Q => \^format_error_count\(16),
      R => rst
    );
\format_error_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[19]_i_1_n_6\,
      Q => \^format_error_count\(17),
      R => rst
    );
\format_error_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[19]_i_1_n_5\,
      Q => \^format_error_count\(18),
      R => rst
    );
\format_error_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[19]_i_1_n_4\,
      Q => \^format_error_count\(19),
      R => rst
    );
\format_error_count_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \format_error_count_reg[15]_i_1_n_0\,
      CO(3) => \format_error_count_reg[19]_i_1_n_0\,
      CO(2) => \format_error_count_reg[19]_i_1_n_1\,
      CO(1) => \format_error_count_reg[19]_i_1_n_2\,
      CO(0) => \format_error_count_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \format_error_count_reg[19]_i_1_n_4\,
      O(2) => \format_error_count_reg[19]_i_1_n_5\,
      O(1) => \format_error_count_reg[19]_i_1_n_6\,
      O(0) => \format_error_count_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^format_error_count\(19 downto 16)
    );
\format_error_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[3]_i_1_n_6\,
      Q => \^format_error_count\(1),
      R => rst
    );
\format_error_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[23]_i_1_n_7\,
      Q => \^format_error_count\(20),
      R => rst
    );
\format_error_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[23]_i_1_n_6\,
      Q => \^format_error_count\(21),
      R => rst
    );
\format_error_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[23]_i_1_n_5\,
      Q => \^format_error_count\(22),
      R => rst
    );
\format_error_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[23]_i_1_n_4\,
      Q => \^format_error_count\(23),
      R => rst
    );
\format_error_count_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \format_error_count_reg[19]_i_1_n_0\,
      CO(3) => \format_error_count_reg[23]_i_1_n_0\,
      CO(2) => \format_error_count_reg[23]_i_1_n_1\,
      CO(1) => \format_error_count_reg[23]_i_1_n_2\,
      CO(0) => \format_error_count_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \format_error_count_reg[23]_i_1_n_4\,
      O(2) => \format_error_count_reg[23]_i_1_n_5\,
      O(1) => \format_error_count_reg[23]_i_1_n_6\,
      O(0) => \format_error_count_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^format_error_count\(23 downto 20)
    );
\format_error_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[27]_i_1_n_7\,
      Q => \^format_error_count\(24),
      R => rst
    );
\format_error_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[27]_i_1_n_6\,
      Q => \^format_error_count\(25),
      R => rst
    );
\format_error_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[27]_i_1_n_5\,
      Q => \^format_error_count\(26),
      R => rst
    );
\format_error_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[27]_i_1_n_4\,
      Q => \^format_error_count\(27),
      R => rst
    );
\format_error_count_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \format_error_count_reg[23]_i_1_n_0\,
      CO(3) => \format_error_count_reg[27]_i_1_n_0\,
      CO(2) => \format_error_count_reg[27]_i_1_n_1\,
      CO(1) => \format_error_count_reg[27]_i_1_n_2\,
      CO(0) => \format_error_count_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \format_error_count_reg[27]_i_1_n_4\,
      O(2) => \format_error_count_reg[27]_i_1_n_5\,
      O(1) => \format_error_count_reg[27]_i_1_n_6\,
      O(0) => \format_error_count_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^format_error_count\(27 downto 24)
    );
\format_error_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[31]_i_2_n_7\,
      Q => \^format_error_count\(28),
      R => rst
    );
\format_error_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[31]_i_2_n_6\,
      Q => \^format_error_count\(29),
      R => rst
    );
\format_error_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[3]_i_1_n_5\,
      Q => \^format_error_count\(2),
      R => rst
    );
\format_error_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[31]_i_2_n_5\,
      Q => \^format_error_count\(30),
      R => rst
    );
\format_error_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[31]_i_2_n_4\,
      Q => \^format_error_count\(31),
      R => rst
    );
\format_error_count_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \format_error_count_reg[27]_i_1_n_0\,
      CO(3) => \NLW_format_error_count_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \format_error_count_reg[31]_i_2_n_1\,
      CO(1) => \format_error_count_reg[31]_i_2_n_2\,
      CO(0) => \format_error_count_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \format_error_count_reg[31]_i_2_n_4\,
      O(2) => \format_error_count_reg[31]_i_2_n_5\,
      O(1) => \format_error_count_reg[31]_i_2_n_6\,
      O(0) => \format_error_count_reg[31]_i_2_n_7\,
      S(3 downto 0) => \^format_error_count\(31 downto 28)
    );
\format_error_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[3]_i_1_n_4\,
      Q => \^format_error_count\(3),
      R => rst
    );
\format_error_count_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \format_error_count_reg[3]_i_1_n_0\,
      CO(2) => \format_error_count_reg[3]_i_1_n_1\,
      CO(1) => \format_error_count_reg[3]_i_1_n_2\,
      CO(0) => \format_error_count_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \format_error_count_reg[3]_i_1_n_4\,
      O(2) => \format_error_count_reg[3]_i_1_n_5\,
      O(1) => \format_error_count_reg[3]_i_1_n_6\,
      O(0) => \format_error_count_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^format_error_count\(3 downto 1),
      S(0) => \format_error_count[3]_i_2_n_0\
    );
\format_error_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[7]_i_1_n_7\,
      Q => \^format_error_count\(4),
      R => rst
    );
\format_error_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[7]_i_1_n_6\,
      Q => \^format_error_count\(5),
      R => rst
    );
\format_error_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[7]_i_1_n_5\,
      Q => \^format_error_count\(6),
      R => rst
    );
\format_error_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[7]_i_1_n_4\,
      Q => \^format_error_count\(7),
      R => rst
    );
\format_error_count_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \format_error_count_reg[3]_i_1_n_0\,
      CO(3) => \format_error_count_reg[7]_i_1_n_0\,
      CO(2) => \format_error_count_reg[7]_i_1_n_1\,
      CO(1) => \format_error_count_reg[7]_i_1_n_2\,
      CO(0) => \format_error_count_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \format_error_count_reg[7]_i_1_n_4\,
      O(2) => \format_error_count_reg[7]_i_1_n_5\,
      O(1) => \format_error_count_reg[7]_i_1_n_6\,
      O(0) => \format_error_count_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^format_error_count\(7 downto 4)
    );
\format_error_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[11]_i_1_n_7\,
      Q => \^format_error_count\(8),
      R => rst
    );
\format_error_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_reg,
      D => \format_error_count_reg[11]_i_1_n_6\,
      Q => \^format_error_count\(9),
      R => rst
    );
\last_rx_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(0),
      Q => last_rx_addr(0),
      R => rst
    );
\last_rx_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(10),
      Q => last_rx_addr(10),
      R => rst
    );
\last_rx_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(11),
      Q => last_rx_addr(11),
      R => rst
    );
\last_rx_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(12),
      Q => last_rx_addr(12),
      R => rst
    );
\last_rx_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(13),
      Q => last_rx_addr(13),
      R => rst
    );
\last_rx_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(14),
      Q => last_rx_addr(14),
      R => rst
    );
\last_rx_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(15),
      Q => last_rx_addr(15),
      R => rst
    );
\last_rx_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(16),
      Q => last_rx_addr(16),
      R => rst
    );
\last_rx_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(17),
      Q => last_rx_addr(17),
      R => rst
    );
\last_rx_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(18),
      Q => last_rx_addr(18),
      R => rst
    );
\last_rx_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(19),
      Q => last_rx_addr(19),
      R => rst
    );
\last_rx_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(1),
      Q => last_rx_addr(1),
      R => rst
    );
\last_rx_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(20),
      Q => last_rx_addr(20),
      R => rst
    );
\last_rx_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(21),
      Q => last_rx_addr(21),
      R => rst
    );
\last_rx_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(22),
      Q => last_rx_addr(22),
      R => rst
    );
\last_rx_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(23),
      Q => last_rx_addr(23),
      R => rst
    );
\last_rx_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(24),
      Q => last_rx_addr(24),
      R => rst
    );
\last_rx_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(25),
      Q => last_rx_addr(25),
      R => rst
    );
\last_rx_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(26),
      Q => last_rx_addr(26),
      R => rst
    );
\last_rx_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(27),
      Q => last_rx_addr(27),
      R => rst
    );
\last_rx_addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(28),
      Q => last_rx_addr(28),
      R => rst
    );
\last_rx_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(29),
      Q => last_rx_addr(29),
      R => rst
    );
\last_rx_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(2),
      Q => last_rx_addr(2),
      R => rst
    );
\last_rx_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(30),
      Q => last_rx_addr(30),
      R => rst
    );
\last_rx_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(31),
      Q => last_rx_addr(31),
      R => rst
    );
\last_rx_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(3),
      Q => last_rx_addr(3),
      R => rst
    );
\last_rx_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(4),
      Q => last_rx_addr(4),
      R => rst
    );
\last_rx_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(5),
      Q => last_rx_addr(5),
      R => rst
    );
\last_rx_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(6),
      Q => last_rx_addr(6),
      R => rst
    );
\last_rx_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(7),
      Q => last_rx_addr(7),
      R => rst
    );
\last_rx_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(8),
      Q => last_rx_addr(8),
      R => rst
    );
\last_rx_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_addr_reg[31]\(9),
      Q => last_rx_addr(9),
      R => rst
    );
\last_rx_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(0),
      Q => last_rx_data(0),
      R => rst
    );
\last_rx_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(10),
      Q => last_rx_data(10),
      R => rst
    );
\last_rx_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(11),
      Q => last_rx_data(11),
      R => rst
    );
\last_rx_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(12),
      Q => last_rx_data(12),
      R => rst
    );
\last_rx_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(13),
      Q => last_rx_data(13),
      R => rst
    );
\last_rx_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(14),
      Q => last_rx_data(14),
      R => rst
    );
\last_rx_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(15),
      Q => last_rx_data(15),
      R => rst
    );
\last_rx_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(16),
      Q => last_rx_data(16),
      R => rst
    );
\last_rx_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(17),
      Q => last_rx_data(17),
      R => rst
    );
\last_rx_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(18),
      Q => last_rx_data(18),
      R => rst
    );
\last_rx_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(19),
      Q => last_rx_data(19),
      R => rst
    );
\last_rx_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(1),
      Q => last_rx_data(1),
      R => rst
    );
\last_rx_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(20),
      Q => last_rx_data(20),
      R => rst
    );
\last_rx_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(21),
      Q => last_rx_data(21),
      R => rst
    );
\last_rx_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(22),
      Q => last_rx_data(22),
      R => rst
    );
\last_rx_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(23),
      Q => last_rx_data(23),
      R => rst
    );
\last_rx_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(24),
      Q => last_rx_data(24),
      R => rst
    );
\last_rx_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(25),
      Q => last_rx_data(25),
      R => rst
    );
\last_rx_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(26),
      Q => last_rx_data(26),
      R => rst
    );
\last_rx_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(27),
      Q => last_rx_data(27),
      R => rst
    );
\last_rx_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(28),
      Q => last_rx_data(28),
      R => rst
    );
\last_rx_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(29),
      Q => last_rx_data(29),
      R => rst
    );
\last_rx_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(2),
      Q => last_rx_data(2),
      R => rst
    );
\last_rx_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(30),
      Q => last_rx_data(30),
      R => rst
    );
\last_rx_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(31),
      Q => last_rx_data(31),
      R => rst
    );
\last_rx_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(3),
      Q => last_rx_data(3),
      R => rst
    );
\last_rx_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(4),
      Q => last_rx_data(4),
      R => rst
    );
\last_rx_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(5),
      Q => last_rx_data(5),
      R => rst
    );
\last_rx_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(6),
      Q => last_rx_data(6),
      R => rst
    );
\last_rx_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(7),
      Q => last_rx_data(7),
      R => rst
    );
\last_rx_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(8),
      Q => last_rx_data(8),
      R => rst
    );
\last_rx_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => \rx_cmd_data_reg[31]\(9),
      Q => last_rx_data(9),
      R => rst
    );
\last_rx_seq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(0),
      Q => last_rx_seq(0),
      R => rst
    );
\last_rx_seq_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(10),
      Q => last_rx_seq(10),
      R => rst
    );
\last_rx_seq_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(11),
      Q => last_rx_seq(11),
      R => rst
    );
\last_rx_seq_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(12),
      Q => last_rx_seq(12),
      R => rst
    );
\last_rx_seq_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(13),
      Q => last_rx_seq(13),
      R => rst
    );
\last_rx_seq_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(14),
      Q => last_rx_seq(14),
      R => rst
    );
\last_rx_seq_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(15),
      Q => last_rx_seq(15),
      R => rst
    );
\last_rx_seq_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(16),
      Q => last_rx_seq(16),
      R => rst
    );
\last_rx_seq_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(17),
      Q => last_rx_seq(17),
      R => rst
    );
\last_rx_seq_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(18),
      Q => last_rx_seq(18),
      R => rst
    );
\last_rx_seq_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(19),
      Q => last_rx_seq(19),
      R => rst
    );
\last_rx_seq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(1),
      Q => last_rx_seq(1),
      R => rst
    );
\last_rx_seq_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(20),
      Q => last_rx_seq(20),
      R => rst
    );
\last_rx_seq_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(21),
      Q => last_rx_seq(21),
      R => rst
    );
\last_rx_seq_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(22),
      Q => last_rx_seq(22),
      R => rst
    );
\last_rx_seq_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(23),
      Q => last_rx_seq(23),
      R => rst
    );
\last_rx_seq_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(24),
      Q => last_rx_seq(24),
      R => rst
    );
\last_rx_seq_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(25),
      Q => last_rx_seq(25),
      R => rst
    );
\last_rx_seq_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(26),
      Q => last_rx_seq(26),
      R => rst
    );
\last_rx_seq_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(27),
      Q => last_rx_seq(27),
      R => rst
    );
\last_rx_seq_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(28),
      Q => last_rx_seq(28),
      R => rst
    );
\last_rx_seq_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(29),
      Q => last_rx_seq(29),
      R => rst
    );
\last_rx_seq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(2),
      Q => last_rx_seq(2),
      R => rst
    );
\last_rx_seq_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(30),
      Q => last_rx_seq(30),
      R => rst
    );
\last_rx_seq_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(31),
      Q => last_rx_seq(31),
      R => rst
    );
\last_rx_seq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(3),
      Q => last_rx_seq(3),
      R => rst
    );
\last_rx_seq_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(4),
      Q => last_rx_seq(4),
      R => rst
    );
\last_rx_seq_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(5),
      Q => last_rx_seq(5),
      R => rst
    );
\last_rx_seq_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(6),
      Q => last_rx_seq(6),
      R => rst
    );
\last_rx_seq_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(7),
      Q => last_rx_seq(7),
      R => rst
    );
\last_rx_seq_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(8),
      Q => last_rx_seq(8),
      R => rst
    );
\last_rx_seq_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid,
      D => Q(9),
      Q => last_rx_seq(9),
      R => rst
    );
\match_count[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^match_count\(0),
      O => \match_count[3]_i_2_n_0\
    );
\match_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[3]_i_1_n_7\,
      Q => \^match_count\(0),
      R => rst
    );
\match_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[11]_i_1_n_5\,
      Q => \^match_count\(10),
      R => rst
    );
\match_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[11]_i_1_n_4\,
      Q => \^match_count\(11),
      R => rst
    );
\match_count_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \match_count_reg[7]_i_1_n_0\,
      CO(3) => \match_count_reg[11]_i_1_n_0\,
      CO(2) => \match_count_reg[11]_i_1_n_1\,
      CO(1) => \match_count_reg[11]_i_1_n_2\,
      CO(0) => \match_count_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \match_count_reg[11]_i_1_n_4\,
      O(2) => \match_count_reg[11]_i_1_n_5\,
      O(1) => \match_count_reg[11]_i_1_n_6\,
      O(0) => \match_count_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^match_count\(11 downto 8)
    );
\match_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[15]_i_1_n_7\,
      Q => \^match_count\(12),
      R => rst
    );
\match_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[15]_i_1_n_6\,
      Q => \^match_count\(13),
      R => rst
    );
\match_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[15]_i_1_n_5\,
      Q => \^match_count\(14),
      R => rst
    );
\match_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[15]_i_1_n_4\,
      Q => \^match_count\(15),
      R => rst
    );
\match_count_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \match_count_reg[11]_i_1_n_0\,
      CO(3) => \match_count_reg[15]_i_1_n_0\,
      CO(2) => \match_count_reg[15]_i_1_n_1\,
      CO(1) => \match_count_reg[15]_i_1_n_2\,
      CO(0) => \match_count_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \match_count_reg[15]_i_1_n_4\,
      O(2) => \match_count_reg[15]_i_1_n_5\,
      O(1) => \match_count_reg[15]_i_1_n_6\,
      O(0) => \match_count_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^match_count\(15 downto 12)
    );
\match_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[19]_i_1_n_7\,
      Q => \^match_count\(16),
      R => rst
    );
\match_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[19]_i_1_n_6\,
      Q => \^match_count\(17),
      R => rst
    );
\match_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[19]_i_1_n_5\,
      Q => \^match_count\(18),
      R => rst
    );
\match_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[19]_i_1_n_4\,
      Q => \^match_count\(19),
      R => rst
    );
\match_count_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \match_count_reg[15]_i_1_n_0\,
      CO(3) => \match_count_reg[19]_i_1_n_0\,
      CO(2) => \match_count_reg[19]_i_1_n_1\,
      CO(1) => \match_count_reg[19]_i_1_n_2\,
      CO(0) => \match_count_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \match_count_reg[19]_i_1_n_4\,
      O(2) => \match_count_reg[19]_i_1_n_5\,
      O(1) => \match_count_reg[19]_i_1_n_6\,
      O(0) => \match_count_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^match_count\(19 downto 16)
    );
\match_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[3]_i_1_n_6\,
      Q => \^match_count\(1),
      R => rst
    );
\match_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[23]_i_1_n_7\,
      Q => \^match_count\(20),
      R => rst
    );
\match_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[23]_i_1_n_6\,
      Q => \^match_count\(21),
      R => rst
    );
\match_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[23]_i_1_n_5\,
      Q => \^match_count\(22),
      R => rst
    );
\match_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[23]_i_1_n_4\,
      Q => \^match_count\(23),
      R => rst
    );
\match_count_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \match_count_reg[19]_i_1_n_0\,
      CO(3) => \match_count_reg[23]_i_1_n_0\,
      CO(2) => \match_count_reg[23]_i_1_n_1\,
      CO(1) => \match_count_reg[23]_i_1_n_2\,
      CO(0) => \match_count_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \match_count_reg[23]_i_1_n_4\,
      O(2) => \match_count_reg[23]_i_1_n_5\,
      O(1) => \match_count_reg[23]_i_1_n_6\,
      O(0) => \match_count_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^match_count\(23 downto 20)
    );
\match_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[27]_i_1_n_7\,
      Q => \^match_count\(24),
      R => rst
    );
\match_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[27]_i_1_n_6\,
      Q => \^match_count\(25),
      R => rst
    );
\match_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[27]_i_1_n_5\,
      Q => \^match_count\(26),
      R => rst
    );
\match_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[27]_i_1_n_4\,
      Q => \^match_count\(27),
      R => rst
    );
\match_count_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \match_count_reg[23]_i_1_n_0\,
      CO(3) => \match_count_reg[27]_i_1_n_0\,
      CO(2) => \match_count_reg[27]_i_1_n_1\,
      CO(1) => \match_count_reg[27]_i_1_n_2\,
      CO(0) => \match_count_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \match_count_reg[27]_i_1_n_4\,
      O(2) => \match_count_reg[27]_i_1_n_5\,
      O(1) => \match_count_reg[27]_i_1_n_6\,
      O(0) => \match_count_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^match_count\(27 downto 24)
    );
\match_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[31]_i_2_n_7\,
      Q => \^match_count\(28),
      R => rst
    );
\match_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[31]_i_2_n_6\,
      Q => \^match_count\(29),
      R => rst
    );
\match_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[3]_i_1_n_5\,
      Q => \^match_count\(2),
      R => rst
    );
\match_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[31]_i_2_n_5\,
      Q => \^match_count\(30),
      R => rst
    );
\match_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[31]_i_2_n_4\,
      Q => \^match_count\(31),
      R => rst
    );
\match_count_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \match_count_reg[27]_i_1_n_0\,
      CO(3) => \NLW_match_count_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \match_count_reg[31]_i_2_n_1\,
      CO(1) => \match_count_reg[31]_i_2_n_2\,
      CO(0) => \match_count_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \match_count_reg[31]_i_2_n_4\,
      O(2) => \match_count_reg[31]_i_2_n_5\,
      O(1) => \match_count_reg[31]_i_2_n_6\,
      O(0) => \match_count_reg[31]_i_2_n_7\,
      S(3 downto 0) => \^match_count\(31 downto 28)
    );
\match_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[3]_i_1_n_4\,
      Q => \^match_count\(3),
      R => rst
    );
\match_count_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \match_count_reg[3]_i_1_n_0\,
      CO(2) => \match_count_reg[3]_i_1_n_1\,
      CO(1) => \match_count_reg[3]_i_1_n_2\,
      CO(0) => \match_count_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \match_count_reg[3]_i_1_n_4\,
      O(2) => \match_count_reg[3]_i_1_n_5\,
      O(1) => \match_count_reg[3]_i_1_n_6\,
      O(0) => \match_count_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^match_count\(3 downto 1),
      S(0) => \match_count[3]_i_2_n_0\
    );
\match_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[7]_i_1_n_7\,
      Q => \^match_count\(4),
      R => rst
    );
\match_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[7]_i_1_n_6\,
      Q => \^match_count\(5),
      R => rst
    );
\match_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[7]_i_1_n_5\,
      Q => \^match_count\(6),
      R => rst
    );
\match_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[7]_i_1_n_4\,
      Q => \^match_count\(7),
      R => rst
    );
\match_count_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \match_count_reg[3]_i_1_n_0\,
      CO(3) => \match_count_reg[7]_i_1_n_0\,
      CO(2) => \match_count_reg[7]_i_1_n_1\,
      CO(1) => \match_count_reg[7]_i_1_n_2\,
      CO(0) => \match_count_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \match_count_reg[7]_i_1_n_4\,
      O(2) => \match_count_reg[7]_i_1_n_5\,
      O(1) => \match_count_reg[7]_i_1_n_6\,
      O(0) => \match_count_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^match_count\(7 downto 4)
    );
\match_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[11]_i_1_n_7\,
      Q => \^match_count\(8),
      R => rst
    );
\match_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => format_ok_reg,
      D => \match_count_reg[11]_i_1_n_6\,
      Q => \^match_count\(9),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_optical_cmd_rx is
  port (
    cmd_valid : out STD_LOGIC;
    rx_frame_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \crc_error_count_reg[0]\ : out STD_LOGIC;
    \rx_frame_count_reg[0]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \format_error_count_reg[0]\ : out STD_LOGIC;
    \match_count_reg[31]\ : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC;
    \state_reg[1]_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \last_rx_addr_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \last_rx_data_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_axis_tdata_reg[60]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axis_tdata_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tvalid_reg : in STD_LOGIC;
    \crc_ok1__24\ : in STD_LOGIC;
    \m_axis_tkeep_reg[3]\ : in STD_LOGIC;
    m_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx_axis_tlast : in STD_LOGIC;
    p_0_in8_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_optical_cmd_rx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_optical_cmd_rx is
  signal addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \calc_crc16_return__79\ : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \^cmd_valid\ : STD_LOGIC;
  signal cmd_valid_i_1_n_0 : STD_LOGIC;
  signal crc_ok : STD_LOGIC;
  signal \crc_ok0__6\ : STD_LOGIC;
  signal \crc_ok0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \crc_ok0_carry__0_n_3\ : STD_LOGIC;
  signal crc_ok0_carry_n_0 : STD_LOGIC;
  signal crc_ok0_carry_n_1 : STD_LOGIC;
  signal crc_ok0_carry_n_2 : STD_LOGIC;
  signal crc_ok0_carry_n_3 : STD_LOGIC;
  signal crc_ok_i_1_n_0 : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal format_ok : STD_LOGIC;
  signal format_ok_i_1_n_0 : STD_LOGIC;
  signal \^rx_frame_count\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \rx_frame_count[31]_i_1_n_0\ : STD_LOGIC;
  signal \rx_frame_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \rx_frame_count_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \rx_frame_count_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \rx_frame_count_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \rx_frame_count_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \rx_frame_count_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \rx_frame_count_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \rx_frame_count_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \rx_frame_count_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \rx_frame_count_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \rx_frame_count_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \rx_frame_count_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \rx_frame_count_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \rx_frame_count_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \rx_frame_count_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \rx_frame_count_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \rx_frame_count_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \rx_frame_count_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \rx_frame_count_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \rx_frame_count_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \rx_frame_count_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \rx_frame_count_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \rx_frame_count_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \rx_frame_count_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \rx_frame_count_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \rx_frame_count_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \rx_frame_count_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \rx_frame_count_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \rx_frame_count_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \rx_frame_count_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \rx_frame_count_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \rx_frame_count_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \rx_frame_count_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \rx_frame_count_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \rx_frame_count_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \rx_frame_count_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \rx_frame_count_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \rx_frame_count_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \rx_frame_count_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \rx_frame_count_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \rx_frame_count_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \rx_frame_count_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \rx_frame_count_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \rx_frame_count_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \rx_frame_count_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \rx_frame_count_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \rx_frame_count_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \rx_frame_count_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \rx_frame_count_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \rx_frame_count_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \rx_frame_count_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \rx_frame_count_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \rx_frame_count_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \rx_frame_count_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \rx_frame_count_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \rx_frame_count_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \rx_frame_count_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \rx_frame_count_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \rx_frame_count_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \rx_frame_count_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \rx_frame_count_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \rx_frame_count_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \rx_frame_count_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \rx_frame_count_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal seq : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^state_reg[1]_0\ : STD_LOGIC;
  signal \^state_reg[1]_1\ : STD_LOGIC;
  signal NLW_crc_ok0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_crc_ok0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_crc_ok0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rx_frame_count_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \crc_error_count[31]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \format_error_count[31]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of format_ok_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \match_count[31]_i_1\ : label is "soft_lutpair1";
begin
  cmd_valid <= \^cmd_valid\;
  rx_frame_count(31 downto 0) <= \^rx_frame_count\(31 downto 0);
  \state_reg[1]_0\ <= \^state_reg[1]_0\;
  \state_reg[1]_1\ <= \^state_reg[1]_1\;
\addr_latched_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(32),
      Q => addr(0),
      R => rst
    );
\addr_latched_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(42),
      Q => addr(10),
      R => rst
    );
\addr_latched_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(43),
      Q => addr(11),
      R => rst
    );
\addr_latched_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(44),
      Q => addr(12),
      R => rst
    );
\addr_latched_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(45),
      Q => addr(13),
      R => rst
    );
\addr_latched_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(46),
      Q => addr(14),
      R => rst
    );
\addr_latched_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(47),
      Q => addr(15),
      R => rst
    );
\addr_latched_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(48),
      Q => addr(16),
      R => rst
    );
\addr_latched_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(49),
      Q => addr(17),
      R => rst
    );
\addr_latched_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(50),
      Q => addr(18),
      R => rst
    );
\addr_latched_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(51),
      Q => addr(19),
      R => rst
    );
\addr_latched_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(33),
      Q => addr(1),
      R => rst
    );
\addr_latched_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(52),
      Q => addr(20),
      R => rst
    );
\addr_latched_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(53),
      Q => addr(21),
      R => rst
    );
\addr_latched_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(54),
      Q => addr(22),
      R => rst
    );
\addr_latched_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(55),
      Q => addr(23),
      R => rst
    );
\addr_latched_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(56),
      Q => addr(24),
      R => rst
    );
\addr_latched_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(57),
      Q => addr(25),
      R => rst
    );
\addr_latched_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(58),
      Q => addr(26),
      R => rst
    );
\addr_latched_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(59),
      Q => addr(27),
      R => rst
    );
\addr_latched_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(60),
      Q => addr(28),
      R => rst
    );
\addr_latched_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(61),
      Q => addr(29),
      R => rst
    );
\addr_latched_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(34),
      Q => addr(2),
      R => rst
    );
\addr_latched_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(62),
      Q => addr(30),
      R => rst
    );
\addr_latched_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(63),
      Q => addr(31),
      R => rst
    );
\addr_latched_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(35),
      Q => addr(3),
      R => rst
    );
\addr_latched_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(36),
      Q => addr(4),
      R => rst
    );
\addr_latched_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(37),
      Q => addr(5),
      R => rst
    );
\addr_latched_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(38),
      Q => addr(6),
      R => rst
    );
\addr_latched_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(39),
      Q => addr(7),
      R => rst
    );
\addr_latched_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(40),
      Q => addr(8),
      R => rst
    );
\addr_latched_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(41),
      Q => addr(9),
      R => rst
    );
cmd_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => m_axis_tvalid_reg,
      I2 => \^state_reg[1]_1\,
      O => cmd_valid_i_1_n_0
    );
cmd_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cmd_valid_i_1_n_0,
      Q => \^cmd_valid\,
      R => rst
    );
\crc_error_count[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => format_ok,
      I1 => \^cmd_valid\,
      I2 => crc_ok,
      O => \crc_error_count_reg[0]\
    );
crc_ok0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => crc_ok0_carry_n_0,
      CO(2) => crc_ok0_carry_n_1,
      CO(1) => crc_ok0_carry_n_2,
      CO(0) => crc_ok0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_crc_ok0_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\crc_ok0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => crc_ok0_carry_n_0,
      CO(3 downto 2) => \NLW_crc_ok0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \crc_ok0__6\,
      CO(0) => \crc_ok0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_crc_ok0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \crc_ok0_carry__0_i_1_n_0\,
      S(0) => \m_axis_tdata_reg[60]\(0)
    );
\crc_ok0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \calc_crc16_return__79\(15),
      I1 => \m_axis_tdata_reg[63]\(63),
      O => \crc_ok0_carry__0_i_1_n_0\
    );
\crc_ok0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(15),
      I1 => seq(31),
      I2 => addr(31),
      I3 => seq(15),
      I4 => data(31),
      I5 => addr(15),
      O => \calc_crc16_return__79\(15)
    );
\crc_ok0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(12),
      I1 => seq(28),
      I2 => addr(28),
      I3 => seq(12),
      I4 => data(28),
      I5 => addr(12),
      O => \rx_frame_count_reg[0]_0\(12)
    );
\crc_ok0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(14),
      I1 => seq(30),
      I2 => addr(30),
      I3 => seq(14),
      I4 => data(30),
      I5 => addr(14),
      O => \rx_frame_count_reg[0]_0\(14)
    );
\crc_ok0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(13),
      I1 => seq(29),
      I2 => addr(29),
      I3 => seq(13),
      I4 => data(29),
      I5 => addr(13),
      O => \rx_frame_count_reg[0]_0\(13)
    );
crc_ok0_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(7),
      I1 => seq(23),
      I2 => addr(23),
      I3 => seq(7),
      I4 => data(23),
      I5 => addr(7),
      O => \rx_frame_count_reg[0]_0\(7)
    );
crc_ok0_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(3),
      I1 => seq(19),
      I2 => addr(19),
      I3 => seq(3),
      I4 => data(19),
      I5 => addr(3),
      O => \rx_frame_count_reg[0]_0\(3)
    );
crc_ok0_carry_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(5),
      I1 => seq(21),
      I2 => addr(21),
      I3 => seq(5),
      I4 => data(21),
      I5 => addr(5),
      O => \rx_frame_count_reg[0]_0\(5)
    );
crc_ok0_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(4),
      I1 => seq(20),
      I2 => addr(20),
      I3 => seq(4),
      I4 => data(20),
      I5 => addr(4),
      O => \rx_frame_count_reg[0]_0\(4)
    );
crc_ok0_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(0),
      I1 => seq(16),
      I2 => addr(16),
      I3 => seq(0),
      I4 => data(16),
      I5 => addr(0),
      O => \rx_frame_count_reg[0]_0\(0)
    );
crc_ok0_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(2),
      I1 => seq(18),
      I2 => addr(18),
      I3 => seq(2),
      I4 => data(18),
      I5 => addr(2),
      O => \rx_frame_count_reg[0]_0\(2)
    );
crc_ok0_carry_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(1),
      I1 => seq(17),
      I2 => addr(17),
      I3 => seq(1),
      I4 => data(17),
      I5 => addr(1),
      O => \rx_frame_count_reg[0]_0\(1)
    );
crc_ok0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(9),
      I1 => seq(25),
      I2 => addr(25),
      I3 => seq(9),
      I4 => data(25),
      I5 => addr(9),
      O => \rx_frame_count_reg[0]_0\(9)
    );
crc_ok0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(11),
      I1 => seq(27),
      I2 => addr(27),
      I3 => seq(11),
      I4 => data(27),
      I5 => addr(11),
      O => \rx_frame_count_reg[0]_0\(11)
    );
crc_ok0_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(10),
      I1 => seq(26),
      I2 => addr(26),
      I3 => seq(10),
      I4 => data(26),
      I5 => addr(10),
      O => \rx_frame_count_reg[0]_0\(10)
    );
crc_ok0_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(6),
      I1 => seq(22),
      I2 => addr(22),
      I3 => seq(6),
      I4 => data(22),
      I5 => addr(6),
      O => \rx_frame_count_reg[0]_0\(6)
    );
crc_ok0_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(8),
      I1 => seq(24),
      I2 => addr(24),
      I3 => seq(8),
      I4 => data(24),
      I5 => addr(8),
      O => \rx_frame_count_reg[0]_0\(8)
    );
crc_ok_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \^state_reg[1]_1\,
      I1 => \crc_ok0__6\,
      I2 => \crc_ok1__24\,
      I3 => \m_axis_tkeep_reg[3]\,
      I4 => crc_ok,
      O => crc_ok_i_1_n_0
    );
crc_ok_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => crc_ok_i_1_n_0,
      Q => crc_ok,
      R => rst
    );
\data_latched_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(0),
      Q => data(0),
      R => rst
    );
\data_latched_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(10),
      Q => data(10),
      R => rst
    );
\data_latched_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(11),
      Q => data(11),
      R => rst
    );
\data_latched_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(12),
      Q => data(12),
      R => rst
    );
\data_latched_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(13),
      Q => data(13),
      R => rst
    );
\data_latched_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(14),
      Q => data(14),
      R => rst
    );
\data_latched_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(15),
      Q => data(15),
      R => rst
    );
\data_latched_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(16),
      Q => data(16),
      R => rst
    );
\data_latched_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(17),
      Q => data(17),
      R => rst
    );
\data_latched_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(18),
      Q => data(18),
      R => rst
    );
\data_latched_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(19),
      Q => data(19),
      R => rst
    );
\data_latched_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(1),
      Q => data(1),
      R => rst
    );
\data_latched_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(20),
      Q => data(20),
      R => rst
    );
\data_latched_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(21),
      Q => data(21),
      R => rst
    );
\data_latched_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(22),
      Q => data(22),
      R => rst
    );
\data_latched_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(23),
      Q => data(23),
      R => rst
    );
\data_latched_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(24),
      Q => data(24),
      R => rst
    );
\data_latched_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(25),
      Q => data(25),
      R => rst
    );
\data_latched_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(26),
      Q => data(26),
      R => rst
    );
\data_latched_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(27),
      Q => data(27),
      R => rst
    );
\data_latched_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(28),
      Q => data(28),
      R => rst
    );
\data_latched_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(29),
      Q => data(29),
      R => rst
    );
\data_latched_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(2),
      Q => data(2),
      R => rst
    );
\data_latched_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(30),
      Q => data(30),
      R => rst
    );
\data_latched_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(31),
      Q => data(31),
      R => rst
    );
\data_latched_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(3),
      Q => data(3),
      R => rst
    );
\data_latched_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(4),
      Q => data(4),
      R => rst
    );
\data_latched_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(5),
      Q => data(5),
      R => rst
    );
\data_latched_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(6),
      Q => data(6),
      R => rst
    );
\data_latched_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(7),
      Q => data(7),
      R => rst
    );
\data_latched_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(8),
      Q => data(8),
      R => rst
    );
\data_latched_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \m_axis_tdata_reg[63]\(9),
      Q => data(9),
      R => rst
    );
\format_error_count[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cmd_valid\,
      I1 => format_ok,
      O => \format_error_count_reg[0]\
    );
format_ok_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \^state_reg[1]_1\,
      I1 => \crc_ok1__24\,
      I2 => \m_axis_tkeep_reg[3]\,
      I3 => format_ok,
      O => format_ok_i_1_n_0
    );
format_ok_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => format_ok_i_1_n_0,
      Q => format_ok,
      R => rst
    );
\match_count[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => format_ok,
      I1 => \^cmd_valid\,
      I2 => crc_ok,
      O => \match_count_reg[31]\
    );
\rx_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(0),
      Q => \last_rx_addr_reg[31]\(0),
      R => rst
    );
\rx_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(10),
      Q => \last_rx_addr_reg[31]\(10),
      R => rst
    );
\rx_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(11),
      Q => \last_rx_addr_reg[31]\(11),
      R => rst
    );
\rx_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(12),
      Q => \last_rx_addr_reg[31]\(12),
      R => rst
    );
\rx_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(13),
      Q => \last_rx_addr_reg[31]\(13),
      R => rst
    );
\rx_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(14),
      Q => \last_rx_addr_reg[31]\(14),
      R => rst
    );
\rx_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(15),
      Q => \last_rx_addr_reg[31]\(15),
      R => rst
    );
\rx_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(16),
      Q => \last_rx_addr_reg[31]\(16),
      R => rst
    );
\rx_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(17),
      Q => \last_rx_addr_reg[31]\(17),
      R => rst
    );
\rx_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(18),
      Q => \last_rx_addr_reg[31]\(18),
      R => rst
    );
\rx_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(19),
      Q => \last_rx_addr_reg[31]\(19),
      R => rst
    );
\rx_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(1),
      Q => \last_rx_addr_reg[31]\(1),
      R => rst
    );
\rx_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(20),
      Q => \last_rx_addr_reg[31]\(20),
      R => rst
    );
\rx_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(21),
      Q => \last_rx_addr_reg[31]\(21),
      R => rst
    );
\rx_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(22),
      Q => \last_rx_addr_reg[31]\(22),
      R => rst
    );
\rx_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(23),
      Q => \last_rx_addr_reg[31]\(23),
      R => rst
    );
\rx_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(24),
      Q => \last_rx_addr_reg[31]\(24),
      R => rst
    );
\rx_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(25),
      Q => \last_rx_addr_reg[31]\(25),
      R => rst
    );
\rx_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(26),
      Q => \last_rx_addr_reg[31]\(26),
      R => rst
    );
\rx_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(27),
      Q => \last_rx_addr_reg[31]\(27),
      R => rst
    );
\rx_addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(28),
      Q => \last_rx_addr_reg[31]\(28),
      R => rst
    );
\rx_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(29),
      Q => \last_rx_addr_reg[31]\(29),
      R => rst
    );
\rx_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(2),
      Q => \last_rx_addr_reg[31]\(2),
      R => rst
    );
\rx_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(30),
      Q => \last_rx_addr_reg[31]\(30),
      R => rst
    );
\rx_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(31),
      Q => \last_rx_addr_reg[31]\(31),
      R => rst
    );
\rx_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(3),
      Q => \last_rx_addr_reg[31]\(3),
      R => rst
    );
\rx_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(4),
      Q => \last_rx_addr_reg[31]\(4),
      R => rst
    );
\rx_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(5),
      Q => \last_rx_addr_reg[31]\(5),
      R => rst
    );
\rx_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(6),
      Q => \last_rx_addr_reg[31]\(6),
      R => rst
    );
\rx_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(7),
      Q => \last_rx_addr_reg[31]\(7),
      R => rst
    );
\rx_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(8),
      Q => \last_rx_addr_reg[31]\(8),
      R => rst
    );
\rx_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => addr(9),
      Q => \last_rx_addr_reg[31]\(9),
      R => rst
    );
\rx_cmd_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(0),
      Q => \last_rx_data_reg[31]\(0),
      R => rst
    );
\rx_cmd_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(10),
      Q => \last_rx_data_reg[31]\(10),
      R => rst
    );
\rx_cmd_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(11),
      Q => \last_rx_data_reg[31]\(11),
      R => rst
    );
\rx_cmd_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(12),
      Q => \last_rx_data_reg[31]\(12),
      R => rst
    );
\rx_cmd_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(13),
      Q => \last_rx_data_reg[31]\(13),
      R => rst
    );
\rx_cmd_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(14),
      Q => \last_rx_data_reg[31]\(14),
      R => rst
    );
\rx_cmd_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(15),
      Q => \last_rx_data_reg[31]\(15),
      R => rst
    );
\rx_cmd_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(16),
      Q => \last_rx_data_reg[31]\(16),
      R => rst
    );
\rx_cmd_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(17),
      Q => \last_rx_data_reg[31]\(17),
      R => rst
    );
\rx_cmd_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(18),
      Q => \last_rx_data_reg[31]\(18),
      R => rst
    );
\rx_cmd_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(19),
      Q => \last_rx_data_reg[31]\(19),
      R => rst
    );
\rx_cmd_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(1),
      Q => \last_rx_data_reg[31]\(1),
      R => rst
    );
\rx_cmd_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(20),
      Q => \last_rx_data_reg[31]\(20),
      R => rst
    );
\rx_cmd_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(21),
      Q => \last_rx_data_reg[31]\(21),
      R => rst
    );
\rx_cmd_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(22),
      Q => \last_rx_data_reg[31]\(22),
      R => rst
    );
\rx_cmd_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(23),
      Q => \last_rx_data_reg[31]\(23),
      R => rst
    );
\rx_cmd_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(24),
      Q => \last_rx_data_reg[31]\(24),
      R => rst
    );
\rx_cmd_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(25),
      Q => \last_rx_data_reg[31]\(25),
      R => rst
    );
\rx_cmd_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(26),
      Q => \last_rx_data_reg[31]\(26),
      R => rst
    );
\rx_cmd_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(27),
      Q => \last_rx_data_reg[31]\(27),
      R => rst
    );
\rx_cmd_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(28),
      Q => \last_rx_data_reg[31]\(28),
      R => rst
    );
\rx_cmd_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(29),
      Q => \last_rx_data_reg[31]\(29),
      R => rst
    );
\rx_cmd_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(2),
      Q => \last_rx_data_reg[31]\(2),
      R => rst
    );
\rx_cmd_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(30),
      Q => \last_rx_data_reg[31]\(30),
      R => rst
    );
\rx_cmd_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(31),
      Q => \last_rx_data_reg[31]\(31),
      R => rst
    );
\rx_cmd_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(3),
      Q => \last_rx_data_reg[31]\(3),
      R => rst
    );
\rx_cmd_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(4),
      Q => \last_rx_data_reg[31]\(4),
      R => rst
    );
\rx_cmd_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(5),
      Q => \last_rx_data_reg[31]\(5),
      R => rst
    );
\rx_cmd_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(6),
      Q => \last_rx_data_reg[31]\(6),
      R => rst
    );
\rx_cmd_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(7),
      Q => \last_rx_data_reg[31]\(7),
      R => rst
    );
\rx_cmd_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(8),
      Q => \last_rx_data_reg[31]\(8),
      R => rst
    );
\rx_cmd_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => data(9),
      Q => \last_rx_data_reg[31]\(9),
      R => rst
    );
\rx_frame_count[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \crc_ok1__24\,
      I2 => m_axis_tvalid_reg,
      I3 => \crc_ok0__6\,
      I4 => \^state_reg[1]_1\,
      O => \rx_frame_count[31]_i_1_n_0\
    );
\rx_frame_count[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rx_frame_count\(0),
      O => \rx_frame_count[3]_i_2_n_0\
    );
\rx_frame_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[3]_i_1_n_7\,
      Q => \^rx_frame_count\(0),
      R => rst
    );
\rx_frame_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[11]_i_1_n_5\,
      Q => \^rx_frame_count\(10),
      R => rst
    );
\rx_frame_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[11]_i_1_n_4\,
      Q => \^rx_frame_count\(11),
      R => rst
    );
\rx_frame_count_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_frame_count_reg[7]_i_1_n_0\,
      CO(3) => \rx_frame_count_reg[11]_i_1_n_0\,
      CO(2) => \rx_frame_count_reg[11]_i_1_n_1\,
      CO(1) => \rx_frame_count_reg[11]_i_1_n_2\,
      CO(0) => \rx_frame_count_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rx_frame_count_reg[11]_i_1_n_4\,
      O(2) => \rx_frame_count_reg[11]_i_1_n_5\,
      O(1) => \rx_frame_count_reg[11]_i_1_n_6\,
      O(0) => \rx_frame_count_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^rx_frame_count\(11 downto 8)
    );
\rx_frame_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[15]_i_1_n_7\,
      Q => \^rx_frame_count\(12),
      R => rst
    );
\rx_frame_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[15]_i_1_n_6\,
      Q => \^rx_frame_count\(13),
      R => rst
    );
\rx_frame_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[15]_i_1_n_5\,
      Q => \^rx_frame_count\(14),
      R => rst
    );
\rx_frame_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[15]_i_1_n_4\,
      Q => \^rx_frame_count\(15),
      R => rst
    );
\rx_frame_count_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_frame_count_reg[11]_i_1_n_0\,
      CO(3) => \rx_frame_count_reg[15]_i_1_n_0\,
      CO(2) => \rx_frame_count_reg[15]_i_1_n_1\,
      CO(1) => \rx_frame_count_reg[15]_i_1_n_2\,
      CO(0) => \rx_frame_count_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rx_frame_count_reg[15]_i_1_n_4\,
      O(2) => \rx_frame_count_reg[15]_i_1_n_5\,
      O(1) => \rx_frame_count_reg[15]_i_1_n_6\,
      O(0) => \rx_frame_count_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^rx_frame_count\(15 downto 12)
    );
\rx_frame_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[19]_i_1_n_7\,
      Q => \^rx_frame_count\(16),
      R => rst
    );
\rx_frame_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[19]_i_1_n_6\,
      Q => \^rx_frame_count\(17),
      R => rst
    );
\rx_frame_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[19]_i_1_n_5\,
      Q => \^rx_frame_count\(18),
      R => rst
    );
\rx_frame_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[19]_i_1_n_4\,
      Q => \^rx_frame_count\(19),
      R => rst
    );
\rx_frame_count_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_frame_count_reg[15]_i_1_n_0\,
      CO(3) => \rx_frame_count_reg[19]_i_1_n_0\,
      CO(2) => \rx_frame_count_reg[19]_i_1_n_1\,
      CO(1) => \rx_frame_count_reg[19]_i_1_n_2\,
      CO(0) => \rx_frame_count_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rx_frame_count_reg[19]_i_1_n_4\,
      O(2) => \rx_frame_count_reg[19]_i_1_n_5\,
      O(1) => \rx_frame_count_reg[19]_i_1_n_6\,
      O(0) => \rx_frame_count_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^rx_frame_count\(19 downto 16)
    );
\rx_frame_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[3]_i_1_n_6\,
      Q => \^rx_frame_count\(1),
      R => rst
    );
\rx_frame_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[23]_i_1_n_7\,
      Q => \^rx_frame_count\(20),
      R => rst
    );
\rx_frame_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[23]_i_1_n_6\,
      Q => \^rx_frame_count\(21),
      R => rst
    );
\rx_frame_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[23]_i_1_n_5\,
      Q => \^rx_frame_count\(22),
      R => rst
    );
\rx_frame_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[23]_i_1_n_4\,
      Q => \^rx_frame_count\(23),
      R => rst
    );
\rx_frame_count_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_frame_count_reg[19]_i_1_n_0\,
      CO(3) => \rx_frame_count_reg[23]_i_1_n_0\,
      CO(2) => \rx_frame_count_reg[23]_i_1_n_1\,
      CO(1) => \rx_frame_count_reg[23]_i_1_n_2\,
      CO(0) => \rx_frame_count_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rx_frame_count_reg[23]_i_1_n_4\,
      O(2) => \rx_frame_count_reg[23]_i_1_n_5\,
      O(1) => \rx_frame_count_reg[23]_i_1_n_6\,
      O(0) => \rx_frame_count_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^rx_frame_count\(23 downto 20)
    );
\rx_frame_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[27]_i_1_n_7\,
      Q => \^rx_frame_count\(24),
      R => rst
    );
\rx_frame_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[27]_i_1_n_6\,
      Q => \^rx_frame_count\(25),
      R => rst
    );
\rx_frame_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[27]_i_1_n_5\,
      Q => \^rx_frame_count\(26),
      R => rst
    );
\rx_frame_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[27]_i_1_n_4\,
      Q => \^rx_frame_count\(27),
      R => rst
    );
\rx_frame_count_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_frame_count_reg[23]_i_1_n_0\,
      CO(3) => \rx_frame_count_reg[27]_i_1_n_0\,
      CO(2) => \rx_frame_count_reg[27]_i_1_n_1\,
      CO(1) => \rx_frame_count_reg[27]_i_1_n_2\,
      CO(0) => \rx_frame_count_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rx_frame_count_reg[27]_i_1_n_4\,
      O(2) => \rx_frame_count_reg[27]_i_1_n_5\,
      O(1) => \rx_frame_count_reg[27]_i_1_n_6\,
      O(0) => \rx_frame_count_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^rx_frame_count\(27 downto 24)
    );
\rx_frame_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[31]_i_2_n_7\,
      Q => \^rx_frame_count\(28),
      R => rst
    );
\rx_frame_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[31]_i_2_n_6\,
      Q => \^rx_frame_count\(29),
      R => rst
    );
\rx_frame_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[3]_i_1_n_5\,
      Q => \^rx_frame_count\(2),
      R => rst
    );
\rx_frame_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[31]_i_2_n_5\,
      Q => \^rx_frame_count\(30),
      R => rst
    );
\rx_frame_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[31]_i_2_n_4\,
      Q => \^rx_frame_count\(31),
      R => rst
    );
\rx_frame_count_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_frame_count_reg[27]_i_1_n_0\,
      CO(3) => \NLW_rx_frame_count_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \rx_frame_count_reg[31]_i_2_n_1\,
      CO(1) => \rx_frame_count_reg[31]_i_2_n_2\,
      CO(0) => \rx_frame_count_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rx_frame_count_reg[31]_i_2_n_4\,
      O(2) => \rx_frame_count_reg[31]_i_2_n_5\,
      O(1) => \rx_frame_count_reg[31]_i_2_n_6\,
      O(0) => \rx_frame_count_reg[31]_i_2_n_7\,
      S(3 downto 0) => \^rx_frame_count\(31 downto 28)
    );
\rx_frame_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[3]_i_1_n_4\,
      Q => \^rx_frame_count\(3),
      R => rst
    );
\rx_frame_count_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rx_frame_count_reg[3]_i_1_n_0\,
      CO(2) => \rx_frame_count_reg[3]_i_1_n_1\,
      CO(1) => \rx_frame_count_reg[3]_i_1_n_2\,
      CO(0) => \rx_frame_count_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \rx_frame_count_reg[3]_i_1_n_4\,
      O(2) => \rx_frame_count_reg[3]_i_1_n_5\,
      O(1) => \rx_frame_count_reg[3]_i_1_n_6\,
      O(0) => \rx_frame_count_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^rx_frame_count\(3 downto 1),
      S(0) => \rx_frame_count[3]_i_2_n_0\
    );
\rx_frame_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[7]_i_1_n_7\,
      Q => \^rx_frame_count\(4),
      R => rst
    );
\rx_frame_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[7]_i_1_n_6\,
      Q => \^rx_frame_count\(5),
      R => rst
    );
\rx_frame_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[7]_i_1_n_5\,
      Q => \^rx_frame_count\(6),
      R => rst
    );
\rx_frame_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[7]_i_1_n_4\,
      Q => \^rx_frame_count\(7),
      R => rst
    );
\rx_frame_count_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_frame_count_reg[3]_i_1_n_0\,
      CO(3) => \rx_frame_count_reg[7]_i_1_n_0\,
      CO(2) => \rx_frame_count_reg[7]_i_1_n_1\,
      CO(1) => \rx_frame_count_reg[7]_i_1_n_2\,
      CO(0) => \rx_frame_count_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rx_frame_count_reg[7]_i_1_n_4\,
      O(2) => \rx_frame_count_reg[7]_i_1_n_5\,
      O(1) => \rx_frame_count_reg[7]_i_1_n_6\,
      O(0) => \rx_frame_count_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^rx_frame_count\(7 downto 4)
    );
\rx_frame_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[11]_i_1_n_7\,
      Q => \^rx_frame_count\(8),
      R => rst
    );
\rx_frame_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_frame_count[31]_i_1_n_0\,
      D => \rx_frame_count_reg[11]_i_1_n_6\,
      Q => \^rx_frame_count\(9),
      R => rst
    );
\rx_seq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(0),
      Q => Q(0),
      R => rst
    );
\rx_seq_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(10),
      Q => Q(10),
      R => rst
    );
\rx_seq_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(11),
      Q => Q(11),
      R => rst
    );
\rx_seq_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(12),
      Q => Q(12),
      R => rst
    );
\rx_seq_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(13),
      Q => Q(13),
      R => rst
    );
\rx_seq_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(14),
      Q => Q(14),
      R => rst
    );
\rx_seq_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(15),
      Q => Q(15),
      R => rst
    );
\rx_seq_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(16),
      Q => Q(16),
      R => rst
    );
\rx_seq_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(17),
      Q => Q(17),
      R => rst
    );
\rx_seq_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(18),
      Q => Q(18),
      R => rst
    );
\rx_seq_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(19),
      Q => Q(19),
      R => rst
    );
\rx_seq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(1),
      Q => Q(1),
      R => rst
    );
\rx_seq_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(20),
      Q => Q(20),
      R => rst
    );
\rx_seq_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(21),
      Q => Q(21),
      R => rst
    );
\rx_seq_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(22),
      Q => Q(22),
      R => rst
    );
\rx_seq_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(23),
      Q => Q(23),
      R => rst
    );
\rx_seq_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(24),
      Q => Q(24),
      R => rst
    );
\rx_seq_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(25),
      Q => Q(25),
      R => rst
    );
\rx_seq_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(26),
      Q => Q(26),
      R => rst
    );
\rx_seq_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(27),
      Q => Q(27),
      R => rst
    );
\rx_seq_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(28),
      Q => Q(28),
      R => rst
    );
\rx_seq_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(29),
      Q => Q(29),
      R => rst
    );
\rx_seq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(2),
      Q => Q(2),
      R => rst
    );
\rx_seq_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(30),
      Q => Q(30),
      R => rst
    );
\rx_seq_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(31),
      Q => Q(31),
      R => rst
    );
\rx_seq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(3),
      Q => Q(3),
      R => rst
    );
\rx_seq_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(4),
      Q => Q(4),
      R => rst
    );
\rx_seq_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(5),
      Q => Q(5),
      R => rst
    );
\rx_seq_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(6),
      Q => Q(6),
      R => rst
    );
\rx_seq_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(7),
      Q => Q(7),
      R => rst
    );
\rx_seq_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(8),
      Q => Q(8),
      R => rst
    );
\rx_seq_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_valid_i_1_n_0,
      D => seq(9),
      Q => Q(9),
      R => rst
    );
\seq_latched_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(0),
      Q => seq(0),
      R => rst
    );
\seq_latched_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(10),
      Q => seq(10),
      R => rst
    );
\seq_latched_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(11),
      Q => seq(11),
      R => rst
    );
\seq_latched_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(12),
      Q => seq(12),
      R => rst
    );
\seq_latched_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(13),
      Q => seq(13),
      R => rst
    );
\seq_latched_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(14),
      Q => seq(14),
      R => rst
    );
\seq_latched_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(15),
      Q => seq(15),
      R => rst
    );
\seq_latched_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(16),
      Q => seq(16),
      R => rst
    );
\seq_latched_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(17),
      Q => seq(17),
      R => rst
    );
\seq_latched_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(18),
      Q => seq(18),
      R => rst
    );
\seq_latched_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(19),
      Q => seq(19),
      R => rst
    );
\seq_latched_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(1),
      Q => seq(1),
      R => rst
    );
\seq_latched_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(20),
      Q => seq(20),
      R => rst
    );
\seq_latched_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(21),
      Q => seq(21),
      R => rst
    );
\seq_latched_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(22),
      Q => seq(22),
      R => rst
    );
\seq_latched_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(23),
      Q => seq(23),
      R => rst
    );
\seq_latched_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(24),
      Q => seq(24),
      R => rst
    );
\seq_latched_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(25),
      Q => seq(25),
      R => rst
    );
\seq_latched_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(26),
      Q => seq(26),
      R => rst
    );
\seq_latched_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(27),
      Q => seq(27),
      R => rst
    );
\seq_latched_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(28),
      Q => seq(28),
      R => rst
    );
\seq_latched_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(29),
      Q => seq(29),
      R => rst
    );
\seq_latched_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(2),
      Q => seq(2),
      R => rst
    );
\seq_latched_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(30),
      Q => seq(30),
      R => rst
    );
\seq_latched_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(31),
      Q => seq(31),
      R => rst
    );
\seq_latched_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(3),
      Q => seq(3),
      R => rst
    );
\seq_latched_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(4),
      Q => seq(4),
      R => rst
    );
\seq_latched_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(5),
      Q => seq(5),
      R => rst
    );
\seq_latched_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(6),
      Q => seq(6),
      R => rst
    );
\seq_latched_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(7),
      Q => seq(7),
      R => rst
    );
\seq_latched_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(8),
      Q => seq(8),
      R => rst
    );
\seq_latched_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tvalid_reg_0(0),
      D => \m_axis_tdata_reg[63]\(9),
      Q => seq(9),
      R => rst
    );
\state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0308"
    )
        port map (
      I0 => p_0_in8_out,
      I1 => m_axis_tvalid_reg,
      I2 => \^state_reg[1]_1\,
      I3 => \^state_reg[1]_0\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200F00"
    )
        port map (
      I0 => m_axis_tkeep(0),
      I1 => rx_axis_tlast,
      I2 => m_axis_tvalid_reg,
      I3 => \^state_reg[1]_1\,
      I4 => \^state_reg[1]_0\,
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \^state_reg[1]_0\,
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \^state_reg[1]_1\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_optical_stream_to_gtx32 is
  port (
    gtx_tx_valid : out STD_LOGIC;
    gtx_tx_last : out STD_LOGIC;
    gtx_tx_word_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gtx_tx_word_index : out STD_LOGIC_VECTOR ( 0 to 0 );
    \tx_keep_reg[7]\ : out STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    prev_valid_reg : out STD_LOGIC;
    p_0_in8_out : out STD_LOGIC;
    m_axis_tlast_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast_reg_0 : out STD_LOGIC;
    m_axis_tlast_reg_1 : out STD_LOGIC;
    m_axis_tlast_reg_2 : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    optical_tx_last : in STD_LOGIC;
    tx_valid_reg : in STD_LOGIC;
    rx_axis_tvalid : in STD_LOGIC;
    prev_valid_reg_0 : in STD_LOGIC;
    optical_tx_data : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_optical_stream_to_gtx32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_optical_stream_to_gtx32 is
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal frame_data : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \frame_data[63]_i_1_n_0\ : STD_LOGIC;
  signal frame_last : STD_LOGIC;
  signal gtx_tx_last_i_1_n_0 : STD_LOGIC;
  signal \^gtx_tx_valid\ : STD_LOGIC;
  signal \^gtx_tx_word_count\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \gtx_tx_word_count[31]_i_1_n_0\ : STD_LOGIC;
  signal \gtx_tx_word_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \gtx_tx_word_count_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^gtx_tx_word_index\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gtx_tx_word_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \i__i_2_n_0\ : STD_LOGIC;
  signal \i__i_3__0_n_0\ : STD_LOGIC;
  signal \i__i_3_n_0\ : STD_LOGIC;
  signal \i__i_4__0_n_0\ : STD_LOGIC;
  signal \i__i_4_n_0\ : STD_LOGIC;
  signal \i__i_5_n_0\ : STD_LOGIC;
  signal \i__i_6_n_0\ : STD_LOGIC;
  signal \i__i_7_n_0\ : STD_LOGIC;
  signal \i__i_8_n_0\ : STD_LOGIC;
  signal \i__i_9_n_0\ : STD_LOGIC;
  signal m_axis_tlast_i_10_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_7_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_8_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_9_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_gtx_tx_word_count_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gtx_tx_data[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gtx_tx_data[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gtx_tx_data[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gtx_tx_data[12]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gtx_tx_data[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gtx_tx_data[14]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gtx_tx_data[15]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gtx_tx_data[16]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gtx_tx_data[17]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gtx_tx_data[18]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gtx_tx_data[19]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gtx_tx_data[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gtx_tx_data[20]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gtx_tx_data[21]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gtx_tx_data[22]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gtx_tx_data[23]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gtx_tx_data[24]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gtx_tx_data[25]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gtx_tx_data[26]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gtx_tx_data[27]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gtx_tx_data[28]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gtx_tx_data[29]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gtx_tx_data[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gtx_tx_data[30]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gtx_tx_data[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gtx_tx_data[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gtx_tx_data[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gtx_tx_data[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gtx_tx_data[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gtx_tx_data[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gtx_tx_data[9]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of gtx_tx_last_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gtx_tx_word_index[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i__i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i__i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i__i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i__i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m_axis_tlast_i_10 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of m_axis_tlast_i_7 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of m_axis_tlast_i_8 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m_axis_tlast_i_9 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tx_keep[7]_i_2\ : label is "soft_lutpair6";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  gtx_tx_valid <= \^gtx_tx_valid\;
  gtx_tx_word_count(31 downto 0) <= \^gtx_tx_word_count\(31 downto 0);
  gtx_tx_word_index(0) <= \^gtx_tx_word_index\(0);
  state(1 downto 0) <= \^state\(1 downto 0);
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gtx_tx_valid\,
      I1 => rx_axis_tvalid,
      O => prev_valid_reg
    );
\frame_data[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => tx_valid_reg,
      I1 => \^state\(0),
      I2 => \^state\(1),
      O => \frame_data[63]_i_1_n_0\
    );
\frame_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(0),
      Q => frame_data(0),
      R => rst
    );
\frame_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(10),
      Q => frame_data(10),
      R => rst
    );
\frame_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(11),
      Q => frame_data(11),
      R => rst
    );
\frame_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(12),
      Q => frame_data(12),
      R => rst
    );
\frame_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(13),
      Q => frame_data(13),
      R => rst
    );
\frame_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(14),
      Q => frame_data(14),
      R => rst
    );
\frame_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(15),
      Q => frame_data(15),
      R => rst
    );
\frame_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(16),
      Q => frame_data(16),
      R => rst
    );
\frame_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(17),
      Q => frame_data(17),
      R => rst
    );
\frame_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(18),
      Q => frame_data(18),
      R => rst
    );
\frame_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(19),
      Q => frame_data(19),
      R => rst
    );
\frame_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(1),
      Q => frame_data(1),
      R => rst
    );
\frame_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(20),
      Q => frame_data(20),
      R => rst
    );
\frame_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(21),
      Q => frame_data(21),
      R => rst
    );
\frame_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(22),
      Q => frame_data(22),
      R => rst
    );
\frame_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(23),
      Q => frame_data(23),
      R => rst
    );
\frame_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(24),
      Q => frame_data(24),
      R => rst
    );
\frame_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(25),
      Q => frame_data(25),
      R => rst
    );
\frame_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(26),
      Q => frame_data(26),
      R => rst
    );
\frame_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(27),
      Q => frame_data(27),
      R => rst
    );
\frame_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(28),
      Q => frame_data(28),
      R => rst
    );
\frame_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(29),
      Q => frame_data(29),
      R => rst
    );
\frame_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(2),
      Q => frame_data(2),
      R => rst
    );
\frame_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(30),
      Q => frame_data(30),
      R => rst
    );
\frame_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(31),
      Q => frame_data(31),
      R => rst
    );
\frame_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(32),
      Q => frame_data(32),
      R => rst
    );
\frame_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(33),
      Q => frame_data(33),
      R => rst
    );
\frame_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(34),
      Q => frame_data(34),
      R => rst
    );
\frame_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(35),
      Q => frame_data(35),
      R => rst
    );
\frame_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(36),
      Q => frame_data(36),
      R => rst
    );
\frame_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(37),
      Q => frame_data(37),
      R => rst
    );
\frame_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(38),
      Q => frame_data(38),
      R => rst
    );
\frame_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(39),
      Q => frame_data(39),
      R => rst
    );
\frame_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(3),
      Q => frame_data(3),
      R => rst
    );
\frame_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(40),
      Q => frame_data(40),
      R => rst
    );
\frame_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(41),
      Q => frame_data(41),
      R => rst
    );
\frame_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(42),
      Q => frame_data(42),
      R => rst
    );
\frame_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(43),
      Q => frame_data(43),
      R => rst
    );
\frame_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(44),
      Q => frame_data(44),
      R => rst
    );
\frame_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(45),
      Q => frame_data(45),
      R => rst
    );
\frame_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(46),
      Q => frame_data(46),
      R => rst
    );
\frame_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(47),
      Q => frame_data(47),
      R => rst
    );
\frame_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(48),
      Q => frame_data(48),
      R => rst
    );
\frame_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(49),
      Q => frame_data(49),
      R => rst
    );
\frame_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(4),
      Q => frame_data(4),
      R => rst
    );
\frame_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(50),
      Q => frame_data(50),
      R => rst
    );
\frame_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(51),
      Q => frame_data(51),
      R => rst
    );
\frame_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(52),
      Q => frame_data(52),
      R => rst
    );
\frame_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(53),
      Q => frame_data(53),
      R => rst
    );
\frame_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(54),
      Q => frame_data(54),
      R => rst
    );
\frame_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(55),
      Q => frame_data(55),
      R => rst
    );
\frame_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(56),
      Q => frame_data(56),
      R => rst
    );
\frame_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(57),
      Q => frame_data(57),
      R => rst
    );
\frame_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(58),
      Q => frame_data(58),
      R => rst
    );
\frame_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(59),
      Q => frame_data(59),
      R => rst
    );
\frame_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(5),
      Q => frame_data(5),
      R => rst
    );
\frame_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(60),
      Q => frame_data(60),
      R => rst
    );
\frame_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(61),
      Q => frame_data(61),
      R => rst
    );
\frame_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(62),
      Q => frame_data(62),
      R => rst
    );
\frame_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(63),
      Q => frame_data(63),
      R => rst
    );
\frame_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(6),
      Q => frame_data(6),
      R => rst
    );
\frame_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(7),
      Q => frame_data(7),
      R => rst
    );
\frame_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(8),
      Q => frame_data(8),
      R => rst
    );
\frame_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_data(9),
      Q => frame_data(9),
      R => rst
    );
frame_last_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_data[63]_i_1_n_0\,
      D => optical_tx_last,
      Q => frame_last,
      R => rst
    );
\gtx_tx_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(32),
      I1 => \^state\(1),
      I2 => frame_data(0),
      O => p_1_in(0)
    );
\gtx_tx_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(42),
      I1 => \^state\(1),
      I2 => frame_data(10),
      O => p_1_in(10)
    );
\gtx_tx_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(43),
      I1 => \^state\(1),
      I2 => frame_data(11),
      O => p_1_in(11)
    );
\gtx_tx_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(44),
      I1 => \^state\(1),
      I2 => frame_data(12),
      O => p_1_in(12)
    );
\gtx_tx_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(45),
      I1 => \^state\(1),
      I2 => frame_data(13),
      O => p_1_in(13)
    );
\gtx_tx_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(46),
      I1 => \^state\(1),
      I2 => frame_data(14),
      O => p_1_in(14)
    );
\gtx_tx_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(47),
      I1 => \^state\(1),
      I2 => frame_data(15),
      O => p_1_in(15)
    );
\gtx_tx_data[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(48),
      I1 => \^state\(1),
      I2 => frame_data(16),
      O => p_1_in(16)
    );
\gtx_tx_data[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(49),
      I1 => \^state\(1),
      I2 => frame_data(17),
      O => p_1_in(17)
    );
\gtx_tx_data[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(50),
      I1 => \^state\(1),
      I2 => frame_data(18),
      O => p_1_in(18)
    );
\gtx_tx_data[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(51),
      I1 => \^state\(1),
      I2 => frame_data(19),
      O => p_1_in(19)
    );
\gtx_tx_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(33),
      I1 => \^state\(1),
      I2 => frame_data(1),
      O => p_1_in(1)
    );
\gtx_tx_data[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(52),
      I1 => \^state\(1),
      I2 => frame_data(20),
      O => p_1_in(20)
    );
\gtx_tx_data[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(53),
      I1 => \^state\(1),
      I2 => frame_data(21),
      O => p_1_in(21)
    );
\gtx_tx_data[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(54),
      I1 => \^state\(1),
      I2 => frame_data(22),
      O => p_1_in(22)
    );
\gtx_tx_data[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(55),
      I1 => \^state\(1),
      I2 => frame_data(23),
      O => p_1_in(23)
    );
\gtx_tx_data[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(56),
      I1 => \^state\(1),
      I2 => frame_data(24),
      O => p_1_in(24)
    );
\gtx_tx_data[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(57),
      I1 => \^state\(1),
      I2 => frame_data(25),
      O => p_1_in(25)
    );
\gtx_tx_data[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(58),
      I1 => \^state\(1),
      I2 => frame_data(26),
      O => p_1_in(26)
    );
\gtx_tx_data[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(59),
      I1 => \^state\(1),
      I2 => frame_data(27),
      O => p_1_in(27)
    );
\gtx_tx_data[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(60),
      I1 => \^state\(1),
      I2 => frame_data(28),
      O => p_1_in(28)
    );
\gtx_tx_data[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(61),
      I1 => \^state\(1),
      I2 => frame_data(29),
      O => p_1_in(29)
    );
\gtx_tx_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(34),
      I1 => \^state\(1),
      I2 => frame_data(2),
      O => p_1_in(2)
    );
\gtx_tx_data[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(62),
      I1 => \^state\(1),
      I2 => frame_data(30),
      O => p_1_in(30)
    );
\gtx_tx_data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(63),
      I1 => \^state\(1),
      I2 => frame_data(31),
      O => p_1_in(31)
    );
\gtx_tx_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(35),
      I1 => \^state\(1),
      I2 => frame_data(3),
      O => p_1_in(3)
    );
\gtx_tx_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(36),
      I1 => \^state\(1),
      I2 => frame_data(4),
      O => p_1_in(4)
    );
\gtx_tx_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(37),
      I1 => \^state\(1),
      I2 => frame_data(5),
      O => p_1_in(5)
    );
\gtx_tx_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(38),
      I1 => \^state\(1),
      I2 => frame_data(6),
      O => p_1_in(6)
    );
\gtx_tx_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(39),
      I1 => \^state\(1),
      I2 => frame_data(7),
      O => p_1_in(7)
    );
\gtx_tx_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(40),
      I1 => \^state\(1),
      I2 => frame_data(8),
      O => p_1_in(8)
    );
\gtx_tx_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => frame_data(41),
      I1 => \^state\(1),
      I2 => frame_data(9),
      O => p_1_in(9)
    );
\gtx_tx_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(0),
      Q => \^q\(0),
      R => rst
    );
\gtx_tx_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(10),
      Q => \^q\(10),
      R => rst
    );
\gtx_tx_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(11),
      Q => \^q\(11),
      R => rst
    );
\gtx_tx_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(12),
      Q => \^q\(12),
      R => rst
    );
\gtx_tx_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(13),
      Q => \^q\(13),
      R => rst
    );
\gtx_tx_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(14),
      Q => \^q\(14),
      R => rst
    );
\gtx_tx_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(15),
      Q => \^q\(15),
      R => rst
    );
\gtx_tx_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(16),
      Q => \^q\(16),
      R => rst
    );
\gtx_tx_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(17),
      Q => \^q\(17),
      R => rst
    );
\gtx_tx_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(18),
      Q => \^q\(18),
      R => rst
    );
\gtx_tx_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(19),
      Q => \^q\(19),
      R => rst
    );
\gtx_tx_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(1),
      Q => \^q\(1),
      R => rst
    );
\gtx_tx_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(20),
      Q => \^q\(20),
      R => rst
    );
\gtx_tx_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(21),
      Q => \^q\(21),
      R => rst
    );
\gtx_tx_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(22),
      Q => \^q\(22),
      R => rst
    );
\gtx_tx_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(23),
      Q => \^q\(23),
      R => rst
    );
\gtx_tx_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(24),
      Q => \^q\(24),
      R => rst
    );
\gtx_tx_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(25),
      Q => \^q\(25),
      R => rst
    );
\gtx_tx_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(26),
      Q => \^q\(26),
      R => rst
    );
\gtx_tx_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(27),
      Q => \^q\(27),
      R => rst
    );
\gtx_tx_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(28),
      Q => \^q\(28),
      R => rst
    );
\gtx_tx_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(29),
      Q => \^q\(29),
      R => rst
    );
\gtx_tx_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(2),
      Q => \^q\(2),
      R => rst
    );
\gtx_tx_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(30),
      Q => \^q\(30),
      R => rst
    );
\gtx_tx_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(31),
      Q => \^q\(31),
      R => rst
    );
\gtx_tx_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(3),
      Q => \^q\(3),
      R => rst
    );
\gtx_tx_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(4),
      Q => \^q\(4),
      R => rst
    );
\gtx_tx_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(5),
      Q => \^q\(5),
      R => rst
    );
\gtx_tx_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(6),
      Q => \^q\(6),
      R => rst
    );
\gtx_tx_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(7),
      Q => \^q\(7),
      R => rst
    );
\gtx_tx_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(8),
      Q => \^q\(8),
      R => rst
    );
\gtx_tx_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => p_1_in(9),
      Q => \^q\(9),
      R => rst
    );
gtx_tx_last_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^state\(0),
      I1 => frame_last,
      I2 => \^state\(1),
      O => gtx_tx_last_i_1_n_0
    );
gtx_tx_last_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => gtx_tx_last_i_1_n_0,
      Q => gtx_tx_last,
      R => rst
    );
gtx_tx_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \gtx_tx_word_count[31]_i_1_n_0\,
      Q => \^gtx_tx_valid\,
      R => rst
    );
\gtx_tx_word_count[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      O => \gtx_tx_word_count[31]_i_1_n_0\
    );
\gtx_tx_word_count[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gtx_tx_word_count\(0),
      O => \gtx_tx_word_count[3]_i_2_n_0\
    );
\gtx_tx_word_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[3]_i_1_n_7\,
      Q => \^gtx_tx_word_count\(0),
      R => rst
    );
\gtx_tx_word_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[11]_i_1_n_5\,
      Q => \^gtx_tx_word_count\(10),
      R => rst
    );
\gtx_tx_word_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[11]_i_1_n_4\,
      Q => \^gtx_tx_word_count\(11),
      R => rst
    );
\gtx_tx_word_count_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gtx_tx_word_count_reg[7]_i_1_n_0\,
      CO(3) => \gtx_tx_word_count_reg[11]_i_1_n_0\,
      CO(2) => \gtx_tx_word_count_reg[11]_i_1_n_1\,
      CO(1) => \gtx_tx_word_count_reg[11]_i_1_n_2\,
      CO(0) => \gtx_tx_word_count_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gtx_tx_word_count_reg[11]_i_1_n_4\,
      O(2) => \gtx_tx_word_count_reg[11]_i_1_n_5\,
      O(1) => \gtx_tx_word_count_reg[11]_i_1_n_6\,
      O(0) => \gtx_tx_word_count_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^gtx_tx_word_count\(11 downto 8)
    );
\gtx_tx_word_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[15]_i_1_n_7\,
      Q => \^gtx_tx_word_count\(12),
      R => rst
    );
\gtx_tx_word_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[15]_i_1_n_6\,
      Q => \^gtx_tx_word_count\(13),
      R => rst
    );
\gtx_tx_word_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[15]_i_1_n_5\,
      Q => \^gtx_tx_word_count\(14),
      R => rst
    );
\gtx_tx_word_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[15]_i_1_n_4\,
      Q => \^gtx_tx_word_count\(15),
      R => rst
    );
\gtx_tx_word_count_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gtx_tx_word_count_reg[11]_i_1_n_0\,
      CO(3) => \gtx_tx_word_count_reg[15]_i_1_n_0\,
      CO(2) => \gtx_tx_word_count_reg[15]_i_1_n_1\,
      CO(1) => \gtx_tx_word_count_reg[15]_i_1_n_2\,
      CO(0) => \gtx_tx_word_count_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gtx_tx_word_count_reg[15]_i_1_n_4\,
      O(2) => \gtx_tx_word_count_reg[15]_i_1_n_5\,
      O(1) => \gtx_tx_word_count_reg[15]_i_1_n_6\,
      O(0) => \gtx_tx_word_count_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^gtx_tx_word_count\(15 downto 12)
    );
\gtx_tx_word_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[19]_i_1_n_7\,
      Q => \^gtx_tx_word_count\(16),
      R => rst
    );
\gtx_tx_word_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[19]_i_1_n_6\,
      Q => \^gtx_tx_word_count\(17),
      R => rst
    );
\gtx_tx_word_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[19]_i_1_n_5\,
      Q => \^gtx_tx_word_count\(18),
      R => rst
    );
\gtx_tx_word_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[19]_i_1_n_4\,
      Q => \^gtx_tx_word_count\(19),
      R => rst
    );
\gtx_tx_word_count_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gtx_tx_word_count_reg[15]_i_1_n_0\,
      CO(3) => \gtx_tx_word_count_reg[19]_i_1_n_0\,
      CO(2) => \gtx_tx_word_count_reg[19]_i_1_n_1\,
      CO(1) => \gtx_tx_word_count_reg[19]_i_1_n_2\,
      CO(0) => \gtx_tx_word_count_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gtx_tx_word_count_reg[19]_i_1_n_4\,
      O(2) => \gtx_tx_word_count_reg[19]_i_1_n_5\,
      O(1) => \gtx_tx_word_count_reg[19]_i_1_n_6\,
      O(0) => \gtx_tx_word_count_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^gtx_tx_word_count\(19 downto 16)
    );
\gtx_tx_word_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[3]_i_1_n_6\,
      Q => \^gtx_tx_word_count\(1),
      R => rst
    );
\gtx_tx_word_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[23]_i_1_n_7\,
      Q => \^gtx_tx_word_count\(20),
      R => rst
    );
\gtx_tx_word_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[23]_i_1_n_6\,
      Q => \^gtx_tx_word_count\(21),
      R => rst
    );
\gtx_tx_word_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[23]_i_1_n_5\,
      Q => \^gtx_tx_word_count\(22),
      R => rst
    );
\gtx_tx_word_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[23]_i_1_n_4\,
      Q => \^gtx_tx_word_count\(23),
      R => rst
    );
\gtx_tx_word_count_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gtx_tx_word_count_reg[19]_i_1_n_0\,
      CO(3) => \gtx_tx_word_count_reg[23]_i_1_n_0\,
      CO(2) => \gtx_tx_word_count_reg[23]_i_1_n_1\,
      CO(1) => \gtx_tx_word_count_reg[23]_i_1_n_2\,
      CO(0) => \gtx_tx_word_count_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gtx_tx_word_count_reg[23]_i_1_n_4\,
      O(2) => \gtx_tx_word_count_reg[23]_i_1_n_5\,
      O(1) => \gtx_tx_word_count_reg[23]_i_1_n_6\,
      O(0) => \gtx_tx_word_count_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^gtx_tx_word_count\(23 downto 20)
    );
\gtx_tx_word_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[27]_i_1_n_7\,
      Q => \^gtx_tx_word_count\(24),
      R => rst
    );
\gtx_tx_word_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[27]_i_1_n_6\,
      Q => \^gtx_tx_word_count\(25),
      R => rst
    );
\gtx_tx_word_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[27]_i_1_n_5\,
      Q => \^gtx_tx_word_count\(26),
      R => rst
    );
\gtx_tx_word_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[27]_i_1_n_4\,
      Q => \^gtx_tx_word_count\(27),
      R => rst
    );
\gtx_tx_word_count_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gtx_tx_word_count_reg[23]_i_1_n_0\,
      CO(3) => \gtx_tx_word_count_reg[27]_i_1_n_0\,
      CO(2) => \gtx_tx_word_count_reg[27]_i_1_n_1\,
      CO(1) => \gtx_tx_word_count_reg[27]_i_1_n_2\,
      CO(0) => \gtx_tx_word_count_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gtx_tx_word_count_reg[27]_i_1_n_4\,
      O(2) => \gtx_tx_word_count_reg[27]_i_1_n_5\,
      O(1) => \gtx_tx_word_count_reg[27]_i_1_n_6\,
      O(0) => \gtx_tx_word_count_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^gtx_tx_word_count\(27 downto 24)
    );
\gtx_tx_word_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[31]_i_2_n_7\,
      Q => \^gtx_tx_word_count\(28),
      R => rst
    );
\gtx_tx_word_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[31]_i_2_n_6\,
      Q => \^gtx_tx_word_count\(29),
      R => rst
    );
\gtx_tx_word_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[3]_i_1_n_5\,
      Q => \^gtx_tx_word_count\(2),
      R => rst
    );
\gtx_tx_word_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[31]_i_2_n_5\,
      Q => \^gtx_tx_word_count\(30),
      R => rst
    );
\gtx_tx_word_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[31]_i_2_n_4\,
      Q => \^gtx_tx_word_count\(31),
      R => rst
    );
\gtx_tx_word_count_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gtx_tx_word_count_reg[27]_i_1_n_0\,
      CO(3) => \NLW_gtx_tx_word_count_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \gtx_tx_word_count_reg[31]_i_2_n_1\,
      CO(1) => \gtx_tx_word_count_reg[31]_i_2_n_2\,
      CO(0) => \gtx_tx_word_count_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gtx_tx_word_count_reg[31]_i_2_n_4\,
      O(2) => \gtx_tx_word_count_reg[31]_i_2_n_5\,
      O(1) => \gtx_tx_word_count_reg[31]_i_2_n_6\,
      O(0) => \gtx_tx_word_count_reg[31]_i_2_n_7\,
      S(3 downto 0) => \^gtx_tx_word_count\(31 downto 28)
    );
\gtx_tx_word_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[3]_i_1_n_4\,
      Q => \^gtx_tx_word_count\(3),
      R => rst
    );
\gtx_tx_word_count_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gtx_tx_word_count_reg[3]_i_1_n_0\,
      CO(2) => \gtx_tx_word_count_reg[3]_i_1_n_1\,
      CO(1) => \gtx_tx_word_count_reg[3]_i_1_n_2\,
      CO(0) => \gtx_tx_word_count_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \gtx_tx_word_count_reg[3]_i_1_n_4\,
      O(2) => \gtx_tx_word_count_reg[3]_i_1_n_5\,
      O(1) => \gtx_tx_word_count_reg[3]_i_1_n_6\,
      O(0) => \gtx_tx_word_count_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^gtx_tx_word_count\(3 downto 1),
      S(0) => \gtx_tx_word_count[3]_i_2_n_0\
    );
\gtx_tx_word_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[7]_i_1_n_7\,
      Q => \^gtx_tx_word_count\(4),
      R => rst
    );
\gtx_tx_word_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[7]_i_1_n_6\,
      Q => \^gtx_tx_word_count\(5),
      R => rst
    );
\gtx_tx_word_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[7]_i_1_n_5\,
      Q => \^gtx_tx_word_count\(6),
      R => rst
    );
\gtx_tx_word_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[7]_i_1_n_4\,
      Q => \^gtx_tx_word_count\(7),
      R => rst
    );
\gtx_tx_word_count_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gtx_tx_word_count_reg[3]_i_1_n_0\,
      CO(3) => \gtx_tx_word_count_reg[7]_i_1_n_0\,
      CO(2) => \gtx_tx_word_count_reg[7]_i_1_n_1\,
      CO(1) => \gtx_tx_word_count_reg[7]_i_1_n_2\,
      CO(0) => \gtx_tx_word_count_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gtx_tx_word_count_reg[7]_i_1_n_4\,
      O(2) => \gtx_tx_word_count_reg[7]_i_1_n_5\,
      O(1) => \gtx_tx_word_count_reg[7]_i_1_n_6\,
      O(0) => \gtx_tx_word_count_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^gtx_tx_word_count\(7 downto 4)
    );
\gtx_tx_word_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[11]_i_1_n_7\,
      Q => \^gtx_tx_word_count\(8),
      R => rst
    );
\gtx_tx_word_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \gtx_tx_word_count[31]_i_1_n_0\,
      D => \gtx_tx_word_count_reg[11]_i_1_n_6\,
      Q => \^gtx_tx_word_count\(9),
      R => rst
    );
\gtx_tx_word_index[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C4"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^gtx_tx_word_index\(0),
      O => \gtx_tx_word_index[0]_i_1_n_0\
    );
\gtx_tx_word_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \gtx_tx_word_index[0]_i_1_n_0\,
      Q => \^gtx_tx_word_index\(0),
      R => rst
    );
\i__i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => prev_valid_reg_0,
      I1 => \i__i_2_n_0\,
      I2 => \i__i_3_n_0\,
      I3 => \i__i_4_n_0\,
      I4 => \i__i_5_n_0\,
      O => p_0_in8_out
    );
\i__i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(10),
      I2 => \^q\(12),
      I3 => \^q\(14),
      I4 => \i__i_3__0_n_0\,
      O => m_axis_tlast_reg_2
    );
\i__i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^q\(12),
      I2 => \^q\(15),
      I3 => \^q\(14),
      I4 => \i__i_6_n_0\,
      O => \i__i_2_n_0\
    );
\i__i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(6),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \i__i_4__0_n_0\,
      O => m_axis_tlast_reg_1
    );
\i__i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \^q\(19),
      I1 => \^q\(21),
      I2 => \^q\(30),
      I3 => \^q\(17),
      I4 => \i__i_7_n_0\,
      O => \i__i_3_n_0\
    );
\i__i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(7),
      I3 => \^q\(5),
      O => \i__i_3__0_n_0\
    );
\i__i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(29),
      I1 => \^q\(0),
      I2 => \^q\(7),
      I3 => \^q\(31),
      I4 => \i__i_8_n_0\,
      O => \i__i_4_n_0\
    );
\i__i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(9),
      I2 => \^q\(15),
      I3 => \^q\(13),
      O => \i__i_4__0_n_0\
    );
\i__i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(20),
      I2 => \^q\(3),
      I3 => \^q\(22),
      I4 => \i__i_9_n_0\,
      O => \i__i_5_n_0\
    );
\i__i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      I2 => \^q\(8),
      I3 => \^q\(9),
      O => \i__i_6_n_0\
    );
\i__i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(24),
      I1 => \^q\(23),
      I2 => \^q\(28),
      I3 => \^q\(26),
      O => \i__i_7_n_0\
    );
\i__i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(27),
      I2 => \^q\(2),
      I3 => \^q\(25),
      O => \i__i_8_n_0\
    );
\i__i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(18),
      I1 => \^q\(5),
      I2 => \^q\(16),
      I3 => \^q\(6),
      O => \i__i_9_n_0\
    );
m_axis_tlast_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(17),
      I1 => \^q\(30),
      I2 => \^q\(21),
      I3 => \^q\(19),
      O => m_axis_tlast_i_10_n_0
    );
m_axis_tlast_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i__i_8_n_0\,
      I1 => m_axis_tlast_i_7_n_0,
      I2 => \i__i_9_n_0\,
      I3 => m_axis_tlast_i_8_n_0,
      O => m_axis_tlast_reg_0
    );
m_axis_tlast_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i__i_6_n_0\,
      I1 => m_axis_tlast_i_9_n_0,
      I2 => \i__i_7_n_0\,
      I3 => m_axis_tlast_i_10_n_0,
      O => m_axis_tlast_reg
    );
m_axis_tlast_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(31),
      I1 => \^q\(7),
      I2 => \^q\(0),
      I3 => \^q\(29),
      O => m_axis_tlast_i_7_n_0
    );
m_axis_tlast_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(22),
      I1 => \^q\(3),
      I2 => \^q\(20),
      I3 => \^q\(4),
      O => m_axis_tlast_i_8_n_0
    );
m_axis_tlast_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^q\(15),
      I2 => \^q\(12),
      I3 => \^q\(13),
      O => m_axis_tlast_i_9_n_0
    );
\state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(0),
      I2 => tx_valid_reg,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(0),
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \^state\(0),
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \^state\(1),
      R => rst
    );
\tx_keep[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(0),
      I2 => tx_valid_reg,
      O => \tx_keep_reg[7]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pcie_bar_cmd_rx is
  port (
    fifo_wr_en : out STD_LOGIC;
    status_reg : out STD_LOGIC_VECTOR ( 27 downto 0 );
    fifo_wr_en_reg_0 : out STD_LOGIC;
    fifo_wr_en_reg_1 : out STD_LOGIC;
    fifo_wr_en_reg_2 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rst : in STD_LOGIC;
    commit_count0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    pcie_wr_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcie_wr_en : in STD_LOGIC;
    pcie_wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pcie_bar_cmd_rx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pcie_bar_cmd_rx is
  signal cmd_addr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cmd_addr_reg0 : STD_LOGIC;
  signal \cmd_addr_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal cmd_data_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cmd_data_reg0 : STD_LOGIC;
  signal \cmd_data_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \cmd_data_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \cmd_data_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \cmd_data_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \cmd_data_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \cmd_data_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \cmd_data_reg[31]_i_8_n_0\ : STD_LOGIC;
  signal \cmd_data_reg[31]_i_9_n_0\ : STD_LOGIC;
  signal \commit_count[27]_i_10_n_0\ : STD_LOGIC;
  signal \commit_count[27]_i_7_n_0\ : STD_LOGIC;
  signal \commit_count[27]_i_8_n_0\ : STD_LOGIC;
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
  signal \^status_reg\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \NLW_commit_count_reg[27]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  status_reg(27 downto 0) <= \^status_reg\(27 downto 0);
\cmd_addr_reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => pcie_wr_en,
      I1 => \cmd_addr_reg[31]_i_2_n_0\,
      I2 => \cmd_data_reg[31]_i_3_n_0\,
      O => cmd_addr_reg0
    );
\cmd_addr_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cmd_data_reg[31]_i_4_n_0\,
      I1 => pcie_wr_addr(2),
      I2 => pcie_wr_addr(3),
      I3 => pcie_wr_addr(0),
      I4 => pcie_wr_addr(1),
      I5 => \cmd_data_reg[31]_i_5_n_0\,
      O => \cmd_addr_reg[31]_i_2_n_0\
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
      INIT => X"02"
    )
        port map (
      I0 => pcie_wr_en,
      I1 => \cmd_data_reg[31]_i_2_n_0\,
      I2 => \cmd_data_reg[31]_i_3_n_0\,
      O => cmd_data_reg0
    );
\cmd_data_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \cmd_data_reg[31]_i_4_n_0\,
      I1 => pcie_wr_addr(0),
      I2 => pcie_wr_addr(3),
      I3 => pcie_wr_addr(2),
      I4 => pcie_wr_addr(1),
      I5 => \cmd_data_reg[31]_i_5_n_0\,
      O => \cmd_data_reg[31]_i_2_n_0\
    );
\cmd_data_reg[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cmd_data_reg[31]_i_6_n_0\,
      I1 => pcie_wr_addr(31),
      I2 => pcie_wr_addr(30),
      I3 => pcie_wr_addr(28),
      I4 => pcie_wr_addr(29),
      I5 => \cmd_data_reg[31]_i_7_n_0\,
      O => \cmd_data_reg[31]_i_3_n_0\
    );
\cmd_data_reg[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => pcie_wr_addr(13),
      I1 => pcie_wr_addr(12),
      I2 => pcie_wr_addr(15),
      I3 => pcie_wr_addr(14),
      I4 => \cmd_data_reg[31]_i_8_n_0\,
      O => \cmd_data_reg[31]_i_4_n_0\
    );
\cmd_data_reg[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pcie_wr_addr(6),
      I1 => pcie_wr_addr(7),
      I2 => pcie_wr_addr(4),
      I3 => pcie_wr_addr(5),
      O => \cmd_data_reg[31]_i_5_n_0\
    );
\cmd_data_reg[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pcie_wr_addr(26),
      I1 => pcie_wr_addr(27),
      I2 => pcie_wr_addr(24),
      I3 => pcie_wr_addr(25),
      O => \cmd_data_reg[31]_i_6_n_0\
    );
\cmd_data_reg[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => pcie_wr_addr(21),
      I1 => pcie_wr_addr(20),
      I2 => pcie_wr_addr(23),
      I3 => pcie_wr_addr(22),
      I4 => \cmd_data_reg[31]_i_9_n_0\,
      O => \cmd_data_reg[31]_i_7_n_0\
    );
\cmd_data_reg[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pcie_wr_addr(10),
      I1 => pcie_wr_addr(11),
      I2 => pcie_wr_addr(8),
      I3 => pcie_wr_addr(9),
      O => \cmd_data_reg[31]_i_8_n_0\
    );
\cmd_data_reg[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pcie_wr_addr(18),
      I1 => pcie_wr_addr(19),
      I2 => pcie_wr_addr(16),
      I3 => pcie_wr_addr(17),
      O => \cmd_data_reg[31]_i_9_n_0\
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
      I0 => pcie_wr_addr(16),
      I1 => pcie_wr_addr(17),
      I2 => pcie_wr_addr(14),
      I3 => pcie_wr_addr(15),
      O => \commit_count[27]_i_10_n_0\
    );
\commit_count[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \commit_count[27]_i_7_n_0\,
      I1 => pcie_wr_addr(28),
      I2 => pcie_wr_addr(29),
      I3 => pcie_wr_addr(26),
      I4 => pcie_wr_addr(27),
      I5 => \commit_count[27]_i_8_n_0\,
      O => fifo_wr_en_reg_2
    );
\commit_count[27]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pcie_wr_addr(8),
      I1 => pcie_wr_addr(9),
      I2 => pcie_wr_addr(6),
      I3 => pcie_wr_addr(7),
      O => fifo_wr_en_reg_1
    );
\commit_count[27]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pcie_wr_addr(24),
      I1 => pcie_wr_addr(25),
      I2 => pcie_wr_addr(22),
      I3 => pcie_wr_addr(23),
      O => \commit_count[27]_i_7_n_0\
    );
\commit_count[27]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => pcie_wr_addr(19),
      I1 => pcie_wr_addr(18),
      I2 => pcie_wr_addr(21),
      I3 => pcie_wr_addr(20),
      I4 => \commit_count[27]_i_10_n_0\,
      O => \commit_count[27]_i_8_n_0\
    );
\commit_count[27]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => pcie_wr_addr(0),
      I1 => pcie_wr_addr(1),
      I2 => pcie_wr_data(0),
      I3 => pcie_wr_addr(3),
      O => fifo_wr_en_reg_0
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
      D => commit_count0,
      Q => fifo_wr_en,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_sync_fifo is
  port (
    commit_count0 : out STD_LOGIC;
    status_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rd_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \status_reg[3]\ : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    fifo_wr_en : in STD_LOGIC;
    fifo_rd_en : in STD_LOGIC;
    pcie_wr_addr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    pcie_wr_en : in STD_LOGIC;
    \pcie_wr_addr[15]\ : in STD_LOGIC;
    pcie_wr_addr_7_sp_1 : in STD_LOGIC;
    pcie_wr_addr_3_sp_1 : in STD_LOGIC;
    \seq_cnt_reg[19]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \seq_cnt_reg[0]\ : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \seq_cnt_reg[23]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \seq_cnt_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \seq_cnt_reg[27]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \seq_cnt_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \seq_cnt_reg[31]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \seq_cnt_reg[15]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_data : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_sync_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_sync_fifo is
  signal \commit_count[27]_i_3_n_0\ : STD_LOGIC;
  signal \commit_count[27]_i_6_n_0\ : STD_LOGIC;
  signal mem_reg_i_1_n_0 : STD_LOGIC;
  signal mem_reg_i_2_n_0 : STD_LOGIC;
  signal mem_reg_i_3_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pcie_wr_addr_3_sn_1 : STD_LOGIC;
  signal pcie_wr_addr_7_sn_1 : STD_LOGIC;
  signal \^rd_data\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal rd_ptr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rd_ptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr[1]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr[2]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr[2]_i_2_n_0\ : STD_LOGIC;
  signal \rd_ptr[3]_i_1_n_0\ : STD_LOGIC;
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
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
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
  attribute SOFT_HLUTNM of \rd_ptr[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rd_ptr[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rd_ptr[2]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rd_ptr[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \status_reg[2]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \status_reg[3]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \wr_ptr[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \wr_ptr[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \wr_ptr[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \wr_ptr[3]_i_1\ : label is "soft_lutpair26";
begin
  pcie_wr_addr_3_sn_1 <= pcie_wr_addr_3_sp_1;
  pcie_wr_addr_7_sn_1 <= pcie_wr_addr_7_sp_1;
  rd_data(63 downto 0) <= \^rd_data\(63 downto 0);
  status_reg(0) <= \^status_reg\(0);
\commit_count[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => pcie_wr_addr(7),
      I1 => pcie_wr_addr(8),
      I2 => pcie_wr_en,
      I3 => \commit_count[27]_i_3_n_0\,
      I4 => \pcie_wr_addr[15]\,
      O => commit_count0
    );
\commit_count[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pcie_wr_addr_7_sn_1,
      I1 => pcie_wr_addr(5),
      I2 => pcie_wr_addr(6),
      I3 => pcie_wr_addr(3),
      I4 => pcie_wr_addr(4),
      I5 => \commit_count[27]_i_6_n_0\,
      O => \commit_count[27]_i_3_n_0\
    );
\commit_count[27]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^status_reg\(0),
      I1 => pcie_wr_addr(0),
      I2 => pcie_wr_addr(2),
      I3 => pcie_wr_addr(1),
      I4 => pcie_wr_addr_3_sn_1,
      O => \commit_count[27]_i_6_n_0\
    );
\crc16[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^rd_data\(0),
      I1 => \seq_cnt_reg[19]\(0),
      I2 => \^rd_data\(48),
      I3 => \seq_cnt_reg[0]\,
      I4 => \^rd_data\(16),
      I5 => \^rd_data\(32),
      O => D(0)
    );
\crc16[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^rd_data\(10),
      I1 => \seq_cnt_reg[27]\(2),
      I2 => \^rd_data\(58),
      I3 => \seq_cnt_reg[11]\(2),
      I4 => \^rd_data\(26),
      I5 => \^rd_data\(42),
      O => D(10)
    );
\crc16[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^rd_data\(11),
      I1 => \seq_cnt_reg[27]\(3),
      I2 => \^rd_data\(59),
      I3 => \seq_cnt_reg[11]\(3),
      I4 => \^rd_data\(27),
      I5 => \^rd_data\(43),
      O => D(11)
    );
\crc16[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^rd_data\(12),
      I1 => \seq_cnt_reg[31]\(0),
      I2 => \^rd_data\(60),
      I3 => \seq_cnt_reg[15]\(0),
      I4 => \^rd_data\(28),
      I5 => \^rd_data\(44),
      O => D(12)
    );
\crc16[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^rd_data\(13),
      I1 => \seq_cnt_reg[31]\(1),
      I2 => \^rd_data\(61),
      I3 => \seq_cnt_reg[15]\(1),
      I4 => \^rd_data\(29),
      I5 => \^rd_data\(45),
      O => D(13)
    );
\crc16[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^rd_data\(14),
      I1 => \seq_cnt_reg[31]\(2),
      I2 => \^rd_data\(62),
      I3 => \seq_cnt_reg[15]\(2),
      I4 => \^rd_data\(30),
      I5 => \^rd_data\(46),
      O => D(14)
    );
\crc16[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^rd_data\(15),
      I1 => \seq_cnt_reg[31]\(3),
      I2 => \^rd_data\(63),
      I3 => \seq_cnt_reg[15]\(3),
      I4 => \^rd_data\(31),
      I5 => \^rd_data\(47),
      O => D(15)
    );
\crc16[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^rd_data\(1),
      I1 => \seq_cnt_reg[19]\(1),
      I2 => \^rd_data\(49),
      I3 => S(0),
      I4 => \^rd_data\(17),
      I5 => \^rd_data\(33),
      O => D(1)
    );
\crc16[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^rd_data\(2),
      I1 => \seq_cnt_reg[19]\(2),
      I2 => \^rd_data\(50),
      I3 => S(1),
      I4 => \^rd_data\(18),
      I5 => \^rd_data\(34),
      O => D(2)
    );
\crc16[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^rd_data\(3),
      I1 => \seq_cnt_reg[19]\(3),
      I2 => \^rd_data\(51),
      I3 => S(2),
      I4 => \^rd_data\(19),
      I5 => \^rd_data\(35),
      O => D(3)
    );
\crc16[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^rd_data\(4),
      I1 => \seq_cnt_reg[23]\(0),
      I2 => \^rd_data\(52),
      I3 => \seq_cnt_reg[7]\(0),
      I4 => \^rd_data\(20),
      I5 => \^rd_data\(36),
      O => D(4)
    );
\crc16[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^rd_data\(5),
      I1 => \seq_cnt_reg[23]\(1),
      I2 => \^rd_data\(53),
      I3 => \seq_cnt_reg[7]\(1),
      I4 => \^rd_data\(21),
      I5 => \^rd_data\(37),
      O => D(5)
    );
\crc16[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^rd_data\(6),
      I1 => \seq_cnt_reg[23]\(2),
      I2 => \^rd_data\(54),
      I3 => \seq_cnt_reg[7]\(2),
      I4 => \^rd_data\(22),
      I5 => \^rd_data\(38),
      O => D(6)
    );
\crc16[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^rd_data\(7),
      I1 => \seq_cnt_reg[23]\(3),
      I2 => \^rd_data\(55),
      I3 => \seq_cnt_reg[7]\(3),
      I4 => \^rd_data\(23),
      I5 => \^rd_data\(39),
      O => D(7)
    );
\crc16[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^rd_data\(8),
      I1 => \seq_cnt_reg[27]\(0),
      I2 => \^rd_data\(56),
      I3 => \seq_cnt_reg[11]\(0),
      I4 => \^rd_data\(24),
      I5 => \^rd_data\(40),
      O => D(8)
    );
\crc16[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^rd_data\(9),
      I1 => \seq_cnt_reg[27]\(1),
      I2 => \^rd_data\(57),
      I3 => \seq_cnt_reg[11]\(1),
      I4 => \^rd_data\(25),
      I5 => \^rd_data\(41),
      O => D(9)
    );
mem_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
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
      DOADO(31 downto 0) => \^rd_data\(31 downto 0),
      DOBDO(31 downto 0) => \^rd_data\(63 downto 32),
      DOPADOP(3 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_i_1_n_0,
      ENBWREN => mem_reg_i_2_n_0,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_mem_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => rst,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => mem_reg_i_3_n_0,
      WEBWE(6) => mem_reg_i_3_n_0,
      WEBWE(5) => mem_reg_i_3_n_0,
      WEBWE(4) => mem_reg_i_3_n_0,
      WEBWE(3) => mem_reg_i_3_n_0,
      WEBWE(2) => mem_reg_i_3_n_0,
      WEBWE(1) => mem_reg_i_3_n_0,
      WEBWE(0) => mem_reg_i_3_n_0
    );
mem_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst,
      I1 => \rd_ptr[2]_i_1_n_0\,
      O => mem_reg_i_1_n_0
    );
mem_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => fifo_wr_en,
      I1 => \usedw_reg__0\(1),
      I2 => \usedw_reg__0\(0),
      I3 => \usedw_reg__0\(4),
      I4 => \usedw_reg__0\(2),
      I5 => \usedw_reg__0\(3),
      O => mem_reg_i_2_n_0
    );
mem_reg_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => mem_reg_i_3_n_0
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
\rd_ptr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => fifo_rd_en,
      I1 => \usedw_reg__0\(2),
      I2 => \usedw_reg__0\(1),
      I3 => \usedw_reg__0\(0),
      I4 => \usedw_reg__0\(4),
      I5 => \usedw_reg__0\(3),
      O => \rd_ptr[2]_i_1_n_0\
    );
\rd_ptr[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_ptr(0),
      I1 => rd_ptr(1),
      I2 => rd_ptr(2),
      O => \rd_ptr[2]_i_2_n_0\
    );
\rd_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_ptr(1),
      I1 => rd_ptr(0),
      I2 => rd_ptr(2),
      I3 => rd_ptr(3),
      O => \rd_ptr[3]_i_1_n_0\
    );
\rd_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_ptr[2]_i_1_n_0\,
      D => \rd_ptr[0]_i_1_n_0\,
      Q => rd_ptr(0),
      R => rst
    );
\rd_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_ptr[2]_i_1_n_0\,
      D => \rd_ptr[1]_i_1_n_0\,
      Q => rd_ptr(1),
      R => rst
    );
\rd_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_ptr[2]_i_1_n_0\,
      D => \rd_ptr[2]_i_2_n_0\,
      Q => rd_ptr(2),
      R => rst
    );
\rd_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_ptr[2]_i_1_n_0\,
      D => \rd_ptr[3]_i_1_n_0\,
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
      I3 => \usedw_reg__0\(0),
      I4 => \usedw_reg__0\(1),
      O => \^status_reg\(0)
    );
\status_reg[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \usedw_reg__0\(3),
      I1 => \usedw_reg__0\(4),
      I2 => \usedw_reg__0\(0),
      I3 => \usedw_reg__0\(1),
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
      I1 => \usedw_reg__0\(1),
      I2 => \usedw_reg__0\(0),
      I3 => \usedw_reg__0\(4),
      I4 => \usedw_reg__0\(2),
      I5 => \usedw_reg__0\(3),
      O => \usedw[1]_i_1_n_0\
    );
\usedw[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77778888EEEE1131"
    )
        port map (
      I0 => fifo_wr_en,
      I1 => \usedw_reg__0\(0),
      I2 => \usedw_reg__0\(4),
      I3 => \usedw_reg__0\(3),
      I4 => \usedw_reg__0\(2),
      I5 => \usedw_reg__0\(1),
      O => usedw(2)
    );
\usedw[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FFFC000FFFC0023"
    )
        port map (
      I0 => \usedw_reg__0\(4),
      I1 => \usedw_reg__0\(0),
      I2 => fifo_wr_en,
      I3 => \usedw_reg__0\(1),
      I4 => \usedw_reg__0\(3),
      I5 => \usedw_reg__0\(2),
      O => usedw(3)
    );
\usedw[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_ptr[2]_i_1_n_0\,
      I1 => mem_reg_i_2_n_0,
      O => \usedw[4]_i_1_n_0\
    );
\usedw[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FFFA0001"
    )
        port map (
      I0 => \usedw_reg__0\(1),
      I1 => fifo_wr_en,
      I2 => \usedw_reg__0\(0),
      I3 => \usedw_reg__0\(2),
      I4 => \usedw_reg__0\(4),
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
      INIT => X"78"
    )
        port map (
      I0 => \wr_ptr_reg__0\(0),
      I1 => \wr_ptr_reg__0\(1),
      I2 => \wr_ptr_reg__0\(2),
      O => p_0_in(2)
    );
\wr_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \wr_ptr_reg__0\(1),
      I1 => \wr_ptr_reg__0\(0),
      I2 => \wr_ptr_reg__0\(2),
      I3 => \wr_ptr_reg__0\(3),
      O => p_0_in(3)
    );
\wr_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_reg_i_2_n_0,
      D => p_0_in(0),
      Q => \wr_ptr_reg__0\(0),
      R => rst
    );
\wr_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_reg_i_2_n_0,
      D => p_0_in(1),
      Q => \wr_ptr_reg__0\(1),
      R => rst
    );
\wr_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_reg_i_2_n_0,
      D => p_0_in(2),
      Q => \wr_ptr_reg__0\(2),
      R => rst
    );
\wr_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_reg_i_2_n_0,
      D => p_0_in(3),
      Q => \wr_ptr_reg__0\(3),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loopback_debug_block is
  port (
    rx_frame_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    match_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    crc_error_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    format_error_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_axis_tvalid : out STD_LOGIC;
    prev_valid_reg : out STD_LOGIC;
    last_rx_seq : out STD_LOGIC_VECTOR ( 31 downto 0 );
    last_rx_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    last_rx_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gtx_tx_valid_reg : in STD_LOGIC;
    p_0_in8_out : in STD_LOGIC;
    gtx_tx_valid_reg_0 : in STD_LOGIC;
    \gtx_tx_data_reg[1]\ : in STD_LOGIC;
    \gtx_tx_data_reg[10]\ : in STD_LOGIC;
    \gtx_tx_data_reg[8]\ : in STD_LOGIC;
    \gtx_tx_data_reg[4]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loopback_debug_block;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loopback_debug_block is
  signal \calc_crc16_return__79\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal cmd_valid : STD_LOGIC;
  signal \crc_ok1__24\ : STD_LOGIC;
  signal data_latched : STD_LOGIC;
  signal m_axis_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m_axis_tkeep : STD_LOGIC_VECTOR ( 3 to 3 );
  signal p_0_in8_out_0 : STD_LOGIC;
  signal rx_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rx_axis_tdata : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal rx_axis_tlast : STD_LOGIC;
  signal \^rx_axis_tvalid\ : STD_LOGIC;
  signal rx_cmd_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rx_seq : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal u_gtx_rx32_to_stream64_n_10 : STD_LOGIC;
  signal u_gtx_rx32_to_stream64_n_5 : STD_LOGIC;
  signal u_gtx_rx32_to_stream64_n_7 : STD_LOGIC;
  signal u_gtx_rx32_to_stream64_n_75 : STD_LOGIC;
  signal u_gtx_rx32_to_stream64_n_76 : STD_LOGIC;
  signal u_gtx_rx32_to_stream64_n_8 : STD_LOGIC;
  signal u_gtx_rx32_to_stream64_n_9 : STD_LOGIC;
  signal u_optical_cmd_rx_n_33 : STD_LOGIC;
  signal u_optical_cmd_rx_n_49 : STD_LOGIC;
  signal u_optical_cmd_rx_n_50 : STD_LOGIC;
  signal u_optical_cmd_rx_n_51 : STD_LOGIC;
  signal u_optical_cmd_rx_n_52 : STD_LOGIC;
begin
  rx_axis_tvalid <= \^rx_axis_tvalid\;
u_gtx_rx32_to_stream64: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtx_rx32_to_stream64
     port map (
      E(0) => data_latched,
      Q(31 downto 0) => Q(31 downto 0),
      S(3) => u_gtx_rx32_to_stream64_n_7,
      S(2) => u_gtx_rx32_to_stream64_n_8,
      S(1) => u_gtx_rx32_to_stream64_n_9,
      S(0) => u_gtx_rx32_to_stream64_n_10,
      \addr_latched_reg[31]\(63 downto 32) => rx_axis_tdata(63 downto 32),
      \addr_latched_reg[31]\(31 downto 0) => m_axis_tdata(31 downto 0),
      \calc_crc16_return__79\(14 downto 0) => \calc_crc16_return__79\(14 downto 0),
      clk => clk,
      \crc_ok1__24\ => \crc_ok1__24\,
      crc_ok_reg => u_gtx_rx32_to_stream64_n_76,
      \gtx_tx_data_reg[10]\ => \gtx_tx_data_reg[10]\,
      \gtx_tx_data_reg[1]\ => \gtx_tx_data_reg[1]\,
      \gtx_tx_data_reg[4]\ => \gtx_tx_data_reg[4]\,
      \gtx_tx_data_reg[8]\ => \gtx_tx_data_reg[8]\,
      gtx_tx_valid_reg => gtx_tx_valid_reg,
      gtx_tx_valid_reg_0 => gtx_tx_valid_reg_0,
      m_axis_tkeep(0) => m_axis_tkeep(3),
      p_0_in8_out => p_0_in8_out,
      p_0_in8_out_0 => p_0_in8_out_0,
      prev_valid_reg_0 => prev_valid_reg,
      rst => rst,
      rx_axis_tlast => rx_axis_tlast,
      \rx_frame_count_reg[0]\(0) => u_gtx_rx32_to_stream64_n_75,
      \seq_latched_reg[31]\ => \^rx_axis_tvalid\,
      \seq_latched_reg[31]_0\(0) => u_gtx_rx32_to_stream64_n_5,
      \state_reg[0]\ => u_optical_cmd_rx_n_51,
      \state_reg[1]\ => u_optical_cmd_rx_n_52
    );
u_loopback_checker: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loopback_checker
     port map (
      Q(31 downto 0) => rx_seq(31 downto 0),
      clk => clk,
      cmd_valid => cmd_valid,
      cmd_valid_reg => u_optical_cmd_rx_n_49,
      crc_error_count(31 downto 0) => crc_error_count(31 downto 0),
      format_error_count(31 downto 0) => format_error_count(31 downto 0),
      format_ok_reg => u_optical_cmd_rx_n_50,
      format_ok_reg_0 => u_optical_cmd_rx_n_33,
      last_rx_addr(31 downto 0) => last_rx_addr(31 downto 0),
      last_rx_data(31 downto 0) => last_rx_data(31 downto 0),
      last_rx_seq(31 downto 0) => last_rx_seq(31 downto 0),
      match_count(31 downto 0) => match_count(31 downto 0),
      rst => rst,
      \rx_addr_reg[31]\(31 downto 0) => rx_addr(31 downto 0),
      \rx_cmd_data_reg[31]\(31 downto 0) => rx_cmd_data(31 downto 0)
    );
u_optical_cmd_rx: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_optical_cmd_rx
     port map (
      E(0) => data_latched,
      Q(31 downto 0) => rx_seq(31 downto 0),
      S(3) => u_gtx_rx32_to_stream64_n_7,
      S(2) => u_gtx_rx32_to_stream64_n_8,
      S(1) => u_gtx_rx32_to_stream64_n_9,
      S(0) => u_gtx_rx32_to_stream64_n_10,
      clk => clk,
      cmd_valid => cmd_valid,
      \crc_error_count_reg[0]\ => u_optical_cmd_rx_n_33,
      \crc_ok1__24\ => \crc_ok1__24\,
      \format_error_count_reg[0]\ => u_optical_cmd_rx_n_49,
      \last_rx_addr_reg[31]\(31 downto 0) => rx_addr(31 downto 0),
      \last_rx_data_reg[31]\(31 downto 0) => rx_cmd_data(31 downto 0),
      \m_axis_tdata_reg[60]\(0) => u_gtx_rx32_to_stream64_n_75,
      \m_axis_tdata_reg[63]\(63 downto 32) => rx_axis_tdata(63 downto 32),
      \m_axis_tdata_reg[63]\(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tkeep(0) => m_axis_tkeep(3),
      \m_axis_tkeep_reg[3]\ => u_gtx_rx32_to_stream64_n_76,
      m_axis_tvalid_reg => \^rx_axis_tvalid\,
      m_axis_tvalid_reg_0(0) => u_gtx_rx32_to_stream64_n_5,
      \match_count_reg[31]\ => u_optical_cmd_rx_n_50,
      p_0_in8_out => p_0_in8_out_0,
      rst => rst,
      rx_axis_tlast => rx_axis_tlast,
      rx_frame_count(31 downto 0) => rx_frame_count(31 downto 0),
      \rx_frame_count_reg[0]_0\(14 downto 0) => \calc_crc16_return__79\(14 downto 0),
      \state_reg[1]_0\ => u_optical_cmd_rx_n_51,
      \state_reg[1]_1\ => u_optical_cmd_rx_n_52
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pcie_cmd_to_optical_top is
  port (
    status_reg : out STD_LOGIC_VECTOR ( 28 downto 0 );
    \tx_frame_count[0]\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \tx_frame_count[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_frame_count[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_frame_count[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_frame_count[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_frame_count[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_frame_count[27]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_frame_count[31]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    optical_tx_valid : out STD_LOGIC;
    optical_tx_keep : out STD_LOGIC_VECTOR ( 0 to 0 );
    optical_tx_last : out STD_LOGIC;
    status_reg_3_sp_1 : out STD_LOGIC;
    optical_tx_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    pcie_wr_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcie_wr_en : in STD_LOGIC;
    pcie_wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \state_reg[1]\ : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pcie_cmd_to_optical_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pcie_cmd_to_optical_top is
  signal \^s\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal calc_crc16_return : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal commit_count0 : STD_LOGIC;
  signal fifo_rd_data : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal fifo_rd_en : STD_LOGIC;
  signal fifo_wr_data : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal fifo_wr_en : STD_LOGIC;
  signal status_reg_3_sn_1 : STD_LOGIC;
  signal \^tx_frame_count[0]\ : STD_LOGIC;
  signal \^tx_frame_count[11]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^tx_frame_count[15]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^tx_frame_count[19]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^tx_frame_count[23]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^tx_frame_count[27]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^tx_frame_count[31]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^tx_frame_count[7]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal u_pcie_bar_cmd_rx_n_29 : STD_LOGIC;
  signal u_pcie_bar_cmd_rx_n_30 : STD_LOGIC;
  signal u_pcie_bar_cmd_rx_n_31 : STD_LOGIC;
begin
  S(2 downto 0) <= \^s\(2 downto 0);
  status_reg_3_sp_1 <= status_reg_3_sn_1;
  \tx_frame_count[0]\ <= \^tx_frame_count[0]\;
  \tx_frame_count[11]\(3 downto 0) <= \^tx_frame_count[11]\(3 downto 0);
  \tx_frame_count[15]\(3 downto 0) <= \^tx_frame_count[15]\(3 downto 0);
  \tx_frame_count[19]\(3 downto 0) <= \^tx_frame_count[19]\(3 downto 0);
  \tx_frame_count[23]\(3 downto 0) <= \^tx_frame_count[23]\(3 downto 0);
  \tx_frame_count[27]\(3 downto 0) <= \^tx_frame_count[27]\(3 downto 0);
  \tx_frame_count[31]\(3 downto 0) <= \^tx_frame_count[31]\(3 downto 0);
  \tx_frame_count[7]\(3 downto 0) <= \^tx_frame_count[7]\(3 downto 0);
u_custom_optical_tx: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_custom_optical_tx
     port map (
      D(15 downto 0) => calc_crc16_return(15 downto 0),
      S(2 downto 0) => \^s\(2 downto 0),
      clk => clk,
      fifo_rd_en => fifo_rd_en,
      optical_tx_data(63 downto 0) => optical_tx_data(63 downto 0),
      optical_tx_keep(0) => optical_tx_keep(0),
      optical_tx_last => optical_tx_last,
      optical_tx_valid => optical_tx_valid,
      rd_data(63 downto 0) => fifo_rd_data(63 downto 0),
      rst => rst,
      state(1 downto 0) => state(1 downto 0),
      \state_reg[1]\ => \state_reg[1]\,
      \tx_frame_count[0]\ => \^tx_frame_count[0]\,
      \tx_frame_count[11]\(3 downto 0) => \^tx_frame_count[11]\(3 downto 0),
      \tx_frame_count[15]\(3 downto 0) => \^tx_frame_count[15]\(3 downto 0),
      \tx_frame_count[19]\(3 downto 0) => \^tx_frame_count[19]\(3 downto 0),
      \tx_frame_count[23]\(3 downto 0) => \^tx_frame_count[23]\(3 downto 0),
      \tx_frame_count[27]\(3 downto 0) => \^tx_frame_count[27]\(3 downto 0),
      \tx_frame_count[31]\(3 downto 0) => \^tx_frame_count[31]\(3 downto 0),
      \tx_frame_count[7]\(3 downto 0) => \^tx_frame_count[7]\(3 downto 0),
      \usedw_reg[3]\ => status_reg_3_sn_1
    );
u_pcie_bar_cmd_rx: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pcie_bar_cmd_rx
     port map (
      Q(63 downto 0) => fifo_wr_data(63 downto 0),
      clk => clk,
      commit_count0 => commit_count0,
      fifo_wr_en => fifo_wr_en,
      fifo_wr_en_reg_0 => u_pcie_bar_cmd_rx_n_29,
      fifo_wr_en_reg_1 => u_pcie_bar_cmd_rx_n_30,
      fifo_wr_en_reg_2 => u_pcie_bar_cmd_rx_n_31,
      pcie_wr_addr(31 downto 0) => pcie_wr_addr(31 downto 0),
      pcie_wr_data(31 downto 0) => pcie_wr_data(31 downto 0),
      pcie_wr_en => pcie_wr_en,
      rst => rst,
      status_reg(27 downto 0) => status_reg(28 downto 1)
    );
u_simple_sync_fifo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_sync_fifo
     port map (
      D(15 downto 0) => calc_crc16_return(15 downto 0),
      S(2 downto 0) => \^s\(2 downto 0),
      clk => clk,
      commit_count0 => commit_count0,
      fifo_rd_en => fifo_rd_en,
      fifo_wr_en => fifo_wr_en,
      pcie_wr_addr(8 downto 7) => pcie_wr_addr(31 downto 30),
      pcie_wr_addr(6 downto 3) => pcie_wr_addr(13 downto 10),
      pcie_wr_addr(2 downto 1) => pcie_wr_addr(5 downto 4),
      pcie_wr_addr(0) => pcie_wr_addr(2),
      \pcie_wr_addr[15]\ => u_pcie_bar_cmd_rx_n_31,
      pcie_wr_addr_3_sp_1 => u_pcie_bar_cmd_rx_n_29,
      pcie_wr_addr_7_sp_1 => u_pcie_bar_cmd_rx_n_30,
      pcie_wr_en => pcie_wr_en,
      rd_data(63 downto 0) => fifo_rd_data(63 downto 0),
      rst => rst,
      \seq_cnt_reg[0]\ => \^tx_frame_count[0]\,
      \seq_cnt_reg[11]\(3 downto 0) => \^tx_frame_count[11]\(3 downto 0),
      \seq_cnt_reg[15]\(3 downto 0) => \^tx_frame_count[15]\(3 downto 0),
      \seq_cnt_reg[19]\(3 downto 0) => \^tx_frame_count[19]\(3 downto 0),
      \seq_cnt_reg[23]\(3 downto 0) => \^tx_frame_count[23]\(3 downto 0),
      \seq_cnt_reg[27]\(3 downto 0) => \^tx_frame_count[27]\(3 downto 0),
      \seq_cnt_reg[31]\(3 downto 0) => \^tx_frame_count[31]\(3 downto 0),
      \seq_cnt_reg[7]\(3 downto 0) => \^tx_frame_count[7]\(3 downto 0),
      status_reg(0) => status_reg(0),
      \status_reg[3]\ => status_reg_3_sn_1,
      wr_data(63 downto 0) => fifo_wr_data(63 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pcie_cmd_to_optical_gtx_top is
  port (
    gtx_tx_valid : out STD_LOGIC;
    gtx_tx_last : out STD_LOGIC;
    status_reg : out STD_LOGIC_VECTOR ( 28 downto 0 );
    \tx_frame_count[0]\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \tx_frame_count[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_frame_count[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_frame_count[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_frame_count[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_frame_count[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_frame_count[27]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_frame_count[31]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gtx_tx_word_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    optical_tx_last : out STD_LOGIC;
    optical_tx_valid : out STD_LOGIC;
    optical_tx_keep : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtx_tx_word_index : out STD_LOGIC_VECTOR ( 0 to 0 );
    prev_valid_reg : out STD_LOGIC;
    p_0_in8_out : out STD_LOGIC;
    m_axis_tlast_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast_reg_0 : out STD_LOGIC;
    status_reg_3_sp_1 : out STD_LOGIC;
    m_axis_tlast_reg_1 : out STD_LOGIC;
    m_axis_tlast_reg_2 : out STD_LOGIC;
    optical_tx_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    pcie_wr_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_axis_tvalid : in STD_LOGIC;
    pcie_wr_en : in STD_LOGIC;
    pcie_wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    prev_valid_reg_0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pcie_cmd_to_optical_gtx_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pcie_cmd_to_optical_gtx_top is
  signal \^optical_tx_data\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^optical_tx_last\ : STD_LOGIC;
  signal \^optical_tx_valid\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal status_reg_3_sn_1 : STD_LOGIC;
  signal u_optical_stream_to_gtx32_n_35 : STD_LOGIC;
begin
  optical_tx_data(63 downto 0) <= \^optical_tx_data\(63 downto 0);
  optical_tx_last <= \^optical_tx_last\;
  optical_tx_valid <= \^optical_tx_valid\;
  status_reg_3_sp_1 <= status_reg_3_sn_1;
u_optical_stream_to_gtx32: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_optical_stream_to_gtx32
     port map (
      Q(31 downto 0) => Q(31 downto 0),
      clk => clk,
      gtx_tx_last => gtx_tx_last,
      gtx_tx_valid => gtx_tx_valid,
      gtx_tx_word_count(31 downto 0) => gtx_tx_word_count(31 downto 0),
      gtx_tx_word_index(0) => gtx_tx_word_index(0),
      m_axis_tlast_reg => m_axis_tlast_reg,
      m_axis_tlast_reg_0 => m_axis_tlast_reg_0,
      m_axis_tlast_reg_1 => m_axis_tlast_reg_1,
      m_axis_tlast_reg_2 => m_axis_tlast_reg_2,
      optical_tx_data(63 downto 0) => \^optical_tx_data\(63 downto 0),
      optical_tx_last => \^optical_tx_last\,
      p_0_in8_out => p_0_in8_out,
      prev_valid_reg => prev_valid_reg,
      prev_valid_reg_0 => prev_valid_reg_0,
      rst => rst,
      rx_axis_tvalid => rx_axis_tvalid,
      state(1 downto 0) => state(1 downto 0),
      \tx_keep_reg[7]\ => u_optical_stream_to_gtx32_n_35,
      tx_valid_reg => \^optical_tx_valid\
    );
u_pcie_cmd_to_optical_top: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pcie_cmd_to_optical_top
     port map (
      S(2 downto 0) => S(2 downto 0),
      clk => clk,
      optical_tx_data(63 downto 0) => \^optical_tx_data\(63 downto 0),
      optical_tx_keep(0) => optical_tx_keep(0),
      optical_tx_last => \^optical_tx_last\,
      optical_tx_valid => \^optical_tx_valid\,
      pcie_wr_addr(31 downto 0) => pcie_wr_addr(31 downto 0),
      pcie_wr_data(31 downto 0) => pcie_wr_data(31 downto 0),
      pcie_wr_en => pcie_wr_en,
      rst => rst,
      state(1 downto 0) => state(1 downto 0),
      \state_reg[1]\ => u_optical_stream_to_gtx32_n_35,
      status_reg(28 downto 0) => status_reg(28 downto 0),
      status_reg_3_sp_1 => status_reg_3_sn_1,
      \tx_frame_count[0]\ => \tx_frame_count[0]\,
      \tx_frame_count[11]\(3 downto 0) => \tx_frame_count[11]\(3 downto 0),
      \tx_frame_count[15]\(3 downto 0) => \tx_frame_count[15]\(3 downto 0),
      \tx_frame_count[19]\(3 downto 0) => \tx_frame_count[19]\(3 downto 0),
      \tx_frame_count[23]\(3 downto 0) => \tx_frame_count[23]\(3 downto 0),
      \tx_frame_count[27]\(3 downto 0) => \tx_frame_count[27]\(3 downto 0),
      \tx_frame_count[31]\(3 downto 0) => \tx_frame_count[31]\(3 downto 0),
      \tx_frame_count[7]\(3 downto 0) => \tx_frame_count[7]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_min_optical_loopback_debug_top is
  port (
    tx_frame_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    optical_tx_valid : out STD_LOGIC;
    gtx_tx_valid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    status_reg_3_sp_1 : out STD_LOGIC;
    optical_tx_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    gtx_tx_last : out STD_LOGIC;
    last_rx_seq : out STD_LOGIC_VECTOR ( 31 downto 0 );
    last_rx_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    last_rx_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    status_reg : out STD_LOGIC_VECTOR ( 28 downto 0 );
    gtx_tx_word_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_frame_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    match_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    crc_error_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    format_error_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    optical_tx_last : out STD_LOGIC;
    optical_tx_keep : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtx_tx_word_index : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_wr_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    pcie_wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcie_wr_en : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_min_optical_loopback_debug_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_min_optical_loopback_debug_top is
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^gtx_tx_valid\ : STD_LOGIC;
  signal rx_axis_tvalid : STD_LOGIC;
  signal status_reg_3_sn_1 : STD_LOGIC;
  signal \u_gtx_rx32_to_stream64/p_0_in8_out\ : STD_LOGIC;
  signal u_loopback_debug_block_n_129 : STD_LOGIC;
  signal u_pcie_cmd_to_optical_gtx_top_n_101 : STD_LOGIC;
  signal u_pcie_cmd_to_optical_gtx_top_n_134 : STD_LOGIC;
  signal u_pcie_cmd_to_optical_gtx_top_n_136 : STD_LOGIC;
  signal u_pcie_cmd_to_optical_gtx_top_n_137 : STD_LOGIC;
  signal u_pcie_cmd_to_optical_gtx_top_n_99 : STD_LOGIC;
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  gtx_tx_valid <= \^gtx_tx_valid\;
  status_reg_3_sp_1 <= status_reg_3_sn_1;
u_loopback_debug_block: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loopback_debug_block
     port map (
      Q(31 downto 0) => \^q\(31 downto 0),
      clk => clk,
      crc_error_count(31 downto 0) => crc_error_count(31 downto 0),
      format_error_count(31 downto 0) => format_error_count(31 downto 0),
      \gtx_tx_data_reg[10]\ => u_pcie_cmd_to_optical_gtx_top_n_101,
      \gtx_tx_data_reg[1]\ => u_pcie_cmd_to_optical_gtx_top_n_134,
      \gtx_tx_data_reg[4]\ => u_pcie_cmd_to_optical_gtx_top_n_136,
      \gtx_tx_data_reg[8]\ => u_pcie_cmd_to_optical_gtx_top_n_137,
      gtx_tx_valid_reg => \^gtx_tx_valid\,
      gtx_tx_valid_reg_0 => u_pcie_cmd_to_optical_gtx_top_n_99,
      last_rx_addr(31 downto 0) => last_rx_addr(31 downto 0),
      last_rx_data(31 downto 0) => last_rx_data(31 downto 0),
      last_rx_seq(31 downto 0) => last_rx_seq(31 downto 0),
      match_count(31 downto 0) => match_count(31 downto 0),
      p_0_in8_out => \u_gtx_rx32_to_stream64/p_0_in8_out\,
      prev_valid_reg => u_loopback_debug_block_n_129,
      rst => rst,
      rx_axis_tvalid => rx_axis_tvalid,
      rx_frame_count(31 downto 0) => rx_frame_count(31 downto 0)
    );
u_pcie_cmd_to_optical_gtx_top: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pcie_cmd_to_optical_gtx_top
     port map (
      Q(31 downto 0) => \^q\(31 downto 0),
      S(2 downto 0) => tx_frame_count(3 downto 1),
      clk => clk,
      gtx_tx_last => gtx_tx_last,
      gtx_tx_valid => \^gtx_tx_valid\,
      gtx_tx_word_count(31 downto 0) => gtx_tx_word_count(31 downto 0),
      gtx_tx_word_index(0) => gtx_tx_word_index(0),
      m_axis_tlast_reg => u_pcie_cmd_to_optical_gtx_top_n_101,
      m_axis_tlast_reg_0 => u_pcie_cmd_to_optical_gtx_top_n_134,
      m_axis_tlast_reg_1 => u_pcie_cmd_to_optical_gtx_top_n_136,
      m_axis_tlast_reg_2 => u_pcie_cmd_to_optical_gtx_top_n_137,
      optical_tx_data(63 downto 0) => optical_tx_data(63 downto 0),
      optical_tx_keep(0) => optical_tx_keep(0),
      optical_tx_last => optical_tx_last,
      optical_tx_valid => optical_tx_valid,
      p_0_in8_out => \u_gtx_rx32_to_stream64/p_0_in8_out\,
      pcie_wr_addr(31 downto 0) => pcie_wr_addr(31 downto 0),
      pcie_wr_data(31 downto 0) => pcie_wr_data(31 downto 0),
      pcie_wr_en => pcie_wr_en,
      prev_valid_reg => u_pcie_cmd_to_optical_gtx_top_n_99,
      prev_valid_reg_0 => u_loopback_debug_block_n_129,
      rst => rst,
      rx_axis_tvalid => rx_axis_tvalid,
      status_reg(28 downto 0) => status_reg(28 downto 0),
      status_reg_3_sp_1 => status_reg_3_sn_1,
      \tx_frame_count[0]\ => tx_frame_count(0),
      \tx_frame_count[11]\(3 downto 0) => tx_frame_count(11 downto 8),
      \tx_frame_count[15]\(3 downto 0) => tx_frame_count(15 downto 12),
      \tx_frame_count[19]\(3 downto 0) => tx_frame_count(19 downto 16),
      \tx_frame_count[23]\(3 downto 0) => tx_frame_count(23 downto 20),
      \tx_frame_count[27]\(3 downto 0) => tx_frame_count(27 downto 24),
      \tx_frame_count[31]\(3 downto 0) => tx_frame_count(31 downto 28),
      \tx_frame_count[7]\(3 downto 0) => tx_frame_count(7 downto 4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "loopback_debug_bd_min_optical_loopback_debug_top_0_0,min_optical_loopback_debug_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "min_optical_loopback_debug_top,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^gtx_tx_word_index\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^optical_tx_keep\ : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \^status_reg\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN loopback_debug_bd_clk";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
  gtx_tx_word_index(1) <= \<const0>\;
  gtx_tx_word_index(0) <= \^gtx_tx_word_index\(0);
  optical_status(31) <= \<const0>\;
  optical_status(30) <= \<const0>\;
  optical_status(29) <= \<const0>\;
  optical_status(28) <= \<const0>\;
  optical_status(27) <= \<const0>\;
  optical_status(26) <= \<const0>\;
  optical_status(25) <= \<const0>\;
  optical_status(24) <= \<const0>\;
  optical_status(23) <= \<const0>\;
  optical_status(22) <= \<const0>\;
  optical_status(21) <= \<const0>\;
  optical_status(20) <= \<const0>\;
  optical_status(19) <= \<const0>\;
  optical_status(18) <= \<const0>\;
  optical_status(17) <= \<const0>\;
  optical_status(16) <= \<const0>\;
  optical_status(15) <= \<const0>\;
  optical_status(14) <= \<const0>\;
  optical_status(13) <= \<const0>\;
  optical_status(12) <= \<const0>\;
  optical_status(11) <= \<const0>\;
  optical_status(10) <= \<const0>\;
  optical_status(9) <= \<const0>\;
  optical_status(8) <= \<const0>\;
  optical_status(7) <= \<const0>\;
  optical_status(6) <= \<const0>\;
  optical_status(5) <= \<const0>\;
  optical_status(4) <= \<const1>\;
  optical_status(3) <= \<const1>\;
  optical_status(2) <= \<const1>\;
  optical_status(1) <= \<const0>\;
  optical_status(0) <= \<const1>\;
  optical_tx_keep(7) <= \^optical_tx_keep\(6);
  optical_tx_keep(6) <= \^optical_tx_keep\(6);
  optical_tx_keep(5) <= \^optical_tx_keep\(6);
  optical_tx_keep(4) <= \^optical_tx_keep\(6);
  optical_tx_keep(3) <= \^optical_tx_keep\(6);
  optical_tx_keep(2) <= \^optical_tx_keep\(6);
  optical_tx_keep(1) <= \^optical_tx_keep\(6);
  optical_tx_keep(0) <= \^optical_tx_keep\(6);
  status_reg(31 downto 2) <= \^status_reg\(31 downto 2);
  status_reg(1) <= \<const1>\;
  status_reg(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_min_optical_loopback_debug_top
     port map (
      Q(31 downto 0) => gtx_tx_data(31 downto 0),
      clk => clk,
      crc_error_count(31 downto 0) => crc_error_count(31 downto 0),
      format_error_count(31 downto 0) => format_error_count(31 downto 0),
      gtx_tx_last => gtx_tx_last,
      gtx_tx_valid => gtx_tx_valid,
      gtx_tx_word_count(31 downto 0) => gtx_tx_word_count(31 downto 0),
      gtx_tx_word_index(0) => \^gtx_tx_word_index\(0),
      last_rx_addr(31 downto 0) => last_rx_addr(31 downto 0),
      last_rx_data(31 downto 0) => last_rx_data(31 downto 0),
      last_rx_seq(31 downto 0) => last_rx_seq(31 downto 0),
      match_count(31 downto 0) => match_count(31 downto 0),
      optical_tx_data(63 downto 0) => optical_tx_data(63 downto 0),
      optical_tx_keep(0) => \^optical_tx_keep\(6),
      optical_tx_last => optical_tx_last,
      optical_tx_valid => optical_tx_valid,
      pcie_wr_addr(31 downto 0) => pcie_wr_addr(31 downto 0),
      pcie_wr_data(31 downto 0) => pcie_wr_data(31 downto 0),
      pcie_wr_en => pcie_wr_en,
      rst => rst,
      rx_frame_count(31 downto 0) => rx_frame_count(31 downto 0),
      status_reg(28 downto 1) => \^status_reg\(31 downto 4),
      status_reg(0) => \^status_reg\(2),
      status_reg_3_sp_1 => \^status_reg\(3),
      tx_frame_count(31 downto 0) => tx_frame_count(31 downto 0)
    );
end STRUCTURE;
