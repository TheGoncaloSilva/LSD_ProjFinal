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
-- Generated on "06/12/2021 17:09:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mux
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux_vhd_vec_tst IS
END Mux_vhd_vec_tst;
ARCHITECTURE Mux_arch OF Mux_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL dataIn0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dataIn1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dataIn2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dataIn3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dataIn4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dataIn5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dataIn6 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dataIn7 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dataOut : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT Mux
	PORT (
	dataIn0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dataIn1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dataIn2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dataIn3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dataIn4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dataIn5 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dataIn6 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dataIn7 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dataOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Mux
	PORT MAP (
-- list connections between master ports and signals
	dataIn0 => dataIn0,
	dataIn1 => dataIn1,
	dataIn2 => dataIn2,
	dataIn3 => dataIn3,
	dataIn4 => dataIn4,
	dataIn5 => dataIn5,
	dataIn6 => dataIn6,
	dataIn7 => dataIn7,
	dataOut => dataOut,
	sel => sel
	);
-- dataIn0[3]
t_prcs_dataIn0_3: PROCESS
BEGIN
	dataIn0(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn0_3;
-- dataIn0[2]
t_prcs_dataIn0_2: PROCESS
BEGIN
	dataIn0(2) <= '0';
WAIT;
END PROCESS t_prcs_dataIn0_2;
-- dataIn0[1]
t_prcs_dataIn0_1: PROCESS
BEGIN
	dataIn0(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn0_1;
-- dataIn0[0]
t_prcs_dataIn0_0: PROCESS
BEGIN
	dataIn0(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIn0_0;
-- dataIn1[3]
t_prcs_dataIn1_3: PROCESS
BEGIN
	dataIn1(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn1_3;
-- dataIn1[2]
t_prcs_dataIn1_2: PROCESS
BEGIN
	dataIn1(2) <= '0';
WAIT;
END PROCESS t_prcs_dataIn1_2;
-- dataIn1[1]
t_prcs_dataIn1_1: PROCESS
BEGIN
	dataIn1(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn1_1;
-- dataIn1[0]
t_prcs_dataIn1_0: PROCESS
BEGIN
	dataIn1(0) <= '1';
WAIT;
END PROCESS t_prcs_dataIn1_0;
-- dataIn2[3]
t_prcs_dataIn2_3: PROCESS
BEGIN
	dataIn2(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn2_3;
-- dataIn2[2]
t_prcs_dataIn2_2: PROCESS
BEGIN
	dataIn2(2) <= '0';
WAIT;
END PROCESS t_prcs_dataIn2_2;
-- dataIn2[1]
t_prcs_dataIn2_1: PROCESS
BEGIN
	dataIn2(1) <= '1';
WAIT;
END PROCESS t_prcs_dataIn2_1;
-- dataIn2[0]
t_prcs_dataIn2_0: PROCESS
BEGIN
	dataIn2(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIn2_0;
-- dataIn3[3]
t_prcs_dataIn3_3: PROCESS
BEGIN
	dataIn3(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn3_3;
-- dataIn3[2]
t_prcs_dataIn3_2: PROCESS
BEGIN
	dataIn3(2) <= '0';
WAIT;
END PROCESS t_prcs_dataIn3_2;
-- dataIn3[1]
t_prcs_dataIn3_1: PROCESS
BEGIN
	dataIn3(1) <= '1';
WAIT;
END PROCESS t_prcs_dataIn3_1;
-- dataIn3[0]
t_prcs_dataIn3_0: PROCESS
BEGIN
	dataIn3(0) <= '1';
WAIT;
END PROCESS t_prcs_dataIn3_0;
-- dataIn4[3]
t_prcs_dataIn4_3: PROCESS
BEGIN
	dataIn4(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn4_3;
-- dataIn4[2]
t_prcs_dataIn4_2: PROCESS
BEGIN
	dataIn4(2) <= '1';
WAIT;
END PROCESS t_prcs_dataIn4_2;
-- dataIn4[1]
t_prcs_dataIn4_1: PROCESS
BEGIN
	dataIn4(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn4_1;
-- dataIn4[0]
t_prcs_dataIn4_0: PROCESS
BEGIN
	dataIn4(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIn4_0;
-- dataIn5[3]
t_prcs_dataIn5_3: PROCESS
BEGIN
	dataIn5(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn5_3;
-- dataIn5[2]
t_prcs_dataIn5_2: PROCESS
BEGIN
	dataIn5(2) <= '1';
WAIT;
END PROCESS t_prcs_dataIn5_2;
-- dataIn5[1]
t_prcs_dataIn5_1: PROCESS
BEGIN
	dataIn5(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn5_1;
-- dataIn5[0]
t_prcs_dataIn5_0: PROCESS
BEGIN
	dataIn5(0) <= '1';
WAIT;
END PROCESS t_prcs_dataIn5_0;
-- dataIn6[3]
t_prcs_dataIn6_3: PROCESS
BEGIN
	dataIn6(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn6_3;
-- dataIn6[2]
t_prcs_dataIn6_2: PROCESS
BEGIN
	dataIn6(2) <= '1';
WAIT;
END PROCESS t_prcs_dataIn6_2;
-- dataIn6[1]
t_prcs_dataIn6_1: PROCESS
BEGIN
	dataIn6(1) <= '1';
WAIT;
END PROCESS t_prcs_dataIn6_1;
-- dataIn6[0]
t_prcs_dataIn6_0: PROCESS
BEGIN
	dataIn6(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIn6_0;
-- dataIn7[3]
t_prcs_dataIn7_3: PROCESS
BEGIN
	dataIn7(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn7_3;
-- dataIn7[2]
t_prcs_dataIn7_2: PROCESS
BEGIN
	dataIn7(2) <= '1';
WAIT;
END PROCESS t_prcs_dataIn7_2;
-- dataIn7[1]
t_prcs_dataIn7_1: PROCESS
BEGIN
	dataIn7(1) <= '1';
WAIT;
END PROCESS t_prcs_dataIn7_1;
-- dataIn7[0]
t_prcs_dataIn7_0: PROCESS
BEGIN
	dataIn7(0) <= '1';
WAIT;
END PROCESS t_prcs_dataIn7_0;
-- sel[2]
t_prcs_sel_2: PROCESS
BEGIN
	sel(2) <= '0';
	WAIT FOR 20000 ps;
	sel(2) <= '1';
	WAIT FOR 20000 ps;
	sel(2) <= '0';
	WAIT FOR 20000 ps;
	sel(2) <= '1';
	WAIT FOR 60000 ps;
	sel(2) <= '0';
	WAIT FOR 20000 ps;
	sel(2) <= '1';
	WAIT FOR 20000 ps;
	sel(2) <= '0';
	WAIT FOR 60000 ps;
	sel(2) <= '1';
	WAIT FOR 20000 ps;
	sel(2) <= '0';
	WAIT FOR 20000 ps;
	sel(2) <= '1';
	WAIT FOR 20000 ps;
	sel(2) <= '0';
	WAIT FOR 60000 ps;
	sel(2) <= '1';
	WAIT FOR 40000 ps;
	sel(2) <= '0';
	WAIT FOR 60000 ps;
	sel(2) <= '1';
	WAIT FOR 60000 ps;
	sel(2) <= '0';
	WAIT FOR 20000 ps;
	sel(2) <= '1';
	WAIT FOR 60000 ps;
	sel(2) <= '0';
	WAIT FOR 20000 ps;
	sel(2) <= '1';
	WAIT FOR 40000 ps;
	sel(2) <= '0';
	WAIT FOR 20000 ps;
	sel(2) <= '1';
	WAIT FOR 40000 ps;
	sel(2) <= '0';
	WAIT FOR 20000 ps;
	sel(2) <= '1';
	WAIT FOR 60000 ps;
	sel(2) <= '0';
	WAIT FOR 20000 ps;
	sel(2) <= '1';
	WAIT FOR 20000 ps;
	sel(2) <= '0';
	WAIT FOR 40000 ps;
	sel(2) <= '1';
	WAIT FOR 20000 ps;
	sel(2) <= '0';
	WAIT FOR 20000 ps;
	sel(2) <= '1';
	WAIT FOR 60000 ps;
	sel(2) <= '0';
WAIT;
END PROCESS t_prcs_sel_2;
-- sel[1]
t_prcs_sel_1: PROCESS
BEGIN
	sel(1) <= '0';
	WAIT FOR 20000 ps;
	sel(1) <= '1';
	WAIT FOR 20000 ps;
	sel(1) <= '0';
	WAIT FOR 20000 ps;
	sel(1) <= '1';
	WAIT FOR 20000 ps;
	sel(1) <= '0';
	WAIT FOR 100000 ps;
	sel(1) <= '1';
	WAIT FOR 60000 ps;
	sel(1) <= '0';
	WAIT FOR 20000 ps;
	sel(1) <= '1';
	WAIT FOR 60000 ps;
	sel(1) <= '0';
	WAIT FOR 20000 ps;
	sel(1) <= '1';
	WAIT FOR 20000 ps;
	sel(1) <= '0';
	WAIT FOR 60000 ps;
	sel(1) <= '1';
	WAIT FOR 60000 ps;
	sel(1) <= '0';
	WAIT FOR 20000 ps;
	sel(1) <= '1';
	WAIT FOR 120000 ps;
	sel(1) <= '0';
	WAIT FOR 20000 ps;
	sel(1) <= '1';
	WAIT FOR 40000 ps;
	sel(1) <= '0';
	WAIT FOR 40000 ps;
	sel(1) <= '1';
	WAIT FOR 20000 ps;
	sel(1) <= '0';
	WAIT FOR 140000 ps;
	sel(1) <= '1';
	WAIT FOR 40000 ps;
	sel(1) <= '0';
	WAIT FOR 20000 ps;
	sel(1) <= '1';
	WAIT FOR 40000 ps;
	sel(1) <= '0';
WAIT;
END PROCESS t_prcs_sel_1;
-- sel[0]
t_prcs_sel_0: PROCESS
BEGIN
	sel(0) <= '0';
	WAIT FOR 20000 ps;
	sel(0) <= '1';
	WAIT FOR 60000 ps;
	sel(0) <= '0';
	WAIT FOR 20000 ps;
	sel(0) <= '1';
	WAIT FOR 40000 ps;
	sel(0) <= '0';
	WAIT FOR 20000 ps;
	sel(0) <= '1';
	WAIT FOR 140000 ps;
	sel(0) <= '0';
	WAIT FOR 40000 ps;
	sel(0) <= '1';
	WAIT FOR 60000 ps;
	sel(0) <= '0';
	WAIT FOR 60000 ps;
	sel(0) <= '1';
	WAIT FOR 20000 ps;
	sel(0) <= '0';
	WAIT FOR 40000 ps;
	sel(0) <= '1';
	WAIT FOR 100000 ps;
	sel(0) <= '0';
	WAIT FOR 60000 ps;
	sel(0) <= '1';
	WAIT FOR 20000 ps;
	sel(0) <= '0';
	WAIT FOR 40000 ps;
	sel(0) <= '1';
	WAIT FOR 40000 ps;
	sel(0) <= '0';
	WAIT FOR 20000 ps;
	sel(0) <= '1';
	WAIT FOR 20000 ps;
	sel(0) <= '0';
	WAIT FOR 20000 ps;
	sel(0) <= '1';
	WAIT FOR 20000 ps;
	sel(0) <= '0';
	WAIT FOR 60000 ps;
	sel(0) <= '1';
	WAIT FOR 40000 ps;
	sel(0) <= '0';
WAIT;
END PROCESS t_prcs_sel_0;
END Mux_arch;
