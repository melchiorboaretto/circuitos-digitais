-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Tue Nov 25 00:34:16 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY tap8 IS 
	PORT
	(
		Barramento :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		S0 :  OUT  STD_LOGIC;
		S1 :  OUT  STD_LOGIC;
		S2 :  OUT  STD_LOGIC;
		S3 :  OUT  STD_LOGIC;
		S4 :  OUT  STD_LOGIC;
		S5 :  OUT  STD_LOGIC;
		S6 :  OUT  STD_LOGIC;
		S7 :  OUT  STD_LOGIC
	);
END tap8;

ARCHITECTURE bdf_type OF tap8 IS 



BEGIN 
S0 <= Barramento(0);
S1 <= Barramento(1);
S2 <= Barramento(2);
S3 <= Barramento(3);
S4 <= Barramento(4);
S5 <= Barramento(5);
S6 <= Barramento(6);
S7 <= Barramento(7);



END bdf_type;