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
-- CREATED		"Wed Dec 03 17:39:37 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY mux2b2 IS 
	PORT
	(
		A :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		C :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		D :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		Sel :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		S :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END mux2b2;

ARCHITECTURE bdf_type OF mux2b2 IS 

COMPONENT mux2b
	PORT(sel : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 S : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(1 DOWNTO 0);


BEGIN 



b2v_inst : mux2b
PORT MAP(sel => Sel(0),
		 A => A,
		 B => B,
		 S => SYNTHESIZED_WIRE_0);


b2v_inst1 : mux2b
PORT MAP(sel => Sel(0),
		 A => C,
		 B => D,
		 S => SYNTHESIZED_WIRE_1);


b2v_inst2 : mux2b
PORT MAP(sel => Sel(1),
		 A => SYNTHESIZED_WIRE_0,
		 B => SYNTHESIZED_WIRE_1,
		 S => S);


END bdf_type;