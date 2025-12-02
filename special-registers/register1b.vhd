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
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
-- CREATED		"Tue Dec 02 17:49:15 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY register1b IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		enable :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC;
		S :  OUT  STD_LOGIC
	);
END register1b;

ARCHITECTURE bdf_type OF register1b IS 

COMPONENT mux2p1
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Sel : IN STD_LOGIC;
		 S : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	clock_real :  STD_LOGIC;
SIGNAL	D0 :  STD_LOGIC;
SIGNAL	S_ALTERA_SYNTHESIZED0 :  STD_LOGIC;
SIGNAL	seletor :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;


BEGIN 



PROCESS(clock_real,reset)
BEGIN
IF (reset = '0') THEN
	S <= '0';
ELSIF (RISING_EDGE(clock_real)) THEN
	S <= SYNTHESIZED_WIRE_0;
END IF;
END PROCESS;


seletor <= NOT(enable);



b2v_inst9 : mux2p1
PORT MAP(A => D0,
		 B => S_ALTERA_SYNTHESIZED0,
		 Sel => seletor,
		 S => SYNTHESIZED_WIRE_0);

clock_real <= clock;

END bdf_type;