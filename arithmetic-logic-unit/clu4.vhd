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
-- CREATED		"Tue Nov 25 00:36:46 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY clu4 IS 
	PORT
	(
		Cin :  IN  STD_LOGIC;
		G2 :  IN  STD_LOGIC;
		G1 :  IN  STD_LOGIC;
		G0 :  IN  STD_LOGIC;
		P0 :  IN  STD_LOGIC;
		P1 :  IN  STD_LOGIC;
		P2 :  IN  STD_LOGIC;
		P3 :  IN  STD_LOGIC;
		G3 :  IN  STD_LOGIC;
		carry1 :  OUT  STD_LOGIC;
		carry2 :  OUT  STD_LOGIC;
		carry3 :  OUT  STD_LOGIC;
		carry4 :  OUT  STD_LOGIC
	);
END clu4;

ARCHITECTURE bdf_type OF clu4 IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_8 <= P2 AND P1 AND G0;


SYNTHESIZED_WIRE_7 <= P2 AND G1;


SYNTHESIZED_WIRE_2 <= G2 AND P3;


SYNTHESIZED_WIRE_3 <= G1 AND P2 AND P3;


SYNTHESIZED_WIRE_1 <= G0 AND P1 AND P2 AND P3;


SYNTHESIZED_WIRE_0 <= P0 AND P1 AND P2 AND P3;


SYNTHESIZED_WIRE_5 <= Cin AND SYNTHESIZED_WIRE_0;


SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2 OR G3 OR SYNTHESIZED_WIRE_3;


carry4 <= SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_6 <= Cin AND P2 AND P1 AND P0;


carry3 <= SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7 OR G2 OR SYNTHESIZED_WIRE_8;


carry1 <= G0 OR SYNTHESIZED_WIRE_9;


SYNTHESIZED_WIRE_9 <= Cin AND P0;


carry2 <= SYNTHESIZED_WIRE_10 OR G1 OR SYNTHESIZED_WIRE_11;


SYNTHESIZED_WIRE_11 <= Cin AND P1 AND P0;


SYNTHESIZED_WIRE_10 <= G0 AND P1;


END bdf_type;