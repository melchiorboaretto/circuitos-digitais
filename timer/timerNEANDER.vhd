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
-- CREATED		"Tue Dec 02 15:47:06 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY timerNEANDER IS 
	PORT
	(
		reset :  IN  STD_LOGIC;
		clock :  IN  STD_LOGIC;
		inc :  IN  STD_LOGIC;
		S :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END timerNEANDER;

ARCHITECTURE bdf_type OF timerNEANDER IS 

COMPONENT mux4p1
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 C : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 Sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 S : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	clock_real :  STD_LOGIC;
SIGNAL	D :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	S_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	Sel :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 



PROCESS(clock_real,reset)
BEGIN
IF (reset = '0') THEN
	S_ALTERA_SYNTHESIZED(0) <= '0';
ELSIF (RISING_EDGE(clock_real)) THEN
	S_ALTERA_SYNTHESIZED(0) <= SYNTHESIZED_WIRE_0;
END IF;
END PROCESS;


PROCESS(clock_real,reset)
BEGIN
IF (reset = '0') THEN
	S_ALTERA_SYNTHESIZED(1) <= '0';
ELSIF (RISING_EDGE(clock_real)) THEN
	S_ALTERA_SYNTHESIZED(1) <= SYNTHESIZED_WIRE_1;
END IF;
END PROCESS;



Sel(0) <= NOT(Sel(1));



SYNTHESIZED_WIRE_6 <= NOT(SYNTHESIZED_WIRE_7);



b2v_inst8 : mux4p1
PORT MAP(A => D(0),
		 B => S_ALTERA_SYNTHESIZED(0),
		 C => SYNTHESIZED_WIRE_8,
		 D => SYNTHESIZED_WIRE_8,
		 Sel => Sel,
		 S => SYNTHESIZED_WIRE_0);


b2v_inst9 : mux4p1
PORT MAP(A => D(1),
		 B => S_ALTERA_SYNTHESIZED(1),
		 C => SYNTHESIZED_WIRE_7,
		 D => SYNTHESIZED_WIRE_6,
		 Sel => Sel,
		 S => SYNTHESIZED_WIRE_1);


SYNTHESIZED_WIRE_8 <= NOT(S_ALTERA_SYNTHESIZED(0));



SYNTHESIZED_WIRE_7 <= S_ALTERA_SYNTHESIZED(1) XOR S_ALTERA_SYNTHESIZED(0);

S <= S_ALTERA_SYNTHESIZED;
clock_real <= clock;

Sel(1) <= inc;
END bdf_type;