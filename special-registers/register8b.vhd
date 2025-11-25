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
-- CREATED		"Tue Nov 25 14:22:38 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY register8b IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		enable :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		S :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END register8b;

ARCHITECTURE bdf_type OF register8b IS 

COMPONENT mux2p1
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Sel : IN STD_LOGIC;
		 S : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	clock_real :  STD_LOGIC;
SIGNAL	S_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	seletor :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;


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


b2v_inst10 : mux2p1
PORT MAP(A => D(1),
		 B => S_ALTERA_SYNTHESIZED(1),
		 Sel => seletor,
		 S => SYNTHESIZED_WIRE_1);


b2v_inst11 : mux2p1
PORT MAP(A => D(2),
		 B => S_ALTERA_SYNTHESIZED(2),
		 Sel => seletor,
		 S => SYNTHESIZED_WIRE_2);


b2v_inst12 : mux2p1
PORT MAP(A => D(3),
		 B => S_ALTERA_SYNTHESIZED(3),
		 Sel => seletor,
		 S => SYNTHESIZED_WIRE_3);


b2v_inst13 : mux2p1
PORT MAP(A => D(4),
		 B => S_ALTERA_SYNTHESIZED(4),
		 Sel => seletor,
		 S => SYNTHESIZED_WIRE_4);


b2v_inst14 : mux2p1
PORT MAP(A => D(5),
		 B => S_ALTERA_SYNTHESIZED(5),
		 Sel => seletor,
		 S => SYNTHESIZED_WIRE_5);


b2v_inst15 : mux2p1
PORT MAP(A => D(6),
		 B => S_ALTERA_SYNTHESIZED(6),
		 Sel => seletor,
		 S => SYNTHESIZED_WIRE_6);


b2v_inst16 : mux2p1
PORT MAP(A => D(7),
		 B => S_ALTERA_SYNTHESIZED(7),
		 Sel => seletor,
		 S => SYNTHESIZED_WIRE_7);


seletor <= NOT(enable);



PROCESS(clock_real,reset)
BEGIN
IF (reset = '0') THEN
	S_ALTERA_SYNTHESIZED(2) <= '0';
ELSIF (RISING_EDGE(clock_real)) THEN
	S_ALTERA_SYNTHESIZED(2) <= SYNTHESIZED_WIRE_2;
END IF;
END PROCESS;


PROCESS(clock_real,reset)
BEGIN
IF (reset = '0') THEN
	S_ALTERA_SYNTHESIZED(3) <= '0';
ELSIF (RISING_EDGE(clock_real)) THEN
	S_ALTERA_SYNTHESIZED(3) <= SYNTHESIZED_WIRE_3;
END IF;
END PROCESS;


PROCESS(clock_real,reset)
BEGIN
IF (reset = '0') THEN
	S_ALTERA_SYNTHESIZED(4) <= '0';
ELSIF (RISING_EDGE(clock_real)) THEN
	S_ALTERA_SYNTHESIZED(4) <= SYNTHESIZED_WIRE_4;
END IF;
END PROCESS;


PROCESS(clock_real,reset)
BEGIN
IF (reset = '0') THEN
	S_ALTERA_SYNTHESIZED(5) <= '0';
ELSIF (RISING_EDGE(clock_real)) THEN
	S_ALTERA_SYNTHESIZED(5) <= SYNTHESIZED_WIRE_5;
END IF;
END PROCESS;


PROCESS(clock_real,reset)
BEGIN
IF (reset = '0') THEN
	S_ALTERA_SYNTHESIZED(6) <= '0';
ELSIF (RISING_EDGE(clock_real)) THEN
	S_ALTERA_SYNTHESIZED(6) <= SYNTHESIZED_WIRE_6;
END IF;
END PROCESS;


PROCESS(clock_real,reset)
BEGIN
IF (reset = '0') THEN
	S_ALTERA_SYNTHESIZED(7) <= '0';
ELSIF (RISING_EDGE(clock_real)) THEN
	S_ALTERA_SYNTHESIZED(7) <= SYNTHESIZED_WIRE_7;
END IF;
END PROCESS;


b2v_inst9 : mux2p1
PORT MAP(A => D(0),
		 B => S_ALTERA_SYNTHESIZED(0),
		 Sel => seletor,
		 S => SYNTHESIZED_WIRE_0);

S <= S_ALTERA_SYNTHESIZED;
clock_real <= clock;

END bdf_type;