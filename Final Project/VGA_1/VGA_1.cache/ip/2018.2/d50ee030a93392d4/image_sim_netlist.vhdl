-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Nov 14 00:44:11 2018
-- Host        : Gowtham running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ image_sim_netlist.vhdl
-- Design      : image
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec is
  port (
    ena_array : out STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec is
begin
ENOUT: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addra(0),
      I1 => addra(2),
      I2 => addra(1),
      O => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux is
  port (
    douta : out STD_LOGIC_VECTOR ( 71 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clka : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_douta : in STD_LOGIC_VECTOR ( 17 downto 0 );
    DOPADOP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DOPBDOP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux is
  signal sel_pipe : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sel_pipe_d1 : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\douta[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(0),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => ram_douta(0),
      O => douta(0)
    );
\douta[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(9),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => ram_douta(10),
      O => douta(10)
    );
\douta[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(10),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => ram_douta(11),
      O => douta(11)
    );
\douta[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(11),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => ram_douta(12),
      O => douta(12)
    );
\douta[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(12),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => ram_douta(13),
      O => douta(13)
    );
\douta[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(13),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => ram_douta(14),
      O => douta(14)
    );
\douta[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(14),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => ram_douta(15),
      O => douta(15)
    );
\douta[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(15),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => ram_douta(16),
      O => douta(16)
    );
\douta[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOPADOP(1),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => ram_douta(17),
      O => douta(17)
    );
\douta[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(16),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0),
      O => douta(18)
    );
\douta[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(17),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1),
      O => douta(19)
    );
\douta[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(1),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => ram_douta(1),
      O => douta(1)
    );
\douta[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(18),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2),
      O => douta(20)
    );
\douta[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(19),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3),
      O => douta(21)
    );
\douta[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(20),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4),
      O => douta(22)
    );
\douta[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(21),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5),
      O => douta(23)
    );
\douta[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(22),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6),
      O => douta(24)
    );
\douta[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(23),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7),
      O => douta(25)
    );
\douta[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOPADOP(2),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0),
      O => douta(26)
    );
\douta[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(24),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(8),
      O => douta(27)
    );
\douta[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(25),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(9),
      O => douta(28)
    );
\douta[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(26),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(10),
      O => douta(29)
    );
\douta[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(2),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => ram_douta(2),
      O => douta(2)
    );
\douta[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(27),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(11),
      O => douta(30)
    );
\douta[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(28),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(12),
      O => douta(31)
    );
\douta[32]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(29),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(13),
      O => douta(32)
    );
\douta[33]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(30),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(14),
      O => douta(33)
    );
\douta[34]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(31),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(15),
      O => douta(34)
    );
\douta[35]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOPADOP(3),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(1),
      O => douta(35)
    );
\douta[36]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(0),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0),
      O => douta(36)
    );
\douta[37]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(1),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(1),
      O => douta(37)
    );
\douta[38]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(2),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(2),
      O => douta(38)
    );
\douta[39]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(3),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3),
      O => douta(39)
    );
\douta[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(3),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => ram_douta(3),
      O => douta(3)
    );
\douta[40]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(4),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(4),
      O => douta(40)
    );
\douta[41]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(5),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(5),
      O => douta(41)
    );
\douta[42]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(6),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(6),
      O => douta(42)
    );
\douta[43]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(7),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(7),
      O => douta(43)
    );
\douta[44]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOPBDOP(0),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(0),
      O => douta(44)
    );
\douta[45]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(8),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(8),
      O => douta(45)
    );
\douta[46]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(9),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(9),
      O => douta(46)
    );
\douta[47]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(10),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(10),
      O => douta(47)
    );
\douta[48]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(11),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(11),
      O => douta(48)
    );
\douta[49]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(12),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(12),
      O => douta(49)
    );
\douta[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(4),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => ram_douta(4),
      O => douta(4)
    );
\douta[50]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(13),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(13),
      O => douta(50)
    );
\douta[51]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(14),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(14),
      O => douta(51)
    );
\douta[52]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(15),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(15),
      O => douta(52)
    );
\douta[53]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOPBDOP(1),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(1),
      O => douta(53)
    );
\douta[54]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(16),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(0),
      O => douta(54)
    );
\douta[55]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(17),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(1),
      O => douta(55)
    );
\douta[56]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(18),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(2),
      O => douta(56)
    );
\douta[57]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(19),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(3),
      O => douta(57)
    );
\douta[58]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(20),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(4),
      O => douta(58)
    );
\douta[59]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(21),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(5),
      O => douta(59)
    );
\douta[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(5),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => ram_douta(5),
      O => douta(5)
    );
\douta[60]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(22),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(6),
      O => douta(60)
    );
\douta[61]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(23),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(7),
      O => douta(61)
    );
\douta[62]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOPBDOP(2),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(0),
      O => douta(62)
    );
\douta[63]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(24),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(8),
      O => douta(63)
    );
\douta[64]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(25),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(9),
      O => douta(64)
    );
\douta[65]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(26),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(10),
      O => douta(65)
    );
\douta[66]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(27),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(11),
      O => douta(66)
    );
\douta[67]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(28),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(12),
      O => douta(67)
    );
\douta[68]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(29),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(13),
      O => douta(68)
    );
\douta[69]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(30),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(14),
      O => douta(69)
    );
\douta[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(6),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => ram_douta(6),
      O => douta(6)
    );
\douta[70]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOBDO(31),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(15),
      O => douta(70)
    );
\douta[71]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOPBDOP(3),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(1),
      O => douta(71)
    );
\douta[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(7),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => ram_douta(7),
      O => douta(7)
    );
\douta[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOPADOP(0),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => ram_douta(8),
      O => douta(8)
    );
\douta[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(0),
      I1 => DOADO(8),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(2),
      I4 => ram_douta(9),
      O => douta(9)
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => sel_pipe(0),
      Q => sel_pipe_d1(0),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => sel_pipe(1),
      Q => sel_pipe_d1(1),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => sel_pipe(2),
      Q => sel_pipe_d1(2),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(0),
      Q => sel_pipe(0),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(1),
      Q => sel_pipe(1),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(2),
      Q => sel_pipe(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init is
  port (
    ram_douta : out STD_LOGIC_VECTOR ( 17 downto 0 );
    clka : in STD_LOGIC;
    \addra[11]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 17 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"562AA360E7FFFE6EF5A7A785875E3D4CFBBFFFE28A80A88288AA80A80028AAAA",
      INITP_01 => X"FFE68BF25C77BFDC361C60C7FFFE7D959C2686748114E0459FFFE6BE83BC5C26",
      INITP_02 => X"232D3E6F8A9B97DDE7ACFE00352E99256D204FFFFE7FF60645F620A82CFBD2D7",
      INITP_03 => X"DCB7D678DDCAAE69EAF46C6B173A3CE6FF7083A9C25E7EFFB10B7FFC7F3BA7B9",
      INITP_04 => X"A1706979C9A83E07B5FE7EDBB8AFCE5453CD4FBF7B9F46E3ED338F8F69DDFE1F",
      INITP_05 => X"9AE66FCEA7DD7A88D78911A55798714E7E7BFEFB921A13EA21BD8ABDDE07FB77",
      INITP_06 => X"FFF98E4A330BD32302816566EBBBDCA0AAFC156D778877DE7FABFB7379FAE5F4",
      INITP_07 => X"88E9CA5CA7FC7FFFFEBA487F0E6DB12C3FC1E7FFFEF171B696D210F7B6DDF07F",
      INITP_08 => X"C7FFFED7CCD84233106AE7BFF47FFFFAFBD697C7ECB8E09EBD27FFFEAFD6CE7C",
      INITP_09 => X"90C37567102B5F67DDFDB4CDD57F7FE56F1BF77A7F57FC37BFD4D1D9D58EFBEB",
      INITP_0A => X"4ED46AAD7BCF80D31F883AE3A18766F3CED6D8FA89018DBCA6DE9C7C599D3CF8",
      INITP_0B => X"12621DF344B7B4BD3A7E37885B97C4B5CA4A54915BE6FAE2EC517449E7E63985",
      INITP_0C => X"E5F168E652490FDD9D2FC012639A69F47D390169165AAAF6E51D547567C7FF64",
      INITP_0D => X"9F8B344A534C76B6FD8CE5AF45F2DED17EAD969F795E567F028E226BA00DB6FF",
      INITP_0E => X"EA53FCF6F65B2E0CF36F7764C88F80ADEBE64A7E35C4817843AF168FE80A225F",
      INITP_0F => X"D7ABCBF9C629E586FEBA3FFE7CEE2D3671AD455F6B4B8AAFE2DE627F78A9E540",
      INIT_00 => X"00FD80FC80E000FA00FF00F080FF00FF80FF80FF80FF80FF80FF80FF80FF8000",
      INIT_01 => X"80F200F400FF00FE80F300FF80F380F080F400E800120092008E0098002800FD",
      INIT_02 => X"80EE00FF00FF80F880F400F400FE00A3001A80710033806C80ED00FB80F380F8",
      INIT_03 => X"7EFF76FAFFDB7DFFFEF6FFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFF800000FF80F8",
      INIT_04 => X"FFE57CFBFDFDFFECFDFA7D7278FC7DFF787E8695368D8B84FA9B7D10F9FE7EEE",
      INIT_05 => X"F9FCFEF17FFFFCFFFD00FFA77A8BFCA6FF887EA27D9F7E0CFAF47FFC7FFF7BF4",
      INIT_06 => X"7FF978FAFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80007FFFFDFFFFFFFCF7",
      INIT_07 => X"F9FDFF0FF935F806FA6A746F090BC90EC7644C771481FE92FEF97EFCF0FE7DF2",
      INIT_08 => X"7AF9FAB7FF0AD1BA0DCF38A599CDB640F6877D85F9A5FC57F9F4FAFF7FF5FFED",
      INIT_09 => X"7BFB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80007FFFFCFAF7FA7FFA7FFE7CFD",
      INIT_0A => X"7D0039087E047F4C3F9C4A88468742A6CD910889FF30F7F97FFDFDF9EDF2FFFC",
      INIT_0B => X"80C653D445C153C6C4B151BECFD30661FAA1FEA7FF85FAFAF2947D387E827660",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF80007FFFFFFDFFFFFBFDFEF5F8F5FFFFFF00",
      INIT_0D => X"359CB792057D079DB29BBB20C05149A3FC0CFEF47FFA79F47CF97DFAFFFF7FFF",
      INIT_0E => X"E7B652D066C420BA43C042C3528BAB8BFA9EFF927A0B76A0FE8A07A51A8C837F",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFF80007FFFFDEDFDFEFDE67FFF7EFAFCF95BDB85C5DDC0",
      INIT_10 => X"CE074490C397539FC88AC486181A7CF87E4C7CFB79FAFEFD7DF8FFFF7FFFFFFF",
      INIT_11 => X"D8C4DFBD69CEB0C350A4D38E42947D7F4AAC9C8C418B3083801684790211A69A",
      INIT_12 => X"FFFFFFFFFFFF80007FFFFEFFFFFFFEFFFAD8FAFF7FEC80BD63C4EABE60C963C5",
      INIT_13 => X"CD871091A899D18B86ACFA857D3CFAF57CFEFDFA7FF67FFF7FFFFFFFFFFFFFFF",
      INIT_14 => X"60B8E1BC45C4454B4F93C99A8592508C459F5299C699BF96CE594985BE15CEA2",
      INIT_15 => X"FFFF00007FFFF6F6FFFB73F5FFFFFDFBFCF7EDC3E2C0E0C45BC868BC62C05DC7",
      INIT_16 => X"C59B438A8D967C75269AFD0F7DF3FEF1FCFCFFFB7FFEFFFC7FF27FFD7FFFFFF6",
      INIT_17 => X"D2BD470ACA903FA35687C69CC59041860BA73C878815CD0283AB4892CB874F94",
      INIT_18 => X"7FFFFFFFFFE8FFFE6CFF7FDFF6FFDEBBE2B9DFC2E4BA62C662C25EC867B961CA",
      INIT_19 => X"D60442E51E79FA85FF4FFDFBFBFDFFFEFFFE7FFF7FFFFFFFFFFBFFF1FFFD8000",
      INIT_1A => X"C994CD92498D4695CF97CC9ACC944B1B2CEFC2FB8AD3D18BC3A3C89BCC8FC59E",
      INIT_1B => X"FDFF7AFEFFFC7DFF7BF9E114E0C762BDE4D0DEAF60CEE3BF5CCADEC462BF256D",
      INIT_1C => X"CDC8879B7911F8FBFEF7FDFFFFECFEF379FEFEF97FFBFBFFFFFF80007FFFFBF2",
      INIT_1D => X"C38B4E87C88FC396D39143318AF081FF55F3C98CC3994A87CD8BC596CBED3AE5",
      INIT_1E => X"FFF36FF9FFFADD1D5CB2E1C35DAAE3D661C664B65CC565BFDEC78524C88B51A6",
      INIT_1F => X"A7367DF47EF77FFFFFFCFFFF7FFFFFF9FDFDF8FFFEF780007FFFFFF5F4FFFFFC",
      INIT_20 => X"4B93CDA5CA8E8DA177F7FDF4E9FE45FF518ECD9647A44FA002F672FF3CEFC28C",
      INIT_21 => X"7CFF8AE5E3C5DEC7E8C4D7BA67B65FD565AFE2AFDF92B6944A83498AC6A04A93",
      INIT_22 => X"7BFE7FEB76FFF9FDFFFBFCFFFDFDFFFCFFFC00007FFFF9FFFFFDFFFFFEFEFFF3",
      INIT_23 => X"48999896F8927FF479F646F84C0043994586CB8B76F7F2EBE4FACD9608087DFA",
      INIT_24 => X"D91F61BDD5C2EBBF63CEDBD362AEDF48638612374598D3A0458443914790CB8D",
      INIT_25 => X"7EFDFFECFFF77CFEFEF77FFFFBFF80007FFFFAFBFFEEFEF579FFFCFBFDFB8EFE",
      INIT_26 => X"7B86FAF87FFF7F0BC79BCB9DD295D08FFBA6FF0777FCC6A81BE17AF7FBFEFFFF",
      INIT_27 => X"62B85DC45BC06AAE57CD57CDC94DCAABC196C58C50A0499F4992D2994792D095",
      INIT_28 => X"FDFFFFFEFEF57EFCFEF600007FFFFFFFFEFFFFFBFFFDF9FFFFF9F2FFE2D2E362",
      INIT_29 => X"FBC5FC058053CC96C38A45997B4AF5007DFF4B9284FB7DF2FFFB75E8FFFF7EFD",
      INIT_2A => X"67C9E9C7D7C0A4B143079B8BCC98D08D4289C88FC896C69A4C874BA2C9A97A63",
      INIT_2B => X"FBFFFFFFFFFB80007FFFFDF7F7FBFAFFFFFEFDFA7DFE7FF30FFFDEFFE1B2DFBD",
      INIT_2C => X"CD45CE92CA9B4795D3878319FE11D48BF0F8FBF47FFC7F387ED376FFFBF1FFFF",
      INIT_2D => X"E6D466BE263A559C4B8E4698507C4F1C49194C79C99BCA96C3847C597FE58509",
      INIT_2E => X"FBFF80007FFFFFFCFFFF7DF8FEF87FFF7CFAFFFF69EEB1E55CFFE2B1E0B3D7BC",
      INIT_2F => X"450ACC7E251A00E37FE8C9927D3C79467DF274FA7FFE7EF57FFFFFF6FAFB7EFF",
      INIT_30 => X"83C345A0CC9A469E449247974B8ACD9F4388D18C549A311762DD82EDA9F6CBE1",
      INIT_31 => X"7FFFFBFFFDFFFFFFFFFFFDFFFFFFF9FFFFFFFFFBD9FCDEFB6464E3C260A558C2",
      INIT_32 => X"43150CEB88EBC59DFC6EFA597E2D9C36E9BD7FFFF8FFFFF5FFF7FFFFFDF28000",
      INIT_33 => X"479ACC9B3E838E9A8C7E3C194D11CB18C20D2C05F26484FA22D249E94DB8CA02",
      INIT_34 => X"FFFFFCFFFCFFFFFFFDFFFFFFF7FFF2FCFFEF58FDD9FADE8F6ACDDFC59DBACE0B",
      INIT_35 => X"7410C9961E87239CF9F87DF17FFDFAFFFFFDFBECFDAC7FF37FFF80007FFFFEFF",
      INIT_36 => X"49A54B87C589CF6DC4F2C6324D070B18EE8976F2FBE170F385E0BFE70DF4F1DD",
      INIT_37 => X"FFFFFFFFFFFFFFFFFFFFFDF5FEFFFDF0B2FE61FF52FCE10C61075042CD384F92",
      INIT_38 => X"379D2C5396EB9BFCDEFE7FF47FFF7AFFFBF5FFF9F9FF80007FFFFFFFFFFFFFFF",
      INIT_39 => X"BFA90C0388DB8CF08604020A32187D00690D7408DC1201F70AEDF5FAF5964E96",
      INIT_3A => X"FFFFFFFFFFFFFEFAF7F47EF87DF947FFE6FDE2F9DDFF85FECDF54D52C17F4D94",
      INIT_3B => X"7CFA78F77EFFFFF8FEF476E956FFF9FFFFF680007FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3C => X"F9E399F283E10C7FC467F918F00B7906F0F073E17ADCEE06089F4B30C3E84EF6",
      INIT_3D => X"FFFFFAFFFFFAF8FE7FFF7FF3FEF886FD03F3A1FD9CF9C9EAD20E438F448DB689",
      INIT_3E => X"FFECFAFB7FFBFFFFFAFFFCE5FFFF80007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"02DA05590C868093060E84E909EAFBE076A37D0ACBF04BFC4EFF29FCF5FB7EFF",
      INIT_40 => X"FAFF7CFFFCF7FFFDFEFDFCFEFFFF7FF0FAFF29EFBFFCCA0A543B0108ED0278E8",
      INIT_41 => X"7AFFF4F0FFFC7FFF7BF980007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEA",
      INIT_42 => X"33178C2D85F683FF7807F075EE4383FBCFFC98F874FB7BF0FDFF7BFFFFFEFCFF",
      INIT_43 => X"FFE679FF7CF3FEFDF9F4FEFF7CE7F51187A5C793C683C498F1A9790FF0AEBFDB",
      INIT_44 => X"FFF9F2FDFFF880007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFFFA",
      INIT_45 => X"8729F48CF5817093D197858EF8FB7EF7FFF8FEFF7DEEFFF376FFFDFFFDF3FFFF",
      INIT_46 => X"FEFB7FFCFFFF78E1FF87F799FE8585919D9984978189F47FEDA5AC1FC3D1C9F9",
      INIT_47 => X"FCFD80007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FDFFF4FFFB7BFFFEF4",
      INIT_48 => X"834DBA8CA19B7D85FEAEFCEF7DFAF8FE7FEE7FFE7FF67FFF7FF7F8FBFEFFFFF1",
      INIT_49 => X"FA1B7F83F39E889C528C498D4196CC985491078CD79A6D890B979695FB8FFF95",
      INIT_4A => X"7FFFFFFFFFF5FFFCFFFD7FFBFFFAFFFF7FFAFFF97DFDFDFBF3F8FFFF79F7FEDE",
      INIT_4B => X"CB7EC7977D95FBA0FCE67FEE77FF79FEFFFD7FFBF9F5FFFEFCF67EFF7CFD8000",
      INIT_4C => X"43954C91C298C8AA4C7E4B9644943F8B52828F7668AE7C831490C688402149A3",
      INIT_4D => X"FFFF7FF9FFFAFFF37FFFFFF8FFFF7EEAFAFD7DF5FFFBFAE4FDFF7E7DFF8EF090",
      INIT_4E => X"578D7790FD547FFF77E6FFFA7BF47FF57BFEFDFE7FF178F7FEFF80007FFFFFF8",
      INIT_4F => X"468D4689CB9ECC8148A0C6934D99C4CFCBCCCA94478C4A2626D446034D94C2B0",
      INIT_50 => X"7EFA7DF47DFB7FF9FDF7FCFDFEF4FDF37CFFFFFCFB5F6F7F8D8AC1984F8A4E94",
      INIT_51 => X"73A0F7067FFF7FF5FEFFFDFEFAFF7FF4FBFF7FFDFEF980007FFFFFFCFAF87EF8",
      INIT_52 => X"BF934B9CCA8C459D41D9BBECD7EF4111C827C4E090F75186BF824B894A9AD09B",
      INIT_53 => X"7FF77CFEFFFE75FC7EF17AF6FDF77238FF973EA5C79AC88B4A9FC88FCC8BD594",
      INIT_54 => X"F3D47DF97AFAFAF57FFDFFFBF8F8FBFB7FFF80007FFFFCFAFFF97CFFFDFEF9F8",
      INIT_55 => X"D08E490B4CD7E7F9E6E3CADCC6E013DE6AE3018ACA82589246954893AA7BFFAA",
      INIT_56 => X"FBFAFEFA7AF679F07F177E8FAF9ABF8D458CCC9D458BCA9DC655C48ACF79409C",
      INIT_57 => X"FFFA7FFF7FFBFAFDFFFCFEF57CFA80007FFFFEF7FCFFFCF2FDFA7AF97DFDFCF7",
      INIT_58 => X"ECD9F6E7F7F288F313E9F0F6FBED43A2C1AE448D4D8FCD9DD0A483857F9DFAF0",
      INIT_59 => X"F8F7FBA8FB891C9CCB9852914D94C57E4F0D47F0C5084AA849A24E8D46A3CEDF",
      INIT_5A => X"FEFF7DE3FCFBFDFBFFFF80007FFFFDFFFCFFFFF6FFFF7CF3FBEDFFFFFFEBFEFB",
      INIT_5B => X"71EB6EDFF0D1EFECF1DB4596C1F1499DCA88C9893D9FD589EA95FCA9FDF5FAE4",
      INIT_5C => X"0B8FC792CD9646A94698CEFF45DFCEA0AAA1458DBC8ACE9E47D005F86BDE7CE4",
      INIT_5D => X"7EFFFAF3FDFB80007FFFFBF7FFF9F9FFFDF8FCF37EFAFBDD7D26FDA47B847891",
      INIT_5E => X"74EC7BE576EED14657F546EEC73E4E8F5294C2914E92F88E7D937F0CFDF47EFF",
      INIT_5F => X"CC11C8FBCAF5BFEB861CF88B04A5D499D192C60851EF6FDFECF5F3EAF9E079F4",
      INIT_60 => X"7FB500007FFFFFFCFFF97BFFFFF2F996767B7FBAF5807D977B90D49C44994E99",
      INIT_61 => X"EDF14B05F8FDCEE9C4FFC4E4CF514491CA99D495FA98F29B7F79F190FD4C7D3A",
      INIT_62 => X"4CF97F5EEF745099509AC69245864FF268EE7CDE6FE772EFF5E8EFEB68EBF6E2",
      INIT_63 => X"7FFF7BF9FCF9FFFFFCF2F9287D7C6E7C1318529442994896C79649944BA054F8",
      INIT_64 => X"FAF877FF1FFBC7FDCAEFC8EBC990C79349938685FAA3FF9EFF15798DFD7F8000",
      INIT_65 => X"8E9F4589D298CC9749C384EFF7E7EFF4FAD875E470ED7AE5F6DCF2F377D5A316",
      INIT_66 => X"FCF4FFFA79FD4B8DBD9FDD94C08D4B95C877CE83CC86CCA808077DE9FA87F594",
      INIT_67 => X"FFF072FD28FFC8E2CC814A89CCADCD97BC86C8A4268B1DAEDA2300007FFDFEFD",
      INIT_68 => X"CD7549B0C3F079E877EB6FE5F3EAF7EF74E9F5D2F5F771E6F8F702B7FEFFF4FE",
      INIT_69 => X"79ED14FFBE7BBEC58CFACAF74CF9CBFBCB08CA86507C7C177CAEAF8B3A9BCC9A",
      INIT_6A => X"F7F275BC4899496DC9FBC2E6D1CC4F140A0046023FFA00007FF27CE67CF87FF0",
      INIT_6B => X"61E3F7DBF3EAFAEA6CE372E0F6F672ED6EE0F9DE6AE70BFDFCE6FFFF7DF9FEFE",
      INIT_6C => X"4FF54AF5C6F7CAFABBF441F343FBD4ED835FF4A2C3774A90CF8844944C084BEF",
      INIT_6D => X"40F644FC56FF4BF9C3FFD2ECC5FE57FF11FB80007EFFFEF6FAFF7DBAFE34465C",
      INIT_6E => X"F5E5F2E2F5ED77E8F4D369ECFBF073F27B0C5BFE7FFB7FF7F8F8FEF27FFE71F6",
      INIT_6F => X"FD4A7BDE7CEB7DFC84E34383BEA08B8757A1C590CD954D8DBAF7D8D7F8F1F4F1",
      INIT_70 => X"FDFB73F5E6FD8AFC80FB01FBFDEF800079117317FC60F8D17696FF123D836290",
      INIT_71 => X"F1E1F0F2FBEA76DE70F76FE2F3F47EF473F97FFFFCFAFFF979FFDEF3CCFBB6F6",
      INIT_72 => X"7AA17989FD97F61DAF85D1A1BB8EC8A4449C4A0004DC77F371DFEDE8F5E175ED",
      INIT_73 => X"7FFA76F27FFF7FF3FDFD80007FECFBF87FFF5DFF9AF5AEFAFAFF7AF6FB087DA2",
      INIT_74 => X"E9E3F6F1F8D7F94586FFFFFAFDFE7BFD7CF5F9FCFFF67BFF7BFAFEFC7FF27CFE",
      INIT_75 => X"F1B4C1975089C39ED08F4887CA90C6137BF0EBEE78E178E7F2E9F1E8F6E774E5",
      INIT_76 => X"FDF1FDFFF7F9800008FF0BFBB0F5E8FECBFF09E6C1F948F8A5FA6FE475FF7EBF",
      INIT_77 => X"FB22F10E7AF57AF8FCF57FFBFDFFFCF6FFFE79FD7DF6FBFE7DFC7AF77EFBFEFF",
      INIT_78 => X"429BD085C79ED2934E938090EEEB79EAEFE474E870E876E170F1F9E8F5DF6FEF",
      INIT_79 => X"FEFF800076FAFCFD7FFBFFFFFAF1FDFFFFF8FBFA04F851FB50FBC4FECBEC0E83",
      INIT_7A => X"FFFEFDFA7FF07EFC7AFF7EEEFBFE7FF47DFF7EFFF9FFFFFFFDFFF9FFFFFFF9FF",
      INIT_7B => X"C791C38CC8A60986788E77E970D0F3DC74EC74E973E0F2F0710678A26B9D2243",
      INIT_7C => X"7FFFFDFCFAFA7FF77FFEF3F77CF8FCF67DFF72FDFFEDDFFFDA55CB8FC48DCF97",
      INIT_7D => X"FAFF7DF6FFF67BFF7FFFFEFFFBF9FFFFFEFFFBFFFDFFFFFFF8FFFFFFFCFF8000",
      INIT_7E => X"4994C88F7594F596725B745DF4BBF076F81074956F92F7891198879F7AF7FCFE",
      INIT_7F => X"FDFCFFFB78FFFFFFFCFBFDFFFCFAFDF87DFF7FFEF606419A4D97428DCF9AC999",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => addra(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 16) => B"0000000000000000",
      DIADI(15 downto 8) => dina(16 downto 9),
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 2) => B"00",
      DIPADIP(1) => dina(17),
      DIPADIP(0) => dina(8),
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 16) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 16),
      DOADO(15 downto 8) => ram_douta(16 downto 9),
      DOADO(7 downto 0) => ram_douta(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 2),
      DOPADOP(1) => ram_douta(17),
      DOPADOP(0) => ram_douta(8),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[11]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DOPADOP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOPBDOP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"868F8C1878E50E4892828799ACBAF6F2FBFCEEFEF7FFFDFFFFFFFFFFFFDEB8FF",
      INITP_01 => X"FDFFFDFDFBFFFFFFFFFFFFDEB9FEFEFFFAF7FEF6FBF5FFE7DF578F8F9D9C8A84",
      INITP_02 => X"FDFFF8FCFBF0DCC69F93869F9091A4941F3D9396989F90978A9BB9BCFFFEFEF5",
      INITP_03 => X"E35E8787B6959BBD1A78BAF5EEFEFDF8FDFFFBFFFFFFFFFFFFDEB9FFFEFFFFFB",
      INITP_04 => X"FFFFFFFFFFFFFFDEB9FEF7FCFAFAF3F1F9F0FDFBD6DDA4889A8BB08125A0EFF8",
      INITP_05 => X"FCD447DF8084919339BAF7FFFBEBFDFA65D3968099B19AA7BCFFF5FBFBEEFFF7",
      INITP_06 => X"EA9B848E83A43AFCFEFEF1F7F7FDF9FFFFFFFFFFFFDEB9FEFFFDFDF3F8FCFEFF",
      INITP_07 => X"FFFFFFDEB9FEFFFFF2FDF6FAFBDAFC5C83BF95AEA0ADF2EDF9F6FAF9FCF6FCC8",
      INITP_08 => X"8B31ABFAFDFEF9FAFFF9F9F9F8C7D7C7829990B88939BCFBF6FBFFFFF9FFFFFF",
      INITP_09 => X"9F9B8C8CBE96B2F2F6FFFFFFFFFFFFFFFFDEB9FFFEEDFAFED27F1BD5AB8B828D",
      INITP_0A => X"B9FEFFFCCE5E9E85959388839BBB923DB9FFFBFFFAFEFFFAFFFEFFF9FE5AD793",
      INITP_0B => X"F8FBFEFBFAFEFFFAFBFBFCCADCBB13D98BA604E234F8BFFBFDFFFFFFFFFFFFDE",
      INITP_0C => X"5101D0A5E5F5F1F5F5F5F5F5F5D4B9FEFEEFFACC0299999E9F84998823A9F9FC",
      INITP_0D => X"F5E1617014514134E0F0F0F4F4F5F1F5F5F5F5F5F5F4F4F1F1E5F5D554510570",
      INITP_0E => X"00000000000000000000000000000000000000000000000000000000B1F5F4F4",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFC07FFFFFF8000FE03FFFFE0007DFFFFFFE7AFFFFFFEFD",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFCF4FDFBFFFF9F3FFFFFF3E3D7FFFFFE7FFFFFFFEFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"EDFFB7CEBE3D7FFEEDDBFFFFDF3BF7FAFFDBFFEF5FFF7FFFFFFFFFEFFDBE7AF6",
      INIT_04 => X"3F63BA397366FFFAEF7FF7EF48E6FDF6FDDFFFAFDFBE78F6FFFBB70FDFBD7EED",
      INIT_05 => X"2A429709FC238392255648695E25D195134AC529A0A44E993126FCD934A5A19B",
      INIT_06 => X"BA6EDECA9A06F6977675B7C9FB2B748CEDEC87989D25F08F20DAAF08FD637897",
      INIT_07 => X"1F52A46874A147AD293EB4EAB0A0F4082D51DF9011ABE819B759EE013D426EAC",
      INIT_08 => X"1B5ED4791162488A3536CC1852E64699336AA4C93262538629667D68D126C383",
      INIT_09 => X"FDFC37FFFD7DAA960DFAD259DFFFC78B341ABCF86A6546882F6A6CD811E2CB98",
      INIT_0A => X"FFEFD76F3F3CFFF7F5FFC7FFFEBEFEFAF1EBFFDF5FFDF6F7FFE3F7DFFF7E7FFF",
      INIT_0B => X"F7F3FF7F5FBEFFF2FFEFFFEF5EFE7BFAFFFFDF7F5FBC7CF3F7FFFF8F7EFE7BF9",
      INIT_0C => X"FE03FFFFE0007FFFFFFFEFFFFFFFFEFEFBFFE7CFDFFFFDFBF9F7DFAF7F3F7BFA",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07FFFFFF8000",
      INIT_0E => X"FFE7FFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"F5FBFFFFFEBCFFEDFFEBB7FEBFFFFFFCEDFFCFFF9FFBFCFFF3DBFF9FFFFF7FFF",
      INIT_10 => X"EDEBB7EFFEC37FFEEDDB6FFFDFBFFBF9DBDBF76F3FFF7BF1FDB7D76F3EBEFFFF",
      INIT_11 => X"2B4ACC9952A84C993356DC8931664F7D3767D4F7B326FB0EF56FB770D3DFFFFF",
      INIT_12 => X"195E7B6857CD889D1F32B809AEA24A932F3E94596227C9A2255EAC2A5264C49A",
      INIT_13 => X"11B4CC6F323CADEF322262BEF2BEAEF35866BADF6BFBDD352FB265B3AB7CBB8A",
      INIT_14 => X"332A349933A6CAB50D661C4BB364C714071A6CF1922DCAF35B0C444F71C54BF9",
      INIT_15 => X"175A44A8E0A4CBA2112EC47A53A3C692312254D952E84D991562CCA931644C91",
      INIT_16 => X"F5DFBF8FBFBF7FF4EFEBFFFF9F3FFFEEFFDEB7EEDFFD03932DFE58697FBB4D8F",
      INIT_17 => X"F5CB9FFFFFFEFDFCE7EBCFBF9FFFFFFCF3CFBFFF9FFF7DFEEFE7D7AFDFFF7CFD",
      INIT_18 => X"FDFFDFDFDFFFFEFFF7FBD7CFFF7F7DFBF5EF97BF7F3FFFF9E5EBD7FF3FFEFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFC07FFFFFF8000FE03FFFFE0007FFFFFFFF7FFFFFFFEFE",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"F9B7FF6FFFFFFCFBFFF3FF9F7EBFFFFFFFFFFFFFFF7EFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"F3FB8FDFDEBD7FF8E3E7FFEF1D7F7DFCFFC76FAF9FBE7FFDDBFFE7FFBFBF7BFF",
      INIT_1D => X"FB6474BA93627D8B1CF7FFA873EB7BFCFE3BF76F9FA2FBF6FDFFCF6FDEBF76FE",
      INIT_1E => X"2776147811E84996454ED429D2E04A8D358ACC58B2A54C8A3369EC985263CDAC",
      INIT_1F => X"E7BCADCFE37F4BFE6BCE547FD53DC67214D6ECC752FF47A23B2A9CFA511C4B80",
      INIT_20 => X"29D79C3FB0B856F3E653CDDF70FD84F8F3CF788F157C8CFEDFE7989FC13E56F7",
      INIT_21 => X"258ACC88D122C588334A8CA813234C152366AC91B1A243E06B44A46E1345C1F5",
      INIT_22 => X"DDD29FF49EFE4B9D27BA7C69BFD145951F4E14B9B2A7C48B453E948871E5CC8E",
      INIT_23 => X"F9F3F79F1EFC7BF5FDF3EF7FBF7E7DFEFBFBA7AFDEFDFBFAE9F7777F5FBF7F44",
      INIT_24 => X"F7FFCFAFFFFEF9FEF3EFFF2FDFBFFDF1FFE7E7AF3EBF79F0F9FFE73F1FBCFCF8",
      INIT_25 => X"FE03FFFFE0007FFFFFFFF7FFFFFFFFF4FDFFFFEF9FFFFDFBFFFBDFBF7FBD7DFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07FFFFFF8000",
      INIT_27 => X"FFEFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"F9E3EFFF7E7F76FEFBF3FFDFDFFEFEFFFFF7DFCFFD7F7FF3F7FFFFFF7F3FFFFF",
      INIT_29 => X"F92FB7F641A47FFDEDF3F7EFBFDA7CF3FDDBC79F7FBFF8FEF1FBE71FDF7CFFFB",
      INIT_2A => X"1B5A54A834A8CC921536649953A2BE9B592A5BD97364079017B3E0E90F66FF6A",
      INIT_2B => X"E5FA14AFE67ECEE644CA04DED1BDC995018AB439B37951A12D026D2A32E5CD89",
      INIT_2C => X"F1CFF79F5EFFF7F9FDE3BFFF3F7E79FBEFFBF73F7DFE9AF9FDDD915F3EFEC5F7",
      INIT_2D => X"2B23041FD37DDAFBC057AD5F727F0AF2EB83984F567EF9FFE7D7C73FE23C7CFA",
      INIT_2E => X"2B765CFA32E251911756752931E8C9A31D2E442A74A4CCF51138AC9FB2A8C8FE",
      INIT_2F => X"FDD7D7DC3FBEFA23F5F927427F72F78789EAEFE8FE08C9883A12AC381DA1C7A1",
      INIT_30 => X"E3FB87FF9F7C7EFAE1C7C7CF5FFF7EFFF1C3AFCFFF3E7FF9EBE3F7EF3F3FFEC9",
      INIT_31 => X"E9FFDFEFBFFFFFE8F7D3FFFE1FBFFDFFFFEFF7BFFFFA7CF0FDFF8F9F1FFFFFFC",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFC07FFFFFF8000FE03FFFFE0007FFFFFFFA7FFFFFFFFFD",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFB9FFF9F7D7DFCE7FFFFBF9FFD7FFFFFCFFFFFFFFF7FFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"E7F7F7EFDE837CF8FDCFDF8F1FBF7EF2F7FBF7CF5F3E7EF6FDEFFFDFDF3C7FF4",
      INIT_36 => X"374A85C931A7C597216D54B9F524FEADD543EFCAB1E5FB0EFAAB9F60DF2BFFFE",
      INIT_37 => X"2B9A0C0D74BFCB9C43564C699036C692138694D952A7459F2526DCA9F1645691",
      INIT_38 => X"F7E7CF7FDFBFFFF5F3EFBFEFBEFF39F8EFE7332F1FBDD1FFCDDEAD2FEEBE40DB",
      INIT_39 => X"E5EFFF5FFC3EF9F6FFCBD73FDE7FFCF8F5FFCF8F1EFD7FFDF3EBDFEFBF3E7BFE",
      INIT_3A => X"4747ACEFB1C644FBEB8FF48F71BD8AF5FDD7D85FB13EF0F9F7FB970F227DFAFF",
      INIT_3B => X"0E8E42497FAA4E99111E0CD92824CA9743228C59F366C51823861CB11265C7F5",
      INIT_3C => X"FFEBCF877E037A99F3FF4F593F1EFF8993E41FE83E66FDAA47263FAA5FA2A293",
      INIT_3D => X"FFA387FE9FFFFFFEE1FFE7EFDFF978F6F9C3D71FDFBF780EF5F3FF00DE7D7C7B",
      INIT_3E => X"FE03FFFFE0007FFFFFFFEFFFFFFFFAFEFBFF474FDFFFFDFFD1F7FFBFFE3F7FE4",
      INIT_3F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07FFFFFF8000",
      INIT_40 => X"FFF3FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"E5E3B7BD5FAB7FFEEDCBA7EFDFF47FFAE9DBE7FF5FBF79FDF9D3FF3FBFFE7FFF",
      INIT_42 => X"5B5C73A8B226FE8D1DB7F7D8ADA3F98AFC3BC7385F63FFAEF1FB97EADEE27DD2",
      INIT_43 => X"2572FC99145949983F4A8C2911644D91237EBCB932A648992F466C0933E4B58D",
      INIT_44 => X"F1D7FF7F5F7EF3F7FFE3DF6FFEFE4AF3B7FEE45F7CBDD066396E9516D27CC490",
      INIT_45 => X"F1DBEFAFBFFE7CFCFBE3F79F9FBFFDF8FDF7AFBF1F7F7CF9EBFBC79F3FFE7BFA",
      INIT_46 => X"EBEFCFEF5E7EFDFCF3D7FFBF9FBE79FBFFE7B72F7FFF7FFAEDFFC7FF5EBEFDFD",
      INIT_47 => X"2F64C51A1122C803315FAC10746A51FFEA63DD3FF240FAF9F7D7AF5F34FFFFFA",
      INIT_48 => X"13665699DF65918B552699387967439027AACC7904E2C48B334EBC8870E450A8",
      INIT_49 => X"EDF877C85E027D9A1DD9DFA95F207F9DF63ACFF9BFA67C9732EE4F99FFE7E49E",
      INIT_4A => X"FDFFFFDF9FFFF4EAFFFB278E5F7F7FFFC9FFF7FFFD3A780AFD93B7005FFFFE82",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFC07FFFFFF8000FE03FFFFE0007FFFFFFFF7FFFFFFFEFC",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"F5FBEF4EFEA97EFBFBEBFFCF7E39FFFFFFF7FFFFFF3EFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"153677E741A6FC835D2B97887F9E7977A5BBF727FF20FBA6FD4BD76ADE9DFAE7",
      INIT_4F => X"2362CC1773E5CB9C33466C79925ED6891B666DD832E7079B1B3650E97562FF7A",
      INIT_50 => X"E7DD36BFFFFE4EEFCDCE84CEFBFFC997209AC429F33BCF9731428CF9F2A5C87B",
      INIT_51 => X"F1F3CFEFFF7FFAFFF3E3D75FFFBFFCF8F5E7BF8F1E7FFFFAEFEB9FFF5F3E6DFF",
      INIT_52 => X"F7F3D7FFFF7FFBFFF5EFEF6FFFFFFCFFFBEBE78FFEBFFEFFF9F7C7DFFF3FFFFF",
      INIT_53 => X"FE0FCF5FC33F7DFAF3FFD7BF5E7F7AFFF5E7E75FFFFE7CFFF9EBDF9FFE7FFFFF",
      INIT_54 => X"212E5C3855A4CC9A1742449952E24B14512C1C7193660CFC07A3F88F92C57AFE",
      INIT_55 => X"3B6ABBB941A5CC902F76F4990FE4448F3D5E5C98F3645593177A85A97163C98A",
      INIT_56 => X"FFA8574F5FFF7FAB15FE17EA7C3E7B09042AD7603FAA8795350AE8E9BE82BD92",
      INIT_57 => X"FE03FFFFE0007FFFFFFFE7FFFFFFFFFDF9FF57EFBFFFFFFED5F3FFFFDFBFF2FA",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07FFFFFF8000",
      INIT_59 => X"FFEFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"EF0E362935947FDF4CDF3FEDFAA4FDFFCF9BDFAFFFB7FEFDF79FFFDFBFBFFFFF",
      INIT_5B => X"1372DCD5534346553725D4D5B1564522F56E1CA25155D75006E9BDE511886991",
      INIT_5C => X"2FBEBC0F4CBF4CEE2F5DDC8ED23E4855F75EE415B33B4C0E38EE4C90D255C65A",
      INIT_5D => X"F1FFD7AFFF7FFBF8F5E3FF7F1FBFF9EAFFEB7F3E5EFE33FCDFFEBB6F9EFA48FA",
      INIT_5E => X"FFFFFFDFFFBFFEFFFFFFFFCFFF7FFCFFFFFFFF8FFF3FFCFFFFFFC79FFF3FFDFF",
      INIT_5F => X"FFEBFFAFFF7F7EFFFFFFFFCFFFBFFDFFFFFFFFBFFF3FFDFFFFFFFFAFFFFFFEFF",
      INIT_60 => X"296BE58EB1FE01F9F853F03F3539FFFCFDF3D7FF80FEFCFCF5FBFF9F9FFF7DFF",
      INIT_61 => X"1F429CE192D64554273E54B5938748F9154ED40F31D545FA3528A4BF523ED4E5",
      INIT_62 => X"13AEAC2701BACD392A2694A3309C4E7E255684D7D38ECB5A214A7C75535F4F1C",
      INIT_63 => X"FBFFF7CFFFFFF5FAFDF7D7AF5F3FFFF9F5FA5FFF3DBE05EB57E848AE7FFEC170",
      INIT_64 => X"FFFFFFF01FC07F00FFFC07F01FC00000FE03FFFFE0007FFFFFFFEFFFFFFFFEFF",
      INIT_65 => X"FFFFFFF01FC07F00FFFFFFF01FC07F00FFFFFFF01FC07F00FFFFFFF01FC07F00",
      INIT_66 => X"FF7FEF7014807D00FBFFFFB01CC07F00FFF7FFF01FC07F00FFFFFFF01FC07F00",
      INIT_67 => X"445583A013C04100A08A8C300F803B002243FB7010C05300BF47FD600EC07300",
      INIT_68 => X"ABB873B012C04E001C55D4C00FC04400B439AC9013004D00AA6814B011403D00",
      INIT_69 => X"D5E3E7F01F807700F9ABD7F01FC04B00F5F374701DC04B00DDE9AC7012C03D00",
      INIT_6A => X"FFFFFFF01FC07F00FFFFFFF01FC07C00FFFFC7801FC07D00F1FF57A01F007F00",
      INIT_6B => X"FFFFFFF01FC07F00FFFFFFF01FC07F00FFFFFFF01FC07F00FFFFFFF01FC07F00",
      INIT_6C => X"F9E7E7E01F007D00F9F3FFA01F807F00FFF3FFF01F807F00FFFFFFF01FC07F00",
      INIT_6D => X"F253D4A012C04D00F5E72CA011800A00CBEBC84013807E00F397E7C002007F00",
      INIT_6E => X"FCE5D42012404800B4F8E400128047003869A4F012004900A873CC3011C04500",
      INIT_6F => X"F3EB5FA01F805500D7E585B01F800400E1ACC89015C04A0072C1F45001404900",
      INIT_70 => X"FE03FFF000007F00FFFFFFF01FC07E00FFFFD7D01FC07F00F5FFCFE01F407D00",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 6) => addra(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"011111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => addra(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 24) => dina(34 downto 27),
      DIADI(23 downto 16) => dina(25 downto 18),
      DIADI(15 downto 8) => dina(16 downto 9),
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 24) => dina(70 downto 63),
      DIBDI(23 downto 16) => dina(61 downto 54),
      DIBDI(15 downto 8) => dina(52 downto 45),
      DIBDI(7 downto 0) => dina(43 downto 36),
      DIPADIP(3) => dina(35),
      DIPADIP(2) => dina(26),
      DIPADIP(1) => dina(17),
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => dina(71),
      DIPBDIP(2) => dina(62),
      DIPBDIP(1) => dina(53),
      DIPBDIP(0) => dina(44),
      DOADO(31 downto 0) => DOADO(31 downto 0),
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      DOPADOP(3 downto 0) => DOPADOP(3 downto 0),
      DOPBDOP(3 downto 0) => DOPBDOP(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => ena_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => wea(0),
      WEBWE(2) => wea(0),
      WEBWE(1) => wea(0),
      WEBWE(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  port (
    \douta[34]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \douta[35]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clka : in STD_LOGIC;
    \addra[11]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 17 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"F92E843F2EFFFFBE63C3679F5EB2A376BFCFFFFAAA8220A88288082AA8A2AAAA",
      INITP_01 => X"FFFBE2F905C7F777F3B5236AFFFFBFD6511855DC58FD58FCBFFFFBEFE7E21409",
      INITP_02 => X"ED5D0424792C3BDF7B77C06C688CAB7452A738FFFFBFFFCF1B09EE08D4F2AEBB",
      INITP_03 => X"94FFF8B79FC210862715CA72798E7BFB7BE49BB3C21CB9CE877EFFF7BFFBF71F",
      INITP_04 => X"74FF98894FFDC7D7FDCFBF7AB8B7D711F01999F2AFEEBBEF7159795C5646A05F",
      INITP_05 => X"3A260A77FBFEFB219FEFBA1CC35DE3DDFFB6FE3DB44FAC93142E632EF9DBFFED",
      INITP_06 => X"FFF66EC21391B54180F2FF3BFEBBFEB7BCF8B4CE1EAB6B1DBFBEEF910693EE2D",
      INITP_07 => X"AC2E1CFEBFF6BFFFFFE7DEAF90CA037372DFCBFFFFDFBF82260F682C36F7DFBF",
      INITP_08 => X"7BFFFFCF7F4D6288EC0A3F3CBFBFFFFF9C9905EA9C90FE3BE6FBFFFFECBE7EF8",
      INITP_09 => X"7F43A755359D7C6BFF7FF67B46E19709251BED9BBDFFFFADB7EC8BC77F2EADDE",
      INITP_0A => X"7FF7B72B2D4FFA9EE89DDC46DE7FBBEE8EC597EE0FEB400FC77E7FBFF6986BFA",
      INITP_0B => X"98FC8B99234FD5C9B7B7E2D065BF1E9E69B0AE8C36ABE36FDBE5A799F1667A83",
      INITP_0C => X"CF0B02CBDBB211886E4876357FFC11DEBF9AB744E9E138FB13B066F68BFD6D0E",
      INITP_0D => X"3B81548403987F734AFFB37CD5D6E4769BD1DCDB9EA317863A73B72BC0E7F003",
      INITP_0E => X"9CDB2CB3DAA9A6A392B05D2C412F98FDE77BFCF74C96633882D17FB333FA1105",
      INITP_0F => X"BBBAA9CBC82E00F9E4FFFFBBAE772BDF1D29B8527CFF7BBAEBEDEFAA7656CE1A",
      INIT_00 => X"A00AA03F803F003F4038E03E003FE03CE03FE03FE03FE03FE03FE03FE03FE03F",
      INIT_01 => X"003C403E803CE03DC03F603FE03C603F003C803C003D403A4004C02400230026",
      INIT_02 => X"003FC03EE03BE03F003F803E803DC03D603F40282006601C800CA01B603B603E",
      INIT_03 => X"DEFFFF3B5F7F7D7EFFB6DFFFFF3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000E03F",
      INIT_04 => X"9FFFBEFD7FB9BF3E9FFF5FFB5FFE9FDCFE7FDFBFBE1FA1658D6362E11E66DF84",
      INIT_05 => X"FFFF9F3D3EFFFF7CFFFF1F7FFF807FA9DE621F695FA2FF289FE79F439E3DFFBF",
      INIT_06 => X"5C3F3FBC5FFEFE3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000FFFFFFFFFFBF",
      INIT_07 => X"BFFDBFBBFEFFBFC3DECD5E01FE1A7D1BC2829283F199331D45203F649F7EDF3F",
      INIT_08 => X"BFFF3F3FFE3E5E2D5F82F4EEA3B3AE6906F3ED10BD61BFE1FEE99F15FEBDBE3F",
      INIT_09 => X"9BFC7FFFFEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000FFFF5FFF5F3E5DBEDFFE",
      INIT_0A => X"1F601D181F808E829F019FD30FA7F262D161302933E402223F8CBDBE3FFF5FBE",
      INIT_0B => X"1FFFDFC0803134F5D1F034B1D12C74AF33F42118FE28BF295FE19E3E1C655FCE",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000FFFFBFFFFFFFBFFFBEFFBF3DFE7D",
      INIT_0D => X"E663809F4DA7ADE4A1DF61A70C262EC8705492A89F435F3D9FBE3EBD5F7EFFBE",
      INIT_0E => X"01B1D7B019ED94745971082E70F070707462CAE25E277FE41E425D68BF6281E9",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFE000FFFFBFFFDFBBDFBFFFB95FBF3F7E7F7EB6F6",
      INIT_10 => X"4004E9261301F124F0E554A7D262516106069F7E7F535F7EBEBE1F3FFFFEFFFF",
      INIT_11 => X"B87298B1B671D7AF7AF38C70D46994E3F0659F9F922B672370A2CC202005211E",
      INIT_12 => X"FFFFFFFFFFFFFFFFE000FFFFFFFFFF7FFFFF1F7FFE769E7FBFFB802FD8B13A2F",
      INIT_13 => X"4F45F36833E124246A6694E2A12B9E21BF8FDE3D5F7FDFBEFFFDFFFFFFFFFFFF",
      INIT_14 => X"F83017B1982E98EF71F171D253A452A681E4F42331A73466D1262FE5B316B2A1",
      INIT_15 => X"DFFFFFFDE000FFFFDFFF7D7DBFBEFCBD7FFFFFBE7F7D1BF09870183196B21A2F",
      INIT_16 => X"92E173E551A6D0A2A3A55F1DE9267FC33FBC9F7C7F3FDFFE9FFF5FFFBFFCFFFF",
      INIT_17 => X"59AEB8F2542F11827224EFE895211127D1E4F0E1E2A9AF614245738040EAF224",
      INIT_18 => X"E000FFFFFFFF1FFFDFFAFFFFFB3FFFF77D3F376E582E57B0D96E587118303772",
      INIT_19 => X"D36391E7B5013079A71EFE617F93BFBEDEBFDFFFFFFFFFFFFFFF7FFF3FFEBFFC",
      INIT_1A => X"B82F89DB52E5B3A4B2A3F12553E593667365F2866B7B707E627474A270E8F266",
      INIT_1B => X"5FFFFEBCDFFF9E7FFFFF3FFF9EFEF8C5B831182FF934D72BF83358EF9732F731",
      INIT_1C => X"B2BB0E7973B221E67EC4FE7EFF3D9FFF7FBBDF3C3EBF7F7EFFFEFEBFE000FFFF",
      INIT_1D => X"D22274E9F0E2F321D22330A534E410CCE27C60BF95FC32A3F0E67221D3E2B1A5",
      INIT_1E => X"9D3F7FBF3FFC5BFEBFFE57C7776C58B0D7AAD8B5D8B1B92DF771F9AF97716189",
      INIT_1F => X"8F7BD06389CDFFFDFF7D9FBFFFBFFFFF3FFFBFFEFFFFFE7FE000FFFFBFFFFFFD",
      INIT_20 => X"71687264B2E4D3A93223E3E89DFDDFFDFAFFD1FFD4E393E511E9D3A8E03DFC7F",
      INIT_21 => X"7F3FFFFCBF7FA239F8F197715A31D5EEB9ADF7F5F9AB582B97E46D65522012A2",
      INIT_22 => X"4242DFFE7EFFFFFABD3F7EFFFFBEBF7F9FFF9FFFE000FFFFFFFFBEBFFFFFDFBF",
      INIT_23 => X"B1E432A3D26646659E24DFFD1EFD113E3340D0E671E1F2A27D7D5C7AD93E13E5",
      INIT_24 => X"DFBEE37FB68758EFF5B0DAAF78B3D6B4186BD7D2F8E1040D11E694A831E110E4",
      INIT_25 => X"FEFFBFFF9F3FFFFBDFFDFF7FFF7DFFFFE000FFFF7FFFDE7EBFFBFF3D7EFF7F7E",
      INIT_26 => X"B1A4D4651EE1FE3E7FBF7FC2B1A6B2A7F425D423FEA99FC11DFF312AE6B8DE3D",
      INIT_27 => X"587418D8982E17B1D6B0BA6BB5F3B5F37293D22A90E511A3F42852E732E45466",
      INIT_28 => X"BFFFFF7FDFFFBFFF9F7DDF3FE000FFFFFFFFFFFF7F7FBFFEFFBF3EFFFFFE5C7F",
      INIT_29 => X"72AABE18BEB17F01C014536530A251E61ED2FDC05FBF72A4413E7FBC1FBEFDFA",
      INIT_2A => X"B8AC37EFF9B21AF135B0E92C708106E2B3263423F022D2635225F166536132A8",
      INIT_2B => X"FEFCFFBFFEFF7FFFE000FFFFFFFF7FFDFDBEDE7F5FFFDFFE7FFFFFBCE3FF577F",
      INIT_2C => X"3FF9A1C253D17364B266F1E534A120C67F0415229C7E9EFD1FBF7FCEFF743D3F",
      INIT_2D => X"982C95AFD975596F894ED5E712A39126941F33C73286735ED2A6926530A1BF16",
      INIT_2E => X"FE7EFF3FE000FFFF9FFFFFFF1FFF1FFEFF7E5FFFFF7EDFFFBABBECB9373F782C",
      INIT_2F => X"2AFD52B8D182535F698600385FFA92A4DFCF5E915FFCDD3EBFFFFF7DDFFF7FBD",
      INIT_30 => X"5829767000F051E8D3265167F16451E5F2A213A790E254A3F566ACC5B877C07B",
      INIT_31 => X"E000FFFFFFFFFEFFFFFFFFFFFFBFFFBFFFBFFEFF7FFF9FFE76BF977E5959B8F0",
      INIT_32 => X"53EEB24070C5637AA27AD1E73F1BBE16DF0BA70DFAEFFFFFBE7FFFFDFFFD5FFF",
      INIT_33 => X"67AE530271A673264F20C326235F2F4613C4B286B0038B415C59417E287412BA",
      INIT_34 => X"FFFFFF3FFFFFFF3FFF3FFFFFFFBFFFFF9DBFFC7FBFFB567FF6FEB723BA3357B1",
      INIT_35 => X"A3BD1CF7DD04F2A5872108A73EBEBFBCFFBFBE7F9FFF9EBB7FEBFFFCE000FFFF",
      INIT_36 => X"538EB3A4F2A932E1B1A253DB513CF10C138122C65B623D7C7EB81C7CE1B88FB9",
      INIT_37 => X"FFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFD1F3FDFFCEC3F98BF947FF88358C11410",
      INIT_38 => X"DDE5B3656DA76B54857AC6BF977FFFFDFFFFBE7F3EFDFFFEE000FFFFFFFFFFFF",
      INIT_39 => X"90DF33A56FAA63400276833C414100420C06BF801A835D42F704A0BD427BDDFE",
      INIT_3A => X"FFFFFFFFFFFFFFFF5FFF9F3E1DFD3F7EFFBEB1FF397FF87ED7BFA1FF53BDF3D4",
      INIT_3B => X"D0FA533DFF3EFE7D1F7F9FFE3F7DFD3AF53FDEFFE000FFFFFFFFFFFFFFFFFFFF",
      INIT_3C => X"31636D625EB826BCE0F8E31F11597E86DC421EC13C3C9CF8DE37FB410227128C",
      INIT_3D => X"FFFFFFFFFFFF5E7FDFFEFE3F7FBF1FFCBF3E613FA0FC28BF473ED2BAF443B0E3",
      INIT_3E => X"FDFE9F3F7FBB7E3EFFFEFFFFBE7FFF79E000FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"1BC05E3A2036C1966321C0242143413A02BA7EF85D681F8292BCF2BF937F6AFF",
      INIT_40 => X"5FFFFFBAFE3FFF3FBF7DBFFFDF7FFF7F1FFFFFBCFE7F8ABB4FFF7202154E40C2",
      INIT_41 => X"FFFFFF3F1E3F9D7CFFFF3FFFE000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_42 => X"7C6BEFF6ACC5C30BE1FDE0BFBE017C5D7B1080BE13FF663E1D3EFEBCFFBFDEFF",
      INIT_43 => X"5FBEDFBEFFF97EFFBF3C9F7FFEFDFF7F3F79BD8461A971E411603166FCEADE83",
      INIT_44 => X"FFFC3FFFBFFE1C7FE000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFF",
      INIT_45 => X"30B432FE818A3D637DA0FC24D4E561A3FE3E1F3DFFFEDF3F7FFBFFFCFD3F7FFF",
      INIT_46 => X"9EFF7F7D9F7EFFBF3FFFFE383FE1BDE63F2121A4E7E62125E0A2BD1FFBA92B47",
      INIT_47 => X"3F3FBFFCE000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFF9DBF7FFDFFFE",
      INIT_48 => X"BEA3BFE580D36E63A8E6DFE1FF2B5F3BDFFEDE3FDFFBDFFFFFBDFFFF7FFDFE3E",
      INIT_49 => X"DEFD7F777E06DFE09CE78267B463D2E310E53326956441E335A6FBE2A2E5E565",
      INIT_4A => X"E000FFFFFFFFBFFF9FFDBFFF7FFF5FFEFFFE5FFF3FFEBFFE7FFF1FBEFCBEFFFF",
      INIT_4B => X"7048D2E8F2DFB1A51FE5DEE8DF39FFFBDDBFBEFF7FFFBFFEDEFDDFFFFF7DBF7F",
      INIT_4C => X"1FE3BC6430E513645066D26AD35F92E571654FE2D460C3DD7A6B1F6005643122",
      INIT_4D => X"1FFFFFFE3FFF5FFE7FFEFFFC1FFFFFFE5FFFBF7ABE3F7FFD9FFEFE39BFFFDF1F",
      INIT_4E => X"13E5B06C15A39DE4FF95DFBF5DB99FBEBEBDDFFDDEFF3FFFFFFCFE7DE000FFFF",
      INIT_4F => X"93A2B3253123D16232A7132072683124F3A6917392F39265D1E3924969759100",
      INIT_50 => X"1E7E5F3E9F7E7FFD3FBEFFFEBFBD9F7F7F7DFFFC9F3FFFFFFED75B9F03E250E6",
      INIT_51 => X"72661426DCA8FD81BFFFFFBDDF7FFFFF9E7FFFBDBEBF3FFFE000FFFF9FFF1FFF",
      INIT_52 => X"932275A58FA492A7B22331E790B6EEBB35BBF0C41209F138C47D54E12FA052E2",
      INIT_53 => X"1FBFFEFEDFFDDF3F9FFF3DBFDF7CFE7D1FFDFC0EBFE54F6971A6F222F2677263",
      INIT_54 => X"4A1E9FEA3CB55FBEBE3EBE7D7FBF1FBE7E7EFEFEE000FFFF5FFF3F3EFFFEDF7F",
      INIT_55 => X"939ED0677423F2C2337579FE99381237D13864B75A3840E25220B62471657224",
      INIT_56 => X"FFFF5F7D5EFEDF7E1E3DFEFCFFC55F23ABE68FE3B1A37327B1A2B22751553162",
      INIT_57 => X"1FE75E7CFFFE7FBFBFFE9E3FBFFF5F7DE000FFFFFFFFFF3D5F3F5F3C3FBEBE3E",
      INIT_58 => X"F1283377FB765D397DFC227CC4FABC3D5EFBD0A8B0ABF163B3A393E7B429A0A1",
      INIT_59 => X"7FBAFF3E1E7D3EAA9EE2072732E69464D3A5B1DF13C311FC11C2522AB2E87323",
      INIT_5A => X"9FBDFE797F7F7FF87F3EFFFEE000FFFFFFFFFFBFDF7FFFFD7FBFBF3CFEFB7FBF",
      INIT_5B => X"9AF77F79FCFA3B379C347BBBDCF631A5B0BC12A73262F2E22FE7B5A23A25BF6A",
      INIT_5C => X"3EA1FE2442E3D1E433A5116AF126F37F11F73368AA6851A3CF62132711B4C1FE",
      INIT_5D => X"FFFDFF7F7F3F7E7CE000FFFFFFFF3EFDFFFE1EBF7FBE5F7CBF7EDEF79F899FA9",
      INIT_5E => X"9EB89EFDBD7BDEB9DD7BB491D5BDD17BF1CF936334255064D3647E239FA49FC3",
      INIT_5F => X"316633267304B27E723D8FBA6147BE222129552614A4F142F4FBBBF75B7D1CFA",
      INIT_60 => X"5FD3BFCEE000FFFF9FFF3FFFFFFE5EBFDFFC7EE55D5E1FEEFDE01FE59EE43527",
      INIT_61 => X"5A7A3D38BBFCB2813E7FF37A913F317933D43164B26615657E663C261FDE9CE4",
      INIT_62 => X"12A8357ED33E9FD73BDD54265466D16451A1D3BCDA3BFF37FBB91C3B7DFA7BFA",
      INIT_63 => X"4000FFFE3FFF3EFEFF7E5FFF1F3C9ECA9F9F1B5F84863425D026D26591E512A5",
      INIT_64 => X"DDB50885FE7E7DBFA7BEF1FF723B127A72A471A4B2E46121DE28BFE7BFC5FEE3",
      INIT_65 => X"9E61FDE5232711E2F4667365F2B0E13B9DF91BFD9E76BDB9BC3B9E397D37BC7C",
      INIT_66 => X"BFFF9F3F5F7DBFFEBEBFF2A38FE7B7A5B023F2E5721DD3201361F36A2241FFFA",
      INIT_67 => X"DF7F1D7FBFFCFC3F4A7F32783360B262F32BD3E58F617229C92267ABE000BFFF",
      INIT_68 => X"4E26B366139D12AC10BC7EBABDBA5BB9FCFA3DFB5D3AFDF4DDFDFCB9FE7DE06D",
      INIT_69 => X"1F7EBFFCFEBB653FAF1E4F31E33E323D737E12BED2829221F41FDF057F6B6BA2",
      INIT_6A => X"DFFE5F7F9DFC3DEFB22672DBD2FE907994F3138542405140C0005FBFDFFC1F79",
      INIT_6B => X"F30272FB78F85DF65CFA7E3A1B38DC38BD7D1C7BDB38FEF7BA79C2BFFF393FFF",
      INIT_6C => X"9F4DB157B3FDF23D517D927E6EFD70FCB0BEF53B40D7FD6810DD122493E21165",
      INIT_6D => X"DFFFDCBD907DF17F357FF2FE90BFD43BF1FF75BFA000FFFDDF7FFF7D5E3F9FAE",
      INIT_6E => X"3E3CBD3C5DF9BC781DBB7DFA9D741ABB5EFC9CBCDEC376FFFFFE1FBD5E3EDF7C",
      INIT_6F => X"0FE05864DF927EF79F7A7FFF613810A0EF2822E115A8B1E4B3E5F3A3EE7D3635",
      INIT_70 => X"D37E6D7DBFFEBCBD993F623F603EE0BE40003FBCFE841C853F18DE345D657FC4",
      INIT_71 => X"BDB83DBB5CF85C3CDEBAFD775C3D9BB89CFD3F7DFCBE5FFF3F7EFFBE7EBF773C",
      INIT_72 => X"5EC23FA83E28FEE2BFE5BD472BE1D4A88EE39229112792006137FDFC1CF73BFA",
      INIT_73 => X"DFFC5F7F5FFEFD3C7FBFBFFCE0009E7F1FFBFEBEFFFFB7BF463DEB3EDE7F1E7D",
      INIT_74 => X"BD797D393AF8FD3CBE35FE91413FDFBEBFFFBEFF9F3DDEBFFFBD5EBF9EBE5F3F",
      INIT_75 => X"FDFF9F2FFCED30E5D422F0E7F463122172641144DEFC3AFBFE783E791C7AFCBA",
      INIT_76 => X"FF7E3F3FFFFC3FFF0000FEBE627FA2FECC3DFA7FD2BF22B910FE523E89BEFBB9",
      INIT_77 => X"FDB75BBBDEC8BC831E3DBE3E7F7DFFFEDFBFDF7DBFFFDEFFDFFD9EBFFFFF7E7D",
      INIT_78 => X"72FB6360B066D46171A77424132460245B3A9EFA1BF91D3A3C7A3D781C7CFEBA",
      INIT_79 => X"FFFFFEFFE0005FFFBD3E7F3FFFFE3FFFFE7C1FBF5FFE1EBE613E74BED47E917F",
      INIT_7A => X"7AE7C8505FFF1FBE9FBCFF7FDE7FDF3B9EBFFFFDFFBFFF3FFEBFFFBFFFBFFEBF",
      INIT_7B => X"F16333A591E4D0E3D229C2E13E231DBA9C749CF73D7B1D3A1CF8DC7C5CC1BE68",
      INIT_7C => X"E000FF3F9FFF5FFFFE7EDFBDFFFF1CBDDF7EFF3DBFBFBC3FFFFBB7FFF615B2E3",
      INIT_7D => X"DE7DFF3FDE7FDFFDFFFDFEBFFFBF3F7FFEBEFFBFFF3FFEFFFFFFFFFFFE7FFFFF",
      INIT_7E => X"33A692E6F2E59223DDE57DA5BC167D17DD2E1C5DBE445D253BE41DE2E4A6E1A7",
      INIT_7F => X"BFBF9F7F7FFFFFFEFE7F7FFFFF3E5FBF1F3EFFFEDFFFDFBF5D01F0E6B3E55063",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => addra(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 16) => B"0000000000000000",
      DIADI(15 downto 8) => dina(16 downto 9),
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 2) => B"00",
      DIPADIP(1) => dina(17),
      DIPADIP(0) => dina(8),
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 16) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 16),
      DOADO(15 downto 0) => \douta[34]\(15 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 2),
      DOPADOP(1 downto 0) => \douta[35]\(1 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[11]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  port (
    \douta[52]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \douta[53]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clka : in STD_LOGIC;
    \addra[11]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 17 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFF944FE7FFFFDFFFFF7FFFFFFFF50FFFBFFFFDAAAAAAAAAAAAAA88AAAAAAAA8",
      INITP_01 => X"FFDFFFD44A2A77310024FFFFFFFDFFFF62019FED9F5E1FBFFFFFDFEFF7370FFF",
      INITP_02 => X"0140156549EFFFFFDFB3F616483C02555127FFFFFDFFFD0C350076209233FFFF",
      INITP_03 => X"2FFFFDFEFD7321B1050B0C53D3FFFFDFFDF8849C351D590521FFFFFDFFFC460E",
      INITP_04 => X"25C360503F44BC3FFFFDFFFF52CE40827FF1AE8FFEFFDFFFDCD2633457ED04E1",
      INITP_05 => X"441FF3FFDFFFFFB0201057E51509AFFBFDFEFF7C64258517D449BEFBFFDFFFF2",
      INITP_06 => X"FFFFC0815C41F3878DBFFFDFFFFEBDD7455546A76D9FFFFDFFFFFFE2C1834081",
      INITP_07 => X"E90B47FEFFFDFFFFFFFFA9C834446B54FFFADFFFFFEF819C7F42FB904EFFFDFF",
      INITP_08 => X"DFFFFFBFFFD91896E22BFFEFF9FFFFFFFFFF882446B9BEFFFBDFFFFFFFFFF54B",
      INITP_09 => X"695394E92BEFFFDFFFFFFFD5045445405BFEFFFDFFFFFFEFF444687944FFFFFF",
      INITP_0A => X"FFFDFFFFFFF74441078E914DEFFFDFFFFFBF34551D0430352BFFFDFFFFFFFF51",
      INITP_0B => X"776C0279648043FFFDFFFFFF512679C3EEE85D3FFFDFFFFFF55110D478C901E3",
      INITP_0C => X"BB55D4DFFFF455FD9078FAE8BB15197DFFDF4047B580DFAF9FC111BBDFFFCE50",
      INITP_0D => X"BFE3C17DAAADBFFF2A408FFF9EF0885BEAF8BFFFE1D279FFD15D765556E6A21B",
      INITP_0E => X"5BFFFFFFFCFEFE6C422537EA9BEFFFFFFBD5D555FD994CAEA3A6EFFFBAE9FBCF",
      INITP_0F => X"FFFFF411D60AB30BFFFFFFFDFFFBFBD441FAAA2DBFFFFFFFDEFFFEA9401BFAAE",
      INIT_00 => X"980FE00FE80F680EF00FD80FE00FF80FF80FF80FF80FF80FF80FF80FF80F000F",
      INIT_01 => X"F80FB80FF00FC00FD80FF80FD80FD80F880FD00F800E68016809B808A809D002",
      INIT_02 => X"F80FC00E980FE80FF80FC80FD00FF00FA80AC801F007E003D806E80EA00FF00F",
      INIT_03 => X"07CED7DFFFDF87EDFFBFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFF80FD00F",
      INIT_04 => X"FF7FF7EE9F8FFFBF9FFE87BFA7B7471F97AF970770D9C3D84078EF59EFA1E73F",
      INIT_05 => X"FF8FC73FA7DFA7FFF79F1FA0D7EA8F589F9A67E86FCADFB99FD0C74F97EFA7FF",
      INIT_06 => X"DFAFFFFFB70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFFFFFC7FF77AFFFFF",
      INIT_07 => X"EFEE673FD7F09733E700FF46F786A8206C2024E6DC878188F7D977DFFFCFD70F",
      INIT_08 => X"FF8FFF4F074B3FE05D3B30AC431A113CFBC467D8A7B8E73AFF85A72F2F4FDFFF",
      INIT_09 => X"FFFFFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFFFFFFFFFFF8FBFEFE7FF8FFF",
      INIT_0A => X"AFC637A053207FC05FF473E92458BCD80C4A94B9C808E7E3F7EF97FFCFAFD6BF",
      INIT_0B => X"57F0D00C7D7D2CBC6D6C048B3D2B2CFD28C6BF4AA7CAFFF8AF4F6F59EFB37FD8",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFFFFFD7FFD7FFD7FFF77FEFCFCF1FBFFF",
      INIT_0D => X"206763A9E3F940B738E933498B724C15842ACF90EFCFCFEF972FE79FDFAFFFFF",
      INIT_0E => X"0DAC36FB8D5DF6DC9A0B0C7C0C5C3D582A78D749A7F9C75017DA07D800FA4158",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFF07FFFFFFEFFFFFAEEFAFAFAEAFEFFFDF079F357DA0AC",
      INIT_10 => X"EAC9ECC0DC8904798D691C186498A101D79FA7D4CF9FD72FFFCFFFBFFFFFFFFF",
      INIT_11 => X"266CD51C05EB1E3C5B1C5D1AF57894595FA7044A51882C286308F801E0879041",
      INIT_12 => X"FFFFFFFFFFFF07FFFFFF6FFFF7DF37FFFFDFD75DCF5FDFFE280B066CB64B861C",
      INIT_13 => X"BCDAFCB851093219D538C0CA6748DFA3D74FEF9FC7AFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"75AC1E0B263B74BCA4B4FCE9642960B95D081CA9B559CCC98BF9D4C53C2883D1",
      INIT_15 => X"FFFF07FFFFFFFFFFFFDFFFEFC76FFFFF67AFEF9F26BCF65C4E0C2D6C260BEE4C",
      INIT_16 => X"CCF95CA9646828A9E787AAC9F7B0D7AFB7DFFF8FFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"263C5D4B9CE0D44993FA65C8FCC9CCB9CC38B06ACB982811ACA0107A3C098C78",
      INIT_18 => X"FFFFB7FFDFFFAFFEFFFFDE8FBFFD1FCF05DB264B45ECE69B065C3E4CC5DCE6EB",
      INIT_19 => X"B4B9ADC0D45E79C79F588FE4E7AFDF6FF7FFE7FF97FFEFFFFFFFB7FFFFFF07FF",
      INIT_1A => X"82B61C393CA9E42884C934F93C993C99AC61129E5C5F905D3D28A47ADC195498",
      INIT_1B => X"476FF7BFFF5FFFFFFFBFDF7FCE31160CD64B368D15CA460CCE7B558CEDCC564B",
      INIT_1C => X"CB5E2CAC78F9DF31EF1FF7CFF7BFFFEEFFCFFF2FDFDF8FFFEF6F07FFFFFFFFFF",
      INIT_1D => X"6D3AAC78BCC8D408A469DD797C73D85F982F5DBF1C28DC797C48F4B824A92C6E",
      INIT_1E => X"E7EFFFFFCEFFA7FF3DB1ED9B862C7DAA766DFE2C568B259CFEAB6DDCA0A29408",
      INIT_1F => X"8C58DAF3BFBFFFDF67EF9FEFF7FFCFFFDFFFFFBFFF1F07DFFFFF97FFFFFFF78F",
      INIT_20 => X"7C59B4798CAA8C4880BAFFFF9FBF663FCCBF3D385CB9B4FA6CEA284F475FDB9E",
      INIT_21 => X"D7FFEF9F904E1E7C55DCB60C35FBB6EB2DFDFEAA3E4A25F95BD934485C283CDA",
      INIT_22 => X"BFBFFF7FE7FEFFCFFF3FCFEFEF9FFFBFBFFF07FFFFFFAFFFFF2FE7FF9FEFCFCF",
      INIT_23 => X"74680C19B919A709F7FFFF3F74CFB490247904B8B468FFDF7F5E668FB4B9A010",
      INIT_24 => X"28DF3D21263BD5ACB66BAE6C7D6D7E5A95F4A678194354B9056A9CB89C792CF9",
      INIT_25 => X"FFFFEFCFDFFEFFFFEF9FE7DFE7FF077FFFFFFFFFEF5FFFFEF7CF9F3FFF9F2FAF",
      INIT_26 => X"9519A778B74FC7EF07F0CCE934695D49BD085F6AD7F0B7FF44CAD16EF74F5F7F",
      INIT_27 => X"1676FE4B75AC9D6C765A45FC35FCBC24C44A043924A88D0A84396C39CD59B4E9",
      INIT_28 => X"BFDFF7BFBFFFFFDFFFCF07CFFFFFDFFF77FFAFDFFFFFDFEFDF3FF7FFFF5FEE5D",
      INIT_29 => X"FF465F6CDF80E805AC997C6834B93F74E7B047AF0C69B88FF7AFFFEFEFBE67FF",
      INIT_2A => X"05FB76EC6E3C6DEC6A8B5C60B17864890508FC489418CC0994D9AC98346AC42A",
      INIT_2B => X"AFEFE77FB7FF07FFFFFFFFFFFFBFDFEFEF5FFFFFCFBFFFBF97EF10FFC5DF262B",
      INIT_2C => X"98B0B4B454D9CC5954F90568F87197C1DD88971FDF7F47EFFFF3EFDDFFCFF77F",
      INIT_2D => X"05EB8EDD3EDB5AD3C5B96C684CC97D07B4F1D4213C9714294C591C682F852FFE",
      INIT_2E => X"DFCF076FFFFFBFFFDFFFFFFFF7BFD7DFF7FF9F9FFFFFFE2E932EED8F4E4B3E0B",
      INIT_2F => X"DC6EACA03C97CAA1880E5FFEC429A7B3E724C7BF9F8FFFFF8FDFFFFFFFEFFF5F",
      INIT_30 => X"D51CE07C74BAC489E4D9E499CCF9CC68DCA9B4782528CD992B314E5D285E923F",
      INIT_31 => X"FFFFE7FFFF7FC7BFC7FFFFEFD7AFFFEF773F2FFFFFFF8D2F9DDFE696A67CF60A",
      INIT_32 => X"D4501C71409E901EE4B937869745D7C2F183AE3BFFFFB71FDFFFFFFFFFFF07BF",
      INIT_33 => X"D4C0F4E99489BBC850C9F897439164B1D461BC40EA906F56B09F0A5D542EF4BB",
      INIT_34 => X"FFCFFFFFFF8FFF8FFFFFFFAFFFFFDFEFE75FDFFE251F153F2DC8164C1DEC01AB",
      INIT_35 => X"5F3DEF817429C9C86A69B72FEFAFFFEFFF5FAFFFBF6EFFBA97FF07FFFFFFFFFF",
      INIT_36 => X"1CE9D42AF478CCA88CF6C48F6CC32CA02071D6D897DF4F6EC71F10AEABEE58AF",
      INIT_37 => X"FFFFFFFFFFFFFFFFFFFFE7FF7FBFEFCFD7BF7B4F6E2F2D5FD6205E30D504DCA3",
      INIT_38 => X"3CD9E3E9C29589DEE96FFDDFEFFF67FF675F9F7FFFFF072FFFFFFFFFFFFFFFFF",
      INIT_39 => X"4CA96BEA9090901D388FC0D0485093410FA09E2007903D81A02FE85E87BFB7B9",
      INIT_3A => X"FFFFFFFFFFFFAFFFFFCF87FFF7DFFFAFE4FF66DF3E5F15AFC0BF94AF2CB53C37",
      INIT_3B => X"5CCFE78FF71FA7DFFFFFFFDFAFCECDCFFF3F07FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3C => X"DBD8872E212F507EC08704966F2147109730BF0F6F7ED74DB6D0B009EC639C7E",
      INIT_3D => X"FFFFD7FFA75FC7FFCF0FFFEFEFFFCFCFF8CFF07FAA2F918FFC2EA5504C781C98",
      INIT_3E => X"FFCFC7EEA74F4FFFFFFFFF5FB79E07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"0F0EF84D38A5C088580930D0808E082EE77E37DAFFA0846F446FB4DFD23FBFBF",
      INIT_40 => X"D7AEF74FFF8F9F9FC7FFEFDF9F9FEFFFCFEF575F722E7BFF6C404D93183096B0",
      INIT_41 => X"DF8FFF4FFF9F2FFFFFFF076FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_42 => X"33FD9B71708248BF506F07001F1756C4806FE4FFF90FE78FDF6FFFAF677FDFFF",
      INIT_43 => X"BFEFEFFEEF3FF78FFFDF873FFFDF7F9EE7A150EADCF944D81499473AD720CF1A",
      INIT_44 => X"E7FFFFFFCF5F07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57FFFFFFFFAF",
      INIT_45 => X"B43FF8E23F98AFA81F09DD39E0A8C70FDFCF87FFFFCFFFBEF7FFFFCFFFBF87BF",
      INIT_46 => X"9FDFEFDFA7EFFFFF3F0E8FF82FF99FC818A9C1B9488978287787DEAABA916C6D",
      INIT_47 => X"C7FF079FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFD7FF37FFFF7F",
      INIT_48 => X"0FF99874BB587239DFB8BFCAC78EFFBF770F9FFEFFFFFFEF9FFFFFFFCF0FEFCF",
      INIT_49 => X"FFDD0F413FF8CF7928198D58CC38BC394C89FD9928F8FDE98EB8C87949D96768",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFA7FFDFBFFFAFA76FDFFFE73F",
      INIT_4B => X"DC3A2C7774E97FB9D77AF78E77FEF7EFB73FFFFFBFFFDF3FFFFF8F9FEFDF078F",
      INIT_4C => X"F719E47964996C59B41AC4978C796499D3F84D58B8F7AE1A7F98A9996CC86412",
      INIT_4D => X"AFFFE7FFEFFFDFFFD7FFFFFFD7FFCFFFEFDEDF4FC7BFFFFFBF4EF7BFDFC71FF8",
      INIT_4E => X"AC5B05E837F977A5FFEFF7EEEFEFDF6FAFFFF77FB7BFFFFFEF1F07DFFFFFFFFF",
      INIT_4F => X"C4C954C8F4D8B469A4885C1A14C9B4A9749C1C7C845944F80C521ADDF4C0BCB9",
      INIT_50 => X"D7CF9FDFFFBFC7AFFFFF57AFEF9FAFDFDFBF278FFFFFEF7576E780B8AC398CE8",
      INIT_51 => X"A509FF6A37E0D7FFA7EFAFDFF7BFF75F8FEFBF6FFFFF07DFFFFFC7FFFFFFCF5F",
      INIT_52 => X"F5A90BE904699C48CCB97C2D636EA5EE64313402A48E191FA53883E86C788459",
      INIT_53 => X"DF3FCFFFBF8FEFFFA7AF9FDFFF5FE7BFFF43FFF953DAC4E95408A4596C184C88",
      INIT_54 => X"FFFAAF6DFFAFF74FFF5FA7EFFFEFEF1FCF7F07FFFFFFE7FFC78FC7FFD79FA7AF",
      INIT_55 => X"6419ED08CC30649D7EFF8ECE3C4D04CEB96D364E10384C48D509DCD904093247",
      INIT_56 => X"F79FE77F8FDFB74FBF3FC7F1BFC82AF9D3F85CA8FC897CA85C49A4D59C98E4E7",
      INIT_57 => X"D75FAFFFEFEFDFFFC74FDFFFFFDF079FFFFFD7FFCFCFFF8FF78FC7AFBF4FF7BF",
      INIT_58 => X"BCDDCE9D1FCEE7FF001FF17E1F0F577E146A942AAC989CA8DCB9550AA068CFF9",
      INIT_59 => X"B7CF871FBF6A7F78D1896C796559ECA95CB7ECF0ACFF54B0CC4AE43A74C85CCA",
      INIT_5A => X"DF5EEFDFE7BEAF8FD7BF07FFFFFFBFFFFFAF979FD7FFCFEFEF8FBF7ED7EFD7EE",
      INIT_5B => X"979E9F3E4ECDB70D6EEE173D74A96C2F7C29EC5824382BB9EDA88649D79AFFAF",
      INIT_5C => X"4F09E078C4F98CA9A4DAF4C96CDF84BD44DA425A14A86B981CC9FCEDC8BF3E7D",
      INIT_5D => X"DFDFDFCFFF5F07AFFFFFFFFFFF7FB7FFFF2F9FAF6F9FFFDF5F7DDFA2BFAA4768",
      INIT_5E => X"8F3F679EDF6EB7DE8D24EDEF44DE4CF3FCD84D49AC594CD9AF0827A9FFF01FBF",
      INIT_5F => X"B4C94C81C41FFC4FFBEE00D10F08688A5589F52984D0C53EF6FD269F5F7EFF2E",
      INIT_60 => X"DFB307FBFFFFBFFFCFFFFFFFC76F9FFFD739EFD737FB27B827B98F797D899499",
      INIT_61 => X"77CE36BFAC60771FF4DE7C8FA49E8CF5949974599D996759A749FFF7FF399FB4",
      INIT_62 => X"AD9F5C8FE7F55EF72D09CD1994D944A87CEFFE0EAF8D56EE074EA7BE66FE2E1E",
      INIT_63 => X"FFFFE7FFCF7FFF9F97FFB78FDF32D7A706D7B9618549E449CC19CCF98C29DC6A",
      INIT_64 => X"EA614F5FFFEF21EF8CFF8C4ECC1EAC29C4E9DC39C8C8874A67F9D7F1AF3807B7",
      INIT_65 => X"A7B9C8C9D4B895593499942C708EF7FE3EFF7F5D47AE5F0E5F4E17CD8F5F2FED",
      INIT_66 => X"CFCFFF9F97FF472FE468E3B9C5A9A408CC79B407B4C8A498049AC010CFBEF758",
      INIT_67 => X"DF9FEFFF7F4F5A1F841E9C989C582C8A1CB9F398AC0A6AC8F9AA0552FFFFCFFF",
      INIT_68 => X"C499BCA71C2B7C6F3F2EA7EEC6EE277E6FFE2F8EE7BD9FBFAF2EB71FC05BFFDF",
      INIT_69 => X"EFFF6F2EF98FA3C76BCCA88FBC4F1C9F346F44603C484D073F81A79AFAE84B49",
      INIT_6A => X"FFDF17FF0FBB4C096C36BC3F345E253C5CE170501CD003FFEFAFEFFFA79ED79F",
      INIT_6B => X"847E463E5FFD2F7E574E7E8E4F4E97DFBF5E36CEBF3DBE5EF86FF78E87FFEFBF",
      INIT_6C => X"DCD52CFFD44FBCDFCC5FDB7F443F346FE58EB875779A5C77DC49D4F8AC998480",
      INIT_6D => X"CF2F6C1FDC9F35DF647FA46F054E14BFD5EF013F97FF37DFC7DF874F6FABFFD3",
      INIT_6E => X"578F57BE1F5E07AEB7FE6F9D062EF77F3F6FEF70357FFFFFCFEFF70F97DFE7FF",
      INIT_6F => X"BE59D7A4A77D9F9EDFBF688EFC6813CAB87885EA44B9A4B944A87B5F1D0DDF0F",
      INIT_70 => X"FBDFCFBFFF6F66CFF04FF80FD82F07AEFFEFB721FF61D786A70DE7D9AFF1ABB8",
      INIT_71 => X"6FAE473E9F0F676E87DD970F66EEF77FDFDFBF6FC7FF979FF7EFB72FB5CFE49F",
      INIT_72 => X"5FAAE74A1F381FB907D13AF80D2A8378AC0A6C89BC40B88D8FFF8F3D2EBE17AE",
      INIT_73 => X"EF9FE7FFDFCFDFEF7FFF07BF8F5FBFFE076F8FFFB5AF914F1ACF875F575FF770",
      INIT_74 => X"578EF63EBFCF170DA724A0CFCFEFFFBFD77FCF8FFF2F9FEFDF6FB76FDFCFAFFF",
      INIT_75 => X"BFCBEF3B2C390D0874792518E4080459E4D19F7FFE7E471E0F1E6F5E0F2E97DE",
      INIT_76 => X"FFCF9FBFEFBF07FF672FC01FF87FFB0FAE1FD46FF82EB43F440F12AF0EEE4FBF",
      INIT_77 => X"BEEE2F72FF20D74FF74FEF9FAFFFE7AFB79FFFFFD73FE7BF976FF7BFD75F97DF",
      INIT_78 => X"48D8F4597D183CE985499CC9800976CE0F3E3EFE4F8E471E3FDE2F1F1F2E8FAD",
      INIT_79 => X"CF3F07DFFFFFDFCFAF8FF7FFFFFF375FCFAFC7FFD76F208FFD2FFD1FA49FBC7E",
      INIT_7A => X"AA54C7FFAFAFDFEFFFDFB75FF7CEEF6FB7FFF7AFE7CFBF2FDFEFFFAF8F2FFFFF",
      INIT_7B => X"F4E99CF99C78840A5838570827EE471D477D0F9E8F8E477EFF5F7F30171A7679",
      INIT_7C => X"D78FEFFFDFBFFF5F8FEFFFFFC76FD79FC78FDFAFDF4FF7FE65FF1D45DC782C98",
      INIT_7D => X"878FE75FFFBF77FFF76FA7EFFFDFFF6FFFEFFFCFFF7FFFBFFFFFFF1FFFFF079F",
      INIT_7E => X"3439343974084FB987A9E74567854F8B07178711378916F9EFF81929F0E9D75F",
      INIT_7F => X"D7DFBFBFF7FFBF1FC7FFB78FFFAFEF8F6FBFFFBFAFEF7FC06C39BCB98C5864E9",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => addra(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 16) => B"0000000000000000",
      DIADI(15 downto 8) => dina(16 downto 9),
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 2) => B"00",
      DIPADIP(1) => dina(17),
      DIPADIP(0) => dina(8),
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 16) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 16),
      DOADO(15 downto 0) => \douta[52]\(15 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 2),
      DOPADOP(1 downto 0) => \douta[53]\(1 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[11]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  port (
    \douta[70]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \douta[71]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clka : in STD_LOGIC;
    \addra[11]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 17 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FF7DEA2FFFFFFFBFFFFC13FFFFFFDA8BFFFFFFFBFFFFFFFFFFFFFF46FFFFFFFF",
      INITP_01 => X"FFFBFFF6FFA7AB2103AA8BFFFFFFBFFFCAE7A3FF40507AFFFFFFFBFFFDAAA2FF",
      INITP_02 => X"A7AAA8CAAA8BFFFFFBFFFEEFEFA3A818AA89FFFFFFBFFFFFBEFA8AA38E0CBFFF",
      INITP_03 => X"CBFFFFBFFF6EEEF3AAA2FEA89CFFFFFBFFFEBBFB2AAA82AAA32FFFFFBFFFFFEF",
      INITP_04 => X"AEF32AAAABDAAFCBFFFFBFFFFFEBAAAAAAFFAAFCBFFFFBFFF6BBEE6AAA2FEAAF",
      INITP_05 => X"EA0AF6FFFBFFFFFAFCAAAAA34E86EFFFFFBFFFF7BEDEAAAAB6AA2EFFFFFBFFFD",
      INITP_06 => X"FFFFFEF2A8400FF0BC52BFFBFFFFFDFBEAAAA2FD1BC3FFFFBFFFFFEACA843A34",
      INITP_07 => X"F542F62FFFFFBFFFFFFFFF5E2D000BFA3FFFFBFFFFFFF41AA342BFFDAAFFFBBF",
      INITP_08 => X"FBFFFFFFFFF6AA292D1FFFFFFFBFFFFFFFFFF40B78BF2FFFFFFBFFFFFFFFFDAA",
      INITP_09 => X"A8EA3A88EAFFFFFBFFFFFFFDAAAAAAA8EABFFFFFBFFFFFFFFFAAA32DAAAFFFFF",
      INITP_0A => X"FFFFBFFFFFF6AAAAAAF4BEAA2FFFFBFFFFFFD7AAAAABE26A8FFFFFBFFFFFFF7A",
      INITP_0B => X"AABEAAFFFFEEAAAFFFBFFFFFEAA19AABFFFEAAABFFFBFFFFFDAAA8CE2FFFEA8E",
      INITP_0C => X"FFFAA88BFF45AAAB5EABFFFF6FDEA8C6BFFCEAA8BDAA2FFFF7DAAA2FFBFFFDAA",
      INITP_0D => X"FFFDCE8BFFFFFFFFE3F42BFFDFFD86A8EFFFFFEFFFAAA8BFFEA8E8BAAAFFFFF6",
      INITP_0E => X"F7FFFFFFFFBFFFDAA2AA2FFFFFFFFFFFFFF90F28FFEAAAFFFFFDBFFFFFFFBFC3",
      INITP_0F => X"FFFFFDEAAABFFDA3FFFFFFFFBFFFFFFEAAAFFFFD2FFFFFFFFBFFFFFEAAA2FFFF",
      INIT_00 => X"F5D7E7EBF9CFFBF3DBF7FDB7F7FBF9EFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFC",
      INIT_01 => X"FDD3FFFBEFFFFDDFF1FBF7E3FFEFF7FFF7EFE3EFF5C7E1E81BC1DA342EB7EA5F",
      INIT_02 => X"F5FFFFEBF1FFE7E3FBCFFFF7F3FFF5E7FDEBEBFBF3D7FDE7F9FBF7F3FBEFE9F7",
      INIT_03 => X"F9F7C1F3F583FFEBE1FFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE03FFFF",
      INIT_04 => X"E9CBFFD3FDFFE7FBFFCFE7FFE1CFE9C3D1D025A2244A1D4A31385163FAA3FBF7",
      INIT_05 => X"FFBBFFFFF1FFE9E3E9D3FDD247F8358DE26866C5D8CFDAB3F7B7E7EFF1CFE5E3",
      INIT_06 => X"F5FFB7EBFF6FEDFFFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE03FFFFF1FFDDE3",
      INIT_07 => X"F797FBEFD9F7F5B1E5EBF8CBFFF1FDFE2AFA1B5609363710216FFC43DDFBFFBB",
      INIT_08 => X"E3F3FFC7FFFC01FE4E02179E4D2E119A45223F88197FE833F9D3FFF3E9FFCBD3",
      INIT_09 => X"F5E7FFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE03FFFFFFFFFFFFEFFFF9DF",
      INIT_0A => X"1FF46A3C0CD5D419DEA816BC1C2DC839EE9202DE2507F34BF9E7FDF3E5FBF3CB",
      INIT_0B => X"6FE415DE742B9FEA4B3F9B9581360E020B1E4B15AF97E85FFFD3EBFFDBD7FBB4",
      INIT_0C => X"FFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE03FFFFF5FFF5EBF5EBFDEBFBFBF3F6",
      INIT_0D => X"100008219812383211720F224D1E239A13446127F2C3FBE7F3F7E5E7F9CBF7F3",
      INIT_0E => X"A91B83538D06631A7DC7A7F9C34E42864F860B9FF51629E8715204E1C1080080",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFCFE03FFFFFBFFFFF7FBFFEBF7EBD7FFD401FF8C03",
      INIT_10 => X"2571FB4A3AF63774416DA2824644198FE833F5D3E9EBF3D3F5E7FFEBFFFFFFFF",
      INIT_11 => X"A1DB8942751381EB8702170E172E3D2E2578174A402E15824B2A1995FF3238FE",
      INIT_12 => X"FFFFFFFFFFFFFFFCFE03FFFFDBFFFDB7CDFBFF9BF5FFF3EBB7E78B6F81166D03",
      INIT_13 => X"201E2F423F5E157E0D28351BF06999E3F633F5EFFBEBF1F7FFE3FFFFFFFFFFFF",
      INIT_14 => X"7B139DF7873A490E1D922939FF5258FE19B21732072C2D0DF25822E634440F6A",
      INIT_15 => X"FFFFFFFCFE03FFFFFFFFFFFFFFFFB1FFFF63D9FE7BB389F67D1393FB8B278916",
      INIT_16 => X"231E33461766592E0BB07917EAF3FDD7F5FBEDEBFFDBFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"79E389F19712262E354E256A194A3F32337E33662D65B35A0A642B1644560F8A",
      INIT_18 => X"FE03FFFFEDFFF7DBEBEFFFD7F7FFEFEF87DF810F89039112792381F38F02711E",
      INIT_19 => X"156E2D29EB5A34D41F6BE63FE3CFF9C7F7F3FDEFF9FBE5F3FBCBFFF7EDFFFFD8",
      INIT_1A => X"15F6202A47420F8E391E21720D424F1A0F9C2B1C0456560A25AE0F4A291E3752",
      INIT_1B => X"FFFFD1FFFDA3FFFBBFFFFF7E77FE73EF85E6750B8DEB851B910A732395E67B28",
      INIT_1C => X"CA11F3960AE59F17F63FFBEFFDF7FDFBFFFBFFFFFFFFF7FFE3EFFBC4FE03FFFF",
      INIT_1D => X"25521B4A2B362F56355E29683753DE6FF7BFA7EE174E472E378E1F6E3D3C097B",
      INIT_1E => X"FDFFF9FBFFF3F3FC29E78E527B1FA1F65F439DBE7F3B95FF892A7F11DBFE28B6",
      INIT_1F => X"3720236FF647EFEFFFDFD9FFE7B3FDCFF3FBF7E7FFEFFFFCFE03FFFFE5FFFFCB",
      INIT_20 => X"0F2E1F1E2D3E23586347E0C7FFC3E7FE19CE33320F66171E2D2FDB5BCBB79196",
      INIT_21 => X"F3CFF5E43BEA647787CA550FADAB8D5A6D1B8BDA7F178FFC491E16924D2E179A",
      INIT_22 => X"E8DBEFD3FFDFF9FFFFF3FFFFF3FFFBE7FFF7EFFCFE03FFFFEBFFFFD7F9FFE7F3",
      INIT_23 => X"4B4E1D96433BEF87E9DFFDD3FFFA1DFE2D3A495A4193ED83FFDBDFFE19BC6D33",
      INIT_24 => X"CBFF8B978F17891E75126DEBABDA5F565FBE25BE294A0752150E412A2782274E",
      INIT_25 => X"D7FBFFAFFBFFF7F7FFEFFBFFF9F7F9F0FE03FFFFFFFFFBFFFFF7FDFFE7FBFFCF",
      INIT_26 => X"2D66255BE94BEDD3F1D801E232020D66171BEF2FD7DFF5AE2DE8115BF423FDEB",
      INIT_27 => X"7A7F85F67F0B9DFFA73A5D4D91BA0C206F1A30DE41620982231221461B423336",
      INIT_28 => X"D9F7EFB3FDDFEFFBFFDFFFFCFE03FFFFF7FFDDEFEBBBFFD7F7FFF7EFFDEC3FFA",
      INIT_29 => X"F11BFFE017FE362E3B6E2B761F564D3C0F9BF81E51F3C3A3EF87FDDFFFFBFBFF",
      INIT_2A => X"89E381125D039BBB9B359B3656362DAE195A41323F82257E334A25662B4A0D57",
      INIT_2B => X"FDFFEBFBF9D7EDF0FE03FFFFFFFFFFFFF7FFFBEFFFF7F3FFFFE7A5FDC54A708B",
      INIT_2C => X"0B15A6162C4E155A33299564002BFE0225FFF74BE5EFF7CBD1EFFFA3FBFFFFF7",
      INIT_2D => X"8F27811E63000FC6161E312E1B6213361F262D3E355A0F6A451E5389C7A78A8C",
      INIT_2E => X"FFFFF7FCFE03FFFFEFFFF7DFFFEFFDFFF5FBFDEBE7FBFFCFFFFE65FE7BCB93F7",
      INIT_2F => X"2416374A2B6E0F54331C22661647F12FE9E3F9D071F3A6E3FF4FE3FFFFC7FFFF",
      INIT_30 => X"7D5075FA38EA1D723139F96038F03271F26636E62D6E0959B313CA6413958A26",
      INIT_31 => X"FE03FFFFF9FFFFF3F1FFF1E3FFE3F5FFFFEBDDFFCBBBFF9663FE67C679CFA9F2",
      INIT_32 => X"FC2834FBC66BD18E25A079498CF3E41BF5CBFDEBEBFBFFD7EDFFF7DBFFEFFFFC",
      INIT_33 => X"410E35823D6A257A2F4A155E3F2A117E192235302F6BBA5FDB77EDB7C3D81585",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFF9EFF7F1C9EF84924B0B8597870A",
      INIT_35 => X"D657D7AE3BADDD75B2B85A646CB67ADBFFF7FFFFEBFFEFD7FFDFE5FCFE03FFFF",
      INIT_36 => X"376A076E350DFD6832F8226430441A600A35C817F493A5EBD34A71A405E02A0B",
      INIT_37 => X"FFFFFFFFFFFFFFFFFFFFFFFFF9FFDFF3FBBFF5F61FEB9B3F8B36751417EA342E",
      INIT_38 => X"2C420F5A391FF173E3E3FBC7FFF7FBFFD9F659B3E7B3FFCCFE03FFFFFFFFFFFF",
      INIT_39 => X"0F96131DDB27E4B465C80EC8301E1263E527C3CBE787C1CFCF83E99FBBD02176",
      INIT_3A => X"FFFFFFFFFFFFFFFFEBFFFFD7E1FFFDC3FFFBF9FC19F00E31841C700A24E24B4A",
      INIT_3B => X"A777D64FF9AFFDF3E9FBFFD3FFFFEBFFF3D7FFE4FE03FFFFFFFFFFFFFFFFFFFF",
      INIT_3C => X"07A7B60FE16C09C01410302800601A0010342423EE4BDBDFF5B62DEA2D5A3B59",
      INIT_3D => X"FFFFFFFFF5FFE9EBF1D3F3E3FFE7FBFFF3F7FFE7FDFFEBF9A5D5FE4A28FE5350",
      INIT_3E => X"EFEBFFDFF1FFE9E3D3D3FFA7FFFFEDFCFE03FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"E58FC3C9FF85CEFC309C16600C2FE01BC3C3B9840D723E18617FD0C3EDA3F5DB",
      INIT_40 => X"FFFFF5FFFDEBFFFBE7FFF1CFFBE3E7F7FBCFF3F7D5E41DAA1E3A1B3E1337C727",
      INIT_41 => X"F7B3F7EFFFEFFFFFCBFFFF94FE03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_42 => X"B36A0C6627181D4FD23BD5A7C1AA4780158FE02BF9C3FFF3F9FFF7F3FFEFD9FF",
      INIT_43 => X"FFFFEFFFFBDFFBF7FDF7FFFBE1FFFFC3DFFFF9BC15F0762810EC0423D00BB5A1",
      INIT_44 => X"E1FFF9C3FFF3F3FCFE03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5FFFFAB",
      INIT_45 => X"5A5FECB7FFD80FFDEA1D86D7F60FF9EFF1F3F7E3E1EFFFC3FFFFFDFFFFFBFFFF",
      INIT_46 => X"FF9BE7FFFBCFE9F7FFD3CFFC239E4A462796074E310E53601FA65C3FB7B82F6C",
      INIT_47 => X"FBE7F1F4FE03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFF5EFCDEB",
      INIT_48 => X"18A6033227062F4E1D5FF73BEFEFF1DFFFE3DDFFE7BBFFCFFFFFE7FFFFCFF3FF",
      INIT_49 => X"F9EFFFF3C3FE0F86331E0B66231633462F66135DFF264AFC3F97A27FF34453E6",
      INIT_4A => X"FE03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFE9F7F7D3FFEFE9FFF7D3",
      INIT_4B => X"183637320B6E5D17DFBBF5BFFDEBDDFBFDBBEDFBFFDBEFFFF7DFFFEFE3FFFBC4",
      INIT_4C => X"066E3D0E397A19721B322D36315A236219463532136A2F262B5E1F562B3D9B56",
      INIT_4D => X"FFFFEBFFF9D7FBF3F7F7F5EFFFEBF5FFF3EBFBE7F7F7F1EFFFE3EFFFBDDC377A",
      INIT_4E => X"2EFA2B5E4157CD83DD9BFFBBFDFFFBFBF7F7EBEFFDD7EDFBFFDBFBFCFE03FFFF",
      INIT_4F => X"235631465561FDAA2CFA295A1752052DED0A5CDA07BA210E114043224685FD8E",
      INIT_50 => X"F3FFF5E7E7EBFFCFF1FFFFE3D5FFFBABEBF7F7D7C9EFFF91FBFE1CF6213A2B42",
      INIT_51 => X"2135A943FE53CDFFF59BE9EBEBD3FDD7FDFBE3FBEFC7FFDCFE03FFFFF1FFFFE3",
      INIT_52 => X"13363D26037A41062782334F9F67993E293219504D33A8980752280E61521BC2",
      INIT_53 => X"E9EBF7D3F3EFEFE7FBDFE9F7E7D3FFCFF9FDBFF1FE7E14FE312A1562292A1B52",
      INIT_54 => X"0D83FE1BEBFFFFD7FDFFFFFBE9FFFFD3FBFFF3F4FE03FFFFF9FFF1F3F1E3F5E3",
      INIT_55 => X"394E19723B33B377D967DFB023BC4E47C09FEF820DDE051A130A3526376A416C",
      INIT_56 => X"FDDFFDFBF9FBE3F3EDC7EFD871DE2EE24B5E3596176A3F2E1F7E173E292E2752",
      INIT_57 => X"F353F5E7EBEBFBD7F7F7F1EFF7E3FFECFE03FFFFF5FFF3EBFFE7FDFFF1FBEFE3",
      INIT_58 => X"173BAE2FF35FC7E7B98FC173BD83C77A158E052A250A2B4A2755F74E54EFA9AB",
      INIT_59 => X"F5EBEDEBE1D82FC21E5E353E1B6A19363B3217763B2DAB761455F32A38E61D70",
      INIT_5A => X"FFEBF7FFFBEFF9F7EBF3F5D4FE03FFFFEFFFFFDFE5FFF5CBF3EBFBE7EFF7F5DF",
      INIT_5B => X"CF67E59FE7CBD3CFEDA7DBDA45B65D8A1BBA1F363B3E49760B923B17E177F5C3",
      INIT_5C => X"51DE13A23926317223622945FD501AFBE03411C2502245A21B8A4737BF8FB37F",
      INIT_5D => X"C7FFF78FF7EFFFECFE03FFFFFFFFFFFFEDFFFFDBE7FFDBCFFFB7D7FFF7AFEFEE",
      INIT_5E => X"BFAFA37FD947B7B22D6FE35A3BC6117613223F26137E2B265357EBA7C9D7FF93",
      INIT_5F => X"253E2D4A535A31A7FF63BFFE417E43821B8615363D2BA17BF143BDE3C97BD793",
      INIT_60 => X"E7FFF7CCFE03FFFFEFFFF3DFFFE7F1FFE7E3F5CFBBE84D76489A099223121F46",
      INIT_61 => X"CBB3DD958DBBEA1BDDD47DBA1EFA293E235225461D4A2738194FE833FFD3FFFF",
      INIT_62 => X"F647EBEFD7D439AE16724B2E33962564114BDE23BFBFEB7FD5D7C1ABE983D9D3",
      INIT_63 => X"FE03FFFFF9FFF3F3FFE7E5FE2DC9F75A74EE01EA2F02215E3942337233642367",
      INIT_64 => X"0BC7FA17D3F7FFA7C9FDA392224633462B6631563761F36E20E5994074326AE8",
      INIT_65 => X"BDE5E87A32D23566256A0D4BE51BDDCBBDBBCF7BDF9FD1BFD7A3D7AFC5AFE388",
      INIT_66 => X"F3FFF3E7FFE7E5FC51C9F8A1F8F030F2286233522D662D5A295A4153F183F3E1",
      INIT_67 => X"FFE3F7FFFBEFDFF7D7BE21AE2742274E0B4E47163D8C2B7A1A55FF34F403FFEB",
      INIT_68 => X"137E31262F63875FDF0FCFBFE99FB1D3C963DB93CBB7B997E773ABCC2D57F05B",
      INIT_69 => X"F5D3FBEA1BF63F36297E1B522B35EF5606DE0D0E51180FA3D21E0FA6291E3F52",
      INIT_6A => X"FBC3FFF7C5FE038A13065B262FB60D5E491A17925D2C47B8FE03FBFFFBF7E9F7",
      INIT_6B => X"60D7E1C3D1C3D7A3CBAFD597DFABD3BFA5A7EF4BCDDFEF9A6FDFFFDFFDFFE1FB",
      INIT_6C => X"FFB5F7FF8AEFF517EFEBF3DFF7E411EE0C21F9182EF25C5E17BA372E356DEB6A",
      INIT_6D => X"79CA33F1DB67F6B7CDEF9998293000500403F408FC03E5FBCDCBF19BE1E3DBC3",
      INIT_6E => X"B78FD56FD5ABC7ABC18FED83DBDBC1B7BD83CF7BFB9FCDF7FF9BF3FFFDE7E5FA",
      INIT_6F => X"EBD7EFD7F5DFE9EBE7D3F7CFDBEDBFB6447DEF8A20DE114229201153DE23C7BF",
      INIT_70 => X"F9DBFFF3F3FFFFE7D9FFFDB3FFFBF7FCEA03FFD7EDFFFFDA75FC69E9B8D3EA73",
      INIT_71 => X"C597DB8BD1B7A7A3D94FE1B3E5C019CBFC33F7FBEFEFF1DFE5E3FDCBEDFBEDDB",
      INIT_72 => X"BC2BD77BF9AFC7F2078E410E0F82431E21862B421B57EF37AFDFE35FE3C7CBC7",
      INIT_73 => X"EBEFFBD7F9F7F7F3F7EFDFECE40023C82E45C05FA2822D44255A064A210D9543",
      INIT_74 => X"E587D5CBBDABEF7BC5DFE98BE9D3F3D3FFE7F5FFF3EBFFE7E7FFF7CFEDEFF7DB",
      INIT_75 => X"13862F243B5E0A7643161D86493A39900173B803E773BFCFD17FC3A3DB87C3B7",
      INIT_76 => X"E5EBFFCBE7FFFBCCFE03D9FFF1B3FFE3FFFFEBFFF5D7FFEBEDFC11DA4422438A",
      INIT_77 => X"E38FAFC58B5FFE17F5FFFDEBFBFBEBF7F9D7EDF3FFDBF5FFF9EBE5F3FDCBF5FB",
      INIT_78 => X"2FD2135E3D261F7A0F3E211C2743E04FDDC3C3BBCF87D39FD1A7CFA3CB9FC797",
      INIT_79 => X"FFC7F3FCF003FFE3F7FFEBEFFDD7FFFBCDFFF39BF1E7F5E3C9EBFF927FFE69FE",
      INIT_7A => X"1C8BEA3BF1D7EBE3F7D7FFEFEDFFFDDBFBFBEDF7FDDBF9FBEFF3F7DFFFEFE3FF",
      INIT_7B => X"0B6E3D16277A274E214FD743D5AFC9ABD193D1A3C3A3E387D1C7BFA3DF7C45BC",
      INIT_7C => X"FE03F5FFFBEBF7F7FFEFE3FFFFC7F1FFF5E3F1EBF7E3F7EFFDEFD9FA07B2370E",
      INIT_7D => X"F5FBE1EBF9C3FFF3DDFFFDBBE9FBFFD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC",
      INIT_7E => X"19464D320D9A1D1BD33BA1A7B943D973D3B3C1A7E1800DC2441A3B898777FC0F",
      INIT_7F => X"F9FFF5F3EFEBFDDFEFFBF1DFEDE3FFDBFBFFDBF7FFB5ABFE1E561B3E2F36235E",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => addra(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 16) => B"0000000000000000",
      DIADI(15 downto 8) => dina(16 downto 9),
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 2) => B"00",
      DIPADIP(1) => dina(17),
      DIPADIP(0) => dina(8),
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 16) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 16),
      DOADO(15 downto 0) => \douta[70]\(15 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 2),
      DOPADOP(1 downto 0) => \douta[71]\(1 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[11]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width is
  port (
    ram_douta : out STD_LOGIC_VECTOR ( 17 downto 0 );
    clka : in STD_LOGIC;
    \addra[11]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 17 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      \addra[11]\ => \addra[11]\,
      clka => clka,
      dina(17 downto 0) => dina(17 downto 0),
      ram_douta(17 downto 0) => ram_douta(17 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DOPADOP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOPBDOP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\
     port map (
      DOADO(31 downto 0) => DOADO(31 downto 0),
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      DOPADOP(3 downto 0) => DOPADOP(3 downto 0),
      DOPBDOP(3 downto 0) => DOPBDOP(3 downto 0),
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      dina(71 downto 0) => dina(71 downto 0),
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\ is
  port (
    \douta[34]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \douta[35]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clka : in STD_LOGIC;
    \addra[11]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 17 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      \addra[11]\ => \addra[11]\,
      clka => clka,
      dina(17 downto 0) => dina(17 downto 0),
      \douta[34]\(15 downto 0) => \douta[34]\(15 downto 0),
      \douta[35]\(1 downto 0) => \douta[35]\(1 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\ is
  port (
    \douta[52]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \douta[53]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clka : in STD_LOGIC;
    \addra[11]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 17 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      \addra[11]\ => \addra[11]\,
      clka => clka,
      dina(17 downto 0) => dina(17 downto 0),
      \douta[52]\(15 downto 0) => \douta[52]\(15 downto 0),
      \douta[53]\(1 downto 0) => \douta[53]\(1 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\ is
  port (
    \douta[70]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \douta[71]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clka : in STD_LOGIC;
    \addra[11]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 17 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      \addra[11]\ => \addra[11]\,
      clka => clka,
      dina(17 downto 0) => dina(17 downto 0),
      \douta[70]\(15 downto 0) => \douta[70]\(15 downto 0),
      \douta[71]\(1 downto 0) => \douta[71]\(1 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 71 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr is
  signal ena_array : STD_LOGIC_VECTOR ( 4 to 4 );
  signal ram_douta : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal ram_ena_n_0 : STD_LOGIC;
  signal \ramloop[1].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_36\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_37\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_38\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_39\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_40\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_41\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_42\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_43\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_44\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_45\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_46\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_47\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_48\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_49\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_50\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_51\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_52\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_53\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_54\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_55\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_56\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_57\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_58\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_59\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_60\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_61\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_62\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_63\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_64\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_65\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_66\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_67\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_68\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_69\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_70\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_71\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_9\ : STD_LOGIC;
begin
\bindec_a.bindec_inst_a\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec
     port map (
      addra(2 downto 0) => addra(11 downto 9),
      ena_array(0) => ena_array(4)
    );
\has_mux_a.A\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(15) => \ramloop[2].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(14) => \ramloop[2].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(13) => \ramloop[2].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(12) => \ramloop[2].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(11) => \ramloop[2].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(10) => \ramloop[2].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(9) => \ramloop[2].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(8) => \ramloop[2].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[2].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[2].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[2].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[2].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[2].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[2].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[2].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[2].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(1) => \ramloop[2].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[2].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(15) => \ramloop[3].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(14) => \ramloop[3].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(13) => \ramloop[3].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(12) => \ramloop[3].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(11) => \ramloop[3].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(10) => \ramloop[3].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(9) => \ramloop[3].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(8) => \ramloop[3].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(7) => \ramloop[3].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(6) => \ramloop[3].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(5) => \ramloop[3].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(4) => \ramloop[3].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3) => \ramloop[3].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(2) => \ramloop[3].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(1) => \ramloop[3].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0) => \ramloop[3].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(1) => \ramloop[3].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(0) => \ramloop[3].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(15) => \ramloop[4].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(14) => \ramloop[4].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(13) => \ramloop[4].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(12) => \ramloop[4].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(11) => \ramloop[4].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(10) => \ramloop[4].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(9) => \ramloop[4].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(8) => \ramloop[4].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(7) => \ramloop[4].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(6) => \ramloop[4].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(5) => \ramloop[4].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(4) => \ramloop[4].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(3) => \ramloop[4].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(2) => \ramloop[4].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(1) => \ramloop[4].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(0) => \ramloop[4].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(1) => \ramloop[4].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(0) => \ramloop[4].ram.r_n_17\,
      DOADO(31) => \ramloop[1].ram.r_n_0\,
      DOADO(30) => \ramloop[1].ram.r_n_1\,
      DOADO(29) => \ramloop[1].ram.r_n_2\,
      DOADO(28) => \ramloop[1].ram.r_n_3\,
      DOADO(27) => \ramloop[1].ram.r_n_4\,
      DOADO(26) => \ramloop[1].ram.r_n_5\,
      DOADO(25) => \ramloop[1].ram.r_n_6\,
      DOADO(24) => \ramloop[1].ram.r_n_7\,
      DOADO(23) => \ramloop[1].ram.r_n_8\,
      DOADO(22) => \ramloop[1].ram.r_n_9\,
      DOADO(21) => \ramloop[1].ram.r_n_10\,
      DOADO(20) => \ramloop[1].ram.r_n_11\,
      DOADO(19) => \ramloop[1].ram.r_n_12\,
      DOADO(18) => \ramloop[1].ram.r_n_13\,
      DOADO(17) => \ramloop[1].ram.r_n_14\,
      DOADO(16) => \ramloop[1].ram.r_n_15\,
      DOADO(15) => \ramloop[1].ram.r_n_16\,
      DOADO(14) => \ramloop[1].ram.r_n_17\,
      DOADO(13) => \ramloop[1].ram.r_n_18\,
      DOADO(12) => \ramloop[1].ram.r_n_19\,
      DOADO(11) => \ramloop[1].ram.r_n_20\,
      DOADO(10) => \ramloop[1].ram.r_n_21\,
      DOADO(9) => \ramloop[1].ram.r_n_22\,
      DOADO(8) => \ramloop[1].ram.r_n_23\,
      DOADO(7) => \ramloop[1].ram.r_n_24\,
      DOADO(6) => \ramloop[1].ram.r_n_25\,
      DOADO(5) => \ramloop[1].ram.r_n_26\,
      DOADO(4) => \ramloop[1].ram.r_n_27\,
      DOADO(3) => \ramloop[1].ram.r_n_28\,
      DOADO(2) => \ramloop[1].ram.r_n_29\,
      DOADO(1) => \ramloop[1].ram.r_n_30\,
      DOADO(0) => \ramloop[1].ram.r_n_31\,
      DOBDO(31) => \ramloop[1].ram.r_n_32\,
      DOBDO(30) => \ramloop[1].ram.r_n_33\,
      DOBDO(29) => \ramloop[1].ram.r_n_34\,
      DOBDO(28) => \ramloop[1].ram.r_n_35\,
      DOBDO(27) => \ramloop[1].ram.r_n_36\,
      DOBDO(26) => \ramloop[1].ram.r_n_37\,
      DOBDO(25) => \ramloop[1].ram.r_n_38\,
      DOBDO(24) => \ramloop[1].ram.r_n_39\,
      DOBDO(23) => \ramloop[1].ram.r_n_40\,
      DOBDO(22) => \ramloop[1].ram.r_n_41\,
      DOBDO(21) => \ramloop[1].ram.r_n_42\,
      DOBDO(20) => \ramloop[1].ram.r_n_43\,
      DOBDO(19) => \ramloop[1].ram.r_n_44\,
      DOBDO(18) => \ramloop[1].ram.r_n_45\,
      DOBDO(17) => \ramloop[1].ram.r_n_46\,
      DOBDO(16) => \ramloop[1].ram.r_n_47\,
      DOBDO(15) => \ramloop[1].ram.r_n_48\,
      DOBDO(14) => \ramloop[1].ram.r_n_49\,
      DOBDO(13) => \ramloop[1].ram.r_n_50\,
      DOBDO(12) => \ramloop[1].ram.r_n_51\,
      DOBDO(11) => \ramloop[1].ram.r_n_52\,
      DOBDO(10) => \ramloop[1].ram.r_n_53\,
      DOBDO(9) => \ramloop[1].ram.r_n_54\,
      DOBDO(8) => \ramloop[1].ram.r_n_55\,
      DOBDO(7) => \ramloop[1].ram.r_n_56\,
      DOBDO(6) => \ramloop[1].ram.r_n_57\,
      DOBDO(5) => \ramloop[1].ram.r_n_58\,
      DOBDO(4) => \ramloop[1].ram.r_n_59\,
      DOBDO(3) => \ramloop[1].ram.r_n_60\,
      DOBDO(2) => \ramloop[1].ram.r_n_61\,
      DOBDO(1) => \ramloop[1].ram.r_n_62\,
      DOBDO(0) => \ramloop[1].ram.r_n_63\,
      DOPADOP(3) => \ramloop[1].ram.r_n_64\,
      DOPADOP(2) => \ramloop[1].ram.r_n_65\,
      DOPADOP(1) => \ramloop[1].ram.r_n_66\,
      DOPADOP(0) => \ramloop[1].ram.r_n_67\,
      DOPBDOP(3) => \ramloop[1].ram.r_n_68\,
      DOPBDOP(2) => \ramloop[1].ram.r_n_69\,
      DOPBDOP(1) => \ramloop[1].ram.r_n_70\,
      DOPBDOP(0) => \ramloop[1].ram.r_n_71\,
      addra(2 downto 0) => addra(11 downto 9),
      clka => clka,
      douta(71 downto 0) => douta(71 downto 0),
      ram_douta(17 downto 0) => ram_douta(17 downto 0)
    );
ram_ena: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addra(11),
      O => ram_ena_n_0
    );
\ramloop[0].ram.r\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      \addra[11]\ => ram_ena_n_0,
      clka => clka,
      dina(17 downto 0) => dina(17 downto 0),
      ram_douta(17 downto 0) => ram_douta(17 downto 0),
      wea(0) => wea(0)
    );
\ramloop[1].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\
     port map (
      DOADO(31) => \ramloop[1].ram.r_n_0\,
      DOADO(30) => \ramloop[1].ram.r_n_1\,
      DOADO(29) => \ramloop[1].ram.r_n_2\,
      DOADO(28) => \ramloop[1].ram.r_n_3\,
      DOADO(27) => \ramloop[1].ram.r_n_4\,
      DOADO(26) => \ramloop[1].ram.r_n_5\,
      DOADO(25) => \ramloop[1].ram.r_n_6\,
      DOADO(24) => \ramloop[1].ram.r_n_7\,
      DOADO(23) => \ramloop[1].ram.r_n_8\,
      DOADO(22) => \ramloop[1].ram.r_n_9\,
      DOADO(21) => \ramloop[1].ram.r_n_10\,
      DOADO(20) => \ramloop[1].ram.r_n_11\,
      DOADO(19) => \ramloop[1].ram.r_n_12\,
      DOADO(18) => \ramloop[1].ram.r_n_13\,
      DOADO(17) => \ramloop[1].ram.r_n_14\,
      DOADO(16) => \ramloop[1].ram.r_n_15\,
      DOADO(15) => \ramloop[1].ram.r_n_16\,
      DOADO(14) => \ramloop[1].ram.r_n_17\,
      DOADO(13) => \ramloop[1].ram.r_n_18\,
      DOADO(12) => \ramloop[1].ram.r_n_19\,
      DOADO(11) => \ramloop[1].ram.r_n_20\,
      DOADO(10) => \ramloop[1].ram.r_n_21\,
      DOADO(9) => \ramloop[1].ram.r_n_22\,
      DOADO(8) => \ramloop[1].ram.r_n_23\,
      DOADO(7) => \ramloop[1].ram.r_n_24\,
      DOADO(6) => \ramloop[1].ram.r_n_25\,
      DOADO(5) => \ramloop[1].ram.r_n_26\,
      DOADO(4) => \ramloop[1].ram.r_n_27\,
      DOADO(3) => \ramloop[1].ram.r_n_28\,
      DOADO(2) => \ramloop[1].ram.r_n_29\,
      DOADO(1) => \ramloop[1].ram.r_n_30\,
      DOADO(0) => \ramloop[1].ram.r_n_31\,
      DOBDO(31) => \ramloop[1].ram.r_n_32\,
      DOBDO(30) => \ramloop[1].ram.r_n_33\,
      DOBDO(29) => \ramloop[1].ram.r_n_34\,
      DOBDO(28) => \ramloop[1].ram.r_n_35\,
      DOBDO(27) => \ramloop[1].ram.r_n_36\,
      DOBDO(26) => \ramloop[1].ram.r_n_37\,
      DOBDO(25) => \ramloop[1].ram.r_n_38\,
      DOBDO(24) => \ramloop[1].ram.r_n_39\,
      DOBDO(23) => \ramloop[1].ram.r_n_40\,
      DOBDO(22) => \ramloop[1].ram.r_n_41\,
      DOBDO(21) => \ramloop[1].ram.r_n_42\,
      DOBDO(20) => \ramloop[1].ram.r_n_43\,
      DOBDO(19) => \ramloop[1].ram.r_n_44\,
      DOBDO(18) => \ramloop[1].ram.r_n_45\,
      DOBDO(17) => \ramloop[1].ram.r_n_46\,
      DOBDO(16) => \ramloop[1].ram.r_n_47\,
      DOBDO(15) => \ramloop[1].ram.r_n_48\,
      DOBDO(14) => \ramloop[1].ram.r_n_49\,
      DOBDO(13) => \ramloop[1].ram.r_n_50\,
      DOBDO(12) => \ramloop[1].ram.r_n_51\,
      DOBDO(11) => \ramloop[1].ram.r_n_52\,
      DOBDO(10) => \ramloop[1].ram.r_n_53\,
      DOBDO(9) => \ramloop[1].ram.r_n_54\,
      DOBDO(8) => \ramloop[1].ram.r_n_55\,
      DOBDO(7) => \ramloop[1].ram.r_n_56\,
      DOBDO(6) => \ramloop[1].ram.r_n_57\,
      DOBDO(5) => \ramloop[1].ram.r_n_58\,
      DOBDO(4) => \ramloop[1].ram.r_n_59\,
      DOBDO(3) => \ramloop[1].ram.r_n_60\,
      DOBDO(2) => \ramloop[1].ram.r_n_61\,
      DOBDO(1) => \ramloop[1].ram.r_n_62\,
      DOBDO(0) => \ramloop[1].ram.r_n_63\,
      DOPADOP(3) => \ramloop[1].ram.r_n_64\,
      DOPADOP(2) => \ramloop[1].ram.r_n_65\,
      DOPADOP(1) => \ramloop[1].ram.r_n_66\,
      DOPADOP(0) => \ramloop[1].ram.r_n_67\,
      DOPBDOP(3) => \ramloop[1].ram.r_n_68\,
      DOPBDOP(2) => \ramloop[1].ram.r_n_69\,
      DOPBDOP(1) => \ramloop[1].ram.r_n_70\,
      DOPBDOP(0) => \ramloop[1].ram.r_n_71\,
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      dina(71 downto 0) => dina(71 downto 0),
      ena_array(0) => ena_array(4),
      wea(0) => wea(0)
    );
\ramloop[2].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      \addra[11]\ => ram_ena_n_0,
      clka => clka,
      dina(17 downto 0) => dina(35 downto 18),
      \douta[34]\(15) => \ramloop[2].ram.r_n_0\,
      \douta[34]\(14) => \ramloop[2].ram.r_n_1\,
      \douta[34]\(13) => \ramloop[2].ram.r_n_2\,
      \douta[34]\(12) => \ramloop[2].ram.r_n_3\,
      \douta[34]\(11) => \ramloop[2].ram.r_n_4\,
      \douta[34]\(10) => \ramloop[2].ram.r_n_5\,
      \douta[34]\(9) => \ramloop[2].ram.r_n_6\,
      \douta[34]\(8) => \ramloop[2].ram.r_n_7\,
      \douta[34]\(7) => \ramloop[2].ram.r_n_8\,
      \douta[34]\(6) => \ramloop[2].ram.r_n_9\,
      \douta[34]\(5) => \ramloop[2].ram.r_n_10\,
      \douta[34]\(4) => \ramloop[2].ram.r_n_11\,
      \douta[34]\(3) => \ramloop[2].ram.r_n_12\,
      \douta[34]\(2) => \ramloop[2].ram.r_n_13\,
      \douta[34]\(1) => \ramloop[2].ram.r_n_14\,
      \douta[34]\(0) => \ramloop[2].ram.r_n_15\,
      \douta[35]\(1) => \ramloop[2].ram.r_n_16\,
      \douta[35]\(0) => \ramloop[2].ram.r_n_17\,
      wea(0) => wea(0)
    );
\ramloop[3].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      \addra[11]\ => ram_ena_n_0,
      clka => clka,
      dina(17 downto 0) => dina(53 downto 36),
      \douta[52]\(15) => \ramloop[3].ram.r_n_0\,
      \douta[52]\(14) => \ramloop[3].ram.r_n_1\,
      \douta[52]\(13) => \ramloop[3].ram.r_n_2\,
      \douta[52]\(12) => \ramloop[3].ram.r_n_3\,
      \douta[52]\(11) => \ramloop[3].ram.r_n_4\,
      \douta[52]\(10) => \ramloop[3].ram.r_n_5\,
      \douta[52]\(9) => \ramloop[3].ram.r_n_6\,
      \douta[52]\(8) => \ramloop[3].ram.r_n_7\,
      \douta[52]\(7) => \ramloop[3].ram.r_n_8\,
      \douta[52]\(6) => \ramloop[3].ram.r_n_9\,
      \douta[52]\(5) => \ramloop[3].ram.r_n_10\,
      \douta[52]\(4) => \ramloop[3].ram.r_n_11\,
      \douta[52]\(3) => \ramloop[3].ram.r_n_12\,
      \douta[52]\(2) => \ramloop[3].ram.r_n_13\,
      \douta[52]\(1) => \ramloop[3].ram.r_n_14\,
      \douta[52]\(0) => \ramloop[3].ram.r_n_15\,
      \douta[53]\(1) => \ramloop[3].ram.r_n_16\,
      \douta[53]\(0) => \ramloop[3].ram.r_n_17\,
      wea(0) => wea(0)
    );
\ramloop[4].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      \addra[11]\ => ram_ena_n_0,
      clka => clka,
      dina(17 downto 0) => dina(71 downto 54),
      \douta[70]\(15) => \ramloop[4].ram.r_n_0\,
      \douta[70]\(14) => \ramloop[4].ram.r_n_1\,
      \douta[70]\(13) => \ramloop[4].ram.r_n_2\,
      \douta[70]\(12) => \ramloop[4].ram.r_n_3\,
      \douta[70]\(11) => \ramloop[4].ram.r_n_4\,
      \douta[70]\(10) => \ramloop[4].ram.r_n_5\,
      \douta[70]\(9) => \ramloop[4].ram.r_n_6\,
      \douta[70]\(8) => \ramloop[4].ram.r_n_7\,
      \douta[70]\(7) => \ramloop[4].ram.r_n_8\,
      \douta[70]\(6) => \ramloop[4].ram.r_n_9\,
      \douta[70]\(5) => \ramloop[4].ram.r_n_10\,
      \douta[70]\(4) => \ramloop[4].ram.r_n_11\,
      \douta[70]\(3) => \ramloop[4].ram.r_n_12\,
      \douta[70]\(2) => \ramloop[4].ram.r_n_13\,
      \douta[70]\(1) => \ramloop[4].ram.r_n_14\,
      \douta[70]\(0) => \ramloop[4].ram.r_n_15\,
      \douta[71]\(1) => \ramloop[4].ram.r_n_16\,
      \douta[71]\(0) => \ramloop[4].ram.r_n_17\,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 71 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top is
begin
\valid.cstr\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(71 downto 0) => dina(71 downto 0),
      douta(71 downto 0) => douta(71 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 71 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(71 downto 0) => dina(71 downto 0),
      douta(71 downto 0) => douta(71 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 71 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 71 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 71 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 11 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 71 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 71 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 12;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 12;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "5";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "Estimated Power for IP     :     10.162489 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "image.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "image.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 2500;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 2500;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 72;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 72;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 2500;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 2500;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 72;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 72;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  doutb(71) <= \<const0>\;
  doutb(70) <= \<const0>\;
  doutb(69) <= \<const0>\;
  doutb(68) <= \<const0>\;
  doutb(67) <= \<const0>\;
  doutb(66) <= \<const0>\;
  doutb(65) <= \<const0>\;
  doutb(64) <= \<const0>\;
  doutb(63) <= \<const0>\;
  doutb(62) <= \<const0>\;
  doutb(61) <= \<const0>\;
  doutb(60) <= \<const0>\;
  doutb(59) <= \<const0>\;
  doutb(58) <= \<const0>\;
  doutb(57) <= \<const0>\;
  doutb(56) <= \<const0>\;
  doutb(55) <= \<const0>\;
  doutb(54) <= \<const0>\;
  doutb(53) <= \<const0>\;
  doutb(52) <= \<const0>\;
  doutb(51) <= \<const0>\;
  doutb(50) <= \<const0>\;
  doutb(49) <= \<const0>\;
  doutb(48) <= \<const0>\;
  doutb(47) <= \<const0>\;
  doutb(46) <= \<const0>\;
  doutb(45) <= \<const0>\;
  doutb(44) <= \<const0>\;
  doutb(43) <= \<const0>\;
  doutb(42) <= \<const0>\;
  doutb(41) <= \<const0>\;
  doutb(40) <= \<const0>\;
  doutb(39) <= \<const0>\;
  doutb(38) <= \<const0>\;
  doutb(37) <= \<const0>\;
  doutb(36) <= \<const0>\;
  doutb(35) <= \<const0>\;
  doutb(34) <= \<const0>\;
  doutb(33) <= \<const0>\;
  doutb(32) <= \<const0>\;
  doutb(31) <= \<const0>\;
  doutb(30) <= \<const0>\;
  doutb(29) <= \<const0>\;
  doutb(28) <= \<const0>\;
  doutb(27) <= \<const0>\;
  doutb(26) <= \<const0>\;
  doutb(25) <= \<const0>\;
  doutb(24) <= \<const0>\;
  doutb(23) <= \<const0>\;
  doutb(22) <= \<const0>\;
  doutb(21) <= \<const0>\;
  doutb(20) <= \<const0>\;
  doutb(19) <= \<const0>\;
  doutb(18) <= \<const0>\;
  doutb(17) <= \<const0>\;
  doutb(16) <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  rdaddrecc(11) <= \<const0>\;
  rdaddrecc(10) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(11) <= \<const0>\;
  s_axi_rdaddrecc(10) <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(71) <= \<const0>\;
  s_axi_rdata(70) <= \<const0>\;
  s_axi_rdata(69) <= \<const0>\;
  s_axi_rdata(68) <= \<const0>\;
  s_axi_rdata(67) <= \<const0>\;
  s_axi_rdata(66) <= \<const0>\;
  s_axi_rdata(65) <= \<const0>\;
  s_axi_rdata(64) <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(71 downto 0) => dina(71 downto 0),
      douta(71 downto 0) => douta(71 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 71 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "image,blk_mem_gen_v8_4_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "blk_mem_gen_v8_4_1,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 12;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 12;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "5";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     10.162489 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "image.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "image.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 2500;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 2500;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 72;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 72;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 2500;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 2500;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 72;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 72;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of dina : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute x_interface_info of wea : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => B"000000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(71 downto 0) => dina(71 downto 0),
      dinb(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      douta(71 downto 0) => douta(71 downto 0),
      doutb(71 downto 0) => NLW_U0_doutb_UNCONNECTED(71 downto 0),
      eccpipece => '0',
      ena => '0',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(11 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(11 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(11 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(11 downto 0),
      s_axi_rdata(71 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(71 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => wea(0),
      web(0) => '0'
    );
end STRUCTURE;
