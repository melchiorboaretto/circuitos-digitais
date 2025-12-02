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
-- CREATED		"Sun Nov 30 18:27:01 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY gpr_bank IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		writeA :  IN  STD_LOGIC;
		writeB :  IN  STD_LOGIC;
		writeC :  IN  STD_LOGIC;
		writeD :  IN  STD_LOGIC;
		mulWrite :  IN  STD_LOGIC;
		dstSel :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		mulHigh :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		srcSel :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		store :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		destination :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		source :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END gpr_bank;

ARCHITECTURE bdf_type OF gpr_bank IS 

COMPONENT mux8b
	PORT(Sel : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mux8b4
	PORT(A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 C : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 D : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT register8b
	PORT(enable : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 D : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	real_d_enable :  STD_LOGIC;
SIGNAL	saidaA :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	saidaB :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	saidaC :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	saidaD :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



b2v_inst : mux8b
PORT MAP(Sel => mulWrite,
		 A => store,
		 B => mulHigh,
		 S => SYNTHESIZED_WIRE_0);


real_d_enable <= mulWrite OR writeD;


b2v_inst5 : mux8b4
PORT MAP(A => saidaA,
		 B => saidaB,
		 C => saidaC,
		 D => saidaD,
		 sel => srcSel,
		 S => source);


b2v_inst6 : mux8b4
PORT MAP(A => saidaA,
		 B => saidaB,
		 C => saidaC,
		 D => saidaD,
		 sel => dstSel,
		 S => destination);


b2v_regA : register8b
PORT MAP(enable => writeA,
		 reset => reset,
		 clock => clk,
		 D => store,
		 S => saidaA);


b2v_regB : register8b
PORT MAP(enable => writeB,
		 reset => reset,
		 clock => clk,
		 D => store,
		 S => saidaB);


b2v_regC : register8b
PORT MAP(enable => writeC,
		 reset => reset,
		 clock => clk,
		 D => store,
		 S => saidaC);


b2v_regD : register8b
PORT MAP(enable => real_d_enable,
		 reset => reset,
		 clock => clk,
		 D => SYNTHESIZED_WIRE_0,
		 S => saidaD);


END bdf_type;