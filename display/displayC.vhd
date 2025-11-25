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
-- CREATED		"Tue Nov 25 00:59:37 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY displayC IS 
	PORT
	(
		E :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		C :  OUT  STD_LOGIC
	);
END displayC;

ARCHITECTURE bdf_type OF displayC IS 

SIGNAL	not0 :  STD_LOGIC;
SIGNAL	not2 :  STD_LOGIC;
SIGNAL	not3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;


BEGIN 



not0 <= NOT(E(0));



SYNTHESIZED_WIRE_3 <= SYNTHESIZED_WIRE_0 AND not0;


SYNTHESIZED_WIRE_1 <= E(3) AND E(2);


SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_1 AND E(1);


not2 <= NOT(E(2));



not3 <= NOT(E(3));



SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_2 OR SYNTHESIZED_WIRE_3;


C <= SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_6 <= not3 AND not2;


SYNTHESIZED_WIRE_7 <= E(1) AND not0;


SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_6 AND SYNTHESIZED_WIRE_7;


SYNTHESIZED_WIRE_0 <= E(3) AND E(2);


END bdf_type;