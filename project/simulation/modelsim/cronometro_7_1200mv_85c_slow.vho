-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/09/2021 15:21:26"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ChronometerTop IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0)
	);
END ChronometerTop;

-- Design Ports Information
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ChronometerTop IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \deb2|s_dirtyIn~q\ : std_logic;
SIGNAL \deb2|s_previousIn~q\ : std_logic;
SIGNAL \deb2|Add0~0_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt[9]~3_combout\ : std_logic;
SIGNAL \deb2|Add0~29\ : std_logic;
SIGNAL \deb2|Add0~30_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \deb2|Add0~31\ : std_logic;
SIGNAL \deb2|Add0~32_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \deb2|Add0~33\ : std_logic;
SIGNAL \deb2|Add0~34_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \deb2|Add0~35\ : std_logic;
SIGNAL \deb2|Add0~36_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \deb2|Add0~37\ : std_logic;
SIGNAL \deb2|Add0~38_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \deb2|Add0~39\ : std_logic;
SIGNAL \deb2|Add0~40_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \deb2|Add0~41\ : std_logic;
SIGNAL \deb2|Add0~42_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \deb2|LessThan0~4_combout\ : std_logic;
SIGNAL \deb2|LessThan0~5_combout\ : std_logic;
SIGNAL \deb2|LessThan0~6_combout\ : std_logic;
SIGNAL \deb2|LessThan0~1_combout\ : std_logic;
SIGNAL \deb2|Add0~1\ : std_logic;
SIGNAL \deb2|Add0~2_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \deb2|Add0~3\ : std_logic;
SIGNAL \deb2|Add0~4_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \deb2|Add0~5\ : std_logic;
SIGNAL \deb2|Add0~6_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \deb2|Add0~7\ : std_logic;
SIGNAL \deb2|Add0~8_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \deb2|Add0~9\ : std_logic;
SIGNAL \deb2|Add0~10_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \deb2|Add0~11\ : std_logic;
SIGNAL \deb2|Add0~12_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \deb2|Add0~13\ : std_logic;
SIGNAL \deb2|Add0~14_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \deb2|Add0~15\ : std_logic;
SIGNAL \deb2|Add0~16_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \deb2|LessThan0~0_combout\ : std_logic;
SIGNAL \deb2|s_cleanOut~5_combout\ : std_logic;
SIGNAL \deb2|LessThan0~2_combout\ : std_logic;
SIGNAL \deb2|LessThan0~3_combout\ : std_logic;
SIGNAL \deb2|LessThan0~7_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt[9]~4_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt[9]~2_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \deb2|Add0~43\ : std_logic;
SIGNAL \deb2|Add0~44_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt[9]~0_combout\ : std_logic;
SIGNAL \deb2|Add0~17\ : std_logic;
SIGNAL \deb2|Add0~18_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \deb2|Add0~19\ : std_logic;
SIGNAL \deb2|Add0~20_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \deb2|Add0~21\ : std_logic;
SIGNAL \deb2|Add0~22_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \deb2|Add0~23\ : std_logic;
SIGNAL \deb2|Add0~24_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \deb2|Add0~25\ : std_logic;
SIGNAL \deb2|Add0~26_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \deb2|Add0~27\ : std_logic;
SIGNAL \deb2|Add0~28_combout\ : std_logic;
SIGNAL \deb2|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \deb2|s_cleanOut~3_combout\ : std_logic;
SIGNAL \deb2|s_cleanOut~0_combout\ : std_logic;
SIGNAL \deb2|s_cleanOut~2_combout\ : std_logic;
SIGNAL \deb2|s_cleanOut~1_combout\ : std_logic;
SIGNAL \deb2|s_cleanOut~4_combout\ : std_logic;
SIGNAL \deb2|s_cleanOut~6_combout\ : std_logic;
SIGNAL \deb2|s_cleanOut~7_combout\ : std_logic;
SIGNAL \deb2|s_cleanOut~q\ : std_logic;
SIGNAL \counter2|s_count~2_combout\ : std_logic;
SIGNAL \counter2|Add0~0_combout\ : std_logic;
SIGNAL \counter2|s_count~3_combout\ : std_logic;
SIGNAL \counter2|Add0~1_combout\ : std_logic;
SIGNAL \counter2|s_count~4_combout\ : std_logic;
SIGNAL \counter2|s_count[0]~0_combout\ : std_logic;
SIGNAL \counter2|s_count~1_combout\ : std_logic;
SIGNAL \counter1|s_count~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \deb1|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \deb1|s_dirtyIn~q\ : std_logic;
SIGNAL \deb1|s_previousIn~q\ : std_logic;
SIGNAL \deb1|Add0~0_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \deb1|Add0~1\ : std_logic;
SIGNAL \deb1|Add0~2_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \deb1|Add0~3\ : std_logic;
SIGNAL \deb1|Add0~4_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \deb1|Add0~5\ : std_logic;
SIGNAL \deb1|Add0~6_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \deb1|Add0~7\ : std_logic;
SIGNAL \deb1|Add0~8_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \deb1|Add0~9\ : std_logic;
SIGNAL \deb1|Add0~11\ : std_logic;
SIGNAL \deb1|Add0~12_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \deb1|Add0~13\ : std_logic;
SIGNAL \deb1|Add0~14_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \deb1|Add0~15\ : std_logic;
SIGNAL \deb1|Add0~16_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \deb1|Add0~17\ : std_logic;
SIGNAL \deb1|Add0~18_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \deb1|Add0~19\ : std_logic;
SIGNAL \deb1|Add0~20_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \deb1|Add0~21\ : std_logic;
SIGNAL \deb1|Add0~22_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \deb1|Add0~23\ : std_logic;
SIGNAL \deb1|Add0~24_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \deb1|Add0~25\ : std_logic;
SIGNAL \deb1|Add0~26_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \deb1|Add0~27\ : std_logic;
SIGNAL \deb1|Add0~28_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \deb1|Add0~29\ : std_logic;
SIGNAL \deb1|Add0~30_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \deb1|Add0~31\ : std_logic;
SIGNAL \deb1|Add0~32_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \deb1|Add0~33\ : std_logic;
SIGNAL \deb1|Add0~34_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \deb1|Add0~35\ : std_logic;
SIGNAL \deb1|Add0~36_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \deb1|Add0~37\ : std_logic;
SIGNAL \deb1|Add0~38_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \deb1|LessThan0~4_combout\ : std_logic;
SIGNAL \deb1|LessThan0~5_combout\ : std_logic;
SIGNAL \deb1|LessThan0~1_combout\ : std_logic;
SIGNAL \deb1|LessThan0~2_combout\ : std_logic;
SIGNAL \deb1|LessThan0~3_combout\ : std_logic;
SIGNAL \deb1|s_cleanOut~5_combout\ : std_logic;
SIGNAL \deb1|LessThan0~6_combout\ : std_logic;
SIGNAL \deb1|LessThan0~7_combout\ : std_logic;
SIGNAL \deb1|s_cleanOut~2_combout\ : std_logic;
SIGNAL \deb1|Add0~39\ : std_logic;
SIGNAL \deb1|Add0~41\ : std_logic;
SIGNAL \deb1|Add0~42_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \deb1|s_cleanOut~1_combout\ : std_logic;
SIGNAL \deb1|s_cleanOut~3_combout\ : std_logic;
SIGNAL \deb1|s_cleanOut~0_combout\ : std_logic;
SIGNAL \deb1|s_cleanOut~4_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt[22]~2_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \deb1|Add0~43\ : std_logic;
SIGNAL \deb1|Add0~44_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt[22]~3_combout\ : std_logic;
SIGNAL \deb1|Add0~40_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \deb1|LessThan0~0_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt[22]~0_combout\ : std_logic;
SIGNAL \deb1|Add0~10_combout\ : std_logic;
SIGNAL \deb1|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \deb1|s_cleanOut~6_combout\ : std_logic;
SIGNAL \deb1|s_cleanOut~7_combout\ : std_logic;
SIGNAL \deb1|s_cleanOut~q\ : std_logic;
SIGNAL \counter1|s_count[3]~1_combout\ : std_logic;
SIGNAL \DisplayCntrl|s_currentState.INIT~0_combout\ : std_logic;
SIGNAL \DisplayCntrl|s_currentState.INIT~q\ : std_logic;
SIGNAL \DisplayCntrl|s_currentState~12_combout\ : std_logic;
SIGNAL \DisplayCntrl|s_currentState.E1~q\ : std_logic;
SIGNAL \DisplayCntrl|s_currentState~11_combout\ : std_logic;
SIGNAL \DisplayCntrl|s_currentState.E2~q\ : std_logic;
SIGNAL \Mux|dataOut[0]~0_combout\ : std_logic;
SIGNAL \counter1|s_count~3_combout\ : std_logic;
SIGNAL \counter1|Add0~0_combout\ : std_logic;
SIGNAL \counter1|s_count~4_combout\ : std_logic;
SIGNAL \counter1|s_count[3]~2_combout\ : std_logic;
SIGNAL \counter1|Add0~1_combout\ : std_logic;
SIGNAL \counter1|s_count~5_combout\ : std_logic;
SIGNAL \Mux|dataOut[3]~3_combout\ : std_logic;
SIGNAL \Mux|dataOut[2]~2_combout\ : std_logic;
SIGNAL \Mux|dataOut[1]~1_combout\ : std_logic;
SIGNAL \segDecoder|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \reg1|dataOut~20_combout\ : std_logic;
SIGNAL \reg1|dataOut~6_combout\ : std_logic;
SIGNAL \reg1|dataOut~7_combout\ : std_logic;
SIGNAL \reg1|dataOut~8_combout\ : std_logic;
SIGNAL \reg1|dataOut~9_combout\ : std_logic;
SIGNAL \reg1|dataOut[1]~feeder_combout\ : std_logic;
SIGNAL \reg1|dataOut~10_combout\ : std_logic;
SIGNAL \reg1|dataOut~11_combout\ : std_logic;
SIGNAL \reg1|dataOut[2]~feeder_combout\ : std_logic;
SIGNAL \reg1|dataOut~14_combout\ : std_logic;
SIGNAL \reg1|dataOut~13_combout\ : std_logic;
SIGNAL \reg1|dataOut~12_combout\ : std_logic;
SIGNAL \reg1|dataOut~15_combout\ : std_logic;
SIGNAL \reg1|dataOut[3]~feeder_combout\ : std_logic;
SIGNAL \segDecoder|decOut_n[4]~6_combout\ : std_logic;
SIGNAL \segDecoder|decOut_n[4]~7_combout\ : std_logic;
SIGNAL \segDecoder|decOut_n[4]~8_combout\ : std_logic;
SIGNAL \segDecoder|decOut_n[4]~9_combout\ : std_logic;
SIGNAL \segDecoder|decOut_n[4]~4_combout\ : std_logic;
SIGNAL \segDecoder|decOut_n[4]~3_combout\ : std_logic;
SIGNAL \segDecoder|decOut_n[4]~1_combout\ : std_logic;
SIGNAL \segDecoder|decOut_n[4]~2_combout\ : std_logic;
SIGNAL \segDecoder|decOut_n[4]~5_combout\ : std_logic;
SIGNAL \reg1|dataOut~16_combout\ : std_logic;
SIGNAL \reg1|dataOut~21_combout\ : std_logic;
SIGNAL \reg1|dataOut~17_combout\ : std_logic;
SIGNAL \reg1|dataOut[5]~feeder_combout\ : std_logic;
SIGNAL \reg1|dataOut~18_combout\ : std_logic;
SIGNAL \reg1|dataOut~19_combout\ : std_logic;
SIGNAL \reg1|dataOut[6]~feeder_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[23]~73\ : std_logic;
SIGNAL \clkDiv|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[24]~75\ : std_logic;
SIGNAL \clkDiv|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \clkDiv|LessThan1~0_combout\ : std_logic;
SIGNAL \clkDiv|LessThan0~0_combout\ : std_logic;
SIGNAL \clkDiv|LessThan0~1_combout\ : std_logic;
SIGNAL \clkDiv|LessThan1~4_combout\ : std_logic;
SIGNAL \clkDiv|LessThan1~2_combout\ : std_logic;
SIGNAL \clkDiv|LessThan1~3_combout\ : std_logic;
SIGNAL \clkDiv|LessThan0~2_combout\ : std_logic;
SIGNAL \clkDiv|LessThan0~3_combout\ : std_logic;
SIGNAL \clkDiv|LessThan0~4_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[0]~27\ : std_logic;
SIGNAL \clkDiv|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[1]~29\ : std_logic;
SIGNAL \clkDiv|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[2]~31\ : std_logic;
SIGNAL \clkDiv|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[3]~33\ : std_logic;
SIGNAL \clkDiv|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[4]~35\ : std_logic;
SIGNAL \clkDiv|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[5]~37\ : std_logic;
SIGNAL \clkDiv|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[6]~39\ : std_logic;
SIGNAL \clkDiv|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[7]~41\ : std_logic;
SIGNAL \clkDiv|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[8]~43\ : std_logic;
SIGNAL \clkDiv|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[9]~45\ : std_logic;
SIGNAL \clkDiv|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[10]~47\ : std_logic;
SIGNAL \clkDiv|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[11]~49\ : std_logic;
SIGNAL \clkDiv|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[12]~51\ : std_logic;
SIGNAL \clkDiv|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[13]~53\ : std_logic;
SIGNAL \clkDiv|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[14]~55\ : std_logic;
SIGNAL \clkDiv|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[15]~57\ : std_logic;
SIGNAL \clkDiv|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[16]~59\ : std_logic;
SIGNAL \clkDiv|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[17]~61\ : std_logic;
SIGNAL \clkDiv|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[18]~63\ : std_logic;
SIGNAL \clkDiv|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[19]~65\ : std_logic;
SIGNAL \clkDiv|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[20]~67\ : std_logic;
SIGNAL \clkDiv|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[21]~69\ : std_logic;
SIGNAL \clkDiv|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[22]~71\ : std_logic;
SIGNAL \clkDiv|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \clkDiv|LessThan1~1_combout\ : std_logic;
SIGNAL \clkDiv|LessThan1~5_combout\ : std_logic;
SIGNAL \clkDiv|LessThan1~6_combout\ : std_logic;
SIGNAL \clkDiv|LessThan1~7_combout\ : std_logic;
SIGNAL \clkDiv|LessThan1~8_combout\ : std_logic;
SIGNAL \clkDiv|clkOut~q\ : std_logic;
SIGNAL \counter1|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkDiv|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \deb2|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \reg2|dataOut\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \reg1|dataOut\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \counter2|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \deb1|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|dataOut\(0),
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|dataOut\(1),
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|dataOut\(2),
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|dataOut\(3),
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|dataOut\(4),
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|dataOut\(5),
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|dataOut\(6),
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|dataOut\(0),
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|dataOut\(1),
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|dataOut\(2),
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|dataOut\(3),
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|dataOut\(4),
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|dataOut\(5),
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|dataOut\(6),
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clkDiv|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X107_Y47_N27
\deb2|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_dirtyIn~q\);

-- Location: FF_X109_Y47_N17
\deb2|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \deb2|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_previousIn~q\);

-- Location: LCCOMB_X108_Y47_N10
\deb2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~0_combout\ = \deb2|s_debounceCnt\(0) $ (VCC)
-- \deb2|Add0~1\ = CARRY(\deb2|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb2|s_debounceCnt\(0),
	datad => VCC,
	combout => \deb2|Add0~0_combout\,
	cout => \deb2|Add0~1\);

-- Location: LCCOMB_X109_Y47_N16
\deb2|s_debounceCnt[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt[9]~3_combout\ = ((\deb2|s_debounceCnt\(22)) # ((\deb2|s_debounceCnt[9]~2_combout\) # (!\deb2|s_previousIn~q\))) # (!\deb2|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_dirtyIn~q\,
	datab => \deb2|s_debounceCnt\(22),
	datac => \deb2|s_previousIn~q\,
	datad => \deb2|s_debounceCnt[9]~2_combout\,
	combout => \deb2|s_debounceCnt[9]~3_combout\);

-- Location: LCCOMB_X108_Y46_N6
\deb2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~28_combout\ = (\deb2|s_debounceCnt\(14) & ((GND) # (!\deb2|Add0~27\))) # (!\deb2|s_debounceCnt\(14) & (\deb2|Add0~27\ $ (GND)))
-- \deb2|Add0~29\ = CARRY((\deb2|s_debounceCnt\(14)) # (!\deb2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(14),
	datad => VCC,
	cin => \deb2|Add0~27\,
	combout => \deb2|Add0~28_combout\,
	cout => \deb2|Add0~29\);

-- Location: LCCOMB_X108_Y46_N8
\deb2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~30_combout\ = (\deb2|s_debounceCnt\(15) & (\deb2|Add0~29\ & VCC)) # (!\deb2|s_debounceCnt\(15) & (!\deb2|Add0~29\))
-- \deb2|Add0~31\ = CARRY((!\deb2|s_debounceCnt\(15) & !\deb2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(15),
	datad => VCC,
	cin => \deb2|Add0~29\,
	combout => \deb2|Add0~30_combout\,
	cout => \deb2|Add0~31\);

-- Location: LCCOMB_X109_Y47_N22
\deb2|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt~5_combout\ = (\deb2|Add0~30_combout\ & \deb2|s_debounceCnt[9]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|Add0~30_combout\,
	datad => \deb2|s_debounceCnt[9]~4_combout\,
	combout => \deb2|s_debounceCnt~5_combout\);

-- Location: FF_X109_Y47_N23
\deb2|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt~5_combout\,
	ena => \deb2|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(15));

-- Location: LCCOMB_X108_Y46_N10
\deb2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~32_combout\ = (\deb2|s_debounceCnt\(16) & ((GND) # (!\deb2|Add0~31\))) # (!\deb2|s_debounceCnt\(16) & (\deb2|Add0~31\ $ (GND)))
-- \deb2|Add0~33\ = CARRY((\deb2|s_debounceCnt\(16)) # (!\deb2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb2|s_debounceCnt\(16),
	datad => VCC,
	cin => \deb2|Add0~31\,
	combout => \deb2|Add0~32_combout\,
	cout => \deb2|Add0~33\);

-- Location: LCCOMB_X109_Y47_N8
\deb2|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt~6_combout\ = (\deb2|Add0~32_combout\ & \deb2|s_debounceCnt[9]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \deb2|Add0~32_combout\,
	datad => \deb2|s_debounceCnt[9]~4_combout\,
	combout => \deb2|s_debounceCnt~6_combout\);

-- Location: FF_X109_Y47_N9
\deb2|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt~6_combout\,
	ena => \deb2|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(16));

-- Location: LCCOMB_X108_Y46_N12
\deb2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~34_combout\ = (\deb2|s_debounceCnt\(17) & (\deb2|Add0~33\ & VCC)) # (!\deb2|s_debounceCnt\(17) & (!\deb2|Add0~33\))
-- \deb2|Add0~35\ = CARRY((!\deb2|s_debounceCnt\(17) & !\deb2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb2|s_debounceCnt\(17),
	datad => VCC,
	cin => \deb2|Add0~33\,
	combout => \deb2|Add0~34_combout\,
	cout => \deb2|Add0~35\);

-- Location: LCCOMB_X109_Y47_N26
\deb2|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt~7_combout\ = (\deb2|Add0~34_combout\ & \deb2|s_debounceCnt[9]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \deb2|Add0~34_combout\,
	datad => \deb2|s_debounceCnt[9]~4_combout\,
	combout => \deb2|s_debounceCnt~7_combout\);

-- Location: FF_X109_Y47_N27
\deb2|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt~7_combout\,
	ena => \deb2|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(17));

-- Location: LCCOMB_X108_Y46_N14
\deb2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~36_combout\ = (\deb2|s_debounceCnt\(18) & ((GND) # (!\deb2|Add0~35\))) # (!\deb2|s_debounceCnt\(18) & (\deb2|Add0~35\ $ (GND)))
-- \deb2|Add0~37\ = CARRY((\deb2|s_debounceCnt\(18)) # (!\deb2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(18),
	datad => VCC,
	cin => \deb2|Add0~35\,
	combout => \deb2|Add0~36_combout\,
	cout => \deb2|Add0~37\);

-- Location: LCCOMB_X109_Y47_N18
\deb2|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt[18]~18_combout\ = (\deb2|s_debounceCnt[9]~3_combout\ & (\deb2|s_debounceCnt[9]~0_combout\ & ((\deb2|Add0~36_combout\) # (!\deb2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_previousIn~q\,
	datab => \deb2|s_debounceCnt[9]~3_combout\,
	datac => \deb2|Add0~36_combout\,
	datad => \deb2|s_debounceCnt[9]~0_combout\,
	combout => \deb2|s_debounceCnt[18]~18_combout\);

-- Location: FF_X109_Y47_N19
\deb2|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(18));

-- Location: LCCOMB_X108_Y46_N16
\deb2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~38_combout\ = (\deb2|s_debounceCnt\(19) & (\deb2|Add0~37\ & VCC)) # (!\deb2|s_debounceCnt\(19) & (!\deb2|Add0~37\))
-- \deb2|Add0~39\ = CARRY((!\deb2|s_debounceCnt\(19) & !\deb2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb2|s_debounceCnt\(19),
	datad => VCC,
	cin => \deb2|Add0~37\,
	combout => \deb2|Add0~38_combout\,
	cout => \deb2|Add0~39\);

-- Location: LCCOMB_X109_Y47_N20
\deb2|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt[19]~19_combout\ = (\deb2|s_debounceCnt[9]~3_combout\ & (\deb2|s_debounceCnt[9]~0_combout\ & ((\deb2|Add0~38_combout\) # (!\deb2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_previousIn~q\,
	datab => \deb2|s_debounceCnt[9]~3_combout\,
	datac => \deb2|Add0~38_combout\,
	datad => \deb2|s_debounceCnt[9]~0_combout\,
	combout => \deb2|s_debounceCnt[19]~19_combout\);

-- Location: FF_X109_Y47_N21
\deb2|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(19));

-- Location: LCCOMB_X108_Y46_N18
\deb2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~40_combout\ = (\deb2|s_debounceCnt\(20) & ((GND) # (!\deb2|Add0~39\))) # (!\deb2|s_debounceCnt\(20) & (\deb2|Add0~39\ $ (GND)))
-- \deb2|Add0~41\ = CARRY((\deb2|s_debounceCnt\(20)) # (!\deb2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb2|s_debounceCnt\(20),
	datad => VCC,
	cin => \deb2|Add0~39\,
	combout => \deb2|Add0~40_combout\,
	cout => \deb2|Add0~41\);

-- Location: LCCOMB_X108_Y46_N24
\deb2|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt[20]~10_combout\ = (\deb2|Add0~40_combout\ & (\deb2|s_debounceCnt[9]~3_combout\ & \deb2|s_debounceCnt[9]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb2|Add0~40_combout\,
	datac => \deb2|s_debounceCnt[9]~3_combout\,
	datad => \deb2|s_debounceCnt[9]~4_combout\,
	combout => \deb2|s_debounceCnt[20]~10_combout\);

-- Location: FF_X108_Y46_N25
\deb2|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(20));

-- Location: LCCOMB_X108_Y46_N20
\deb2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~42_combout\ = (\deb2|s_debounceCnt\(21) & (\deb2|Add0~41\ & VCC)) # (!\deb2|s_debounceCnt\(21) & (!\deb2|Add0~41\))
-- \deb2|Add0~43\ = CARRY((!\deb2|s_debounceCnt\(21) & !\deb2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb2|s_debounceCnt\(21),
	datad => VCC,
	cin => \deb2|Add0~41\,
	combout => \deb2|Add0~42_combout\,
	cout => \deb2|Add0~43\);

-- Location: LCCOMB_X108_Y47_N8
\deb2|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt[21]~11_combout\ = (\deb2|s_debounceCnt[9]~4_combout\ & (\deb2|Add0~42_combout\ & \deb2|s_debounceCnt[9]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt[9]~4_combout\,
	datac => \deb2|Add0~42_combout\,
	datad => \deb2|s_debounceCnt[9]~3_combout\,
	combout => \deb2|s_debounceCnt[21]~11_combout\);

-- Location: FF_X108_Y47_N9
\deb2|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(21));

-- Location: LCCOMB_X107_Y47_N10
\deb2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|LessThan0~4_combout\ = (\deb2|s_debounceCnt\(13)) # ((\deb2|s_debounceCnt\(12)) # ((\deb2|s_debounceCnt\(10) & \deb2|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(10),
	datab => \deb2|s_debounceCnt\(11),
	datac => \deb2|s_debounceCnt\(13),
	datad => \deb2|s_debounceCnt\(12),
	combout => \deb2|LessThan0~4_combout\);

-- Location: LCCOMB_X107_Y47_N20
\deb2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|LessThan0~5_combout\ = (\deb2|s_debounceCnt\(15)) # ((\deb2|s_debounceCnt\(16)) # ((\deb2|s_debounceCnt\(14) & \deb2|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(14),
	datab => \deb2|s_debounceCnt\(15),
	datac => \deb2|s_debounceCnt\(16),
	datad => \deb2|LessThan0~4_combout\,
	combout => \deb2|LessThan0~5_combout\);

-- Location: LCCOMB_X107_Y47_N30
\deb2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|LessThan0~6_combout\ = (\deb2|s_debounceCnt\(18) & (\deb2|s_debounceCnt\(19) & ((\deb2|s_debounceCnt\(17)) # (\deb2|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(17),
	datab => \deb2|s_debounceCnt\(18),
	datac => \deb2|s_debounceCnt\(19),
	datad => \deb2|LessThan0~5_combout\,
	combout => \deb2|LessThan0~6_combout\);

-- Location: LCCOMB_X107_Y47_N26
\deb2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|LessThan0~1_combout\ = (\deb2|s_debounceCnt\(9) & \deb2|s_debounceCnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb2|s_debounceCnt\(9),
	datad => \deb2|s_debounceCnt\(11),
	combout => \deb2|LessThan0~1_combout\);

-- Location: LCCOMB_X108_Y47_N12
\deb2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~2_combout\ = (\deb2|s_debounceCnt\(1) & (\deb2|Add0~1\ & VCC)) # (!\deb2|s_debounceCnt\(1) & (!\deb2|Add0~1\))
-- \deb2|Add0~3\ = CARRY((!\deb2|s_debounceCnt\(1) & !\deb2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(1),
	datad => VCC,
	cin => \deb2|Add0~1\,
	combout => \deb2|Add0~2_combout\,
	cout => \deb2|Add0~3\);

-- Location: LCCOMB_X108_Y47_N6
\deb2|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt~20_combout\ = (\deb2|Add0~2_combout\ & \deb2|s_debounceCnt[9]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|Add0~2_combout\,
	datad => \deb2|s_debounceCnt[9]~4_combout\,
	combout => \deb2|s_debounceCnt~20_combout\);

-- Location: FF_X108_Y47_N7
\deb2|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt~20_combout\,
	ena => \deb2|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(1));

-- Location: LCCOMB_X108_Y47_N14
\deb2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~4_combout\ = (\deb2|s_debounceCnt\(2) & ((GND) # (!\deb2|Add0~3\))) # (!\deb2|s_debounceCnt\(2) & (\deb2|Add0~3\ $ (GND)))
-- \deb2|Add0~5\ = CARRY((\deb2|s_debounceCnt\(2)) # (!\deb2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb2|s_debounceCnt\(2),
	datad => VCC,
	cin => \deb2|Add0~3\,
	combout => \deb2|Add0~4_combout\,
	cout => \deb2|Add0~5\);

-- Location: LCCOMB_X108_Y47_N4
\deb2|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt~21_combout\ = (\deb2|Add0~4_combout\ & \deb2|s_debounceCnt[9]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \deb2|Add0~4_combout\,
	datad => \deb2|s_debounceCnt[9]~4_combout\,
	combout => \deb2|s_debounceCnt~21_combout\);

-- Location: FF_X108_Y47_N5
\deb2|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt~21_combout\,
	ena => \deb2|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(2));

-- Location: LCCOMB_X108_Y47_N16
\deb2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~6_combout\ = (\deb2|s_debounceCnt\(3) & (\deb2|Add0~5\ & VCC)) # (!\deb2|s_debounceCnt\(3) & (!\deb2|Add0~5\))
-- \deb2|Add0~7\ = CARRY((!\deb2|s_debounceCnt\(3) & !\deb2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(3),
	datad => VCC,
	cin => \deb2|Add0~5\,
	combout => \deb2|Add0~6_combout\,
	cout => \deb2|Add0~7\);

-- Location: LCCOMB_X109_Y47_N6
\deb2|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt~22_combout\ = (\deb2|Add0~6_combout\ & \deb2|s_debounceCnt[9]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \deb2|Add0~6_combout\,
	datad => \deb2|s_debounceCnt[9]~4_combout\,
	combout => \deb2|s_debounceCnt~22_combout\);

-- Location: FF_X109_Y47_N7
\deb2|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt~22_combout\,
	ena => \deb2|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(3));

-- Location: LCCOMB_X108_Y47_N18
\deb2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~8_combout\ = (\deb2|s_debounceCnt\(4) & ((GND) # (!\deb2|Add0~7\))) # (!\deb2|s_debounceCnt\(4) & (\deb2|Add0~7\ $ (GND)))
-- \deb2|Add0~9\ = CARRY((\deb2|s_debounceCnt\(4)) # (!\deb2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb2|s_debounceCnt\(4),
	datad => VCC,
	cin => \deb2|Add0~7\,
	combout => \deb2|Add0~8_combout\,
	cout => \deb2|Add0~9\);

-- Location: LCCOMB_X109_Y47_N28
\deb2|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt~23_combout\ = (\deb2|Add0~8_combout\ & \deb2|s_debounceCnt[9]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb2|Add0~8_combout\,
	datad => \deb2|s_debounceCnt[9]~4_combout\,
	combout => \deb2|s_debounceCnt~23_combout\);

-- Location: FF_X109_Y47_N29
\deb2|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt~23_combout\,
	ena => \deb2|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(4));

-- Location: LCCOMB_X108_Y47_N20
\deb2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~10_combout\ = (\deb2|s_debounceCnt\(5) & (\deb2|Add0~9\ & VCC)) # (!\deb2|s_debounceCnt\(5) & (!\deb2|Add0~9\))
-- \deb2|Add0~11\ = CARRY((!\deb2|s_debounceCnt\(5) & !\deb2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb2|s_debounceCnt\(5),
	datad => VCC,
	cin => \deb2|Add0~9\,
	combout => \deb2|Add0~10_combout\,
	cout => \deb2|Add0~11\);

-- Location: LCCOMB_X108_Y47_N0
\deb2|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt~27_combout\ = (\deb2|Add0~10_combout\ & \deb2|s_debounceCnt[9]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb2|Add0~10_combout\,
	datad => \deb2|s_debounceCnt[9]~4_combout\,
	combout => \deb2|s_debounceCnt~27_combout\);

-- Location: FF_X108_Y47_N1
\deb2|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt~27_combout\,
	ena => \deb2|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(5));

-- Location: LCCOMB_X108_Y47_N22
\deb2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~12_combout\ = (\deb2|s_debounceCnt\(6) & ((GND) # (!\deb2|Add0~11\))) # (!\deb2|s_debounceCnt\(6) & (\deb2|Add0~11\ $ (GND)))
-- \deb2|Add0~13\ = CARRY((\deb2|s_debounceCnt\(6)) # (!\deb2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb2|s_debounceCnt\(6),
	datad => VCC,
	cin => \deb2|Add0~11\,
	combout => \deb2|Add0~12_combout\,
	cout => \deb2|Add0~13\);

-- Location: LCCOMB_X109_Y47_N0
\deb2|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt~1_combout\ = (\deb2|s_debounceCnt[9]~0_combout\ & ((\deb2|Add0~12_combout\) # (!\deb2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_previousIn~q\,
	datac => \deb2|Add0~12_combout\,
	datad => \deb2|s_debounceCnt[9]~0_combout\,
	combout => \deb2|s_debounceCnt~1_combout\);

-- Location: FF_X109_Y47_N1
\deb2|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt~1_combout\,
	ena => \deb2|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(6));

-- Location: LCCOMB_X108_Y47_N24
\deb2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~14_combout\ = (\deb2|s_debounceCnt\(7) & (\deb2|Add0~13\ & VCC)) # (!\deb2|s_debounceCnt\(7) & (!\deb2|Add0~13\))
-- \deb2|Add0~15\ = CARRY((!\deb2|s_debounceCnt\(7) & !\deb2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(7),
	datad => VCC,
	cin => \deb2|Add0~13\,
	combout => \deb2|Add0~14_combout\,
	cout => \deb2|Add0~15\);

-- Location: LCCOMB_X107_Y47_N8
\deb2|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt~12_combout\ = (\deb2|Add0~14_combout\ & \deb2|s_debounceCnt[9]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb2|Add0~14_combout\,
	datad => \deb2|s_debounceCnt[9]~4_combout\,
	combout => \deb2|s_debounceCnt~12_combout\);

-- Location: FF_X107_Y47_N9
\deb2|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt~12_combout\,
	ena => \deb2|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(7));

-- Location: LCCOMB_X108_Y47_N26
\deb2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~16_combout\ = (\deb2|s_debounceCnt\(8) & ((GND) # (!\deb2|Add0~15\))) # (!\deb2|s_debounceCnt\(8) & (\deb2|Add0~15\ $ (GND)))
-- \deb2|Add0~17\ = CARRY((\deb2|s_debounceCnt\(8)) # (!\deb2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(8),
	datad => VCC,
	cin => \deb2|Add0~15\,
	combout => \deb2|Add0~16_combout\,
	cout => \deb2|Add0~17\);

-- Location: LCCOMB_X107_Y47_N2
\deb2|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt~13_combout\ = (\deb2|s_debounceCnt[9]~0_combout\ & ((\deb2|Add0~16_combout\) # (!\deb2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt[9]~0_combout\,
	datab => \deb2|s_previousIn~q\,
	datad => \deb2|Add0~16_combout\,
	combout => \deb2|s_debounceCnt~13_combout\);

-- Location: FF_X107_Y47_N3
\deb2|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt~13_combout\,
	ena => \deb2|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(8));

-- Location: LCCOMB_X106_Y47_N16
\deb2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|LessThan0~0_combout\ = (\deb2|s_debounceCnt\(8) & (\deb2|s_debounceCnt\(14) & (\deb2|s_debounceCnt\(18) & \deb2|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(8),
	datab => \deb2|s_debounceCnt\(14),
	datac => \deb2|s_debounceCnt\(18),
	datad => \deb2|s_debounceCnt\(19),
	combout => \deb2|LessThan0~0_combout\);

-- Location: LCCOMB_X109_Y47_N14
\deb2|s_cleanOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_cleanOut~5_combout\ = (!\deb2|s_debounceCnt\(3) & (!\deb2|s_debounceCnt\(1) & (!\deb2|s_debounceCnt\(2) & !\deb2|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(3),
	datab => \deb2|s_debounceCnt\(1),
	datac => \deb2|s_debounceCnt\(2),
	datad => \deb2|s_debounceCnt\(4),
	combout => \deb2|s_cleanOut~5_combout\);

-- Location: LCCOMB_X107_Y47_N18
\deb2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|LessThan0~2_combout\ = (\deb2|s_debounceCnt\(6) & ((\deb2|s_debounceCnt\(0)) # ((\deb2|s_debounceCnt\(5)) # (!\deb2|s_cleanOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(0),
	datab => \deb2|s_debounceCnt\(5),
	datac => \deb2|s_debounceCnt\(6),
	datad => \deb2|s_cleanOut~5_combout\,
	combout => \deb2|LessThan0~2_combout\);

-- Location: LCCOMB_X107_Y47_N0
\deb2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|LessThan0~3_combout\ = (\deb2|LessThan0~1_combout\ & (\deb2|LessThan0~0_combout\ & ((\deb2|s_debounceCnt\(7)) # (\deb2|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|LessThan0~1_combout\,
	datab => \deb2|s_debounceCnt\(7),
	datac => \deb2|LessThan0~0_combout\,
	datad => \deb2|LessThan0~2_combout\,
	combout => \deb2|LessThan0~3_combout\);

-- Location: LCCOMB_X107_Y47_N28
\deb2|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|LessThan0~7_combout\ = (\deb2|s_debounceCnt\(20)) # ((\deb2|s_debounceCnt\(21)) # ((\deb2|LessThan0~6_combout\) # (\deb2|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(20),
	datab => \deb2|s_debounceCnt\(21),
	datac => \deb2|LessThan0~6_combout\,
	datad => \deb2|LessThan0~3_combout\,
	combout => \deb2|LessThan0~7_combout\);

-- Location: LCCOMB_X107_Y47_N12
\deb2|s_debounceCnt[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt[9]~4_combout\ = (\deb2|s_previousIn~q\ & (\deb2|s_dirtyIn~q\ & ((!\deb2|LessThan0~7_combout\) # (!\deb2|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(22),
	datab => \deb2|s_previousIn~q\,
	datac => \deb2|s_dirtyIn~q\,
	datad => \deb2|LessThan0~7_combout\,
	combout => \deb2|s_debounceCnt[9]~4_combout\);

-- Location: LCCOMB_X108_Y47_N2
\deb2|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt~24_combout\ = (\deb2|Add0~0_combout\ & \deb2|s_debounceCnt[9]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|Add0~0_combout\,
	datad => \deb2|s_debounceCnt[9]~4_combout\,
	combout => \deb2|s_debounceCnt~24_combout\);

-- Location: FF_X108_Y47_N3
\deb2|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt~24_combout\,
	ena => \deb2|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(0));

-- Location: LCCOMB_X109_Y47_N2
\deb2|s_debounceCnt[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt[9]~2_combout\ = (\deb2|s_debounceCnt\(0)) # (((\deb2|s_debounceCnt\(5)) # (!\deb2|s_cleanOut~4_combout\)) # (!\deb2|s_cleanOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(0),
	datab => \deb2|s_cleanOut~5_combout\,
	datac => \deb2|s_debounceCnt\(5),
	datad => \deb2|s_cleanOut~4_combout\,
	combout => \deb2|s_debounceCnt[9]~2_combout\);

-- Location: LCCOMB_X107_Y47_N14
\deb2|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt[22]~25_combout\ = (\deb2|s_dirtyIn~q\ & ((\deb2|s_debounceCnt\(22) & ((!\deb2|LessThan0~7_combout\))) # (!\deb2|s_debounceCnt\(22) & (\deb2|s_debounceCnt[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_dirtyIn~q\,
	datab => \deb2|s_debounceCnt\(22),
	datac => \deb2|s_debounceCnt[9]~2_combout\,
	datad => \deb2|LessThan0~7_combout\,
	combout => \deb2|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X108_Y46_N22
\deb2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~44_combout\ = \deb2|s_debounceCnt\(22) $ (\deb2|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb2|s_debounceCnt\(22),
	cin => \deb2|Add0~43\,
	combout => \deb2|Add0~44_combout\);

-- Location: LCCOMB_X107_Y47_N24
\deb2|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt[22]~26_combout\ = (\deb2|s_previousIn~q\ & (((\deb2|s_debounceCnt[22]~25_combout\ & \deb2|Add0~44_combout\)))) # (!\deb2|s_previousIn~q\ & (\deb2|s_debounceCnt[9]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt[9]~0_combout\,
	datab => \deb2|s_previousIn~q\,
	datac => \deb2|s_debounceCnt[22]~25_combout\,
	datad => \deb2|Add0~44_combout\,
	combout => \deb2|s_debounceCnt[22]~26_combout\);

-- Location: FF_X107_Y47_N25
\deb2|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(22));

-- Location: LCCOMB_X107_Y47_N6
\deb2|s_debounceCnt[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt[9]~0_combout\ = (\deb2|s_dirtyIn~q\ & ((!\deb2|LessThan0~7_combout\) # (!\deb2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb2|s_debounceCnt\(22),
	datac => \deb2|s_dirtyIn~q\,
	datad => \deb2|LessThan0~7_combout\,
	combout => \deb2|s_debounceCnt[9]~0_combout\);

-- Location: LCCOMB_X108_Y47_N28
\deb2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~18_combout\ = (\deb2|s_debounceCnt\(9) & (\deb2|Add0~17\ & VCC)) # (!\deb2|s_debounceCnt\(9) & (!\deb2|Add0~17\))
-- \deb2|Add0~19\ = CARRY((!\deb2|s_debounceCnt\(9) & !\deb2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(9),
	datad => VCC,
	cin => \deb2|Add0~17\,
	combout => \deb2|Add0~18_combout\,
	cout => \deb2|Add0~19\);

-- Location: LCCOMB_X107_Y47_N16
\deb2|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt~14_combout\ = (\deb2|s_debounceCnt[9]~0_combout\ & ((\deb2|Add0~18_combout\) # (!\deb2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt[9]~0_combout\,
	datab => \deb2|s_previousIn~q\,
	datad => \deb2|Add0~18_combout\,
	combout => \deb2|s_debounceCnt~14_combout\);

-- Location: FF_X107_Y47_N17
\deb2|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt~14_combout\,
	ena => \deb2|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(9));

-- Location: LCCOMB_X108_Y47_N30
\deb2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~20_combout\ = (\deb2|s_debounceCnt\(10) & ((GND) # (!\deb2|Add0~19\))) # (!\deb2|s_debounceCnt\(10) & (\deb2|Add0~19\ $ (GND)))
-- \deb2|Add0~21\ = CARRY((\deb2|s_debounceCnt\(10)) # (!\deb2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb2|s_debounceCnt\(10),
	datad => VCC,
	cin => \deb2|Add0~19\,
	combout => \deb2|Add0~20_combout\,
	cout => \deb2|Add0~21\);

-- Location: LCCOMB_X107_Y47_N22
\deb2|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt~15_combout\ = (\deb2|Add0~20_combout\ & \deb2|s_debounceCnt[9]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \deb2|Add0~20_combout\,
	datad => \deb2|s_debounceCnt[9]~4_combout\,
	combout => \deb2|s_debounceCnt~15_combout\);

-- Location: FF_X107_Y47_N23
\deb2|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt~15_combout\,
	ena => \deb2|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(10));

-- Location: LCCOMB_X108_Y46_N0
\deb2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~22_combout\ = (\deb2|s_debounceCnt\(11) & (\deb2|Add0~21\ & VCC)) # (!\deb2|s_debounceCnt\(11) & (!\deb2|Add0~21\))
-- \deb2|Add0~23\ = CARRY((!\deb2|s_debounceCnt\(11) & !\deb2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb2|s_debounceCnt\(11),
	datad => VCC,
	cin => \deb2|Add0~21\,
	combout => \deb2|Add0~22_combout\,
	cout => \deb2|Add0~23\);

-- Location: LCCOMB_X109_Y47_N30
\deb2|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt~16_combout\ = (\deb2|s_debounceCnt[9]~0_combout\ & ((\deb2|Add0~22_combout\) # (!\deb2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_previousIn~q\,
	datac => \deb2|Add0~22_combout\,
	datad => \deb2|s_debounceCnt[9]~0_combout\,
	combout => \deb2|s_debounceCnt~16_combout\);

-- Location: FF_X109_Y47_N31
\deb2|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt~16_combout\,
	ena => \deb2|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(11));

-- Location: LCCOMB_X108_Y46_N2
\deb2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~24_combout\ = (\deb2|s_debounceCnt\(12) & ((GND) # (!\deb2|Add0~23\))) # (!\deb2|s_debounceCnt\(12) & (\deb2|Add0~23\ $ (GND)))
-- \deb2|Add0~25\ = CARRY((\deb2|s_debounceCnt\(12)) # (!\deb2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb2|s_debounceCnt\(12),
	datad => VCC,
	cin => \deb2|Add0~23\,
	combout => \deb2|Add0~24_combout\,
	cout => \deb2|Add0~25\);

-- Location: LCCOMB_X108_Y46_N28
\deb2|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt~8_combout\ = (\deb2|Add0~24_combout\ & \deb2|s_debounceCnt[9]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb2|Add0~24_combout\,
	datad => \deb2|s_debounceCnt[9]~4_combout\,
	combout => \deb2|s_debounceCnt~8_combout\);

-- Location: FF_X108_Y46_N29
\deb2|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt~8_combout\,
	ena => \deb2|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(12));

-- Location: LCCOMB_X108_Y46_N4
\deb2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|Add0~26_combout\ = (\deb2|s_debounceCnt\(13) & (\deb2|Add0~25\ & VCC)) # (!\deb2|s_debounceCnt\(13) & (!\deb2|Add0~25\))
-- \deb2|Add0~27\ = CARRY((!\deb2|s_debounceCnt\(13) & !\deb2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(13),
	datad => VCC,
	cin => \deb2|Add0~25\,
	combout => \deb2|Add0~26_combout\,
	cout => \deb2|Add0~27\);

-- Location: LCCOMB_X108_Y46_N30
\deb2|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt~9_combout\ = (\deb2|Add0~26_combout\ & \deb2|s_debounceCnt[9]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \deb2|Add0~26_combout\,
	datad => \deb2|s_debounceCnt[9]~4_combout\,
	combout => \deb2|s_debounceCnt~9_combout\);

-- Location: FF_X108_Y46_N31
\deb2|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt~9_combout\,
	ena => \deb2|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(13));

-- Location: LCCOMB_X109_Y47_N12
\deb2|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_debounceCnt~17_combout\ = (\deb2|s_debounceCnt[9]~0_combout\ & ((\deb2|Add0~28_combout\) # (!\deb2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|Add0~28_combout\,
	datac => \deb2|s_previousIn~q\,
	datad => \deb2|s_debounceCnt[9]~0_combout\,
	combout => \deb2|s_debounceCnt~17_combout\);

-- Location: FF_X109_Y47_N13
\deb2|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_debounceCnt~17_combout\,
	ena => \deb2|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_debounceCnt\(14));

-- Location: LCCOMB_X109_Y47_N10
\deb2|s_cleanOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_cleanOut~3_combout\ = (!\deb2|s_debounceCnt\(14) & (!\deb2|s_debounceCnt\(18) & (!\deb2|s_debounceCnt\(11) & !\deb2|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(14),
	datab => \deb2|s_debounceCnt\(18),
	datac => \deb2|s_debounceCnt\(11),
	datad => \deb2|s_debounceCnt\(19),
	combout => \deb2|s_cleanOut~3_combout\);

-- Location: LCCOMB_X109_Y47_N4
\deb2|s_cleanOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_cleanOut~0_combout\ = (!\deb2|s_debounceCnt\(17) & (!\deb2|s_debounceCnt\(6) & (!\deb2|s_debounceCnt\(16) & !\deb2|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(17),
	datab => \deb2|s_debounceCnt\(6),
	datac => \deb2|s_debounceCnt\(16),
	datad => \deb2|s_debounceCnt\(15),
	combout => \deb2|s_cleanOut~0_combout\);

-- Location: LCCOMB_X107_Y47_N4
\deb2|s_cleanOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_cleanOut~2_combout\ = (!\deb2|s_debounceCnt\(10) & (!\deb2|s_debounceCnt\(9) & (!\deb2|s_debounceCnt\(7) & !\deb2|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(10),
	datab => \deb2|s_debounceCnt\(9),
	datac => \deb2|s_debounceCnt\(7),
	datad => \deb2|s_debounceCnt\(8),
	combout => \deb2|s_cleanOut~2_combout\);

-- Location: LCCOMB_X108_Y46_N26
\deb2|s_cleanOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_cleanOut~1_combout\ = (!\deb2|s_debounceCnt\(13) & (!\deb2|s_debounceCnt\(20) & (!\deb2|s_debounceCnt\(12) & !\deb2|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_debounceCnt\(13),
	datab => \deb2|s_debounceCnt\(20),
	datac => \deb2|s_debounceCnt\(12),
	datad => \deb2|s_debounceCnt\(21),
	combout => \deb2|s_cleanOut~1_combout\);

-- Location: LCCOMB_X109_Y47_N24
\deb2|s_cleanOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_cleanOut~4_combout\ = (\deb2|s_cleanOut~3_combout\ & (\deb2|s_cleanOut~0_combout\ & (\deb2|s_cleanOut~2_combout\ & \deb2|s_cleanOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_cleanOut~3_combout\,
	datab => \deb2|s_cleanOut~0_combout\,
	datac => \deb2|s_cleanOut~2_combout\,
	datad => \deb2|s_cleanOut~1_combout\,
	combout => \deb2|s_cleanOut~4_combout\);

-- Location: LCCOMB_X110_Y47_N30
\deb2|s_cleanOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_cleanOut~6_combout\ = (\deb2|s_previousIn~q\ & (\deb2|s_debounceCnt\(0) & (\deb2|s_dirtyIn~q\ & !\deb2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_previousIn~q\,
	datab => \deb2|s_debounceCnt\(0),
	datac => \deb2|s_dirtyIn~q\,
	datad => \deb2|s_debounceCnt\(22),
	combout => \deb2|s_cleanOut~6_combout\);

-- Location: LCCOMB_X110_Y47_N20
\deb2|s_cleanOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb2|s_cleanOut~7_combout\ = (\deb2|s_cleanOut~4_combout\ & (!\deb2|s_debounceCnt\(5) & (\deb2|s_cleanOut~6_combout\ & \deb2|s_cleanOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb2|s_cleanOut~4_combout\,
	datab => \deb2|s_debounceCnt\(5),
	datac => \deb2|s_cleanOut~6_combout\,
	datad => \deb2|s_cleanOut~5_combout\,
	combout => \deb2|s_cleanOut~7_combout\);

-- Location: FF_X110_Y47_N21
\deb2|s_cleanOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb2|s_cleanOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb2|s_cleanOut~q\);

-- Location: LCCOMB_X111_Y46_N6
\counter2|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2|s_count~2_combout\ = (\counter2|s_count[0]~0_combout\ & (!\deb2|s_cleanOut~q\ & (\counter2|s_count\(1) $ (\counter2|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|s_count[0]~0_combout\,
	datab => \deb2|s_cleanOut~q\,
	datac => \counter2|s_count\(1),
	datad => \counter2|s_count\(0),
	combout => \counter2|s_count~2_combout\);

-- Location: FF_X111_Y46_N7
\counter2|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter2|s_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2|s_count\(1));

-- Location: LCCOMB_X111_Y46_N10
\counter2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2|Add0~0_combout\ = \counter2|s_count\(2) $ (((\counter2|s_count\(1) & \counter2|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|s_count\(1),
	datab => \counter2|s_count\(0),
	datad => \counter2|s_count\(2),
	combout => \counter2|Add0~0_combout\);

-- Location: LCCOMB_X111_Y46_N16
\counter2|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2|s_count~3_combout\ = (\counter2|Add0~0_combout\ & (!\deb2|s_cleanOut~q\ & \counter2|s_count[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|Add0~0_combout\,
	datac => \deb2|s_cleanOut~q\,
	datad => \counter2|s_count[0]~0_combout\,
	combout => \counter2|s_count~3_combout\);

-- Location: FF_X111_Y46_N17
\counter2|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter2|s_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2|s_count\(2));

-- Location: LCCOMB_X111_Y46_N12
\counter2|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2|Add0~1_combout\ = \counter2|s_count\(3) $ (((\counter2|s_count\(1) & (\counter2|s_count\(0) & \counter2|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|s_count\(1),
	datab => \counter2|s_count\(0),
	datac => \counter2|s_count\(3),
	datad => \counter2|s_count\(2),
	combout => \counter2|Add0~1_combout\);

-- Location: LCCOMB_X111_Y46_N14
\counter2|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2|s_count~4_combout\ = (\counter2|Add0~1_combout\ & (!\deb2|s_cleanOut~q\ & \counter2|s_count[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|Add0~1_combout\,
	datac => \deb2|s_cleanOut~q\,
	datad => \counter2|s_count[0]~0_combout\,
	combout => \counter2|s_count~4_combout\);

-- Location: FF_X111_Y46_N15
\counter2|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter2|s_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2|s_count\(3));

-- Location: LCCOMB_X111_Y46_N28
\counter2|s_count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2|s_count[0]~0_combout\ = ((\counter2|s_count\(0)) # ((\counter2|s_count\(3)) # (!\counter2|s_count\(2)))) # (!\counter2|s_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|s_count\(1),
	datab => \counter2|s_count\(0),
	datac => \counter2|s_count\(3),
	datad => \counter2|s_count\(2),
	combout => \counter2|s_count[0]~0_combout\);

-- Location: LCCOMB_X111_Y46_N24
\counter2|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2|s_count~1_combout\ = (!\deb2|s_cleanOut~q\ & (!\counter2|s_count\(0) & \counter2|s_count[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb2|s_cleanOut~q\,
	datac => \counter2|s_count\(0),
	datad => \counter2|s_count[0]~0_combout\,
	combout => \counter2|s_count~1_combout\);

-- Location: FF_X111_Y46_N25
\counter2|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter2|s_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2|s_count\(0));

-- Location: LCCOMB_X109_Y46_N20
\counter1|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1|s_count~0_combout\ = (!\deb2|s_cleanOut~q\ & !\counter1|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb2|s_cleanOut~q\,
	datac => \counter1|s_count\(0),
	combout => \counter1|s_count~0_combout\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X114_Y37_N4
\deb1|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_dirtyIn~0_combout\ = !\KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[3]~input_o\,
	combout => \deb1|s_dirtyIn~0_combout\);

-- Location: FF_X114_Y37_N5
\deb1|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_dirtyIn~q\);

-- Location: FF_X110_Y37_N5
\deb1|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \deb1|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_previousIn~q\);

-- Location: LCCOMB_X112_Y38_N10
\deb1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~0_combout\ = \deb1|s_debounceCnt\(0) $ (VCC)
-- \deb1|Add0~1\ = CARRY(\deb1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_debounceCnt\(0),
	datad => VCC,
	combout => \deb1|Add0~0_combout\,
	cout => \deb1|Add0~1\);

-- Location: LCCOMB_X112_Y38_N2
\deb1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt~23_combout\ = (\deb1|s_previousIn~q\ & (\deb1|s_debounceCnt[22]~0_combout\ & \deb1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_previousIn~q\,
	datac => \deb1|s_debounceCnt[22]~0_combout\,
	datad => \deb1|Add0~0_combout\,
	combout => \deb1|s_debounceCnt~23_combout\);

-- Location: FF_X112_Y38_N3
\deb1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt~23_combout\,
	ena => \deb1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(0));

-- Location: LCCOMB_X112_Y38_N12
\deb1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~2_combout\ = (\deb1|s_debounceCnt\(1) & (\deb1|Add0~1\ & VCC)) # (!\deb1|s_debounceCnt\(1) & (!\deb1|Add0~1\))
-- \deb1|Add0~3\ = CARRY((!\deb1|s_debounceCnt\(1) & !\deb1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(1),
	datad => VCC,
	cin => \deb1|Add0~1\,
	combout => \deb1|Add0~2_combout\,
	cout => \deb1|Add0~3\);

-- Location: LCCOMB_X112_Y38_N6
\deb1|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt~19_combout\ = (\deb1|s_previousIn~q\ & (\deb1|s_debounceCnt[22]~0_combout\ & \deb1|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_previousIn~q\,
	datac => \deb1|s_debounceCnt[22]~0_combout\,
	datad => \deb1|Add0~2_combout\,
	combout => \deb1|s_debounceCnt~19_combout\);

-- Location: FF_X112_Y38_N7
\deb1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt~19_combout\,
	ena => \deb1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(1));

-- Location: LCCOMB_X112_Y38_N14
\deb1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~4_combout\ = (\deb1|s_debounceCnt\(2) & ((GND) # (!\deb1|Add0~3\))) # (!\deb1|s_debounceCnt\(2) & (\deb1|Add0~3\ $ (GND)))
-- \deb1|Add0~5\ = CARRY((\deb1|s_debounceCnt\(2)) # (!\deb1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_debounceCnt\(2),
	datad => VCC,
	cin => \deb1|Add0~3\,
	combout => \deb1|Add0~4_combout\,
	cout => \deb1|Add0~5\);

-- Location: LCCOMB_X112_Y38_N8
\deb1|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt~20_combout\ = (\deb1|Add0~4_combout\ & (\deb1|s_debounceCnt[22]~0_combout\ & \deb1|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb1|Add0~4_combout\,
	datac => \deb1|s_debounceCnt[22]~0_combout\,
	datad => \deb1|s_previousIn~q\,
	combout => \deb1|s_debounceCnt~20_combout\);

-- Location: FF_X112_Y38_N9
\deb1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt~20_combout\,
	ena => \deb1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(2));

-- Location: LCCOMB_X112_Y38_N16
\deb1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~6_combout\ = (\deb1|s_debounceCnt\(3) & (\deb1|Add0~5\ & VCC)) # (!\deb1|s_debounceCnt\(3) & (!\deb1|Add0~5\))
-- \deb1|Add0~7\ = CARRY((!\deb1|s_debounceCnt\(3) & !\deb1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(3),
	datad => VCC,
	cin => \deb1|Add0~5\,
	combout => \deb1|Add0~6_combout\,
	cout => \deb1|Add0~7\);

-- Location: LCCOMB_X111_Y37_N26
\deb1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt~21_combout\ = (\deb1|s_previousIn~q\ & (\deb1|s_debounceCnt[22]~0_combout\ & \deb1|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_previousIn~q\,
	datac => \deb1|s_debounceCnt[22]~0_combout\,
	datad => \deb1|Add0~6_combout\,
	combout => \deb1|s_debounceCnt~21_combout\);

-- Location: FF_X111_Y37_N27
\deb1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt~21_combout\,
	ena => \deb1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(3));

-- Location: LCCOMB_X112_Y38_N18
\deb1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~8_combout\ = (\deb1|s_debounceCnt\(4) & ((GND) # (!\deb1|Add0~7\))) # (!\deb1|s_debounceCnt\(4) & (\deb1|Add0~7\ $ (GND)))
-- \deb1|Add0~9\ = CARRY((\deb1|s_debounceCnt\(4)) # (!\deb1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(4),
	datad => VCC,
	cin => \deb1|Add0~7\,
	combout => \deb1|Add0~8_combout\,
	cout => \deb1|Add0~9\);

-- Location: LCCOMB_X111_Y37_N0
\deb1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt~22_combout\ = (\deb1|s_previousIn~q\ & (\deb1|s_debounceCnt[22]~0_combout\ & \deb1|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_previousIn~q\,
	datac => \deb1|s_debounceCnt[22]~0_combout\,
	datad => \deb1|Add0~8_combout\,
	combout => \deb1|s_debounceCnt~22_combout\);

-- Location: FF_X111_Y37_N1
\deb1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt~22_combout\,
	ena => \deb1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(4));

-- Location: LCCOMB_X112_Y38_N20
\deb1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~10_combout\ = (\deb1|s_debounceCnt\(5) & (\deb1|Add0~9\ & VCC)) # (!\deb1|s_debounceCnt\(5) & (!\deb1|Add0~9\))
-- \deb1|Add0~11\ = CARRY((!\deb1|s_debounceCnt\(5) & !\deb1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_debounceCnt\(5),
	datad => VCC,
	cin => \deb1|Add0~9\,
	combout => \deb1|Add0~10_combout\,
	cout => \deb1|Add0~11\);

-- Location: LCCOMB_X112_Y38_N22
\deb1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~12_combout\ = (\deb1|s_debounceCnt\(6) & ((GND) # (!\deb1|Add0~11\))) # (!\deb1|s_debounceCnt\(6) & (\deb1|Add0~11\ $ (GND)))
-- \deb1|Add0~13\ = CARRY((\deb1|s_debounceCnt\(6)) # (!\deb1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_debounceCnt\(6),
	datad => VCC,
	cin => \deb1|Add0~11\,
	combout => \deb1|Add0~12_combout\,
	cout => \deb1|Add0~13\);

-- Location: LCCOMB_X112_Y38_N4
\deb1|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt~1_combout\ = (\deb1|s_debounceCnt[22]~0_combout\ & ((\deb1|Add0~12_combout\) # (!\deb1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|Add0~12_combout\,
	datac => \deb1|s_debounceCnt[22]~0_combout\,
	datad => \deb1|s_previousIn~q\,
	combout => \deb1|s_debounceCnt~1_combout\);

-- Location: FF_X112_Y38_N5
\deb1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt~1_combout\,
	ena => \deb1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(6));

-- Location: LCCOMB_X112_Y38_N24
\deb1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~14_combout\ = (\deb1|s_debounceCnt\(7) & (\deb1|Add0~13\ & VCC)) # (!\deb1|s_debounceCnt\(7) & (!\deb1|Add0~13\))
-- \deb1|Add0~15\ = CARRY((!\deb1|s_debounceCnt\(7) & !\deb1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_debounceCnt\(7),
	datad => VCC,
	cin => \deb1|Add0~13\,
	combout => \deb1|Add0~14_combout\,
	cout => \deb1|Add0~15\);

-- Location: LCCOMB_X111_Y37_N10
\deb1|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt~11_combout\ = (\deb1|s_previousIn~q\ & (\deb1|s_debounceCnt[22]~0_combout\ & \deb1|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_previousIn~q\,
	datac => \deb1|s_debounceCnt[22]~0_combout\,
	datad => \deb1|Add0~14_combout\,
	combout => \deb1|s_debounceCnt~11_combout\);

-- Location: FF_X111_Y37_N11
\deb1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt~11_combout\,
	ena => \deb1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(7));

-- Location: LCCOMB_X112_Y38_N26
\deb1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~16_combout\ = (\deb1|s_debounceCnt\(8) & ((GND) # (!\deb1|Add0~15\))) # (!\deb1|s_debounceCnt\(8) & (\deb1|Add0~15\ $ (GND)))
-- \deb1|Add0~17\ = CARRY((\deb1|s_debounceCnt\(8)) # (!\deb1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_debounceCnt\(8),
	datad => VCC,
	cin => \deb1|Add0~15\,
	combout => \deb1|Add0~16_combout\,
	cout => \deb1|Add0~17\);

-- Location: LCCOMB_X111_Y37_N24
\deb1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt~12_combout\ = (\deb1|s_debounceCnt[22]~0_combout\ & ((\deb1|Add0~16_combout\) # (!\deb1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_previousIn~q\,
	datac => \deb1|s_debounceCnt[22]~0_combout\,
	datad => \deb1|Add0~16_combout\,
	combout => \deb1|s_debounceCnt~12_combout\);

-- Location: FF_X111_Y37_N25
\deb1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt~12_combout\,
	ena => \deb1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(8));

-- Location: LCCOMB_X112_Y38_N28
\deb1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~18_combout\ = (\deb1|s_debounceCnt\(9) & (\deb1|Add0~17\ & VCC)) # (!\deb1|s_debounceCnt\(9) & (!\deb1|Add0~17\))
-- \deb1|Add0~19\ = CARRY((!\deb1|s_debounceCnt\(9) & !\deb1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_debounceCnt\(9),
	datad => VCC,
	cin => \deb1|Add0~17\,
	combout => \deb1|Add0~18_combout\,
	cout => \deb1|Add0~19\);

-- Location: LCCOMB_X111_Y37_N2
\deb1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt~13_combout\ = (\deb1|s_debounceCnt[22]~0_combout\ & ((\deb1|Add0~18_combout\) # (!\deb1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_previousIn~q\,
	datac => \deb1|s_debounceCnt[22]~0_combout\,
	datad => \deb1|Add0~18_combout\,
	combout => \deb1|s_debounceCnt~13_combout\);

-- Location: FF_X111_Y37_N3
\deb1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt~13_combout\,
	ena => \deb1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(9));

-- Location: LCCOMB_X112_Y38_N30
\deb1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~20_combout\ = (\deb1|s_debounceCnt\(10) & ((GND) # (!\deb1|Add0~19\))) # (!\deb1|s_debounceCnt\(10) & (\deb1|Add0~19\ $ (GND)))
-- \deb1|Add0~21\ = CARRY((\deb1|s_debounceCnt\(10)) # (!\deb1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(10),
	datad => VCC,
	cin => \deb1|Add0~19\,
	combout => \deb1|Add0~20_combout\,
	cout => \deb1|Add0~21\);

-- Location: LCCOMB_X111_Y37_N4
\deb1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt~14_combout\ = (\deb1|s_previousIn~q\ & (\deb1|s_debounceCnt[22]~0_combout\ & \deb1|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_previousIn~q\,
	datac => \deb1|s_debounceCnt[22]~0_combout\,
	datad => \deb1|Add0~20_combout\,
	combout => \deb1|s_debounceCnt~14_combout\);

-- Location: FF_X111_Y37_N5
\deb1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt~14_combout\,
	ena => \deb1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(10));

-- Location: LCCOMB_X112_Y37_N0
\deb1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~22_combout\ = (\deb1|s_debounceCnt\(11) & (\deb1|Add0~21\ & VCC)) # (!\deb1|s_debounceCnt\(11) & (!\deb1|Add0~21\))
-- \deb1|Add0~23\ = CARRY((!\deb1|s_debounceCnt\(11) & !\deb1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(11),
	datad => VCC,
	cin => \deb1|Add0~21\,
	combout => \deb1|Add0~22_combout\,
	cout => \deb1|Add0~23\);

-- Location: LCCOMB_X110_Y37_N16
\deb1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt~15_combout\ = (\deb1|s_debounceCnt[22]~0_combout\ & ((\deb1|Add0~22_combout\) # (!\deb1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_previousIn~q\,
	datac => \deb1|Add0~22_combout\,
	datad => \deb1|s_debounceCnt[22]~0_combout\,
	combout => \deb1|s_debounceCnt~15_combout\);

-- Location: FF_X110_Y37_N17
\deb1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt~15_combout\,
	ena => \deb1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(11));

-- Location: LCCOMB_X112_Y37_N2
\deb1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~24_combout\ = (\deb1|s_debounceCnt\(12) & ((GND) # (!\deb1|Add0~23\))) # (!\deb1|s_debounceCnt\(12) & (\deb1|Add0~23\ $ (GND)))
-- \deb1|Add0~25\ = CARRY((\deb1|s_debounceCnt\(12)) # (!\deb1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(12),
	datad => VCC,
	cin => \deb1|Add0~23\,
	combout => \deb1|Add0~24_combout\,
	cout => \deb1|Add0~25\);

-- Location: LCCOMB_X111_Y37_N8
\deb1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt~7_combout\ = (\deb1|s_previousIn~q\ & (\deb1|s_debounceCnt[22]~0_combout\ & \deb1|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_previousIn~q\,
	datac => \deb1|s_debounceCnt[22]~0_combout\,
	datad => \deb1|Add0~24_combout\,
	combout => \deb1|s_debounceCnt~7_combout\);

-- Location: FF_X111_Y37_N9
\deb1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt~7_combout\,
	ena => \deb1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(12));

-- Location: LCCOMB_X112_Y37_N4
\deb1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~26_combout\ = (\deb1|s_debounceCnt\(13) & (\deb1|Add0~25\ & VCC)) # (!\deb1|s_debounceCnt\(13) & (!\deb1|Add0~25\))
-- \deb1|Add0~27\ = CARRY((!\deb1|s_debounceCnt\(13) & !\deb1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_debounceCnt\(13),
	datad => VCC,
	cin => \deb1|Add0~25\,
	combout => \deb1|Add0~26_combout\,
	cout => \deb1|Add0~27\);

-- Location: LCCOMB_X111_Y37_N14
\deb1|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt~8_combout\ = (\deb1|s_previousIn~q\ & (\deb1|s_debounceCnt[22]~0_combout\ & \deb1|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_previousIn~q\,
	datac => \deb1|s_debounceCnt[22]~0_combout\,
	datad => \deb1|Add0~26_combout\,
	combout => \deb1|s_debounceCnt~8_combout\);

-- Location: FF_X111_Y37_N15
\deb1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt~8_combout\,
	ena => \deb1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(13));

-- Location: LCCOMB_X112_Y37_N6
\deb1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~28_combout\ = (\deb1|s_debounceCnt\(14) & ((GND) # (!\deb1|Add0~27\))) # (!\deb1|s_debounceCnt\(14) & (\deb1|Add0~27\ $ (GND)))
-- \deb1|Add0~29\ = CARRY((\deb1|s_debounceCnt\(14)) # (!\deb1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(14),
	datad => VCC,
	cin => \deb1|Add0~27\,
	combout => \deb1|Add0~28_combout\,
	cout => \deb1|Add0~29\);

-- Location: LCCOMB_X110_Y37_N26
\deb1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt~16_combout\ = (\deb1|s_debounceCnt[22]~0_combout\ & ((\deb1|Add0~28_combout\) # (!\deb1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_debounceCnt[22]~0_combout\,
	datac => \deb1|s_previousIn~q\,
	datad => \deb1|Add0~28_combout\,
	combout => \deb1|s_debounceCnt~16_combout\);

-- Location: FF_X110_Y37_N27
\deb1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt~16_combout\,
	ena => \deb1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(14));

-- Location: LCCOMB_X112_Y37_N8
\deb1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~30_combout\ = (\deb1|s_debounceCnt\(15) & (\deb1|Add0~29\ & VCC)) # (!\deb1|s_debounceCnt\(15) & (!\deb1|Add0~29\))
-- \deb1|Add0~31\ = CARRY((!\deb1|s_debounceCnt\(15) & !\deb1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_debounceCnt\(15),
	datad => VCC,
	cin => \deb1|Add0~29\,
	combout => \deb1|Add0~30_combout\,
	cout => \deb1|Add0~31\);

-- Location: LCCOMB_X112_Y37_N28
\deb1|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt~4_combout\ = (\deb1|s_previousIn~q\ & (\deb1|Add0~30_combout\ & \deb1|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_previousIn~q\,
	datac => \deb1|Add0~30_combout\,
	datad => \deb1|s_debounceCnt[22]~0_combout\,
	combout => \deb1|s_debounceCnt~4_combout\);

-- Location: FF_X112_Y37_N29
\deb1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt~4_combout\,
	ena => \deb1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(15));

-- Location: LCCOMB_X112_Y37_N10
\deb1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~32_combout\ = (\deb1|s_debounceCnt\(16) & ((GND) # (!\deb1|Add0~31\))) # (!\deb1|s_debounceCnt\(16) & (\deb1|Add0~31\ $ (GND)))
-- \deb1|Add0~33\ = CARRY((\deb1|s_debounceCnt\(16)) # (!\deb1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_debounceCnt\(16),
	datad => VCC,
	cin => \deb1|Add0~31\,
	combout => \deb1|Add0~32_combout\,
	cout => \deb1|Add0~33\);

-- Location: LCCOMB_X111_Y37_N28
\deb1|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt~5_combout\ = (\deb1|s_debounceCnt[22]~0_combout\ & (\deb1|s_previousIn~q\ & \deb1|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt[22]~0_combout\,
	datab => \deb1|s_previousIn~q\,
	datac => \deb1|Add0~32_combout\,
	combout => \deb1|s_debounceCnt~5_combout\);

-- Location: FF_X111_Y37_N29
\deb1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt~5_combout\,
	ena => \deb1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(16));

-- Location: LCCOMB_X112_Y37_N12
\deb1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~34_combout\ = (\deb1|s_debounceCnt\(17) & (\deb1|Add0~33\ & VCC)) # (!\deb1|s_debounceCnt\(17) & (!\deb1|Add0~33\))
-- \deb1|Add0~35\ = CARRY((!\deb1|s_debounceCnt\(17) & !\deb1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(17),
	datad => VCC,
	cin => \deb1|Add0~33\,
	combout => \deb1|Add0~34_combout\,
	cout => \deb1|Add0~35\);

-- Location: LCCOMB_X110_Y37_N14
\deb1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt~6_combout\ = (\deb1|s_debounceCnt[22]~0_combout\ & (\deb1|s_previousIn~q\ & \deb1|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_debounceCnt[22]~0_combout\,
	datac => \deb1|s_previousIn~q\,
	datad => \deb1|Add0~34_combout\,
	combout => \deb1|s_debounceCnt~6_combout\);

-- Location: FF_X110_Y37_N15
\deb1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt~6_combout\,
	ena => \deb1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(17));

-- Location: LCCOMB_X112_Y37_N14
\deb1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~36_combout\ = (\deb1|s_debounceCnt\(18) & ((GND) # (!\deb1|Add0~35\))) # (!\deb1|s_debounceCnt\(18) & (\deb1|Add0~35\ $ (GND)))
-- \deb1|Add0~37\ = CARRY((\deb1|s_debounceCnt\(18)) # (!\deb1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(18),
	datad => VCC,
	cin => \deb1|Add0~35\,
	combout => \deb1|Add0~36_combout\,
	cout => \deb1|Add0~37\);

-- Location: LCCOMB_X110_Y37_N28
\deb1|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt[18]~17_combout\ = (\deb1|s_debounceCnt[22]~0_combout\ & (\deb1|s_debounceCnt[22]~3_combout\ & ((\deb1|Add0~36_combout\) # (!\deb1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt[22]~0_combout\,
	datab => \deb1|s_debounceCnt[22]~3_combout\,
	datac => \deb1|s_previousIn~q\,
	datad => \deb1|Add0~36_combout\,
	combout => \deb1|s_debounceCnt[18]~17_combout\);

-- Location: FF_X110_Y37_N29
\deb1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(18));

-- Location: LCCOMB_X112_Y37_N16
\deb1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~38_combout\ = (\deb1|s_debounceCnt\(19) & (\deb1|Add0~37\ & VCC)) # (!\deb1|s_debounceCnt\(19) & (!\deb1|Add0~37\))
-- \deb1|Add0~39\ = CARRY((!\deb1|s_debounceCnt\(19) & !\deb1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(19),
	datad => VCC,
	cin => \deb1|Add0~37\,
	combout => \deb1|Add0~38_combout\,
	cout => \deb1|Add0~39\);

-- Location: LCCOMB_X112_Y37_N30
\deb1|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt[19]~18_combout\ = (\deb1|s_debounceCnt[22]~3_combout\ & (\deb1|s_debounceCnt[22]~0_combout\ & ((\deb1|Add0~38_combout\) # (!\deb1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_previousIn~q\,
	datab => \deb1|s_debounceCnt[22]~3_combout\,
	datac => \deb1|s_debounceCnt[22]~0_combout\,
	datad => \deb1|Add0~38_combout\,
	combout => \deb1|s_debounceCnt[19]~18_combout\);

-- Location: FF_X112_Y37_N31
\deb1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(19));

-- Location: LCCOMB_X110_Y37_N8
\deb1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|LessThan0~4_combout\ = (\deb1|s_debounceCnt\(14) & (\deb1|s_debounceCnt\(8) & (\deb1|s_debounceCnt\(19) & \deb1|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(14),
	datab => \deb1|s_debounceCnt\(8),
	datac => \deb1|s_debounceCnt\(19),
	datad => \deb1|s_debounceCnt\(18),
	combout => \deb1|LessThan0~4_combout\);

-- Location: LCCOMB_X110_Y37_N18
\deb1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|LessThan0~5_combout\ = (\deb1|s_debounceCnt\(9) & (\deb1|LessThan0~4_combout\ & \deb1|s_debounceCnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(9),
	datac => \deb1|LessThan0~4_combout\,
	datad => \deb1|s_debounceCnt\(11),
	combout => \deb1|LessThan0~5_combout\);

-- Location: LCCOMB_X110_Y37_N2
\deb1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|LessThan0~1_combout\ = (\deb1|s_debounceCnt\(12)) # ((\deb1|s_debounceCnt\(13)) # ((\deb1|s_debounceCnt\(11) & \deb1|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(11),
	datab => \deb1|s_debounceCnt\(12),
	datac => \deb1|s_debounceCnt\(13),
	datad => \deb1|s_debounceCnt\(10),
	combout => \deb1|LessThan0~1_combout\);

-- Location: LCCOMB_X110_Y37_N20
\deb1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|LessThan0~2_combout\ = (\deb1|s_debounceCnt\(16)) # ((\deb1|s_debounceCnt\(15)) # ((\deb1|s_debounceCnt\(14) & \deb1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(14),
	datab => \deb1|s_debounceCnt\(16),
	datac => \deb1|s_debounceCnt\(15),
	datad => \deb1|LessThan0~1_combout\,
	combout => \deb1|LessThan0~2_combout\);

-- Location: LCCOMB_X110_Y37_N30
\deb1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|LessThan0~3_combout\ = (\deb1|s_debounceCnt\(19) & (\deb1|s_debounceCnt\(18) & ((\deb1|s_debounceCnt\(17)) # (\deb1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(19),
	datab => \deb1|s_debounceCnt\(18),
	datac => \deb1|s_debounceCnt\(17),
	datad => \deb1|LessThan0~2_combout\,
	combout => \deb1|LessThan0~3_combout\);

-- Location: LCCOMB_X111_Y37_N22
\deb1|s_cleanOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_cleanOut~5_combout\ = (!\deb1|s_debounceCnt\(3) & (!\deb1|s_debounceCnt\(4) & (!\deb1|s_debounceCnt\(1) & !\deb1|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(3),
	datab => \deb1|s_debounceCnt\(4),
	datac => \deb1|s_debounceCnt\(1),
	datad => \deb1|s_debounceCnt\(2),
	combout => \deb1|s_cleanOut~5_combout\);

-- Location: LCCOMB_X110_Y37_N12
\deb1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|LessThan0~6_combout\ = (\deb1|s_debounceCnt\(6) & ((\deb1|s_debounceCnt\(0)) # ((\deb1|s_debounceCnt\(5)) # (!\deb1|s_cleanOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(6),
	datab => \deb1|s_debounceCnt\(0),
	datac => \deb1|s_debounceCnt\(5),
	datad => \deb1|s_cleanOut~5_combout\,
	combout => \deb1|LessThan0~6_combout\);

-- Location: LCCOMB_X110_Y37_N10
\deb1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|LessThan0~7_combout\ = (\deb1|LessThan0~3_combout\) # ((\deb1|LessThan0~5_combout\ & ((\deb1|s_debounceCnt\(7)) # (\deb1|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(7),
	datab => \deb1|LessThan0~5_combout\,
	datac => \deb1|LessThan0~3_combout\,
	datad => \deb1|LessThan0~6_combout\,
	combout => \deb1|LessThan0~7_combout\);

-- Location: LCCOMB_X111_Y37_N30
\deb1|s_cleanOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_cleanOut~2_combout\ = (!\deb1|s_debounceCnt\(7) & (!\deb1|s_debounceCnt\(8) & (!\deb1|s_debounceCnt\(10) & !\deb1|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(7),
	datab => \deb1|s_debounceCnt\(8),
	datac => \deb1|s_debounceCnt\(10),
	datad => \deb1|s_debounceCnt\(9),
	combout => \deb1|s_cleanOut~2_combout\);

-- Location: LCCOMB_X112_Y37_N18
\deb1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~40_combout\ = (\deb1|s_debounceCnt\(20) & ((GND) # (!\deb1|Add0~39\))) # (!\deb1|s_debounceCnt\(20) & (\deb1|Add0~39\ $ (GND)))
-- \deb1|Add0~41\ = CARRY((\deb1|s_debounceCnt\(20)) # (!\deb1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(20),
	datad => VCC,
	cin => \deb1|Add0~39\,
	combout => \deb1|Add0~40_combout\,
	cout => \deb1|Add0~41\);

-- Location: LCCOMB_X112_Y37_N20
\deb1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~42_combout\ = (\deb1|s_debounceCnt\(21) & (\deb1|Add0~41\ & VCC)) # (!\deb1|s_debounceCnt\(21) & (!\deb1|Add0~41\))
-- \deb1|Add0~43\ = CARRY((!\deb1|s_debounceCnt\(21) & !\deb1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_debounceCnt\(21),
	datad => VCC,
	cin => \deb1|Add0~41\,
	combout => \deb1|Add0~42_combout\,
	cout => \deb1|Add0~43\);

-- Location: LCCOMB_X112_Y37_N24
\deb1|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt[21]~10_combout\ = (\deb1|s_previousIn~q\ & (\deb1|s_debounceCnt[22]~3_combout\ & (\deb1|s_debounceCnt[22]~0_combout\ & \deb1|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_previousIn~q\,
	datab => \deb1|s_debounceCnt[22]~3_combout\,
	datac => \deb1|s_debounceCnt[22]~0_combout\,
	datad => \deb1|Add0~42_combout\,
	combout => \deb1|s_debounceCnt[21]~10_combout\);

-- Location: FF_X112_Y37_N25
\deb1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(21));

-- Location: LCCOMB_X111_Y37_N20
\deb1|s_cleanOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_cleanOut~1_combout\ = (!\deb1|s_debounceCnt\(21) & (!\deb1|s_debounceCnt\(13) & (!\deb1|s_debounceCnt\(12) & !\deb1|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(21),
	datab => \deb1|s_debounceCnt\(13),
	datac => \deb1|s_debounceCnt\(12),
	datad => \deb1|s_debounceCnt\(20),
	combout => \deb1|s_cleanOut~1_combout\);

-- Location: LCCOMB_X110_Y37_N6
\deb1|s_cleanOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_cleanOut~3_combout\ = (!\deb1|s_debounceCnt\(14) & (!\deb1|s_debounceCnt\(18) & (!\deb1|s_debounceCnt\(19) & !\deb1|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(14),
	datab => \deb1|s_debounceCnt\(18),
	datac => \deb1|s_debounceCnt\(19),
	datad => \deb1|s_debounceCnt\(11),
	combout => \deb1|s_cleanOut~3_combout\);

-- Location: LCCOMB_X111_Y37_N6
\deb1|s_cleanOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_cleanOut~0_combout\ = (!\deb1|s_debounceCnt\(17) & (!\deb1|s_debounceCnt\(16) & (!\deb1|s_debounceCnt\(6) & !\deb1|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(17),
	datab => \deb1|s_debounceCnt\(16),
	datac => \deb1|s_debounceCnt\(6),
	datad => \deb1|s_debounceCnt\(15),
	combout => \deb1|s_cleanOut~0_combout\);

-- Location: LCCOMB_X111_Y37_N12
\deb1|s_cleanOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_cleanOut~4_combout\ = (\deb1|s_cleanOut~2_combout\ & (\deb1|s_cleanOut~1_combout\ & (\deb1|s_cleanOut~3_combout\ & \deb1|s_cleanOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_cleanOut~2_combout\,
	datab => \deb1|s_cleanOut~1_combout\,
	datac => \deb1|s_cleanOut~3_combout\,
	datad => \deb1|s_cleanOut~0_combout\,
	combout => \deb1|s_cleanOut~4_combout\);

-- Location: LCCOMB_X111_Y37_N16
\deb1|s_debounceCnt[22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt[22]~2_combout\ = (\deb1|s_debounceCnt\(5)) # ((\deb1|s_debounceCnt\(0)) # ((!\deb1|s_cleanOut~4_combout\) # (!\deb1|s_cleanOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(5),
	datab => \deb1|s_debounceCnt\(0),
	datac => \deb1|s_cleanOut~5_combout\,
	datad => \deb1|s_cleanOut~4_combout\,
	combout => \deb1|s_debounceCnt[22]~2_combout\);

-- Location: LCCOMB_X113_Y37_N8
\deb1|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt[22]~24_combout\ = (\deb1|s_debounceCnt\(22) & (\deb1|LessThan0~0_combout\ & (!\deb1|LessThan0~7_combout\))) # (!\deb1|s_debounceCnt\(22) & (((\deb1|s_debounceCnt[22]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|LessThan0~0_combout\,
	datab => \deb1|s_debounceCnt\(22),
	datac => \deb1|LessThan0~7_combout\,
	datad => \deb1|s_debounceCnt[22]~2_combout\,
	combout => \deb1|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X110_Y37_N22
\deb1|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt[22]~25_combout\ = (\deb1|s_previousIn~q\ & (\deb1|s_dirtyIn~q\)) # (!\deb1|s_previousIn~q\ & ((\deb1|s_debounceCnt[22]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb1|s_dirtyIn~q\,
	datac => \deb1|s_previousIn~q\,
	datad => \deb1|s_debounceCnt[22]~0_combout\,
	combout => \deb1|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X112_Y37_N22
\deb1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|Add0~44_combout\ = \deb1|Add0~43\ $ (\deb1|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \deb1|s_debounceCnt\(22),
	cin => \deb1|Add0~43\,
	combout => \deb1|Add0~44_combout\);

-- Location: LCCOMB_X113_Y37_N24
\deb1|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt[22]~26_combout\ = (\deb1|s_debounceCnt[22]~25_combout\ & (((\deb1|s_debounceCnt[22]~24_combout\ & \deb1|Add0~44_combout\)) # (!\deb1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_previousIn~q\,
	datab => \deb1|s_debounceCnt[22]~24_combout\,
	datac => \deb1|s_debounceCnt[22]~25_combout\,
	datad => \deb1|Add0~44_combout\,
	combout => \deb1|s_debounceCnt[22]~26_combout\);

-- Location: FF_X113_Y37_N25
\deb1|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(22));

-- Location: LCCOMB_X111_Y37_N18
\deb1|s_debounceCnt[22]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt[22]~3_combout\ = (((\deb1|s_debounceCnt\(22)) # (\deb1|s_debounceCnt[22]~2_combout\)) # (!\deb1|s_previousIn~q\)) # (!\deb1|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_dirtyIn~q\,
	datab => \deb1|s_previousIn~q\,
	datac => \deb1|s_debounceCnt\(22),
	datad => \deb1|s_debounceCnt[22]~2_combout\,
	combout => \deb1|s_debounceCnt[22]~3_combout\);

-- Location: LCCOMB_X112_Y37_N26
\deb1|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt[20]~9_combout\ = (\deb1|s_previousIn~q\ & (\deb1|s_debounceCnt[22]~3_combout\ & (\deb1|s_debounceCnt[22]~0_combout\ & \deb1|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_previousIn~q\,
	datab => \deb1|s_debounceCnt[22]~3_combout\,
	datac => \deb1|s_debounceCnt[22]~0_combout\,
	datad => \deb1|Add0~40_combout\,
	combout => \deb1|s_debounceCnt[20]~9_combout\);

-- Location: FF_X112_Y37_N27
\deb1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(20));

-- Location: LCCOMB_X113_Y37_N26
\deb1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|LessThan0~0_combout\ = (!\deb1|s_debounceCnt\(20) & !\deb1|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \deb1|s_debounceCnt\(20),
	datad => \deb1|s_debounceCnt\(21),
	combout => \deb1|LessThan0~0_combout\);

-- Location: LCCOMB_X110_Y37_N0
\deb1|s_debounceCnt[22]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt[22]~0_combout\ = (\deb1|s_dirtyIn~q\ & (((\deb1|LessThan0~0_combout\ & !\deb1|LessThan0~7_combout\)) # (!\deb1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|LessThan0~0_combout\,
	datab => \deb1|s_dirtyIn~q\,
	datac => \deb1|s_debounceCnt\(22),
	datad => \deb1|LessThan0~7_combout\,
	combout => \deb1|s_debounceCnt[22]~0_combout\);

-- Location: LCCOMB_X112_Y38_N0
\deb1|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_debounceCnt~27_combout\ = (\deb1|s_previousIn~q\ & (\deb1|s_debounceCnt[22]~0_combout\ & \deb1|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_previousIn~q\,
	datac => \deb1|s_debounceCnt[22]~0_combout\,
	datad => \deb1|Add0~10_combout\,
	combout => \deb1|s_debounceCnt~27_combout\);

-- Location: FF_X112_Y38_N1
\deb1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_debounceCnt~27_combout\,
	ena => \deb1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_debounceCnt\(5));

-- Location: LCCOMB_X110_Y37_N4
\deb1|s_cleanOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_cleanOut~6_combout\ = (!\deb1|s_debounceCnt\(22) & (\deb1|s_dirtyIn~q\ & (\deb1|s_previousIn~q\ & \deb1|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(22),
	datab => \deb1|s_dirtyIn~q\,
	datac => \deb1|s_previousIn~q\,
	datad => \deb1|s_debounceCnt\(0),
	combout => \deb1|s_cleanOut~6_combout\);

-- Location: LCCOMB_X110_Y37_N24
\deb1|s_cleanOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb1|s_cleanOut~7_combout\ = (!\deb1|s_debounceCnt\(5) & (\deb1|s_cleanOut~4_combout\ & (\deb1|s_cleanOut~6_combout\ & \deb1|s_cleanOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb1|s_debounceCnt\(5),
	datab => \deb1|s_cleanOut~4_combout\,
	datac => \deb1|s_cleanOut~6_combout\,
	datad => \deb1|s_cleanOut~5_combout\,
	combout => \deb1|s_cleanOut~7_combout\);

-- Location: FF_X110_Y37_N25
\deb1|s_cleanOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb1|s_cleanOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb1|s_cleanOut~q\);

-- Location: LCCOMB_X109_Y46_N4
\counter1|s_count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1|s_count[3]~1_combout\ = (\deb2|s_cleanOut~q\) # (\deb1|s_cleanOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \deb2|s_cleanOut~q\,
	datad => \deb1|s_cleanOut~q\,
	combout => \counter1|s_count[3]~1_combout\);

-- Location: FF_X109_Y46_N21
\counter1|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter1|s_count~0_combout\,
	ena => \counter1|s_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1|s_count\(0));

-- Location: LCCOMB_X113_Y46_N10
\DisplayCntrl|s_currentState.INIT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayCntrl|s_currentState.INIT~0_combout\ = !\deb2|s_cleanOut~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \deb2|s_cleanOut~q\,
	combout => \DisplayCntrl|s_currentState.INIT~0_combout\);

-- Location: FF_X113_Y46_N11
\DisplayCntrl|s_currentState.INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DisplayCntrl|s_currentState.INIT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayCntrl|s_currentState.INIT~q\);

-- Location: LCCOMB_X113_Y46_N6
\DisplayCntrl|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayCntrl|s_currentState~12_combout\ = (!\deb2|s_cleanOut~q\ & ((\DisplayCntrl|s_currentState.E2~q\) # (!\DisplayCntrl|s_currentState.INIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb2|s_cleanOut~q\,
	datac => \DisplayCntrl|s_currentState.E2~q\,
	datad => \DisplayCntrl|s_currentState.INIT~q\,
	combout => \DisplayCntrl|s_currentState~12_combout\);

-- Location: FF_X113_Y46_N7
\DisplayCntrl|s_currentState.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DisplayCntrl|s_currentState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayCntrl|s_currentState.E1~q\);

-- Location: LCCOMB_X113_Y46_N22
\DisplayCntrl|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayCntrl|s_currentState~11_combout\ = (!\deb2|s_cleanOut~q\ & \DisplayCntrl|s_currentState.E1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \deb2|s_cleanOut~q\,
	datad => \DisplayCntrl|s_currentState.E1~q\,
	combout => \DisplayCntrl|s_currentState~11_combout\);

-- Location: FF_X113_Y46_N23
\DisplayCntrl|s_currentState.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DisplayCntrl|s_currentState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayCntrl|s_currentState.E2~q\);

-- Location: LCCOMB_X112_Y46_N24
\Mux|dataOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux|dataOut[0]~0_combout\ = (\DisplayCntrl|s_currentState.E2~q\ & (\counter2|s_count\(0))) # (!\DisplayCntrl|s_currentState.E2~q\ & ((\counter1|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter2|s_count\(0),
	datac => \counter1|s_count\(0),
	datad => \DisplayCntrl|s_currentState.E2~q\,
	combout => \Mux|dataOut[0]~0_combout\);

-- Location: LCCOMB_X109_Y46_N6
\counter1|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1|s_count~3_combout\ = (\counter1|s_count[3]~2_combout\ & (!\deb2|s_cleanOut~q\ & (\counter1|s_count\(1) $ (\counter1|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|s_count[3]~2_combout\,
	datab => \deb2|s_cleanOut~q\,
	datac => \counter1|s_count\(1),
	datad => \counter1|s_count\(0),
	combout => \counter1|s_count~3_combout\);

-- Location: FF_X109_Y46_N7
\counter1|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter1|s_count~3_combout\,
	ena => \counter1|s_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1|s_count\(1));

-- Location: LCCOMB_X109_Y46_N12
\counter1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1|Add0~0_combout\ = \counter1|s_count\(2) $ (((\counter1|s_count\(1) & \counter1|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|s_count\(1),
	datab => \counter1|s_count\(0),
	datad => \counter1|s_count\(2),
	combout => \counter1|Add0~0_combout\);

-- Location: LCCOMB_X109_Y46_N16
\counter1|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1|s_count~4_combout\ = (\counter1|Add0~0_combout\ & (!\deb2|s_cleanOut~q\ & \counter1|s_count[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|Add0~0_combout\,
	datab => \deb2|s_cleanOut~q\,
	datac => \counter1|s_count[3]~2_combout\,
	combout => \counter1|s_count~4_combout\);

-- Location: FF_X109_Y46_N17
\counter1|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter1|s_count~4_combout\,
	ena => \counter1|s_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1|s_count\(2));

-- Location: LCCOMB_X109_Y46_N22
\counter1|s_count[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1|s_count[3]~2_combout\ = ((\counter1|s_count\(2)) # ((\counter1|s_count\(1)) # (!\counter1|s_count\(0)))) # (!\counter1|s_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|s_count\(3),
	datab => \counter1|s_count\(2),
	datac => \counter1|s_count\(1),
	datad => \counter1|s_count\(0),
	combout => \counter1|s_count[3]~2_combout\);

-- Location: LCCOMB_X109_Y46_N18
\counter1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1|Add0~1_combout\ = \counter1|s_count\(3) $ (((\counter1|s_count\(2) & (\counter1|s_count\(0) & \counter1|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|s_count\(3),
	datab => \counter1|s_count\(2),
	datac => \counter1|s_count\(0),
	datad => \counter1|s_count\(1),
	combout => \counter1|Add0~1_combout\);

-- Location: LCCOMB_X109_Y46_N10
\counter1|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1|s_count~5_combout\ = (\counter1|s_count[3]~2_combout\ & (\counter1|Add0~1_combout\ & !\deb2|s_cleanOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|s_count[3]~2_combout\,
	datab => \counter1|Add0~1_combout\,
	datac => \deb2|s_cleanOut~q\,
	combout => \counter1|s_count~5_combout\);

-- Location: FF_X109_Y46_N11
\counter1|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter1|s_count~5_combout\,
	ena => \counter1|s_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1|s_count\(3));

-- Location: LCCOMB_X114_Y46_N28
\Mux|dataOut[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux|dataOut[3]~3_combout\ = (\DisplayCntrl|s_currentState.E2~q\ & (\counter2|s_count\(3))) # (!\DisplayCntrl|s_currentState.E2~q\ & ((\counter1|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|s_count\(3),
	datab => \counter1|s_count\(3),
	datad => \DisplayCntrl|s_currentState.E2~q\,
	combout => \Mux|dataOut[3]~3_combout\);

-- Location: LCCOMB_X113_Y46_N4
\Mux|dataOut[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux|dataOut[2]~2_combout\ = (\DisplayCntrl|s_currentState.E2~q\ & (\counter2|s_count\(2))) # (!\DisplayCntrl|s_currentState.E2~q\ & ((\counter1|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter2|s_count\(2),
	datac => \DisplayCntrl|s_currentState.E2~q\,
	datad => \counter1|s_count\(2),
	combout => \Mux|dataOut[2]~2_combout\);

-- Location: LCCOMB_X112_Y46_N0
\Mux|dataOut[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux|dataOut[1]~1_combout\ = (\DisplayCntrl|s_currentState.E2~q\ & ((\counter2|s_count\(1)))) # (!\DisplayCntrl|s_currentState.E2~q\ & (\counter1|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|s_count\(1),
	datab => \counter2|s_count\(1),
	datad => \DisplayCntrl|s_currentState.E2~q\,
	combout => \Mux|dataOut[1]~1_combout\);

-- Location: LCCOMB_X114_Y46_N26
\segDecoder|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segDecoder|decOut_n[0]~0_combout\ = (\Mux|dataOut[3]~3_combout\ & (\Mux|dataOut[0]~0_combout\ & (\Mux|dataOut[2]~2_combout\ & !\Mux|dataOut[1]~1_combout\))) # (!\Mux|dataOut[3]~3_combout\ & (((!\Mux|dataOut[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|dataOut[0]~0_combout\,
	datab => \Mux|dataOut[3]~3_combout\,
	datac => \Mux|dataOut[2]~2_combout\,
	datad => \Mux|dataOut[1]~1_combout\,
	combout => \segDecoder|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X112_Y46_N16
\reg1|dataOut~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut~20_combout\ = (!\Mux|dataOut[1]~1_combout\ & ((\DisplayCntrl|s_currentState.E2~q\ & (\counter2|s_count\(0))) # (!\DisplayCntrl|s_currentState.E2~q\ & ((\counter1|s_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|s_count\(0),
	datab => \DisplayCntrl|s_currentState.E2~q\,
	datac => \counter1|s_count\(0),
	datad => \Mux|dataOut[1]~1_combout\,
	combout => \reg1|dataOut~20_combout\);

-- Location: LCCOMB_X114_Y46_N24
\reg1|dataOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut~6_combout\ = (\Mux|dataOut[0]~0_combout\ & (\Mux|dataOut[3]~3_combout\ & (!\Mux|dataOut[2]~2_combout\ & \Mux|dataOut[1]~1_combout\))) # (!\Mux|dataOut[0]~0_combout\ & (!\Mux|dataOut[3]~3_combout\ & (\Mux|dataOut[2]~2_combout\ & 
-- !\Mux|dataOut[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|dataOut[0]~0_combout\,
	datab => \Mux|dataOut[3]~3_combout\,
	datac => \Mux|dataOut[2]~2_combout\,
	datad => \Mux|dataOut[1]~1_combout\,
	combout => \reg1|dataOut~6_combout\);

-- Location: LCCOMB_X114_Y46_N14
\reg1|dataOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut~7_combout\ = (!\deb2|s_cleanOut~q\ & ((\reg1|dataOut~6_combout\) # ((\segDecoder|decOut_n[0]~0_combout\ & \reg1|dataOut~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segDecoder|decOut_n[0]~0_combout\,
	datab => \deb2|s_cleanOut~q\,
	datac => \reg1|dataOut~20_combout\,
	datad => \reg1|dataOut~6_combout\,
	combout => \reg1|dataOut~7_combout\);

-- Location: FF_X114_Y46_N29
\reg1|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \reg1|dataOut~7_combout\,
	sload => VCC,
	ena => \DisplayCntrl|s_currentState.E1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|dataOut\(0));

-- Location: LCCOMB_X113_Y46_N24
\reg1|dataOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut~8_combout\ = (\Mux|dataOut[1]~1_combout\ & ((\Mux|dataOut[0]~0_combout\ & ((\Mux|dataOut[3]~3_combout\))) # (!\Mux|dataOut[0]~0_combout\ & (\Mux|dataOut[2]~2_combout\)))) # (!\Mux|dataOut[1]~1_combout\ & (\Mux|dataOut[2]~2_combout\ & 
-- (\Mux|dataOut[0]~0_combout\ $ (\Mux|dataOut[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|dataOut[1]~1_combout\,
	datab => \Mux|dataOut[0]~0_combout\,
	datac => \Mux|dataOut[2]~2_combout\,
	datad => \Mux|dataOut[3]~3_combout\,
	combout => \reg1|dataOut~8_combout\);

-- Location: LCCOMB_X114_Y46_N8
\reg1|dataOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut~9_combout\ = (!\deb2|s_cleanOut~q\ & \reg1|dataOut~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \deb2|s_cleanOut~q\,
	datad => \reg1|dataOut~8_combout\,
	combout => \reg1|dataOut~9_combout\);

-- Location: LCCOMB_X114_Y46_N18
\reg1|dataOut[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut[1]~feeder_combout\ = \reg1|dataOut~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|dataOut~9_combout\,
	combout => \reg1|dataOut[1]~feeder_combout\);

-- Location: FF_X114_Y46_N19
\reg1|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg1|dataOut[1]~feeder_combout\,
	ena => \DisplayCntrl|s_currentState.E1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|dataOut\(1));

-- Location: LCCOMB_X114_Y46_N6
\reg1|dataOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut~10_combout\ = (\Mux|dataOut[3]~3_combout\ & (((\Mux|dataOut[2]~2_combout\)))) # (!\Mux|dataOut[3]~3_combout\ & (!\Mux|dataOut[0]~0_combout\ & (!\Mux|dataOut[2]~2_combout\ & \Mux|dataOut[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|dataOut[0]~0_combout\,
	datab => \Mux|dataOut[3]~3_combout\,
	datac => \Mux|dataOut[2]~2_combout\,
	datad => \Mux|dataOut[1]~1_combout\,
	combout => \reg1|dataOut~10_combout\);

-- Location: LCCOMB_X114_Y46_N2
\reg1|dataOut~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut~11_combout\ = (!\deb2|s_cleanOut~q\ & (\reg1|dataOut~10_combout\ & ((!\Mux|dataOut[2]~2_combout\) # (!\reg1|dataOut~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|dataOut~20_combout\,
	datab => \deb2|s_cleanOut~q\,
	datac => \Mux|dataOut[2]~2_combout\,
	datad => \reg1|dataOut~10_combout\,
	combout => \reg1|dataOut~11_combout\);

-- Location: LCCOMB_X113_Y46_N20
\reg1|dataOut[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut[2]~feeder_combout\ = \reg1|dataOut~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1|dataOut~11_combout\,
	combout => \reg1|dataOut[2]~feeder_combout\);

-- Location: FF_X113_Y46_N21
\reg1|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg1|dataOut[2]~feeder_combout\,
	ena => \DisplayCntrl|s_currentState.E1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|dataOut\(2));

-- Location: LCCOMB_X113_Y46_N26
\reg1|dataOut~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut~14_combout\ = (\Mux|dataOut[1]~1_combout\ & (\Mux|dataOut[0]~0_combout\ & (\Mux|dataOut[2]~2_combout\ & \Mux|dataOut[3]~3_combout\))) # (!\Mux|dataOut[1]~1_combout\ & (!\Mux|dataOut[0]~0_combout\ & (!\Mux|dataOut[2]~2_combout\ & 
-- !\Mux|dataOut[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|dataOut[1]~1_combout\,
	datab => \Mux|dataOut[0]~0_combout\,
	datac => \Mux|dataOut[2]~2_combout\,
	datad => \Mux|dataOut[3]~3_combout\,
	combout => \reg1|dataOut~14_combout\);

-- Location: LCCOMB_X114_Y46_N30
\reg1|dataOut~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut~13_combout\ = (\Mux|dataOut[3]~3_combout\ & (!\Mux|dataOut[0]~0_combout\ & (!\Mux|dataOut[2]~2_combout\ & \Mux|dataOut[1]~1_combout\))) # (!\Mux|dataOut[3]~3_combout\ & (\Mux|dataOut[1]~1_combout\ $ (((!\Mux|dataOut[2]~2_combout\) # 
-- (!\Mux|dataOut[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|dataOut[0]~0_combout\,
	datab => \Mux|dataOut[3]~3_combout\,
	datac => \Mux|dataOut[2]~2_combout\,
	datad => \Mux|dataOut[1]~1_combout\,
	combout => \reg1|dataOut~13_combout\);

-- Location: LCCOMB_X114_Y46_N20
\reg1|dataOut~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut~12_combout\ = (\Mux|dataOut[0]~0_combout\ & (\Mux|dataOut[3]~3_combout\ & (\Mux|dataOut[2]~2_combout\ & \Mux|dataOut[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|dataOut[0]~0_combout\,
	datab => \Mux|dataOut[3]~3_combout\,
	datac => \Mux|dataOut[2]~2_combout\,
	datad => \Mux|dataOut[1]~1_combout\,
	combout => \reg1|dataOut~12_combout\);

-- Location: LCCOMB_X114_Y46_N16
\reg1|dataOut~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut~15_combout\ = (!\deb2|s_cleanOut~q\ & ((\reg1|dataOut~14_combout\ & ((\reg1|dataOut~12_combout\))) # (!\reg1|dataOut~14_combout\ & (\reg1|dataOut~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|dataOut~14_combout\,
	datab => \deb2|s_cleanOut~q\,
	datac => \reg1|dataOut~13_combout\,
	datad => \reg1|dataOut~12_combout\,
	combout => \reg1|dataOut~15_combout\);

-- Location: LCCOMB_X114_Y46_N0
\reg1|dataOut[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut[3]~feeder_combout\ = \reg1|dataOut~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1|dataOut~15_combout\,
	combout => \reg1|dataOut[3]~feeder_combout\);

-- Location: FF_X114_Y46_N1
\reg1|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg1|dataOut[3]~feeder_combout\,
	ena => \DisplayCntrl|s_currentState.E1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|dataOut\(3));

-- Location: LCCOMB_X112_Y46_N8
\segDecoder|decOut_n[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \segDecoder|decOut_n[4]~6_combout\ = (\DisplayCntrl|s_currentState.E2~q\ & (!\counter2|s_count\(3) & ((\counter2|s_count\(2))))) # (!\DisplayCntrl|s_currentState.E2~q\ & (((\counter1|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|s_count\(3),
	datab => \counter1|s_count\(2),
	datac => \counter2|s_count\(2),
	datad => \DisplayCntrl|s_currentState.E2~q\,
	combout => \segDecoder|decOut_n[4]~6_combout\);

-- Location: LCCOMB_X112_Y46_N10
\segDecoder|decOut_n[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \segDecoder|decOut_n[4]~7_combout\ = (!\counter1|s_count\(3) & (!\Mux|dataOut[0]~0_combout\ & (\segDecoder|decOut_n[4]~6_combout\ & !\Mux|dataOut[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|s_count\(3),
	datab => \Mux|dataOut[0]~0_combout\,
	datac => \segDecoder|decOut_n[4]~6_combout\,
	datad => \Mux|dataOut[1]~1_combout\,
	combout => \segDecoder|decOut_n[4]~7_combout\);

-- Location: LCCOMB_X112_Y46_N4
\segDecoder|decOut_n[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \segDecoder|decOut_n[4]~8_combout\ = (\counter2|s_count\(0)) # ((!\counter2|s_count\(1) & \counter2|s_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter2|s_count\(1),
	datac => \counter2|s_count\(2),
	datad => \counter2|s_count\(0),
	combout => \segDecoder|decOut_n[4]~8_combout\);

-- Location: LCCOMB_X112_Y46_N22
\segDecoder|decOut_n[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \segDecoder|decOut_n[4]~9_combout\ = (!\counter2|s_count\(3) & (\segDecoder|decOut_n[4]~8_combout\ & (\counter1|s_count\(3) & \DisplayCntrl|s_currentState.E2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|s_count\(3),
	datab => \segDecoder|decOut_n[4]~8_combout\,
	datac => \counter1|s_count\(3),
	datad => \DisplayCntrl|s_currentState.E2~q\,
	combout => \segDecoder|decOut_n[4]~9_combout\);

-- Location: LCCOMB_X112_Y46_N20
\segDecoder|decOut_n[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \segDecoder|decOut_n[4]~4_combout\ = (\Mux|dataOut[1]~1_combout\) # ((\DisplayCntrl|s_currentState.E2~q\ & ((\counter2|s_count\(2)))) # (!\DisplayCntrl|s_currentState.E2~q\ & (\counter1|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|s_count\(2),
	datab => \DisplayCntrl|s_currentState.E2~q\,
	datac => \counter2|s_count\(2),
	datad => \Mux|dataOut[1]~1_combout\,
	combout => \segDecoder|decOut_n[4]~4_combout\);

-- Location: LCCOMB_X112_Y46_N26
\segDecoder|decOut_n[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \segDecoder|decOut_n[4]~3_combout\ = (\DisplayCntrl|s_currentState.E2~q\ & (\counter2|s_count\(3) & (\counter2|s_count\(0)))) # (!\DisplayCntrl|s_currentState.E2~q\ & (((\counter1|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|s_count\(3),
	datab => \counter2|s_count\(0),
	datac => \counter1|s_count\(0),
	datad => \DisplayCntrl|s_currentState.E2~q\,
	combout => \segDecoder|decOut_n[4]~3_combout\);

-- Location: LCCOMB_X112_Y46_N2
\segDecoder|decOut_n[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segDecoder|decOut_n[4]~1_combout\ = (((!\counter2|s_count\(1) & !\counter2|s_count\(2))) # (!\DisplayCntrl|s_currentState.E2~q\)) # (!\counter2|s_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|s_count\(3),
	datab => \counter2|s_count\(1),
	datac => \counter2|s_count\(2),
	datad => \DisplayCntrl|s_currentState.E2~q\,
	combout => \segDecoder|decOut_n[4]~1_combout\);

-- Location: LCCOMB_X112_Y46_N28
\segDecoder|decOut_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segDecoder|decOut_n[4]~2_combout\ = (\segDecoder|decOut_n[4]~1_combout\ & (!\counter1|s_count\(3) & \Mux|dataOut[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segDecoder|decOut_n[4]~1_combout\,
	datac => \counter1|s_count\(3),
	datad => \Mux|dataOut[0]~0_combout\,
	combout => \segDecoder|decOut_n[4]~2_combout\);

-- Location: LCCOMB_X112_Y46_N18
\segDecoder|decOut_n[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \segDecoder|decOut_n[4]~5_combout\ = (\segDecoder|decOut_n[4]~2_combout\) # ((\counter1|s_count\(3) & (!\segDecoder|decOut_n[4]~4_combout\ & \segDecoder|decOut_n[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|s_count\(3),
	datab => \segDecoder|decOut_n[4]~4_combout\,
	datac => \segDecoder|decOut_n[4]~3_combout\,
	datad => \segDecoder|decOut_n[4]~2_combout\,
	combout => \segDecoder|decOut_n[4]~5_combout\);

-- Location: LCCOMB_X112_Y46_N30
\reg1|dataOut~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut~16_combout\ = (!\deb2|s_cleanOut~q\ & ((\segDecoder|decOut_n[4]~7_combout\) # ((\segDecoder|decOut_n[4]~9_combout\) # (\segDecoder|decOut_n[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segDecoder|decOut_n[4]~7_combout\,
	datab => \deb2|s_cleanOut~q\,
	datac => \segDecoder|decOut_n[4]~9_combout\,
	datad => \segDecoder|decOut_n[4]~5_combout\,
	combout => \reg1|dataOut~16_combout\);

-- Location: FF_X112_Y46_N1
\reg1|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \reg1|dataOut~16_combout\,
	sload => VCC,
	ena => \DisplayCntrl|s_currentState.E1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|dataOut\(4));

-- Location: LCCOMB_X113_Y46_N12
\reg1|dataOut~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut~21_combout\ = (\Mux|dataOut[1]~1_combout\ & (!\Mux|dataOut[3]~3_combout\ & ((\Mux|dataOut[0]~0_combout\) # (!\Mux|dataOut[2]~2_combout\)))) # (!\Mux|dataOut[1]~1_combout\ & (\Mux|dataOut[0]~0_combout\ & (\Mux|dataOut[2]~2_combout\ $ 
-- (!\Mux|dataOut[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|dataOut[1]~1_combout\,
	datab => \Mux|dataOut[0]~0_combout\,
	datac => \Mux|dataOut[2]~2_combout\,
	datad => \Mux|dataOut[3]~3_combout\,
	combout => \reg1|dataOut~21_combout\);

-- Location: LCCOMB_X114_Y46_N22
\reg1|dataOut~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut~17_combout\ = (!\deb2|s_cleanOut~q\ & \reg1|dataOut~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \deb2|s_cleanOut~q\,
	datad => \reg1|dataOut~21_combout\,
	combout => \reg1|dataOut~17_combout\);

-- Location: LCCOMB_X114_Y46_N10
\reg1|dataOut[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut[5]~feeder_combout\ = \reg1|dataOut~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|dataOut~17_combout\,
	combout => \reg1|dataOut[5]~feeder_combout\);

-- Location: FF_X114_Y46_N11
\reg1|dataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg1|dataOut[5]~feeder_combout\,
	ena => \DisplayCntrl|s_currentState.E1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|dataOut\(5));

-- Location: LCCOMB_X113_Y46_N8
\reg1|dataOut~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut~18_combout\ = (\Mux|dataOut[0]~0_combout\ & (!\Mux|dataOut[3]~3_combout\ & (\Mux|dataOut[1]~1_combout\ $ (!\Mux|dataOut[2]~2_combout\)))) # (!\Mux|dataOut[0]~0_combout\ & (!\Mux|dataOut[1]~1_combout\ & (\Mux|dataOut[2]~2_combout\ & 
-- \Mux|dataOut[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|dataOut[1]~1_combout\,
	datab => \Mux|dataOut[0]~0_combout\,
	datac => \Mux|dataOut[2]~2_combout\,
	datad => \Mux|dataOut[3]~3_combout\,
	combout => \reg1|dataOut~18_combout\);

-- Location: LCCOMB_X114_Y46_N12
\reg1|dataOut~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut~19_combout\ = (!\deb2|s_cleanOut~q\ & ((\reg1|dataOut~18_combout\) # ((\reg1|dataOut~14_combout\ & !\reg1|dataOut~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|dataOut~18_combout\,
	datab => \deb2|s_cleanOut~q\,
	datac => \reg1|dataOut~14_combout\,
	datad => \reg1|dataOut~12_combout\,
	combout => \reg1|dataOut~19_combout\);

-- Location: LCCOMB_X114_Y46_N4
\reg1|dataOut[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|dataOut[6]~feeder_combout\ = \reg1|dataOut~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1|dataOut~19_combout\,
	combout => \reg1|dataOut[6]~feeder_combout\);

-- Location: FF_X114_Y46_N5
\reg1|dataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg1|dataOut[6]~feeder_combout\,
	ena => \DisplayCntrl|s_currentState.E1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|dataOut\(6));

-- Location: FF_X114_Y46_N15
\reg2|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg1|dataOut~7_combout\,
	ena => \DisplayCntrl|s_currentState.E2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|dataOut\(0));

-- Location: FF_X114_Y46_N9
\reg2|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg1|dataOut~9_combout\,
	ena => \DisplayCntrl|s_currentState.E2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|dataOut\(1));

-- Location: FF_X114_Y46_N3
\reg2|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg1|dataOut~11_combout\,
	ena => \DisplayCntrl|s_currentState.E2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|dataOut\(2));

-- Location: FF_X114_Y46_N17
\reg2|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg1|dataOut~15_combout\,
	ena => \DisplayCntrl|s_currentState.E2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|dataOut\(3));

-- Location: FF_X112_Y46_N31
\reg2|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg1|dataOut~16_combout\,
	ena => \DisplayCntrl|s_currentState.E2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|dataOut\(4));

-- Location: FF_X114_Y46_N23
\reg2|dataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg1|dataOut~17_combout\,
	ena => \DisplayCntrl|s_currentState.E2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|dataOut\(5));

-- Location: FF_X114_Y46_N13
\reg2|dataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg1|dataOut~19_combout\,
	ena => \DisplayCntrl|s_currentState.E2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|dataOut\(6));

-- Location: LCCOMB_X63_Y59_N6
\clkDiv|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[0]~26_combout\ = \clkDiv|s_divCounter\(0) $ (VCC)
-- \clkDiv|s_divCounter[0]~27\ = CARRY(\clkDiv|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(0),
	datad => VCC,
	combout => \clkDiv|s_divCounter[0]~26_combout\,
	cout => \clkDiv|s_divCounter[0]~27\);

-- Location: LCCOMB_X63_Y58_N20
\clkDiv|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[23]~72_combout\ = (\clkDiv|s_divCounter\(23) & (!\clkDiv|s_divCounter[22]~71\)) # (!\clkDiv|s_divCounter\(23) & ((\clkDiv|s_divCounter[22]~71\) # (GND)))
-- \clkDiv|s_divCounter[23]~73\ = CARRY((!\clkDiv|s_divCounter[22]~71\) # (!\clkDiv|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(23),
	datad => VCC,
	cin => \clkDiv|s_divCounter[22]~71\,
	combout => \clkDiv|s_divCounter[23]~72_combout\,
	cout => \clkDiv|s_divCounter[23]~73\);

-- Location: LCCOMB_X63_Y58_N22
\clkDiv|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[24]~74_combout\ = (\clkDiv|s_divCounter\(24) & (\clkDiv|s_divCounter[23]~73\ $ (GND))) # (!\clkDiv|s_divCounter\(24) & (!\clkDiv|s_divCounter[23]~73\ & VCC))
-- \clkDiv|s_divCounter[24]~75\ = CARRY((\clkDiv|s_divCounter\(24) & !\clkDiv|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(24),
	datad => VCC,
	cin => \clkDiv|s_divCounter[23]~73\,
	combout => \clkDiv|s_divCounter[24]~74_combout\,
	cout => \clkDiv|s_divCounter[24]~75\);

-- Location: FF_X63_Y58_N23
\clkDiv|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[24]~74_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(24));

-- Location: LCCOMB_X63_Y58_N24
\clkDiv|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[25]~76_combout\ = \clkDiv|s_divCounter[24]~75\ $ (\clkDiv|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clkDiv|s_divCounter\(25),
	cin => \clkDiv|s_divCounter[24]~75\,
	combout => \clkDiv|s_divCounter[25]~76_combout\);

-- Location: FF_X63_Y58_N25
\clkDiv|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[25]~76_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(25));

-- Location: LCCOMB_X63_Y58_N30
\clkDiv|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|LessThan1~0_combout\ = (\clkDiv|s_divCounter\(19) & (\clkDiv|s_divCounter\(21) & (\clkDiv|s_divCounter\(20) & \clkDiv|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(19),
	datab => \clkDiv|s_divCounter\(21),
	datac => \clkDiv|s_divCounter\(20),
	datad => \clkDiv|s_divCounter\(22),
	combout => \clkDiv|LessThan1~0_combout\);

-- Location: LCCOMB_X63_Y58_N28
\clkDiv|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|LessThan0~0_combout\ = (((!\clkDiv|s_divCounter\(18) & !\clkDiv|s_divCounter\(17))) # (!\clkDiv|s_divCounter\(23))) # (!\clkDiv|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(18),
	datab => \clkDiv|s_divCounter\(17),
	datac => \clkDiv|LessThan1~0_combout\,
	datad => \clkDiv|s_divCounter\(23),
	combout => \clkDiv|LessThan0~0_combout\);

-- Location: LCCOMB_X62_Y59_N22
\clkDiv|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|LessThan0~1_combout\ = (((!\clkDiv|s_divCounter\(14)) # (!\clkDiv|s_divCounter\(13))) # (!\clkDiv|s_divCounter\(15))) # (!\clkDiv|s_divCounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(12),
	datab => \clkDiv|s_divCounter\(15),
	datac => \clkDiv|s_divCounter\(13),
	datad => \clkDiv|s_divCounter\(14),
	combout => \clkDiv|LessThan0~1_combout\);

-- Location: LCCOMB_X63_Y59_N4
\clkDiv|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|LessThan1~4_combout\ = (!\clkDiv|s_divCounter\(8) & (!\clkDiv|s_divCounter\(7) & (!\clkDiv|s_divCounter\(10) & !\clkDiv|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(8),
	datab => \clkDiv|s_divCounter\(7),
	datac => \clkDiv|s_divCounter\(10),
	datad => \clkDiv|s_divCounter\(9),
	combout => \clkDiv|LessThan1~4_combout\);

-- Location: LCCOMB_X63_Y59_N0
\clkDiv|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|LessThan1~2_combout\ = (((!\clkDiv|s_divCounter\(3)) # (!\clkDiv|s_divCounter\(0))) # (!\clkDiv|s_divCounter\(1))) # (!\clkDiv|s_divCounter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(2),
	datab => \clkDiv|s_divCounter\(1),
	datac => \clkDiv|s_divCounter\(0),
	datad => \clkDiv|s_divCounter\(3),
	combout => \clkDiv|LessThan1~2_combout\);

-- Location: LCCOMB_X63_Y59_N2
\clkDiv|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|LessThan1~3_combout\ = ((\clkDiv|LessThan1~2_combout\) # (!\clkDiv|s_divCounter\(4))) # (!\clkDiv|s_divCounter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(5),
	datac => \clkDiv|s_divCounter\(4),
	datad => \clkDiv|LessThan1~2_combout\,
	combout => \clkDiv|LessThan1~3_combout\);

-- Location: LCCOMB_X62_Y59_N24
\clkDiv|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|LessThan0~2_combout\ = (\clkDiv|LessThan1~4_combout\ & (!\clkDiv|s_divCounter\(11) & ((\clkDiv|LessThan1~3_combout\) # (!\clkDiv|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|LessThan1~4_combout\,
	datab => \clkDiv|s_divCounter\(11),
	datac => \clkDiv|s_divCounter\(6),
	datad => \clkDiv|LessThan1~3_combout\,
	combout => \clkDiv|LessThan0~2_combout\);

-- Location: LCCOMB_X62_Y59_N10
\clkDiv|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|LessThan0~3_combout\ = (!\clkDiv|s_divCounter\(16) & (!\clkDiv|s_divCounter\(18) & ((\clkDiv|LessThan0~1_combout\) # (\clkDiv|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|LessThan0~1_combout\,
	datab => \clkDiv|s_divCounter\(16),
	datac => \clkDiv|s_divCounter\(18),
	datad => \clkDiv|LessThan0~2_combout\,
	combout => \clkDiv|LessThan0~3_combout\);

-- Location: LCCOMB_X62_Y59_N16
\clkDiv|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|LessThan0~4_combout\ = (\clkDiv|s_divCounter\(25) & ((\clkDiv|s_divCounter\(24)) # ((!\clkDiv|LessThan0~0_combout\ & !\clkDiv|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(25),
	datab => \clkDiv|s_divCounter\(24),
	datac => \clkDiv|LessThan0~0_combout\,
	datad => \clkDiv|LessThan0~3_combout\,
	combout => \clkDiv|LessThan0~4_combout\);

-- Location: FF_X63_Y59_N7
\clkDiv|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[0]~26_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(0));

-- Location: LCCOMB_X63_Y59_N8
\clkDiv|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[1]~28_combout\ = (\clkDiv|s_divCounter\(1) & (!\clkDiv|s_divCounter[0]~27\)) # (!\clkDiv|s_divCounter\(1) & ((\clkDiv|s_divCounter[0]~27\) # (GND)))
-- \clkDiv|s_divCounter[1]~29\ = CARRY((!\clkDiv|s_divCounter[0]~27\) # (!\clkDiv|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(1),
	datad => VCC,
	cin => \clkDiv|s_divCounter[0]~27\,
	combout => \clkDiv|s_divCounter[1]~28_combout\,
	cout => \clkDiv|s_divCounter[1]~29\);

-- Location: FF_X63_Y59_N9
\clkDiv|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[1]~28_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(1));

-- Location: LCCOMB_X63_Y59_N10
\clkDiv|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[2]~30_combout\ = (\clkDiv|s_divCounter\(2) & (\clkDiv|s_divCounter[1]~29\ $ (GND))) # (!\clkDiv|s_divCounter\(2) & (!\clkDiv|s_divCounter[1]~29\ & VCC))
-- \clkDiv|s_divCounter[2]~31\ = CARRY((\clkDiv|s_divCounter\(2) & !\clkDiv|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(2),
	datad => VCC,
	cin => \clkDiv|s_divCounter[1]~29\,
	combout => \clkDiv|s_divCounter[2]~30_combout\,
	cout => \clkDiv|s_divCounter[2]~31\);

-- Location: FF_X63_Y59_N11
\clkDiv|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[2]~30_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(2));

-- Location: LCCOMB_X63_Y59_N12
\clkDiv|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[3]~32_combout\ = (\clkDiv|s_divCounter\(3) & (!\clkDiv|s_divCounter[2]~31\)) # (!\clkDiv|s_divCounter\(3) & ((\clkDiv|s_divCounter[2]~31\) # (GND)))
-- \clkDiv|s_divCounter[3]~33\ = CARRY((!\clkDiv|s_divCounter[2]~31\) # (!\clkDiv|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(3),
	datad => VCC,
	cin => \clkDiv|s_divCounter[2]~31\,
	combout => \clkDiv|s_divCounter[3]~32_combout\,
	cout => \clkDiv|s_divCounter[3]~33\);

-- Location: FF_X63_Y59_N13
\clkDiv|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[3]~32_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(3));

-- Location: LCCOMB_X63_Y59_N14
\clkDiv|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[4]~34_combout\ = (\clkDiv|s_divCounter\(4) & (\clkDiv|s_divCounter[3]~33\ $ (GND))) # (!\clkDiv|s_divCounter\(4) & (!\clkDiv|s_divCounter[3]~33\ & VCC))
-- \clkDiv|s_divCounter[4]~35\ = CARRY((\clkDiv|s_divCounter\(4) & !\clkDiv|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(4),
	datad => VCC,
	cin => \clkDiv|s_divCounter[3]~33\,
	combout => \clkDiv|s_divCounter[4]~34_combout\,
	cout => \clkDiv|s_divCounter[4]~35\);

-- Location: FF_X63_Y59_N15
\clkDiv|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[4]~34_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(4));

-- Location: LCCOMB_X63_Y59_N16
\clkDiv|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[5]~36_combout\ = (\clkDiv|s_divCounter\(5) & (!\clkDiv|s_divCounter[4]~35\)) # (!\clkDiv|s_divCounter\(5) & ((\clkDiv|s_divCounter[4]~35\) # (GND)))
-- \clkDiv|s_divCounter[5]~37\ = CARRY((!\clkDiv|s_divCounter[4]~35\) # (!\clkDiv|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(5),
	datad => VCC,
	cin => \clkDiv|s_divCounter[4]~35\,
	combout => \clkDiv|s_divCounter[5]~36_combout\,
	cout => \clkDiv|s_divCounter[5]~37\);

-- Location: FF_X63_Y59_N17
\clkDiv|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[5]~36_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(5));

-- Location: LCCOMB_X63_Y59_N18
\clkDiv|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[6]~38_combout\ = (\clkDiv|s_divCounter\(6) & (\clkDiv|s_divCounter[5]~37\ $ (GND))) # (!\clkDiv|s_divCounter\(6) & (!\clkDiv|s_divCounter[5]~37\ & VCC))
-- \clkDiv|s_divCounter[6]~39\ = CARRY((\clkDiv|s_divCounter\(6) & !\clkDiv|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(6),
	datad => VCC,
	cin => \clkDiv|s_divCounter[5]~37\,
	combout => \clkDiv|s_divCounter[6]~38_combout\,
	cout => \clkDiv|s_divCounter[6]~39\);

-- Location: FF_X63_Y59_N19
\clkDiv|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[6]~38_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(6));

-- Location: LCCOMB_X63_Y59_N20
\clkDiv|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[7]~40_combout\ = (\clkDiv|s_divCounter\(7) & (!\clkDiv|s_divCounter[6]~39\)) # (!\clkDiv|s_divCounter\(7) & ((\clkDiv|s_divCounter[6]~39\) # (GND)))
-- \clkDiv|s_divCounter[7]~41\ = CARRY((!\clkDiv|s_divCounter[6]~39\) # (!\clkDiv|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(7),
	datad => VCC,
	cin => \clkDiv|s_divCounter[6]~39\,
	combout => \clkDiv|s_divCounter[7]~40_combout\,
	cout => \clkDiv|s_divCounter[7]~41\);

-- Location: FF_X63_Y59_N21
\clkDiv|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[7]~40_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(7));

-- Location: LCCOMB_X63_Y59_N22
\clkDiv|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[8]~42_combout\ = (\clkDiv|s_divCounter\(8) & (\clkDiv|s_divCounter[7]~41\ $ (GND))) # (!\clkDiv|s_divCounter\(8) & (!\clkDiv|s_divCounter[7]~41\ & VCC))
-- \clkDiv|s_divCounter[8]~43\ = CARRY((\clkDiv|s_divCounter\(8) & !\clkDiv|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(8),
	datad => VCC,
	cin => \clkDiv|s_divCounter[7]~41\,
	combout => \clkDiv|s_divCounter[8]~42_combout\,
	cout => \clkDiv|s_divCounter[8]~43\);

-- Location: FF_X63_Y59_N23
\clkDiv|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[8]~42_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(8));

-- Location: LCCOMB_X63_Y59_N24
\clkDiv|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[9]~44_combout\ = (\clkDiv|s_divCounter\(9) & (!\clkDiv|s_divCounter[8]~43\)) # (!\clkDiv|s_divCounter\(9) & ((\clkDiv|s_divCounter[8]~43\) # (GND)))
-- \clkDiv|s_divCounter[9]~45\ = CARRY((!\clkDiv|s_divCounter[8]~43\) # (!\clkDiv|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(9),
	datad => VCC,
	cin => \clkDiv|s_divCounter[8]~43\,
	combout => \clkDiv|s_divCounter[9]~44_combout\,
	cout => \clkDiv|s_divCounter[9]~45\);

-- Location: FF_X63_Y59_N25
\clkDiv|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[9]~44_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(9));

-- Location: LCCOMB_X63_Y59_N26
\clkDiv|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[10]~46_combout\ = (\clkDiv|s_divCounter\(10) & (\clkDiv|s_divCounter[9]~45\ $ (GND))) # (!\clkDiv|s_divCounter\(10) & (!\clkDiv|s_divCounter[9]~45\ & VCC))
-- \clkDiv|s_divCounter[10]~47\ = CARRY((\clkDiv|s_divCounter\(10) & !\clkDiv|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(10),
	datad => VCC,
	cin => \clkDiv|s_divCounter[9]~45\,
	combout => \clkDiv|s_divCounter[10]~46_combout\,
	cout => \clkDiv|s_divCounter[10]~47\);

-- Location: FF_X63_Y59_N27
\clkDiv|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[10]~46_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(10));

-- Location: LCCOMB_X63_Y59_N28
\clkDiv|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[11]~48_combout\ = (\clkDiv|s_divCounter\(11) & (!\clkDiv|s_divCounter[10]~47\)) # (!\clkDiv|s_divCounter\(11) & ((\clkDiv|s_divCounter[10]~47\) # (GND)))
-- \clkDiv|s_divCounter[11]~49\ = CARRY((!\clkDiv|s_divCounter[10]~47\) # (!\clkDiv|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(11),
	datad => VCC,
	cin => \clkDiv|s_divCounter[10]~47\,
	combout => \clkDiv|s_divCounter[11]~48_combout\,
	cout => \clkDiv|s_divCounter[11]~49\);

-- Location: FF_X63_Y59_N29
\clkDiv|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[11]~48_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(11));

-- Location: LCCOMB_X63_Y59_N30
\clkDiv|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[12]~50_combout\ = (\clkDiv|s_divCounter\(12) & (\clkDiv|s_divCounter[11]~49\ $ (GND))) # (!\clkDiv|s_divCounter\(12) & (!\clkDiv|s_divCounter[11]~49\ & VCC))
-- \clkDiv|s_divCounter[12]~51\ = CARRY((\clkDiv|s_divCounter\(12) & !\clkDiv|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(12),
	datad => VCC,
	cin => \clkDiv|s_divCounter[11]~49\,
	combout => \clkDiv|s_divCounter[12]~50_combout\,
	cout => \clkDiv|s_divCounter[12]~51\);

-- Location: FF_X63_Y59_N31
\clkDiv|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[12]~50_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(12));

-- Location: LCCOMB_X63_Y58_N0
\clkDiv|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[13]~52_combout\ = (\clkDiv|s_divCounter\(13) & (!\clkDiv|s_divCounter[12]~51\)) # (!\clkDiv|s_divCounter\(13) & ((\clkDiv|s_divCounter[12]~51\) # (GND)))
-- \clkDiv|s_divCounter[13]~53\ = CARRY((!\clkDiv|s_divCounter[12]~51\) # (!\clkDiv|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(13),
	datad => VCC,
	cin => \clkDiv|s_divCounter[12]~51\,
	combout => \clkDiv|s_divCounter[13]~52_combout\,
	cout => \clkDiv|s_divCounter[13]~53\);

-- Location: FF_X62_Y59_N9
\clkDiv|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDiv|s_divCounter[13]~52_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(13));

-- Location: LCCOMB_X63_Y58_N2
\clkDiv|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[14]~54_combout\ = (\clkDiv|s_divCounter\(14) & (\clkDiv|s_divCounter[13]~53\ $ (GND))) # (!\clkDiv|s_divCounter\(14) & (!\clkDiv|s_divCounter[13]~53\ & VCC))
-- \clkDiv|s_divCounter[14]~55\ = CARRY((\clkDiv|s_divCounter\(14) & !\clkDiv|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(14),
	datad => VCC,
	cin => \clkDiv|s_divCounter[13]~53\,
	combout => \clkDiv|s_divCounter[14]~54_combout\,
	cout => \clkDiv|s_divCounter[14]~55\);

-- Location: FF_X62_Y59_N7
\clkDiv|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDiv|s_divCounter[14]~54_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(14));

-- Location: LCCOMB_X63_Y58_N4
\clkDiv|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[15]~56_combout\ = (\clkDiv|s_divCounter\(15) & (!\clkDiv|s_divCounter[14]~55\)) # (!\clkDiv|s_divCounter\(15) & ((\clkDiv|s_divCounter[14]~55\) # (GND)))
-- \clkDiv|s_divCounter[15]~57\ = CARRY((!\clkDiv|s_divCounter[14]~55\) # (!\clkDiv|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(15),
	datad => VCC,
	cin => \clkDiv|s_divCounter[14]~55\,
	combout => \clkDiv|s_divCounter[15]~56_combout\,
	cout => \clkDiv|s_divCounter[15]~57\);

-- Location: FF_X62_Y59_N15
\clkDiv|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDiv|s_divCounter[15]~56_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(15));

-- Location: LCCOMB_X63_Y58_N6
\clkDiv|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[16]~58_combout\ = (\clkDiv|s_divCounter\(16) & (\clkDiv|s_divCounter[15]~57\ $ (GND))) # (!\clkDiv|s_divCounter\(16) & (!\clkDiv|s_divCounter[15]~57\ & VCC))
-- \clkDiv|s_divCounter[16]~59\ = CARRY((\clkDiv|s_divCounter\(16) & !\clkDiv|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(16),
	datad => VCC,
	cin => \clkDiv|s_divCounter[15]~57\,
	combout => \clkDiv|s_divCounter[16]~58_combout\,
	cout => \clkDiv|s_divCounter[16]~59\);

-- Location: FF_X62_Y59_N21
\clkDiv|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDiv|s_divCounter[16]~58_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(16));

-- Location: LCCOMB_X63_Y58_N8
\clkDiv|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[17]~60_combout\ = (\clkDiv|s_divCounter\(17) & (!\clkDiv|s_divCounter[16]~59\)) # (!\clkDiv|s_divCounter\(17) & ((\clkDiv|s_divCounter[16]~59\) # (GND)))
-- \clkDiv|s_divCounter[17]~61\ = CARRY((!\clkDiv|s_divCounter[16]~59\) # (!\clkDiv|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(17),
	datad => VCC,
	cin => \clkDiv|s_divCounter[16]~59\,
	combout => \clkDiv|s_divCounter[17]~60_combout\,
	cout => \clkDiv|s_divCounter[17]~61\);

-- Location: FF_X63_Y58_N9
\clkDiv|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[17]~60_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(17));

-- Location: LCCOMB_X63_Y58_N10
\clkDiv|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[18]~62_combout\ = (\clkDiv|s_divCounter\(18) & (\clkDiv|s_divCounter[17]~61\ $ (GND))) # (!\clkDiv|s_divCounter\(18) & (!\clkDiv|s_divCounter[17]~61\ & VCC))
-- \clkDiv|s_divCounter[18]~63\ = CARRY((\clkDiv|s_divCounter\(18) & !\clkDiv|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(18),
	datad => VCC,
	cin => \clkDiv|s_divCounter[17]~61\,
	combout => \clkDiv|s_divCounter[18]~62_combout\,
	cout => \clkDiv|s_divCounter[18]~63\);

-- Location: FF_X63_Y58_N11
\clkDiv|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[18]~62_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(18));

-- Location: LCCOMB_X63_Y58_N12
\clkDiv|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[19]~64_combout\ = (\clkDiv|s_divCounter\(19) & (!\clkDiv|s_divCounter[18]~63\)) # (!\clkDiv|s_divCounter\(19) & ((\clkDiv|s_divCounter[18]~63\) # (GND)))
-- \clkDiv|s_divCounter[19]~65\ = CARRY((!\clkDiv|s_divCounter[18]~63\) # (!\clkDiv|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(19),
	datad => VCC,
	cin => \clkDiv|s_divCounter[18]~63\,
	combout => \clkDiv|s_divCounter[19]~64_combout\,
	cout => \clkDiv|s_divCounter[19]~65\);

-- Location: FF_X63_Y58_N13
\clkDiv|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[19]~64_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(19));

-- Location: LCCOMB_X63_Y58_N14
\clkDiv|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[20]~66_combout\ = (\clkDiv|s_divCounter\(20) & (\clkDiv|s_divCounter[19]~65\ $ (GND))) # (!\clkDiv|s_divCounter\(20) & (!\clkDiv|s_divCounter[19]~65\ & VCC))
-- \clkDiv|s_divCounter[20]~67\ = CARRY((\clkDiv|s_divCounter\(20) & !\clkDiv|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(20),
	datad => VCC,
	cin => \clkDiv|s_divCounter[19]~65\,
	combout => \clkDiv|s_divCounter[20]~66_combout\,
	cout => \clkDiv|s_divCounter[20]~67\);

-- Location: FF_X63_Y58_N15
\clkDiv|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[20]~66_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(20));

-- Location: LCCOMB_X63_Y58_N16
\clkDiv|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[21]~68_combout\ = (\clkDiv|s_divCounter\(21) & (!\clkDiv|s_divCounter[20]~67\)) # (!\clkDiv|s_divCounter\(21) & ((\clkDiv|s_divCounter[20]~67\) # (GND)))
-- \clkDiv|s_divCounter[21]~69\ = CARRY((!\clkDiv|s_divCounter[20]~67\) # (!\clkDiv|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(21),
	datad => VCC,
	cin => \clkDiv|s_divCounter[20]~67\,
	combout => \clkDiv|s_divCounter[21]~68_combout\,
	cout => \clkDiv|s_divCounter[21]~69\);

-- Location: FF_X63_Y58_N17
\clkDiv|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[21]~68_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(21));

-- Location: LCCOMB_X63_Y58_N18
\clkDiv|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[22]~70_combout\ = (\clkDiv|s_divCounter\(22) & (\clkDiv|s_divCounter[21]~69\ $ (GND))) # (!\clkDiv|s_divCounter\(22) & (!\clkDiv|s_divCounter[21]~69\ & VCC))
-- \clkDiv|s_divCounter[22]~71\ = CARRY((\clkDiv|s_divCounter\(22) & !\clkDiv|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(22),
	datad => VCC,
	cin => \clkDiv|s_divCounter[21]~69\,
	combout => \clkDiv|s_divCounter[22]~70_combout\,
	cout => \clkDiv|s_divCounter[22]~71\);

-- Location: FF_X63_Y58_N19
\clkDiv|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[22]~70_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(22));

-- Location: FF_X63_Y58_N21
\clkDiv|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[23]~72_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(23));

-- Location: LCCOMB_X62_Y59_N30
\clkDiv|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|LessThan1~1_combout\ = (((!\clkDiv|s_divCounter\(11)) # (!\clkDiv|s_divCounter\(12))) # (!\clkDiv|s_divCounter\(13))) # (!\clkDiv|s_divCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(14),
	datab => \clkDiv|s_divCounter\(13),
	datac => \clkDiv|s_divCounter\(12),
	datad => \clkDiv|s_divCounter\(11),
	combout => \clkDiv|LessThan1~1_combout\);

-- Location: LCCOMB_X62_Y59_N28
\clkDiv|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|LessThan1~5_combout\ = (\clkDiv|LessThan1~1_combout\) # ((\clkDiv|LessThan1~4_combout\ & (!\clkDiv|s_divCounter\(6) & \clkDiv|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|LessThan1~4_combout\,
	datab => \clkDiv|s_divCounter\(6),
	datac => \clkDiv|LessThan1~1_combout\,
	datad => \clkDiv|LessThan1~3_combout\,
	combout => \clkDiv|LessThan1~5_combout\);

-- Location: LCCOMB_X62_Y59_N18
\clkDiv|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|LessThan1~6_combout\ = (\clkDiv|s_divCounter\(16) & ((\clkDiv|s_divCounter\(15)) # (!\clkDiv|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(16),
	datac => \clkDiv|s_divCounter\(15),
	datad => \clkDiv|LessThan1~5_combout\,
	combout => \clkDiv|LessThan1~6_combout\);

-- Location: LCCOMB_X62_Y59_N0
\clkDiv|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|LessThan1~7_combout\ = (\clkDiv|LessThan1~0_combout\ & (\clkDiv|s_divCounter\(18) & ((\clkDiv|s_divCounter\(17)) # (\clkDiv|LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|LessThan1~0_combout\,
	datab => \clkDiv|s_divCounter\(18),
	datac => \clkDiv|s_divCounter\(17),
	datad => \clkDiv|LessThan1~6_combout\,
	combout => \clkDiv|LessThan1~7_combout\);

-- Location: LCCOMB_X62_Y59_N12
\clkDiv|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|LessThan1~8_combout\ = (\clkDiv|s_divCounter\(25)) # ((\clkDiv|s_divCounter\(24) & ((\clkDiv|s_divCounter\(23)) # (\clkDiv|LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(23),
	datab => \clkDiv|s_divCounter\(24),
	datac => \clkDiv|s_divCounter\(25),
	datad => \clkDiv|LessThan1~7_combout\,
	combout => \clkDiv|LessThan1~8_combout\);

-- Location: FF_X62_Y59_N13
\clkDiv|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|clkOut~q\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;
END structure;


