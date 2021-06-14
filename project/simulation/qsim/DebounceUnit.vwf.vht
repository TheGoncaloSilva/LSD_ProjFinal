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
-- Generated on "06/13/2021 23:45:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DebounceUnit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DebounceUnit_vhd_vec_tst IS
END DebounceUnit_vhd_vec_tst;
ARCHITECTURE DebounceUnit_arch OF DebounceUnit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL cleanOut : STD_LOGIC;
SIGNAL dirtyIn : STD_LOGIC;
SIGNAL refClk : STD_LOGIC;
COMPONENT DebounceUnit
	PORT (
	cleanOut : OUT STD_LOGIC;
	dirtyIn : IN STD_LOGIC;
	refClk : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DebounceUnit
	PORT MAP (
-- list connections between master ports and signals
	cleanOut => cleanOut,
	dirtyIn => dirtyIn,
	refClk => refClk
	);

-- dirtyIn
t_prcs_dirtyIn: PROCESS
BEGIN
	dirtyIn <= '1';
	WAIT FOR 140000 ps;
	dirtyIn <= '0';
	WAIT FOR 70000 ps;
	dirtyIn <= '1';
	WAIT FOR 70000 ps;
	dirtyIn <= '0';
	WAIT FOR 210000 ps;
	dirtyIn <= '1';
	WAIT FOR 70000 ps;
	dirtyIn <= '0';
	WAIT FOR 70000 ps;
	dirtyIn <= '1';
	WAIT FOR 140000 ps;
	dirtyIn <= '0';
	WAIT FOR 70000 ps;
	dirtyIn <= '1';
	WAIT FOR 70000 ps;
	dirtyIn <= '0';
	WAIT FOR 70000 ps;
	dirtyIn <= '1';
WAIT;
END PROCESS t_prcs_dirtyIn;

-- refClk
t_prcs_refClk: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		refClk <= '0';
		WAIT FOR 30000 ps;
		refClk <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	refClk <= '0';
	WAIT FOR 30000 ps;
	refClk <= '1';
WAIT;
END PROCESS t_prcs_refClk;
END DebounceUnit_arch;
