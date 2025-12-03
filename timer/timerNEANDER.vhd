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
-- CREATED		"Tue Dec 02 23:34:06 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY timerNEANDER IS 
	PORT
	(
		reset :  IN  STD_LOGIC;
		clock :  IN  STD_LOGIC;
		goto_t0 :  IN  STD_LOGIC;
		t :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
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

SIGNAL	and0t1 :  STD_LOGIC;
SIGNAL	clock_real :  STD_LOGIC;
SIGNAL	D :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	or1 :  STD_LOGIC;
SIGNAL	Sel :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	t_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	x :  STD_LOGIC;
SIGNAL	y :  STD_LOGIC;
SIGNAL	z :  STD_LOGIC;
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
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;


BEGIN 



and0t1 <= x AND y;


PROCESS(clock_real,reset)
BEGIN
IF (reset = '0') THEN
	x <= '0';
ELSIF (RISING_EDGE(clock_real)) THEN
	x <= SYNTHESIZED_WIRE_0;
END IF;
END PROCESS;


PROCESS(clock_real,reset)
BEGIN
IF (reset = '0') THEN
	y <= '0';
ELSIF (RISING_EDGE(clock_real)) THEN
	y <= SYNTHESIZED_WIRE_1;
END IF;
END PROCESS;


b2v_inst10 : mux4p1
PORT MAP(A => D(2),
		 B => z,
		 C => SYNTHESIZED_WIRE_2,
		 D => SYNTHESIZED_WIRE_3,
		 Sel => Sel,
		 S => SYNTHESIZED_WIRE_13);


SYNTHESIZED_WIRE_15 <= NOT(z);



t_ALTERA_SYNTHESIZED(1) <= x AND SYNTHESIZED_WIRE_4 AND SYNTHESIZED_WIRE_5;


t_ALTERA_SYNTHESIZED(2) <= SYNTHESIZED_WIRE_6 AND SYNTHESIZED_WIRE_7 AND y;


SYNTHESIZED_WIRE_5 <= NOT(y);



SYNTHESIZED_WIRE_4 <= NOT(z);



SYNTHESIZED_WIRE_6 <= NOT(x);



t_ALTERA_SYNTHESIZED(3) <= x AND SYNTHESIZED_WIRE_8 AND y;


SYNTHESIZED_WIRE_7 <= NOT(z);



t_ALTERA_SYNTHESIZED(4) <= SYNTHESIZED_WIRE_9 AND z AND SYNTHESIZED_WIRE_10;



SYNTHESIZED_WIRE_8 <= NOT(z);



SYNTHESIZED_WIRE_9 <= NOT(x);



SYNTHESIZED_WIRE_10 <= NOT(y);



t_ALTERA_SYNTHESIZED(5) <= x AND z AND SYNTHESIZED_WIRE_11;


t_ALTERA_SYNTHESIZED(6) <= SYNTHESIZED_WIRE_12 AND z AND y;


SYNTHESIZED_WIRE_11 <= NOT(y);



SYNTHESIZED_WIRE_12 <= NOT(x);



t_ALTERA_SYNTHESIZED(7) <= x AND z AND y;



Sel(1) <= NOT(goto_t0);



PROCESS(clock_real,reset)
BEGIN
IF (reset = '0') THEN
	z <= '0';
ELSIF (RISING_EDGE(clock_real)) THEN
	z <= SYNTHESIZED_WIRE_13;
END IF;
END PROCESS;


t_ALTERA_SYNTHESIZED(0) <= SYNTHESIZED_WIRE_14 AND SYNTHESIZED_WIRE_15 AND SYNTHESIZED_WIRE_16;


SYNTHESIZED_WIRE_14 <= NOT(x);



SYNTHESIZED_WIRE_22 <= NOT(SYNTHESIZED_WIRE_23);



SYNTHESIZED_WIRE_3 <= NOT(SYNTHESIZED_WIRE_18);



SYNTHESIZED_WIRE_16 <= NOT(y);



b2v_inst8 : mux4p1
PORT MAP(A => D(0),
		 B => x,
		 C => SYNTHESIZED_WIRE_24,
		 D => SYNTHESIZED_WIRE_24,
		 Sel => Sel,
		 S => SYNTHESIZED_WIRE_0);


b2v_inst9 : mux4p1
PORT MAP(A => D(1),
		 B => y,
		 C => SYNTHESIZED_WIRE_23,
		 D => SYNTHESIZED_WIRE_22,
		 Sel => Sel,
		 S => SYNTHESIZED_WIRE_1);


SYNTHESIZED_WIRE_24 <= NOT(x);



or1 <= y OR x;


SYNTHESIZED_WIRE_2 <= z XOR and0t1;


SYNTHESIZED_WIRE_23 <= y XOR x;


SYNTHESIZED_WIRE_18 <= z XOR or1;

t <= t_ALTERA_SYNTHESIZED;
clock_real <= clock;

Sel(0) <= '0';
END bdf_type;