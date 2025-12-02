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
-- CREATED		"Tue Dec 02 22:48:20 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY decoderNEANDER IS 
	PORT
	(
		A :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		CargaREM :  OUT  STD_LOGIC;
		CargaRDM :  OUT  STD_LOGIC;
		CargaPC :  OUT  STD_LOGIC;
		IncrementaPC :  OUT  STD_LOGIC;
		opFetch :  OUT  STD_LOGIC;
		writeMem :  OUT  STD_LOGIC;
		enable_control :  OUT  STD_LOGIC;
		Senc :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END decoderNEANDER;

ARCHITECTURE bdf_type OF decoderNEANDER IS 

COMPONENT timerneander
	PORT(inc : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 S : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	ADD :  STD_LOGIC;
SIGNAL	ANDx :  STD_LOGIC;
SIGNAL	clk :  STD_LOGIC;
SIGNAL	HLT :  STD_LOGIC;
SIGNAL	inc_step :  STD_LOGIC;
SIGNAL	JMP :  STD_LOGIC;
SIGNAL	JN :  STD_LOGIC;
SIGNAL	JUMP :  STD_LOGIC;
SIGNAL	JZ :  STD_LOGIC;
SIGNAL	LDA :  STD_LOGIC;
SIGNAL	NEG :  STD_LOGIC;
SIGNAL	NOP :  STD_LOGIC;
SIGNAL	NOTx :  STD_LOGIC;
SIGNAL	ORx :  STD_LOGIC;
SIGNAL	RESTO :  STD_LOGIC;
SIGNAL	STA :  STD_LOGIC;
SIGNAL	SUB :  STD_LOGIC;
SIGNAL	ULA_COM_OPERANDO :  STD_LOGIC;
SIGNAL	ULA_SEM_OPERANDO :  STD_LOGIC;
SIGNAL	XORx :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_0 <= '0';
SYNTHESIZED_WIRE_13 <= '1';



IncrementaPC <= NOP OR SYNTHESIZED_WIRE_0;








CargaPC <= JN OR JMP OR JZ;








SYNTHESIZED_WIRE_37 <= NOT(A(0));



SYNTHESIZED_WIRE_36 <= NOT(A(1));



SYNTHESIZED_WIRE_35 <= NOT(A(2));



SYNTHESIZED_WIRE_34 <= NOT(A(3));



b2v_inst25 : timerneander
PORT MAP(inc => inc_step,
		 reset => SYNTHESIZED_WIRE_13,
		 clock => clk);








JMP <= A(3) AND SYNTHESIZED_WIRE_35 AND SYNTHESIZED_WIRE_36 AND SYNTHESIZED_WIRE_37;


JN <= A(3) AND SYNTHESIZED_WIRE_36 AND SYNTHESIZED_WIRE_37 AND A(0);


JZ <= A(3) AND SYNTHESIZED_WIRE_35 AND A(1) AND SYNTHESIZED_WIRE_37;


NOP <= SYNTHESIZED_WIRE_34 AND SYNTHESIZED_WIRE_35 AND SYNTHESIZED_WIRE_36 AND SYNTHESIZED_WIRE_37;


END bdf_type;