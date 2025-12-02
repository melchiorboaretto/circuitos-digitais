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
-- CREATED		"Mon Dec 01 21:08:49 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY encodernew IS 
	PORT
	(
		D :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Val :  OUT  STD_LOGIC;
		Q :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END encodernew;

ARCHITECTURE bdf_type OF encodernew IS 

SIGNAL	Q_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(2 DOWNTO 0);
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



SYNTHESIZED_WIRE_7 <= D(1) OR D(6);


SYNTHESIZED_WIRE_11 <= D(3) OR SYNTHESIZED_WIRE_0;


SYNTHESIZED_WIRE_0 <= D(4) OR SYNTHESIZED_WIRE_1;


SYNTHESIZED_WIRE_1 <= D(5) OR SYNTHESIZED_WIRE_2;


SYNTHESIZED_WIRE_2 <= D(6) OR D(7);


Q_ALTERA_SYNTHESIZED(0) <= SYNTHESIZED_WIRE_3 OR D(2);


Q_ALTERA_SYNTHESIZED(1) <= SYNTHESIZED_WIRE_4 OR D(2);


Q_ALTERA_SYNTHESIZED(2) <= SYNTHESIZED_WIRE_5 OR D(2);


SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_6 OR D(7);


SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_7 OR D(4);


SYNTHESIZED_WIRE_3 <= SYNTHESIZED_WIRE_8 OR D(5);


SYNTHESIZED_WIRE_9 <= D(1) OR D(2);


SYNTHESIZED_WIRE_8 <= D(0) OR D(6);


SYNTHESIZED_WIRE_10 <= D(0) OR SYNTHESIZED_WIRE_9;


SYNTHESIZED_WIRE_6 <= D(1) OR D(0);


Val <= SYNTHESIZED_WIRE_10 OR SYNTHESIZED_WIRE_11;

Q <= Q_ALTERA_SYNTHESIZED;

END bdf_type;