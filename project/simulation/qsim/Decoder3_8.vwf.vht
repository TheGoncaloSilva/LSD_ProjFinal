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
-- Generated on "06/13/2021 18:17:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Decoder3_8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Decoder3_8_vhd_vec_tst IS
END Decoder3_8_vhd_vec_tst;
ARCHITECTURE Decoder3_8_arch OF Decoder3_8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL enable : STD_LOGIC;
SIGNAL inputs : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL outputs : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Decoder3_8
	PORT (
	enable : IN STD_LOGIC;
	inputs : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	outputs : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Decoder3_8
	PORT MAP (
-- list connections between master ports and signals
	enable => enable,
	inputs => inputs,
	outputs => outputs
	);

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
	WAIT FOR 540000 ps;
	enable <= '0';
	WAIT FOR 70000 ps;
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;
-- inputs[2]
t_prcs_inputs_2: PROCESS
BEGIN
	inputs(2) <= '0';
	WAIT FOR 240000 ps;
	inputs(2) <= '1';
	WAIT FOR 270000 ps;
	inputs(2) <= '0';
WAIT;
END PROCESS t_prcs_inputs_2;
-- inputs[1]
t_prcs_inputs_1: PROCESS
BEGIN
	inputs(1) <= '0';
	WAIT FOR 120000 ps;
	inputs(1) <= '1';
	WAIT FOR 120000 ps;
	inputs(1) <= '0';
	WAIT FOR 130000 ps;
	inputs(1) <= '1';
	WAIT FOR 190000 ps;
	inputs(1) <= '0';
	WAIT FOR 40000 ps;
	inputs(1) <= '1';
	WAIT FOR 60000 ps;
	inputs(1) <= '0';
WAIT;
END PROCESS t_prcs_inputs_1;
-- inputs[0]
t_prcs_inputs_0: PROCESS
BEGIN
	inputs(0) <= '0';
	WAIT FOR 50000 ps;
	inputs(0) <= '1';
	WAIT FOR 70000 ps;
	inputs(0) <= '0';
	WAIT FOR 60000 ps;
	inputs(0) <= '1';
	WAIT FOR 60000 ps;
	inputs(0) <= '0';
	WAIT FOR 70000 ps;
	inputs(0) <= '1';
	WAIT FOR 60000 ps;
	inputs(0) <= '0';
	WAIT FOR 70000 ps;
	inputs(0) <= '1';
	WAIT FOR 120000 ps;
	inputs(0) <= '0';
WAIT;
END PROCESS t_prcs_inputs_0;
END Decoder3_8_arch;
