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
-- CREATED		"Tue Nov 25 01:12:05 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY display4b IS 
	PORT
	(
		E :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		seg :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END display4b;

ARCHITECTURE bdf_type OF display4b IS 

COMPONENT displaya
	PORT(A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 S : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT displaye
	PORT(E : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Eneg : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT displayb
	PORT(E : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 B : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT displayc
	PORT(E : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 C : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT displayd
	PORT(E : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 D : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT displayf
	PORT(E : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 F : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT displayg
	PORT(E : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 S : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	seg_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(6 DOWNTO 0);


BEGIN 



b2v_inst1 : displaya
PORT MAP(A => E,
		 S => seg_ALTERA_SYNTHESIZED(0));


b2v_inst2 : displaye
PORT MAP(E => E,
		 Eneg => seg_ALTERA_SYNTHESIZED(4));


b2v_inst3 : displayb
PORT MAP(E => E,
		 B => seg_ALTERA_SYNTHESIZED(1));


b2v_inst4 : displayc
PORT MAP(E => E,
		 C => seg_ALTERA_SYNTHESIZED(2));


b2v_inst5 : displayd
PORT MAP(E => E,
		 D => seg_ALTERA_SYNTHESIZED(3));


b2v_inst7 : displayf
PORT MAP(E => E,
		 F => seg_ALTERA_SYNTHESIZED(5));


b2v_inst8 : displayg
PORT MAP(E => E,
		 S => seg_ALTERA_SYNTHESIZED(6));

seg <= seg_ALTERA_SYNTHESIZED;

END bdf_type;