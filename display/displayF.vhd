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
-- CREATED		"Tue Nov 25 00:57:01 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY displayF IS 
	PORT
	(
		E :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		F :  OUT  STD_LOGIC
	);
END displayF;

ARCHITECTURE bdf_type OF displayF IS 

SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_4 <= NOT(E(1));



SYNTHESIZED_WIRE_8 <= SYNTHESIZED_WIRE_10 AND SYNTHESIZED_WIRE_11 AND E(0);


SYNTHESIZED_WIRE_6 <= SYNTHESIZED_WIRE_10 AND SYNTHESIZED_WIRE_11 AND E(1);


SYNTHESIZED_WIRE_11 <= NOT(E(2));



SYNTHESIZED_WIRE_10 <= NOT(E(3));



SYNTHESIZED_WIRE_7 <= E(3) AND E(2) AND SYNTHESIZED_WIRE_4 AND E(0);


F <= SYNTHESIZED_WIRE_5 OR SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7 OR SYNTHESIZED_WIRE_8;


SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_10 AND E(0) AND E(1);


END bdf_type;