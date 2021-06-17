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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/15/2021 16:44:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PCounter4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PCounter4_vhd_vec_tst IS
END PCounter4_vhd_vec_tst;
ARCHITECTURE PCounter4_arch OF PCounter4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL mainEn : STD_LOGIC;
SIGNAL mode : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL TC : STD_LOGIC;
COMPONENT PCounter4
	PORT (
	clk : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	mainEn : IN STD_LOGIC;
	mode : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC;
	TC : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PCounter4
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	enable => enable,
	mainEn => mainEn,
	mode => mode,
	Q => Q,
	reset => reset,
	TC => TC
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		clk <= '0';
		WAIT FOR 15000 ps;
		clk <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
	WAIT FOR 350000 ps;
	enable <= '0';
	WAIT FOR 50000 ps;
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;

-- mainEn
t_prcs_mainEn: PROCESS
BEGIN
	mainEn <= '1';
	WAIT FOR 960000 ps;
	mainEn <= '0';
WAIT;
END PROCESS t_prcs_mainEn;

-- mode
t_prcs_mode: PROCESS
BEGIN
	mode <= '0';
	WAIT FOR 410000 ps;
	mode <= '1';
	WAIT FOR 370000 ps;
	mode <= '0';
WAIT;
END PROCESS t_prcs_mode;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 790000 ps;
	reset <= '1';
	WAIT FOR 30000 ps;
	reset <= '0';
	WAIT FOR 80000 ps;
	reset <= '1';
	WAIT FOR 40000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END PCounter4_arch;
