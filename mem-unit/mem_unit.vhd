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
-- CREATED		"Sun Nov 30 16:11:15 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY mem_unit IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		read :  IN  STD_LOGIC;
		cargaREM :  IN  STD_LOGIC;
		cargaRDM :  IN  STD_LOGIC;
		write :  IN  STD_LOGIC;
		op_fetch :  IN  STD_LOGIC;
		flushall :  IN  STD_LOGIC;
		pc :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		writein :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		S :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END mem_unit;

ARCHITECTURE bdf_type OF mem_unit IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT lpm_ram_dq_0
	PORT(inclock : IN STD_LOGIC;
		 we : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_ram_dq_0: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_ram_dq_0: COMPONENT IS true;

COMPONENT mux8b
	PORT(Sel : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
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

SIGNAL	ad :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	carga :  STD_LOGIC;
SIGNAL	dad :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	dadosin :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	Flush :  STD_LOGIC;
SIGNAL	ramout :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



b2v_inst : lpm_ram_dq_0
PORT MAP(inclock => clk,
		 we => write,
		 address => ad,
		 data => dad,
		 q => ramout);


b2v_inst2 : mux8b
PORT MAP(Sel => op_fetch,
		 A => pc,
		 B => dad,
		 S => SYNTHESIZED_WIRE_0);


b2v_inst3 : mux8b
PORT MAP(Sel => read,
		 A => writein,
		 B => ramout,
		 S => dadosin);


Flush <= NOT(flushall);



carga <= read OR cargaRDM;


b2v_rdadosm : register8b
PORT MAP(enable => carga,
		 reset => Flush,
		 clock => clk,
		 D => dadosin,
		 S => dad);


b2v_rem : register8b
PORT MAP(enable => cargaREM,
		 reset => Flush,
		 clock => clk,
		 D => SYNTHESIZED_WIRE_0,
		 S => ad);

S <= ramout;

END bdf_type;