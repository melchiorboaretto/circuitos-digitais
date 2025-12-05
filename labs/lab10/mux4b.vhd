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
-- CREATED		"Tue Nov 25 00:14:51 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY mux4b IS 
	PORT
	(
		sel :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END mux4b;

ARCHITECTURE bdf_type OF mux4b IS 

COMPONENT mux2p1
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Sel : IN STD_LOGIC;
		 S : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	S_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 



b2v_inst : mux2p1
PORT MAP(A => A(0),
		 B => B(0),
		 Sel => sel,
		 S => S_ALTERA_SYNTHESIZED(0));


b2v_inst1 : mux2p1
PORT MAP(A => A(1),
		 B => B(1),
		 Sel => sel,
		 S => S_ALTERA_SYNTHESIZED(1));


b2v_inst2 : mux2p1
PORT MAP(A => A(2),
		 B => B(2),
		 Sel => sel,
		 S => S_ALTERA_SYNTHESIZED(2));


b2v_inst3 : mux2p1
PORT MAP(A => A(3),
		 B => B(3),
		 Sel => sel,
		 S => S_ALTERA_SYNTHESIZED(3));

S <= S_ALTERA_SYNTHESIZED;

END bdf_type;