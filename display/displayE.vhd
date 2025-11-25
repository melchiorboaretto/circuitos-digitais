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
-- CREATED		"Tue Nov 25 00:58:31 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY displayE IS 
	PORT
	(
		E :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Eneg :  OUT  STD_LOGIC
	);
END displayE;

ARCHITECTURE bdf_type OF displayE IS 

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
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_2 <= E(3) AND E(2);


SYNTHESIZED_WIRE_9 <= E(3) AND E(1);


SYNTHESIZED_WIRE_8 <= NOT(E(0));



Eneg <= NOT(SYNTHESIZED_WIRE_0);



SYNTHESIZED_WIRE_0 <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2;


SYNTHESIZED_WIRE_5 <= NOT(E(0));



SYNTHESIZED_WIRE_12 <= E(3) AND SYNTHESIZED_WIRE_3;


SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_4 AND SYNTHESIZED_WIRE_5 AND SYNTHESIZED_WIRE_6;


SYNTHESIZED_WIRE_11 <= SYNTHESIZED_WIRE_7 AND SYNTHESIZED_WIRE_8 AND E(1);


SYNTHESIZED_WIRE_3 <= NOT(E(0));



SYNTHESIZED_WIRE_1 <= SYNTHESIZED_WIRE_9 OR SYNTHESIZED_WIRE_10 OR SYNTHESIZED_WIRE_11 OR SYNTHESIZED_WIRE_12;


SYNTHESIZED_WIRE_4 <= NOT(E(3));



SYNTHESIZED_WIRE_6 <= NOT(E(2));



SYNTHESIZED_WIRE_7 <= NOT(E(3));



END bdf_type;