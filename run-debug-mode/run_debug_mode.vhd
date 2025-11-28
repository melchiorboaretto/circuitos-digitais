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
-- CREATED		"Fri Nov 28 13:17:29 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY run_debug_mode IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		click :  IN  STD_LOGIC;
		debugEnable :  IN  STD_LOGIC;
		clk :  OUT  STD_LOGIC
	);
END run_debug_mode;

ARCHITECTURE bdf_type OF run_debug_mode IS 

COMPONENT divfreq
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 saida : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT mux2p1
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Sel : IN STD_LOGIC;
		 S : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_0 <= '0';



b2v_inst : divfreq
PORT MAP(clk => clock,
		 reset => SYNTHESIZED_WIRE_0,
		 saida => SYNTHESIZED_WIRE_1);


b2v_inst1 : mux2p1
PORT MAP(A => SYNTHESIZED_WIRE_1,
		 B => click,
		 Sel => debugEnable,
		 S => clk);



END bdf_type;