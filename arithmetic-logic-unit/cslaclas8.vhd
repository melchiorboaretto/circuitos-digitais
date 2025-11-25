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
-- CREATED		"Tue Nov 25 00:36:53 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY cslaclas8 IS 
	PORT
	(
		sel :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Cout :  OUT  STD_LOGIC;
		S :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END cslaclas8;

ARCHITECTURE bdf_type OF cslaclas8 IS 

COMPONENT mux2p1
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Sel : IN STD_LOGIC;
		 S : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT fam
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 S : OUT STD_LOGIC;
		 P : OUT STD_LOGIC;
		 G : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT clu4
	PORT(Cin : IN STD_LOGIC;
		 P3 : IN STD_LOGIC;
		 P2 : IN STD_LOGIC;
		 P1 : IN STD_LOGIC;
		 P0 : IN STD_LOGIC;
		 G0 : IN STD_LOGIC;
		 G1 : IN STD_LOGIC;
		 G2 : IN STD_LOGIC;
		 G3 : IN STD_LOGIC;
		 carry4 : OUT STD_LOGIC;
		 carry3 : OUT STD_LOGIC;
		 carry2 : OUT STD_LOGIC;
		 carry1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT mux4b
	PORT(sel : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	Aout :  STD_LOGIC;
SIGNAL	Bout :  STD_LOGIC;
SIGNAL	carry1 :  STD_LOGIC;
SIGNAL	carry1a :  STD_LOGIC;
SIGNAL	carry1b :  STD_LOGIC;
SIGNAL	carry2 :  STD_LOGIC;
SIGNAL	carry2a :  STD_LOGIC;
SIGNAL	carry2b :  STD_LOGIC;
SIGNAL	carry3 :  STD_LOGIC;
SIGNAL	carry3a :  STD_LOGIC;
SIGNAL	carry3b :  STD_LOGIC;
SIGNAL	carry_select :  STD_LOGIC;
SIGNAL	g1 :  STD_LOGIC;
SIGNAL	g1a :  STD_LOGIC;
SIGNAL	g1b :  STD_LOGIC;
SIGNAL	g2 :  STD_LOGIC;
SIGNAL	g2a :  STD_LOGIC;
SIGNAL	g2b :  STD_LOGIC;
SIGNAL	g3 :  STD_LOGIC;
SIGNAL	g3a :  STD_LOGIC;
SIGNAL	g3b :  STD_LOGIC;
SIGNAL	m1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	m2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	p1 :  STD_LOGIC;
SIGNAL	p1a :  STD_LOGIC;
SIGNAL	p1b :  STD_LOGIC;
SIGNAL	p2 :  STD_LOGIC;
SIGNAL	p2a :  STD_LOGIC;
SIGNAL	p2b :  STD_LOGIC;
SIGNAL	p3 :  STD_LOGIC;
SIGNAL	p3a :  STD_LOGIC;
SIGNAL	p3b :  STD_LOGIC;
SIGNAL	S_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_22 <= '0';
SYNTHESIZED_WIRE_23 <= '1';




b2v_inst1 : mux2p1
PORT MAP(A => Aout,
		 B => Bout,
		 Sel => carry_select,
		 S => Cout);


SYNTHESIZED_WIRE_18 <= B(0) XOR sel;


SYNTHESIZED_WIRE_14 <= B(1) XOR sel;


SYNTHESIZED_WIRE_16 <= B(2) XOR sel;


SYNTHESIZED_WIRE_19 <= B(3) XOR sel;


b2v_inst14 : fam
PORT MAP(A => A(4),
		 B => SYNTHESIZED_WIRE_0,
		 Cin => SYNTHESIZED_WIRE_22,
		 S => m1(0),
		 P => SYNTHESIZED_WIRE_4,
		 G => SYNTHESIZED_WIRE_5);


b2v_inst15 : fam
PORT MAP(A => A(7),
		 B => SYNTHESIZED_WIRE_2,
		 Cin => carry3a,
		 S => m1(3),
		 P => p3a,
		 G => g3a);


b2v_inst16 : clu4
PORT MAP(Cin => SYNTHESIZED_WIRE_22,
		 P3 => p3a,
		 P2 => p2a,
		 P1 => p1a,
		 P0 => SYNTHESIZED_WIRE_4,
		 G0 => SYNTHESIZED_WIRE_5,
		 G1 => g1a,
		 G2 => g2a,
		 G3 => g3a,
		 carry4 => Aout,
		 carry3 => carry3a,
		 carry2 => carry2a,
		 carry1 => carry1a);


SYNTHESIZED_WIRE_0 <= B(4) XOR sel;


SYNTHESIZED_WIRE_15 <= B(5) XOR sel;


SYNTHESIZED_WIRE_17 <= B(6) XOR sel;


SYNTHESIZED_WIRE_2 <= B(7) XOR sel;


b2v_inst21 : fam
PORT MAP(A => A(4),
		 B => SYNTHESIZED_WIRE_6,
		 Cin => SYNTHESIZED_WIRE_23,
		 S => m2(0),
		 P => SYNTHESIZED_WIRE_9,
		 G => SYNTHESIZED_WIRE_10);


b2v_inst22 : clu4
PORT MAP(Cin => SYNTHESIZED_WIRE_23,
		 P3 => p3b,
		 P2 => p2b,
		 P1 => p1b,
		 P0 => SYNTHESIZED_WIRE_9,
		 G0 => SYNTHESIZED_WIRE_10,
		 G1 => g1b,
		 G2 => g2b,
		 G3 => g3b,
		 carry4 => Bout,
		 carry3 => carry3b,
		 carry2 => carry2b,
		 carry1 => carry1b);


b2v_inst23 : mux4b
PORT MAP(sel => carry_select,
		 A => m1,
		 B => m2,
		 S => S_ALTERA_SYNTHESIZED(7 DOWNTO 4));


b2v_inst25 : fam
PORT MAP(A => A(5),
		 B => SYNTHESIZED_WIRE_11,
		 Cin => carry1b,
		 S => m2(1),
		 P => p1b,
		 G => g1b);


b2v_inst26 : fam
PORT MAP(A => A(6),
		 B => SYNTHESIZED_WIRE_12,
		 Cin => carry2b,
		 S => m2(2),
		 P => p2b,
		 G => g2b);


b2v_inst27 : fam
PORT MAP(A => A(7),
		 B => SYNTHESIZED_WIRE_13,
		 Cin => carry3b,
		 S => m2(3),
		 P => p3b,
		 G => g3b);


SYNTHESIZED_WIRE_6 <= B(4) XOR sel;


b2v_inst3 : fam
PORT MAP(A => A(1),
		 B => SYNTHESIZED_WIRE_14,
		 Cin => carry1,
		 S => S_ALTERA_SYNTHESIZED(1),
		 P => p1,
		 G => g1);


SYNTHESIZED_WIRE_11 <= B(5) XOR sel;


SYNTHESIZED_WIRE_12 <= B(6) XOR sel;


SYNTHESIZED_WIRE_13 <= B(7) XOR sel;



b2v_inst4 : fam
PORT MAP(A => A(5),
		 B => SYNTHESIZED_WIRE_15,
		 Cin => carry1a,
		 S => m1(1),
		 P => p1a,
		 G => g1a);


b2v_inst5 : fam
PORT MAP(A => A(2),
		 B => SYNTHESIZED_WIRE_16,
		 Cin => carry2,
		 S => S_ALTERA_SYNTHESIZED(2),
		 P => p2,
		 G => g2);


b2v_inst6 : fam
PORT MAP(A => A(6),
		 B => SYNTHESIZED_WIRE_17,
		 Cin => carry2a,
		 S => m1(2),
		 P => p2a,
		 G => g2a);


b2v_inst7 : fam
PORT MAP(A => A(0),
		 B => SYNTHESIZED_WIRE_18,
		 Cin => sel,
		 S => S_ALTERA_SYNTHESIZED(0),
		 P => SYNTHESIZED_WIRE_20,
		 G => SYNTHESIZED_WIRE_21);


b2v_inst8 : fam
PORT MAP(A => A(3),
		 B => SYNTHESIZED_WIRE_19,
		 Cin => carry3,
		 S => S_ALTERA_SYNTHESIZED(3),
		 P => p3,
		 G => g3);


b2v_inst9 : clu4
PORT MAP(Cin => sel,
		 P3 => p3,
		 P2 => p2,
		 P1 => p1,
		 P0 => SYNTHESIZED_WIRE_20,
		 G0 => SYNTHESIZED_WIRE_21,
		 G1 => g1,
		 G2 => g2,
		 G3 => g3,
		 carry4 => carry_select,
		 carry3 => carry3,
		 carry2 => carry2,
		 carry1 => carry1);

S <= S_ALTERA_SYNTHESIZED;

END bdf_type;