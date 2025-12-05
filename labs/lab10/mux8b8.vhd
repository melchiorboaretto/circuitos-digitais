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
-- CREATED		"Tue Nov 25 00:15:12 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY mux8b8 IS 
	PORT
	(
		A :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		C :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		D :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		E :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		F :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		G :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		H :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Sel :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		S :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END mux8b8;

ARCHITECTURE bdf_type OF mux8b8 IS 

COMPONENT mux8b
	PORT(Sel : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



b2v_inst : mux8b
PORT MAP(Sel => Sel(0),
		 A => A,
		 B => B,
		 S => SYNTHESIZED_WIRE_0);


b2v_inst1 : mux8b
PORT MAP(Sel => Sel(0),
		 A => C,
		 B => D,
		 S => SYNTHESIZED_WIRE_1);


b2v_inst2 : mux8b
PORT MAP(Sel => Sel(1),
		 A => SYNTHESIZED_WIRE_0,
		 B => SYNTHESIZED_WIRE_1,
		 S => SYNTHESIZED_WIRE_4);


b2v_inst3 : mux8b
PORT MAP(Sel => Sel(0),
		 A => E,
		 B => F,
		 S => SYNTHESIZED_WIRE_2);


b2v_inst4 : mux8b
PORT MAP(Sel => Sel(0),
		 A => G,
		 B => H,
		 S => SYNTHESIZED_WIRE_3);


b2v_inst5 : mux8b
PORT MAP(Sel => Sel(1),
		 A => SYNTHESIZED_WIRE_2,
		 B => SYNTHESIZED_WIRE_3,
		 S => SYNTHESIZED_WIRE_5);


b2v_inst6 : mux8b
PORT MAP(Sel => Sel(2),
		 A => SYNTHESIZED_WIRE_4,
		 B => SYNTHESIZED_WIRE_5,
		 S => S);


END bdf_type;