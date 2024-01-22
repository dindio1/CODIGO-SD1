-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "12/23/2023 19:41:34"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	COMPUERTA_LOGICA IS
    PORT (
	M1 : IN std_logic;
	M2 : IN std_logic;
	M3 : IN std_logic;
	M4 : IN std_logic;
	C0 : OUT std_logic;
	C1 : OUT std_logic;
	C2 : OUT std_logic
	);
END COMPUERTA_LOGICA;

-- Design Ports Information
-- C0	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C1	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C2	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M4	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M3	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF COMPUERTA_LOGICA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_M1 : std_logic;
SIGNAL ww_M2 : std_logic;
SIGNAL ww_M3 : std_logic;
SIGNAL ww_M4 : std_logic;
SIGNAL ww_C0 : std_logic;
SIGNAL ww_C1 : std_logic;
SIGNAL ww_C2 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \M1~input_o\ : std_logic;
SIGNAL \M2~input_o\ : std_logic;
SIGNAL \M3~input_o\ : std_logic;
SIGNAL \M4~input_o\ : std_logic;
SIGNAL \C0~0_combout\ : std_logic;
SIGNAL \C0~1_combout\ : std_logic;
SIGNAL \C0~2_combout\ : std_logic;
SIGNAL \ALT_INV_M3~input_o\ : std_logic;
SIGNAL \ALT_INV_M1~input_o\ : std_logic;
SIGNAL \ALT_INV_M2~input_o\ : std_logic;
SIGNAL \ALT_INV_M4~input_o\ : std_logic;
SIGNAL \ALT_INV_C0~1_combout\ : std_logic;

BEGIN

ww_M1 <= M1;
ww_M2 <= M2;
ww_M3 <= M3;
ww_M4 <= M4;
C0 <= ww_C0;
C1 <= ww_C1;
C2 <= ww_C2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_M3~input_o\ <= NOT \M3~input_o\;
\ALT_INV_M1~input_o\ <= NOT \M1~input_o\;
\ALT_INV_M2~input_o\ <= NOT \M2~input_o\;
\ALT_INV_M4~input_o\ <= NOT \M4~input_o\;
\ALT_INV_C0~1_combout\ <= NOT \C0~1_combout\;

-- Location: IOOBUF_X89_Y38_N22
\C0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C0~0_combout\,
	devoe => ww_devoe,
	o => ww_C0);

-- Location: IOOBUF_X89_Y36_N39
\C1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_C0~1_combout\,
	devoe => ww_devoe,
	o => ww_C1);

-- Location: IOOBUF_X89_Y35_N79
\C2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C0~2_combout\,
	devoe => ww_devoe,
	o => ww_C2);

-- Location: IOIBUF_X89_Y37_N55
\M1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M1,
	o => \M1~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\M2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M2,
	o => \M2~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\M3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M3,
	o => \M3~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\M4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M4,
	o => \M4~input_o\);

-- Location: LABCELL_X88_Y37_N0
\C0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C0~0_combout\ = ( \M4~input_o\ & ( (!\M1~input_o\ & (!\M2~input_o\ & !\M3~input_o\)) ) ) # ( !\M4~input_o\ & ( (!\M3~input_o\ & (!\M1~input_o\ $ (!\M2~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000100000001000000001100000011000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M1~input_o\,
	datab => \ALT_INV_M2~input_o\,
	datac => \ALT_INV_M3~input_o\,
	datae => \ALT_INV_M4~input_o\,
	combout => \C0~0_combout\);

-- Location: LABCELL_X88_Y37_N9
\C0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C0~1_combout\ = ( \M4~input_o\ ) # ( !\M4~input_o\ & ( ((!\M2~input_o\) # (\M1~input_o\)) # (\M3~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111111111111111111111111110101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M3~input_o\,
	datac => \ALT_INV_M2~input_o\,
	datad => \ALT_INV_M1~input_o\,
	datae => \ALT_INV_M4~input_o\,
	combout => \C0~1_combout\);

-- Location: LABCELL_X88_Y37_N12
\C0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C0~2_combout\ = ( !\M1~input_o\ & ( (!\M2~input_o\ & !\M3~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_M2~input_o\,
	datac => \ALT_INV_M3~input_o\,
	datae => \ALT_INV_M1~input_o\,
	combout => \C0~2_combout\);

-- Location: LABCELL_X17_Y61_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


