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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/07/2014 09:08:33"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	irig_b IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	pps : IN std_logic;
	enable : IN std_logic;
	update : IN std_logic;
	output : OUT std_logic;
	irq_ou : OUT std_logic;
	year : IN std_logic_vector(11 DOWNTO 0);
	day : IN std_logic_vector(8 DOWNTO 0);
	hour : IN std_logic_vector(4 DOWNTO 0);
	min : IN std_logic_vector(5 DOWNTO 0);
	sec : IN std_logic_vector(5 DOWNTO 0)
	);
END irig_b;

-- Design Ports Information
-- output	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irq_ou	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pps	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[2]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[4]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[5]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[4]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[5]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[0]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- year[11]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- year[10]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- year[9]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- year[8]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- year[7]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- year[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- year[5]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- year[4]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- year[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- year[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- day[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- day[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- day[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- day[6]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- day[7]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- day[8]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- day[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- year[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- year[0]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- day[1]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- day[0]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- update	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF irig_b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_pps : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_update : std_logic;
SIGNAL ww_output : std_logic;
SIGNAL ww_irq_ou : std_logic;
SIGNAL ww_year : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_day : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_hour : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_min : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_sec : std_logic_vector(5 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divisor|clk_ou~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \irig|year_s[8]~25clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \irig|Add9~0_combout\ : std_logic;
SIGNAL \irig|Add9~8_combout\ : std_logic;
SIGNAL \irig|Add9~12_combout\ : std_logic;
SIGNAL \irig|Add10~2_combout\ : std_logic;
SIGNAL \irig|Add10~8_combout\ : std_logic;
SIGNAL \irig|Add10~10_combout\ : std_logic;
SIGNAL \irig|Add10~12_combout\ : std_logic;
SIGNAL \irig|Add10~20_combout\ : std_logic;
SIGNAL \irig|Add10~22_combout\ : std_logic;
SIGNAL \irig|tod[6]~23_combout\ : std_logic;
SIGNAL \irig|tod[11]~33_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~18_combout\ : std_logic;
SIGNAL \irig|Add39~0_combout\ : std_logic;
SIGNAL \irig|Add38~2_combout\ : std_logic;
SIGNAL \irig|Add38~6_combout\ : std_logic;
SIGNAL \irig|Add39~2_combout\ : std_logic;
SIGNAL \irig|Add39~6_combout\ : std_logic;
SIGNAL \irig|Add29~4_combout\ : std_logic;
SIGNAL \irig|Add40~0_combout\ : std_logic;
SIGNAL \irig|Add40~1\ : std_logic;
SIGNAL \irig|Add40~2_combout\ : std_logic;
SIGNAL \irig|Add40~3\ : std_logic;
SIGNAL \irig|Add40~4_combout\ : std_logic;
SIGNAL \irig|Add40~5\ : std_logic;
SIGNAL \irig|Add40~6_combout\ : std_logic;
SIGNAL \irig|Add40~7\ : std_logic;
SIGNAL \irig|Add40~8_combout\ : std_logic;
SIGNAL \irig|Add40~9\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\ : std_logic;
SIGNAL \irig|Add41~0_combout\ : std_logic;
SIGNAL \irig|Add41~1\ : std_logic;
SIGNAL \irig|Add41~2_combout\ : std_logic;
SIGNAL \irig|Add41~3\ : std_logic;
SIGNAL \irig|Add41~4_combout\ : std_logic;
SIGNAL \irig|Add41~5\ : std_logic;
SIGNAL \irig|Add41~6_combout\ : std_logic;
SIGNAL \irig|Add41~7\ : std_logic;
SIGNAL \irig|Add41~8_combout\ : std_logic;
SIGNAL \irig|Add41~9\ : std_logic;
SIGNAL \irig|Add41~10_combout\ : std_logic;
SIGNAL \irig|Add41~11\ : std_logic;
SIGNAL \irig|Add40~10_combout\ : std_logic;
SIGNAL \irig|Add40~11\ : std_logic;
SIGNAL \irig|Add40~12_combout\ : std_logic;
SIGNAL \irig|Add40~13\ : std_logic;
SIGNAL \irig|Add40~14_combout\ : std_logic;
SIGNAL \irig|Add42~0_combout\ : std_logic;
SIGNAL \irig|Add42~1\ : std_logic;
SIGNAL \irig|Add42~2_combout\ : std_logic;
SIGNAL \irig|Add42~3\ : std_logic;
SIGNAL \irig|Add42~4_combout\ : std_logic;
SIGNAL \irig|Add42~5\ : std_logic;
SIGNAL \irig|Add42~6_combout\ : std_logic;
SIGNAL \irig|Add42~7\ : std_logic;
SIGNAL \irig|Add41~12_combout\ : std_logic;
SIGNAL \irig|Add41~13\ : std_logic;
SIGNAL \irig|Add41~14_combout\ : std_logic;
SIGNAL \irig|Add41~15\ : std_logic;
SIGNAL \irig|Add41~16_combout\ : std_logic;
SIGNAL \irig|Add43~0_combout\ : std_logic;
SIGNAL \irig|Add43~1\ : std_logic;
SIGNAL \irig|Add43~2_combout\ : std_logic;
SIGNAL \irig|Add43~3\ : std_logic;
SIGNAL \irig|Add43~4_combout\ : std_logic;
SIGNAL \irig|Add43~5\ : std_logic;
SIGNAL \irig|Add43~6_combout\ : std_logic;
SIGNAL \irig|Add43~7\ : std_logic;
SIGNAL \irig|Add43~8_combout\ : std_logic;
SIGNAL \irig|Add43~9\ : std_logic;
SIGNAL \irig|Add42~12_combout\ : std_logic;
SIGNAL \irig|Add42~13\ : std_logic;
SIGNAL \irig|Add42~14_combout\ : std_logic;
SIGNAL \irig|Add42~15\ : std_logic;
SIGNAL \irig|Add42~16_combout\ : std_logic;
SIGNAL \irig|Add43~11_combout\ : std_logic;
SIGNAL \irig|Add43~12\ : std_logic;
SIGNAL \irig|Add43~14_combout\ : std_logic;
SIGNAL \irig|Add43~15\ : std_logic;
SIGNAL \irig|Add43~19_combout\ : std_logic;
SIGNAL \irig|Add44~0_combout\ : std_logic;
SIGNAL \irig|Add44~1\ : std_logic;
SIGNAL \irig|Add44~2_combout\ : std_logic;
SIGNAL \irig|Add44~3\ : std_logic;
SIGNAL \irig|Add44~4_combout\ : std_logic;
SIGNAL \irig|Add44~5\ : std_logic;
SIGNAL \irig|Add44~6_combout\ : std_logic;
SIGNAL \irig|Add44~7\ : std_logic;
SIGNAL \irig|Add44~8_combout\ : std_logic;
SIGNAL \irig|Add44~9\ : std_logic;
SIGNAL \irig|Add44~10_combout\ : std_logic;
SIGNAL \irig|Add44~11\ : std_logic;
SIGNAL \irig|Add44~12_combout\ : std_logic;
SIGNAL \irig|Add44~13\ : std_logic;
SIGNAL \irig|Add44~14_combout\ : std_logic;
SIGNAL \irig|Add44~15\ : std_logic;
SIGNAL \irig|Add44~16_combout\ : std_logic;
SIGNAL \irig|Add30~0_combout\ : std_logic;
SIGNAL \irig|Add30~1\ : std_logic;
SIGNAL \irig|Add30~2_combout\ : std_logic;
SIGNAL \irig|Add30~3\ : std_logic;
SIGNAL \irig|Add30~4_combout\ : std_logic;
SIGNAL \irig|Add30~5\ : std_logic;
SIGNAL \irig|Add30~6_combout\ : std_logic;
SIGNAL \irig|Add30~7\ : std_logic;
SIGNAL \irig|Add30~8_combout\ : std_logic;
SIGNAL \irig|Add30~9\ : std_logic;
SIGNAL \irig|Add30~10_combout\ : std_logic;
SIGNAL \irig|Add30~11\ : std_logic;
SIGNAL \irig|Add30~12_combout\ : std_logic;
SIGNAL \irig|Add30~13\ : std_logic;
SIGNAL \irig|Add30~14_combout\ : std_logic;
SIGNAL \irig|Add32~0_combout\ : std_logic;
SIGNAL \irig|Add32~1\ : std_logic;
SIGNAL \irig|Add31~0_combout\ : std_logic;
SIGNAL \irig|Add31~1\ : std_logic;
SIGNAL \irig|Add31~2_combout\ : std_logic;
SIGNAL \irig|Add31~3\ : std_logic;
SIGNAL \irig|Add31~4_combout\ : std_logic;
SIGNAL \irig|Add31~5\ : std_logic;
SIGNAL \irig|Add31~6_combout\ : std_logic;
SIGNAL \irig|Add31~7\ : std_logic;
SIGNAL \irig|Add31~8_combout\ : std_logic;
SIGNAL \irig|Add31~9\ : std_logic;
SIGNAL \irig|Add31~10_combout\ : std_logic;
SIGNAL \irig|Add32~2_combout\ : std_logic;
SIGNAL \irig|Add32~3\ : std_logic;
SIGNAL \irig|Add32~4_combout\ : std_logic;
SIGNAL \irig|Add32~5\ : std_logic;
SIGNAL \irig|Add32~6_combout\ : std_logic;
SIGNAL \irig|Add32~7\ : std_logic;
SIGNAL \irig|Add32~8_combout\ : std_logic;
SIGNAL \irig|Add32~9\ : std_logic;
SIGNAL \irig|Add32~10_combout\ : std_logic;
SIGNAL \irig|Add32~11\ : std_logic;
SIGNAL \irig|Add32~12_combout\ : std_logic;
SIGNAL \irig|Add33~0_combout\ : std_logic;
SIGNAL \irig|Add33~1\ : std_logic;
SIGNAL \irig|Add33~2_combout\ : std_logic;
SIGNAL \irig|Add33~3\ : std_logic;
SIGNAL \irig|Add33~4_combout\ : std_logic;
SIGNAL \irig|Add33~5\ : std_logic;
SIGNAL \irig|Add33~6_combout\ : std_logic;
SIGNAL \irig|Add33~7\ : std_logic;
SIGNAL \irig|Add34~0_combout\ : std_logic;
SIGNAL \irig|Add34~1\ : std_logic;
SIGNAL \irig|Add34~2_combout\ : std_logic;
SIGNAL \irig|Add34~3\ : std_logic;
SIGNAL \irig|Add34~4_combout\ : std_logic;
SIGNAL \irig|Add34~5\ : std_logic;
SIGNAL \irig|Add34~6_combout\ : std_logic;
SIGNAL \irig|Add34~7\ : std_logic;
SIGNAL \irig|Add34~8_combout\ : std_logic;
SIGNAL \irig|Add34~9\ : std_logic;
SIGNAL \irig|Add33~8_combout\ : std_logic;
SIGNAL \irig|Add33~9\ : std_logic;
SIGNAL \irig|Add33~10_combout\ : std_logic;
SIGNAL \irig|Add33~11\ : std_logic;
SIGNAL \irig|Add33~12_combout\ : std_logic;
SIGNAL \irig|Add33~13\ : std_logic;
SIGNAL \irig|Add33~14_combout\ : std_logic;
SIGNAL \irig|Add34~10_combout\ : std_logic;
SIGNAL \irig|Add34~11\ : std_logic;
SIGNAL \irig|Add34~12_combout\ : std_logic;
SIGNAL \irig|Add34~13\ : std_logic;
SIGNAL \irig|Add34~14_combout\ : std_logic;
SIGNAL \irig|Add34~15\ : std_logic;
SIGNAL \irig|Add34~16_combout\ : std_logic;
SIGNAL \irig|Add35~0_combout\ : std_logic;
SIGNAL \irig|Add35~1\ : std_logic;
SIGNAL \irig|Add35~2_combout\ : std_logic;
SIGNAL \irig|Add35~3\ : std_logic;
SIGNAL \irig|Add35~4_combout\ : std_logic;
SIGNAL \irig|Add35~5\ : std_logic;
SIGNAL \irig|Add35~6_combout\ : std_logic;
SIGNAL \irig|Add35~7\ : std_logic;
SIGNAL \irig|Add35~8_combout\ : std_logic;
SIGNAL \irig|Add35~9\ : std_logic;
SIGNAL \irig|Add35~10_combout\ : std_logic;
SIGNAL \irig|Add35~11\ : std_logic;
SIGNAL \irig|Add35~12_combout\ : std_logic;
SIGNAL \irig|Add20~0_combout\ : std_logic;
SIGNAL \irig|Add20~2_combout\ : std_logic;
SIGNAL \irig|Add21~6_combout\ : std_logic;
SIGNAL \irig|Add36~4_combout\ : std_logic;
SIGNAL \irig|Add36~5\ : std_logic;
SIGNAL \irig|Add36~6_combout\ : std_logic;
SIGNAL \irig|Add36~7\ : std_logic;
SIGNAL \irig|Add36~8_combout\ : std_logic;
SIGNAL \irig|Add36~9\ : std_logic;
SIGNAL \irig|Add36~10_combout\ : std_logic;
SIGNAL \irig|Add36~11\ : std_logic;
SIGNAL \irig|Add36~12_combout\ : std_logic;
SIGNAL \irig|Add36~13\ : std_logic;
SIGNAL \irig|Add36~14_combout\ : std_logic;
SIGNAL \irig|Add36~15\ : std_logic;
SIGNAL \irig|Add36~16_combout\ : std_logic;
SIGNAL \irig|Add36~17\ : std_logic;
SIGNAL \irig|Add36~18_combout\ : std_logic;
SIGNAL \irig|Add37~0_combout\ : std_logic;
SIGNAL \irig|Add37~1\ : std_logic;
SIGNAL \irig|Add37~2_combout\ : std_logic;
SIGNAL \irig|Add37~3\ : std_logic;
SIGNAL \irig|Add37~4_combout\ : std_logic;
SIGNAL \irig|Add37~5\ : std_logic;
SIGNAL \irig|Add37~6_combout\ : std_logic;
SIGNAL \irig|Add37~7\ : std_logic;
SIGNAL \irig|Add37~8_combout\ : std_logic;
SIGNAL \irig|Add37~9\ : std_logic;
SIGNAL \irig|Add37~10_combout\ : std_logic;
SIGNAL \irig|Add37~11\ : std_logic;
SIGNAL \irig|Add37~12_combout\ : std_logic;
SIGNAL \irig|Add37~13\ : std_logic;
SIGNAL \irig|Add37~14_combout\ : std_logic;
SIGNAL \irig|Add37~15\ : std_logic;
SIGNAL \irig|Add37~16_combout\ : std_logic;
SIGNAL \irig|Add22~2_combout\ : std_logic;
SIGNAL \irig|Add22~16_combout\ : std_logic;
SIGNAL \irig|Add23~0_combout\ : std_logic;
SIGNAL \irig|Add23~1\ : std_logic;
SIGNAL \irig|Add23~2_combout\ : std_logic;
SIGNAL \irig|Add23~3\ : std_logic;
SIGNAL \irig|Add23~4_combout\ : std_logic;
SIGNAL \irig|Add23~5\ : std_logic;
SIGNAL \irig|Add23~6_combout\ : std_logic;
SIGNAL \irig|Add23~7\ : std_logic;
SIGNAL \irig|Add23~8_combout\ : std_logic;
SIGNAL \irig|Add23~9\ : std_logic;
SIGNAL \irig|Add23~10_combout\ : std_logic;
SIGNAL \irig|Add23~11\ : std_logic;
SIGNAL \irig|Add23~12_combout\ : std_logic;
SIGNAL \irig|Add23~13\ : std_logic;
SIGNAL \irig|Add23~14_combout\ : std_logic;
SIGNAL \irig|Add23~15\ : std_logic;
SIGNAL \irig|Add23~16_combout\ : std_logic;
SIGNAL \irig|Add14~6_combout\ : std_logic;
SIGNAL \irig|Add16~2_combout\ : std_logic;
SIGNAL \irig|Add16~14_combout\ : std_logic;
SIGNAL \irig|Add17~0_combout\ : std_logic;
SIGNAL \irig|Add17~1\ : std_logic;
SIGNAL \irig|Add17~2_combout\ : std_logic;
SIGNAL \irig|Add17~3\ : std_logic;
SIGNAL \irig|Add17~4_combout\ : std_logic;
SIGNAL \irig|Add17~5\ : std_logic;
SIGNAL \irig|Add17~6_combout\ : std_logic;
SIGNAL \irig|Add17~7\ : std_logic;
SIGNAL \irig|Add17~8_combout\ : std_logic;
SIGNAL \irig|Add17~9\ : std_logic;
SIGNAL \irig|Add17~10_combout\ : std_logic;
SIGNAL \irig|Add17~11\ : std_logic;
SIGNAL \irig|Add17~12_combout\ : std_logic;
SIGNAL \irig|Add17~13\ : std_logic;
SIGNAL \irig|Add17~14_combout\ : std_logic;
SIGNAL \irig|Add17~15\ : std_logic;
SIGNAL \irig|Add17~16_combout\ : std_logic;
SIGNAL \irig|Add27~0_combout\ : std_logic;
SIGNAL \irig|Add27~1\ : std_logic;
SIGNAL \irig|Add27~2_combout\ : std_logic;
SIGNAL \irig|Add27~3\ : std_logic;
SIGNAL \irig|Add27~4_combout\ : std_logic;
SIGNAL \irig|Add27~5\ : std_logic;
SIGNAL \irig|Add27~7_combout\ : std_logic;
SIGNAL \irig|Add27~8\ : std_logic;
SIGNAL \irig|Add27~10_combout\ : std_logic;
SIGNAL \irig|Add27~11\ : std_logic;
SIGNAL \irig|Add27~13_combout\ : std_logic;
SIGNAL \irig|Add27~14\ : std_logic;
SIGNAL \irig|Add27~16_combout\ : std_logic;
SIGNAL \irig|Add28~0_combout\ : std_logic;
SIGNAL \irig|Add28~1\ : std_logic;
SIGNAL \irig|Add28~2_combout\ : std_logic;
SIGNAL \irig|Add28~3\ : std_logic;
SIGNAL \irig|Add28~4_combout\ : std_logic;
SIGNAL \irig|Add28~5\ : std_logic;
SIGNAL \irig|Add28~6_combout\ : std_logic;
SIGNAL \irig|Add28~7\ : std_logic;
SIGNAL \irig|Add28~8_combout\ : std_logic;
SIGNAL \irig|Add28~9\ : std_logic;
SIGNAL \irig|Add28~10_combout\ : std_logic;
SIGNAL \irig|Add28~11\ : std_logic;
SIGNAL \irig|Add28~12_combout\ : std_logic;
SIGNAL \irig|Add28~13\ : std_logic;
SIGNAL \irig|Add28~14_combout\ : std_logic;
SIGNAL \irig|Add28~15\ : std_logic;
SIGNAL \irig|Add28~16_combout\ : std_logic;
SIGNAL \divisor|Add0~14_combout\ : std_logic;
SIGNAL \divisor|Add0~34_combout\ : std_logic;
SIGNAL \divisor|Add0~48_combout\ : std_logic;
SIGNAL \divisor|Add0~60_combout\ : std_logic;
SIGNAL \irig|Add0~4\ : std_logic;
SIGNAL \irig|Add0~5_combout\ : std_logic;
SIGNAL \irig|Add0~6\ : std_logic;
SIGNAL \irig|Add0~7_combout\ : std_logic;
SIGNAL \irig|Add0~8\ : std_logic;
SIGNAL \irig|Add0~9_combout\ : std_logic;
SIGNAL \irig|Add0~10\ : std_logic;
SIGNAL \irig|Add0~11_combout\ : std_logic;
SIGNAL \irig|Add0~12\ : std_logic;
SIGNAL \irig|Add0~13_combout\ : std_logic;
SIGNAL \irig|Add5~0_combout\ : std_logic;
SIGNAL \irig|Add5~2_combout\ : std_logic;
SIGNAL \irig|Add5~4_combout\ : std_logic;
SIGNAL \irig|Add5~12_combout\ : std_logic;
SIGNAL \irig|Add5~14_combout\ : std_logic;
SIGNAL \irig|Add5~18_combout\ : std_logic;
SIGNAL \irig|Add5~21\ : std_logic;
SIGNAL \irig|Add5~22_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~14_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~8_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~8_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~15\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~16_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\ : std_logic;
SIGNAL \irig|output~10_combout\ : std_logic;
SIGNAL \irig|output~30_combout\ : std_logic;
SIGNAL \irig|output~31_combout\ : std_logic;
SIGNAL \irig|Mux1~26_combout\ : std_logic;
SIGNAL \irig|Mux1~27_combout\ : std_logic;
SIGNAL \irig|Mux1~28_combout\ : std_logic;
SIGNAL \irig|Mux1~30_combout\ : std_logic;
SIGNAL \irig|Mux1~31_combout\ : std_logic;
SIGNAL \irig|Mux1~32_combout\ : std_logic;
SIGNAL \irig|Mux1~33_combout\ : std_logic;
SIGNAL \irig|Mux1~34_combout\ : std_logic;
SIGNAL \irig|Mux1~35_combout\ : std_logic;
SIGNAL \irig|Mux1~36_combout\ : std_logic;
SIGNAL \irig|Mux1~37_combout\ : std_logic;
SIGNAL \irig|Mux1~38_combout\ : std_logic;
SIGNAL \irig|Mux1~39_combout\ : std_logic;
SIGNAL \irig|Mux1~48_combout\ : std_logic;
SIGNAL \irig|Mult0|mult_core|romout[0][15]~0_combout\ : std_logic;
SIGNAL \irig|Mult0|mult_core|romout[0][14]~1_combout\ : std_logic;
SIGNAL \irig|Mult0|mult_core|romout[0][13]~2_combout\ : std_logic;
SIGNAL \irig|Add8~2_combout\ : std_logic;
SIGNAL \irig|Mult0|mult_core|romout[0][11]~4_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[78]~115_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[77]~116_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[76]~119_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[75]~120_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[74]~123_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[73]~125_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[90]~127_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[88]~129_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[87]~130_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[86]~132_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[85]~134_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[103]~136_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[97]~145_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[114]~149_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[113]~150_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[109]~157_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[124]~158_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[122]~160_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[130]~165_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[127]~168_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[125]~170_combout\ : std_logic;
SIGNAL \irig|aux~1_combout\ : std_logic;
SIGNAL \irig|aux~4_combout\ : std_logic;
SIGNAL \irig|aux~9_combout\ : std_logic;
SIGNAL \irig|aux~11_combout\ : std_logic;
SIGNAL \irig|aux~12_combout\ : std_logic;
SIGNAL \irig|aux~13_combout\ : std_logic;
SIGNAL \irig|aux~14_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[120]~179_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[120]~180_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[133]~181_combout\ : std_logic;
SIGNAL \irig|LessThan44~2_combout\ : std_logic;
SIGNAL \irig|LessThan44~3_combout\ : std_logic;
SIGNAL \irig|LessThan44~4_combout\ : std_logic;
SIGNAL \irig|LessThan44~5_combout\ : std_logic;
SIGNAL \irig|aux~15_combout\ : std_logic;
SIGNAL \irig|aux~16_combout\ : std_logic;
SIGNAL \irig|aux~17_combout\ : std_logic;
SIGNAL \irig|LessThan45~0_combout\ : std_logic;
SIGNAL \irig|LessThan45~1_combout\ : std_logic;
SIGNAL \irig|LessThan45~2_combout\ : std_logic;
SIGNAL \irig|Add42~8_combout\ : std_logic;
SIGNAL \irig|Add42~9_combout\ : std_logic;
SIGNAL \irig|Add42~10_combout\ : std_logic;
SIGNAL \irig|Add42~11_combout\ : std_logic;
SIGNAL \irig|aux~18_combout\ : std_logic;
SIGNAL \irig|LessThan45~3_combout\ : std_logic;
SIGNAL \irig|LessThan45~4_combout\ : std_logic;
SIGNAL \irig|LessThan46~0_combout\ : std_logic;
SIGNAL \irig|LessThan46~1_combout\ : std_logic;
SIGNAL \irig|LessThan46~2_combout\ : std_logic;
SIGNAL \irig|Add43~10_combout\ : std_logic;
SIGNAL \irig|Add42~18_combout\ : std_logic;
SIGNAL \irig|Add43~13_combout\ : std_logic;
SIGNAL \irig|Add42~19_combout\ : std_logic;
SIGNAL \irig|Add43~16_combout\ : std_logic;
SIGNAL \irig|Add43~17_combout\ : std_logic;
SIGNAL \irig|aux~19_combout\ : std_logic;
SIGNAL \irig|Add43~18_combout\ : std_logic;
SIGNAL \irig|Add42~20_combout\ : std_logic;
SIGNAL \irig|LessThan46~3_combout\ : std_logic;
SIGNAL \irig|LessThan47~0_combout\ : std_logic;
SIGNAL \irig|LessThan47~1_combout\ : std_logic;
SIGNAL \irig|LessThan47~2_combout\ : std_logic;
SIGNAL \irig|Add43~21_combout\ : std_logic;
SIGNAL \irig|Add43~22_combout\ : std_logic;
SIGNAL \irig|Add43~23_combout\ : std_logic;
SIGNAL \irig|LessThan48~0_combout\ : std_logic;
SIGNAL \irig|LessThan48~1_combout\ : std_logic;
SIGNAL \irig|LessThan48~2_combout\ : std_logic;
SIGNAL \irig|LessThan48~3_combout\ : std_logic;
SIGNAL \irig|LessThan33~0_combout\ : std_logic;
SIGNAL \irig|aux~20_combout\ : std_logic;
SIGNAL \irig|aux~21_combout\ : std_logic;
SIGNAL \irig|aux~22_combout\ : std_logic;
SIGNAL \irig|LessThan33~1_combout\ : std_logic;
SIGNAL \irig|aux~23_combout\ : std_logic;
SIGNAL \irig|aux~24_combout\ : std_logic;
SIGNAL \irig|aux~25_combout\ : std_logic;
SIGNAL \irig|LessThan34~2_combout\ : std_logic;
SIGNAL \irig|LessThan34~3_combout\ : std_logic;
SIGNAL \irig|aux~26_combout\ : std_logic;
SIGNAL \irig|LessThan34~4_combout\ : std_logic;
SIGNAL \irig|aux~27_combout\ : std_logic;
SIGNAL \irig|aux~28_combout\ : std_logic;
SIGNAL \irig|aux~29_combout\ : std_logic;
SIGNAL \irig|LessThan35~0_combout\ : std_logic;
SIGNAL \irig|LessThan35~1_combout\ : std_logic;
SIGNAL \irig|aux~30_combout\ : std_logic;
SIGNAL \irig|LessThan35~2_combout\ : std_logic;
SIGNAL \irig|aux~31_combout\ : std_logic;
SIGNAL \irig|aux~32_combout\ : std_logic;
SIGNAL \irig|aux~33_combout\ : std_logic;
SIGNAL \irig|aux~34_combout\ : std_logic;
SIGNAL \irig|LessThan36~0_combout\ : std_logic;
SIGNAL \irig|LessThan36~1_combout\ : std_logic;
SIGNAL \irig|LessThan36~2_combout\ : std_logic;
SIGNAL \irig|aux~35_combout\ : std_logic;
SIGNAL \irig|LessThan37~2_combout\ : std_logic;
SIGNAL \irig|LessThan37~3_combout\ : std_logic;
SIGNAL \irig|aux~36_combout\ : std_logic;
SIGNAL \irig|aux~37_combout\ : std_logic;
SIGNAL \irig|LessThan38~0_combout\ : std_logic;
SIGNAL \irig|LessThan38~1_combout\ : std_logic;
SIGNAL \irig|aux~38_combout\ : std_logic;
SIGNAL \irig|Add35~14_combout\ : std_logic;
SIGNAL \irig|LessThan38~2_combout\ : std_logic;
SIGNAL \irig|LessThan20~1_combout\ : std_logic;
SIGNAL \irig|Add19~0_combout\ : std_logic;
SIGNAL \irig|aux~46_combout\ : std_logic;
SIGNAL \irig|Add35~15_combout\ : std_logic;
SIGNAL \irig|Add35~16_combout\ : std_logic;
SIGNAL \irig|Add35~17_combout\ : std_logic;
SIGNAL \irig|Add35~18_combout\ : std_logic;
SIGNAL \irig|Add35~19_combout\ : std_logic;
SIGNAL \irig|Add35~20_combout\ : std_logic;
SIGNAL \irig|Add36~20_combout\ : std_logic;
SIGNAL \irig|Add36~21_combout\ : std_logic;
SIGNAL \irig|Add36~22_combout\ : std_logic;
SIGNAL \irig|Add36~23_combout\ : std_logic;
SIGNAL \irig|Add36~24_combout\ : std_logic;
SIGNAL \irig|Add36~25_combout\ : std_logic;
SIGNAL \irig|Add36~26_combout\ : std_logic;
SIGNAL \irig|Add36~27_combout\ : std_logic;
SIGNAL \irig|aux~47_combout\ : std_logic;
SIGNAL \irig|LessThan40~0_combout\ : std_logic;
SIGNAL \irig|LessThan40~1_combout\ : std_logic;
SIGNAL \irig|LessThan40~2_combout\ : std_logic;
SIGNAL \irig|LessThan39~2_combout\ : std_logic;
SIGNAL \irig|LessThan39~3_combout\ : std_logic;
SIGNAL \irig|LessThan40~3_combout\ : std_logic;
SIGNAL \irig|Add22~18_combout\ : std_logic;
SIGNAL \irig|aux~48_combout\ : std_logic;
SIGNAL \irig|Add22~24_combout\ : std_logic;
SIGNAL \irig|Add22~25_combout\ : std_logic;
SIGNAL \irig|LessThan24~0_combout\ : std_logic;
SIGNAL \irig|LessThan24~1_combout\ : std_logic;
SIGNAL \irig|LessThan24~2_combout\ : std_logic;
SIGNAL \irig|LessThan24~3_combout\ : std_logic;
SIGNAL \irig|Add13~0_combout\ : std_logic;
SIGNAL \irig|Add16~16_combout\ : std_logic;
SIGNAL \irig|Add16~17_combout\ : std_logic;
SIGNAL \irig|Add16~22_combout\ : std_logic;
SIGNAL \irig|LessThan17~0_combout\ : std_logic;
SIGNAL \irig|Add16~23_combout\ : std_logic;
SIGNAL \irig|LessThan17~1_combout\ : std_logic;
SIGNAL \irig|LessThan17~2_combout\ : std_logic;
SIGNAL \irig|LessThan17~3_combout\ : std_logic;
SIGNAL \irig|Add27~6_combout\ : std_logic;
SIGNAL \irig|Add27~9_combout\ : std_logic;
SIGNAL \irig|Add27~12_combout\ : std_logic;
SIGNAL \irig|Add27~15_combout\ : std_logic;
SIGNAL \irig|LessThan29~0_combout\ : std_logic;
SIGNAL \irig|Add27~18_combout\ : std_logic;
SIGNAL \irig|Add27~19_combout\ : std_logic;
SIGNAL \irig|LessThan29~1_combout\ : std_logic;
SIGNAL \irig|LessThan29~2_combout\ : std_logic;
SIGNAL \irig|Add27~20_combout\ : std_logic;
SIGNAL \irig|LessThan30~0_combout\ : std_logic;
SIGNAL \irig|LessThan30~1_combout\ : std_logic;
SIGNAL \irig|LessThan30~2_combout\ : std_logic;
SIGNAL \irig|LessThan30~3_combout\ : std_logic;
SIGNAL \divisor|Equal0~3_combout\ : std_logic;
SIGNAL \divisor|Equal0~5_combout\ : std_logic;
SIGNAL \divisor|Equal0~6_combout\ : std_logic;
SIGNAL \divisor|Equal0~7_combout\ : std_logic;
SIGNAL \divisor|Equal0~8_combout\ : std_logic;
SIGNAL \divisor|Equal0~9_combout\ : std_logic;
SIGNAL \divisor|LessThan0~2_combout\ : std_logic;
SIGNAL \irig|aux~62_combout\ : std_logic;
SIGNAL \irig|hour_s[0]~15_combout\ : std_logic;
SIGNAL \irig|min_s[0]~12_combout\ : std_logic;
SIGNAL \irig|Add5~24_combout\ : std_logic;
SIGNAL \irig|Mult0|mult_core|romout[0][13]~5_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[104]~82_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[103]~85_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[102]~86_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[101]~89_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[100]~91_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[99]~92_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[115]~96_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[112]~100_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[98]~102_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[98]~103_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[111]~104_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[128]~105_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[125]~108_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[120]~126_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[120]~127_combout\ : std_logic;
SIGNAL \irig|year_s[8]~13_combout\ : std_logic;
SIGNAL \irig|year_s[8]~14_combout\ : std_logic;
SIGNAL \irig|year_s[8]~15_combout\ : std_logic;
SIGNAL \irig|year_s[8]~18_combout\ : std_logic;
SIGNAL \irig|year_s[8]~19_combout\ : std_logic;
SIGNAL \irig|year_s[8]~24_combout\ : std_logic;
SIGNAL \irig|Add5~26_combout\ : std_logic;
SIGNAL \irig|Add5~28_combout\ : std_logic;
SIGNAL \irig|Add5~29_combout\ : std_logic;
SIGNAL \irig|Add5~33_combout\ : std_logic;
SIGNAL \irig|Add5~34_combout\ : std_logic;
SIGNAL \irig|Add5~35_combout\ : std_logic;
SIGNAL \divisor|aux~2_combout\ : std_logic;
SIGNAL \divisor|aux~7_combout\ : std_logic;
SIGNAL \divisor|aux~13_combout\ : std_logic;
SIGNAL \divisor|aux~16_combout\ : std_logic;
SIGNAL \divisor|aux~18_combout\ : std_logic;
SIGNAL \divisor|aux~22_combout\ : std_logic;
SIGNAL \divisor|aux~23_combout\ : std_logic;
SIGNAL \divisor|aux~27_combout\ : std_logic;
SIGNAL \divisor|aux~28_combout\ : std_logic;
SIGNAL \irig|Mux1~71_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[116]~188_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[129]~196_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[126]~199_combout\ : std_logic;
SIGNAL \irig|LessThan44~6_combout\ : std_logic;
SIGNAL \irig|LessThan34~5_combout\ : std_logic;
SIGNAL \irig|LessThan37~4_combout\ : std_logic;
SIGNAL \irig|Add36~28_combout\ : std_logic;
SIGNAL \irig|LessThan39~4_combout\ : std_logic;
SIGNAL \irig|Add22~26_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[91]~201_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[98]~207_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[116]~134_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[113]~137_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[124]~139_combout\ : std_logic;
SIGNAL \irig|year_c[7]~0_combout\ : std_logic;
SIGNAL \irig|day_c[7]~2_combout\ : std_logic;
SIGNAL \irig|day_c[5]~3_combout\ : std_logic;
SIGNAL \irig|day_c[6]~4_combout\ : std_logic;
SIGNAL \irig|day_c[4]~5_combout\ : std_logic;
SIGNAL \irig|year_c[4]~3_combout\ : std_logic;
SIGNAL \irig|min_c[4]~0_combout\ : std_logic;
SIGNAL \irig|sec_c[4]~0_combout\ : std_logic;
SIGNAL \irig|sec_c[5]~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \hour[3]~input_o\ : std_logic;
SIGNAL \hour[4]~input_o\ : std_logic;
SIGNAL \hour[0]~input_o\ : std_logic;
SIGNAL \min[0]~input_o\ : std_logic;
SIGNAL \min[1]~input_o\ : std_logic;
SIGNAL \sec[5]~input_o\ : std_logic;
SIGNAL \sec[4]~input_o\ : std_logic;
SIGNAL \sec[3]~input_o\ : std_logic;
SIGNAL \sec[2]~input_o\ : std_logic;
SIGNAL \sec[1]~input_o\ : std_logic;
SIGNAL \sec[0]~input_o\ : std_logic;
SIGNAL \year[11]~input_o\ : std_logic;
SIGNAL \year[10]~input_o\ : std_logic;
SIGNAL \year[9]~input_o\ : std_logic;
SIGNAL \year[7]~input_o\ : std_logic;
SIGNAL \year[6]~input_o\ : std_logic;
SIGNAL \year[5]~input_o\ : std_logic;
SIGNAL \year[2]~input_o\ : std_logic;
SIGNAL \day[4]~input_o\ : std_logic;
SIGNAL \day[7]~input_o\ : std_logic;
SIGNAL \year[1]~input_o\ : std_logic;
SIGNAL \year[0]~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \irig|year_c[3]~feeder_combout\ : std_logic;
SIGNAL \irig|year_c[2]~feeder_combout\ : std_logic;
SIGNAL \output~output_o\ : std_logic;
SIGNAL \irq_ou~output_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \irig|Add6~0_combout\ : std_logic;
SIGNAL \pps~input_o\ : std_logic;
SIGNAL \irig|pre_pps~feeder_combout\ : std_logic;
SIGNAL \irig|pre_pps~q\ : std_logic;
SIGNAL \irig|ctrlclk~0_combout\ : std_logic;
SIGNAL \irig|tmp[0]~3_combout\ : std_logic;
SIGNAL \irig|tmp[2]~1_combout\ : std_logic;
SIGNAL \irig|tmp~0_combout\ : std_logic;
SIGNAL \irig|tmp~2_combout\ : std_logic;
SIGNAL \irig|Equal6~1_combout\ : std_logic;
SIGNAL \irig|Add6~1\ : std_logic;
SIGNAL \irig|Add6~3\ : std_logic;
SIGNAL \irig|Add6~5\ : std_logic;
SIGNAL \irig|Add6~6_combout\ : std_logic;
SIGNAL \irig|Add6~4_combout\ : std_logic;
SIGNAL \irig|cnt~2_combout\ : std_logic;
SIGNAL \irig|Add6~2_combout\ : std_logic;
SIGNAL \irig|Equal17~1_combout\ : std_logic;
SIGNAL \irig|Add6~7\ : std_logic;
SIGNAL \irig|Add6~8_combout\ : std_logic;
SIGNAL \irig|Add6~9\ : std_logic;
SIGNAL \irig|Add6~10_combout\ : std_logic;
SIGNAL \irig|cnt~1_combout\ : std_logic;
SIGNAL \irig|Equal17~2_combout\ : std_logic;
SIGNAL \irig|Add6~11\ : std_logic;
SIGNAL \irig|Add6~12_combout\ : std_logic;
SIGNAL \irig|cnt~0_combout\ : std_logic;
SIGNAL \irig|output~3_combout\ : std_logic;
SIGNAL \irig|output~44_combout\ : std_logic;
SIGNAL \irig|ctrlcon~0_combout\ : std_logic;
SIGNAL \irig|output~12_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \prev_pps~feeder_combout\ : std_logic;
SIGNAL \prev_pps~q\ : std_logic;
SIGNAL \rs~0_combout\ : std_logic;
SIGNAL \rs~q\ : std_logic;
SIGNAL \irig|Add0~3_combout\ : std_logic;
SIGNAL \update~input_o\ : std_logic;
SIGNAL \up~0_combout\ : std_logic;
SIGNAL \up~q\ : std_logic;
SIGNAL \irig|Add0~24_combout\ : std_logic;
SIGNAL \irig|Add0~22_combout\ : std_logic;
SIGNAL \irig|Add0~23_combout\ : std_logic;
SIGNAL \irig|Add0~25_combout\ : std_logic;
SIGNAL \irig|min_s[0]~15_combout\ : std_logic;
SIGNAL \min[5]~input_o\ : std_logic;
SIGNAL \min[4]~input_o\ : std_logic;
SIGNAL \min[3]~input_o\ : std_logic;
SIGNAL \irig|Add8~7_combout\ : std_logic;
SIGNAL \irig|min_s[1]~13_combout\ : std_logic;
SIGNAL \irig|Add2~0_combout\ : std_logic;
SIGNAL \min[2]~input_o\ : std_logic;
SIGNAL \irig|min_s[2]~10_combout\ : std_logic;
SIGNAL \irig|min_s[2]~11_combout\ : std_logic;
SIGNAL \irig|aux~61_combout\ : std_logic;
SIGNAL \irig|min_s[2]~14_combout\ : std_logic;
SIGNAL \irig|min_s[3]~8_combout\ : std_logic;
SIGNAL \irig|min_s[3]~9_combout\ : std_logic;
SIGNAL \irig|Add2~1_combout\ : std_logic;
SIGNAL \irig|min_s[4]~6_combout\ : std_logic;
SIGNAL \irig|min_s[4]~7_combout\ : std_logic;
SIGNAL \irig|min_s[5]~4_combout\ : std_logic;
SIGNAL \irig|min_s[5]~5_combout\ : std_logic;
SIGNAL \irig|Add8~0_combout\ : std_logic;
SIGNAL \irig|Add8~1_combout\ : std_logic;
SIGNAL \irig|Add8~3_combout\ : std_logic;
SIGNAL \irig|Add8~4_combout\ : std_logic;
SIGNAL \irig|Add9~1\ : std_logic;
SIGNAL \irig|Add9~3\ : std_logic;
SIGNAL \irig|Add9~5\ : std_logic;
SIGNAL \irig|Add9~7\ : std_logic;
SIGNAL \irig|Add9~9\ : std_logic;
SIGNAL \irig|Add9~11\ : std_logic;
SIGNAL \irig|Add9~13\ : std_logic;
SIGNAL \irig|Add9~14_combout\ : std_logic;
SIGNAL \hour[2]~input_o\ : std_logic;
SIGNAL \irig|Add1~0_combout\ : std_logic;
SIGNAL \irig|hour_s[0]~8_combout\ : std_logic;
SIGNAL \irig|year_s[8]~0_combout\ : std_logic;
SIGNAL \irig|hour_s[0]~16_combout\ : std_logic;
SIGNAL \hour[1]~input_o\ : std_logic;
SIGNAL \irig|hour_s[1]~9_combout\ : std_logic;
SIGNAL \irig|hour_s[1]~10_combout\ : std_logic;
SIGNAL \irig|hour_s[2]~11_combout\ : std_logic;
SIGNAL \irig|hour_s[2]~12_combout\ : std_logic;
SIGNAL \irig|Add3~0_combout\ : std_logic;
SIGNAL \irig|hour_s[4]~13_combout\ : std_logic;
SIGNAL \irig|hour_s[4]~14_combout\ : std_logic;
SIGNAL \irig|hour_s[4]~4_combout\ : std_logic;
SIGNAL \irig|hour_s[4]~5_combout\ : std_logic;
SIGNAL \irig|hour_s[3]~6_combout\ : std_logic;
SIGNAL \irig|hour_s[3]~7_combout\ : std_logic;
SIGNAL \irig|Mult0|mult_core|romout[0][12]~3_combout\ : std_logic;
SIGNAL \irig|Add9~10_combout\ : std_logic;
SIGNAL \irig|Mult0|mult_core|romout[0][10]~combout\ : std_logic;
SIGNAL \irig|Add9~6_combout\ : std_logic;
SIGNAL \irig|Add9~4_combout\ : std_logic;
SIGNAL \irig|Add9~2_combout\ : std_logic;
SIGNAL \irig|Add8~5_combout\ : std_logic;
SIGNAL \irig|Add8~6_combout\ : std_logic;
SIGNAL \irig|Add10~1\ : std_logic;
SIGNAL \irig|Add10~3\ : std_logic;
SIGNAL \irig|Add10~5\ : std_logic;
SIGNAL \irig|Add10~7\ : std_logic;
SIGNAL \irig|Add10~9\ : std_logic;
SIGNAL \irig|Add10~11\ : std_logic;
SIGNAL \irig|Add10~13\ : std_logic;
SIGNAL \irig|Add10~15\ : std_logic;
SIGNAL \irig|Add10~17\ : std_logic;
SIGNAL \irig|Add10~18_combout\ : std_logic;
SIGNAL \irig|Add10~16_combout\ : std_logic;
SIGNAL \irig|Add10~14_combout\ : std_logic;
SIGNAL \irig|Add10~6_combout\ : std_logic;
SIGNAL \irig|Add10~4_combout\ : std_logic;
SIGNAL \irig|Add0~20_combout\ : std_logic;
SIGNAL \irig|Add0~21_combout\ : std_logic;
SIGNAL \irig|Add0~18_combout\ : std_logic;
SIGNAL \irig|Add0~19_combout\ : std_logic;
SIGNAL \irig|Add1~1_combout\ : std_logic;
SIGNAL \irig|Add0~16_combout\ : std_logic;
SIGNAL \irig|Add0~17_combout\ : std_logic;
SIGNAL \irig|Add0~2_combout\ : std_logic;
SIGNAL \irig|Add0~15_combout\ : std_logic;
SIGNAL \irig|Add10~0_combout\ : std_logic;
SIGNAL \irig|tod[2]~16\ : std_logic;
SIGNAL \irig|tod[3]~18\ : std_logic;
SIGNAL \irig|tod[4]~20\ : std_logic;
SIGNAL \irig|tod[5]~22\ : std_logic;
SIGNAL \irig|tod[6]~24\ : std_logic;
SIGNAL \irig|tod[7]~26\ : std_logic;
SIGNAL \irig|tod[8]~28\ : std_logic;
SIGNAL \irig|tod[9]~30\ : std_logic;
SIGNAL \irig|tod[10]~32\ : std_logic;
SIGNAL \irig|tod[11]~34\ : std_logic;
SIGNAL \irig|tod[12]~36\ : std_logic;
SIGNAL \irig|tod[13]~38\ : std_logic;
SIGNAL \irig|tod[14]~40\ : std_logic;
SIGNAL \irig|tod[15]~41_combout\ : std_logic;
SIGNAL \irig|ctrlcon~2_combout\ : std_logic;
SIGNAL \irig|ctrlcon~1_combout\ : std_logic;
SIGNAL \irig|ctrlcon~3_combout\ : std_logic;
SIGNAL \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \irig|Add10~19\ : std_logic;
SIGNAL \irig|Add10~21\ : std_logic;
SIGNAL \irig|Add10~23\ : std_logic;
SIGNAL \irig|Add10~24_combout\ : std_logic;
SIGNAL \irig|tod[15]~42\ : std_logic;
SIGNAL \irig|tod[16]~43_combout\ : std_logic;
SIGNAL \irig|output~9_combout\ : std_logic;
SIGNAL \irig|ctrlout~3_combout\ : std_logic;
SIGNAL \irig|ctrlout~4_combout\ : std_logic;
SIGNAL \irig|ctrlout~24_combout\ : std_logic;
SIGNAL \irig|ctrlout~25_combout\ : std_logic;
SIGNAL \irig|ctrlout~26_combout\ : std_logic;
SIGNAL \irig|Mux1~4_combout\ : std_logic;
SIGNAL \irig|ctrlout~14_combout\ : std_logic;
SIGNAL \irig|ctrlout~15_combout\ : std_logic;
SIGNAL \irig|ctrlout~16_combout\ : std_logic;
SIGNAL \irig|ctrlout~17_combout\ : std_logic;
SIGNAL \irig|ctrlout~18_combout\ : std_logic;
SIGNAL \irig|output~11_combout\ : std_logic;
SIGNAL \irig|ctrlout~19_combout\ : std_logic;
SIGNAL \irig|ctrlout~20_combout\ : std_logic;
SIGNAL \irig|ctrlout~22_combout\ : std_logic;
SIGNAL \irig|ctrlout~21_combout\ : std_logic;
SIGNAL \irig|ctrlout~23_combout\ : std_logic;
SIGNAL \irig|output~13_combout\ : std_logic;
SIGNAL \irig|output~14_combout\ : std_logic;
SIGNAL \irig|output~15_combout\ : std_logic;
SIGNAL \irig|Mux1~18_combout\ : std_logic;
SIGNAL \irig|Mux1~19_combout\ : std_logic;
SIGNAL \irig|year_s[8]~1_combout\ : std_logic;
SIGNAL \irig|year_s[8]~25_combout\ : std_logic;
SIGNAL \irig|year_s[8]~25clkctrl_outclk\ : std_logic;
SIGNAL \year[4]~input_o\ : std_logic;
SIGNAL \irig|Add5~1\ : std_logic;
SIGNAL \irig|Add5~3\ : std_logic;
SIGNAL \irig|Add5~5\ : std_logic;
SIGNAL \irig|Add5~7\ : std_logic;
SIGNAL \irig|Add5~8_combout\ : std_logic;
SIGNAL \irig|Add5~31_combout\ : std_logic;
SIGNAL \irig|Add5~9\ : std_logic;
SIGNAL \irig|Add5~11\ : std_logic;
SIGNAL \irig|Add5~13\ : std_logic;
SIGNAL \irig|Add5~15\ : std_logic;
SIGNAL \irig|Add5~17\ : std_logic;
SIGNAL \irig|Add5~19\ : std_logic;
SIGNAL \irig|Add5~20_combout\ : std_logic;
SIGNAL \irig|Add5~25_combout\ : std_logic;
SIGNAL \year[8]~input_o\ : std_logic;
SIGNAL \irig|Add5~16_combout\ : std_logic;
SIGNAL \irig|Add5~27_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[78]~114_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[77]~117_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[76]~118_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[75]~121_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[74]~122_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[73]~124_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[91]~126_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[90]~202_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[89]~128_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[88]~204_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[87]~205_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[86]~131_combout\ : std_logic;
SIGNAL \irig|Add5~10_combout\ : std_logic;
SIGNAL \irig|Add5~30_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[85]~133_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[104]~135_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[103]~183_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[102]~137_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[101]~138_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[100]~186_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[98]~141_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[97]~142_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[111]~210_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[117]~146_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[116]~147_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[115]~148_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[101]~185_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[114]~190_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[113]~191_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[112]~151_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[111]~152_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[110]~153_combout\ : std_logic;
SIGNAL \year[3]~input_o\ : std_logic;
SIGNAL \irig|Add5~6_combout\ : std_logic;
SIGNAL \irig|Add5~32_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[109]~154_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~13\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~15\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~17\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[124]~193_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[123]~159_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[96]~155_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[96]~156_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[108]~162_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[108]~163_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[104]~182_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[117]~187_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[130]~195_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[129]~166_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[89]~203_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[102]~184_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[115]~189_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[128]~197_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[127]~198_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[126]~169_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[99]~206_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[112]~192_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[125]~200_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~13\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~15\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~17\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~19\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[137]~171_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[138]~173_combout\ : std_logic;
SIGNAL \irig|LessThan41~4_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[141]~174_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[139]~176_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[140]~175_combout\ : std_logic;
SIGNAL \irig|LessThan41~5_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[84]~143_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[84]~144_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[110]~208_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[123]~194_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[136]~172_combout\ : std_logic;
SIGNAL \irig|Add38~1\ : std_logic;
SIGNAL \irig|Add38~3\ : std_logic;
SIGNAL \irig|Add38~4_combout\ : std_logic;
SIGNAL \irig|aux~2_combout\ : std_logic;
SIGNAL \irig|Add38~5\ : std_logic;
SIGNAL \irig|Add38~7\ : std_logic;
SIGNAL \irig|Add38~8_combout\ : std_logic;
SIGNAL \irig|LessThan41~6_combout\ : std_logic;
SIGNAL \irig|Add38~9\ : std_logic;
SIGNAL \irig|Add38~10_combout\ : std_logic;
SIGNAL \irig|LessThan42~1_combout\ : std_logic;
SIGNAL \irig|Add38~0_combout\ : std_logic;
SIGNAL \irig|aux~0_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[135]~177_combout\ : std_logic;
SIGNAL \irig|LessThan42~2_combout\ : std_logic;
SIGNAL \irig|LessThan42~3_combout\ : std_logic;
SIGNAL \irig|year_c[6]~2_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[121]~161_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|StageOut[134]~178_combout\ : std_logic;
SIGNAL \irig|LessThan42~0_combout\ : std_logic;
SIGNAL \irig|aux~3_combout\ : std_logic;
SIGNAL \irig|Add39~1\ : std_logic;
SIGNAL \irig|Add39~3\ : std_logic;
SIGNAL \irig|Add39~4_combout\ : std_logic;
SIGNAL \irig|aux~5_combout\ : std_logic;
SIGNAL \irig|LessThan43~0_combout\ : std_logic;
SIGNAL \irig|Add39~5\ : std_logic;
SIGNAL \irig|Add39~7\ : std_logic;
SIGNAL \irig|Add39~9\ : std_logic;
SIGNAL \irig|Add39~11\ : std_logic;
SIGNAL \irig|Add39~12_combout\ : std_logic;
SIGNAL \irig|Add39~8_combout\ : std_logic;
SIGNAL \irig|Add39~10_combout\ : std_logic;
SIGNAL \irig|LessThan43~1_combout\ : std_logic;
SIGNAL \irig|LessThan43~2_combout\ : std_logic;
SIGNAL \irig|LessThan43~3_combout\ : std_logic;
SIGNAL \irig|year_c[5]~1_combout\ : std_logic;
SIGNAL \irig|day_s[0]~24_combout\ : std_logic;
SIGNAL \day[2]~input_o\ : std_logic;
SIGNAL \irig|day_s[2]~18_combout\ : std_logic;
SIGNAL \day[1]~input_o\ : std_logic;
SIGNAL \irig|day_s[1]~20_combout\ : std_logic;
SIGNAL \irig|day_s[1]~21_combout\ : std_logic;
SIGNAL \day[0]~input_o\ : std_logic;
SIGNAL \irig|day_s[0]~22_combout\ : std_logic;
SIGNAL \irig|day_s[0]~23_combout\ : std_logic;
SIGNAL \irig|Add4~1\ : std_logic;
SIGNAL \irig|Add4~2_combout\ : std_logic;
SIGNAL \irig|Add4~0_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~7\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~8_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~9\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[104]~83_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[103]~84_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[102]~87_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[101]~88_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[100]~90_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[99]~93_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~9\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~11\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[117]~94_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[116]~95_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[115]~135_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[114]~97_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[113]~98_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[112]~99_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[111]~101_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~7\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~9\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~11\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~13\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[121]~122_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[108]~123_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[108]~124_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[121]~125_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~20_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[110]~110_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[97]~111_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[97]~112_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~16_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[110]~113_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~16_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[123]~114_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~0_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[96]~119_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[96]~118_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[109]~120_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[109]~117_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[122]~141_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~18_combout\ : std_logic;
SIGNAL \irig|year_s[8]~4_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[124]~109_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~1\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~2_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[125]~138_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~3\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~4_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[126]~107_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~5\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~6_combout\ : std_logic;
SIGNAL \irig|year_s[8]~3_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~12_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[130]~116_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[129]~131_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[128]~128_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[127]~106_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~7\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~9\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~11\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~13\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~14_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~12_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\ : std_logic;
SIGNAL \irig|year_s[8]~2_combout\ : std_logic;
SIGNAL \irig|year_s[8]~5_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[117]~133_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[130]~132_combout\ : std_logic;
SIGNAL \irig|year_s[8]~10_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[129]~115_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[126]~130_combout\ : std_logic;
SIGNAL \irig|year_s[8]~12_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[114]~136_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[127]~129_combout\ : std_logic;
SIGNAL \irig|Mod1|auto_generated|divider|divider|StageOut[123]~140_combout\ : std_logic;
SIGNAL \irig|year_s[8]~11_combout\ : std_logic;
SIGNAL \irig|year_s[8]~16_combout\ : std_logic;
SIGNAL \irig|year_s[8]~17_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~16_combout\ : std_logic;
SIGNAL \irig|year_s[8]~9_combout\ : std_logic;
SIGNAL \irig|year_s[8]~20_combout\ : std_logic;
SIGNAL \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~16_combout\ : std_logic;
SIGNAL \irig|year_s[8]~6_combout\ : std_logic;
SIGNAL \irig|year_s[8]~7_combout\ : std_logic;
SIGNAL \irig|year_s[8]~8_combout\ : std_logic;
SIGNAL \irig|year_s[8]~21_combout\ : std_logic;
SIGNAL \irig|year_s[8]~22_combout\ : std_logic;
SIGNAL \irig|Add4~3\ : std_logic;
SIGNAL \irig|Add4~4_combout\ : std_logic;
SIGNAL \irig|year_s[8]~23_combout\ : std_logic;
SIGNAL \irig|Add4~14_combout\ : std_logic;
SIGNAL \irig|day_s[0]~4_combout\ : std_logic;
SIGNAL \irig|day_s[4]~6_combout\ : std_logic;
SIGNAL \irig|day_s[2]~19_combout\ : std_logic;
SIGNAL \irig|Add4~5\ : std_logic;
SIGNAL \irig|Add4~7\ : std_logic;
SIGNAL \irig|Add4~9\ : std_logic;
SIGNAL \irig|Add4~11\ : std_logic;
SIGNAL \irig|Add4~12_combout\ : std_logic;
SIGNAL \day[6]~input_o\ : std_logic;
SIGNAL \irig|day_s[6]~12_combout\ : std_logic;
SIGNAL \irig|day_s[6]~13_combout\ : std_logic;
SIGNAL \irig|Add4~13\ : std_logic;
SIGNAL \irig|Add4~15\ : std_logic;
SIGNAL \irig|Add4~16_combout\ : std_logic;
SIGNAL \day[8]~input_o\ : std_logic;
SIGNAL \irig|day_s[8]~16_combout\ : std_logic;
SIGNAL \irig|day_s[8]~17_combout\ : std_logic;
SIGNAL \day[3]~input_o\ : std_logic;
SIGNAL \irig|day_s[3]~8_combout\ : std_logic;
SIGNAL \irig|Add4~6_combout\ : std_logic;
SIGNAL \irig|day_s[3]~9_combout\ : std_logic;
SIGNAL \irig|Add4~10_combout\ : std_logic;
SIGNAL \day[5]~input_o\ : std_logic;
SIGNAL \irig|day_s[5]~5_combout\ : std_logic;
SIGNAL \irig|day_s[5]~7_combout\ : std_logic;
SIGNAL \irig|LessThan31~0_combout\ : std_logic;
SIGNAL \irig|LessThan31~1_combout\ : std_logic;
SIGNAL \irig|day_c[9]~0_combout\ : std_logic;
SIGNAL \irig|Add29~1\ : std_logic;
SIGNAL \irig|Add29~3\ : std_logic;
SIGNAL \irig|Add29~5\ : std_logic;
SIGNAL \irig|Add29~6_combout\ : std_logic;
SIGNAL \irig|aux~10_combout\ : std_logic;
SIGNAL \irig|Add4~8_combout\ : std_logic;
SIGNAL \irig|day_s[4]~10_combout\ : std_logic;
SIGNAL \irig|day_s[4]~11_combout\ : std_logic;
SIGNAL \irig|Add29~2_combout\ : std_logic;
SIGNAL \irig|aux~8_combout\ : std_logic;
SIGNAL \irig|Add29~0_combout\ : std_logic;
SIGNAL \irig|aux~7_combout\ : std_logic;
SIGNAL \irig|LessThan32~1_combout\ : std_logic;
SIGNAL \irig|Add29~7\ : std_logic;
SIGNAL \irig|Add29~9\ : std_logic;
SIGNAL \irig|Add29~11\ : std_logic;
SIGNAL \irig|Add29~12_combout\ : std_logic;
SIGNAL \irig|Add29~10_combout\ : std_logic;
SIGNAL \irig|day_s[7]~14_combout\ : std_logic;
SIGNAL \irig|day_s[7]~15_combout\ : std_logic;
SIGNAL \irig|Add29~8_combout\ : std_logic;
SIGNAL \irig|aux~6_combout\ : std_logic;
SIGNAL \irig|LessThan32~0_combout\ : std_logic;
SIGNAL \irig|LessThan32~2_combout\ : std_logic;
SIGNAL \irig|day_c[8]~1_combout\ : std_logic;
SIGNAL \irig|Mux1~20_combout\ : std_logic;
SIGNAL \irig|Mux1~70_combout\ : std_logic;
SIGNAL \irig|Mux1~21_combout\ : std_logic;
SIGNAL \irig|Mux1~22_combout\ : std_logic;
SIGNAL \irig|Mux1~6_combout\ : std_logic;
SIGNAL \irig|Mux1~23_combout\ : std_logic;
SIGNAL \irig|Mux1~24_combout\ : std_logic;
SIGNAL \irig|Mux1~25_combout\ : std_logic;
SIGNAL \irig|output~40_combout\ : std_logic;
SIGNAL \irig|tod[10]~31_combout\ : std_logic;
SIGNAL \irig|output~32_combout\ : std_logic;
SIGNAL \irig|output~33_combout\ : std_logic;
SIGNAL \irig|tod[3]~17_combout\ : std_logic;
SIGNAL \irig|output~36_combout\ : std_logic;
SIGNAL \irig|output~37_combout\ : std_logic;
SIGNAL \irig|tod[7]~25_combout\ : std_logic;
SIGNAL \irig|output~34_combout\ : std_logic;
SIGNAL \irig|output~35_combout\ : std_logic;
SIGNAL \irig|Mux1~15_combout\ : std_logic;
SIGNAL \irig|tod[14]~39_combout\ : std_logic;
SIGNAL \irig|output~38_combout\ : std_logic;
SIGNAL \irig|output~39_combout\ : std_logic;
SIGNAL \irig|Mux1~16_combout\ : std_logic;
SIGNAL \irig|Mux1~5_combout\ : std_logic;
SIGNAL \irig|tod[12]~35_combout\ : std_logic;
SIGNAL \irig|tod[5]~21_combout\ : std_logic;
SIGNAL \irig|Mux1~7_combout\ : std_logic;
SIGNAL \irig|Mux1~8_combout\ : std_logic;
SIGNAL \irig|Mux1~9_combout\ : std_logic;
SIGNAL \irig|tod[13]~37_combout\ : std_logic;
SIGNAL \irig|output~22_combout\ : std_logic;
SIGNAL \irig|output~23_combout\ : std_logic;
SIGNAL \irig|output~18_combout\ : std_logic;
SIGNAL \irig|output~19_combout\ : std_logic;
SIGNAL \irig|tod[2]~15_combout\ : std_logic;
SIGNAL \irig|output~20_combout\ : std_logic;
SIGNAL \irig|output~21_combout\ : std_logic;
SIGNAL \irig|Mux1~10_combout\ : std_logic;
SIGNAL \irig|tod[9]~29_combout\ : std_logic;
SIGNAL \irig|output~16_combout\ : std_logic;
SIGNAL \irig|output~17_combout\ : std_logic;
SIGNAL \irig|Mux1~11_combout\ : std_logic;
SIGNAL \irig|tod[4]~19_combout\ : std_logic;
SIGNAL \irig|output~26_combout\ : std_logic;
SIGNAL \irig|output~27_combout\ : std_logic;
SIGNAL \irig|output~28_combout\ : std_logic;
SIGNAL \irig|output~29_combout\ : std_logic;
SIGNAL \irig|Mux1~12_combout\ : std_logic;
SIGNAL \irig|tod[8]~27_combout\ : std_logic;
SIGNAL \irig|output~24_combout\ : std_logic;
SIGNAL \irig|output~25_combout\ : std_logic;
SIGNAL \irig|Mux1~13_combout\ : std_logic;
SIGNAL \irig|Mux1~14_combout\ : std_logic;
SIGNAL \irig|Mux1~17_combout\ : std_logic;
SIGNAL \irig|output~41_combout\ : std_logic;
SIGNAL \irig|Mux1~52_combout\ : std_logic;
SIGNAL \irig|aux~49_combout\ : std_logic;
SIGNAL \irig|hour_c[4]~0_combout\ : std_logic;
SIGNAL \irig|Mux1~49_combout\ : std_logic;
SIGNAL \irig|Mux1~50_combout\ : std_logic;
SIGNAL \irig|aux~40_combout\ : std_logic;
SIGNAL \irig|aux~39_combout\ : std_logic;
SIGNAL \irig|LessThan20~0_combout\ : std_logic;
SIGNAL \irig|Add20~1\ : std_logic;
SIGNAL \irig|Add20~3\ : std_logic;
SIGNAL \irig|Add20~4_combout\ : std_logic;
SIGNAL \irig|aux~42_combout\ : std_logic;
SIGNAL \irig|aux~41_combout\ : std_logic;
SIGNAL \irig|Add20~5\ : std_logic;
SIGNAL \irig|Add20~7\ : std_logic;
SIGNAL \irig|Add20~9\ : std_logic;
SIGNAL \irig|Add20~10_combout\ : std_logic;
SIGNAL \irig|aux~43_combout\ : std_logic;
SIGNAL \irig|Add20~6_combout\ : std_logic;
SIGNAL \irig|Add20~11\ : std_logic;
SIGNAL \irig|Add20~12_combout\ : std_logic;
SIGNAL \irig|Add20~8_combout\ : std_logic;
SIGNAL \irig|LessThan21~0_combout\ : std_logic;
SIGNAL \irig|LessThan21~1_combout\ : std_logic;
SIGNAL \irig|Add21~1\ : std_logic;
SIGNAL \irig|Add21~2_combout\ : std_logic;
SIGNAL \irig|aux~44_combout\ : std_logic;
SIGNAL \irig|Add21~0_combout\ : std_logic;
SIGNAL \irig|aux~45_combout\ : std_logic;
SIGNAL \irig|Add21~3\ : std_logic;
SIGNAL \irig|Add21~5\ : std_logic;
SIGNAL \irig|Add21~7\ : std_logic;
SIGNAL \irig|Add21~9\ : std_logic;
SIGNAL \irig|Add21~11\ : std_logic;
SIGNAL \irig|Add21~12_combout\ : std_logic;
SIGNAL \irig|Add21~4_combout\ : std_logic;
SIGNAL \irig|Add21~10_combout\ : std_logic;
SIGNAL \irig|Add21~8_combout\ : std_logic;
SIGNAL \irig|LessThan22~0_combout\ : std_logic;
SIGNAL \irig|LessThan22~1_combout\ : std_logic;
SIGNAL \irig|LessThan22~2_combout\ : std_logic;
SIGNAL \irig|Add22~3\ : std_logic;
SIGNAL \irig|Add22~5\ : std_logic;
SIGNAL \irig|Add22~7\ : std_logic;
SIGNAL \irig|Add22~9\ : std_logic;
SIGNAL \irig|Add22~10_combout\ : std_logic;
SIGNAL \irig|Add22~12_combout\ : std_logic;
SIGNAL \irig|Add22~11\ : std_logic;
SIGNAL \irig|Add22~13_combout\ : std_logic;
SIGNAL \irig|Add22~15_combout\ : std_logic;
SIGNAL \irig|Add22~8_combout\ : std_logic;
SIGNAL \irig|Add22~21_combout\ : std_logic;
SIGNAL \irig|Add22~6_combout\ : std_logic;
SIGNAL \irig|Add22~20_combout\ : std_logic;
SIGNAL \irig|Add22~4_combout\ : std_logic;
SIGNAL \irig|Add22~19_combout\ : std_logic;
SIGNAL \irig|LessThan23~0_combout\ : std_logic;
SIGNAL \irig|Add22~14\ : std_logic;
SIGNAL \irig|Add22~17\ : std_logic;
SIGNAL \irig|Add22~22_combout\ : std_logic;
SIGNAL \irig|LessThan23~1_combout\ : std_logic;
SIGNAL \irig|LessThan23~2_combout\ : std_logic;
SIGNAL \irig|Mux1~46_combout\ : std_logic;
SIGNAL \irig|Mux1~47_combout\ : std_logic;
SIGNAL \irig|Mux1~51_combout\ : std_logic;
SIGNAL \irig|Mux1~42_combout\ : std_logic;
SIGNAL \irig|LessThan25~0_combout\ : std_logic;
SIGNAL \irig|Mux1~43_combout\ : std_logic;
SIGNAL \irig|Mux1~44_combout\ : std_logic;
SIGNAL \irig|LessThan11~0_combout\ : std_logic;
SIGNAL \irig|Mux1~40_combout\ : std_logic;
SIGNAL \irig|Mux1~41_combout\ : std_logic;
SIGNAL \irig|Mux1~45_combout\ : std_logic;
SIGNAL \irig|Mux1~53_combout\ : std_logic;
SIGNAL \irig|aux~59_combout\ : std_logic;
SIGNAL \irig|aux~60_combout\ : std_logic;
SIGNAL \irig|Mux1~65_combout\ : std_logic;
SIGNAL \irig|Mux1~66_combout\ : std_logic;
SIGNAL \irig|Equal6~0_combout\ : std_logic;
SIGNAL \irig|Mux1~67_combout\ : std_logic;
SIGNAL \irig|Equal17~0_combout\ : std_logic;
SIGNAL \irig|aux~52_combout\ : std_logic;
SIGNAL \irig|aux~50_combout\ : std_logic;
SIGNAL \irig|LessThan13~0_combout\ : std_logic;
SIGNAL \irig|aux~51_combout\ : std_logic;
SIGNAL \irig|LessThan13~1_combout\ : std_logic;
SIGNAL \irig|Add14~1\ : std_logic;
SIGNAL \irig|Add14~3\ : std_logic;
SIGNAL \irig|Add14~5\ : std_logic;
SIGNAL \irig|Add14~7\ : std_logic;
SIGNAL \irig|Add14~9\ : std_logic;
SIGNAL \irig|Add14~10_combout\ : std_logic;
SIGNAL \irig|aux~54_combout\ : std_logic;
SIGNAL \irig|Add14~8_combout\ : std_logic;
SIGNAL \irig|Add14~11\ : std_logic;
SIGNAL \irig|Add14~12_combout\ : std_logic;
SIGNAL \irig|LessThan14~0_combout\ : std_logic;
SIGNAL \irig|LessThan14~1_combout\ : std_logic;
SIGNAL \irig|Mux1~57_combout\ : std_logic;
SIGNAL \irig|Mux1~58_combout\ : std_logic;
SIGNAL \irig|Mux1~59_combout\ : std_logic;
SIGNAL \irig|Mux1~62_combout\ : std_logic;
SIGNAL \irig|Mux1~29_combout\ : std_logic;
SIGNAL \irig|Add14~4_combout\ : std_logic;
SIGNAL \irig|aux~53_combout\ : std_logic;
SIGNAL \irig|Add15~0_combout\ : std_logic;
SIGNAL \irig|aux~56_combout\ : std_logic;
SIGNAL \irig|Add15~1\ : std_logic;
SIGNAL \irig|Add15~2_combout\ : std_logic;
SIGNAL \irig|aux~55_combout\ : std_logic;
SIGNAL \irig|Add15~3\ : std_logic;
SIGNAL \irig|Add15~4_combout\ : std_logic;
SIGNAL \irig|Add15~5\ : std_logic;
SIGNAL \irig|Add15~7\ : std_logic;
SIGNAL \irig|Add15~8_combout\ : std_logic;
SIGNAL \irig|Add15~9\ : std_logic;
SIGNAL \irig|Add15~10_combout\ : std_logic;
SIGNAL \irig|LessThan15~0_combout\ : std_logic;
SIGNAL \irig|Add15~11\ : std_logic;
SIGNAL \irig|Add15~12_combout\ : std_logic;
SIGNAL \irig|LessThan15~1_combout\ : std_logic;
SIGNAL \irig|LessThan15~2_combout\ : std_logic;
SIGNAL \irig|Add15~6_combout\ : std_logic;
SIGNAL \irig|Add14~2_combout\ : std_logic;
SIGNAL \irig|aux~57_combout\ : std_logic;
SIGNAL \irig|Add16~1\ : std_logic;
SIGNAL \irig|Add16~3\ : std_logic;
SIGNAL \irig|Add16~5\ : std_logic;
SIGNAL \irig|Add16~7\ : std_logic;
SIGNAL \irig|Add16~8_combout\ : std_logic;
SIGNAL \irig|Add16~10_combout\ : std_logic;
SIGNAL \irig|Add16~9\ : std_logic;
SIGNAL \irig|Add16~11_combout\ : std_logic;
SIGNAL \irig|Add16~13_combout\ : std_logic;
SIGNAL \irig|Add16~0_combout\ : std_logic;
SIGNAL \irig|Add16~12\ : std_logic;
SIGNAL \irig|Add16~15\ : std_logic;
SIGNAL \irig|Add16~20_combout\ : std_logic;
SIGNAL \irig|Add14~0_combout\ : std_logic;
SIGNAL \irig|aux~58_combout\ : std_logic;
SIGNAL \irig|Add16~6_combout\ : std_logic;
SIGNAL \irig|Add16~19_combout\ : std_logic;
SIGNAL \irig|Add16~4_combout\ : std_logic;
SIGNAL \irig|Add16~18_combout\ : std_logic;
SIGNAL \irig|LessThan16~2_combout\ : std_logic;
SIGNAL \irig|LessThan16~4_combout\ : std_logic;
SIGNAL \irig|LessThan16~3_combout\ : std_logic;
SIGNAL \irig|Mux1~60_combout\ : std_logic;
SIGNAL \irig|Mux1~61_combout\ : std_logic;
SIGNAL \irig|Mux1~63_combout\ : std_logic;
SIGNAL \irig|Mux1~64_combout\ : std_logic;
SIGNAL \irig|Mux1~54_combout\ : std_logic;
SIGNAL \irig|LessThan18~0_combout\ : std_logic;
SIGNAL \irig|min_c[5]~1_combout\ : std_logic;
SIGNAL \irig|Mux1~55_combout\ : std_logic;
SIGNAL \irig|Mux1~56_combout\ : std_logic;
SIGNAL \irig|Mux1~68_combout\ : std_logic;
SIGNAL \irig|Mux1~69_combout\ : std_logic;
SIGNAL \irig|output~42_combout\ : std_logic;
SIGNAL \irig|output~43_combout\ : std_logic;
SIGNAL \irig|output~combout\ : std_logic;
SIGNAL \divisor|pre_pps~0_combout\ : std_logic;
SIGNAL \divisor|pre_pps~q\ : std_logic;
SIGNAL \divisor|aux~4_combout\ : std_logic;
SIGNAL \divisor|aux~12_combout\ : std_logic;
SIGNAL \divisor|Add0~1\ : std_logic;
SIGNAL \divisor|Add0~2_combout\ : std_logic;
SIGNAL \divisor|aux~29_combout\ : std_logic;
SIGNAL \divisor|Add0~3\ : std_logic;
SIGNAL \divisor|Add0~4_combout\ : std_logic;
SIGNAL \divisor|aux~30_combout\ : std_logic;
SIGNAL \divisor|Add0~5\ : std_logic;
SIGNAL \divisor|Add0~6_combout\ : std_logic;
SIGNAL \divisor|aux~31_combout\ : std_logic;
SIGNAL \divisor|Add0~7\ : std_logic;
SIGNAL \divisor|Add0~8_combout\ : std_logic;
SIGNAL \divisor|aux~24_combout\ : std_logic;
SIGNAL \divisor|Add0~9\ : std_logic;
SIGNAL \divisor|Add0~10_combout\ : std_logic;
SIGNAL \divisor|aux~25_combout\ : std_logic;
SIGNAL \divisor|Add0~11\ : std_logic;
SIGNAL \divisor|Add0~12_combout\ : std_logic;
SIGNAL \divisor|aux~26_combout\ : std_logic;
SIGNAL \divisor|Add0~13\ : std_logic;
SIGNAL \divisor|Add0~15\ : std_logic;
SIGNAL \divisor|Add0~16_combout\ : std_logic;
SIGNAL \divisor|aux~20_combout\ : std_logic;
SIGNAL \divisor|Add0~17\ : std_logic;
SIGNAL \divisor|Add0~18_combout\ : std_logic;
SIGNAL \divisor|aux~21_combout\ : std_logic;
SIGNAL \divisor|Add0~19\ : std_logic;
SIGNAL \divisor|Add0~21\ : std_logic;
SIGNAL \divisor|Add0~23\ : std_logic;
SIGNAL \divisor|Add0~25\ : std_logic;
SIGNAL \divisor|Add0~26_combout\ : std_logic;
SIGNAL \divisor|aux~17_combout\ : std_logic;
SIGNAL \divisor|Add0~27\ : std_logic;
SIGNAL \divisor|Add0~29\ : std_logic;
SIGNAL \divisor|Add0~30_combout\ : std_logic;
SIGNAL \divisor|aux~19_combout\ : std_logic;
SIGNAL \divisor|Add0~31\ : std_logic;
SIGNAL \divisor|Add0~33\ : std_logic;
SIGNAL \divisor|Add0~35\ : std_logic;
SIGNAL \divisor|Add0~36_combout\ : std_logic;
SIGNAL \divisor|aux~14_combout\ : std_logic;
SIGNAL \divisor|Add0~37\ : std_logic;
SIGNAL \divisor|Add0~38_combout\ : std_logic;
SIGNAL \divisor|aux~15_combout\ : std_logic;
SIGNAL \divisor|Add0~39\ : std_logic;
SIGNAL \divisor|Add0~40_combout\ : std_logic;
SIGNAL \divisor|aux~8_combout\ : std_logic;
SIGNAL \divisor|Add0~41\ : std_logic;
SIGNAL \divisor|Add0~42_combout\ : std_logic;
SIGNAL \divisor|aux~9_combout\ : std_logic;
SIGNAL \divisor|Add0~43\ : std_logic;
SIGNAL \divisor|Add0~44_combout\ : std_logic;
SIGNAL \divisor|aux~10_combout\ : std_logic;
SIGNAL \divisor|Add0~45\ : std_logic;
SIGNAL \divisor|Add0~46_combout\ : std_logic;
SIGNAL \divisor|aux~11_combout\ : std_logic;
SIGNAL \divisor|Add0~47\ : std_logic;
SIGNAL \divisor|Add0~49\ : std_logic;
SIGNAL \divisor|Add0~50_combout\ : std_logic;
SIGNAL \divisor|aux~5_combout\ : std_logic;
SIGNAL \divisor|Add0~51\ : std_logic;
SIGNAL \divisor|Add0~52_combout\ : std_logic;
SIGNAL \divisor|aux~6_combout\ : std_logic;
SIGNAL \divisor|Equal0~1_combout\ : std_logic;
SIGNAL \divisor|aux~1_combout\ : std_logic;
SIGNAL \divisor|Add0~53\ : std_logic;
SIGNAL \divisor|Add0~55\ : std_logic;
SIGNAL \divisor|Add0~56_combout\ : std_logic;
SIGNAL \divisor|aux~0_combout\ : std_logic;
SIGNAL \divisor|Equal0~0_combout\ : std_logic;
SIGNAL \divisor|Equal0~2_combout\ : std_logic;
SIGNAL \divisor|Equal0~4_combout\ : std_logic;
SIGNAL \divisor|contar~0_combout\ : std_logic;
SIGNAL \divisor|aux~3_combout\ : std_logic;
SIGNAL \divisor|Add0~57\ : std_logic;
SIGNAL \divisor|Add0~59\ : std_logic;
SIGNAL \divisor|Add0~61\ : std_logic;
SIGNAL \divisor|Add0~62_combout\ : std_logic;
SIGNAL \divisor|Add0~58_combout\ : std_logic;
SIGNAL \divisor|Add0~54_combout\ : std_logic;
SIGNAL \divisor|Add0~32_combout\ : std_logic;
SIGNAL \divisor|LessThan0~0_combout\ : std_logic;
SIGNAL \divisor|Add0~0_combout\ : std_logic;
SIGNAL \divisor|LessThan0~1_combout\ : std_logic;
SIGNAL \divisor|Add0~20_combout\ : std_logic;
SIGNAL \divisor|Add0~22_combout\ : std_logic;
SIGNAL \divisor|LessThan0~3_combout\ : std_logic;
SIGNAL \divisor|Add0~24_combout\ : std_logic;
SIGNAL \divisor|Add0~28_combout\ : std_logic;
SIGNAL \divisor|LessThan0~4_combout\ : std_logic;
SIGNAL \divisor|LessThan0~5_combout\ : std_logic;
SIGNAL \divisor|LessThan0~6_combout\ : std_logic;
SIGNAL \divisor|LessThan0~7_combout\ : std_logic;
SIGNAL \divisor|LessThan0~8_combout\ : std_logic;
SIGNAL \divisor|LessThan0~9_combout\ : std_logic;
SIGNAL \divisor|LessThan0~10_combout\ : std_logic;
SIGNAL \divisor|clk_ou~q\ : std_logic;
SIGNAL \divisor|clk_ou~clkctrl_outclk\ : std_logic;
SIGNAL \irig|irq_ou~feeder_combout\ : std_logic;
SIGNAL \irig|irq_ou~q\ : std_logic;
SIGNAL \divisor|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \irig|year_s\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \irig|year_c\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \irig|tod\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \irig|tmp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \irig|sec_s\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \irig|sec_c\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \irig|min_s\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \irig|min_c\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \irig|hour_s\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \irig|hour_c\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \irig|day_s\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \irig|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \irig|day_c\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \irig|ALT_INV_ctrlclk~0_combout\ : std_logic;
SIGNAL \irig|ALT_INV_irq_ou~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_pps <= pps;
ww_enable <= enable;
ww_update <= update;
output <= ww_output;
irq_ou <= ww_irq_ou;
ww_year <= year;
ww_day <= day;
ww_hour <= hour;
ww_min <= min;
ww_sec <= sec;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\divisor|clk_ou~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divisor|clk_ou~q\);

\irig|year_s[8]~25clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \irig|year_s[8]~25_combout\);
\irig|ALT_INV_ctrlclk~0_combout\ <= NOT \irig|ctrlclk~0_combout\;
\irig|ALT_INV_irq_ou~q\ <= NOT \irig|irq_ou~q\;

-- Location: FF_X24_Y21_N11
\irig|tod[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|tod[6]~23_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tod\(6));

-- Location: FF_X24_Y21_N21
\irig|tod[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|tod[11]~33_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tod\(11));

-- Location: LCCOMB_X23_Y23_N0
\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\irig|Mult0|mult_core|romout[0][13]~2_combout\ & (\irig|hour_s\(4) $ (VCC))) # (!\irig|Mult0|mult_core|romout[0][13]~2_combout\ & (\irig|hour_s\(4) & VCC))
-- \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\irig|Mult0|mult_core|romout[0][13]~2_combout\ & \irig|hour_s\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mult0|mult_core|romout[0][13]~2_combout\,
	datab => \irig|hour_s\(4),
	datad => VCC,
	combout => \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X23_Y23_N2
\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\irig|Mult0|mult_core|romout[0][14]~1_combout\ & ((\irig|hour_s\(4) & (\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\irig|hour_s\(4) & 
-- (!\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\irig|Mult0|mult_core|romout[0][14]~1_combout\ & ((\irig|hour_s\(4) & (!\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\irig|hour_s\(4) & 
-- ((\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\irig|Mult0|mult_core|romout[0][14]~1_combout\ & (!\irig|hour_s\(4) & !\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\irig|Mult0|mult_core|romout[0][14]~1_combout\ 
-- & ((!\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\irig|hour_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mult0|mult_core|romout[0][14]~1_combout\,
	datab => \irig|hour_s\(4),
	datad => VCC,
	cin => \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X23_Y23_N4
\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\irig|Mult0|mult_core|romout[0][15]~0_combout\ $ (\irig|hour_s\(4) $ (!\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\irig|Mult0|mult_core|romout[0][15]~0_combout\ & ((\irig|hour_s\(4)) # (!\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\irig|Mult0|mult_core|romout[0][15]~0_combout\ & (\irig|hour_s\(4) & !\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mult0|mult_core|romout[0][15]~0_combout\,
	datab => \irig|hour_s\(4),
	datad => VCC,
	cin => \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X27_Y21_N4
\irig|Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add9~0_combout\ = (\irig|min_s\(0) & (\irig|Add8~4_combout\ $ (VCC))) # (!\irig|min_s\(0) & (\irig|Add8~4_combout\ & VCC))
-- \irig|Add9~1\ = CARRY((\irig|min_s\(0) & \irig|Add8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s\(0),
	datab => \irig|Add8~4_combout\,
	datad => VCC,
	combout => \irig|Add9~0_combout\,
	cout => \irig|Add9~1\);

-- Location: LCCOMB_X27_Y21_N12
\irig|Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add9~8_combout\ = ((\irig|Add8~2_combout\ $ (\irig|min_s\(4) $ (!\irig|Add9~7\)))) # (GND)
-- \irig|Add9~9\ = CARRY((\irig|Add8~2_combout\ & ((\irig|min_s\(4)) # (!\irig|Add9~7\))) # (!\irig|Add8~2_combout\ & (\irig|min_s\(4) & !\irig|Add9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add8~2_combout\,
	datab => \irig|min_s\(4),
	datad => VCC,
	cin => \irig|Add9~7\,
	combout => \irig|Add9~8_combout\,
	cout => \irig|Add9~9\);

-- Location: LCCOMB_X27_Y21_N16
\irig|Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add9~12_combout\ = (\irig|Add9~11\ & (((\irig|Add8~1_combout\) # (\irig|min_s\(5))))) # (!\irig|Add9~11\ & ((((\irig|Add8~1_combout\) # (\irig|min_s\(5))))))
-- \irig|Add9~13\ = CARRY((!\irig|Add9~11\ & ((\irig|Add8~1_combout\) # (\irig|min_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add8~1_combout\,
	datab => \irig|min_s\(5),
	datad => VCC,
	cin => \irig|Add9~11\,
	combout => \irig|Add9~12_combout\,
	cout => \irig|Add9~13\);

-- Location: LCCOMB_X24_Y23_N6
\irig|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add10~2_combout\ = (\irig|hour_s\(1) & ((\irig|Add8~5_combout\ & (\irig|Add10~1\ & VCC)) # (!\irig|Add8~5_combout\ & (!\irig|Add10~1\)))) # (!\irig|hour_s\(1) & ((\irig|Add8~5_combout\ & (!\irig|Add10~1\)) # (!\irig|Add8~5_combout\ & 
-- ((\irig|Add10~1\) # (GND)))))
-- \irig|Add10~3\ = CARRY((\irig|hour_s\(1) & (!\irig|Add8~5_combout\ & !\irig|Add10~1\)) # (!\irig|hour_s\(1) & ((!\irig|Add10~1\) # (!\irig|Add8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(1),
	datab => \irig|Add8~5_combout\,
	datad => VCC,
	cin => \irig|Add10~1\,
	combout => \irig|Add10~2_combout\,
	cout => \irig|Add10~3\);

-- Location: LCCOMB_X24_Y23_N12
\irig|Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add10~8_combout\ = ((\irig|hour_s\(4) $ (\irig|Add9~4_combout\ $ (!\irig|Add10~7\)))) # (GND)
-- \irig|Add10~9\ = CARRY((\irig|hour_s\(4) & ((\irig|Add9~4_combout\) # (!\irig|Add10~7\))) # (!\irig|hour_s\(4) & (\irig|Add9~4_combout\ & !\irig|Add10~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(4),
	datab => \irig|Add9~4_combout\,
	datad => VCC,
	cin => \irig|Add10~7\,
	combout => \irig|Add10~8_combout\,
	cout => \irig|Add10~9\);

-- Location: LCCOMB_X24_Y23_N14
\irig|Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add10~10_combout\ = (\irig|hour_s\(0) & ((\irig|Add9~6_combout\ & (\irig|Add10~9\ & VCC)) # (!\irig|Add9~6_combout\ & (!\irig|Add10~9\)))) # (!\irig|hour_s\(0) & ((\irig|Add9~6_combout\ & (!\irig|Add10~9\)) # (!\irig|Add9~6_combout\ & 
-- ((\irig|Add10~9\) # (GND)))))
-- \irig|Add10~11\ = CARRY((\irig|hour_s\(0) & (!\irig|Add9~6_combout\ & !\irig|Add10~9\)) # (!\irig|hour_s\(0) & ((!\irig|Add10~9\) # (!\irig|Add9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(0),
	datab => \irig|Add9~6_combout\,
	datad => VCC,
	cin => \irig|Add10~9\,
	combout => \irig|Add10~10_combout\,
	cout => \irig|Add10~11\);

-- Location: LCCOMB_X24_Y23_N16
\irig|Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add10~12_combout\ = ((\irig|Add9~8_combout\ $ (\irig|Mult0|mult_core|romout[0][10]~combout\ $ (!\irig|Add10~11\)))) # (GND)
-- \irig|Add10~13\ = CARRY((\irig|Add9~8_combout\ & ((\irig|Mult0|mult_core|romout[0][10]~combout\) # (!\irig|Add10~11\))) # (!\irig|Add9~8_combout\ & (\irig|Mult0|mult_core|romout[0][10]~combout\ & !\irig|Add10~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add9~8_combout\,
	datab => \irig|Mult0|mult_core|romout[0][10]~combout\,
	datad => VCC,
	cin => \irig|Add10~11\,
	combout => \irig|Add10~12_combout\,
	cout => \irig|Add10~13\);

-- Location: LCCOMB_X24_Y23_N24
\irig|Add10~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add10~20_combout\ = ((\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ $ (\irig|Add9~14_combout\ $ (!\irig|Add10~19\)))) # (GND)
-- \irig|Add10~21\ = CARRY((\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\irig|Add9~14_combout\) # (!\irig|Add10~19\))) # (!\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\irig|Add9~14_combout\ & 
-- !\irig|Add10~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \irig|Add9~14_combout\,
	datad => VCC,
	cin => \irig|Add10~19\,
	combout => \irig|Add10~20_combout\,
	cout => \irig|Add10~21\);

-- Location: LCCOMB_X24_Y23_N26
\irig|Add10~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add10~22_combout\ = (\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\irig|Add9~14_combout\ & (\irig|Add10~21\ & VCC)) # (!\irig|Add9~14_combout\ & (!\irig|Add10~21\)))) # 
-- (!\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\irig|Add9~14_combout\ & (!\irig|Add10~21\)) # (!\irig|Add9~14_combout\ & ((\irig|Add10~21\) # (GND)))))
-- \irig|Add10~23\ = CARRY((\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\irig|Add9~14_combout\ & !\irig|Add10~21\)) # (!\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((!\irig|Add10~21\) # 
-- (!\irig|Add9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \irig|Add9~14_combout\,
	datad => VCC,
	cin => \irig|Add10~21\,
	combout => \irig|Add10~22_combout\,
	cout => \irig|Add10~23\);

-- Location: LCCOMB_X24_Y21_N10
\irig|tod[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|tod[6]~23_combout\ = (\irig|Add10~4_combout\ & (\irig|tod[5]~22\ $ (GND))) # (!\irig|Add10~4_combout\ & (!\irig|tod[5]~22\ & VCC))
-- \irig|tod[6]~24\ = CARRY((\irig|Add10~4_combout\ & !\irig|tod[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add10~4_combout\,
	datad => VCC,
	cin => \irig|tod[5]~22\,
	combout => \irig|tod[6]~23_combout\,
	cout => \irig|tod[6]~24\);

-- Location: LCCOMB_X24_Y21_N20
\irig|tod[11]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|tod[11]~33_combout\ = (\irig|Add10~14_combout\ & (!\irig|tod[10]~32\)) # (!\irig|Add10~14_combout\ & ((\irig|tod[10]~32\) # (GND)))
-- \irig|tod[11]~34\ = CARRY((!\irig|tod[10]~32\) # (!\irig|Add10~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add10~14_combout\,
	datad => VCC,
	cin => \irig|tod[10]~32\,
	combout => \irig|tod[11]~33_combout\,
	cout => \irig|tod[11]~34\);

-- Location: LCCOMB_X14_Y18_N26
\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\irig|year_s\(11) & (\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\irig|year_s\(11) & 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\irig|year_s\(11) & !\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(11),
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X15_Y18_N18
\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\irig|Mod0|auto_generated|divider|divider|StageOut[75]~120_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[75]~121_combout\))))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[75]~120_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|StageOut[75]~121_combout\) # (GND))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\irig|Mod0|auto_generated|divider|divider|StageOut[75]~120_combout\) # ((\irig|Mod0|auto_generated|divider|divider|StageOut[75]~121_combout\) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[75]~120_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[75]~121_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X15_Y18_N22
\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[77]~116_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[77]~117_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\irig|Mod0|auto_generated|divider|divider|StageOut[77]~116_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[77]~117_combout\)))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[77]~116_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[77]~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[77]~116_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[77]~117_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X15_Y20_N16
\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[90]~127_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[90]~202_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[90]~127_combout\ & 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[90]~202_combout\)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|StageOut[90]~127_combout\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[90]~202_combout\ & 
-- !\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[90]~127_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[90]~202_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\);

-- Location: LCCOMB_X16_Y20_N14
\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ = (\irig|Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\ & (((!\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)))) # 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[100]~186_combout\ & (!\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)) # 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[100]~186_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\) # (GND)))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ = CARRY(((!\irig|Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\ & !\irig|Mod0|auto_generated|divider|divider|StageOut[100]~186_combout\)) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[100]~186_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\);

-- Location: LCCOMB_X17_Y20_N6
\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ = (((\irig|Mod0|auto_generated|divider|divider|StageOut[109]~157_combout\) # (\irig|Mod0|auto_generated|divider|divider|StageOut[109]~154_combout\)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ = CARRY((\irig|Mod0|auto_generated|divider|divider|StageOut[109]~157_combout\) # (\irig|Mod0|auto_generated|divider|divider|StageOut[109]~154_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[109]~157_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[109]~154_combout\,
	datad => VCC,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\);

-- Location: LCCOMB_X17_Y20_N10
\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ & ((((\irig|Mod0|auto_generated|divider|divider|StageOut[111]~210_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[111]~152_combout\))))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[111]~210_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|StageOut[111]~152_combout\) # (GND))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\ = CARRY((\irig|Mod0|auto_generated|divider|divider|StageOut[111]~210_combout\) # ((\irig|Mod0|auto_generated|divider|divider|StageOut[111]~152_combout\) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[111]~210_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[111]~152_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\);

-- Location: LCCOMB_X17_Y20_N12
\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ = (\irig|Mod0|auto_generated|divider|divider|StageOut[112]~192_combout\ & (((!\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\)))) # 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[112]~192_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[112]~151_combout\ & (!\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\)) # 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[112]~151_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\) # (GND)))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ = CARRY(((!\irig|Mod0|auto_generated|divider|divider|StageOut[112]~192_combout\ & !\irig|Mod0|auto_generated|divider|divider|StageOut[112]~151_combout\)) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[112]~192_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[112]~151_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\);

-- Location: LCCOMB_X17_Y20_N16
\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[114]~149_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[114]~190_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[114]~149_combout\ & 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[114]~190_combout\)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|StageOut[114]~149_combout\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[114]~190_combout\ & 
-- !\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[114]~149_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[114]~190_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\);

-- Location: LCCOMB_X17_Y20_N18
\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ & ((((\irig|Mod0|auto_generated|divider|divider|StageOut[115]~189_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[115]~148_combout\))))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[115]~189_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|StageOut[115]~148_combout\) # (GND))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~13\ = CARRY((\irig|Mod0|auto_generated|divider|divider|StageOut[115]~189_combout\) # ((\irig|Mod0|auto_generated|divider|divider|StageOut[115]~148_combout\) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[115]~189_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[115]~148_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~13\);

-- Location: LCCOMB_X21_Y20_N12
\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ & ((((\irig|Mod0|auto_generated|divider|divider|StageOut[123]~194_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[123]~159_combout\))))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[123]~194_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|StageOut[123]~159_combout\) # (GND))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\ = CARRY((\irig|Mod0|auto_generated|divider|divider|StageOut[123]~194_combout\) # ((\irig|Mod0|auto_generated|divider|divider|StageOut[123]~159_combout\) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[123]~194_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[123]~159_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\);

-- Location: LCCOMB_X21_Y20_N26
\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~18_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~17\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[130]~165_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[130]~195_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~17\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[130]~165_combout\ & 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[130]~195_combout\)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~19\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|StageOut[130]~165_combout\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[130]~195_combout\ & 
-- !\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[130]~165_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[130]~195_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~17\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~18_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~19\);

-- Location: LCCOMB_X23_Y20_N14
\irig|Add39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add39~0_combout\ = \irig|Mod0|auto_generated|divider|divider|StageOut[135]~177_combout\ $ (VCC)
-- \irig|Add39~1\ = CARRY(\irig|Mod0|auto_generated|divider|divider|StageOut[135]~177_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[135]~177_combout\,
	datad => VCC,
	combout => \irig|Add39~0_combout\,
	cout => \irig|Add39~1\);

-- Location: LCCOMB_X22_Y20_N8
\irig|Add38~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add38~2_combout\ = (\irig|Mod0|auto_generated|divider|divider|StageOut[137]~171_combout\ & (\irig|Add38~1\ & VCC)) # (!\irig|Mod0|auto_generated|divider|divider|StageOut[137]~171_combout\ & (!\irig|Add38~1\))
-- \irig|Add38~3\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|StageOut[137]~171_combout\ & !\irig|Add38~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[137]~171_combout\,
	datad => VCC,
	cin => \irig|Add38~1\,
	combout => \irig|Add38~2_combout\,
	cout => \irig|Add38~3\);

-- Location: LCCOMB_X22_Y20_N12
\irig|Add38~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add38~6_combout\ = (\irig|Mod0|auto_generated|divider|divider|StageOut[139]~176_combout\ & (\irig|Add38~5\ & VCC)) # (!\irig|Mod0|auto_generated|divider|divider|StageOut[139]~176_combout\ & (!\irig|Add38~5\))
-- \irig|Add38~7\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|StageOut[139]~176_combout\ & !\irig|Add38~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[139]~176_combout\,
	datad => VCC,
	cin => \irig|Add38~5\,
	combout => \irig|Add38~6_combout\,
	cout => \irig|Add38~7\);

-- Location: LCCOMB_X23_Y20_N16
\irig|Add39~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add39~2_combout\ = (\irig|aux~0_combout\ & (\irig|Add39~1\ & VCC)) # (!\irig|aux~0_combout\ & (!\irig|Add39~1\))
-- \irig|Add39~3\ = CARRY((!\irig|aux~0_combout\ & !\irig|Add39~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~0_combout\,
	datad => VCC,
	cin => \irig|Add39~1\,
	combout => \irig|Add39~2_combout\,
	cout => \irig|Add39~3\);

-- Location: LCCOMB_X23_Y20_N20
\irig|Add39~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add39~6_combout\ = (\irig|aux~2_combout\ & (\irig|Add39~5\ & VCC)) # (!\irig|aux~2_combout\ & (!\irig|Add39~5\))
-- \irig|Add39~7\ = CARRY((!\irig|aux~2_combout\ & !\irig|Add39~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~2_combout\,
	datad => VCC,
	cin => \irig|Add39~5\,
	combout => \irig|Add39~6_combout\,
	cout => \irig|Add39~7\);

-- Location: LCCOMB_X17_Y16_N8
\irig|Add29~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add29~4_combout\ = (\irig|day_s\(5) & ((GND) # (!\irig|Add29~3\))) # (!\irig|day_s\(5) & (\irig|Add29~3\ $ (GND)))
-- \irig|Add29~5\ = CARRY((\irig|day_s\(5)) # (!\irig|Add29~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(5),
	datad => VCC,
	cin => \irig|Add29~3\,
	combout => \irig|Add29~4_combout\,
	cout => \irig|Add29~5\);

-- Location: LCCOMB_X23_Y21_N0
\irig|Add40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add40~0_combout\ = \irig|Mod0|auto_generated|divider|divider|StageOut[134]~178_combout\ $ (VCC)
-- \irig|Add40~1\ = CARRY(\irig|Mod0|auto_generated|divider|divider|StageOut[134]~178_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[134]~178_combout\,
	datad => VCC,
	combout => \irig|Add40~0_combout\,
	cout => \irig|Add40~1\);

-- Location: LCCOMB_X23_Y21_N2
\irig|Add40~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add40~2_combout\ = (\irig|aux~3_combout\ & (\irig|Add40~1\ & VCC)) # (!\irig|aux~3_combout\ & (!\irig|Add40~1\))
-- \irig|Add40~3\ = CARRY((!\irig|aux~3_combout\ & !\irig|Add40~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~3_combout\,
	datad => VCC,
	cin => \irig|Add40~1\,
	combout => \irig|Add40~2_combout\,
	cout => \irig|Add40~3\);

-- Location: LCCOMB_X23_Y21_N4
\irig|Add40~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add40~4_combout\ = (\irig|aux~4_combout\ & (\irig|Add40~3\ $ (GND))) # (!\irig|aux~4_combout\ & (!\irig|Add40~3\ & VCC))
-- \irig|Add40~5\ = CARRY((\irig|aux~4_combout\ & !\irig|Add40~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~4_combout\,
	datad => VCC,
	cin => \irig|Add40~3\,
	combout => \irig|Add40~4_combout\,
	cout => \irig|Add40~5\);

-- Location: LCCOMB_X23_Y21_N6
\irig|Add40~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add40~6_combout\ = (\irig|aux~5_combout\ & (\irig|Add40~5\ & VCC)) # (!\irig|aux~5_combout\ & (!\irig|Add40~5\))
-- \irig|Add40~7\ = CARRY((!\irig|aux~5_combout\ & !\irig|Add40~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~5_combout\,
	datad => VCC,
	cin => \irig|Add40~5\,
	combout => \irig|Add40~6_combout\,
	cout => \irig|Add40~7\);

-- Location: LCCOMB_X23_Y21_N8
\irig|Add40~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add40~8_combout\ = (\irig|Add40~7\ & ((((\irig|Add39~6_combout\ & !\irig|LessThan42~3_combout\))))) # (!\irig|Add40~7\ & (((\irig|Add39~6_combout\ & !\irig|LessThan42~3_combout\)) # (GND)))
-- \irig|Add40~9\ = CARRY(((\irig|Add39~6_combout\ & !\irig|LessThan42~3_combout\)) # (!\irig|Add40~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add39~6_combout\,
	datab => \irig|LessThan42~3_combout\,
	datad => VCC,
	cin => \irig|Add40~7\,
	combout => \irig|Add40~8_combout\,
	cout => \irig|Add40~9\);

-- Location: LCCOMB_X21_Y18_N18
\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\ = (\irig|Mod0|auto_generated|divider|divider|StageOut[120]~179_combout\) # (\irig|Mod0|auto_generated|divider|divider|StageOut[120]~180_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[120]~179_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|StageOut[120]~180_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\);

-- Location: LCCOMB_X22_Y21_N4
\irig|Add41~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add41~0_combout\ = \irig|Mod0|auto_generated|divider|divider|StageOut[133]~181_combout\ $ (VCC)
-- \irig|Add41~1\ = CARRY(\irig|Mod0|auto_generated|divider|divider|StageOut[133]~181_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[133]~181_combout\,
	datad => VCC,
	combout => \irig|Add41~0_combout\,
	cout => \irig|Add41~1\);

-- Location: LCCOMB_X22_Y21_N6
\irig|Add41~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add41~2_combout\ = (\irig|aux~14_combout\ & (\irig|Add41~1\ & VCC)) # (!\irig|aux~14_combout\ & (!\irig|Add41~1\))
-- \irig|Add41~3\ = CARRY((!\irig|aux~14_combout\ & !\irig|Add41~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~14_combout\,
	datad => VCC,
	cin => \irig|Add41~1\,
	combout => \irig|Add41~2_combout\,
	cout => \irig|Add41~3\);

-- Location: LCCOMB_X22_Y21_N8
\irig|Add41~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add41~4_combout\ = (\irig|aux~13_combout\ & (\irig|Add41~3\ $ (GND))) # (!\irig|aux~13_combout\ & (!\irig|Add41~3\ & VCC))
-- \irig|Add41~5\ = CARRY((\irig|aux~13_combout\ & !\irig|Add41~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~13_combout\,
	datad => VCC,
	cin => \irig|Add41~3\,
	combout => \irig|Add41~4_combout\,
	cout => \irig|Add41~5\);

-- Location: LCCOMB_X22_Y21_N10
\irig|Add41~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add41~6_combout\ = (\irig|aux~12_combout\ & (\irig|Add41~5\ & VCC)) # (!\irig|aux~12_combout\ & (!\irig|Add41~5\))
-- \irig|Add41~7\ = CARRY((!\irig|aux~12_combout\ & !\irig|Add41~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~12_combout\,
	datad => VCC,
	cin => \irig|Add41~5\,
	combout => \irig|Add41~6_combout\,
	cout => \irig|Add41~7\);

-- Location: LCCOMB_X22_Y21_N12
\irig|Add41~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add41~8_combout\ = (\irig|aux~11_combout\ & ((GND) # (!\irig|Add41~7\))) # (!\irig|aux~11_combout\ & (\irig|Add41~7\ $ (GND)))
-- \irig|Add41~9\ = CARRY((\irig|aux~11_combout\) # (!\irig|Add41~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~11_combout\,
	datad => VCC,
	cin => \irig|Add41~7\,
	combout => \irig|Add41~8_combout\,
	cout => \irig|Add41~9\);

-- Location: LCCOMB_X22_Y21_N14
\irig|Add41~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add41~10_combout\ = (\irig|LessThan43~3_combout\ & (((!\irig|Add41~9\)))) # (!\irig|LessThan43~3_combout\ & ((\irig|Add40~8_combout\ & (\irig|Add41~9\ & VCC)) # (!\irig|Add40~8_combout\ & (!\irig|Add41~9\))))
-- \irig|Add41~11\ = CARRY((!\irig|Add41~9\ & ((\irig|LessThan43~3_combout\) # (!\irig|Add40~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan43~3_combout\,
	datab => \irig|Add40~8_combout\,
	datad => VCC,
	cin => \irig|Add41~9\,
	combout => \irig|Add41~10_combout\,
	cout => \irig|Add41~11\);

-- Location: LCCOMB_X23_Y21_N10
\irig|Add40~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add40~10_combout\ = (\irig|Add39~8_combout\ & ((\irig|LessThan42~3_combout\ & (!\irig|Add40~9\)) # (!\irig|LessThan42~3_combout\ & (\irig|Add40~9\ & VCC)))) # (!\irig|Add39~8_combout\ & (((!\irig|Add40~9\))))
-- \irig|Add40~11\ = CARRY((!\irig|Add40~9\ & ((\irig|LessThan42~3_combout\) # (!\irig|Add39~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add39~8_combout\,
	datab => \irig|LessThan42~3_combout\,
	datad => VCC,
	cin => \irig|Add40~9\,
	combout => \irig|Add40~10_combout\,
	cout => \irig|Add40~11\);

-- Location: LCCOMB_X23_Y21_N12
\irig|Add40~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add40~12_combout\ = (\irig|Add40~11\ & ((((\irig|Add39~10_combout\ & !\irig|LessThan42~3_combout\))))) # (!\irig|Add40~11\ & (((\irig|Add39~10_combout\ & !\irig|LessThan42~3_combout\)) # (GND)))
-- \irig|Add40~13\ = CARRY(((\irig|Add39~10_combout\ & !\irig|LessThan42~3_combout\)) # (!\irig|Add40~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add39~10_combout\,
	datab => \irig|LessThan42~3_combout\,
	datad => VCC,
	cin => \irig|Add40~11\,
	combout => \irig|Add40~12_combout\,
	cout => \irig|Add40~13\);

-- Location: LCCOMB_X23_Y21_N14
\irig|Add40~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add40~14_combout\ = \irig|Add40~13\ $ (((\irig|LessThan42~3_combout\) # (!\irig|Add39~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|LessThan42~3_combout\,
	datad => \irig|Add39~12_combout\,
	cin => \irig|Add40~13\,
	combout => \irig|Add40~14_combout\);

-- Location: LCCOMB_X22_Y22_N0
\irig|Add42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add42~0_combout\ = \irig|aux~17_combout\ $ (VCC)
-- \irig|Add42~1\ = CARRY(\irig|aux~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~17_combout\,
	datad => VCC,
	combout => \irig|Add42~0_combout\,
	cout => \irig|Add42~1\);

-- Location: LCCOMB_X22_Y22_N2
\irig|Add42~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add42~2_combout\ = (\irig|aux~16_combout\ & (\irig|Add42~1\ & VCC)) # (!\irig|aux~16_combout\ & (!\irig|Add42~1\))
-- \irig|Add42~3\ = CARRY((!\irig|aux~16_combout\ & !\irig|Add42~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~16_combout\,
	datad => VCC,
	cin => \irig|Add42~1\,
	combout => \irig|Add42~2_combout\,
	cout => \irig|Add42~3\);

-- Location: LCCOMB_X22_Y22_N4
\irig|Add42~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add42~4_combout\ = (\irig|aux~15_combout\ & ((GND) # (!\irig|Add42~3\))) # (!\irig|aux~15_combout\ & (\irig|Add42~3\ $ (GND)))
-- \irig|Add42~5\ = CARRY((\irig|aux~15_combout\) # (!\irig|Add42~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~15_combout\,
	datad => VCC,
	cin => \irig|Add42~3\,
	combout => \irig|Add42~4_combout\,
	cout => \irig|Add42~5\);

-- Location: LCCOMB_X22_Y22_N6
\irig|Add42~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add42~6_combout\ = (\irig|LessThan44~4_combout\ & (((!\irig|Add42~5\)))) # (!\irig|LessThan44~4_combout\ & ((\irig|Add41~10_combout\ & (\irig|Add42~5\ & VCC)) # (!\irig|Add41~10_combout\ & (!\irig|Add42~5\))))
-- \irig|Add42~7\ = CARRY((!\irig|Add42~5\ & ((\irig|LessThan44~4_combout\) # (!\irig|Add41~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan44~4_combout\,
	datab => \irig|Add41~10_combout\,
	datad => VCC,
	cin => \irig|Add42~5\,
	combout => \irig|Add42~6_combout\,
	cout => \irig|Add42~7\);

-- Location: LCCOMB_X22_Y21_N16
\irig|Add41~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add41~12_combout\ = (\irig|Add41~11\ & ((((!\irig|LessThan43~3_combout\ & \irig|Add40~10_combout\))))) # (!\irig|Add41~11\ & (((!\irig|LessThan43~3_combout\ & \irig|Add40~10_combout\)) # (GND)))
-- \irig|Add41~13\ = CARRY(((!\irig|LessThan43~3_combout\ & \irig|Add40~10_combout\)) # (!\irig|Add41~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan43~3_combout\,
	datab => \irig|Add40~10_combout\,
	datad => VCC,
	cin => \irig|Add41~11\,
	combout => \irig|Add41~12_combout\,
	cout => \irig|Add41~13\);

-- Location: LCCOMB_X22_Y21_N18
\irig|Add41~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add41~14_combout\ = (\irig|LessThan43~3_combout\ & (((!\irig|Add41~13\)))) # (!\irig|LessThan43~3_combout\ & ((\irig|Add40~12_combout\ & (\irig|Add41~13\ & VCC)) # (!\irig|Add40~12_combout\ & (!\irig|Add41~13\))))
-- \irig|Add41~15\ = CARRY((!\irig|Add41~13\ & ((\irig|LessThan43~3_combout\) # (!\irig|Add40~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan43~3_combout\,
	datab => \irig|Add40~12_combout\,
	datad => VCC,
	cin => \irig|Add41~13\,
	combout => \irig|Add41~14_combout\,
	cout => \irig|Add41~15\);

-- Location: LCCOMB_X22_Y21_N20
\irig|Add41~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add41~16_combout\ = \irig|Add41~15\ $ (((!\irig|LessThan43~3_combout\ & \irig|Add40~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan43~3_combout\,
	datad => \irig|Add40~14_combout\,
	cin => \irig|Add41~15\,
	combout => \irig|Add41~16_combout\);

-- Location: LCCOMB_X23_Y22_N0
\irig|Add43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add43~0_combout\ = \irig|aux~18_combout\ $ (VCC)
-- \irig|Add43~1\ = CARRY(\irig|aux~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~18_combout\,
	datad => VCC,
	combout => \irig|Add43~0_combout\,
	cout => \irig|Add43~1\);

-- Location: LCCOMB_X23_Y22_N2
\irig|Add43~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add43~2_combout\ = (\irig|Add42~11_combout\ & (\irig|Add43~1\ & VCC)) # (!\irig|Add42~11_combout\ & (!\irig|Add43~1\))
-- \irig|Add43~3\ = CARRY((!\irig|Add42~11_combout\ & !\irig|Add43~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add42~11_combout\,
	datad => VCC,
	cin => \irig|Add43~1\,
	combout => \irig|Add43~2_combout\,
	cout => \irig|Add43~3\);

-- Location: LCCOMB_X23_Y22_N4
\irig|Add43~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add43~4_combout\ = (\irig|Add42~10_combout\ & ((GND) # (!\irig|Add43~3\))) # (!\irig|Add42~10_combout\ & (\irig|Add43~3\ $ (GND)))
-- \irig|Add43~5\ = CARRY((\irig|Add42~10_combout\) # (!\irig|Add43~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add42~10_combout\,
	datad => VCC,
	cin => \irig|Add43~3\,
	combout => \irig|Add43~4_combout\,
	cout => \irig|Add43~5\);

-- Location: LCCOMB_X23_Y22_N6
\irig|Add43~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add43~6_combout\ = (\irig|Add42~9_combout\ & (\irig|Add43~5\ & VCC)) # (!\irig|Add42~9_combout\ & (!\irig|Add43~5\))
-- \irig|Add43~7\ = CARRY((!\irig|Add42~9_combout\ & !\irig|Add43~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add42~9_combout\,
	datad => VCC,
	cin => \irig|Add43~5\,
	combout => \irig|Add43~6_combout\,
	cout => \irig|Add43~7\);

-- Location: LCCOMB_X23_Y22_N8
\irig|Add43~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add43~8_combout\ = (\irig|Add42~8_combout\ & ((GND) # (!\irig|Add43~7\))) # (!\irig|Add42~8_combout\ & (\irig|Add43~7\ $ (GND)))
-- \irig|Add43~9\ = CARRY((\irig|Add42~8_combout\) # (!\irig|Add43~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add42~8_combout\,
	datad => VCC,
	cin => \irig|Add43~7\,
	combout => \irig|Add43~8_combout\,
	cout => \irig|Add43~9\);

-- Location: LCCOMB_X22_Y22_N8
\irig|Add42~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add42~12_combout\ = (\irig|Add42~7\ & ((((\irig|Add41~12_combout\ & !\irig|LessThan44~4_combout\))))) # (!\irig|Add42~7\ & (((\irig|Add41~12_combout\ & !\irig|LessThan44~4_combout\)) # (GND)))
-- \irig|Add42~13\ = CARRY(((\irig|Add41~12_combout\ & !\irig|LessThan44~4_combout\)) # (!\irig|Add42~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add41~12_combout\,
	datab => \irig|LessThan44~4_combout\,
	datad => VCC,
	cin => \irig|Add42~7\,
	combout => \irig|Add42~12_combout\,
	cout => \irig|Add42~13\);

-- Location: LCCOMB_X22_Y22_N10
\irig|Add42~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add42~14_combout\ = (\irig|LessThan44~4_combout\ & (((!\irig|Add42~13\)))) # (!\irig|LessThan44~4_combout\ & ((\irig|Add41~14_combout\ & (\irig|Add42~13\ & VCC)) # (!\irig|Add41~14_combout\ & (!\irig|Add42~13\))))
-- \irig|Add42~15\ = CARRY((!\irig|Add42~13\ & ((\irig|LessThan44~4_combout\) # (!\irig|Add41~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan44~4_combout\,
	datab => \irig|Add41~14_combout\,
	datad => VCC,
	cin => \irig|Add42~13\,
	combout => \irig|Add42~14_combout\,
	cout => \irig|Add42~15\);

-- Location: LCCOMB_X22_Y22_N12
\irig|Add42~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add42~16_combout\ = \irig|Add42~15\ $ (((!\irig|LessThan44~4_combout\ & \irig|Add41~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|LessThan44~4_combout\,
	datad => \irig|Add41~16_combout\,
	cin => \irig|Add42~15\,
	combout => \irig|Add42~16_combout\);

-- Location: LCCOMB_X23_Y22_N10
\irig|Add43~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add43~11_combout\ = (\irig|Add42~18_combout\ & (\irig|Add43~9\ & VCC)) # (!\irig|Add42~18_combout\ & (!\irig|Add43~9\))
-- \irig|Add43~12\ = CARRY((!\irig|Add42~18_combout\ & !\irig|Add43~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add42~18_combout\,
	datad => VCC,
	cin => \irig|Add43~9\,
	combout => \irig|Add43~11_combout\,
	cout => \irig|Add43~12\);

-- Location: LCCOMB_X23_Y22_N12
\irig|Add43~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add43~14_combout\ = (\irig|Add42~19_combout\ & ((GND) # (!\irig|Add43~12\))) # (!\irig|Add42~19_combout\ & (\irig|Add43~12\ $ (GND)))
-- \irig|Add43~15\ = CARRY((\irig|Add42~19_combout\) # (!\irig|Add43~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add42~19_combout\,
	datad => VCC,
	cin => \irig|Add43~12\,
	combout => \irig|Add43~14_combout\,
	cout => \irig|Add43~15\);

-- Location: LCCOMB_X23_Y22_N14
\irig|Add43~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add43~19_combout\ = \irig|Add43~15\ $ (!\irig|Add42~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \irig|Add42~20_combout\,
	cin => \irig|Add43~15\,
	combout => \irig|Add43~19_combout\);

-- Location: LCCOMB_X24_Y22_N8
\irig|Add44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add44~0_combout\ = \irig|aux~19_combout\ $ (VCC)
-- \irig|Add44~1\ = CARRY(\irig|aux~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~19_combout\,
	datad => VCC,
	combout => \irig|Add44~0_combout\,
	cout => \irig|Add44~1\);

-- Location: LCCOMB_X24_Y22_N10
\irig|Add44~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add44~2_combout\ = (\irig|Add43~17_combout\ & (\irig|Add44~1\ & VCC)) # (!\irig|Add43~17_combout\ & (!\irig|Add44~1\))
-- \irig|Add44~3\ = CARRY((!\irig|Add43~17_combout\ & !\irig|Add44~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add43~17_combout\,
	datad => VCC,
	cin => \irig|Add44~1\,
	combout => \irig|Add44~2_combout\,
	cout => \irig|Add44~3\);

-- Location: LCCOMB_X24_Y22_N12
\irig|Add44~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add44~4_combout\ = (\irig|Add43~23_combout\ & ((GND) # (!\irig|Add44~3\))) # (!\irig|Add43~23_combout\ & (\irig|Add44~3\ $ (GND)))
-- \irig|Add44~5\ = CARRY((\irig|Add43~23_combout\) # (!\irig|Add44~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add43~23_combout\,
	datad => VCC,
	cin => \irig|Add44~3\,
	combout => \irig|Add44~4_combout\,
	cout => \irig|Add44~5\);

-- Location: LCCOMB_X24_Y22_N14
\irig|Add44~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add44~6_combout\ = (\irig|Add43~22_combout\ & (\irig|Add44~5\ & VCC)) # (!\irig|Add43~22_combout\ & (!\irig|Add44~5\))
-- \irig|Add44~7\ = CARRY((!\irig|Add43~22_combout\ & !\irig|Add44~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add43~22_combout\,
	datad => VCC,
	cin => \irig|Add44~5\,
	combout => \irig|Add44~6_combout\,
	cout => \irig|Add44~7\);

-- Location: LCCOMB_X24_Y22_N16
\irig|Add44~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add44~8_combout\ = (\irig|Add43~18_combout\ & ((GND) # (!\irig|Add44~7\))) # (!\irig|Add43~18_combout\ & (\irig|Add44~7\ $ (GND)))
-- \irig|Add44~9\ = CARRY((\irig|Add43~18_combout\) # (!\irig|Add44~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add43~18_combout\,
	datad => VCC,
	cin => \irig|Add44~7\,
	combout => \irig|Add44~8_combout\,
	cout => \irig|Add44~9\);

-- Location: LCCOMB_X24_Y22_N18
\irig|Add44~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add44~10_combout\ = (\irig|Add43~10_combout\ & (\irig|Add44~9\ & VCC)) # (!\irig|Add43~10_combout\ & (!\irig|Add44~9\))
-- \irig|Add44~11\ = CARRY((!\irig|Add43~10_combout\ & !\irig|Add44~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add43~10_combout\,
	datad => VCC,
	cin => \irig|Add44~9\,
	combout => \irig|Add44~10_combout\,
	cout => \irig|Add44~11\);

-- Location: LCCOMB_X24_Y22_N20
\irig|Add44~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add44~12_combout\ = (\irig|Add43~13_combout\ & ((GND) # (!\irig|Add44~11\))) # (!\irig|Add43~13_combout\ & (\irig|Add44~11\ $ (GND)))
-- \irig|Add44~13\ = CARRY((\irig|Add43~13_combout\) # (!\irig|Add44~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add43~13_combout\,
	datad => VCC,
	cin => \irig|Add44~11\,
	combout => \irig|Add44~12_combout\,
	cout => \irig|Add44~13\);

-- Location: LCCOMB_X24_Y22_N22
\irig|Add44~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add44~14_combout\ = (\irig|Add43~16_combout\ & (\irig|Add44~13\ & VCC)) # (!\irig|Add43~16_combout\ & (!\irig|Add44~13\))
-- \irig|Add44~15\ = CARRY((!\irig|Add43~16_combout\ & !\irig|Add44~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add43~16_combout\,
	datad => VCC,
	cin => \irig|Add44~13\,
	combout => \irig|Add44~14_combout\,
	cout => \irig|Add44~15\);

-- Location: LCCOMB_X24_Y22_N24
\irig|Add44~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add44~16_combout\ = \irig|Add44~15\ $ (\irig|Add43~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \irig|Add43~21_combout\,
	cin => \irig|Add44~15\,
	combout => \irig|Add44~16_combout\);

-- Location: LCCOMB_X16_Y16_N0
\irig|Add30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add30~0_combout\ = \irig|day_s\(2) $ (VCC)
-- \irig|Add30~1\ = CARRY(\irig|day_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|day_s\(2),
	datad => VCC,
	combout => \irig|Add30~0_combout\,
	cout => \irig|Add30~1\);

-- Location: LCCOMB_X16_Y16_N2
\irig|Add30~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add30~2_combout\ = (\irig|aux~7_combout\ & (\irig|Add30~1\ & VCC)) # (!\irig|aux~7_combout\ & (!\irig|Add30~1\))
-- \irig|Add30~3\ = CARRY((!\irig|aux~7_combout\ & !\irig|Add30~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~7_combout\,
	datad => VCC,
	cin => \irig|Add30~1\,
	combout => \irig|Add30~2_combout\,
	cout => \irig|Add30~3\);

-- Location: LCCOMB_X16_Y16_N4
\irig|Add30~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add30~4_combout\ = (\irig|aux~8_combout\ & ((GND) # (!\irig|Add30~3\))) # (!\irig|aux~8_combout\ & (\irig|Add30~3\ $ (GND)))
-- \irig|Add30~5\ = CARRY((\irig|aux~8_combout\) # (!\irig|Add30~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~8_combout\,
	datad => VCC,
	cin => \irig|Add30~3\,
	combout => \irig|Add30~4_combout\,
	cout => \irig|Add30~5\);

-- Location: LCCOMB_X16_Y16_N6
\irig|Add30~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add30~6_combout\ = (\irig|aux~9_combout\ & (!\irig|Add30~5\)) # (!\irig|aux~9_combout\ & ((\irig|Add30~5\) # (GND)))
-- \irig|Add30~7\ = CARRY((!\irig|Add30~5\) # (!\irig|aux~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~9_combout\,
	datad => VCC,
	cin => \irig|Add30~5\,
	combout => \irig|Add30~6_combout\,
	cout => \irig|Add30~7\);

-- Location: LCCOMB_X16_Y16_N8
\irig|Add30~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add30~8_combout\ = (\irig|aux~10_combout\ & (\irig|Add30~7\ $ (GND))) # (!\irig|aux~10_combout\ & (!\irig|Add30~7\ & VCC))
-- \irig|Add30~9\ = CARRY((\irig|aux~10_combout\ & !\irig|Add30~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~10_combout\,
	datad => VCC,
	cin => \irig|Add30~7\,
	combout => \irig|Add30~8_combout\,
	cout => \irig|Add30~9\);

-- Location: LCCOMB_X16_Y16_N10
\irig|Add30~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add30~10_combout\ = (\irig|aux~6_combout\ & (\irig|Add30~9\ & VCC)) # (!\irig|aux~6_combout\ & (!\irig|Add30~9\))
-- \irig|Add30~11\ = CARRY((!\irig|aux~6_combout\ & !\irig|Add30~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~6_combout\,
	datad => VCC,
	cin => \irig|Add30~9\,
	combout => \irig|Add30~10_combout\,
	cout => \irig|Add30~11\);

-- Location: LCCOMB_X16_Y16_N12
\irig|Add30~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add30~12_combout\ = (\irig|Add30~11\ & ((((!\irig|LessThan31~1_combout\ & \irig|Add29~10_combout\))))) # (!\irig|Add30~11\ & (((!\irig|LessThan31~1_combout\ & \irig|Add29~10_combout\)) # (GND)))
-- \irig|Add30~13\ = CARRY(((!\irig|LessThan31~1_combout\ & \irig|Add29~10_combout\)) # (!\irig|Add30~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan31~1_combout\,
	datab => \irig|Add29~10_combout\,
	datad => VCC,
	cin => \irig|Add30~11\,
	combout => \irig|Add30~12_combout\,
	cout => \irig|Add30~13\);

-- Location: LCCOMB_X16_Y16_N14
\irig|Add30~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add30~14_combout\ = \irig|Add30~13\ $ (((\irig|LessThan31~1_combout\) # (!\irig|Add29~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan31~1_combout\,
	datad => \irig|Add29~12_combout\,
	cin => \irig|Add30~13\,
	combout => \irig|Add30~14_combout\);

-- Location: LCCOMB_X17_Y14_N2
\irig|Add32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add32~0_combout\ = \irig|aux~24_combout\ $ (VCC)
-- \irig|Add32~1\ = CARRY(\irig|aux~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~24_combout\,
	datad => VCC,
	combout => \irig|Add32~0_combout\,
	cout => \irig|Add32~1\);

-- Location: LCCOMB_X16_Y14_N14
\irig|Add31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add31~0_combout\ = \irig|aux~21_combout\ $ (VCC)
-- \irig|Add31~1\ = CARRY(\irig|aux~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~21_combout\,
	datad => VCC,
	combout => \irig|Add31~0_combout\,
	cout => \irig|Add31~1\);

-- Location: LCCOMB_X16_Y14_N16
\irig|Add31~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add31~2_combout\ = (\irig|aux~20_combout\ & (\irig|Add31~1\ & VCC)) # (!\irig|aux~20_combout\ & (!\irig|Add31~1\))
-- \irig|Add31~3\ = CARRY((!\irig|aux~20_combout\ & !\irig|Add31~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~20_combout\,
	datad => VCC,
	cin => \irig|Add31~1\,
	combout => \irig|Add31~2_combout\,
	cout => \irig|Add31~3\);

-- Location: LCCOMB_X16_Y14_N18
\irig|Add31~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add31~4_combout\ = (\irig|aux~22_combout\ & (\irig|Add31~3\ $ (GND))) # (!\irig|aux~22_combout\ & (!\irig|Add31~3\ & VCC))
-- \irig|Add31~5\ = CARRY((\irig|aux~22_combout\ & !\irig|Add31~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~22_combout\,
	datad => VCC,
	cin => \irig|Add31~3\,
	combout => \irig|Add31~4_combout\,
	cout => \irig|Add31~5\);

-- Location: LCCOMB_X16_Y14_N20
\irig|Add31~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add31~6_combout\ = (\irig|LessThan32~2_combout\ & (((!\irig|Add31~5\)))) # (!\irig|LessThan32~2_combout\ & ((\irig|Add30~10_combout\ & (\irig|Add31~5\ & VCC)) # (!\irig|Add30~10_combout\ & (!\irig|Add31~5\))))
-- \irig|Add31~7\ = CARRY((!\irig|Add31~5\ & ((\irig|LessThan32~2_combout\) # (!\irig|Add30~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan32~2_combout\,
	datab => \irig|Add30~10_combout\,
	datad => VCC,
	cin => \irig|Add31~5\,
	combout => \irig|Add31~6_combout\,
	cout => \irig|Add31~7\);

-- Location: LCCOMB_X16_Y14_N22
\irig|Add31~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add31~8_combout\ = (\irig|Add31~7\ & ((((!\irig|LessThan32~2_combout\ & \irig|Add30~12_combout\))))) # (!\irig|Add31~7\ & (((!\irig|LessThan32~2_combout\ & \irig|Add30~12_combout\)) # (GND)))
-- \irig|Add31~9\ = CARRY(((!\irig|LessThan32~2_combout\ & \irig|Add30~12_combout\)) # (!\irig|Add31~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan32~2_combout\,
	datab => \irig|Add30~12_combout\,
	datad => VCC,
	cin => \irig|Add31~7\,
	combout => \irig|Add31~8_combout\,
	cout => \irig|Add31~9\);

-- Location: LCCOMB_X16_Y14_N24
\irig|Add31~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add31~10_combout\ = \irig|Add31~9\ $ (((\irig|LessThan32~2_combout\) # (!\irig|Add30~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan32~2_combout\,
	datad => \irig|Add30~14_combout\,
	cin => \irig|Add31~9\,
	combout => \irig|Add31~10_combout\);

-- Location: LCCOMB_X17_Y14_N4
\irig|Add32~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add32~2_combout\ = (\irig|aux~28_combout\ & (\irig|Add32~1\ & VCC)) # (!\irig|aux~28_combout\ & (!\irig|Add32~1\))
-- \irig|Add32~3\ = CARRY((!\irig|aux~28_combout\ & !\irig|Add32~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~28_combout\,
	datad => VCC,
	cin => \irig|Add32~1\,
	combout => \irig|Add32~2_combout\,
	cout => \irig|Add32~3\);

-- Location: LCCOMB_X17_Y14_N6
\irig|Add32~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add32~4_combout\ = (\irig|aux~25_combout\ & (\irig|Add32~3\ $ (GND))) # (!\irig|aux~25_combout\ & (!\irig|Add32~3\ & VCC))
-- \irig|Add32~5\ = CARRY((\irig|aux~25_combout\ & !\irig|Add32~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~25_combout\,
	datad => VCC,
	cin => \irig|Add32~3\,
	combout => \irig|Add32~4_combout\,
	cout => \irig|Add32~5\);

-- Location: LCCOMB_X17_Y14_N8
\irig|Add32~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add32~6_combout\ = (\irig|aux~26_combout\ & (\irig|Add32~5\ & VCC)) # (!\irig|aux~26_combout\ & (!\irig|Add32~5\))
-- \irig|Add32~7\ = CARRY((!\irig|aux~26_combout\ & !\irig|Add32~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~26_combout\,
	datad => VCC,
	cin => \irig|Add32~5\,
	combout => \irig|Add32~6_combout\,
	cout => \irig|Add32~7\);

-- Location: LCCOMB_X17_Y14_N10
\irig|Add32~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add32~8_combout\ = (\irig|Add32~7\ & ((((!\irig|LessThan33~1_combout\ & \irig|Add31~6_combout\))))) # (!\irig|Add32~7\ & (((!\irig|LessThan33~1_combout\ & \irig|Add31~6_combout\)) # (GND)))
-- \irig|Add32~9\ = CARRY(((!\irig|LessThan33~1_combout\ & \irig|Add31~6_combout\)) # (!\irig|Add32~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan33~1_combout\,
	datab => \irig|Add31~6_combout\,
	datad => VCC,
	cin => \irig|Add32~7\,
	combout => \irig|Add32~8_combout\,
	cout => \irig|Add32~9\);

-- Location: LCCOMB_X17_Y14_N12
\irig|Add32~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add32~10_combout\ = (\irig|LessThan33~1_combout\ & (((!\irig|Add32~9\)))) # (!\irig|LessThan33~1_combout\ & ((\irig|Add31~8_combout\ & (\irig|Add32~9\ & VCC)) # (!\irig|Add31~8_combout\ & (!\irig|Add32~9\))))
-- \irig|Add32~11\ = CARRY((!\irig|Add32~9\ & ((\irig|LessThan33~1_combout\) # (!\irig|Add31~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan33~1_combout\,
	datab => \irig|Add31~8_combout\,
	datad => VCC,
	cin => \irig|Add32~9\,
	combout => \irig|Add32~10_combout\,
	cout => \irig|Add32~11\);

-- Location: LCCOMB_X17_Y14_N14
\irig|Add32~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add32~12_combout\ = \irig|Add32~11\ $ (((!\irig|LessThan33~1_combout\ & \irig|Add31~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan33~1_combout\,
	datad => \irig|Add31~10_combout\,
	cin => \irig|Add32~11\,
	combout => \irig|Add32~12_combout\);

-- Location: LCCOMB_X19_Y14_N8
\irig|Add33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add33~0_combout\ = \irig|aux~23_combout\ $ (VCC)
-- \irig|Add33~1\ = CARRY(\irig|aux~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~23_combout\,
	datad => VCC,
	combout => \irig|Add33~0_combout\,
	cout => \irig|Add33~1\);

-- Location: LCCOMB_X19_Y14_N10
\irig|Add33~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add33~2_combout\ = (\irig|aux~27_combout\ & (\irig|Add33~1\ & VCC)) # (!\irig|aux~27_combout\ & (!\irig|Add33~1\))
-- \irig|Add33~3\ = CARRY((!\irig|aux~27_combout\ & !\irig|Add33~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~27_combout\,
	datad => VCC,
	cin => \irig|Add33~1\,
	combout => \irig|Add33~2_combout\,
	cout => \irig|Add33~3\);

-- Location: LCCOMB_X19_Y14_N12
\irig|Add33~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add33~4_combout\ = (\irig|aux~29_combout\ & (\irig|Add33~3\ $ (GND))) # (!\irig|aux~29_combout\ & (!\irig|Add33~3\ & VCC))
-- \irig|Add33~5\ = CARRY((\irig|aux~29_combout\ & !\irig|Add33~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~29_combout\,
	datad => VCC,
	cin => \irig|Add33~3\,
	combout => \irig|Add33~4_combout\,
	cout => \irig|Add33~5\);

-- Location: LCCOMB_X19_Y14_N14
\irig|Add33~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add33~6_combout\ = (\irig|aux~30_combout\ & (\irig|Add33~5\ & VCC)) # (!\irig|aux~30_combout\ & (!\irig|Add33~5\))
-- \irig|Add33~7\ = CARRY((!\irig|aux~30_combout\ & !\irig|Add33~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~30_combout\,
	datad => VCC,
	cin => \irig|Add33~5\,
	combout => \irig|Add33~6_combout\,
	cout => \irig|Add33~7\);

-- Location: LCCOMB_X20_Y14_N10
\irig|Add34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add34~0_combout\ = \irig|day_s\(1) $ (VCC)
-- \irig|Add34~1\ = CARRY(\irig|day_s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(1),
	datad => VCC,
	combout => \irig|Add34~0_combout\,
	cout => \irig|Add34~1\);

-- Location: LCCOMB_X20_Y14_N12
\irig|Add34~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add34~2_combout\ = (\irig|aux~34_combout\ & (\irig|Add34~1\ & VCC)) # (!\irig|aux~34_combout\ & (!\irig|Add34~1\))
-- \irig|Add34~3\ = CARRY((!\irig|aux~34_combout\ & !\irig|Add34~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~34_combout\,
	datad => VCC,
	cin => \irig|Add34~1\,
	combout => \irig|Add34~2_combout\,
	cout => \irig|Add34~3\);

-- Location: LCCOMB_X20_Y14_N14
\irig|Add34~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add34~4_combout\ = (\irig|aux~33_combout\ & (\irig|Add34~3\ $ (GND))) # (!\irig|aux~33_combout\ & (!\irig|Add34~3\ & VCC))
-- \irig|Add34~5\ = CARRY((\irig|aux~33_combout\ & !\irig|Add34~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~33_combout\,
	datad => VCC,
	cin => \irig|Add34~3\,
	combout => \irig|Add34~4_combout\,
	cout => \irig|Add34~5\);

-- Location: LCCOMB_X20_Y14_N16
\irig|Add34~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add34~6_combout\ = (\irig|aux~32_combout\ & (\irig|Add34~5\ & VCC)) # (!\irig|aux~32_combout\ & (!\irig|Add34~5\))
-- \irig|Add34~7\ = CARRY((!\irig|aux~32_combout\ & !\irig|Add34~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~32_combout\,
	datad => VCC,
	cin => \irig|Add34~5\,
	combout => \irig|Add34~6_combout\,
	cout => \irig|Add34~7\);

-- Location: LCCOMB_X20_Y14_N18
\irig|Add34~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add34~8_combout\ = (\irig|aux~31_combout\ & ((GND) # (!\irig|Add34~7\))) # (!\irig|aux~31_combout\ & (\irig|Add34~7\ $ (GND)))
-- \irig|Add34~9\ = CARRY((\irig|aux~31_combout\) # (!\irig|Add34~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~31_combout\,
	datad => VCC,
	cin => \irig|Add34~7\,
	combout => \irig|Add34~8_combout\,
	cout => \irig|Add34~9\);

-- Location: LCCOMB_X19_Y14_N16
\irig|Add33~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add33~8_combout\ = (\irig|Add33~7\ & ((((\irig|Add32~6_combout\ & !\irig|LessThan34~4_combout\))))) # (!\irig|Add33~7\ & (((\irig|Add32~6_combout\ & !\irig|LessThan34~4_combout\)) # (GND)))
-- \irig|Add33~9\ = CARRY(((\irig|Add32~6_combout\ & !\irig|LessThan34~4_combout\)) # (!\irig|Add33~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add32~6_combout\,
	datab => \irig|LessThan34~4_combout\,
	datad => VCC,
	cin => \irig|Add33~7\,
	combout => \irig|Add33~8_combout\,
	cout => \irig|Add33~9\);

-- Location: LCCOMB_X19_Y14_N18
\irig|Add33~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add33~10_combout\ = (\irig|Add32~8_combout\ & ((\irig|LessThan34~4_combout\ & (!\irig|Add33~9\)) # (!\irig|LessThan34~4_combout\ & (\irig|Add33~9\ & VCC)))) # (!\irig|Add32~8_combout\ & (((!\irig|Add33~9\))))
-- \irig|Add33~11\ = CARRY((!\irig|Add33~9\ & ((\irig|LessThan34~4_combout\) # (!\irig|Add32~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add32~8_combout\,
	datab => \irig|LessThan34~4_combout\,
	datad => VCC,
	cin => \irig|Add33~9\,
	combout => \irig|Add33~10_combout\,
	cout => \irig|Add33~11\);

-- Location: LCCOMB_X19_Y14_N20
\irig|Add33~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add33~12_combout\ = (\irig|Add33~11\ & ((((\irig|Add32~10_combout\ & !\irig|LessThan34~4_combout\))))) # (!\irig|Add33~11\ & (((\irig|Add32~10_combout\ & !\irig|LessThan34~4_combout\)) # (GND)))
-- \irig|Add33~13\ = CARRY(((\irig|Add32~10_combout\ & !\irig|LessThan34~4_combout\)) # (!\irig|Add33~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add32~10_combout\,
	datab => \irig|LessThan34~4_combout\,
	datad => VCC,
	cin => \irig|Add33~11\,
	combout => \irig|Add33~12_combout\,
	cout => \irig|Add33~13\);

-- Location: LCCOMB_X19_Y14_N22
\irig|Add33~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add33~14_combout\ = \irig|Add33~13\ $ (((\irig|LessThan34~4_combout\) # (!\irig|Add32~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|LessThan34~4_combout\,
	datad => \irig|Add32~12_combout\,
	cin => \irig|Add33~13\,
	combout => \irig|Add33~14_combout\);

-- Location: LCCOMB_X20_Y14_N20
\irig|Add34~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add34~10_combout\ = (\irig|Add33~8_combout\ & ((\irig|LessThan35~2_combout\ & (!\irig|Add34~9\)) # (!\irig|LessThan35~2_combout\ & (\irig|Add34~9\ & VCC)))) # (!\irig|Add33~8_combout\ & (((!\irig|Add34~9\))))
-- \irig|Add34~11\ = CARRY((!\irig|Add34~9\ & ((\irig|LessThan35~2_combout\) # (!\irig|Add33~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add33~8_combout\,
	datab => \irig|LessThan35~2_combout\,
	datad => VCC,
	cin => \irig|Add34~9\,
	combout => \irig|Add34~10_combout\,
	cout => \irig|Add34~11\);

-- Location: LCCOMB_X20_Y14_N22
\irig|Add34~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add34~12_combout\ = (\irig|Add34~11\ & ((((!\irig|LessThan35~2_combout\ & \irig|Add33~10_combout\))))) # (!\irig|Add34~11\ & (((!\irig|LessThan35~2_combout\ & \irig|Add33~10_combout\)) # (GND)))
-- \irig|Add34~13\ = CARRY(((!\irig|LessThan35~2_combout\ & \irig|Add33~10_combout\)) # (!\irig|Add34~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan35~2_combout\,
	datab => \irig|Add33~10_combout\,
	datad => VCC,
	cin => \irig|Add34~11\,
	combout => \irig|Add34~12_combout\,
	cout => \irig|Add34~13\);

-- Location: LCCOMB_X20_Y14_N24
\irig|Add34~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add34~14_combout\ = (\irig|LessThan35~2_combout\ & (((!\irig|Add34~13\)))) # (!\irig|LessThan35~2_combout\ & ((\irig|Add33~12_combout\ & (\irig|Add34~13\ & VCC)) # (!\irig|Add33~12_combout\ & (!\irig|Add34~13\))))
-- \irig|Add34~15\ = CARRY((!\irig|Add34~13\ & ((\irig|LessThan35~2_combout\) # (!\irig|Add33~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan35~2_combout\,
	datab => \irig|Add33~12_combout\,
	datad => VCC,
	cin => \irig|Add34~13\,
	combout => \irig|Add34~14_combout\,
	cout => \irig|Add34~15\);

-- Location: LCCOMB_X20_Y14_N26
\irig|Add34~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add34~16_combout\ = \irig|Add34~15\ $ (((!\irig|LessThan35~2_combout\ & \irig|Add33~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|LessThan35~2_combout\,
	datad => \irig|Add33~14_combout\,
	cin => \irig|Add34~15\,
	combout => \irig|Add34~16_combout\);

-- Location: LCCOMB_X21_Y14_N16
\irig|Add35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add35~0_combout\ = \irig|aux~37_combout\ $ (VCC)
-- \irig|Add35~1\ = CARRY(\irig|aux~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~37_combout\,
	datad => VCC,
	combout => \irig|Add35~0_combout\,
	cout => \irig|Add35~1\);

-- Location: LCCOMB_X21_Y14_N18
\irig|Add35~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add35~2_combout\ = (\irig|aux~36_combout\ & (\irig|Add35~1\ & VCC)) # (!\irig|aux~36_combout\ & (!\irig|Add35~1\))
-- \irig|Add35~3\ = CARRY((!\irig|aux~36_combout\ & !\irig|Add35~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~36_combout\,
	datad => VCC,
	cin => \irig|Add35~1\,
	combout => \irig|Add35~2_combout\,
	cout => \irig|Add35~3\);

-- Location: LCCOMB_X21_Y14_N20
\irig|Add35~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add35~4_combout\ = (\irig|aux~35_combout\ & ((GND) # (!\irig|Add35~3\))) # (!\irig|aux~35_combout\ & (\irig|Add35~3\ $ (GND)))
-- \irig|Add35~5\ = CARRY((\irig|aux~35_combout\) # (!\irig|Add35~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~35_combout\,
	datad => VCC,
	cin => \irig|Add35~3\,
	combout => \irig|Add35~4_combout\,
	cout => \irig|Add35~5\);

-- Location: LCCOMB_X21_Y14_N22
\irig|Add35~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add35~6_combout\ = (\irig|LessThan36~2_combout\ & (((!\irig|Add35~5\)))) # (!\irig|LessThan36~2_combout\ & ((\irig|Add34~10_combout\ & (\irig|Add35~5\ & VCC)) # (!\irig|Add34~10_combout\ & (!\irig|Add35~5\))))
-- \irig|Add35~7\ = CARRY((!\irig|Add35~5\ & ((\irig|LessThan36~2_combout\) # (!\irig|Add34~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan36~2_combout\,
	datab => \irig|Add34~10_combout\,
	datad => VCC,
	cin => \irig|Add35~5\,
	combout => \irig|Add35~6_combout\,
	cout => \irig|Add35~7\);

-- Location: LCCOMB_X21_Y14_N24
\irig|Add35~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add35~8_combout\ = (\irig|Add35~7\ & ((((!\irig|LessThan36~2_combout\ & \irig|Add34~12_combout\))))) # (!\irig|Add35~7\ & (((!\irig|LessThan36~2_combout\ & \irig|Add34~12_combout\)) # (GND)))
-- \irig|Add35~9\ = CARRY(((!\irig|LessThan36~2_combout\ & \irig|Add34~12_combout\)) # (!\irig|Add35~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan36~2_combout\,
	datab => \irig|Add34~12_combout\,
	datad => VCC,
	cin => \irig|Add35~7\,
	combout => \irig|Add35~8_combout\,
	cout => \irig|Add35~9\);

-- Location: LCCOMB_X21_Y14_N26
\irig|Add35~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add35~10_combout\ = (\irig|LessThan36~2_combout\ & (((!\irig|Add35~9\)))) # (!\irig|LessThan36~2_combout\ & ((\irig|Add34~14_combout\ & (\irig|Add35~9\ & VCC)) # (!\irig|Add34~14_combout\ & (!\irig|Add35~9\))))
-- \irig|Add35~11\ = CARRY((!\irig|Add35~9\ & ((\irig|LessThan36~2_combout\) # (!\irig|Add34~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan36~2_combout\,
	datab => \irig|Add34~14_combout\,
	datad => VCC,
	cin => \irig|Add35~9\,
	combout => \irig|Add35~10_combout\,
	cout => \irig|Add35~11\);

-- Location: LCCOMB_X21_Y14_N28
\irig|Add35~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add35~12_combout\ = \irig|Add35~11\ $ (((\irig|Add34~16_combout\ & !\irig|LessThan36~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add34~16_combout\,
	datad => \irig|LessThan36~2_combout\,
	cin => \irig|Add35~11\,
	combout => \irig|Add35~12_combout\);

-- Location: LCCOMB_X24_Y19_N16
\irig|Add20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add20~0_combout\ = \irig|min_s\(1) $ (VCC)
-- \irig|Add20~1\ = CARRY(\irig|min_s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s\(1),
	datad => VCC,
	combout => \irig|Add20~0_combout\,
	cout => \irig|Add20~1\);

-- Location: LCCOMB_X24_Y19_N18
\irig|Add20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add20~2_combout\ = (\irig|Add20~1\ & ((\irig|min_s\(2) $ (!\irig|aux~39_combout\)))) # (!\irig|Add20~1\ & (\irig|min_s\(2) $ ((\irig|aux~39_combout\))))
-- \irig|Add20~3\ = CARRY((!\irig|Add20~1\ & (\irig|min_s\(2) $ (\irig|aux~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s\(2),
	datab => \irig|aux~39_combout\,
	datad => VCC,
	cin => \irig|Add20~1\,
	combout => \irig|Add20~2_combout\,
	cout => \irig|Add20~3\);

-- Location: LCCOMB_X28_Y19_N10
\irig|Add21~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add21~6_combout\ = (\irig|aux~43_combout\ & (\irig|Add21~5\ & VCC)) # (!\irig|aux~43_combout\ & (!\irig|Add21~5\))
-- \irig|Add21~7\ = CARRY((!\irig|aux~43_combout\ & !\irig|Add21~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~43_combout\,
	datad => VCC,
	cin => \irig|Add21~5\,
	combout => \irig|Add21~6_combout\,
	cout => \irig|Add21~7\);

-- Location: LCCOMB_X22_Y14_N14
\irig|Add36~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add36~4_combout\ = \irig|aux~38_combout\ $ (VCC)
-- \irig|Add36~5\ = CARRY(\irig|aux~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~38_combout\,
	datad => VCC,
	combout => \irig|Add36~4_combout\,
	cout => \irig|Add36~5\);

-- Location: LCCOMB_X22_Y14_N16
\irig|Add36~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add36~6_combout\ = (\irig|Add35~20_combout\ & (\irig|Add36~5\ & VCC)) # (!\irig|Add35~20_combout\ & (!\irig|Add36~5\))
-- \irig|Add36~7\ = CARRY((!\irig|Add35~20_combout\ & !\irig|Add36~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add35~20_combout\,
	datad => VCC,
	cin => \irig|Add36~5\,
	combout => \irig|Add36~6_combout\,
	cout => \irig|Add36~7\);

-- Location: LCCOMB_X22_Y14_N18
\irig|Add36~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add36~8_combout\ = (\irig|Add35~19_combout\ & ((GND) # (!\irig|Add36~7\))) # (!\irig|Add35~19_combout\ & (\irig|Add36~7\ $ (GND)))
-- \irig|Add36~9\ = CARRY((\irig|Add35~19_combout\) # (!\irig|Add36~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add35~19_combout\,
	datad => VCC,
	cin => \irig|Add36~7\,
	combout => \irig|Add36~8_combout\,
	cout => \irig|Add36~9\);

-- Location: LCCOMB_X22_Y14_N20
\irig|Add36~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add36~10_combout\ = (\irig|Add35~14_combout\ & (\irig|Add36~9\ & VCC)) # (!\irig|Add35~14_combout\ & (!\irig|Add36~9\))
-- \irig|Add36~11\ = CARRY((!\irig|Add35~14_combout\ & !\irig|Add36~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add35~14_combout\,
	datad => VCC,
	cin => \irig|Add36~9\,
	combout => \irig|Add36~10_combout\,
	cout => \irig|Add36~11\);

-- Location: LCCOMB_X22_Y14_N22
\irig|Add36~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add36~12_combout\ = (\irig|Add35~18_combout\ & ((GND) # (!\irig|Add36~11\))) # (!\irig|Add35~18_combout\ & (\irig|Add36~11\ $ (GND)))
-- \irig|Add36~13\ = CARRY((\irig|Add35~18_combout\) # (!\irig|Add36~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add35~18_combout\,
	datad => VCC,
	cin => \irig|Add36~11\,
	combout => \irig|Add36~12_combout\,
	cout => \irig|Add36~13\);

-- Location: LCCOMB_X22_Y14_N24
\irig|Add36~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add36~14_combout\ = (\irig|Add35~17_combout\ & (\irig|Add36~13\ & VCC)) # (!\irig|Add35~17_combout\ & (!\irig|Add36~13\))
-- \irig|Add36~15\ = CARRY((!\irig|Add35~17_combout\ & !\irig|Add36~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add35~17_combout\,
	datad => VCC,
	cin => \irig|Add36~13\,
	combout => \irig|Add36~14_combout\,
	cout => \irig|Add36~15\);

-- Location: LCCOMB_X22_Y14_N26
\irig|Add36~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add36~16_combout\ = (\irig|Add35~16_combout\ & ((GND) # (!\irig|Add36~15\))) # (!\irig|Add35~16_combout\ & (\irig|Add36~15\ $ (GND)))
-- \irig|Add36~17\ = CARRY((\irig|Add35~16_combout\) # (!\irig|Add36~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add35~16_combout\,
	datad => VCC,
	cin => \irig|Add36~15\,
	combout => \irig|Add36~16_combout\,
	cout => \irig|Add36~17\);

-- Location: LCCOMB_X22_Y14_N28
\irig|Add36~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add36~18_combout\ = \irig|Add36~17\ $ (!\irig|Add35~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \irig|Add35~15_combout\,
	cin => \irig|Add36~17\,
	combout => \irig|Add36~18_combout\);

-- Location: LCCOMB_X23_Y14_N12
\irig|Add37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add37~0_combout\ = \irig|aux~47_combout\ $ (VCC)
-- \irig|Add37~1\ = CARRY(\irig|aux~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~47_combout\,
	datad => VCC,
	combout => \irig|Add37~0_combout\,
	cout => \irig|Add37~1\);

-- Location: LCCOMB_X23_Y14_N14
\irig|Add37~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add37~2_combout\ = (\irig|Add36~27_combout\ & (\irig|Add37~1\ & VCC)) # (!\irig|Add36~27_combout\ & (!\irig|Add37~1\))
-- \irig|Add37~3\ = CARRY((!\irig|Add36~27_combout\ & !\irig|Add37~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add36~27_combout\,
	datad => VCC,
	cin => \irig|Add37~1\,
	combout => \irig|Add37~2_combout\,
	cout => \irig|Add37~3\);

-- Location: LCCOMB_X23_Y14_N16
\irig|Add37~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add37~4_combout\ = (\irig|Add36~26_combout\ & ((GND) # (!\irig|Add37~3\))) # (!\irig|Add36~26_combout\ & (\irig|Add37~3\ $ (GND)))
-- \irig|Add37~5\ = CARRY((\irig|Add36~26_combout\) # (!\irig|Add37~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add36~26_combout\,
	datad => VCC,
	cin => \irig|Add37~3\,
	combout => \irig|Add37~4_combout\,
	cout => \irig|Add37~5\);

-- Location: LCCOMB_X23_Y14_N18
\irig|Add37~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add37~6_combout\ = (\irig|Add36~25_combout\ & (\irig|Add37~5\ & VCC)) # (!\irig|Add36~25_combout\ & (!\irig|Add37~5\))
-- \irig|Add37~7\ = CARRY((!\irig|Add36~25_combout\ & !\irig|Add37~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add36~25_combout\,
	datad => VCC,
	cin => \irig|Add37~5\,
	combout => \irig|Add37~6_combout\,
	cout => \irig|Add37~7\);

-- Location: LCCOMB_X23_Y14_N20
\irig|Add37~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add37~8_combout\ = (\irig|Add36~24_combout\ & ((GND) # (!\irig|Add37~7\))) # (!\irig|Add36~24_combout\ & (\irig|Add37~7\ $ (GND)))
-- \irig|Add37~9\ = CARRY((\irig|Add36~24_combout\) # (!\irig|Add37~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add36~24_combout\,
	datad => VCC,
	cin => \irig|Add37~7\,
	combout => \irig|Add37~8_combout\,
	cout => \irig|Add37~9\);

-- Location: LCCOMB_X23_Y14_N22
\irig|Add37~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add37~10_combout\ = (\irig|Add36~23_combout\ & (\irig|Add37~9\ & VCC)) # (!\irig|Add36~23_combout\ & (!\irig|Add37~9\))
-- \irig|Add37~11\ = CARRY((!\irig|Add36~23_combout\ & !\irig|Add37~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add36~23_combout\,
	datad => VCC,
	cin => \irig|Add37~9\,
	combout => \irig|Add37~10_combout\,
	cout => \irig|Add37~11\);

-- Location: LCCOMB_X23_Y14_N24
\irig|Add37~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add37~12_combout\ = (\irig|Add36~22_combout\ & ((GND) # (!\irig|Add37~11\))) # (!\irig|Add36~22_combout\ & (\irig|Add37~11\ $ (GND)))
-- \irig|Add37~13\ = CARRY((\irig|Add36~22_combout\) # (!\irig|Add37~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add36~22_combout\,
	datad => VCC,
	cin => \irig|Add37~11\,
	combout => \irig|Add37~12_combout\,
	cout => \irig|Add37~13\);

-- Location: LCCOMB_X23_Y14_N26
\irig|Add37~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add37~14_combout\ = (\irig|Add36~21_combout\ & (\irig|Add37~13\ & VCC)) # (!\irig|Add36~21_combout\ & (!\irig|Add37~13\))
-- \irig|Add37~15\ = CARRY((!\irig|Add36~21_combout\ & !\irig|Add37~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add36~21_combout\,
	datad => VCC,
	cin => \irig|Add37~13\,
	combout => \irig|Add37~14_combout\,
	cout => \irig|Add37~15\);

-- Location: LCCOMB_X23_Y14_N28
\irig|Add37~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add37~16_combout\ = \irig|Add37~15\ $ (\irig|Add36~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \irig|Add36~20_combout\,
	cin => \irig|Add37~15\,
	combout => \irig|Add37~16_combout\);

-- Location: LCCOMB_X29_Y19_N14
\irig|Add22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add22~2_combout\ = \irig|aux~46_combout\ $ (VCC)
-- \irig|Add22~3\ = CARRY(\irig|aux~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~46_combout\,
	datad => VCC,
	combout => \irig|Add22~2_combout\,
	cout => \irig|Add22~3\);

-- Location: LCCOMB_X29_Y19_N26
\irig|Add22~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add22~16_combout\ = (\irig|Add22~14\ & ((((\irig|Add21~10_combout\ & \irig|LessThan21~1_combout\))))) # (!\irig|Add22~14\ & (((\irig|Add21~10_combout\ & \irig|LessThan21~1_combout\)) # (GND)))
-- \irig|Add22~17\ = CARRY(((\irig|Add21~10_combout\ & \irig|LessThan21~1_combout\)) # (!\irig|Add22~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add21~10_combout\,
	datab => \irig|LessThan21~1_combout\,
	datad => VCC,
	cin => \irig|Add22~14\,
	combout => \irig|Add22~16_combout\,
	cout => \irig|Add22~17\);

-- Location: LCCOMB_X30_Y19_N0
\irig|Add23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add23~0_combout\ = \irig|aux~48_combout\ $ (VCC)
-- \irig|Add23~1\ = CARRY(\irig|aux~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~48_combout\,
	datad => VCC,
	combout => \irig|Add23~0_combout\,
	cout => \irig|Add23~1\);

-- Location: LCCOMB_X30_Y19_N2
\irig|Add23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add23~2_combout\ = (\irig|Add22~24_combout\ & (\irig|Add23~1\ & VCC)) # (!\irig|Add22~24_combout\ & (!\irig|Add23~1\))
-- \irig|Add23~3\ = CARRY((!\irig|Add22~24_combout\ & !\irig|Add23~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add22~24_combout\,
	datad => VCC,
	cin => \irig|Add23~1\,
	combout => \irig|Add23~2_combout\,
	cout => \irig|Add23~3\);

-- Location: LCCOMB_X30_Y19_N4
\irig|Add23~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add23~4_combout\ = (\irig|Add22~19_combout\ & ((GND) # (!\irig|Add23~3\))) # (!\irig|Add22~19_combout\ & (\irig|Add23~3\ $ (GND)))
-- \irig|Add23~5\ = CARRY((\irig|Add22~19_combout\) # (!\irig|Add23~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add22~19_combout\,
	datad => VCC,
	cin => \irig|Add23~3\,
	combout => \irig|Add23~4_combout\,
	cout => \irig|Add23~5\);

-- Location: LCCOMB_X30_Y19_N6
\irig|Add23~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add23~6_combout\ = (\irig|Add22~20_combout\ & (\irig|Add23~5\ & VCC)) # (!\irig|Add22~20_combout\ & (!\irig|Add23~5\))
-- \irig|Add23~7\ = CARRY((!\irig|Add22~20_combout\ & !\irig|Add23~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add22~20_combout\,
	datad => VCC,
	cin => \irig|Add23~5\,
	combout => \irig|Add23~6_combout\,
	cout => \irig|Add23~7\);

-- Location: LCCOMB_X30_Y19_N8
\irig|Add23~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add23~8_combout\ = (\irig|Add22~21_combout\ & ((GND) # (!\irig|Add23~7\))) # (!\irig|Add22~21_combout\ & (\irig|Add23~7\ $ (GND)))
-- \irig|Add23~9\ = CARRY((\irig|Add22~21_combout\) # (!\irig|Add23~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add22~21_combout\,
	datad => VCC,
	cin => \irig|Add23~7\,
	combout => \irig|Add23~8_combout\,
	cout => \irig|Add23~9\);

-- Location: LCCOMB_X30_Y19_N10
\irig|Add23~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add23~10_combout\ = (\irig|Add22~12_combout\ & (\irig|Add23~9\ & VCC)) # (!\irig|Add22~12_combout\ & (!\irig|Add23~9\))
-- \irig|Add23~11\ = CARRY((!\irig|Add22~12_combout\ & !\irig|Add23~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add22~12_combout\,
	datad => VCC,
	cin => \irig|Add23~9\,
	combout => \irig|Add23~10_combout\,
	cout => \irig|Add23~11\);

-- Location: LCCOMB_X30_Y19_N12
\irig|Add23~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add23~12_combout\ = (\irig|Add22~15_combout\ & ((GND) # (!\irig|Add23~11\))) # (!\irig|Add22~15_combout\ & (\irig|Add23~11\ $ (GND)))
-- \irig|Add23~13\ = CARRY((\irig|Add22~15_combout\) # (!\irig|Add23~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add22~15_combout\,
	datad => VCC,
	cin => \irig|Add23~11\,
	combout => \irig|Add23~12_combout\,
	cout => \irig|Add23~13\);

-- Location: LCCOMB_X30_Y19_N14
\irig|Add23~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add23~14_combout\ = (\irig|Add22~18_combout\ & (\irig|Add23~13\ & VCC)) # (!\irig|Add22~18_combout\ & (!\irig|Add23~13\))
-- \irig|Add23~15\ = CARRY((!\irig|Add22~18_combout\ & !\irig|Add23~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add22~18_combout\,
	datad => VCC,
	cin => \irig|Add23~13\,
	combout => \irig|Add23~14_combout\,
	cout => \irig|Add23~15\);

-- Location: LCCOMB_X30_Y19_N16
\irig|Add23~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add23~16_combout\ = \irig|Add23~15\ $ (\irig|Add22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \irig|Add22~25_combout\,
	cin => \irig|Add23~15\,
	combout => \irig|Add23~16_combout\);

-- Location: LCCOMB_X23_Y17_N12
\irig|Add14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add14~6_combout\ = (\irig|aux~52_combout\ & (\irig|Add14~5\ & VCC)) # (!\irig|aux~52_combout\ & (!\irig|Add14~5\))
-- \irig|Add14~7\ = CARRY((!\irig|aux~52_combout\ & !\irig|Add14~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~52_combout\,
	datad => VCC,
	cin => \irig|Add14~5\,
	combout => \irig|Add14~6_combout\,
	cout => \irig|Add14~7\);

-- Location: LCCOMB_X26_Y20_N2
\irig|Add16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add16~2_combout\ = (\irig|aux~56_combout\ & (\irig|Add16~1\ & VCC)) # (!\irig|aux~56_combout\ & (!\irig|Add16~1\))
-- \irig|Add16~3\ = CARRY((!\irig|aux~56_combout\ & !\irig|Add16~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~56_combout\,
	datad => VCC,
	cin => \irig|Add16~1\,
	combout => \irig|Add16~2_combout\,
	cout => \irig|Add16~3\);

-- Location: LCCOMB_X26_Y20_N12
\irig|Add16~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add16~14_combout\ = (\irig|Add16~12\ & ((((\irig|LessThan14~1_combout\ & \irig|Add15~10_combout\))))) # (!\irig|Add16~12\ & (((\irig|LessThan14~1_combout\ & \irig|Add15~10_combout\)) # (GND)))
-- \irig|Add16~15\ = CARRY(((\irig|LessThan14~1_combout\ & \irig|Add15~10_combout\)) # (!\irig|Add16~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan14~1_combout\,
	datab => \irig|Add15~10_combout\,
	datad => VCC,
	cin => \irig|Add16~12\,
	combout => \irig|Add16~14_combout\,
	cout => \irig|Add16~15\);

-- Location: LCCOMB_X27_Y20_N2
\irig|Add17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add17~0_combout\ = \irig|aux~58_combout\ $ (VCC)
-- \irig|Add17~1\ = CARRY(\irig|aux~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~58_combout\,
	datad => VCC,
	combout => \irig|Add17~0_combout\,
	cout => \irig|Add17~1\);

-- Location: LCCOMB_X27_Y20_N4
\irig|Add17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add17~2_combout\ = (\irig|Add16~22_combout\ & (\irig|Add17~1\ & VCC)) # (!\irig|Add16~22_combout\ & (!\irig|Add17~1\))
-- \irig|Add17~3\ = CARRY((!\irig|Add16~22_combout\ & !\irig|Add17~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add16~22_combout\,
	datad => VCC,
	cin => \irig|Add17~1\,
	combout => \irig|Add17~2_combout\,
	cout => \irig|Add17~3\);

-- Location: LCCOMB_X27_Y20_N6
\irig|Add17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add17~4_combout\ = (\irig|Add16~17_combout\ & ((GND) # (!\irig|Add17~3\))) # (!\irig|Add16~17_combout\ & (\irig|Add17~3\ $ (GND)))
-- \irig|Add17~5\ = CARRY((\irig|Add16~17_combout\) # (!\irig|Add17~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add16~17_combout\,
	datad => VCC,
	cin => \irig|Add17~3\,
	combout => \irig|Add17~4_combout\,
	cout => \irig|Add17~5\);

-- Location: LCCOMB_X27_Y20_N8
\irig|Add17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add17~6_combout\ = (\irig|Add16~18_combout\ & (\irig|Add17~5\ & VCC)) # (!\irig|Add16~18_combout\ & (!\irig|Add17~5\))
-- \irig|Add17~7\ = CARRY((!\irig|Add16~18_combout\ & !\irig|Add17~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add16~18_combout\,
	datad => VCC,
	cin => \irig|Add17~5\,
	combout => \irig|Add17~6_combout\,
	cout => \irig|Add17~7\);

-- Location: LCCOMB_X27_Y20_N10
\irig|Add17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add17~8_combout\ = (\irig|Add16~19_combout\ & ((GND) # (!\irig|Add17~7\))) # (!\irig|Add16~19_combout\ & (\irig|Add17~7\ $ (GND)))
-- \irig|Add17~9\ = CARRY((\irig|Add16~19_combout\) # (!\irig|Add17~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add16~19_combout\,
	datad => VCC,
	cin => \irig|Add17~7\,
	combout => \irig|Add17~8_combout\,
	cout => \irig|Add17~9\);

-- Location: LCCOMB_X27_Y20_N12
\irig|Add17~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add17~10_combout\ = (\irig|Add16~10_combout\ & (\irig|Add17~9\ & VCC)) # (!\irig|Add16~10_combout\ & (!\irig|Add17~9\))
-- \irig|Add17~11\ = CARRY((!\irig|Add16~10_combout\ & !\irig|Add17~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add16~10_combout\,
	datad => VCC,
	cin => \irig|Add17~9\,
	combout => \irig|Add17~10_combout\,
	cout => \irig|Add17~11\);

-- Location: LCCOMB_X27_Y20_N14
\irig|Add17~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add17~12_combout\ = (\irig|Add16~13_combout\ & ((GND) # (!\irig|Add17~11\))) # (!\irig|Add16~13_combout\ & (\irig|Add17~11\ $ (GND)))
-- \irig|Add17~13\ = CARRY((\irig|Add16~13_combout\) # (!\irig|Add17~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add16~13_combout\,
	datad => VCC,
	cin => \irig|Add17~11\,
	combout => \irig|Add17~12_combout\,
	cout => \irig|Add17~13\);

-- Location: LCCOMB_X27_Y20_N16
\irig|Add17~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add17~14_combout\ = (\irig|Add16~16_combout\ & (\irig|Add17~13\ & VCC)) # (!\irig|Add16~16_combout\ & (!\irig|Add17~13\))
-- \irig|Add17~15\ = CARRY((!\irig|Add16~16_combout\ & !\irig|Add17~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add16~16_combout\,
	datad => VCC,
	cin => \irig|Add17~13\,
	combout => \irig|Add17~14_combout\,
	cout => \irig|Add17~15\);

-- Location: LCCOMB_X27_Y20_N18
\irig|Add17~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add17~16_combout\ = \irig|Add17~15\ $ (\irig|Add16~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \irig|Add16~23_combout\,
	cin => \irig|Add17~15\,
	combout => \irig|Add17~16_combout\);

-- Location: LCCOMB_X30_Y20_N16
\irig|Add27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add27~0_combout\ = \irig|aux~59_combout\ $ (VCC)
-- \irig|Add27~1\ = CARRY(\irig|aux~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~59_combout\,
	datad => VCC,
	combout => \irig|Add27~0_combout\,
	cout => \irig|Add27~1\);

-- Location: LCCOMB_X30_Y20_N18
\irig|Add27~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add27~2_combout\ = !\irig|Add27~1\
-- \irig|Add27~3\ = CARRY(!\irig|Add27~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \irig|Add27~1\,
	combout => \irig|Add27~2_combout\,
	cout => \irig|Add27~3\);

-- Location: LCCOMB_X30_Y20_N20
\irig|Add27~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add27~4_combout\ = \irig|Add27~3\ $ (GND)
-- \irig|Add27~5\ = CARRY(!\irig|Add27~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \irig|Add27~3\,
	combout => \irig|Add27~4_combout\,
	cout => \irig|Add27~5\);

-- Location: LCCOMB_X30_Y20_N22
\irig|Add27~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add27~7_combout\ = !\irig|Add27~5\
-- \irig|Add27~8\ = CARRY(!\irig|Add27~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \irig|Add27~5\,
	combout => \irig|Add27~7_combout\,
	cout => \irig|Add27~8\);

-- Location: LCCOMB_X30_Y20_N24
\irig|Add27~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add27~10_combout\ = \irig|Add27~8\ $ (GND)
-- \irig|Add27~11\ = CARRY(!\irig|Add27~8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \irig|Add27~8\,
	combout => \irig|Add27~10_combout\,
	cout => \irig|Add27~11\);

-- Location: LCCOMB_X30_Y20_N26
\irig|Add27~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add27~13_combout\ = !\irig|Add27~11\
-- \irig|Add27~14\ = CARRY(!\irig|Add27~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \irig|Add27~11\,
	combout => \irig|Add27~13_combout\,
	cout => \irig|Add27~14\);

-- Location: LCCOMB_X30_Y20_N28
\irig|Add27~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add27~16_combout\ = \irig|Add27~14\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \irig|Add27~14\,
	combout => \irig|Add27~16_combout\);

-- Location: LCCOMB_X29_Y20_N4
\irig|Add28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add28~0_combout\ = \irig|hour_s\(1) $ (\irig|aux~49_combout\ $ (GND))
-- \irig|Add28~1\ = CARRY(\irig|hour_s\(1) $ (!\irig|aux~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(1),
	datab => \irig|aux~49_combout\,
	datad => VCC,
	combout => \irig|Add28~0_combout\,
	cout => \irig|Add28~1\);

-- Location: LCCOMB_X29_Y20_N6
\irig|Add28~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add28~2_combout\ = (\irig|Add27~19_combout\ & (\irig|Add28~1\ & VCC)) # (!\irig|Add27~19_combout\ & (!\irig|Add28~1\))
-- \irig|Add28~3\ = CARRY((!\irig|Add27~19_combout\ & !\irig|Add28~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add27~19_combout\,
	datad => VCC,
	cin => \irig|Add28~1\,
	combout => \irig|Add28~2_combout\,
	cout => \irig|Add28~3\);

-- Location: LCCOMB_X29_Y20_N8
\irig|Add28~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add28~4_combout\ = (\irig|Add27~20_combout\ & ((GND) # (!\irig|Add28~3\))) # (!\irig|Add27~20_combout\ & (\irig|Add28~3\ $ (GND)))
-- \irig|Add28~5\ = CARRY((\irig|Add27~20_combout\) # (!\irig|Add28~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add27~20_combout\,
	datad => VCC,
	cin => \irig|Add28~3\,
	combout => \irig|Add28~4_combout\,
	cout => \irig|Add28~5\);

-- Location: LCCOMB_X29_Y20_N10
\irig|Add28~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add28~6_combout\ = (\irig|Add27~6_combout\ & (\irig|Add28~5\ & VCC)) # (!\irig|Add27~6_combout\ & (!\irig|Add28~5\))
-- \irig|Add28~7\ = CARRY((!\irig|Add27~6_combout\ & !\irig|Add28~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add27~6_combout\,
	datad => VCC,
	cin => \irig|Add28~5\,
	combout => \irig|Add28~6_combout\,
	cout => \irig|Add28~7\);

-- Location: LCCOMB_X29_Y20_N12
\irig|Add28~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add28~8_combout\ = (\irig|Add27~9_combout\ & ((GND) # (!\irig|Add28~7\))) # (!\irig|Add27~9_combout\ & (\irig|Add28~7\ $ (GND)))
-- \irig|Add28~9\ = CARRY((\irig|Add27~9_combout\) # (!\irig|Add28~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add27~9_combout\,
	datad => VCC,
	cin => \irig|Add28~7\,
	combout => \irig|Add28~8_combout\,
	cout => \irig|Add28~9\);

-- Location: LCCOMB_X29_Y20_N14
\irig|Add28~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add28~10_combout\ = (\irig|Add27~12_combout\ & (\irig|Add28~9\ & VCC)) # (!\irig|Add27~12_combout\ & (!\irig|Add28~9\))
-- \irig|Add28~11\ = CARRY((!\irig|Add27~12_combout\ & !\irig|Add28~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add27~12_combout\,
	datad => VCC,
	cin => \irig|Add28~9\,
	combout => \irig|Add28~10_combout\,
	cout => \irig|Add28~11\);

-- Location: LCCOMB_X29_Y20_N16
\irig|Add28~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add28~12_combout\ = (\irig|Add27~15_combout\ & ((GND) # (!\irig|Add28~11\))) # (!\irig|Add27~15_combout\ & (\irig|Add28~11\ $ (GND)))
-- \irig|Add28~13\ = CARRY((\irig|Add27~15_combout\) # (!\irig|Add28~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add27~15_combout\,
	datad => VCC,
	cin => \irig|Add28~11\,
	combout => \irig|Add28~12_combout\,
	cout => \irig|Add28~13\);

-- Location: LCCOMB_X29_Y20_N18
\irig|Add28~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add28~14_combout\ = (\irig|Add27~18_combout\ & (\irig|Add28~13\ & VCC)) # (!\irig|Add27~18_combout\ & (!\irig|Add28~13\))
-- \irig|Add28~15\ = CARRY((!\irig|Add27~18_combout\ & !\irig|Add28~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add27~18_combout\,
	datad => VCC,
	cin => \irig|Add28~13\,
	combout => \irig|Add28~14_combout\,
	cout => \irig|Add28~15\);

-- Location: LCCOMB_X29_Y20_N20
\irig|Add28~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add28~16_combout\ = \irig|Add27~18_combout\ $ (\irig|Add28~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add27~18_combout\,
	cin => \irig|Add28~15\,
	combout => \irig|Add28~16_combout\);

-- Location: LCCOMB_X15_Y25_N14
\divisor|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~14_combout\ = (\divisor|cnt\(7) & (!\divisor|Add0~13\)) # (!\divisor|cnt\(7) & ((\divisor|Add0~13\) # (GND)))
-- \divisor|Add0~15\ = CARRY((!\divisor|Add0~13\) # (!\divisor|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cnt\(7),
	datad => VCC,
	cin => \divisor|Add0~13\,
	combout => \divisor|Add0~14_combout\,
	cout => \divisor|Add0~15\);

-- Location: LCCOMB_X15_Y24_N2
\divisor|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~34_combout\ = (\divisor|cnt\(17) & (!\divisor|Add0~33\)) # (!\divisor|cnt\(17) & ((\divisor|Add0~33\) # (GND)))
-- \divisor|Add0~35\ = CARRY((!\divisor|Add0~33\) # (!\divisor|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cnt\(17),
	datad => VCC,
	cin => \divisor|Add0~33\,
	combout => \divisor|Add0~34_combout\,
	cout => \divisor|Add0~35\);

-- Location: LCCOMB_X15_Y24_N16
\divisor|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~48_combout\ = (\divisor|cnt\(24) & (\divisor|Add0~47\ $ (GND))) # (!\divisor|cnt\(24) & (!\divisor|Add0~47\ & VCC))
-- \divisor|Add0~49\ = CARRY((\divisor|cnt\(24) & !\divisor|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(24),
	datad => VCC,
	cin => \divisor|Add0~47\,
	combout => \divisor|Add0~48_combout\,
	cout => \divisor|Add0~49\);

-- Location: LCCOMB_X15_Y24_N28
\divisor|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~60_combout\ = (\divisor|cnt\(30) & (\divisor|Add0~59\ $ (GND))) # (!\divisor|cnt\(30) & (!\divisor|Add0~59\ & VCC))
-- \divisor|Add0~61\ = CARRY((\divisor|cnt\(30) & !\divisor|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cnt\(30),
	datad => VCC,
	cin => \divisor|Add0~59\,
	combout => \divisor|Add0~60_combout\,
	cout => \divisor|Add0~61\);

-- Location: LCCOMB_X17_Y17_N4
\irig|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add0~3_combout\ = \sec[0]~input_o\ $ (VCC)
-- \irig|Add0~4\ = CARRY(\sec[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec[0]~input_o\,
	datad => VCC,
	combout => \irig|Add0~3_combout\,
	cout => \irig|Add0~4\);

-- Location: LCCOMB_X17_Y17_N6
\irig|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add0~5_combout\ = (\sec[1]~input_o\ & (!\irig|Add0~4\)) # (!\sec[1]~input_o\ & ((\irig|Add0~4\) # (GND)))
-- \irig|Add0~6\ = CARRY((!\irig|Add0~4\) # (!\sec[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec[1]~input_o\,
	datad => VCC,
	cin => \irig|Add0~4\,
	combout => \irig|Add0~5_combout\,
	cout => \irig|Add0~6\);

-- Location: LCCOMB_X17_Y17_N8
\irig|Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add0~7_combout\ = (\sec[2]~input_o\ & (\irig|Add0~6\ $ (GND))) # (!\sec[2]~input_o\ & (!\irig|Add0~6\ & VCC))
-- \irig|Add0~8\ = CARRY((\sec[2]~input_o\ & !\irig|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec[2]~input_o\,
	datad => VCC,
	cin => \irig|Add0~6\,
	combout => \irig|Add0~7_combout\,
	cout => \irig|Add0~8\);

-- Location: LCCOMB_X17_Y17_N10
\irig|Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add0~9_combout\ = (\sec[3]~input_o\ & (!\irig|Add0~8\)) # (!\sec[3]~input_o\ & ((\irig|Add0~8\) # (GND)))
-- \irig|Add0~10\ = CARRY((!\irig|Add0~8\) # (!\sec[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec[3]~input_o\,
	datad => VCC,
	cin => \irig|Add0~8\,
	combout => \irig|Add0~9_combout\,
	cout => \irig|Add0~10\);

-- Location: LCCOMB_X17_Y17_N12
\irig|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add0~11_combout\ = (\sec[4]~input_o\ & (\irig|Add0~10\ $ (GND))) # (!\sec[4]~input_o\ & (!\irig|Add0~10\ & VCC))
-- \irig|Add0~12\ = CARRY((\sec[4]~input_o\ & !\irig|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec[4]~input_o\,
	datad => VCC,
	cin => \irig|Add0~10\,
	combout => \irig|Add0~11_combout\,
	cout => \irig|Add0~12\);

-- Location: LCCOMB_X17_Y17_N14
\irig|Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add0~13_combout\ = \irig|Add0~12\ $ (\sec[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sec[5]~input_o\,
	cin => \irig|Add0~12\,
	combout => \irig|Add0~13_combout\);

-- Location: LCCOMB_X17_Y18_N0
\irig|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~0_combout\ = \irig|year_s\(0) $ (VCC)
-- \irig|Add5~1\ = CARRY(\irig|year_s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(0),
	datad => VCC,
	combout => \irig|Add5~0_combout\,
	cout => \irig|Add5~1\);

-- Location: LCCOMB_X17_Y18_N2
\irig|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~2_combout\ = (\irig|year_s\(1) & (!\irig|Add5~1\)) # (!\irig|year_s\(1) & ((\irig|Add5~1\) # (GND)))
-- \irig|Add5~3\ = CARRY((!\irig|Add5~1\) # (!\irig|year_s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(1),
	datad => VCC,
	cin => \irig|Add5~1\,
	combout => \irig|Add5~2_combout\,
	cout => \irig|Add5~3\);

-- Location: LCCOMB_X17_Y18_N4
\irig|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~4_combout\ = (\irig|year_s\(2) & (\irig|Add5~3\ $ (GND))) # (!\irig|year_s\(2) & (!\irig|Add5~3\ & VCC))
-- \irig|Add5~5\ = CARRY((\irig|year_s\(2) & !\irig|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(2),
	datad => VCC,
	cin => \irig|Add5~3\,
	combout => \irig|Add5~4_combout\,
	cout => \irig|Add5~5\);

-- Location: LCCOMB_X17_Y18_N12
\irig|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~12_combout\ = (\irig|year_s\(6) & (\irig|Add5~11\ $ (GND))) # (!\irig|year_s\(6) & (!\irig|Add5~11\ & VCC))
-- \irig|Add5~13\ = CARRY((\irig|year_s\(6) & !\irig|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(6),
	datad => VCC,
	cin => \irig|Add5~11\,
	combout => \irig|Add5~12_combout\,
	cout => \irig|Add5~13\);

-- Location: LCCOMB_X17_Y18_N14
\irig|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~14_combout\ = (\irig|year_s\(7) & (!\irig|Add5~13\)) # (!\irig|year_s\(7) & ((\irig|Add5~13\) # (GND)))
-- \irig|Add5~15\ = CARRY((!\irig|Add5~13\) # (!\irig|year_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(7),
	datad => VCC,
	cin => \irig|Add5~13\,
	combout => \irig|Add5~14_combout\,
	cout => \irig|Add5~15\);

-- Location: LCCOMB_X17_Y18_N18
\irig|Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~18_combout\ = (\irig|year_s\(9) & (!\irig|Add5~17\)) # (!\irig|year_s\(9) & ((\irig|Add5~17\) # (GND)))
-- \irig|Add5~19\ = CARRY((!\irig|Add5~17\) # (!\irig|year_s\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(9),
	datad => VCC,
	cin => \irig|Add5~17\,
	combout => \irig|Add5~18_combout\,
	cout => \irig|Add5~19\);

-- Location: LCCOMB_X17_Y18_N20
\irig|Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~20_combout\ = (\irig|year_s\(10) & (\irig|Add5~19\ $ (GND))) # (!\irig|year_s\(10) & (!\irig|Add5~19\ & VCC))
-- \irig|Add5~21\ = CARRY((\irig|year_s\(10) & !\irig|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(10),
	datad => VCC,
	cin => \irig|Add5~19\,
	combout => \irig|Add5~20_combout\,
	cout => \irig|Add5~21\);

-- Location: LCCOMB_X17_Y18_N22
\irig|Add5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~22_combout\ = \irig|year_s\(11) $ (\irig|Add5~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(11),
	cin => \irig|Add5~21\,
	combout => \irig|Add5~22_combout\);

-- Location: LCCOMB_X15_Y19_N14
\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\ = \irig|year_s\(7) $ (VCC)
-- \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\ = CARRY(\irig|year_s\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(7),
	datad => VCC,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\);

-- Location: LCCOMB_X15_Y19_N20
\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\ = (\irig|year_s\(10) & (!\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\)) # (!\irig|year_s\(10) & 
-- ((\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\) # (GND)))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~7\ = CARRY((!\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\) # (!\irig|year_s\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(10),
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~7\);

-- Location: LCCOMB_X16_Y19_N10
\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\ = (\irig|Mod1|auto_generated|divider|divider|StageOut[102]~86_combout\ & (((!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\)))) # 
-- (!\irig|Mod1|auto_generated|divider|divider|StageOut[102]~86_combout\ & ((\irig|Mod1|auto_generated|divider|divider|StageOut[102]~87_combout\ & (!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\)) # 
-- (!\irig|Mod1|auto_generated|divider|divider|StageOut[102]~87_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\) # (GND)))))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ = CARRY(((!\irig|Mod1|auto_generated|divider|divider|StageOut[102]~86_combout\ & !\irig|Mod1|auto_generated|divider|divider|StageOut[102]~87_combout\)) # 
-- (!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[102]~86_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[102]~87_combout\,
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~7\);

-- Location: LCCOMB_X16_Y21_N6
\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~14_combout\ = (\irig|Mod1|auto_generated|divider|divider|StageOut[98]~103_combout\) # (\irig|Mod1|auto_generated|divider|divider|StageOut[98]~102_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|StageOut[98]~103_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|StageOut[98]~102_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~14_combout\);

-- Location: LCCOMB_X17_Y19_N6
\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\ & (((\irig|Mod1|auto_generated|divider|divider|StageOut[112]~100_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[112]~99_combout\)))) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[112]~100_combout\ & 
-- (!\irig|Mod1|auto_generated|divider|divider|StageOut[112]~99_combout\)))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\ = CARRY((!\irig|Mod1|auto_generated|divider|divider|StageOut[112]~100_combout\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[112]~99_combout\ & 
-- !\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[112]~100_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[112]~99_combout\,
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\);

-- Location: LCCOMB_X17_Y19_N12
\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~8_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~7\ & (((\irig|Mod1|auto_generated|divider|divider|StageOut[115]~96_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[115]~135_combout\)))) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~7\ & ((((\irig|Mod1|auto_generated|divider|divider|StageOut[115]~96_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[115]~135_combout\)))))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~9\ = CARRY((!\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~7\ & ((\irig|Mod1|auto_generated|divider|divider|StageOut[115]~96_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[115]~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[115]~96_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[115]~135_combout\,
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~7\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~8_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~9\);

-- Location: LCCOMB_X22_Y19_N22
\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~8_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~7\ & (((\irig|Mod1|auto_generated|divider|divider|StageOut[127]~129_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[127]~106_combout\)))) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~7\ & ((((\irig|Mod1|auto_generated|divider|divider|StageOut[127]~129_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[127]~106_combout\)))))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~9\ = CARRY((!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~7\ & ((\irig|Mod1|auto_generated|divider|divider|StageOut[127]~129_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[127]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[127]~129_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[127]~106_combout\,
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~7\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~8_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~9\);

-- Location: LCCOMB_X22_Y19_N28
\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~14_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~13\ & (((\irig|Mod1|auto_generated|divider|divider|StageOut[130]~132_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[130]~116_combout\)))) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~13\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[130]~132_combout\ & 
-- (!\irig|Mod1|auto_generated|divider|divider|StageOut[130]~116_combout\)))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~15\ = CARRY((!\irig|Mod1|auto_generated|divider|divider|StageOut[130]~132_combout\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[130]~116_combout\ & 
-- !\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[130]~132_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[130]~116_combout\,
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~13\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~14_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~15\);

-- Location: LCCOMB_X22_Y19_N30
\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~16_combout\ = \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~15\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~16_combout\);

-- Location: LCCOMB_X20_Y18_N0
\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\ = (\irig|Mod1|auto_generated|divider|divider|StageOut[120]~127_combout\) # (\irig|Mod1|auto_generated|divider|divider|StageOut[120]~126_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|StageOut[120]~127_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|StageOut[120]~126_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\);

-- Location: LCCOMB_X31_Y18_N20
\irig|output~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~10_combout\ = (\irig|tmp\(1)) # ((\irig|tmp\(2) & \irig|tmp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|tmp\(2),
	datac => \irig|tmp\(1),
	datad => \irig|tmp\(0),
	combout => \irig|output~10_combout\);

-- Location: LCCOMB_X26_Y21_N16
\irig|output~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~30_combout\ = (\irig|tod\(11) & ((!\irig|tmp\(2)) # (!\irig|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|tmp\(0),
	datac => \irig|tod\(11),
	datad => \irig|tmp\(2),
	combout => \irig|output~30_combout\);

-- Location: LCCOMB_X26_Y21_N26
\irig|output~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~31_combout\ = (!\irig|tmp\(3) & ((\irig|tmp\(2) & (!\irig|tmp\(1) & \irig|output~30_combout\)) # (!\irig|tmp\(2) & ((\irig|output~30_combout\) # (!\irig|tmp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(2),
	datab => \irig|tmp\(3),
	datac => \irig|tmp\(1),
	datad => \irig|output~30_combout\,
	combout => \irig|output~31_combout\);

-- Location: FF_X21_Y18_N23
\irig|year_c[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|year_c[7]~0_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|year_c\(7));

-- Location: FF_X23_Y22_N17
\irig|year_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|LessThan47~2_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|year_c\(1));

-- Location: FF_X24_Y22_N29
\irig|year_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|LessThan48~3_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|year_c\(0));

-- Location: LCCOMB_X28_Y18_N16
\irig|Mux1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~26_combout\ = (\irig|cnt\(0) & (\irig|year_c\(1))) # (!\irig|cnt\(0) & ((\irig|year_c\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(0),
	datac => \irig|year_c\(1),
	datad => \irig|year_c\(0),
	combout => \irig|Mux1~26_combout\);

-- Location: LCCOMB_X28_Y18_N6
\irig|Mux1~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~27_combout\ = (!\irig|tmp\(3) & (!\irig|Mux1~71_combout\ & \irig|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|tmp\(3),
	datac => \irig|Mux1~71_combout\,
	datad => \irig|cnt\(1),
	combout => \irig|Mux1~27_combout\);

-- Location: FF_X29_Y18_N29
\irig|day_c[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	asdata => \irig|day_c[7]~2_combout\,
	sload => VCC,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|day_c\(7));

-- Location: FF_X29_Y18_N31
\irig|day_c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|day_c[5]~3_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|day_c\(5));

-- Location: LCCOMB_X29_Y18_N28
\irig|Mux1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~28_combout\ = (!\irig|cnt\(0) & ((\irig|cnt\(1) & ((\irig|day_c\(7)))) # (!\irig|cnt\(1) & (\irig|day_c\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(0),
	datab => \irig|day_c\(5),
	datac => \irig|day_c\(7),
	datad => \irig|cnt\(1),
	combout => \irig|Mux1~28_combout\);

-- Location: FF_X29_Y18_N1
\irig|day_c[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|day_c[6]~4_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|day_c\(6));

-- Location: LCCOMB_X29_Y18_N6
\irig|Mux1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~30_combout\ = (\irig|Mux1~6_combout\ & ((\irig|Mux1~28_combout\) # ((\irig|day_c\(6) & \irig|Mux1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_c\(6),
	datab => \irig|Mux1~6_combout\,
	datac => \irig|Mux1~29_combout\,
	datad => \irig|Mux1~28_combout\,
	combout => \irig|Mux1~30_combout\);

-- Location: LCCOMB_X29_Y18_N4
\irig|Mux1~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~31_combout\ = (!\irig|tmp\(3) & ((\irig|Mux1~30_combout\) # ((\irig|Equal6~0_combout\ & !\irig|Equal17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Equal6~0_combout\,
	datab => \irig|tmp\(3),
	datac => \irig|Equal17~0_combout\,
	datad => \irig|Mux1~30_combout\,
	combout => \irig|Mux1~31_combout\);

-- Location: FF_X21_Y14_N5
\irig|day_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|LessThan38~2_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|day_c\(2));

-- Location: FF_X20_Y14_N9
\irig|day_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|LessThan37~4_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|day_c\(3));

-- Location: FF_X29_Y18_N15
\irig|day_c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|day_c[4]~5_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|day_c\(4));

-- Location: LCCOMB_X29_Y18_N12
\irig|Mux1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~32_combout\ = (\irig|cnt\(0) & ((\irig|cnt\(1) & (\irig|day_c\(4))) # (!\irig|cnt\(1) & ((\irig|day_c\(3)))))) # (!\irig|cnt\(0) & (((\irig|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(0),
	datab => \irig|day_c\(4),
	datac => \irig|cnt\(1),
	datad => \irig|day_c\(3),
	combout => \irig|Mux1~32_combout\);

-- Location: LCCOMB_X29_Y18_N10
\irig|Mux1~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~33_combout\ = (\irig|Mux1~6_combout\ & ((\irig|cnt\(0) & ((\irig|Mux1~32_combout\))) # (!\irig|cnt\(0) & (\irig|day_c\(2) & !\irig|Mux1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(0),
	datab => \irig|Mux1~6_combout\,
	datac => \irig|day_c\(2),
	datad => \irig|Mux1~32_combout\,
	combout => \irig|Mux1~33_combout\);

-- Location: LCCOMB_X29_Y18_N20
\irig|Mux1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~34_combout\ = (!\irig|tmp\(3) & ((\irig|Mux1~33_combout\) # ((\irig|Equal6~0_combout\ & !\irig|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Equal6~0_combout\,
	datab => \irig|tmp\(3),
	datac => \irig|Mux1~4_combout\,
	datad => \irig|Mux1~33_combout\,
	combout => \irig|Mux1~34_combout\);

-- Location: LCCOMB_X29_Y18_N22
\irig|Mux1~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~35_combout\ = (\irig|cnt\(4) & (\irig|cnt\(2))) # (!\irig|cnt\(4) & ((\irig|cnt\(2) & (\irig|Mux1~31_combout\)) # (!\irig|cnt\(2) & ((\irig|Mux1~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(4),
	datab => \irig|cnt\(2),
	datac => \irig|Mux1~31_combout\,
	datad => \irig|Mux1~34_combout\,
	combout => \irig|Mux1~35_combout\);

-- Location: FF_X21_Y22_N13
\irig|year_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|year_c[3]~feeder_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|year_c\(3));

-- Location: FF_X21_Y22_N3
\irig|year_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|year_c[2]~feeder_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|year_c\(2));

-- Location: LCCOMB_X21_Y22_N24
\irig|Mux1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~36_combout\ = (!\irig|cnt\(1) & ((\irig|cnt\(0) & (\irig|year_c\(3))) # (!\irig|cnt\(0) & ((\irig|year_c\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_c\(3),
	datab => \irig|year_c\(2),
	datac => \irig|cnt\(1),
	datad => \irig|cnt\(0),
	combout => \irig|Mux1~36_combout\);

-- Location: FF_X23_Y21_N27
\irig|year_c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|year_c[4]~3_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|year_c\(4));

-- Location: LCCOMB_X29_Y18_N16
\irig|Mux1~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~37_combout\ = (\irig|Mux1~6_combout\ & ((\irig|Mux1~36_combout\) # ((\irig|year_c\(4) & \irig|Equal17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_c\(4),
	datab => \irig|Mux1~6_combout\,
	datac => \irig|Equal17~0_combout\,
	datad => \irig|Mux1~36_combout\,
	combout => \irig|Mux1~37_combout\);

-- Location: LCCOMB_X29_Y18_N18
\irig|Mux1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~38_combout\ = (!\irig|tmp\(3) & ((\irig|Mux1~37_combout\) # ((\irig|Equal6~0_combout\ & !\irig|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Equal6~0_combout\,
	datab => \irig|tmp\(3),
	datac => \irig|Mux1~4_combout\,
	datad => \irig|Mux1~37_combout\,
	combout => \irig|Mux1~38_combout\);

-- Location: LCCOMB_X29_Y18_N24
\irig|Mux1~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~39_combout\ = (\irig|cnt\(4) & ((\irig|Mux1~35_combout\ & ((\irig|Mux1~38_combout\))) # (!\irig|Mux1~35_combout\ & (\irig|Mux1~27_combout\)))) # (!\irig|cnt\(4) & (((\irig|Mux1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(4),
	datab => \irig|Mux1~27_combout\,
	datac => \irig|Mux1~35_combout\,
	datad => \irig|Mux1~38_combout\,
	combout => \irig|Mux1~39_combout\);

-- Location: FF_X28_Y19_N31
\irig|min_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|LessThan21~1_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|min_c\(3));

-- Location: FF_X23_Y14_N5
\irig|day_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|LessThan40~3_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|day_c\(0));

-- Location: FF_X23_Y14_N31
\irig|day_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|LessThan39~3_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|day_c\(1));

-- Location: FF_X30_Y19_N31
\irig|min_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|LessThan24~3_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|min_c\(0));

-- Location: FF_X22_Y18_N25
\irig|min_c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|min_c[4]~0_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|min_c\(4));

-- Location: LCCOMB_X22_Y18_N6
\irig|Mux1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~48_combout\ = (!\irig|tmp\(2) & (!\irig|tmp\(1) & ((\irig|cnt\(0)) # (!\irig|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(0),
	datab => \irig|tmp\(2),
	datac => \irig|tmp\(1),
	datad => \irig|cnt\(2),
	combout => \irig|Mux1~48_combout\);

-- Location: FF_X30_Y18_N15
\irig|sec_c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	asdata => \irig|sec_c[4]~0_combout\,
	sload => VCC,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|sec_c\(4));

-- Location: FF_X30_Y18_N13
\irig|sec_c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|sec_c[5]~1_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|sec_c\(5));

-- Location: FF_X27_Y20_N23
\irig|sec_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|LessThan17~3_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|sec_c\(0));

-- Location: FF_X28_Y18_N13
\irig|hour_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|LessThan30~3_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|hour_c\(0));

-- Location: FF_X28_Y18_N5
\irig|hour_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|LessThan29~2_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|hour_c\(1));

-- Location: LCCOMB_X22_Y23_N16
\irig|Mult0|mult_core|romout[0][15]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mult0|mult_core|romout[0][15]~0_combout\ = (\irig|hour_s\(3) & ((\irig|hour_s\(1)) # (\irig|hour_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(3),
	datac => \irig|hour_s\(1),
	datad => \irig|hour_s\(2),
	combout => \irig|Mult0|mult_core|romout[0][15]~0_combout\);

-- Location: LCCOMB_X22_Y23_N12
\irig|Mult0|mult_core|romout[0][14]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mult0|mult_core|romout[0][14]~1_combout\ = (\irig|hour_s\(3) & (\irig|hour_s\(2) $ ((!\irig|hour_s\(1))))) # (!\irig|hour_s\(3) & (\irig|hour_s\(2) & ((\irig|hour_s\(1)) # (\irig|hour_s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(3),
	datab => \irig|hour_s\(2),
	datac => \irig|hour_s\(1),
	datad => \irig|hour_s\(0),
	combout => \irig|Mult0|mult_core|romout[0][14]~1_combout\);

-- Location: LCCOMB_X22_Y23_N14
\irig|Mult0|mult_core|romout[0][13]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mult0|mult_core|romout[0][13]~2_combout\ = (\irig|hour_s\(3) & (((!\irig|hour_s\(1))))) # (!\irig|hour_s\(3) & ((\irig|hour_s\(1) & ((\irig|hour_s\(0)))) # (!\irig|hour_s\(1) & (\irig|hour_s\(2) & !\irig|hour_s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(3),
	datab => \irig|hour_s\(2),
	datac => \irig|hour_s\(1),
	datad => \irig|hour_s\(0),
	combout => \irig|Mult0|mult_core|romout[0][13]~2_combout\);

-- Location: LCCOMB_X27_Y21_N30
\irig|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add8~2_combout\ = (\irig|min_s\(5)) # ((\irig|Add8~0_combout\) # (\irig|min_s\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|min_s\(5),
	datac => \irig|Add8~0_combout\,
	datad => \irig|min_s\(4),
	combout => \irig|Add8~2_combout\);

-- Location: LCCOMB_X23_Y23_N16
\irig|Mult0|mult_core|romout[0][11]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mult0|mult_core|romout[0][11]~4_combout\ = \irig|hour_s\(2) $ (((\irig|hour_s\(0)) # (\irig|hour_s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|hour_s\(2),
	datac => \irig|hour_s\(0),
	datad => \irig|hour_s\(1),
	combout => \irig|Mult0|mult_core|romout[0][11]~4_combout\);

-- Location: LCCOMB_X15_Y18_N30
\irig|Mod0|auto_generated|divider|divider|StageOut[78]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[78]~115_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[78]~115_combout\);

-- Location: LCCOMB_X15_Y18_N12
\irig|Mod0|auto_generated|divider|divider|StageOut[77]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[77]~116_combout\ = (\irig|year_s\(10) & \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|year_s\(10),
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[77]~116_combout\);

-- Location: LCCOMB_X14_Y18_N12
\irig|Mod0|auto_generated|divider|divider|StageOut[76]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[76]~119_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[76]~119_combout\);

-- Location: LCCOMB_X15_Y18_N6
\irig|Mod0|auto_generated|divider|divider|StageOut[75]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[75]~120_combout\ = (\irig|year_s\(8) & \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|year_s\(8),
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[75]~120_combout\);

-- Location: LCCOMB_X14_Y18_N14
\irig|Mod0|auto_generated|divider|divider|StageOut[74]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[74]~123_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[74]~123_combout\);

-- Location: LCCOMB_X16_Y18_N30
\irig|Mod0|auto_generated|divider|divider|StageOut[73]~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[73]~125_combout\ = (\irig|year_s\(6) & !\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(6),
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[73]~125_combout\);

-- Location: LCCOMB_X15_Y18_N4
\irig|Mod0|auto_generated|divider|divider|StageOut[90]~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[90]~127_combout\ = (!\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[90]~127_combout\);

-- Location: LCCOMB_X15_Y18_N0
\irig|Mod0|auto_generated|divider|divider|StageOut[88]~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[88]~129_combout\ = (!\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[88]~129_combout\);

-- Location: LCCOMB_X15_Y18_N10
\irig|Mod0|auto_generated|divider|divider|StageOut[87]~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[87]~130_combout\ = (!\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[87]~130_combout\);

-- Location: LCCOMB_X14_Y20_N16
\irig|Mod0|auto_generated|divider|divider|StageOut[86]~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[86]~132_combout\ = (!\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[86]~132_combout\);

-- Location: LCCOMB_X15_Y21_N30
\irig|Mod0|auto_generated|divider|divider|StageOut[85]~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[85]~134_combout\ = (\irig|year_s\(5) & !\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(5),
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[85]~134_combout\);

-- Location: LCCOMB_X15_Y20_N2
\irig|Mod0|auto_generated|divider|divider|StageOut[103]~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[103]~136_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[103]~136_combout\);

-- Location: LCCOMB_X14_Y20_N18
\irig|Mod0|auto_generated|divider|divider|StageOut[100]~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\);

-- Location: LCCOMB_X16_Y21_N30
\irig|Mod0|auto_generated|divider|divider|StageOut[97]~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[97]~145_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[97]~145_combout\);

-- Location: LCCOMB_X16_Y20_N26
\irig|Mod0|auto_generated|divider|divider|StageOut[114]~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[114]~149_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[114]~149_combout\);

-- Location: LCCOMB_X19_Y20_N6
\irig|Mod0|auto_generated|divider|divider|StageOut[113]~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[113]~150_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[113]~150_combout\);

-- Location: LCCOMB_X14_Y20_N22
\irig|Mod0|auto_generated|divider|divider|StageOut[109]~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[109]~157_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[109]~157_combout\);

-- Location: LCCOMB_X20_Y20_N14
\irig|Mod0|auto_generated|divider|divider|StageOut[124]~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[124]~158_combout\ = (!\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[124]~158_combout\);

-- Location: LCCOMB_X20_Y20_N10
\irig|Mod0|auto_generated|divider|divider|StageOut[122]~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[122]~160_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[122]~160_combout\);

-- Location: LCCOMB_X17_Y20_N0
\irig|Mod0|auto_generated|divider|divider|StageOut[130]~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[130]~165_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~16_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~16_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[130]~165_combout\);

-- Location: LCCOMB_X17_Y20_N4
\irig|Mod0|auto_generated|divider|divider|StageOut[128]~167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\);

-- Location: LCCOMB_X17_Y20_N30
\irig|Mod0|auto_generated|divider|divider|StageOut[127]~168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[127]~168_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[127]~168_combout\);

-- Location: LCCOMB_X17_Y20_N26
\irig|Mod0|auto_generated|divider|divider|StageOut[125]~170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[125]~170_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[125]~170_combout\);

-- Location: LCCOMB_X23_Y20_N30
\irig|aux~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~1_combout\ = (\irig|LessThan41~4_combout\ & ((\irig|LessThan41~5_combout\ & (\irig|Mod0|auto_generated|divider|divider|StageOut[137]~171_combout\)) # (!\irig|LessThan41~5_combout\ & ((\irig|Add38~2_combout\))))) # (!\irig|LessThan41~4_combout\ & 
-- (((\irig|Add38~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan41~4_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[137]~171_combout\,
	datac => \irig|LessThan41~5_combout\,
	datad => \irig|Add38~2_combout\,
	combout => \irig|aux~1_combout\);

-- Location: LCCOMB_X23_Y20_N12
\irig|aux~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~4_combout\ = (\irig|LessThan42~1_combout\ & ((\irig|LessThan42~0_combout\ & (\irig|aux~0_combout\)) # (!\irig|LessThan42~0_combout\ & ((\irig|Add39~2_combout\))))) # (!\irig|LessThan42~1_combout\ & (((\irig|Add39~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~0_combout\,
	datab => \irig|Add39~2_combout\,
	datac => \irig|LessThan42~1_combout\,
	datad => \irig|LessThan42~0_combout\,
	combout => \irig|aux~4_combout\);

-- Location: LCCOMB_X16_Y16_N26
\irig|aux~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~9_combout\ = (\irig|LessThan31~1_combout\ & (\irig|day_s\(5))) # (!\irig|LessThan31~1_combout\ & ((\irig|Add29~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(5),
	datac => \irig|Add29~4_combout\,
	datad => \irig|LessThan31~1_combout\,
	combout => \irig|aux~9_combout\);

-- Location: LCCOMB_X23_Y21_N18
\irig|aux~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~11_combout\ = (\irig|Add40~6_combout\ & ((!\irig|LessThan43~2_combout\) # (!\irig|LessThan43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|LessThan43~0_combout\,
	datac => \irig|LessThan43~2_combout\,
	datad => \irig|Add40~6_combout\,
	combout => \irig|aux~11_combout\);

-- Location: LCCOMB_X22_Y21_N30
\irig|aux~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~12_combout\ = (\irig|LessThan43~2_combout\ & ((\irig|LessThan43~0_combout\ & (\irig|aux~4_combout\)) # (!\irig|LessThan43~0_combout\ & ((\irig|Add40~4_combout\))))) # (!\irig|LessThan43~2_combout\ & (((\irig|Add40~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~4_combout\,
	datab => \irig|LessThan43~2_combout\,
	datac => \irig|LessThan43~0_combout\,
	datad => \irig|Add40~4_combout\,
	combout => \irig|aux~12_combout\);

-- Location: LCCOMB_X22_Y21_N24
\irig|aux~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~13_combout\ = (\irig|LessThan43~0_combout\ & ((\irig|LessThan43~2_combout\ & (\irig|aux~3_combout\)) # (!\irig|LessThan43~2_combout\ & ((\irig|Add40~2_combout\))))) # (!\irig|LessThan43~0_combout\ & (((\irig|Add40~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~3_combout\,
	datab => \irig|LessThan43~0_combout\,
	datac => \irig|Add40~2_combout\,
	datad => \irig|LessThan43~2_combout\,
	combout => \irig|aux~13_combout\);

-- Location: LCCOMB_X22_Y21_N22
\irig|aux~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~14_combout\ = (\irig|LessThan43~0_combout\ & ((\irig|LessThan43~2_combout\ & (\irig|Mod0|auto_generated|divider|divider|StageOut[134]~178_combout\)) # (!\irig|LessThan43~2_combout\ & ((\irig|Add40~0_combout\))))) # (!\irig|LessThan43~0_combout\ 
-- & (((\irig|Add40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[134]~178_combout\,
	datab => \irig|LessThan43~0_combout\,
	datac => \irig|Add40~0_combout\,
	datad => \irig|LessThan43~2_combout\,
	combout => \irig|aux~14_combout\);

-- Location: LCCOMB_X21_Y18_N4
\irig|Mod0|auto_generated|divider|divider|StageOut[120]~179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[120]~179_combout\ = (\irig|year_s\(1) & \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(1),
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[120]~179_combout\);

-- Location: LCCOMB_X21_Y18_N28
\irig|Mod0|auto_generated|divider|divider|StageOut[120]~180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[120]~180_combout\ = (\irig|year_s\(1) & !\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(1),
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[120]~180_combout\);

-- Location: LCCOMB_X21_Y18_N20
\irig|Mod0|auto_generated|divider|divider|StageOut[133]~181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[133]~181_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & (\irig|year_s\(1))) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(1),
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[133]~181_combout\);

-- Location: LCCOMB_X22_Y21_N0
\irig|LessThan44~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan44~2_combout\ = (!\irig|aux~12_combout\ & (((!\irig|aux~14_combout\ & !\irig|Mod0|auto_generated|divider|divider|StageOut[133]~181_combout\)) # (!\irig|aux~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~14_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[133]~181_combout\,
	datac => \irig|aux~12_combout\,
	datad => \irig|aux~13_combout\,
	combout => \irig|LessThan44~2_combout\);

-- Location: LCCOMB_X23_Y21_N24
\irig|LessThan44~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan44~3_combout\ = (!\irig|Add40~10_combout\ & (!\irig|Add40~8_combout\ & (!\irig|Add40~14_combout\ & !\irig|Add40~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add40~10_combout\,
	datab => \irig|Add40~8_combout\,
	datac => \irig|Add40~14_combout\,
	datad => \irig|Add40~12_combout\,
	combout => \irig|LessThan44~3_combout\);

-- Location: LCCOMB_X23_Y21_N22
\irig|LessThan44~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan44~4_combout\ = (!\irig|aux~11_combout\ & (\irig|LessThan44~2_combout\ & ((\irig|LessThan43~3_combout\) # (\irig|LessThan44~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan43~3_combout\,
	datab => \irig|aux~11_combout\,
	datac => \irig|LessThan44~2_combout\,
	datad => \irig|LessThan44~3_combout\,
	combout => \irig|LessThan44~4_combout\);

-- Location: LCCOMB_X23_Y21_N16
\irig|LessThan44~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan44~5_combout\ = (\irig|Add40~10_combout\) # ((\irig|Add40~8_combout\) # ((\irig|Add40~14_combout\) # (\irig|Add40~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add40~10_combout\,
	datab => \irig|Add40~8_combout\,
	datac => \irig|Add40~14_combout\,
	datad => \irig|Add40~12_combout\,
	combout => \irig|LessThan44~5_combout\);

-- Location: LCCOMB_X22_Y22_N22
\irig|aux~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~15_combout\ = (\irig|Add41~8_combout\ & ((!\irig|LessThan44~2_combout\) # (!\irig|LessThan44~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan44~6_combout\,
	datab => \irig|LessThan44~2_combout\,
	datad => \irig|Add41~8_combout\,
	combout => \irig|aux~15_combout\);

-- Location: LCCOMB_X22_Y22_N24
\irig|aux~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~16_combout\ = (\irig|Add41~6_combout\ & ((!\irig|LessThan44~6_combout\) # (!\irig|LessThan44~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|LessThan44~2_combout\,
	datac => \irig|Add41~6_combout\,
	datad => \irig|LessThan44~6_combout\,
	combout => \irig|aux~16_combout\);

-- Location: LCCOMB_X22_Y22_N30
\irig|aux~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~17_combout\ = (\irig|LessThan44~2_combout\ & ((\irig|LessThan44~6_combout\ & (\irig|aux~13_combout\)) # (!\irig|LessThan44~6_combout\ & ((\irig|Add41~4_combout\))))) # (!\irig|LessThan44~2_combout\ & (((\irig|Add41~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~13_combout\,
	datab => \irig|LessThan44~2_combout\,
	datac => \irig|Add41~4_combout\,
	datad => \irig|LessThan44~6_combout\,
	combout => \irig|aux~17_combout\);

-- Location: LCCOMB_X21_Y22_N6
\irig|LessThan45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan45~0_combout\ = (\irig|LessThan44~2_combout\ & (!\irig|LessThan44~6_combout\ & ((\irig|Add41~10_combout\) # (\irig|Add41~16_combout\)))) # (!\irig|LessThan44~2_combout\ & (((\irig|Add41~10_combout\) # (\irig|Add41~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan44~2_combout\,
	datab => \irig|LessThan44~6_combout\,
	datac => \irig|Add41~10_combout\,
	datad => \irig|Add41~16_combout\,
	combout => \irig|LessThan45~0_combout\);

-- Location: LCCOMB_X21_Y22_N4
\irig|LessThan45~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan45~1_combout\ = (\irig|LessThan44~2_combout\ & (!\irig|LessThan44~6_combout\ & ((\irig|Add41~6_combout\) # (\irig|Add41~8_combout\)))) # (!\irig|LessThan44~2_combout\ & (((\irig|Add41~6_combout\) # (\irig|Add41~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan44~2_combout\,
	datab => \irig|LessThan44~6_combout\,
	datac => \irig|Add41~6_combout\,
	datad => \irig|Add41~8_combout\,
	combout => \irig|LessThan45~1_combout\);

-- Location: LCCOMB_X21_Y22_N14
\irig|LessThan45~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan45~2_combout\ = (\irig|LessThan45~1_combout\) # ((!\irig|LessThan44~4_combout\ & ((\irig|Add41~12_combout\) # (\irig|Add41~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan44~4_combout\,
	datab => \irig|Add41~12_combout\,
	datac => \irig|LessThan45~1_combout\,
	datad => \irig|Add41~14_combout\,
	combout => \irig|LessThan45~2_combout\);

-- Location: LCCOMB_X22_Y22_N16
\irig|Add42~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add42~8_combout\ = (\irig|Add42~6_combout\ & ((\irig|LessThan45~2_combout\) # ((\irig|LessThan45~0_combout\) # (\irig|aux~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan45~2_combout\,
	datab => \irig|LessThan45~0_combout\,
	datac => \irig|aux~17_combout\,
	datad => \irig|Add42~6_combout\,
	combout => \irig|Add42~8_combout\);

-- Location: LCCOMB_X21_Y22_N0
\irig|Add42~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add42~9_combout\ = (\irig|Add42~4_combout\ & ((\irig|LessThan45~0_combout\) # ((\irig|LessThan45~2_combout\) # (\irig|aux~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan45~0_combout\,
	datab => \irig|LessThan45~2_combout\,
	datac => \irig|aux~17_combout\,
	datad => \irig|Add42~4_combout\,
	combout => \irig|Add42~9_combout\);

-- Location: LCCOMB_X23_Y22_N30
\irig|Add42~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add42~10_combout\ = (\irig|Add42~2_combout\ & ((\irig|LessThan45~0_combout\) # ((\irig|aux~17_combout\) # (\irig|LessThan45~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan45~0_combout\,
	datab => \irig|aux~17_combout\,
	datac => \irig|LessThan45~2_combout\,
	datad => \irig|Add42~2_combout\,
	combout => \irig|Add42~10_combout\);

-- Location: LCCOMB_X21_Y22_N10
\irig|Add42~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add42~11_combout\ = (\irig|Add42~0_combout\ & ((\irig|aux~17_combout\) # ((\irig|LessThan45~2_combout\) # (\irig|LessThan45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~17_combout\,
	datab => \irig|LessThan45~2_combout\,
	datac => \irig|Add42~0_combout\,
	datad => \irig|LessThan45~0_combout\,
	combout => \irig|Add42~11_combout\);

-- Location: LCCOMB_X21_Y22_N20
\irig|aux~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~18_combout\ = (\irig|LessThan44~2_combout\ & ((\irig|LessThan44~6_combout\ & (\irig|aux~14_combout\)) # (!\irig|LessThan44~6_combout\ & ((\irig|Add41~2_combout\))))) # (!\irig|LessThan44~2_combout\ & (((\irig|Add41~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~14_combout\,
	datab => \irig|LessThan44~2_combout\,
	datac => \irig|LessThan44~6_combout\,
	datad => \irig|Add41~2_combout\,
	combout => \irig|aux~18_combout\);

-- Location: LCCOMB_X21_Y22_N30
\irig|LessThan45~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan45~3_combout\ = (\irig|LessThan44~2_combout\ & (!\irig|LessThan44~6_combout\ & ((\irig|Add41~12_combout\) # (\irig|Add41~14_combout\)))) # (!\irig|LessThan44~2_combout\ & ((\irig|Add41~12_combout\) # ((\irig|Add41~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan44~2_combout\,
	datab => \irig|Add41~12_combout\,
	datac => \irig|LessThan44~6_combout\,
	datad => \irig|Add41~14_combout\,
	combout => \irig|LessThan45~3_combout\);

-- Location: LCCOMB_X21_Y22_N8
\irig|LessThan45~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan45~4_combout\ = (\irig|aux~17_combout\) # ((\irig|LessThan45~1_combout\) # ((\irig|LessThan45~3_combout\) # (\irig|LessThan45~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~17_combout\,
	datab => \irig|LessThan45~1_combout\,
	datac => \irig|LessThan45~3_combout\,
	datad => \irig|LessThan45~0_combout\,
	combout => \irig|LessThan45~4_combout\);

-- Location: LCCOMB_X22_Y22_N26
\irig|LessThan46~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan46~0_combout\ = (\irig|LessThan45~4_combout\ & ((\irig|Add42~6_combout\) # ((\irig|Add42~12_combout\) # (\irig|Add42~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add42~6_combout\,
	datab => \irig|LessThan45~4_combout\,
	datac => \irig|Add42~12_combout\,
	datad => \irig|Add42~14_combout\,
	combout => \irig|LessThan46~0_combout\);

-- Location: LCCOMB_X22_Y22_N20
\irig|LessThan46~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan46~1_combout\ = (\irig|LessThan45~4_combout\ & ((\irig|Add42~2_combout\) # ((\irig|Add42~0_combout\) # (\irig|Add42~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan45~4_combout\,
	datab => \irig|Add42~2_combout\,
	datac => \irig|Add42~0_combout\,
	datad => \irig|Add42~16_combout\,
	combout => \irig|LessThan46~1_combout\);

-- Location: LCCOMB_X21_Y22_N26
\irig|LessThan46~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan46~2_combout\ = (\irig|aux~18_combout\) # ((\irig|LessThan45~4_combout\ & \irig|Add42~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~18_combout\,
	datac => \irig|LessThan45~4_combout\,
	datad => \irig|Add42~4_combout\,
	combout => \irig|LessThan46~2_combout\);

-- Location: LCCOMB_X23_Y22_N20
\irig|Add43~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add43~10_combout\ = (\irig|Add43~8_combout\ & ((\irig|LessThan46~0_combout\) # ((\irig|LessThan46~2_combout\) # (\irig|LessThan46~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan46~0_combout\,
	datab => \irig|LessThan46~2_combout\,
	datac => \irig|Add43~8_combout\,
	datad => \irig|LessThan46~1_combout\,
	combout => \irig|Add43~10_combout\);

-- Location: LCCOMB_X22_Y22_N14
\irig|Add42~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add42~18_combout\ = (\irig|Add42~12_combout\ & ((\irig|aux~17_combout\) # ((\irig|LessThan45~0_combout\) # (\irig|LessThan45~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~17_combout\,
	datab => \irig|LessThan45~0_combout\,
	datac => \irig|Add42~12_combout\,
	datad => \irig|LessThan45~2_combout\,
	combout => \irig|Add42~18_combout\);

-- Location: LCCOMB_X23_Y22_N22
\irig|Add43~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add43~13_combout\ = (\irig|Add43~11_combout\ & ((\irig|LessThan46~0_combout\) # ((\irig|LessThan46~1_combout\) # (\irig|LessThan46~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan46~0_combout\,
	datab => \irig|LessThan46~1_combout\,
	datac => \irig|LessThan46~2_combout\,
	datad => \irig|Add43~11_combout\,
	combout => \irig|Add43~13_combout\);

-- Location: LCCOMB_X21_Y22_N16
\irig|Add42~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add42~19_combout\ = (\irig|Add42~14_combout\ & \irig|LessThan45~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Add42~14_combout\,
	datad => \irig|LessThan45~4_combout\,
	combout => \irig|Add42~19_combout\);

-- Location: LCCOMB_X23_Y22_N28
\irig|Add43~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add43~16_combout\ = (\irig|Add43~14_combout\ & ((\irig|LessThan46~0_combout\) # ((\irig|LessThan46~1_combout\) # (\irig|LessThan46~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan46~0_combout\,
	datab => \irig|LessThan46~1_combout\,
	datac => \irig|LessThan46~2_combout\,
	datad => \irig|Add43~14_combout\,
	combout => \irig|Add43~16_combout\);

-- Location: LCCOMB_X22_Y22_N28
\irig|Add43~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add43~17_combout\ = (\irig|Add43~0_combout\ & ((\irig|LessThan46~0_combout\) # ((\irig|LessThan46~2_combout\) # (\irig|LessThan46~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan46~0_combout\,
	datab => \irig|Add43~0_combout\,
	datac => \irig|LessThan46~2_combout\,
	datad => \irig|LessThan46~1_combout\,
	combout => \irig|Add43~17_combout\);

-- Location: LCCOMB_X22_Y21_N2
\irig|aux~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~19_combout\ = (\irig|LessThan44~6_combout\ & ((\irig|LessThan44~2_combout\ & (\irig|Mod0|auto_generated|divider|divider|StageOut[133]~181_combout\)) # (!\irig|LessThan44~2_combout\ & ((\irig|Add41~0_combout\))))) # (!\irig|LessThan44~6_combout\ 
-- & (((\irig|Add41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[133]~181_combout\,
	datab => \irig|Add41~0_combout\,
	datac => \irig|LessThan44~6_combout\,
	datad => \irig|LessThan44~2_combout\,
	combout => \irig|aux~19_combout\);

-- Location: LCCOMB_X23_Y22_N18
\irig|Add43~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add43~18_combout\ = (\irig|Add43~6_combout\ & ((\irig|LessThan46~0_combout\) # ((\irig|LessThan46~1_combout\) # (\irig|LessThan46~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan46~0_combout\,
	datab => \irig|LessThan46~1_combout\,
	datac => \irig|LessThan46~2_combout\,
	datad => \irig|Add43~6_combout\,
	combout => \irig|Add43~18_combout\);

-- Location: LCCOMB_X22_Y22_N18
\irig|Add42~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add42~20_combout\ = (\irig|Add42~16_combout\ & \irig|LessThan45~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add42~16_combout\,
	datad => \irig|LessThan45~4_combout\,
	combout => \irig|Add42~20_combout\);

-- Location: LCCOMB_X21_Y22_N22
\irig|LessThan46~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan46~3_combout\ = (\irig|LessThan46~1_combout\) # ((\irig|aux~18_combout\) # ((\irig|Add42~9_combout\) # (\irig|LessThan46~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan46~1_combout\,
	datab => \irig|aux~18_combout\,
	datac => \irig|Add42~9_combout\,
	datad => \irig|LessThan46~0_combout\,
	combout => \irig|LessThan46~3_combout\);

-- Location: LCCOMB_X23_Y22_N24
\irig|LessThan47~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan47~0_combout\ = (\irig|LessThan46~3_combout\ & ((\irig|Add43~2_combout\) # ((\irig|Add43~4_combout\) # (\irig|Add43~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add43~2_combout\,
	datab => \irig|Add43~4_combout\,
	datac => \irig|Add43~19_combout\,
	datad => \irig|LessThan46~3_combout\,
	combout => \irig|LessThan47~0_combout\);

-- Location: LCCOMB_X23_Y22_N26
\irig|LessThan47~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan47~1_combout\ = (!\irig|aux~19_combout\ & (!\irig|Add43~17_combout\ & (!\irig|Add43~18_combout\ & !\irig|LessThan47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~19_combout\,
	datab => \irig|Add43~17_combout\,
	datac => \irig|Add43~18_combout\,
	datad => \irig|LessThan47~0_combout\,
	combout => \irig|LessThan47~1_combout\);

-- Location: LCCOMB_X23_Y22_N16
\irig|LessThan47~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan47~2_combout\ = (\irig|Add43~13_combout\) # ((\irig|Add43~16_combout\) # ((\irig|Add43~10_combout\) # (!\irig|LessThan47~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add43~13_combout\,
	datab => \irig|Add43~16_combout\,
	datac => \irig|LessThan47~1_combout\,
	datad => \irig|Add43~10_combout\,
	combout => \irig|LessThan47~2_combout\);

-- Location: LCCOMB_X24_Y22_N6
\irig|Add43~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add43~21_combout\ = (\irig|LessThan46~3_combout\ & \irig|Add43~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan46~3_combout\,
	datad => \irig|Add43~19_combout\,
	combout => \irig|Add43~21_combout\);

-- Location: LCCOMB_X24_Y22_N0
\irig|Add43~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add43~22_combout\ = (\irig|Add43~4_combout\ & ((\irig|LessThan46~1_combout\) # ((\irig|LessThan46~0_combout\) # (\irig|LessThan46~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan46~1_combout\,
	datab => \irig|LessThan46~0_combout\,
	datac => \irig|Add43~4_combout\,
	datad => \irig|LessThan46~2_combout\,
	combout => \irig|Add43~22_combout\);

-- Location: LCCOMB_X24_Y22_N26
\irig|Add43~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add43~23_combout\ = (\irig|Add43~2_combout\ & ((\irig|LessThan46~2_combout\) # ((\irig|LessThan46~0_combout\) # (\irig|LessThan46~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan46~2_combout\,
	datab => \irig|LessThan46~0_combout\,
	datac => \irig|LessThan46~1_combout\,
	datad => \irig|Add43~2_combout\,
	combout => \irig|Add43~23_combout\);

-- Location: LCCOMB_X24_Y22_N30
\irig|LessThan48~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan48~0_combout\ = (\irig|Add44~2_combout\) # ((\irig|Add44~0_combout\) # ((\irig|Add44~6_combout\) # (\irig|Add44~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add44~2_combout\,
	datab => \irig|Add44~0_combout\,
	datac => \irig|Add44~6_combout\,
	datad => \irig|Add44~4_combout\,
	combout => \irig|LessThan48~0_combout\);

-- Location: LCCOMB_X24_Y22_N4
\irig|LessThan48~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan48~1_combout\ = (\irig|Add44~8_combout\) # ((\irig|LessThan48~0_combout\) # (\irig|Add44~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add44~8_combout\,
	datac => \irig|LessThan48~0_combout\,
	datad => \irig|Add44~10_combout\,
	combout => \irig|LessThan48~1_combout\);

-- Location: LCCOMB_X24_Y22_N2
\irig|LessThan48~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan48~2_combout\ = (\irig|Add44~14_combout\) # ((\irig|Add44~12_combout\) # ((\irig|LessThan48~1_combout\) # (\irig|Add44~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add44~14_combout\,
	datab => \irig|Add44~12_combout\,
	datac => \irig|LessThan48~1_combout\,
	datad => \irig|Add44~16_combout\,
	combout => \irig|LessThan48~2_combout\);

-- Location: LCCOMB_X24_Y22_N28
\irig|LessThan48~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan48~3_combout\ = (\irig|year_s\(0)) # ((\irig|LessThan47~2_combout\ & ((\irig|LessThan48~2_combout\))) # (!\irig|LessThan47~2_combout\ & (!\irig|LessThan47~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan47~1_combout\,
	datab => \irig|year_s\(0),
	datac => \irig|LessThan47~2_combout\,
	datad => \irig|LessThan48~2_combout\,
	combout => \irig|LessThan48~3_combout\);

-- Location: LCCOMB_X16_Y16_N18
\irig|LessThan33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan33~0_combout\ = (\irig|LessThan32~2_combout\) # ((!\irig|Add30~10_combout\ & (!\irig|Add30~14_combout\ & !\irig|Add30~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add30~10_combout\,
	datab => \irig|LessThan32~2_combout\,
	datac => \irig|Add30~14_combout\,
	datad => \irig|Add30~12_combout\,
	combout => \irig|LessThan33~0_combout\);

-- Location: LCCOMB_X16_Y16_N24
\irig|aux~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~20_combout\ = (\irig|LessThan32~2_combout\ & (\irig|aux~9_combout\)) # (!\irig|LessThan32~2_combout\ & ((\irig|Add30~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|LessThan32~2_combout\,
	datac => \irig|aux~9_combout\,
	datad => \irig|Add30~6_combout\,
	combout => \irig|aux~20_combout\);

-- Location: LCCOMB_X16_Y16_N30
\irig|aux~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~21_combout\ = (\irig|LessThan32~2_combout\ & (\irig|aux~8_combout\)) # (!\irig|LessThan32~2_combout\ & ((\irig|Add30~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~8_combout\,
	datac => \irig|Add30~4_combout\,
	datad => \irig|LessThan32~2_combout\,
	combout => \irig|aux~21_combout\);

-- Location: LCCOMB_X16_Y16_N16
\irig|aux~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~22_combout\ = (\irig|LessThan32~2_combout\ & (\irig|aux~10_combout\)) # (!\irig|LessThan32~2_combout\ & ((\irig|Add30~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~10_combout\,
	datac => \irig|Add30~8_combout\,
	datad => \irig|LessThan32~2_combout\,
	combout => \irig|aux~22_combout\);

-- Location: LCCOMB_X16_Y16_N22
\irig|LessThan33~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan33~1_combout\ = (\irig|LessThan33~0_combout\ & (((!\irig|aux~20_combout\ & !\irig|aux~21_combout\)) # (!\irig|aux~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~20_combout\,
	datab => \irig|aux~22_combout\,
	datac => \irig|aux~21_combout\,
	datad => \irig|LessThan33~0_combout\,
	combout => \irig|LessThan33~1_combout\);

-- Location: LCCOMB_X17_Y14_N28
\irig|aux~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~23_combout\ = (\irig|LessThan32~2_combout\ & (\irig|day_s\(2))) # (!\irig|LessThan32~2_combout\ & ((\irig|Add30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(2),
	datac => \irig|LessThan32~2_combout\,
	datad => \irig|Add30~0_combout\,
	combout => \irig|aux~23_combout\);

-- Location: LCCOMB_X17_Y14_N24
\irig|aux~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~24_combout\ = (\irig|LessThan32~2_combout\ & (\irig|aux~7_combout\)) # (!\irig|LessThan32~2_combout\ & ((\irig|Add30~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~7_combout\,
	datac => \irig|LessThan32~2_combout\,
	datad => \irig|Add30~2_combout\,
	combout => \irig|aux~24_combout\);

-- Location: LCCOMB_X16_Y14_N0
\irig|aux~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~25_combout\ = (\irig|LessThan33~1_combout\ & (\irig|aux~20_combout\)) # (!\irig|LessThan33~1_combout\ & ((\irig|Add31~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~20_combout\,
	datac => \irig|LessThan33~1_combout\,
	datad => \irig|Add31~2_combout\,
	combout => \irig|aux~25_combout\);

-- Location: LCCOMB_X16_Y14_N26
\irig|LessThan34~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan34~2_combout\ = (!\irig|aux~24_combout\ & ((\irig|LessThan33~1_combout\ & (!\irig|aux~21_combout\)) # (!\irig|LessThan33~1_combout\ & ((!\irig|Add31~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~21_combout\,
	datab => \irig|Add31~0_combout\,
	datac => \irig|LessThan33~1_combout\,
	datad => \irig|aux~24_combout\,
	combout => \irig|LessThan34~2_combout\);

-- Location: LCCOMB_X16_Y14_N4
\irig|LessThan34~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan34~3_combout\ = (\irig|LessThan33~1_combout\ & (((\irig|LessThan34~2_combout\)) # (!\irig|aux~25_combout\))) # (!\irig|LessThan33~1_combout\ & (!\irig|Add31~6_combout\ & ((\irig|LessThan34~2_combout\) # (!\irig|aux~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan33~1_combout\,
	datab => \irig|aux~25_combout\,
	datac => \irig|LessThan34~2_combout\,
	datad => \irig|Add31~6_combout\,
	combout => \irig|LessThan34~3_combout\);

-- Location: LCCOMB_X16_Y14_N6
\irig|aux~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~26_combout\ = (\irig|LessThan33~1_combout\ & (\irig|aux~22_combout\)) # (!\irig|LessThan33~1_combout\ & ((\irig|Add31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~22_combout\,
	datac => \irig|LessThan33~1_combout\,
	datad => \irig|Add31~4_combout\,
	combout => \irig|aux~26_combout\);

-- Location: LCCOMB_X16_Y14_N12
\irig|LessThan34~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan34~4_combout\ = (\irig|LessThan34~3_combout\ & (\irig|LessThan34~5_combout\ & ((\irig|LessThan33~1_combout\) # (!\irig|Add31~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan33~1_combout\,
	datab => \irig|Add31~10_combout\,
	datac => \irig|LessThan34~3_combout\,
	datad => \irig|LessThan34~5_combout\,
	combout => \irig|LessThan34~4_combout\);

-- Location: LCCOMB_X16_Y14_N2
\irig|aux~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~27_combout\ = (\irig|LessThan34~4_combout\ & (\irig|aux~24_combout\)) # (!\irig|LessThan34~4_combout\ & ((\irig|Add32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~24_combout\,
	datac => \irig|Add32~0_combout\,
	datad => \irig|LessThan34~4_combout\,
	combout => \irig|aux~27_combout\);

-- Location: LCCOMB_X17_Y14_N26
\irig|aux~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~28_combout\ = (\irig|LessThan33~1_combout\ & (\irig|aux~21_combout\)) # (!\irig|LessThan33~1_combout\ & ((\irig|Add31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~21_combout\,
	datac => \irig|LessThan33~1_combout\,
	datad => \irig|Add31~0_combout\,
	combout => \irig|aux~28_combout\);

-- Location: LCCOMB_X17_Y14_N20
\irig|aux~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~29_combout\ = (\irig|LessThan34~4_combout\ & (\irig|aux~28_combout\)) # (!\irig|LessThan34~4_combout\ & ((\irig|Add32~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~28_combout\,
	datac => \irig|Add32~2_combout\,
	datad => \irig|LessThan34~4_combout\,
	combout => \irig|aux~29_combout\);

-- Location: LCCOMB_X17_Y14_N30
\irig|LessThan35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan35~0_combout\ = ((!\irig|aux~23_combout\ & !\irig|aux~27_combout\)) # (!\irig|aux~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~23_combout\,
	datac => \irig|aux~29_combout\,
	datad => \irig|aux~27_combout\,
	combout => \irig|LessThan35~0_combout\);

-- Location: LCCOMB_X17_Y14_N0
\irig|LessThan35~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan35~1_combout\ = (!\irig|Add32~10_combout\ & (!\irig|Add32~6_combout\ & (!\irig|Add32~12_combout\ & !\irig|Add32~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add32~10_combout\,
	datab => \irig|Add32~6_combout\,
	datac => \irig|Add32~12_combout\,
	datad => \irig|Add32~8_combout\,
	combout => \irig|LessThan35~1_combout\);

-- Location: LCCOMB_X17_Y14_N22
\irig|aux~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~30_combout\ = (\irig|LessThan34~4_combout\ & ((\irig|aux~25_combout\))) # (!\irig|LessThan34~4_combout\ & (\irig|Add32~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add32~4_combout\,
	datac => \irig|aux~25_combout\,
	datad => \irig|LessThan34~4_combout\,
	combout => \irig|aux~30_combout\);

-- Location: LCCOMB_X17_Y14_N16
\irig|LessThan35~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan35~2_combout\ = (!\irig|aux~30_combout\ & (\irig|LessThan35~0_combout\ & ((\irig|LessThan34~4_combout\) # (\irig|LessThan35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~30_combout\,
	datab => \irig|LessThan34~4_combout\,
	datac => \irig|LessThan35~0_combout\,
	datad => \irig|LessThan35~1_combout\,
	combout => \irig|LessThan35~2_combout\);

-- Location: LCCOMB_X20_Y14_N6
\irig|aux~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~31_combout\ = (!\irig|LessThan35~2_combout\ & \irig|Add33~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan35~2_combout\,
	datad => \irig|Add33~6_combout\,
	combout => \irig|aux~31_combout\);

-- Location: LCCOMB_X19_Y14_N4
\irig|aux~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~32_combout\ = (\irig|LessThan35~2_combout\ & (\irig|aux~29_combout\)) # (!\irig|LessThan35~2_combout\ & ((\irig|Add33~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~29_combout\,
	datac => \irig|LessThan35~2_combout\,
	datad => \irig|Add33~4_combout\,
	combout => \irig|aux~32_combout\);

-- Location: LCCOMB_X19_Y14_N6
\irig|aux~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~33_combout\ = (\irig|LessThan35~2_combout\ & ((\irig|aux~27_combout\))) # (!\irig|LessThan35~2_combout\ & (\irig|Add33~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add33~2_combout\,
	datac => \irig|aux~27_combout\,
	datad => \irig|LessThan35~2_combout\,
	combout => \irig|aux~33_combout\);

-- Location: LCCOMB_X17_Y14_N18
\irig|aux~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~34_combout\ = (\irig|LessThan35~2_combout\ & (\irig|aux~23_combout\)) # (!\irig|LessThan35~2_combout\ & ((\irig|Add33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~23_combout\,
	datac => \irig|Add33~0_combout\,
	datad => \irig|LessThan35~2_combout\,
	combout => \irig|aux~34_combout\);

-- Location: LCCOMB_X19_Y14_N28
\irig|LessThan36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan36~0_combout\ = (\irig|Add33~8_combout\) # ((\irig|Add33~12_combout\) # ((\irig|Add33~14_combout\) # (\irig|Add33~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add33~8_combout\,
	datab => \irig|Add33~12_combout\,
	datac => \irig|Add33~14_combout\,
	datad => \irig|Add33~10_combout\,
	combout => \irig|LessThan36~0_combout\);

-- Location: LCCOMB_X19_Y14_N2
\irig|LessThan36~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan36~1_combout\ = (\irig|aux~32_combout\) # ((!\irig|LessThan35~2_combout\ & ((\irig|Add33~6_combout\) # (\irig|LessThan36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan35~2_combout\,
	datab => \irig|Add33~6_combout\,
	datac => \irig|aux~32_combout\,
	datad => \irig|LessThan36~0_combout\,
	combout => \irig|LessThan36~1_combout\);

-- Location: LCCOMB_X19_Y14_N0
\irig|LessThan36~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan36~2_combout\ = (!\irig|LessThan36~1_combout\ & (((!\irig|day_s\(1) & !\irig|aux~34_combout\)) # (!\irig|aux~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~33_combout\,
	datab => \irig|day_s\(1),
	datac => \irig|aux~34_combout\,
	datad => \irig|LessThan36~1_combout\,
	combout => \irig|LessThan36~2_combout\);

-- Location: LCCOMB_X20_Y14_N0
\irig|aux~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~35_combout\ = (!\irig|LessThan36~2_combout\ & \irig|Add34~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan36~2_combout\,
	datad => \irig|Add34~8_combout\,
	combout => \irig|aux~35_combout\);

-- Location: LCCOMB_X20_Y14_N30
\irig|LessThan37~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan37~2_combout\ = (\irig|LessThan36~2_combout\ & (\irig|aux~33_combout\)) # (!\irig|LessThan36~2_combout\ & (((\irig|Add34~4_combout\) # (\irig|Add34~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan36~2_combout\,
	datab => \irig|aux~33_combout\,
	datac => \irig|Add34~4_combout\,
	datad => \irig|Add34~6_combout\,
	combout => \irig|LessThan37~2_combout\);

-- Location: LCCOMB_X20_Y14_N28
\irig|LessThan37~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan37~3_combout\ = (\irig|Add34~12_combout\) # ((\irig|Add34~10_combout\) # ((\irig|Add34~16_combout\) # (\irig|Add34~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add34~12_combout\,
	datab => \irig|Add34~10_combout\,
	datac => \irig|Add34~16_combout\,
	datad => \irig|Add34~14_combout\,
	combout => \irig|LessThan37~3_combout\);

-- Location: LCCOMB_X20_Y14_N4
\irig|aux~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~36_combout\ = (!\irig|LessThan36~2_combout\ & \irig|Add34~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan36~2_combout\,
	datad => \irig|Add34~6_combout\,
	combout => \irig|aux~36_combout\);

-- Location: LCCOMB_X19_Y14_N26
\irig|aux~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~37_combout\ = (\irig|LessThan36~2_combout\ & (\irig|aux~33_combout\)) # (!\irig|LessThan36~2_combout\ & ((\irig|Add34~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~33_combout\,
	datac => \irig|Add34~4_combout\,
	datad => \irig|LessThan36~2_combout\,
	combout => \irig|aux~37_combout\);

-- Location: LCCOMB_X21_Y14_N14
\irig|LessThan38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan38~0_combout\ = (\irig|LessThan37~4_combout\ & ((\irig|Add35~6_combout\) # ((\irig|Add35~10_combout\) # (\irig|Add35~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add35~6_combout\,
	datab => \irig|LessThan37~4_combout\,
	datac => \irig|Add35~10_combout\,
	datad => \irig|Add35~8_combout\,
	combout => \irig|LessThan38~0_combout\);

-- Location: LCCOMB_X21_Y14_N12
\irig|LessThan38~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan38~1_combout\ = (\irig|LessThan37~4_combout\ & ((\irig|Add35~0_combout\) # ((\irig|Add35~2_combout\) # (\irig|Add35~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan37~4_combout\,
	datab => \irig|Add35~0_combout\,
	datac => \irig|Add35~2_combout\,
	datad => \irig|Add35~12_combout\,
	combout => \irig|LessThan38~1_combout\);

-- Location: LCCOMB_X19_Y14_N24
\irig|aux~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~38_combout\ = (\irig|LessThan36~2_combout\ & (\irig|aux~34_combout\)) # (!\irig|LessThan36~2_combout\ & ((\irig|Add34~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~34_combout\,
	datac => \irig|Add34~2_combout\,
	datad => \irig|LessThan36~2_combout\,
	combout => \irig|aux~38_combout\);

-- Location: LCCOMB_X21_Y14_N6
\irig|Add35~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add35~14_combout\ = (\irig|LessThan37~4_combout\ & \irig|Add35~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan37~4_combout\,
	datad => \irig|Add35~4_combout\,
	combout => \irig|Add35~14_combout\);

-- Location: LCCOMB_X21_Y14_N4
\irig|LessThan38~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan38~2_combout\ = (\irig|Add35~14_combout\) # ((\irig|aux~38_combout\) # ((\irig|LessThan38~0_combout\) # (\irig|LessThan38~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add35~14_combout\,
	datab => \irig|aux~38_combout\,
	datac => \irig|LessThan38~0_combout\,
	datad => \irig|LessThan38~1_combout\,
	combout => \irig|LessThan38~2_combout\);

-- Location: LCCOMB_X28_Y19_N26
\irig|LessThan20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan20~1_combout\ = (!\irig|aux~41_combout\ & ((\irig|LessThan20~0_combout\) # (!\irig|aux~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~40_combout\,
	datac => \irig|LessThan20~0_combout\,
	datad => \irig|aux~41_combout\,
	combout => \irig|LessThan20~1_combout\);

-- Location: LCCOMB_X24_Y19_N12
\irig|Add19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add19~0_combout\ = (\irig|min_s\(3) & (\irig|min_s\(4) & ((\irig|min_s\(2)) # (!\irig|min_s\(5))))) # (!\irig|min_s\(3) & ((\irig|min_s\(4) & (\irig|min_s\(2) & !\irig|min_s\(5))) # (!\irig|min_s\(4) & ((\irig|min_s\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s\(3),
	datab => \irig|min_s\(4),
	datac => \irig|min_s\(2),
	datad => \irig|min_s\(5),
	combout => \irig|Add19~0_combout\);

-- Location: LCCOMB_X24_Y19_N10
\irig|aux~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~46_combout\ = (\irig|LessThan20~1_combout\ & (\irig|aux~39_combout\ $ (((!\irig|min_s\(2)))))) # (!\irig|LessThan20~1_combout\ & (((\irig|Add20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~39_combout\,
	datab => \irig|Add20~2_combout\,
	datac => \irig|min_s\(2),
	datad => \irig|LessThan20~1_combout\,
	combout => \irig|aux~46_combout\);

-- Location: LCCOMB_X20_Y14_N2
\irig|Add35~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add35~15_combout\ = (\irig|LessThan37~4_combout\ & \irig|Add35~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan37~4_combout\,
	datad => \irig|Add35~12_combout\,
	combout => \irig|Add35~15_combout\);

-- Location: LCCOMB_X21_Y14_N0
\irig|Add35~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add35~16_combout\ = (\irig|Add35~10_combout\ & \irig|LessThan37~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Add35~10_combout\,
	datad => \irig|LessThan37~4_combout\,
	combout => \irig|Add35~16_combout\);

-- Location: LCCOMB_X22_Y14_N0
\irig|Add35~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add35~17_combout\ = (\irig|LessThan37~4_combout\ & \irig|Add35~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan37~4_combout\,
	datad => \irig|Add35~8_combout\,
	combout => \irig|Add35~17_combout\);

-- Location: LCCOMB_X21_Y14_N10
\irig|Add35~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add35~18_combout\ = (\irig|Add35~6_combout\ & \irig|LessThan37~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Add35~6_combout\,
	datad => \irig|LessThan37~4_combout\,
	combout => \irig|Add35~18_combout\);

-- Location: LCCOMB_X22_Y14_N30
\irig|Add35~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add35~19_combout\ = (\irig|LessThan37~4_combout\ & \irig|Add35~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan37~4_combout\,
	datad => \irig|Add35~2_combout\,
	combout => \irig|Add35~19_combout\);

-- Location: LCCOMB_X22_Y14_N12
\irig|Add35~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add35~20_combout\ = (\irig|Add35~0_combout\ & \irig|LessThan37~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Add35~0_combout\,
	datad => \irig|LessThan37~4_combout\,
	combout => \irig|Add35~20_combout\);

-- Location: LCCOMB_X22_Y14_N2
\irig|Add36~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add36~20_combout\ = (\irig|LessThan38~2_combout\ & \irig|Add36~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan38~2_combout\,
	datad => \irig|Add36~18_combout\,
	combout => \irig|Add36~20_combout\);

-- Location: LCCOMB_X22_Y14_N4
\irig|Add36~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add36~21_combout\ = (\irig|LessThan38~2_combout\ & \irig|Add36~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|LessThan38~2_combout\,
	datac => \irig|Add36~16_combout\,
	combout => \irig|Add36~21_combout\);

-- Location: LCCOMB_X22_Y14_N6
\irig|Add36~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add36~22_combout\ = (\irig|LessThan38~2_combout\ & \irig|Add36~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan38~2_combout\,
	datad => \irig|Add36~14_combout\,
	combout => \irig|Add36~22_combout\);

-- Location: LCCOMB_X22_Y14_N8
\irig|Add36~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add36~23_combout\ = (\irig|LessThan38~2_combout\ & \irig|Add36~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|LessThan38~2_combout\,
	datac => \irig|Add36~12_combout\,
	combout => \irig|Add36~23_combout\);

-- Location: LCCOMB_X22_Y14_N10
\irig|Add36~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add36~24_combout\ = (\irig|LessThan38~2_combout\ & \irig|Add36~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan38~2_combout\,
	datad => \irig|Add36~10_combout\,
	combout => \irig|Add36~24_combout\);

-- Location: LCCOMB_X24_Y14_N20
\irig|Add36~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add36~25_combout\ = (\irig|LessThan38~2_combout\ & \irig|Add36~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan38~2_combout\,
	datad => \irig|Add36~8_combout\,
	combout => \irig|Add36~25_combout\);

-- Location: LCCOMB_X21_Y14_N8
\irig|Add36~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add36~26_combout\ = (\irig|LessThan38~2_combout\ & \irig|Add36~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan38~2_combout\,
	datad => \irig|Add36~6_combout\,
	combout => \irig|Add36~26_combout\);

-- Location: LCCOMB_X21_Y14_N30
\irig|Add36~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add36~27_combout\ = (\irig|Add36~4_combout\ & ((\irig|LessThan38~1_combout\) # ((\irig|LessThan38~0_combout\) # (\irig|Add36~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan38~1_combout\,
	datab => \irig|Add36~4_combout\,
	datac => \irig|LessThan38~0_combout\,
	datad => \irig|Add36~28_combout\,
	combout => \irig|Add36~27_combout\);

-- Location: LCCOMB_X19_Y14_N30
\irig|aux~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~47_combout\ = (\irig|LessThan36~2_combout\ & (\irig|day_s\(1))) # (!\irig|LessThan36~2_combout\ & ((\irig|Add34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|day_s\(1),
	datac => \irig|Add34~0_combout\,
	datad => \irig|LessThan36~2_combout\,
	combout => \irig|aux~47_combout\);

-- Location: LCCOMB_X23_Y14_N8
\irig|LessThan40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan40~0_combout\ = (\irig|Add37~0_combout\) # ((\irig|Add37~6_combout\) # ((\irig|Add37~2_combout\) # (\irig|Add37~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add37~0_combout\,
	datab => \irig|Add37~6_combout\,
	datac => \irig|Add37~2_combout\,
	datad => \irig|Add37~4_combout\,
	combout => \irig|LessThan40~0_combout\);

-- Location: LCCOMB_X23_Y14_N6
\irig|LessThan40~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan40~1_combout\ = (\irig|Add37~10_combout\) # ((\irig|LessThan40~0_combout\) # (\irig|Add37~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add37~10_combout\,
	datac => \irig|LessThan40~0_combout\,
	datad => \irig|Add37~8_combout\,
	combout => \irig|LessThan40~1_combout\);

-- Location: LCCOMB_X23_Y14_N0
\irig|LessThan40~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan40~2_combout\ = (\irig|Add37~12_combout\) # ((\irig|Add37~16_combout\) # ((\irig|Add37~14_combout\) # (\irig|LessThan40~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add37~12_combout\,
	datab => \irig|Add37~16_combout\,
	datac => \irig|Add37~14_combout\,
	datad => \irig|LessThan40~1_combout\,
	combout => \irig|LessThan40~2_combout\);

-- Location: LCCOMB_X23_Y14_N10
\irig|LessThan39~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan39~2_combout\ = (!\irig|Add36~26_combout\ & (!\irig|Add36~27_combout\ & (!\irig|Add36~25_combout\ & !\irig|Add36~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add36~26_combout\,
	datab => \irig|Add36~27_combout\,
	datac => \irig|Add36~25_combout\,
	datad => \irig|Add36~20_combout\,
	combout => \irig|LessThan39~2_combout\);

-- Location: LCCOMB_X23_Y14_N30
\irig|LessThan39~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan39~3_combout\ = (\irig|Add36~23_combout\) # ((\irig|Add36~22_combout\) # ((\irig|Add36~21_combout\) # (!\irig|LessThan39~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add36~23_combout\,
	datab => \irig|Add36~22_combout\,
	datac => \irig|Add36~21_combout\,
	datad => \irig|LessThan39~4_combout\,
	combout => \irig|LessThan39~3_combout\);

-- Location: LCCOMB_X23_Y14_N4
\irig|LessThan40~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan40~3_combout\ = (!\irig|day_s\(0) & ((\irig|LessThan39~3_combout\ & ((!\irig|LessThan40~2_combout\))) # (!\irig|LessThan39~3_combout\ & (\irig|LessThan39~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(0),
	datab => \irig|LessThan39~4_combout\,
	datac => \irig|LessThan39~3_combout\,
	datad => \irig|LessThan40~2_combout\,
	combout => \irig|LessThan40~3_combout\);

-- Location: LCCOMB_X29_Y19_N12
\irig|Add22~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add22~18_combout\ = (\irig|LessThan22~2_combout\ & (((\irig|Add22~16_combout\)))) # (!\irig|LessThan22~2_combout\ & (\irig|Add21~10_combout\ & (\irig|LessThan21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add21~10_combout\,
	datab => \irig|LessThan21~1_combout\,
	datac => \irig|Add22~16_combout\,
	datad => \irig|LessThan22~2_combout\,
	combout => \irig|Add22~18_combout\);

-- Location: LCCOMB_X27_Y19_N8
\irig|aux~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~48_combout\ = (\irig|LessThan20~1_combout\ & (\irig|min_s\(1))) # (!\irig|LessThan20~1_combout\ & ((\irig|Add20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|min_s\(1),
	datac => \irig|Add20~0_combout\,
	datad => \irig|LessThan20~1_combout\,
	combout => \irig|aux~48_combout\);

-- Location: LCCOMB_X30_Y19_N22
\irig|Add22~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add22~24_combout\ = (\irig|Add22~2_combout\ & ((\irig|aux~44_combout\) # ((\irig|Add22~26_combout\) # (\irig|LessThan22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add22~2_combout\,
	datab => \irig|aux~44_combout\,
	datac => \irig|Add22~26_combout\,
	datad => \irig|LessThan22~1_combout\,
	combout => \irig|Add22~24_combout\);

-- Location: LCCOMB_X30_Y19_N20
\irig|Add22~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add22~25_combout\ = (\irig|LessThan22~2_combout\ & \irig|Add22~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan22~2_combout\,
	datad => \irig|Add22~22_combout\,
	combout => \irig|Add22~25_combout\);

-- Location: LCCOMB_X30_Y19_N26
\irig|LessThan24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan24~0_combout\ = (\irig|Add23~0_combout\) # ((\irig|Add23~2_combout\) # ((\irig|Add23~4_combout\) # (\irig|Add23~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add23~0_combout\,
	datab => \irig|Add23~2_combout\,
	datac => \irig|Add23~4_combout\,
	datad => \irig|Add23~6_combout\,
	combout => \irig|LessThan24~0_combout\);

-- Location: LCCOMB_X30_Y19_N24
\irig|LessThan24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan24~1_combout\ = (\irig|Add23~10_combout\) # ((\irig|Add23~8_combout\) # ((\irig|LessThan24~0_combout\) # (\irig|Add23~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add23~10_combout\,
	datab => \irig|Add23~8_combout\,
	datac => \irig|LessThan24~0_combout\,
	datad => \irig|Add23~12_combout\,
	combout => \irig|LessThan24~1_combout\);

-- Location: LCCOMB_X30_Y19_N18
\irig|LessThan24~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan24~2_combout\ = (\irig|LessThan23~2_combout\ & ((\irig|Add23~16_combout\) # ((\irig|Add23~14_combout\) # (\irig|LessThan24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan23~2_combout\,
	datab => \irig|Add23~16_combout\,
	datac => \irig|Add23~14_combout\,
	datad => \irig|LessThan24~1_combout\,
	combout => \irig|LessThan24~2_combout\);

-- Location: LCCOMB_X30_Y19_N30
\irig|LessThan24~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan24~3_combout\ = (\irig|min_s\(0)) # ((\irig|LessThan24~2_combout\) # ((!\irig|LessThan23~1_combout\ & !\irig|LessThan23~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan23~1_combout\,
	datab => \irig|min_s\(0),
	datac => \irig|LessThan23~2_combout\,
	datad => \irig|LessThan24~2_combout\,
	combout => \irig|LessThan24~3_combout\);

-- Location: LCCOMB_X22_Y17_N16
\irig|Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add13~0_combout\ = (\irig|sec_s\(4) & ((\irig|sec_s\(3) & ((\irig|sec_s\(2)) # (!\irig|sec_s\(5)))) # (!\irig|sec_s\(3) & (!\irig|sec_s\(5) & \irig|sec_s\(2))))) # (!\irig|sec_s\(4) & (!\irig|sec_s\(3) & (\irig|sec_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(4),
	datab => \irig|sec_s\(3),
	datac => \irig|sec_s\(5),
	datad => \irig|sec_s\(2),
	combout => \irig|Add13~0_combout\);

-- Location: LCCOMB_X27_Y20_N0
\irig|Add16~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add16~16_combout\ = (\irig|LessThan15~2_combout\ & (((\irig|Add16~14_combout\)))) # (!\irig|LessThan15~2_combout\ & (\irig|Add15~10_combout\ & (\irig|LessThan14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add15~10_combout\,
	datab => \irig|LessThan14~1_combout\,
	datac => \irig|LessThan15~2_combout\,
	datad => \irig|Add16~14_combout\,
	combout => \irig|Add16~16_combout\);

-- Location: LCCOMB_X26_Y20_N22
\irig|Add16~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add16~17_combout\ = (\irig|Add16~2_combout\ & \irig|LessThan15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add16~2_combout\,
	datad => \irig|LessThan15~2_combout\,
	combout => \irig|Add16~17_combout\);

-- Location: LCCOMB_X24_Y20_N30
\irig|Add16~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add16~22_combout\ = (\irig|Add16~0_combout\ & \irig|LessThan15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Add16~0_combout\,
	datad => \irig|LessThan15~2_combout\,
	combout => \irig|Add16~22_combout\);

-- Location: LCCOMB_X27_Y20_N30
\irig|LessThan17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan17~0_combout\ = (\irig|Add17~0_combout\) # ((\irig|Add17~2_combout\) # ((\irig|Add17~6_combout\) # (\irig|Add17~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add17~0_combout\,
	datab => \irig|Add17~2_combout\,
	datac => \irig|Add17~6_combout\,
	datad => \irig|Add17~4_combout\,
	combout => \irig|LessThan17~0_combout\);

-- Location: LCCOMB_X24_Y20_N16
\irig|Add16~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add16~23_combout\ = (\irig|LessThan15~2_combout\ & \irig|Add16~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|LessThan15~2_combout\,
	datad => \irig|Add16~20_combout\,
	combout => \irig|Add16~23_combout\);

-- Location: LCCOMB_X27_Y20_N20
\irig|LessThan17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan17~1_combout\ = (\irig|Add17~10_combout\) # ((\irig|Add17~14_combout\) # ((\irig|Add17~12_combout\) # (\irig|Add17~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add17~10_combout\,
	datab => \irig|Add17~14_combout\,
	datac => \irig|Add17~12_combout\,
	datad => \irig|Add17~8_combout\,
	combout => \irig|LessThan17~1_combout\);

-- Location: LCCOMB_X27_Y20_N26
\irig|LessThan17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan17~2_combout\ = (\irig|LessThan16~3_combout\ & ((\irig|LessThan17~0_combout\) # ((\irig|Add17~16_combout\) # (\irig|LessThan17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan17~0_combout\,
	datab => \irig|LessThan16~3_combout\,
	datac => \irig|Add17~16_combout\,
	datad => \irig|LessThan17~1_combout\,
	combout => \irig|LessThan17~2_combout\);

-- Location: LCCOMB_X27_Y20_N22
\irig|LessThan17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan17~3_combout\ = (\irig|sec_s\(0)) # ((\irig|LessThan17~2_combout\) # ((!\irig|LessThan16~3_combout\ & !\irig|LessThan16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(0),
	datab => \irig|LessThan16~3_combout\,
	datac => \irig|LessThan17~2_combout\,
	datad => \irig|LessThan16~4_combout\,
	combout => \irig|LessThan17~3_combout\);

-- Location: LCCOMB_X30_Y20_N12
\irig|Add27~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add27~6_combout\ = (\irig|aux~59_combout\ & \irig|Add27~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|aux~59_combout\,
	datad => \irig|Add27~4_combout\,
	combout => \irig|Add27~6_combout\);

-- Location: LCCOMB_X30_Y20_N6
\irig|Add27~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add27~9_combout\ = (\irig|aux~59_combout\ & \irig|Add27~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~59_combout\,
	datac => \irig|Add27~7_combout\,
	combout => \irig|Add27~9_combout\);

-- Location: LCCOMB_X29_Y20_N28
\irig|Add27~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add27~12_combout\ = (\irig|aux~59_combout\ & \irig|Add27~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|aux~59_combout\,
	datad => \irig|Add27~10_combout\,
	combout => \irig|Add27~12_combout\);

-- Location: LCCOMB_X29_Y20_N2
\irig|Add27~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add27~15_combout\ = (\irig|aux~59_combout\ & \irig|Add27~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|aux~59_combout\,
	datad => \irig|Add27~13_combout\,
	combout => \irig|Add27~15_combout\);

-- Location: LCCOMB_X29_Y20_N22
\irig|LessThan29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan29~0_combout\ = (\irig|Add27~9_combout\) # ((\irig|Add27~15_combout\) # ((\irig|Add27~6_combout\) # (\irig|Add27~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add27~9_combout\,
	datab => \irig|Add27~15_combout\,
	datac => \irig|Add27~6_combout\,
	datad => \irig|Add27~12_combout\,
	combout => \irig|LessThan29~0_combout\);

-- Location: LCCOMB_X30_Y20_N8
\irig|Add27~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add27~18_combout\ = (\irig|aux~59_combout\ & \irig|Add27~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|aux~59_combout\,
	datad => \irig|Add27~16_combout\,
	combout => \irig|Add27~18_combout\);

-- Location: LCCOMB_X29_Y20_N24
\irig|Add27~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add27~19_combout\ = (\irig|aux~59_combout\ & \irig|Add27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|aux~59_combout\,
	datad => \irig|Add27~0_combout\,
	combout => \irig|Add27~19_combout\);

-- Location: LCCOMB_X28_Y20_N28
\irig|LessThan29~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan29~1_combout\ = (\irig|aux~59_combout\ & ((\irig|Add27~2_combout\) # (\irig|hour_s\(1) $ (!\irig|aux~49_combout\)))) # (!\irig|aux~59_combout\ & (\irig|hour_s\(1) $ ((!\irig|aux~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~59_combout\,
	datab => \irig|hour_s\(1),
	datac => \irig|aux~49_combout\,
	datad => \irig|Add27~2_combout\,
	combout => \irig|LessThan29~1_combout\);

-- Location: LCCOMB_X28_Y18_N4
\irig|LessThan29~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan29~2_combout\ = (\irig|Add27~19_combout\) # ((\irig|LessThan29~1_combout\) # ((\irig|LessThan29~0_combout\) # (\irig|Add27~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add27~19_combout\,
	datab => \irig|LessThan29~1_combout\,
	datac => \irig|LessThan29~0_combout\,
	datad => \irig|Add27~18_combout\,
	combout => \irig|LessThan29~2_combout\);

-- Location: LCCOMB_X30_Y20_N10
\irig|Add27~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add27~20_combout\ = (\irig|aux~59_combout\ & \irig|Add27~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|aux~59_combout\,
	datad => \irig|Add27~2_combout\,
	combout => \irig|Add27~20_combout\);

-- Location: LCCOMB_X29_Y20_N30
\irig|LessThan30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan30~0_combout\ = (\irig|Add28~2_combout\) # ((\irig|Add28~4_combout\) # ((\irig|Add28~0_combout\) # (\irig|Add28~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add28~2_combout\,
	datab => \irig|Add28~4_combout\,
	datac => \irig|Add28~0_combout\,
	datad => \irig|Add28~6_combout\,
	combout => \irig|LessThan30~0_combout\);

-- Location: LCCOMB_X29_Y20_N0
\irig|LessThan30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan30~1_combout\ = (\irig|Add28~8_combout\) # ((\irig|Add28~14_combout\) # ((\irig|Add28~10_combout\) # (\irig|Add28~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add28~8_combout\,
	datab => \irig|Add28~14_combout\,
	datac => \irig|Add28~10_combout\,
	datad => \irig|Add28~12_combout\,
	combout => \irig|LessThan30~1_combout\);

-- Location: LCCOMB_X29_Y20_N26
\irig|LessThan30~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan30~2_combout\ = (\irig|Add28~16_combout\) # ((\irig|LessThan30~0_combout\) # (\irig|LessThan30~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add28~16_combout\,
	datac => \irig|LessThan30~0_combout\,
	datad => \irig|LessThan30~1_combout\,
	combout => \irig|LessThan30~2_combout\);

-- Location: LCCOMB_X28_Y18_N12
\irig|LessThan30~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan30~3_combout\ = (\irig|hour_s\(0)) # ((\irig|LessThan29~2_combout\ & \irig|LessThan30~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(0),
	datac => \irig|LessThan29~2_combout\,
	datad => \irig|LessThan30~2_combout\,
	combout => \irig|LessThan30~3_combout\);

-- Location: FF_X15_Y23_N27
\divisor|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(30));

-- Location: FF_X16_Y24_N31
\divisor|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(27));

-- Location: FF_X16_Y24_N5
\divisor|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(17));

-- Location: LCCOMB_X16_Y24_N14
\divisor|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Equal0~3_combout\ = (!\divisor|cnt\(19) & (!\divisor|cnt\(17) & (!\divisor|cnt\(16) & !\divisor|cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cnt\(19),
	datab => \divisor|cnt\(17),
	datac => \divisor|cnt\(16),
	datad => \divisor|cnt\(18),
	combout => \divisor|Equal0~3_combout\);

-- Location: FF_X16_Y25_N21
\divisor|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(12));

-- Location: FF_X16_Y25_N5
\divisor|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(14));

-- Location: LCCOMB_X17_Y25_N4
\divisor|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Equal0~5_combout\ = (!\divisor|cnt\(12) & (!\divisor|cnt\(14) & (!\divisor|cnt\(15) & !\divisor|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cnt\(12),
	datab => \divisor|cnt\(14),
	datac => \divisor|cnt\(15),
	datad => \divisor|cnt\(13),
	combout => \divisor|Equal0~5_combout\);

-- Location: FF_X16_Y25_N25
\divisor|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(10));

-- Location: FF_X16_Y25_N7
\divisor|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(11));

-- Location: LCCOMB_X17_Y25_N2
\divisor|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Equal0~6_combout\ = (!\divisor|cnt\(10) & (!\divisor|cnt\(9) & (!\divisor|cnt\(8) & !\divisor|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cnt\(10),
	datab => \divisor|cnt\(9),
	datac => \divisor|cnt\(8),
	datad => \divisor|cnt\(11),
	combout => \divisor|Equal0~6_combout\);

-- Location: FF_X17_Y25_N13
\divisor|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(7));

-- Location: LCCOMB_X17_Y25_N22
\divisor|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Equal0~7_combout\ = (!\divisor|cnt\(7) & (!\divisor|cnt\(4) & (!\divisor|cnt\(6) & !\divisor|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cnt\(7),
	datab => \divisor|cnt\(4),
	datac => \divisor|cnt\(6),
	datad => \divisor|cnt\(5),
	combout => \divisor|Equal0~7_combout\);

-- Location: FF_X16_Y25_N3
\divisor|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(0));

-- Location: LCCOMB_X17_Y25_N0
\divisor|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Equal0~8_combout\ = (\divisor|cnt\(0) & (!\divisor|cnt\(1) & (!\divisor|cnt\(2) & !\divisor|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cnt\(0),
	datab => \divisor|cnt\(1),
	datac => \divisor|cnt\(2),
	datad => \divisor|cnt\(3),
	combout => \divisor|Equal0~8_combout\);

-- Location: LCCOMB_X17_Y25_N6
\divisor|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Equal0~9_combout\ = (\divisor|Equal0~7_combout\ & (\divisor|Equal0~8_combout\ & (\divisor|Equal0~5_combout\ & \divisor|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Equal0~7_combout\,
	datab => \divisor|Equal0~8_combout\,
	datac => \divisor|Equal0~5_combout\,
	datad => \divisor|Equal0~6_combout\,
	combout => \divisor|Equal0~9_combout\);

-- Location: LCCOMB_X15_Y23_N12
\divisor|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~2_combout\ = (!\divisor|Add0~8_combout\ & (!\divisor|Add0~12_combout\ & (!\divisor|Add0~14_combout\ & !\divisor|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Add0~8_combout\,
	datab => \divisor|Add0~12_combout\,
	datac => \divisor|Add0~14_combout\,
	datad => \divisor|Add0~10_combout\,
	combout => \divisor|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y17_N6
\irig|aux~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~62_combout\ = (!\irig|sec_s\(2) & (\irig|sec_s\(5) & (\irig|sec_s\(4) & \irig|sec_s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(2),
	datab => \irig|sec_s\(5),
	datac => \irig|sec_s\(4),
	datad => \irig|sec_s\(3),
	combout => \irig|aux~62_combout\);

-- Location: LCCOMB_X22_Y23_N6
\irig|hour_s[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|hour_s[0]~15_combout\ = (!\rs~q\ & ((\up~q\ & ((\hour[0]~input_o\))) # (!\up~q\ & (!\irig|hour_s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up~q\,
	datab => \irig|hour_s\(0),
	datac => \rs~q\,
	datad => \hour[0]~input_o\,
	combout => \irig|hour_s[0]~15_combout\);

-- Location: LCCOMB_X20_Y19_N10
\irig|min_s[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_s[0]~12_combout\ = (!\rs~q\ & ((\up~q\ & (\min[0]~input_o\)) # (!\up~q\ & ((!\irig|min_s\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~q\,
	datab => \up~q\,
	datac => \min[0]~input_o\,
	datad => \irig|min_s\(0),
	combout => \irig|min_s[0]~12_combout\);

-- Location: LCCOMB_X16_Y18_N22
\irig|Add5~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~24_combout\ = (!\rs~q\ & ((\up~q\ & (\year[11]~input_o\)) # (!\up~q\ & ((\irig|Add5~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up~q\,
	datab => \rs~q\,
	datac => \year[11]~input_o\,
	datad => \irig|Add5~22_combout\,
	combout => \irig|Add5~24_combout\);

-- Location: LCCOMB_X22_Y23_N2
\irig|Mult0|mult_core|romout[0][13]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mult0|mult_core|romout[0][13]~5_combout\ = (!\irig|hour_s\(3) & (\irig|hour_s\(1) & \irig|hour_s\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(3),
	datac => \irig|hour_s\(1),
	datad => \irig|hour_s\(0),
	combout => \irig|Mult0|mult_core|romout[0][13]~5_combout\);

-- Location: LCCOMB_X15_Y19_N8
\irig|Mod1|auto_generated|divider|divider|StageOut[104]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[104]~82_combout\ = (\irig|year_s\(11) & \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(11),
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[104]~82_combout\);

-- Location: LCCOMB_X16_Y19_N26
\irig|Mod1|auto_generated|divider|divider|StageOut[103]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[103]~85_combout\ = (!\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[103]~85_combout\);

-- Location: LCCOMB_X15_Y19_N0
\irig|Mod1|auto_generated|divider|divider|StageOut[102]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[102]~86_combout\ = (\irig|year_s\(9) & \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(9),
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[102]~86_combout\);

-- Location: LCCOMB_X15_Y19_N26
\irig|Mod1|auto_generated|divider|divider|StageOut[101]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[101]~89_combout\ = (!\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[101]~89_combout\);

-- Location: LCCOMB_X15_Y19_N2
\irig|Mod1|auto_generated|divider|divider|StageOut[100]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[100]~91_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\ & !\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[100]~91_combout\);

-- Location: LCCOMB_X16_Y18_N0
\irig|Mod1|auto_generated|divider|divider|StageOut[99]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[99]~92_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \irig|year_s\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \irig|year_s\(6),
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[99]~92_combout\);

-- Location: LCCOMB_X17_Y19_N26
\irig|Mod1|auto_generated|divider|divider|StageOut[115]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[115]~96_combout\ = (!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[115]~96_combout\);

-- Location: LCCOMB_X19_Y19_N24
\irig|Mod1|auto_generated|divider|divider|StageOut[112]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[112]~100_combout\ = (!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[112]~100_combout\);

-- Location: LCCOMB_X16_Y21_N20
\irig|Mod1|auto_generated|divider|divider|StageOut[98]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[98]~102_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \irig|year_s\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \irig|year_s\(5),
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[98]~102_combout\);

-- Location: LCCOMB_X16_Y21_N22
\irig|Mod1|auto_generated|divider|divider|StageOut[98]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[98]~103_combout\ = (!\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \irig|year_s\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \irig|year_s\(5),
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[98]~103_combout\);

-- Location: LCCOMB_X16_Y21_N0
\irig|Mod1|auto_generated|divider|divider|StageOut[111]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[111]~104_combout\ = (!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~14_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[111]~104_combout\);

-- Location: LCCOMB_X17_Y19_N20
\irig|Mod1|auto_generated|divider|divider|StageOut[128]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[128]~105_combout\ = (!\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~8_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[128]~105_combout\);

-- Location: LCCOMB_X22_Y19_N12
\irig|Mod1|auto_generated|divider|divider|StageOut[125]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[125]~108_combout\ = (!\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[125]~108_combout\);

-- Location: LCCOMB_X20_Y18_N10
\irig|Mod1|auto_generated|divider|divider|StageOut[120]~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[120]~126_combout\ = (\irig|year_s\(1) & \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(1),
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[120]~126_combout\);

-- Location: LCCOMB_X20_Y18_N8
\irig|Mod1|auto_generated|divider|divider|StageOut[120]~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[120]~127_combout\ = (\irig|year_s\(1) & !\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(1),
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[120]~127_combout\);

-- Location: LCCOMB_X21_Y19_N20
\irig|year_s[8]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~13_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\) # ((!\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~16_combout\ & 
-- (!\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\ & !\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~16_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \irig|year_s[8]~13_combout\);

-- Location: LCCOMB_X22_Y19_N8
\irig|year_s[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~14_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~16_combout\ & (\irig|year_s[8]~13_combout\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[121]~125_combout\ & 
-- !\irig|Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~16_combout\,
	datab => \irig|year_s[8]~13_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|StageOut[121]~125_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\,
	combout => \irig|year_s[8]~14_combout\);

-- Location: LCCOMB_X22_Y19_N6
\irig|year_s[8]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~15_combout\ = (!\irig|Mod1|auto_generated|divider|divider|StageOut[128]~105_combout\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[127]~106_combout\ & (\irig|year_s[8]~14_combout\ & 
-- !\irig|Mod1|auto_generated|divider|divider|StageOut[126]~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[128]~105_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[127]~106_combout\,
	datac => \irig|year_s[8]~14_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|StageOut[126]~107_combout\,
	combout => \irig|year_s[8]~15_combout\);

-- Location: LCCOMB_X20_Y20_N30
\irig|year_s[8]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~18_combout\ = (\irig|year_s\(1)) # ((\irig|Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\) # ((\irig|Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[122]~160_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(1),
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|StageOut[122]~160_combout\,
	combout => \irig|year_s[8]~18_combout\);

-- Location: LCCOMB_X20_Y20_N20
\irig|year_s[8]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~19_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & ((\irig|year_s[8]~18_combout\) # ((\irig|Mod0|auto_generated|divider|divider|StageOut[121]~161_combout\)))) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & (((\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s[8]~18_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[121]~161_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~18_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \irig|year_s[8]~19_combout\);

-- Location: LCCOMB_X20_Y16_N26
\irig|year_s[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~24_combout\ = (!\irig|Add4~12_combout\) # (!\irig|Add4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Add4~10_combout\,
	datad => \irig|Add4~12_combout\,
	combout => \irig|year_s[8]~24_combout\);

-- Location: LCCOMB_X16_Y18_N6
\irig|Add5~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~26_combout\ = (!\rs~q\ & ((\up~q\ & (\year[9]~input_o\)) # (!\up~q\ & ((\irig|Add5~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up~q\,
	datab => \rs~q\,
	datac => \year[9]~input_o\,
	datad => \irig|Add5~18_combout\,
	combout => \irig|Add5~26_combout\);

-- Location: LCCOMB_X16_Y18_N14
\irig|Add5~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~28_combout\ = (!\rs~q\ & ((\up~q\ & (\year[7]~input_o\)) # (!\up~q\ & ((\irig|Add5~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \year[7]~input_o\,
	datab => \up~q\,
	datac => \irig|Add5~14_combout\,
	datad => \rs~q\,
	combout => \irig|Add5~28_combout\);

-- Location: LCCOMB_X16_Y18_N4
\irig|Add5~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~29_combout\ = (!\rs~q\ & ((\up~q\ & (\year[6]~input_o\)) # (!\up~q\ & ((\irig|Add5~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \year[6]~input_o\,
	datab => \up~q\,
	datac => \irig|Add5~12_combout\,
	datad => \rs~q\,
	combout => \irig|Add5~29_combout\);

-- Location: LCCOMB_X20_Y19_N4
\irig|Add5~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~33_combout\ = (!\rs~q\ & ((\up~q\ & (\year[2]~input_o\)) # (!\up~q\ & ((\irig|Add5~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up~q\,
	datab => \year[2]~input_o\,
	datac => \rs~q\,
	datad => \irig|Add5~4_combout\,
	combout => \irig|Add5~33_combout\);

-- Location: LCCOMB_X20_Y18_N18
\irig|Add5~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~34_combout\ = (!\rs~q\ & ((\up~q\ & ((\year[1]~input_o\))) # (!\up~q\ & (\irig|Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up~q\,
	datab => \rs~q\,
	datac => \irig|Add5~2_combout\,
	datad => \year[1]~input_o\,
	combout => \irig|Add5~34_combout\);

-- Location: LCCOMB_X16_Y21_N18
\irig|Add5~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~35_combout\ = (!\rs~q\ & ((\up~q\ & (\year[0]~input_o\)) # (!\up~q\ & ((\irig|Add5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~q\,
	datab => \year[0]~input_o\,
	datac => \irig|Add5~0_combout\,
	datad => \up~q\,
	combout => \irig|Add5~35_combout\);

-- Location: LCCOMB_X15_Y23_N26
\divisor|aux~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~2_combout\ = (\divisor|Add0~60_combout\ & !\divisor|contar~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Add0~60_combout\,
	datac => \divisor|contar~0_combout\,
	combout => \divisor|aux~2_combout\);

-- Location: LCCOMB_X16_Y24_N30
\divisor|aux~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~7_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contar~0_combout\,
	datad => \divisor|Add0~54_combout\,
	combout => \divisor|aux~7_combout\);

-- Location: LCCOMB_X16_Y24_N4
\divisor|aux~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~13_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contar~0_combout\,
	datad => \divisor|Add0~34_combout\,
	combout => \divisor|aux~13_combout\);

-- Location: LCCOMB_X16_Y25_N20
\divisor|aux~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~16_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contar~0_combout\,
	datad => \divisor|Add0~24_combout\,
	combout => \divisor|aux~16_combout\);

-- Location: LCCOMB_X16_Y25_N4
\divisor|aux~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~18_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contar~0_combout\,
	datad => \divisor|Add0~28_combout\,
	combout => \divisor|aux~18_combout\);

-- Location: LCCOMB_X16_Y25_N24
\divisor|aux~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~22_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contar~0_combout\,
	datad => \divisor|Add0~20_combout\,
	combout => \divisor|aux~22_combout\);

-- Location: LCCOMB_X16_Y25_N6
\divisor|aux~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~23_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contar~0_combout\,
	datad => \divisor|Add0~22_combout\,
	combout => \divisor|aux~23_combout\);

-- Location: LCCOMB_X17_Y25_N12
\divisor|aux~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~27_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contar~0_combout\,
	datad => \divisor|Add0~14_combout\,
	combout => \divisor|aux~27_combout\);

-- Location: LCCOMB_X16_Y25_N2
\divisor|aux~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~28_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contar~0_combout\,
	datad => \divisor|Add0~0_combout\,
	combout => \divisor|aux~28_combout\);

-- Location: LCCOMB_X28_Y18_N30
\irig|Mux1~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~71_combout\ = (\irig|tmp\(1) & ((\irig|tmp\(2)) # ((!\irig|Mux1~26_combout\)))) # (!\irig|tmp\(1) & (\irig|tmp\(2) & ((\irig|tmp\(0)) # (!\irig|Mux1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(1),
	datab => \irig|tmp\(2),
	datac => \irig|tmp\(0),
	datad => \irig|Mux1~26_combout\,
	combout => \irig|Mux1~71_combout\);

-- Location: LCCOMB_X19_Y20_N16
\irig|Mod0|auto_generated|divider|divider|StageOut[116]~188\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[116]~188_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[103]~183_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[103]~183_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[116]~188_combout\);

-- Location: LCCOMB_X19_Y20_N26
\irig|Mod0|auto_generated|divider|divider|StageOut[129]~196\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[129]~196_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[116]~188_combout\) # 
-- ((!\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[116]~188_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[129]~196_combout\);

-- Location: LCCOMB_X22_Y20_N20
\irig|Mod0|auto_generated|divider|divider|StageOut[126]~199\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[126]~199_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[113]~191_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[113]~191_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[126]~199_combout\);

-- Location: LCCOMB_X23_Y21_N30
\irig|LessThan44~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan44~6_combout\ = (\irig|Add40~6_combout\ & (\irig|LessThan43~0_combout\ & (\irig|LessThan43~2_combout\))) # (!\irig|Add40~6_combout\ & (((\irig|LessThan43~0_combout\ & \irig|LessThan43~2_combout\)) # (!\irig|LessThan44~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add40~6_combout\,
	datab => \irig|LessThan43~0_combout\,
	datac => \irig|LessThan43~2_combout\,
	datad => \irig|LessThan44~5_combout\,
	combout => \irig|LessThan44~6_combout\);

-- Location: LCCOMB_X16_Y14_N28
\irig|LessThan34~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan34~5_combout\ = (\irig|LessThan33~1_combout\ & (!\irig|aux~22_combout\)) # (!\irig|LessThan33~1_combout\ & (((!\irig|Add31~8_combout\ & !\irig|Add31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan33~1_combout\,
	datab => \irig|aux~22_combout\,
	datac => \irig|Add31~8_combout\,
	datad => \irig|Add31~4_combout\,
	combout => \irig|LessThan34~5_combout\);

-- Location: LCCOMB_X20_Y14_N8
\irig|LessThan37~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan37~4_combout\ = (\irig|LessThan37~2_combout\) # ((!\irig|LessThan36~2_combout\ & ((\irig|Add34~8_combout\) # (\irig|LessThan37~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan36~2_combout\,
	datab => \irig|Add34~8_combout\,
	datac => \irig|LessThan37~2_combout\,
	datad => \irig|LessThan37~3_combout\,
	combout => \irig|LessThan37~4_combout\);

-- Location: LCCOMB_X21_Y14_N2
\irig|Add36~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add36~28_combout\ = (\irig|Add35~14_combout\) # ((\irig|LessThan36~2_combout\ & ((\irig|aux~34_combout\))) # (!\irig|LessThan36~2_combout\ & (\irig|Add34~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add34~2_combout\,
	datab => \irig|LessThan36~2_combout\,
	datac => \irig|aux~34_combout\,
	datad => \irig|Add35~14_combout\,
	combout => \irig|Add36~28_combout\);

-- Location: LCCOMB_X23_Y14_N2
\irig|LessThan39~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan39~4_combout\ = (!\irig|aux~47_combout\ & (\irig|LessThan39~2_combout\ & ((!\irig|LessThan38~2_combout\) # (!\irig|Add36~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~47_combout\,
	datab => \irig|Add36~10_combout\,
	datac => \irig|LessThan38~2_combout\,
	datad => \irig|LessThan39~2_combout\,
	combout => \irig|LessThan39~4_combout\);

-- Location: LCCOMB_X31_Y19_N12
\irig|Add22~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add22~26_combout\ = (\irig|aux~46_combout\) # ((\irig|Add21~0_combout\ & \irig|LessThan21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add21~0_combout\,
	datac => \irig|aux~46_combout\,
	datad => \irig|LessThan21~1_combout\,
	combout => \irig|Add22~26_combout\);

-- Location: LCCOMB_X15_Y20_N26
\irig|Mod0|auto_generated|divider|divider|StageOut[91]~201\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[91]~201_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\irig|year_s\(11)))) 
-- # (!\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \irig|year_s\(11),
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[91]~201_combout\);

-- Location: LCCOMB_X14_Y20_N30
\irig|Mod0|auto_generated|divider|divider|StageOut[98]~207\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[98]~207_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \irig|year_s\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \irig|year_s\(5),
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[98]~207_combout\);

-- Location: LCCOMB_X16_Y19_N0
\irig|Mod1|auto_generated|divider|divider|StageOut[116]~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[116]~134_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & (\irig|year_s\(10))) 
-- # (!\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(10),
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[116]~134_combout\);

-- Location: LCCOMB_X15_Y19_N10
\irig|Mod1|auto_generated|divider|divider|StageOut[113]~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[113]~137_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & (\irig|year_s\(7))) 
-- # (!\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(7),
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[113]~137_combout\);

-- Location: LCCOMB_X19_Y19_N30
\irig|Mod1|auto_generated|divider|divider|StageOut[124]~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[124]~139_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & 
-- (\irig|year_s\(5))) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(5),
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~14_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[124]~139_combout\);

-- Location: LCCOMB_X21_Y18_N22
\irig|year_c[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_c[7]~0_combout\ = !\irig|LessThan41~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan41~6_combout\,
	combout => \irig|year_c[7]~0_combout\);

-- Location: LCCOMB_X29_Y18_N8
\irig|day_c[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_c[7]~2_combout\ = !\irig|LessThan33~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \irig|LessThan33~1_combout\,
	combout => \irig|day_c[7]~2_combout\);

-- Location: LCCOMB_X29_Y18_N30
\irig|day_c[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_c[5]~3_combout\ = !\irig|LessThan35~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \irig|LessThan35~2_combout\,
	combout => \irig|day_c[5]~3_combout\);

-- Location: LCCOMB_X29_Y18_N0
\irig|day_c[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_c[6]~4_combout\ = !\irig|LessThan34~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \irig|LessThan34~4_combout\,
	combout => \irig|day_c[6]~4_combout\);

-- Location: LCCOMB_X29_Y18_N14
\irig|day_c[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_c[4]~5_combout\ = !\irig|LessThan36~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan36~2_combout\,
	combout => \irig|day_c[4]~5_combout\);

-- Location: LCCOMB_X23_Y21_N26
\irig|year_c[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_c[4]~3_combout\ = !\irig|LessThan44~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan44~4_combout\,
	combout => \irig|year_c[4]~3_combout\);

-- Location: LCCOMB_X22_Y18_N24
\irig|min_c[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_c[4]~0_combout\ = !\irig|LessThan20~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan20~1_combout\,
	combout => \irig|min_c[4]~0_combout\);

-- Location: LCCOMB_X29_Y18_N2
\irig|sec_c[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|sec_c[4]~0_combout\ = !\irig|LessThan13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \irig|LessThan13~1_combout\,
	combout => \irig|sec_c[4]~0_combout\);

-- Location: LCCOMB_X30_Y18_N12
\irig|sec_c[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|sec_c[5]~1_combout\ = !\irig|aux~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \irig|aux~50_combout\,
	combout => \irig|sec_c[5]~1_combout\);

-- Location: LCCOMB_X14_Y18_N10
\irig|year_s[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s\(11) = (GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & (\irig|Add5~24_combout\)) # (!GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & ((\irig|year_s\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add5~24_combout\,
	datac => \irig|year_s\(11),
	datad => \irig|year_s[8]~25clkctrl_outclk\,
	combout => \irig|year_s\(11));

-- Location: LCCOMB_X20_Y18_N28
\irig|year_s[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s\(1) = (GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & (\irig|Add5~34_combout\)) # (!GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & ((\irig|year_s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add5~34_combout\,
	datab => \irig|year_s\(1),
	datad => \irig|year_s[8]~25clkctrl_outclk\,
	combout => \irig|year_s\(1));

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X14_Y29_N22
\hour[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hour(3),
	o => \hour[3]~input_o\);

-- Location: IOIBUF_X21_Y29_N29
\hour[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hour(4),
	o => \hour[4]~input_o\);

-- Location: IOIBUF_X26_Y29_N1
\hour[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hour(0),
	o => \hour[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\min[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min(0),
	o => \min[0]~input_o\);

-- Location: IOIBUF_X23_Y29_N1
\min[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min(1),
	o => \min[1]~input_o\);

-- Location: IOIBUF_X0_Y20_N1
\sec[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sec(5),
	o => \sec[5]~input_o\);

-- Location: IOIBUF_X16_Y29_N22
\sec[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sec(4),
	o => \sec[4]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\sec[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sec(3),
	o => \sec[3]~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\sec[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sec(2),
	o => \sec[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\sec[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sec(1),
	o => \sec[1]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\sec[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sec(0),
	o => \sec[0]~input_o\);

-- Location: IOIBUF_X14_Y29_N1
\year[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_year(11),
	o => \year[11]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\year[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_year(10),
	o => \year[10]~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\year[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_year(9),
	o => \year[9]~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\year[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_year(7),
	o => \year[7]~input_o\);

-- Location: IOIBUF_X14_Y29_N29
\year[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_year(6),
	o => \year[6]~input_o\);

-- Location: IOIBUF_X14_Y29_N15
\year[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_year(5),
	o => \year[5]~input_o\);

-- Location: IOIBUF_X23_Y29_N15
\year[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_year(2),
	o => \year[2]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\day[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_day(4),
	o => \day[4]~input_o\);

-- Location: IOIBUF_X26_Y29_N8
\day[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_day(7),
	o => \day[7]~input_o\);

-- Location: IOIBUF_X21_Y29_N8
\year[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_year(1),
	o => \year[1]~input_o\);

-- Location: IOIBUF_X0_Y21_N1
\year[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_year(0),
	o => \year[0]~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X21_Y22_N12
\irig|year_c[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_c[3]~feeder_combout\ = \irig|LessThan45~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \irig|LessThan45~4_combout\,
	combout => \irig|year_c[3]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N2
\irig|year_c[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_c[2]~feeder_combout\ = \irig|LessThan46~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan46~3_combout\,
	combout => \irig|year_c[2]~feeder_combout\);

-- Location: IOOBUF_X41_Y18_N9
\output~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \irig|output~combout\,
	devoe => ww_devoe,
	o => \output~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\irq_ou~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \irig|ALT_INV_irq_ou~q\,
	devoe => ww_devoe,
	o => \irq_ou~output_o\);

-- Location: IOIBUF_X26_Y29_N15
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X23_Y18_N8
\irig|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add6~0_combout\ = \irig|cnt\(0) $ (VCC)
-- \irig|Add6~1\ = CARRY(\irig|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|cnt\(0),
	datad => VCC,
	combout => \irig|Add6~0_combout\,
	cout => \irig|Add6~1\);

-- Location: IOIBUF_X16_Y29_N29
\pps~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pps,
	o => \pps~input_o\);

-- Location: LCCOMB_X21_Y18_N30
\irig|pre_pps~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|pre_pps~feeder_combout\ = \pps~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pps~input_o\,
	combout => \irig|pre_pps~feeder_combout\);

-- Location: FF_X21_Y18_N31
\irig|pre_pps\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~q\,
	d => \irig|pre_pps~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|pre_pps~q\);

-- Location: LCCOMB_X21_Y18_N26
\irig|ctrlclk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlclk~0_combout\ = (!\irig|pre_pps~q\ & \pps~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|pre_pps~q\,
	datad => \pps~input_o\,
	combout => \irig|ctrlclk~0_combout\);

-- Location: LCCOMB_X26_Y19_N24
\irig|tmp[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|tmp[0]~3_combout\ = !\irig|tmp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \irig|tmp\(0),
	combout => \irig|tmp[0]~3_combout\);

-- Location: FF_X26_Y18_N15
\irig|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	asdata => \irig|tmp[0]~3_combout\,
	clrn => \irig|ALT_INV_ctrlclk~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tmp\(0));

-- Location: LCCOMB_X26_Y18_N2
\irig|tmp[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|tmp[2]~1_combout\ = \irig|tmp\(2) $ (((\irig|tmp\(1) & \irig|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|tmp\(1),
	datac => \irig|tmp\(2),
	datad => \irig|tmp\(0),
	combout => \irig|tmp[2]~1_combout\);

-- Location: FF_X26_Y18_N3
\irig|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|tmp[2]~1_combout\,
	clrn => \irig|ALT_INV_ctrlclk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tmp\(2));

-- Location: LCCOMB_X26_Y18_N24
\irig|tmp~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|tmp~0_combout\ = (\irig|tmp\(0) & ((\irig|tmp\(2) & (\irig|tmp\(1) $ (\irig|tmp\(3)))) # (!\irig|tmp\(2) & (\irig|tmp\(1) & \irig|tmp\(3))))) # (!\irig|tmp\(0) & (((\irig|tmp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(0),
	datab => \irig|tmp\(2),
	datac => \irig|tmp\(1),
	datad => \irig|tmp\(3),
	combout => \irig|tmp~0_combout\);

-- Location: FF_X26_Y18_N21
\irig|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	asdata => \irig|tmp~0_combout\,
	clrn => \irig|ALT_INV_ctrlclk~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tmp\(3));

-- Location: LCCOMB_X31_Y18_N8
\irig|tmp~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|tmp~2_combout\ = (\irig|tmp\(0) & (!\irig|tmp\(1) & ((\irig|tmp\(2)) # (!\irig|tmp\(3))))) # (!\irig|tmp\(0) & (((\irig|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(0),
	datab => \irig|tmp\(2),
	datac => \irig|tmp\(1),
	datad => \irig|tmp\(3),
	combout => \irig|tmp~2_combout\);

-- Location: FF_X26_Y18_N25
\irig|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	asdata => \irig|tmp~2_combout\,
	clrn => \irig|ALT_INV_ctrlclk~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tmp\(1));

-- Location: LCCOMB_X26_Y18_N30
\irig|Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Equal6~1_combout\ = (\irig|tmp\(3) & (!\irig|tmp\(1) & (!\irig|tmp\(2) & \irig|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(3),
	datab => \irig|tmp\(1),
	datac => \irig|tmp\(2),
	datad => \irig|tmp\(0),
	combout => \irig|Equal6~1_combout\);

-- Location: FF_X23_Y18_N9
\irig|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|Add6~0_combout\,
	clrn => \irig|ALT_INV_ctrlclk~0_combout\,
	ena => \irig|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|cnt\(0));

-- Location: LCCOMB_X23_Y18_N10
\irig|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add6~2_combout\ = (\irig|cnt\(1) & (!\irig|Add6~1\)) # (!\irig|cnt\(1) & ((\irig|Add6~1\) # (GND)))
-- \irig|Add6~3\ = CARRY((!\irig|Add6~1\) # (!\irig|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(1),
	datad => VCC,
	cin => \irig|Add6~1\,
	combout => \irig|Add6~2_combout\,
	cout => \irig|Add6~3\);

-- Location: LCCOMB_X23_Y18_N12
\irig|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add6~4_combout\ = (\irig|cnt\(2) & (\irig|Add6~3\ $ (GND))) # (!\irig|cnt\(2) & (!\irig|Add6~3\ & VCC))
-- \irig|Add6~5\ = CARRY((\irig|cnt\(2) & !\irig|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(2),
	datad => VCC,
	cin => \irig|Add6~3\,
	combout => \irig|Add6~4_combout\,
	cout => \irig|Add6~5\);

-- Location: LCCOMB_X23_Y18_N14
\irig|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add6~6_combout\ = (\irig|cnt\(3) & (!\irig|Add6~5\)) # (!\irig|cnt\(3) & ((\irig|Add6~5\) # (GND)))
-- \irig|Add6~7\ = CARRY((!\irig|Add6~5\) # (!\irig|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|cnt\(3),
	datad => VCC,
	cin => \irig|Add6~5\,
	combout => \irig|Add6~6_combout\,
	cout => \irig|Add6~7\);

-- Location: FF_X23_Y18_N15
\irig|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~q\,
	d => \irig|Add6~6_combout\,
	clrn => \irig|ALT_INV_ctrlclk~0_combout\,
	ena => \irig|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|cnt\(3));

-- Location: LCCOMB_X23_Y18_N24
\irig|cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|cnt~2_combout\ = (\irig|Add6~4_combout\ & !\irig|Equal17~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Add6~4_combout\,
	datad => \irig|Equal17~2_combout\,
	combout => \irig|cnt~2_combout\);

-- Location: FF_X23_Y18_N25
\irig|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|cnt~2_combout\,
	clrn => \irig|ALT_INV_ctrlclk~0_combout\,
	ena => \irig|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|cnt\(2));

-- Location: FF_X23_Y18_N11
\irig|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|Add6~2_combout\,
	clrn => \irig|ALT_INV_ctrlclk~0_combout\,
	ena => \irig|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|cnt\(1));

-- Location: LCCOMB_X24_Y18_N22
\irig|Equal17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Equal17~1_combout\ = (\irig|cnt\(0) & (!\irig|cnt\(3) & (!\irig|cnt\(2) & \irig|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(0),
	datab => \irig|cnt\(3),
	datac => \irig|cnt\(2),
	datad => \irig|cnt\(1),
	combout => \irig|Equal17~1_combout\);

-- Location: LCCOMB_X23_Y18_N16
\irig|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add6~8_combout\ = (\irig|cnt\(4) & (\irig|Add6~7\ $ (GND))) # (!\irig|cnt\(4) & (!\irig|Add6~7\ & VCC))
-- \irig|Add6~9\ = CARRY((\irig|cnt\(4) & !\irig|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|cnt\(4),
	datad => VCC,
	cin => \irig|Add6~7\,
	combout => \irig|Add6~8_combout\,
	cout => \irig|Add6~9\);

-- Location: FF_X23_Y18_N17
\irig|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~q\,
	d => \irig|Add6~8_combout\,
	clrn => \irig|ALT_INV_ctrlclk~0_combout\,
	ena => \irig|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|cnt\(4));

-- Location: LCCOMB_X23_Y18_N18
\irig|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add6~10_combout\ = (\irig|cnt\(5) & (!\irig|Add6~9\)) # (!\irig|cnt\(5) & ((\irig|Add6~9\) # (GND)))
-- \irig|Add6~11\ = CARRY((!\irig|Add6~9\) # (!\irig|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(5),
	datad => VCC,
	cin => \irig|Add6~9\,
	combout => \irig|Add6~10_combout\,
	cout => \irig|Add6~11\);

-- Location: LCCOMB_X23_Y18_N6
\irig|cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|cnt~1_combout\ = (!\irig|Equal17~2_combout\ & \irig|Add6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Equal17~2_combout\,
	datad => \irig|Add6~10_combout\,
	combout => \irig|cnt~1_combout\);

-- Location: FF_X23_Y18_N7
\irig|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~q\,
	d => \irig|cnt~1_combout\,
	clrn => \irig|ALT_INV_ctrlclk~0_combout\,
	ena => \irig|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|cnt\(5));

-- Location: LCCOMB_X24_Y18_N8
\irig|Equal17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Equal17~2_combout\ = (!\irig|cnt\(4) & (\irig|cnt\(6) & (\irig|Equal17~1_combout\ & \irig|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(4),
	datab => \irig|cnt\(6),
	datac => \irig|Equal17~1_combout\,
	datad => \irig|cnt\(5),
	combout => \irig|Equal17~2_combout\);

-- Location: LCCOMB_X23_Y18_N20
\irig|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add6~12_combout\ = \irig|Add6~11\ $ (!\irig|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \irig|cnt\(6),
	cin => \irig|Add6~11\,
	combout => \irig|Add6~12_combout\);

-- Location: LCCOMB_X23_Y18_N22
\irig|cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|cnt~0_combout\ = (!\irig|Equal17~2_combout\ & \irig|Add6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Equal17~2_combout\,
	datad => \irig|Add6~12_combout\,
	combout => \irig|cnt~0_combout\);

-- Location: FF_X23_Y18_N23
\irig|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~q\,
	d => \irig|cnt~0_combout\,
	clrn => \irig|ALT_INV_ctrlclk~0_combout\,
	ena => \irig|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|cnt\(6));

-- Location: LCCOMB_X22_Y18_N14
\irig|output~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~3_combout\ = (!\irig|cnt\(3) & !\irig|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|cnt\(3),
	datad => \irig|cnt\(4),
	combout => \irig|output~3_combout\);

-- Location: LCCOMB_X22_Y18_N4
\irig|output~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~44_combout\ = (((\irig|output~3_combout\ & !\irig|cnt\(2))) # (!\irig|cnt\(6))) # (!\irig|cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(5),
	datab => \irig|cnt\(6),
	datac => \irig|output~3_combout\,
	datad => \irig|cnt\(2),
	combout => \irig|output~44_combout\);

-- Location: LCCOMB_X24_Y18_N4
\irig|ctrlcon~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlcon~0_combout\ = (!\irig|cnt\(3) & (!\irig|cnt\(2) & !\irig|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|cnt\(3),
	datac => \irig|cnt\(2),
	datad => \irig|cnt\(1),
	combout => \irig|ctrlcon~0_combout\);

-- Location: LCCOMB_X24_Y18_N26
\irig|output~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~12_combout\ = (\irig|cnt\(6) & (!\irig|cnt\(4) & (\irig|cnt\(5) & \irig|ctrlcon~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(6),
	datab => \irig|cnt\(4),
	datac => \irig|cnt\(5),
	datad => \irig|ctrlcon~0_combout\,
	combout => \irig|output~12_combout\);

-- Location: IOIBUF_X23_Y29_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X20_Y19_N18
\prev_pps~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prev_pps~feeder_combout\ = \pps~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pps~input_o\,
	combout => \prev_pps~feeder_combout\);

-- Location: FF_X20_Y19_N19
prev_pps : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prev_pps~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_pps~q\);

-- Location: LCCOMB_X20_Y19_N16
\rs~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rs~0_combout\ = (\reset~input_o\) # ((\rs~q\ & ((!\prev_pps~q\) # (!\pps~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pps~input_o\,
	datab => \reset~input_o\,
	datac => \rs~q\,
	datad => \prev_pps~q\,
	combout => \rs~0_combout\);

-- Location: FF_X20_Y19_N17
rs : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs~q\);

-- Location: IOIBUF_X23_Y29_N22
\update~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_update,
	o => \update~input_o\);

-- Location: LCCOMB_X20_Y19_N2
\up~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up~0_combout\ = (\update~input_o\) # ((\up~q\ & ((!\prev_pps~q\) # (!\pps~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pps~input_o\,
	datab => \update~input_o\,
	datac => \up~q\,
	datad => \prev_pps~q\,
	combout => \up~0_combout\);

-- Location: FF_X20_Y19_N3
up : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \up~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up~q\);

-- Location: LCCOMB_X20_Y17_N12
\irig|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add0~24_combout\ = (!\rs~q\ & ((\up~q\ & ((\irig|Add0~3_combout\))) # (!\up~q\ & (!\irig|sec_s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(0),
	datab => \irig|Add0~3_combout\,
	datac => \rs~q\,
	datad => \up~q\,
	combout => \irig|Add0~24_combout\);

-- Location: LCCOMB_X21_Y17_N6
\irig|sec_s[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|sec_s\(0) = (\irig|ctrlclk~0_combout\ & ((\irig|Add0~24_combout\))) # (!\irig|ctrlclk~0_combout\ & (\irig|sec_s\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(0),
	datac => \irig|Add0~24_combout\,
	datad => \irig|ctrlclk~0_combout\,
	combout => \irig|sec_s\(0));

-- Location: LCCOMB_X21_Y17_N16
\irig|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add0~22_combout\ = (!\up~q\ & (\irig|sec_s\(1) $ (\irig|sec_s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(1),
	datab => \up~q\,
	datac => \irig|sec_s\(0),
	combout => \irig|Add0~22_combout\);

-- Location: LCCOMB_X21_Y17_N14
\irig|Add0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add0~23_combout\ = (!\rs~q\ & ((\irig|Add0~22_combout\) # ((\irig|Add0~5_combout\ & \up~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add0~5_combout\,
	datab => \rs~q\,
	datac => \up~q\,
	datad => \irig|Add0~22_combout\,
	combout => \irig|Add0~23_combout\);

-- Location: LCCOMB_X21_Y17_N22
\irig|sec_s[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|sec_s\(1) = (\irig|ctrlclk~0_combout\ & ((\irig|Add0~23_combout\))) # (!\irig|ctrlclk~0_combout\ & (\irig|sec_s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(1),
	datac => \irig|Add0~23_combout\,
	datad => \irig|ctrlclk~0_combout\,
	combout => \irig|sec_s\(1));

-- Location: LCCOMB_X22_Y17_N18
\irig|Add0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add0~25_combout\ = (!\up~q\ & (((!\irig|sec_s\(1)) # (!\irig|sec_s\(0))) # (!\irig|aux~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~62_combout\,
	datab => \irig|sec_s\(0),
	datac => \up~q\,
	datad => \irig|sec_s\(1),
	combout => \irig|Add0~25_combout\);

-- Location: LCCOMB_X21_Y17_N12
\irig|min_s[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_s[0]~15_combout\ = (!\irig|pre_pps~q\ & (\pps~input_o\ & ((\rs~q\) # (!\irig|Add0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|pre_pps~q\,
	datab => \pps~input_o\,
	datac => \rs~q\,
	datad => \irig|Add0~25_combout\,
	combout => \irig|min_s[0]~15_combout\);

-- Location: IOIBUF_X0_Y21_N8
\min[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min(5),
	o => \min[5]~input_o\);

-- Location: IOIBUF_X0_Y20_N8
\min[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min(4),
	o => \min[4]~input_o\);

-- Location: IOIBUF_X23_Y29_N29
\min[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min(3),
	o => \min[3]~input_o\);

-- Location: LCCOMB_X20_Y19_N26
\irig|min_s[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_s\(0) = (\irig|min_s[0]~15_combout\ & (\irig|min_s[0]~12_combout\)) # (!\irig|min_s[0]~15_combout\ & ((\irig|min_s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s[0]~12_combout\,
	datab => \irig|min_s\(0),
	datad => \irig|min_s[0]~15_combout\,
	combout => \irig|min_s\(0));

-- Location: LCCOMB_X20_Y19_N6
\irig|Add8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add8~7_combout\ = \irig|min_s\(0) $ (\irig|min_s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|min_s\(0),
	datad => \irig|min_s\(1),
	combout => \irig|Add8~7_combout\);

-- Location: LCCOMB_X20_Y19_N14
\irig|min_s[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_s[1]~13_combout\ = (!\rs~q\ & ((\up~q\ & (\min[1]~input_o\)) # (!\up~q\ & ((\irig|Add8~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[1]~input_o\,
	datab => \up~q\,
	datac => \rs~q\,
	datad => \irig|Add8~7_combout\,
	combout => \irig|min_s[1]~13_combout\);

-- Location: LCCOMB_X24_Y19_N6
\irig|min_s[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_s\(1) = (\irig|min_s[0]~15_combout\ & ((\irig|min_s[1]~13_combout\))) # (!\irig|min_s[0]~15_combout\ & (\irig|min_s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s\(1),
	datac => \irig|min_s[0]~15_combout\,
	datad => \irig|min_s[1]~13_combout\,
	combout => \irig|min_s\(1));

-- Location: LCCOMB_X23_Y19_N22
\irig|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add2~0_combout\ = (\irig|min_s\(0) & \irig|min_s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|min_s\(0),
	datad => \irig|min_s\(1),
	combout => \irig|Add2~0_combout\);

-- Location: IOIBUF_X41_Y19_N22
\min[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min(2),
	o => \min[2]~input_o\);

-- Location: LCCOMB_X23_Y19_N12
\irig|min_s[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_s[2]~10_combout\ = (!\up~q\ & ((\irig|min_s\(2) & ((!\irig|Add2~0_combout\))) # (!\irig|min_s\(2) & (!\irig|aux~61_combout\ & \irig|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s\(2),
	datab => \irig|aux~61_combout\,
	datac => \irig|Add2~0_combout\,
	datad => \up~q\,
	combout => \irig|min_s[2]~10_combout\);

-- Location: LCCOMB_X23_Y19_N28
\irig|min_s[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_s[2]~11_combout\ = (!\rs~q\ & ((\irig|min_s[2]~10_combout\) # ((\up~q\ & \min[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~q\,
	datab => \up~q\,
	datac => \min[2]~input_o\,
	datad => \irig|min_s[2]~10_combout\,
	combout => \irig|min_s[2]~11_combout\);

-- Location: LCCOMB_X23_Y19_N6
\irig|min_s[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_s\(2) = (\irig|min_s[0]~15_combout\ & ((\irig|min_s[2]~11_combout\))) # (!\irig|min_s[0]~15_combout\ & (\irig|min_s\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s[0]~15_combout\,
	datac => \irig|min_s\(2),
	datad => \irig|min_s[2]~11_combout\,
	combout => \irig|min_s\(2));

-- Location: LCCOMB_X23_Y19_N24
\irig|aux~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~61_combout\ = (\irig|min_s\(4) & (\irig|min_s\(5) & (\irig|min_s\(3) & !\irig|min_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s\(4),
	datab => \irig|min_s\(5),
	datac => \irig|min_s\(3),
	datad => \irig|min_s\(2),
	combout => \irig|aux~61_combout\);

-- Location: LCCOMB_X23_Y19_N20
\irig|min_s[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_s[2]~14_combout\ = (!\up~q\ & (((!\irig|aux~61_combout\) # (!\irig|min_s\(0))) # (!\irig|min_s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s\(1),
	datab => \up~q\,
	datac => \irig|min_s\(0),
	datad => \irig|aux~61_combout\,
	combout => \irig|min_s[2]~14_combout\);

-- Location: LCCOMB_X23_Y19_N0
\irig|min_s[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_s[3]~8_combout\ = (\irig|min_s[2]~14_combout\ & (\irig|min_s\(3) $ (((\irig|min_s\(2) & \irig|Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s\(2),
	datab => \irig|min_s\(3),
	datac => \irig|Add2~0_combout\,
	datad => \irig|min_s[2]~14_combout\,
	combout => \irig|min_s[3]~8_combout\);

-- Location: LCCOMB_X23_Y19_N26
\irig|min_s[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_s[3]~9_combout\ = (!\rs~q\ & ((\irig|min_s[3]~8_combout\) # ((\up~q\ & \min[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~q\,
	datab => \up~q\,
	datac => \min[3]~input_o\,
	datad => \irig|min_s[3]~8_combout\,
	combout => \irig|min_s[3]~9_combout\);

-- Location: LCCOMB_X23_Y19_N4
\irig|min_s[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_s\(3) = (\irig|min_s[0]~15_combout\ & ((\irig|min_s[3]~9_combout\))) # (!\irig|min_s[0]~15_combout\ & (\irig|min_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|min_s\(3),
	datac => \irig|min_s[3]~9_combout\,
	datad => \irig|min_s[0]~15_combout\,
	combout => \irig|min_s\(3));

-- Location: LCCOMB_X23_Y19_N8
\irig|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add2~1_combout\ = (\irig|min_s\(2) & (\irig|min_s\(3) & (\irig|min_s\(0) & \irig|min_s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s\(2),
	datab => \irig|min_s\(3),
	datac => \irig|min_s\(0),
	datad => \irig|min_s\(1),
	combout => \irig|Add2~1_combout\);

-- Location: LCCOMB_X23_Y19_N2
\irig|min_s[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_s[4]~6_combout\ = (\irig|min_s[2]~14_combout\ & (\irig|min_s\(4) $ (\irig|Add2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|min_s\(4),
	datac => \irig|Add2~1_combout\,
	datad => \irig|min_s[2]~14_combout\,
	combout => \irig|min_s[4]~6_combout\);

-- Location: LCCOMB_X23_Y19_N14
\irig|min_s[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_s[4]~7_combout\ = (!\rs~q\ & ((\irig|min_s[4]~6_combout\) # ((\up~q\ & \min[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~q\,
	datab => \up~q\,
	datac => \min[4]~input_o\,
	datad => \irig|min_s[4]~6_combout\,
	combout => \irig|min_s[4]~7_combout\);

-- Location: LCCOMB_X23_Y19_N30
\irig|min_s[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_s\(4) = (\irig|min_s[0]~15_combout\ & ((\irig|min_s[4]~7_combout\))) # (!\irig|min_s[0]~15_combout\ & (\irig|min_s\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s\(4),
	datac => \irig|min_s[4]~7_combout\,
	datad => \irig|min_s[0]~15_combout\,
	combout => \irig|min_s\(4));

-- Location: LCCOMB_X23_Y19_N18
\irig|min_s[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_s[5]~4_combout\ = (\irig|min_s[2]~14_combout\ & (\irig|min_s\(5) $ (((\irig|min_s\(4) & \irig|Add2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s\(5),
	datab => \irig|min_s\(4),
	datac => \irig|Add2~1_combout\,
	datad => \irig|min_s[2]~14_combout\,
	combout => \irig|min_s[5]~4_combout\);

-- Location: LCCOMB_X23_Y19_N10
\irig|min_s[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_s[5]~5_combout\ = (!\rs~q\ & ((\irig|min_s[5]~4_combout\) # ((\min[5]~input_o\ & \up~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~q\,
	datab => \min[5]~input_o\,
	datac => \up~q\,
	datad => \irig|min_s[5]~4_combout\,
	combout => \irig|min_s[5]~5_combout\);

-- Location: LCCOMB_X24_Y19_N2
\irig|min_s[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_s\(5) = (\irig|min_s[0]~15_combout\ & ((\irig|min_s[5]~5_combout\))) # (!\irig|min_s[0]~15_combout\ & (\irig|min_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|min_s\(5),
	datac => \irig|min_s[0]~15_combout\,
	datad => \irig|min_s[5]~5_combout\,
	combout => \irig|min_s\(5));

-- Location: LCCOMB_X27_Y21_N26
\irig|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add8~0_combout\ = (\irig|min_s\(0)) # ((\irig|min_s\(1)) # ((\irig|min_s\(2)) # (\irig|min_s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s\(0),
	datab => \irig|min_s\(1),
	datac => \irig|min_s\(2),
	datad => \irig|min_s\(3),
	combout => \irig|Add8~0_combout\);

-- Location: LCCOMB_X27_Y21_N24
\irig|Add8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add8~1_combout\ = (\irig|Add8~0_combout\) # (\irig|min_s\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Add8~0_combout\,
	datad => \irig|min_s\(4),
	combout => \irig|Add8~1_combout\);

-- Location: LCCOMB_X27_Y21_N28
\irig|Add8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add8~3_combout\ = \irig|min_s\(5) $ (((\irig|Add8~0_combout\) # (\irig|min_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|min_s\(5),
	datac => \irig|Add8~0_combout\,
	datad => \irig|min_s\(4),
	combout => \irig|Add8~3_combout\);

-- Location: LCCOMB_X27_Y21_N2
\irig|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add8~4_combout\ = \irig|Add8~0_combout\ $ (\irig|min_s\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Add8~0_combout\,
	datad => \irig|min_s\(4),
	combout => \irig|Add8~4_combout\);

-- Location: LCCOMB_X27_Y21_N6
\irig|Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add9~2_combout\ = (\irig|min_s\(1) & ((\irig|Add8~3_combout\ & (\irig|Add9~1\ & VCC)) # (!\irig|Add8~3_combout\ & (!\irig|Add9~1\)))) # (!\irig|min_s\(1) & ((\irig|Add8~3_combout\ & (!\irig|Add9~1\)) # (!\irig|Add8~3_combout\ & ((\irig|Add9~1\) # 
-- (GND)))))
-- \irig|Add9~3\ = CARRY((\irig|min_s\(1) & (!\irig|Add8~3_combout\ & !\irig|Add9~1\)) # (!\irig|min_s\(1) & ((!\irig|Add9~1\) # (!\irig|Add8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s\(1),
	datab => \irig|Add8~3_combout\,
	datad => VCC,
	cin => \irig|Add9~1\,
	combout => \irig|Add9~2_combout\,
	cout => \irig|Add9~3\);

-- Location: LCCOMB_X27_Y21_N8
\irig|Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add9~4_combout\ = ((\irig|Add8~2_combout\ $ (\irig|min_s\(2) $ (!\irig|Add9~3\)))) # (GND)
-- \irig|Add9~5\ = CARRY((\irig|Add8~2_combout\ & ((\irig|min_s\(2)) # (!\irig|Add9~3\))) # (!\irig|Add8~2_combout\ & (\irig|min_s\(2) & !\irig|Add9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add8~2_combout\,
	datab => \irig|min_s\(2),
	datad => VCC,
	cin => \irig|Add9~3\,
	combout => \irig|Add9~4_combout\,
	cout => \irig|Add9~5\);

-- Location: LCCOMB_X27_Y21_N10
\irig|Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add9~6_combout\ = (\irig|Add8~2_combout\ & ((\irig|min_s\(3) & (\irig|Add9~5\ & VCC)) # (!\irig|min_s\(3) & (!\irig|Add9~5\)))) # (!\irig|Add8~2_combout\ & ((\irig|min_s\(3) & (!\irig|Add9~5\)) # (!\irig|min_s\(3) & ((\irig|Add9~5\) # (GND)))))
-- \irig|Add9~7\ = CARRY((\irig|Add8~2_combout\ & (!\irig|min_s\(3) & !\irig|Add9~5\)) # (!\irig|Add8~2_combout\ & ((!\irig|Add9~5\) # (!\irig|min_s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add8~2_combout\,
	datab => \irig|min_s\(3),
	datad => VCC,
	cin => \irig|Add9~5\,
	combout => \irig|Add9~6_combout\,
	cout => \irig|Add9~7\);

-- Location: LCCOMB_X27_Y21_N14
\irig|Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add9~10_combout\ = (\irig|Add8~2_combout\ & ((\irig|min_s\(5) & (\irig|Add9~9\ & VCC)) # (!\irig|min_s\(5) & (!\irig|Add9~9\)))) # (!\irig|Add8~2_combout\ & ((\irig|min_s\(5) & (!\irig|Add9~9\)) # (!\irig|min_s\(5) & ((\irig|Add9~9\) # (GND)))))
-- \irig|Add9~11\ = CARRY((\irig|Add8~2_combout\ & (!\irig|min_s\(5) & !\irig|Add9~9\)) # (!\irig|Add8~2_combout\ & ((!\irig|Add9~9\) # (!\irig|min_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add8~2_combout\,
	datab => \irig|min_s\(5),
	datad => VCC,
	cin => \irig|Add9~9\,
	combout => \irig|Add9~10_combout\,
	cout => \irig|Add9~11\);

-- Location: LCCOMB_X27_Y21_N18
\irig|Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add9~14_combout\ = \irig|Add9~13\ $ (((\irig|min_s\(5)) # (\irig|Add8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|min_s\(5),
	datad => \irig|Add8~1_combout\,
	cin => \irig|Add9~13\,
	combout => \irig|Add9~14_combout\);

-- Location: IOIBUF_X21_Y29_N22
\hour[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hour(2),
	o => \hour[2]~input_o\);

-- Location: LCCOMB_X21_Y17_N8
\irig|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add1~0_combout\ = (\irig|sec_s\(1) & \irig|sec_s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|sec_s\(1),
	datad => \irig|sec_s\(0),
	combout => \irig|Add1~0_combout\);

-- Location: LCCOMB_X22_Y17_N0
\irig|hour_s[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|hour_s[0]~8_combout\ = (\irig|aux~62_combout\ & (\irig|aux~61_combout\ & (\irig|Add1~0_combout\ & \irig|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~62_combout\,
	datab => \irig|aux~61_combout\,
	datac => \irig|Add1~0_combout\,
	datad => \irig|Add2~0_combout\,
	combout => \irig|hour_s[0]~8_combout\);

-- Location: LCCOMB_X21_Y17_N24
\irig|year_s[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~0_combout\ = (!\rs~q\ & !\up~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rs~q\,
	datad => \up~q\,
	combout => \irig|year_s[8]~0_combout\);

-- Location: LCCOMB_X21_Y17_N18
\irig|hour_s[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|hour_s[0]~16_combout\ = (!\irig|pre_pps~q\ & (\pps~input_o\ & ((\irig|hour_s[0]~8_combout\) # (!\irig|year_s[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|pre_pps~q\,
	datab => \pps~input_o\,
	datac => \irig|hour_s[0]~8_combout\,
	datad => \irig|year_s[8]~0_combout\,
	combout => \irig|hour_s[0]~16_combout\);

-- Location: LCCOMB_X21_Y23_N30
\irig|hour_s[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|hour_s\(0) = (\irig|hour_s[0]~16_combout\ & (\irig|hour_s[0]~15_combout\)) # (!\irig|hour_s[0]~16_combout\ & ((\irig|hour_s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s[0]~15_combout\,
	datac => \irig|hour_s\(0),
	datad => \irig|hour_s[0]~16_combout\,
	combout => \irig|hour_s\(0));

-- Location: IOIBUF_X21_Y29_N1
\hour[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hour(1),
	o => \hour[1]~input_o\);

-- Location: LCCOMB_X21_Y23_N22
\irig|hour_s[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|hour_s[1]~9_combout\ = (\up~q\ & (\hour[1]~input_o\)) # (!\up~q\ & ((\irig|hour_s\(0) $ (\irig|hour_s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up~q\,
	datab => \hour[1]~input_o\,
	datac => \irig|hour_s\(0),
	datad => \irig|hour_s\(1),
	combout => \irig|hour_s[1]~9_combout\);

-- Location: LCCOMB_X21_Y23_N26
\irig|hour_s[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|hour_s[1]~10_combout\ = (\irig|hour_s[1]~9_combout\ & !\rs~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|hour_s[1]~9_combout\,
	datad => \rs~q\,
	combout => \irig|hour_s[1]~10_combout\);

-- Location: LCCOMB_X21_Y23_N6
\irig|hour_s[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|hour_s\(1) = (\irig|hour_s[0]~16_combout\ & ((\irig|hour_s[1]~10_combout\))) # (!\irig|hour_s[0]~16_combout\ & (\irig|hour_s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(1),
	datac => \irig|hour_s[1]~10_combout\,
	datad => \irig|hour_s[0]~16_combout\,
	combout => \irig|hour_s\(1));

-- Location: LCCOMB_X21_Y23_N10
\irig|hour_s[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|hour_s[2]~11_combout\ = (!\up~q\ & (\irig|hour_s\(2) $ (((\irig|hour_s\(0) & \irig|hour_s\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up~q\,
	datab => \irig|hour_s\(2),
	datac => \irig|hour_s\(0),
	datad => \irig|hour_s\(1),
	combout => \irig|hour_s[2]~11_combout\);

-- Location: LCCOMB_X21_Y23_N18
\irig|hour_s[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|hour_s[2]~12_combout\ = (!\rs~q\ & ((\irig|hour_s[2]~11_combout\) # ((\up~q\ & \hour[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up~q\,
	datab => \hour[2]~input_o\,
	datac => \rs~q\,
	datad => \irig|hour_s[2]~11_combout\,
	combout => \irig|hour_s[2]~12_combout\);

-- Location: LCCOMB_X21_Y23_N14
\irig|hour_s[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|hour_s\(2) = (\irig|hour_s[0]~16_combout\ & (\irig|hour_s[2]~12_combout\)) # (!\irig|hour_s[0]~16_combout\ & ((\irig|hour_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|hour_s[2]~12_combout\,
	datac => \irig|hour_s\(2),
	datad => \irig|hour_s[0]~16_combout\,
	combout => \irig|hour_s\(2));

-- Location: LCCOMB_X21_Y23_N4
\irig|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add3~0_combout\ = (\irig|hour_s\(2) & (\irig|hour_s\(0) & \irig|hour_s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|hour_s\(2),
	datac => \irig|hour_s\(0),
	datad => \irig|hour_s\(1),
	combout => \irig|Add3~0_combout\);

-- Location: LCCOMB_X21_Y23_N28
\irig|hour_s[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|hour_s[4]~13_combout\ = (\irig|hour_s[4]~5_combout\ & (\irig|hour_s\(4) $ (((\irig|hour_s\(3) & \irig|Add3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(4),
	datab => \irig|hour_s\(3),
	datac => \irig|Add3~0_combout\,
	datad => \irig|hour_s[4]~5_combout\,
	combout => \irig|hour_s[4]~13_combout\);

-- Location: LCCOMB_X21_Y23_N2
\irig|hour_s[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|hour_s[4]~14_combout\ = (!\rs~q\ & ((\irig|hour_s[4]~13_combout\) # ((\hour[4]~input_o\ & \up~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[4]~input_o\,
	datab => \rs~q\,
	datac => \up~q\,
	datad => \irig|hour_s[4]~13_combout\,
	combout => \irig|hour_s[4]~14_combout\);

-- Location: LCCOMB_X21_Y23_N24
\irig|hour_s[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|hour_s\(4) = (\irig|hour_s[0]~16_combout\ & ((\irig|hour_s[4]~14_combout\))) # (!\irig|hour_s[0]~16_combout\ & (\irig|hour_s\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(4),
	datac => \irig|hour_s[0]~16_combout\,
	datad => \irig|hour_s[4]~14_combout\,
	combout => \irig|hour_s\(4));

-- Location: LCCOMB_X21_Y23_N0
\irig|hour_s[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|hour_s[4]~4_combout\ = ((!\irig|hour_s\(4)) # (!\irig|hour_s\(0))) # (!\irig|hour_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|hour_s\(2),
	datac => \irig|hour_s\(0),
	datad => \irig|hour_s\(4),
	combout => \irig|hour_s[4]~4_combout\);

-- Location: LCCOMB_X21_Y23_N20
\irig|hour_s[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|hour_s[4]~5_combout\ = (!\up~q\ & (((\irig|hour_s\(3)) # (\irig|hour_s[4]~4_combout\)) # (!\irig|hour_s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(1),
	datab => \irig|hour_s\(3),
	datac => \up~q\,
	datad => \irig|hour_s[4]~4_combout\,
	combout => \irig|hour_s[4]~5_combout\);

-- Location: LCCOMB_X21_Y23_N16
\irig|hour_s[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|hour_s[3]~6_combout\ = (\irig|hour_s[4]~5_combout\ & (\irig|hour_s\(3) $ (\irig|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|hour_s\(3),
	datac => \irig|Add3~0_combout\,
	datad => \irig|hour_s[4]~5_combout\,
	combout => \irig|hour_s[3]~6_combout\);

-- Location: LCCOMB_X21_Y23_N12
\irig|hour_s[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|hour_s[3]~7_combout\ = (!\rs~q\ & ((\irig|hour_s[3]~6_combout\) # ((\hour[3]~input_o\ & \up~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[3]~input_o\,
	datab => \rs~q\,
	datac => \up~q\,
	datad => \irig|hour_s[3]~6_combout\,
	combout => \irig|hour_s[3]~7_combout\);

-- Location: LCCOMB_X21_Y23_N8
\irig|hour_s[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|hour_s\(3) = (\irig|hour_s[0]~16_combout\ & ((\irig|hour_s[3]~7_combout\))) # (!\irig|hour_s[0]~16_combout\ & (\irig|hour_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|hour_s\(3),
	datac => \irig|hour_s[0]~16_combout\,
	datad => \irig|hour_s[3]~7_combout\,
	combout => \irig|hour_s\(3));

-- Location: LCCOMB_X24_Y23_N0
\irig|Mult0|mult_core|romout[0][12]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mult0|mult_core|romout[0][12]~3_combout\ = \irig|hour_s\(3) $ (((!\irig|hour_s\(0) & ((\irig|hour_s\(1)) # (\irig|hour_s\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(1),
	datab => \irig|hour_s\(2),
	datac => \irig|hour_s\(0),
	datad => \irig|hour_s\(3),
	combout => \irig|Mult0|mult_core|romout[0][12]~3_combout\);

-- Location: LCCOMB_X24_Y23_N2
\irig|Mult0|mult_core|romout[0][10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mult0|mult_core|romout[0][10]~combout\ = \irig|hour_s\(0) $ (\irig|hour_s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|hour_s\(0),
	datad => \irig|hour_s\(1),
	combout => \irig|Mult0|mult_core|romout[0][10]~combout\);

-- Location: LCCOMB_X23_Y19_N16
\irig|Add8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add8~5_combout\ = \irig|min_s\(3) $ (((\irig|min_s\(2)) # ((\irig|min_s\(0)) # (\irig|min_s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s\(3),
	datab => \irig|min_s\(2),
	datac => \irig|min_s\(0),
	datad => \irig|min_s\(1),
	combout => \irig|Add8~5_combout\);

-- Location: LCCOMB_X26_Y19_N10
\irig|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add8~6_combout\ = \irig|min_s\(2) $ (((\irig|min_s\(0)) # (\irig|min_s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|min_s\(2),
	datac => \irig|min_s\(0),
	datad => \irig|min_s\(1),
	combout => \irig|Add8~6_combout\);

-- Location: LCCOMB_X24_Y23_N4
\irig|Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add10~0_combout\ = (\irig|hour_s\(0) & (\irig|Add8~6_combout\ $ (VCC))) # (!\irig|hour_s\(0) & (\irig|Add8~6_combout\ & VCC))
-- \irig|Add10~1\ = CARRY((\irig|hour_s\(0) & \irig|Add8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(0),
	datab => \irig|Add8~6_combout\,
	datad => VCC,
	combout => \irig|Add10~0_combout\,
	cout => \irig|Add10~1\);

-- Location: LCCOMB_X24_Y23_N8
\irig|Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add10~4_combout\ = ((\irig|Add9~0_combout\ $ (\irig|hour_s\(2) $ (!\irig|Add10~3\)))) # (GND)
-- \irig|Add10~5\ = CARRY((\irig|Add9~0_combout\ & ((\irig|hour_s\(2)) # (!\irig|Add10~3\))) # (!\irig|Add9~0_combout\ & (\irig|hour_s\(2) & !\irig|Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add9~0_combout\,
	datab => \irig|hour_s\(2),
	datad => VCC,
	cin => \irig|Add10~3\,
	combout => \irig|Add10~4_combout\,
	cout => \irig|Add10~5\);

-- Location: LCCOMB_X24_Y23_N10
\irig|Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add10~6_combout\ = (\irig|hour_s\(3) & ((\irig|Add9~2_combout\ & (\irig|Add10~5\ & VCC)) # (!\irig|Add9~2_combout\ & (!\irig|Add10~5\)))) # (!\irig|hour_s\(3) & ((\irig|Add9~2_combout\ & (!\irig|Add10~5\)) # (!\irig|Add9~2_combout\ & 
-- ((\irig|Add10~5\) # (GND)))))
-- \irig|Add10~7\ = CARRY((\irig|hour_s\(3) & (!\irig|Add9~2_combout\ & !\irig|Add10~5\)) # (!\irig|hour_s\(3) & ((!\irig|Add10~5\) # (!\irig|Add9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(3),
	datab => \irig|Add9~2_combout\,
	datad => VCC,
	cin => \irig|Add10~5\,
	combout => \irig|Add10~6_combout\,
	cout => \irig|Add10~7\);

-- Location: LCCOMB_X24_Y23_N18
\irig|Add10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add10~14_combout\ = (\irig|Mult0|mult_core|romout[0][11]~4_combout\ & ((\irig|Add9~10_combout\ & (\irig|Add10~13\ & VCC)) # (!\irig|Add9~10_combout\ & (!\irig|Add10~13\)))) # (!\irig|Mult0|mult_core|romout[0][11]~4_combout\ & 
-- ((\irig|Add9~10_combout\ & (!\irig|Add10~13\)) # (!\irig|Add9~10_combout\ & ((\irig|Add10~13\) # (GND)))))
-- \irig|Add10~15\ = CARRY((\irig|Mult0|mult_core|romout[0][11]~4_combout\ & (!\irig|Add9~10_combout\ & !\irig|Add10~13\)) # (!\irig|Mult0|mult_core|romout[0][11]~4_combout\ & ((!\irig|Add10~13\) # (!\irig|Add9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mult0|mult_core|romout[0][11]~4_combout\,
	datab => \irig|Add9~10_combout\,
	datad => VCC,
	cin => \irig|Add10~13\,
	combout => \irig|Add10~14_combout\,
	cout => \irig|Add10~15\);

-- Location: LCCOMB_X24_Y23_N20
\irig|Add10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add10~16_combout\ = ((\irig|Add9~12_combout\ $ (\irig|Mult0|mult_core|romout[0][12]~3_combout\ $ (!\irig|Add10~15\)))) # (GND)
-- \irig|Add10~17\ = CARRY((\irig|Add9~12_combout\ & ((\irig|Mult0|mult_core|romout[0][12]~3_combout\) # (!\irig|Add10~15\))) # (!\irig|Add9~12_combout\ & (\irig|Mult0|mult_core|romout[0][12]~3_combout\ & !\irig|Add10~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add9~12_combout\,
	datab => \irig|Mult0|mult_core|romout[0][12]~3_combout\,
	datad => VCC,
	cin => \irig|Add10~15\,
	combout => \irig|Add10~16_combout\,
	cout => \irig|Add10~17\);

-- Location: LCCOMB_X24_Y23_N22
\irig|Add10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add10~18_combout\ = (\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((\irig|Add9~14_combout\ & (\irig|Add10~17\ & VCC)) # (!\irig|Add9~14_combout\ & (!\irig|Add10~17\)))) # 
-- (!\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((\irig|Add9~14_combout\ & (!\irig|Add10~17\)) # (!\irig|Add9~14_combout\ & ((\irig|Add10~17\) # (GND)))))
-- \irig|Add10~19\ = CARRY((\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (!\irig|Add9~14_combout\ & !\irig|Add10~17\)) # (!\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((!\irig|Add10~17\) # 
-- (!\irig|Add9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datab => \irig|Add9~14_combout\,
	datad => VCC,
	cin => \irig|Add10~17\,
	combout => \irig|Add10~18_combout\,
	cout => \irig|Add10~19\);

-- Location: LCCOMB_X22_Y17_N10
\irig|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add0~20_combout\ = (!\up~q\ & ((\irig|sec_s\(2) & ((!\irig|Add1~0_combout\))) # (!\irig|sec_s\(2) & (!\irig|aux~62_combout\ & \irig|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~62_combout\,
	datab => \up~q\,
	datac => \irig|sec_s\(2),
	datad => \irig|Add1~0_combout\,
	combout => \irig|Add0~20_combout\);

-- Location: LCCOMB_X22_Y17_N2
\irig|Add0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add0~21_combout\ = (!\rs~q\ & ((\irig|Add0~20_combout\) # ((\irig|Add0~7_combout\ & \up~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add0~7_combout\,
	datab => \up~q\,
	datac => \rs~q\,
	datad => \irig|Add0~20_combout\,
	combout => \irig|Add0~21_combout\);

-- Location: LCCOMB_X22_Y17_N12
\irig|sec_s[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|sec_s\(2) = (\irig|ctrlclk~0_combout\ & (\irig|Add0~21_combout\)) # (!\irig|ctrlclk~0_combout\ & ((\irig|sec_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add0~21_combout\,
	datac => \irig|ctrlclk~0_combout\,
	datad => \irig|sec_s\(2),
	combout => \irig|sec_s\(2));

-- Location: LCCOMB_X21_Y17_N28
\irig|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add0~18_combout\ = (\irig|Add0~25_combout\ & (\irig|sec_s\(3) $ (((\irig|Add1~0_combout\ & \irig|sec_s\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(3),
	datab => \irig|Add1~0_combout\,
	datac => \irig|sec_s\(2),
	datad => \irig|Add0~25_combout\,
	combout => \irig|Add0~18_combout\);

-- Location: LCCOMB_X21_Y17_N20
\irig|Add0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add0~19_combout\ = (!\rs~q\ & ((\irig|Add0~18_combout\) # ((\irig|Add0~9_combout\ & \up~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add0~9_combout\,
	datab => \rs~q\,
	datac => \up~q\,
	datad => \irig|Add0~18_combout\,
	combout => \irig|Add0~19_combout\);

-- Location: LCCOMB_X22_Y17_N28
\irig|sec_s[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|sec_s\(3) = (\irig|ctrlclk~0_combout\ & ((\irig|Add0~19_combout\))) # (!\irig|ctrlclk~0_combout\ & (\irig|sec_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(3),
	datab => \irig|Add0~19_combout\,
	datac => \irig|ctrlclk~0_combout\,
	combout => \irig|sec_s\(3));

-- Location: LCCOMB_X21_Y17_N4
\irig|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add1~1_combout\ = (\irig|sec_s\(0) & (\irig|sec_s\(2) & (\irig|sec_s\(1) & \irig|sec_s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(0),
	datab => \irig|sec_s\(2),
	datac => \irig|sec_s\(1),
	datad => \irig|sec_s\(3),
	combout => \irig|Add1~1_combout\);

-- Location: LCCOMB_X22_Y17_N24
\irig|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add0~16_combout\ = (\irig|Add0~25_combout\ & (\irig|sec_s\(4) $ (\irig|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(4),
	datac => \irig|Add1~1_combout\,
	datad => \irig|Add0~25_combout\,
	combout => \irig|Add0~16_combout\);

-- Location: LCCOMB_X22_Y17_N26
\irig|Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add0~17_combout\ = (!\rs~q\ & ((\irig|Add0~16_combout\) # ((\irig|Add0~11_combout\ & \up~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add0~11_combout\,
	datab => \up~q\,
	datac => \rs~q\,
	datad => \irig|Add0~16_combout\,
	combout => \irig|Add0~17_combout\);

-- Location: LCCOMB_X22_Y17_N30
\irig|sec_s[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|sec_s\(4) = (\irig|ctrlclk~0_combout\ & ((\irig|Add0~17_combout\))) # (!\irig|ctrlclk~0_combout\ & (\irig|sec_s\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(4),
	datac => \irig|Add0~17_combout\,
	datad => \irig|ctrlclk~0_combout\,
	combout => \irig|sec_s\(4));

-- Location: LCCOMB_X22_Y17_N20
\irig|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add0~2_combout\ = (\irig|Add0~25_combout\ & (\irig|sec_s\(5) $ (((\irig|sec_s\(4) & \irig|Add1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(5),
	datab => \irig|sec_s\(4),
	datac => \irig|Add1~1_combout\,
	datad => \irig|Add0~25_combout\,
	combout => \irig|Add0~2_combout\);

-- Location: LCCOMB_X22_Y17_N4
\irig|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add0~15_combout\ = (!\rs~q\ & ((\irig|Add0~2_combout\) # ((\irig|Add0~13_combout\ & \up~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add0~13_combout\,
	datab => \up~q\,
	datac => \rs~q\,
	datad => \irig|Add0~2_combout\,
	combout => \irig|Add0~15_combout\);

-- Location: LCCOMB_X22_Y17_N8
\irig|sec_s[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|sec_s\(5) = (\irig|ctrlclk~0_combout\ & ((\irig|Add0~15_combout\))) # (!\irig|ctrlclk~0_combout\ & (\irig|sec_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|ctrlclk~0_combout\,
	datab => \irig|sec_s\(5),
	datac => \irig|Add0~15_combout\,
	combout => \irig|sec_s\(5));

-- Location: LCCOMB_X24_Y21_N2
\irig|tod[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|tod[2]~15_combout\ = (\irig|sec_s\(2) & (\irig|min_s\(0) $ (VCC))) # (!\irig|sec_s\(2) & (\irig|min_s\(0) & VCC))
-- \irig|tod[2]~16\ = CARRY((\irig|sec_s\(2) & \irig|min_s\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(2),
	datab => \irig|min_s\(0),
	datad => VCC,
	combout => \irig|tod[2]~15_combout\,
	cout => \irig|tod[2]~16\);

-- Location: LCCOMB_X24_Y21_N4
\irig|tod[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|tod[3]~17_combout\ = (\irig|Add8~7_combout\ & ((\irig|sec_s\(3) & (\irig|tod[2]~16\ & VCC)) # (!\irig|sec_s\(3) & (!\irig|tod[2]~16\)))) # (!\irig|Add8~7_combout\ & ((\irig|sec_s\(3) & (!\irig|tod[2]~16\)) # (!\irig|sec_s\(3) & ((\irig|tod[2]~16\) # 
-- (GND)))))
-- \irig|tod[3]~18\ = CARRY((\irig|Add8~7_combout\ & (!\irig|sec_s\(3) & !\irig|tod[2]~16\)) # (!\irig|Add8~7_combout\ & ((!\irig|tod[2]~16\) # (!\irig|sec_s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add8~7_combout\,
	datab => \irig|sec_s\(3),
	datad => VCC,
	cin => \irig|tod[2]~16\,
	combout => \irig|tod[3]~17_combout\,
	cout => \irig|tod[3]~18\);

-- Location: LCCOMB_X24_Y21_N6
\irig|tod[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|tod[4]~19_combout\ = ((\irig|sec_s\(4) $ (\irig|Add10~0_combout\ $ (!\irig|tod[3]~18\)))) # (GND)
-- \irig|tod[4]~20\ = CARRY((\irig|sec_s\(4) & ((\irig|Add10~0_combout\) # (!\irig|tod[3]~18\))) # (!\irig|sec_s\(4) & (\irig|Add10~0_combout\ & !\irig|tod[3]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(4),
	datab => \irig|Add10~0_combout\,
	datad => VCC,
	cin => \irig|tod[3]~18\,
	combout => \irig|tod[4]~19_combout\,
	cout => \irig|tod[4]~20\);

-- Location: LCCOMB_X24_Y21_N8
\irig|tod[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|tod[5]~21_combout\ = (\irig|Add10~2_combout\ & ((\irig|sec_s\(5) & (\irig|tod[4]~20\ & VCC)) # (!\irig|sec_s\(5) & (!\irig|tod[4]~20\)))) # (!\irig|Add10~2_combout\ & ((\irig|sec_s\(5) & (!\irig|tod[4]~20\)) # (!\irig|sec_s\(5) & ((\irig|tod[4]~20\) 
-- # (GND)))))
-- \irig|tod[5]~22\ = CARRY((\irig|Add10~2_combout\ & (!\irig|sec_s\(5) & !\irig|tod[4]~20\)) # (!\irig|Add10~2_combout\ & ((!\irig|tod[4]~20\) # (!\irig|sec_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add10~2_combout\,
	datab => \irig|sec_s\(5),
	datad => VCC,
	cin => \irig|tod[4]~20\,
	combout => \irig|tod[5]~21_combout\,
	cout => \irig|tod[5]~22\);

-- Location: LCCOMB_X24_Y21_N12
\irig|tod[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|tod[7]~25_combout\ = (\irig|Add10~6_combout\ & (!\irig|tod[6]~24\)) # (!\irig|Add10~6_combout\ & ((\irig|tod[6]~24\) # (GND)))
-- \irig|tod[7]~26\ = CARRY((!\irig|tod[6]~24\) # (!\irig|Add10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add10~6_combout\,
	datad => VCC,
	cin => \irig|tod[6]~24\,
	combout => \irig|tod[7]~25_combout\,
	cout => \irig|tod[7]~26\);

-- Location: LCCOMB_X24_Y21_N14
\irig|tod[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|tod[8]~27_combout\ = (\irig|Add10~8_combout\ & (\irig|tod[7]~26\ $ (GND))) # (!\irig|Add10~8_combout\ & (!\irig|tod[7]~26\ & VCC))
-- \irig|tod[8]~28\ = CARRY((\irig|Add10~8_combout\ & !\irig|tod[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add10~8_combout\,
	datad => VCC,
	cin => \irig|tod[7]~26\,
	combout => \irig|tod[8]~27_combout\,
	cout => \irig|tod[8]~28\);

-- Location: LCCOMB_X24_Y21_N16
\irig|tod[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|tod[9]~29_combout\ = (\irig|Add10~10_combout\ & (!\irig|tod[8]~28\)) # (!\irig|Add10~10_combout\ & ((\irig|tod[8]~28\) # (GND)))
-- \irig|tod[9]~30\ = CARRY((!\irig|tod[8]~28\) # (!\irig|Add10~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add10~10_combout\,
	datad => VCC,
	cin => \irig|tod[8]~28\,
	combout => \irig|tod[9]~29_combout\,
	cout => \irig|tod[9]~30\);

-- Location: LCCOMB_X24_Y21_N18
\irig|tod[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|tod[10]~31_combout\ = (\irig|Add10~12_combout\ & (\irig|tod[9]~30\ $ (GND))) # (!\irig|Add10~12_combout\ & (!\irig|tod[9]~30\ & VCC))
-- \irig|tod[10]~32\ = CARRY((\irig|Add10~12_combout\ & !\irig|tod[9]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add10~12_combout\,
	datad => VCC,
	cin => \irig|tod[9]~30\,
	combout => \irig|tod[10]~31_combout\,
	cout => \irig|tod[10]~32\);

-- Location: LCCOMB_X24_Y21_N22
\irig|tod[12]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|tod[12]~35_combout\ = (\irig|Add10~16_combout\ & (\irig|tod[11]~34\ $ (GND))) # (!\irig|Add10~16_combout\ & (!\irig|tod[11]~34\ & VCC))
-- \irig|tod[12]~36\ = CARRY((\irig|Add10~16_combout\ & !\irig|tod[11]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add10~16_combout\,
	datad => VCC,
	cin => \irig|tod[11]~34\,
	combout => \irig|tod[12]~35_combout\,
	cout => \irig|tod[12]~36\);

-- Location: LCCOMB_X24_Y21_N24
\irig|tod[13]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|tod[13]~37_combout\ = (\irig|Add10~18_combout\ & (!\irig|tod[12]~36\)) # (!\irig|Add10~18_combout\ & ((\irig|tod[12]~36\) # (GND)))
-- \irig|tod[13]~38\ = CARRY((!\irig|tod[12]~36\) # (!\irig|Add10~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add10~18_combout\,
	datad => VCC,
	cin => \irig|tod[12]~36\,
	combout => \irig|tod[13]~37_combout\,
	cout => \irig|tod[13]~38\);

-- Location: LCCOMB_X24_Y21_N26
\irig|tod[14]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|tod[14]~39_combout\ = (\irig|Add10~20_combout\ & (\irig|tod[13]~38\ $ (GND))) # (!\irig|Add10~20_combout\ & (!\irig|tod[13]~38\ & VCC))
-- \irig|tod[14]~40\ = CARRY((\irig|Add10~20_combout\ & !\irig|tod[13]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add10~20_combout\,
	datad => VCC,
	cin => \irig|tod[13]~38\,
	combout => \irig|tod[14]~39_combout\,
	cout => \irig|tod[14]~40\);

-- Location: LCCOMB_X24_Y21_N28
\irig|tod[15]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|tod[15]~41_combout\ = (\irig|Add10~22_combout\ & (!\irig|tod[14]~40\)) # (!\irig|Add10~22_combout\ & ((\irig|tod[14]~40\) # (GND)))
-- \irig|tod[15]~42\ = CARRY((!\irig|tod[14]~40\) # (!\irig|Add10~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add10~22_combout\,
	datad => VCC,
	cin => \irig|tod[14]~40\,
	combout => \irig|tod[15]~41_combout\,
	cout => \irig|tod[15]~42\);

-- Location: LCCOMB_X24_Y18_N24
\irig|ctrlcon~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlcon~2_combout\ = (!\irig|cnt\(6) & (!\irig|cnt\(5) & !\irig|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|cnt\(6),
	datac => \irig|cnt\(5),
	datad => \irig|cnt\(0),
	combout => \irig|ctrlcon~2_combout\);

-- Location: LCCOMB_X24_Y18_N10
\irig|ctrlcon~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlcon~1_combout\ = (!\irig|cnt\(4) & (!\irig|tmp\(2) & (!\irig|tmp\(1) & \irig|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(4),
	datab => \irig|tmp\(2),
	datac => \irig|tmp\(1),
	datad => \irig|tmp\(0),
	combout => \irig|ctrlcon~1_combout\);

-- Location: LCCOMB_X24_Y18_N30
\irig|ctrlcon~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlcon~3_combout\ = (!\irig|tmp\(3) & (\irig|ctrlcon~2_combout\ & (\irig|ctrlcon~0_combout\ & \irig|ctrlcon~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(3),
	datab => \irig|ctrlcon~2_combout\,
	datac => \irig|ctrlcon~0_combout\,
	datad => \irig|ctrlcon~1_combout\,
	combout => \irig|ctrlcon~3_combout\);

-- Location: FF_X24_Y21_N29
\irig|tod[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|tod[15]~41_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tod\(15));

-- Location: LCCOMB_X23_Y23_N6
\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X24_Y23_N28
\irig|Add10~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add10~24_combout\ = \irig|Add9~14_combout\ $ (\irig|Add10~23\ $ (!\irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add9~14_combout\,
	datad => \irig|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cin => \irig|Add10~23\,
	combout => \irig|Add10~24_combout\);

-- Location: LCCOMB_X24_Y21_N30
\irig|tod[16]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|tod[16]~43_combout\ = \irig|tod[15]~42\ $ (!\irig|Add10~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \irig|Add10~24_combout\,
	cin => \irig|tod[15]~42\,
	combout => \irig|tod[16]~43_combout\);

-- Location: FF_X24_Y21_N31
\irig|tod[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|tod[16]~43_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tod\(16));

-- Location: LCCOMB_X24_Y21_N0
\irig|output~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~9_combout\ = (\irig|cnt\(0) & ((\irig|tod\(16)))) # (!\irig|cnt\(0) & (\irig|tod\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|tod\(15),
	datac => \irig|tod\(16),
	datad => \irig|cnt\(0),
	combout => \irig|output~9_combout\);

-- Location: LCCOMB_X23_Y18_N4
\irig|ctrlout~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlout~3_combout\ = (\irig|cnt\(5) & ((\irig|cnt\(1)) # ((\irig|cnt\(2))))) # (!\irig|cnt\(5) & (\irig|cnt\(1) & (!\irig|cnt\(0) & \irig|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(5),
	datab => \irig|cnt\(1),
	datac => \irig|cnt\(0),
	datad => \irig|cnt\(2),
	combout => \irig|ctrlout~3_combout\);

-- Location: LCCOMB_X23_Y18_N28
\irig|ctrlout~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlout~4_combout\ = (\irig|cnt\(5) & (((\irig|cnt\(2))))) # (!\irig|cnt\(5) & ((\irig|cnt\(1) & (\irig|cnt\(0) & !\irig|cnt\(2))) # (!\irig|cnt\(1) & (!\irig|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(5),
	datab => \irig|cnt\(1),
	datac => \irig|cnt\(0),
	datad => \irig|cnt\(2),
	combout => \irig|ctrlout~4_combout\);

-- Location: LCCOMB_X23_Y18_N2
\irig|ctrlout~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlout~24_combout\ = (\irig|cnt\(3) & ((\irig|cnt\(4) & ((\irig|ctrlout~4_combout\))) # (!\irig|cnt\(4) & (\irig|ctrlout~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(4),
	datab => \irig|cnt\(3),
	datac => \irig|ctrlout~3_combout\,
	datad => \irig|ctrlout~4_combout\,
	combout => \irig|ctrlout~24_combout\);

-- Location: LCCOMB_X23_Y18_N0
\irig|ctrlout~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlout~25_combout\ = (\irig|cnt\(2) & (\irig|cnt\(5) & ((\irig|cnt\(1))))) # (!\irig|cnt\(2) & (!\irig|cnt\(3) & (\irig|cnt\(5) $ (\irig|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(5),
	datab => \irig|cnt\(3),
	datac => \irig|cnt\(1),
	datad => \irig|cnt\(2),
	combout => \irig|ctrlout~25_combout\);

-- Location: LCCOMB_X23_Y18_N30
\irig|ctrlout~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlout~26_combout\ = (\irig|cnt\(4) & (\irig|ctrlout~25_combout\ & ((!\irig|cnt\(1)) # (!\irig|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(0),
	datab => \irig|cnt\(1),
	datac => \irig|cnt\(4),
	datad => \irig|ctrlout~25_combout\,
	combout => \irig|ctrlout~26_combout\);

-- Location: LCCOMB_X22_Y18_N28
\irig|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~4_combout\ = (\irig|cnt\(1) & !\irig|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|cnt\(1),
	datad => \irig|cnt\(0),
	combout => \irig|Mux1~4_combout\);

-- Location: LCCOMB_X22_Y18_N30
\irig|ctrlout~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlout~14_combout\ = (!\irig|cnt\(3) & (\irig|Mux1~4_combout\ & (\irig|cnt\(5) & !\irig|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(3),
	datab => \irig|Mux1~4_combout\,
	datac => \irig|cnt\(5),
	datad => \irig|cnt\(2),
	combout => \irig|ctrlout~14_combout\);

-- Location: LCCOMB_X22_Y18_N0
\irig|ctrlout~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlout~15_combout\ = (\irig|cnt\(0) & \irig|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|cnt\(0),
	datad => \irig|cnt\(2),
	combout => \irig|ctrlout~15_combout\);

-- Location: LCCOMB_X22_Y18_N18
\irig|ctrlout~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlout~16_combout\ = (\irig|cnt\(3) & (\irig|cnt\(6) & ((!\irig|ctrlout~15_combout\) # (!\irig|cnt\(1))))) # (!\irig|cnt\(3) & (\irig|cnt\(6) $ (((!\irig|cnt\(1) & \irig|ctrlout~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(3),
	datab => \irig|cnt\(6),
	datac => \irig|cnt\(1),
	datad => \irig|ctrlout~15_combout\,
	combout => \irig|ctrlout~16_combout\);

-- Location: LCCOMB_X22_Y18_N10
\irig|ctrlout~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlout~17_combout\ = (!\irig|cnt\(4) & ((\irig|ctrlout~14_combout\) # ((!\irig|cnt\(5) & \irig|ctrlout~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(5),
	datab => \irig|cnt\(4),
	datac => \irig|ctrlout~14_combout\,
	datad => \irig|ctrlout~16_combout\,
	combout => \irig|ctrlout~17_combout\);

-- Location: LCCOMB_X23_Y18_N26
\irig|ctrlout~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlout~18_combout\ = (\irig|ctrlout~17_combout\) # ((!\irig|cnt\(6) & ((\irig|ctrlout~24_combout\) # (\irig|ctrlout~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(6),
	datab => \irig|ctrlout~24_combout\,
	datac => \irig|ctrlout~26_combout\,
	datad => \irig|ctrlout~17_combout\,
	combout => \irig|ctrlout~18_combout\);

-- Location: LCCOMB_X31_Y18_N22
\irig|output~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~11_combout\ = (\irig|output~9_combout\ & (!\irig|ctrlout~18_combout\ & ((!\irig|tmp\(2)) # (!\irig|output~10_combout\)))) # (!\irig|output~9_combout\ & (!\irig|output~10_combout\ & (!\irig|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|output~10_combout\,
	datab => \irig|tmp\(2),
	datac => \irig|output~9_combout\,
	datad => \irig|ctrlout~18_combout\,
	combout => \irig|output~11_combout\);

-- Location: LCCOMB_X27_Y18_N24
\irig|ctrlout~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlout~19_combout\ = (\irig|cnt\(0) & ((\irig|cnt\(6) & (\irig|cnt\(3) $ (!\irig|cnt\(2)))) # (!\irig|cnt\(6) & ((!\irig|cnt\(2)) # (!\irig|cnt\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(6),
	datab => \irig|cnt\(3),
	datac => \irig|cnt\(0),
	datad => \irig|cnt\(2),
	combout => \irig|ctrlout~19_combout\);

-- Location: LCCOMB_X27_Y18_N2
\irig|ctrlout~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlout~20_combout\ = (\irig|cnt\(0) & ((\irig|cnt\(6) & ((\irig|cnt\(3)) # (!\irig|cnt\(2)))) # (!\irig|cnt\(6) & ((\irig|cnt\(2)))))) # (!\irig|cnt\(0) & (!\irig|cnt\(3) & ((\irig|cnt\(6)) # (\irig|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(0),
	datab => \irig|cnt\(6),
	datac => \irig|cnt\(3),
	datad => \irig|cnt\(2),
	combout => \irig|ctrlout~20_combout\);

-- Location: LCCOMB_X27_Y18_N14
\irig|ctrlout~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlout~22_combout\ = (\irig|cnt\(5) & ((\irig|cnt\(4) & ((\irig|ctrlout~20_combout\) # (!\irig|cnt\(3)))) # (!\irig|cnt\(4) & ((\irig|cnt\(3)) # (!\irig|ctrlout~20_combout\))))) # (!\irig|cnt\(5) & ((\irig|cnt\(3) $ (\irig|ctrlout~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(5),
	datab => \irig|cnt\(4),
	datac => \irig|cnt\(3),
	datad => \irig|ctrlout~20_combout\,
	combout => \irig|ctrlout~22_combout\);

-- Location: LCCOMB_X27_Y18_N0
\irig|ctrlout~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlout~21_combout\ = (\irig|ctrlout~20_combout\ & (!\irig|cnt\(4) & (\irig|cnt\(5) $ (\irig|cnt\(3))))) # (!\irig|ctrlout~20_combout\ & (\irig|cnt\(4) $ (((!\irig|cnt\(5) & \irig|cnt\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(5),
	datab => \irig|cnt\(4),
	datac => \irig|cnt\(3),
	datad => \irig|ctrlout~20_combout\,
	combout => \irig|ctrlout~21_combout\);

-- Location: LCCOMB_X27_Y18_N20
\irig|ctrlout~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|ctrlout~23_combout\ = (\irig|ctrlout~19_combout\ & (\irig|ctrlout~21_combout\ & (\irig|cnt\(1) $ (\irig|ctrlout~22_combout\)))) # (!\irig|ctrlout~19_combout\ & (!\irig|cnt\(1) & (!\irig|ctrlout~22_combout\ & !\irig|ctrlout~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(1),
	datab => \irig|ctrlout~19_combout\,
	datac => \irig|ctrlout~22_combout\,
	datad => \irig|ctrlout~21_combout\,
	combout => \irig|ctrlout~23_combout\);

-- Location: LCCOMB_X31_Y18_N28
\irig|output~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~13_combout\ = (\irig|ctrlout~23_combout\) # ((!\irig|tmp\(1) & (!\irig|tmp\(2) & \irig|ctrlout~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(1),
	datab => \irig|tmp\(2),
	datac => \irig|ctrlout~23_combout\,
	datad => \irig|ctrlout~18_combout\,
	combout => \irig|output~13_combout\);

-- Location: LCCOMB_X31_Y18_N6
\irig|output~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~14_combout\ = (!\irig|tmp\(3) & ((\irig|output~13_combout\) # ((\irig|output~12_combout\ & \irig|output~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(3),
	datab => \irig|output~12_combout\,
	datac => \irig|output~11_combout\,
	datad => \irig|output~13_combout\,
	combout => \irig|output~14_combout\);

-- Location: LCCOMB_X27_Y18_N18
\irig|output~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~15_combout\ = (!\irig|ctrlout~18_combout\ & !\irig|ctrlout~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|ctrlout~18_combout\,
	datad => \irig|ctrlout~23_combout\,
	combout => \irig|output~15_combout\);

-- Location: LCCOMB_X21_Y18_N24
\irig|Mux1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~18_combout\ = (\irig|year_c\(7) & (((!\irig|tmp\(0) & !\irig|tmp\(1))) # (!\irig|tmp\(2)))) # (!\irig|year_c\(7) & (((!\irig|tmp\(2) & !\irig|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_c\(7),
	datab => \irig|tmp\(0),
	datac => \irig|tmp\(2),
	datad => \irig|tmp\(1),
	combout => \irig|Mux1~18_combout\);

-- Location: LCCOMB_X26_Y18_N28
\irig|Mux1~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~19_combout\ = (\irig|cnt\(4) & (!\irig|tmp\(3) & (\irig|Mux1~4_combout\ & \irig|Mux1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(4),
	datab => \irig|tmp\(3),
	datac => \irig|Mux1~4_combout\,
	datad => \irig|Mux1~18_combout\,
	combout => \irig|Mux1~19_combout\);

-- Location: LCCOMB_X21_Y17_N30
\irig|year_s[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~1_combout\ = (\irig|Mult0|mult_core|romout[0][13]~5_combout\ & (\irig|hour_s[0]~8_combout\ & (\irig|hour_s\(2) & \irig|hour_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mult0|mult_core|romout[0][13]~5_combout\,
	datab => \irig|hour_s[0]~8_combout\,
	datac => \irig|hour_s\(2),
	datad => \irig|hour_s\(4),
	combout => \irig|year_s[8]~1_combout\);

-- Location: LCCOMB_X21_Y17_N26
\irig|year_s[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~25_combout\ = (\irig|ctrlclk~0_combout\ & (((\irig|day_s[0]~4_combout\ & \irig|year_s[8]~1_combout\)) # (!\irig|year_s[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s[0]~4_combout\,
	datab => \irig|year_s[8]~0_combout\,
	datac => \irig|year_s[8]~1_combout\,
	datad => \irig|ctrlclk~0_combout\,
	combout => \irig|year_s[8]~25_combout\);

-- Location: CLKCTRL_G12
\irig|year_s[8]~25clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \irig|year_s[8]~25clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \irig|year_s[8]~25clkctrl_outclk\);

-- Location: LCCOMB_X14_Y18_N2
\irig|year_s[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s\(9) = (GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & (\irig|Add5~26_combout\)) # (!GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & ((\irig|year_s\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add5~26_combout\,
	datac => \irig|year_s\(9),
	datad => \irig|year_s[8]~25clkctrl_outclk\,
	combout => \irig|year_s\(9));

-- Location: LCCOMB_X14_Y18_N30
\irig|year_s[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s\(7) = (GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & (\irig|Add5~28_combout\)) # (!GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & ((\irig|year_s\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add5~28_combout\,
	datac => \irig|year_s\(7),
	datad => \irig|year_s[8]~25clkctrl_outclk\,
	combout => \irig|year_s\(7));

-- Location: LCCOMB_X16_Y18_N18
\irig|year_s[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s\(6) = (GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & (\irig|Add5~29_combout\)) # (!GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & ((\irig|year_s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add5~29_combout\,
	datab => \irig|year_s\(6),
	datad => \irig|year_s[8]~25clkctrl_outclk\,
	combout => \irig|year_s\(6));

-- Location: IOIBUF_X0_Y21_N15
\year[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_year(4),
	o => \year[4]~input_o\);

-- Location: LCCOMB_X19_Y19_N8
\irig|year_s[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s\(2) = (GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & (\irig|Add5~33_combout\)) # (!GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & ((\irig|year_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add5~33_combout\,
	datac => \irig|year_s\(2),
	datad => \irig|year_s[8]~25clkctrl_outclk\,
	combout => \irig|year_s\(2));

-- Location: LCCOMB_X17_Y18_N28
\irig|year_s[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s\(0) = (GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & (\irig|Add5~35_combout\)) # (!GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & ((\irig|year_s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add5~35_combout\,
	datab => \irig|year_s\(0),
	datad => \irig|year_s[8]~25clkctrl_outclk\,
	combout => \irig|year_s\(0));

-- Location: LCCOMB_X17_Y18_N6
\irig|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~6_combout\ = (\irig|year_s\(3) & (!\irig|Add5~5\)) # (!\irig|year_s\(3) & ((\irig|Add5~5\) # (GND)))
-- \irig|Add5~7\ = CARRY((!\irig|Add5~5\) # (!\irig|year_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(3),
	datad => VCC,
	cin => \irig|Add5~5\,
	combout => \irig|Add5~6_combout\,
	cout => \irig|Add5~7\);

-- Location: LCCOMB_X17_Y18_N8
\irig|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~8_combout\ = (\irig|year_s\(4) & (\irig|Add5~7\ $ (GND))) # (!\irig|year_s\(4) & (!\irig|Add5~7\ & VCC))
-- \irig|Add5~9\ = CARRY((\irig|year_s\(4) & !\irig|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(4),
	datad => VCC,
	cin => \irig|Add5~7\,
	combout => \irig|Add5~8_combout\,
	cout => \irig|Add5~9\);

-- Location: LCCOMB_X16_Y21_N10
\irig|Add5~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~31_combout\ = (!\rs~q\ & ((\up~q\ & (\year[4]~input_o\)) # (!\up~q\ & ((\irig|Add5~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up~q\,
	datab => \year[4]~input_o\,
	datac => \irig|Add5~8_combout\,
	datad => \rs~q\,
	combout => \irig|Add5~31_combout\);

-- Location: LCCOMB_X16_Y21_N14
\irig|year_s[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s\(4) = (GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & (\irig|Add5~31_combout\)) # (!GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & ((\irig|year_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add5~31_combout\,
	datac => \irig|year_s\(4),
	datad => \irig|year_s[8]~25clkctrl_outclk\,
	combout => \irig|year_s\(4));

-- Location: LCCOMB_X17_Y18_N10
\irig|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~10_combout\ = (\irig|year_s\(5) & (!\irig|Add5~9\)) # (!\irig|year_s\(5) & ((\irig|Add5~9\) # (GND)))
-- \irig|Add5~11\ = CARRY((!\irig|Add5~9\) # (!\irig|year_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(5),
	datad => VCC,
	cin => \irig|Add5~9\,
	combout => \irig|Add5~10_combout\,
	cout => \irig|Add5~11\);

-- Location: LCCOMB_X17_Y18_N16
\irig|Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~16_combout\ = (\irig|year_s\(8) & (\irig|Add5~15\ $ (GND))) # (!\irig|year_s\(8) & (!\irig|Add5~15\ & VCC))
-- \irig|Add5~17\ = CARRY((\irig|year_s\(8) & !\irig|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(8),
	datad => VCC,
	cin => \irig|Add5~15\,
	combout => \irig|Add5~16_combout\,
	cout => \irig|Add5~17\);

-- Location: LCCOMB_X16_Y18_N20
\irig|Add5~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~25_combout\ = (!\rs~q\ & ((\up~q\ & (\year[10]~input_o\)) # (!\up~q\ & ((\irig|Add5~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \year[10]~input_o\,
	datab => \up~q\,
	datac => \irig|Add5~20_combout\,
	datad => \rs~q\,
	combout => \irig|Add5~25_combout\);

-- Location: LCCOMB_X14_Y18_N0
\irig|year_s[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s\(10) = (GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & ((\irig|Add5~25_combout\))) # (!GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & (\irig|year_s\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(10),
	datac => \irig|Add5~25_combout\,
	datad => \irig|year_s[8]~25clkctrl_outclk\,
	combout => \irig|year_s\(10));

-- Location: IOIBUF_X0_Y13_N22
\year[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_year(8),
	o => \year[8]~input_o\);

-- Location: LCCOMB_X16_Y18_N8
\irig|Add5~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~27_combout\ = (!\rs~q\ & ((\up~q\ & (\year[8]~input_o\)) # (!\up~q\ & ((\irig|Add5~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up~q\,
	datab => \rs~q\,
	datac => \year[8]~input_o\,
	datad => \irig|Add5~16_combout\,
	combout => \irig|Add5~27_combout\);

-- Location: LCCOMB_X14_Y18_N8
\irig|year_s[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s\(8) = (GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & (\irig|Add5~27_combout\)) # (!GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & ((\irig|year_s\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add5~27_combout\,
	datac => \irig|year_s\(8),
	datad => \irig|year_s[8]~25clkctrl_outclk\,
	combout => \irig|year_s\(8));

-- Location: LCCOMB_X14_Y18_N18
\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \irig|year_s\(7) $ (VCC)
-- \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\irig|year_s\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(7),
	datad => VCC,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X14_Y18_N20
\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\irig|year_s\(8) & (\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\irig|year_s\(8) & 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\irig|year_s\(8) & !\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(8),
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X14_Y18_N22
\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\irig|year_s\(9) & ((GND) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\irig|year_s\(9) & 
-- (\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\irig|year_s\(9)) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(9),
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X14_Y18_N24
\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\irig|year_s\(10) & (!\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\irig|year_s\(10) & 
-- ((\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\irig|year_s\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(10),
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X14_Y18_N28
\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X15_Y18_N8
\irig|Mod0|auto_generated|divider|divider|StageOut[78]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[78]~114_combout\ = (\irig|year_s\(11) & \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(11),
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[78]~114_combout\);

-- Location: LCCOMB_X15_Y18_N2
\irig|Mod0|auto_generated|divider|divider|StageOut[77]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[77]~117_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[77]~117_combout\);

-- Location: LCCOMB_X15_Y18_N28
\irig|Mod0|auto_generated|divider|divider|StageOut[76]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[76]~118_combout\ = (\irig|year_s\(9) & \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(9),
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[76]~118_combout\);

-- Location: LCCOMB_X14_Y18_N6
\irig|Mod0|auto_generated|divider|divider|StageOut[75]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[75]~121_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[75]~121_combout\);

-- Location: LCCOMB_X14_Y18_N4
\irig|Mod0|auto_generated|divider|divider|StageOut[74]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[74]~122_combout\ = (\irig|year_s\(7) & \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|year_s\(7),
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[74]~122_combout\);

-- Location: LCCOMB_X16_Y18_N28
\irig|Mod0|auto_generated|divider|divider|StageOut[73]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[73]~124_combout\ = (\irig|year_s\(6) & \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(6),
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[73]~124_combout\);

-- Location: LCCOMB_X15_Y18_N14
\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\irig|Mod0|auto_generated|divider|divider|StageOut[73]~125_combout\) # (\irig|Mod0|auto_generated|divider|divider|StageOut[73]~124_combout\)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\irig|Mod0|auto_generated|divider|divider|StageOut[73]~125_combout\) # (\irig|Mod0|auto_generated|divider|divider|StageOut[73]~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[73]~125_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[73]~124_combout\,
	datad => VCC,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X15_Y18_N16
\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[74]~123_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[74]~122_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[74]~123_combout\ & 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[74]~122_combout\)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|StageOut[74]~123_combout\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[74]~122_combout\ & 
-- !\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[74]~123_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[74]~122_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X15_Y18_N20
\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\irig|Mod0|auto_generated|divider|divider|StageOut[76]~119_combout\ & (((!\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[76]~119_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[76]~118_combout\ & (!\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[76]~118_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\irig|Mod0|auto_generated|divider|divider|StageOut[76]~119_combout\ & !\irig|Mod0|auto_generated|divider|divider|StageOut[76]~118_combout\)) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[76]~119_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[76]~118_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X15_Y18_N24
\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[78]~115_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[78]~114_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[78]~115_combout\ & 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[78]~114_combout\)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|StageOut[78]~115_combout\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[78]~114_combout\ & 
-- !\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[78]~115_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[78]~114_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X15_Y18_N26
\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X15_Y20_N0
\irig|Mod0|auto_generated|divider|divider|StageOut[91]~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[91]~126_combout\ = (!\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[91]~126_combout\);

-- Location: LCCOMB_X15_Y20_N4
\irig|Mod0|auto_generated|divider|divider|StageOut[90]~202\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[90]~202_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\irig|year_s\(10)))) 
-- # (!\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \irig|year_s\(10),
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[90]~202_combout\);

-- Location: LCCOMB_X14_Y20_N6
\irig|Mod0|auto_generated|divider|divider|StageOut[89]~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[89]~128_combout\ = (!\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[89]~128_combout\);

-- Location: LCCOMB_X14_Y20_N28
\irig|Mod0|auto_generated|divider|divider|StageOut[88]~204\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[88]~204_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\irig|year_s\(8))) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \irig|year_s\(8),
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[88]~204_combout\);

-- Location: LCCOMB_X14_Y18_N16
\irig|Mod0|auto_generated|divider|divider|StageOut[87]~205\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[87]~205_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\irig|year_s\(7))) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(7),
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[87]~205_combout\);

-- Location: LCCOMB_X16_Y18_N12
\irig|Mod0|auto_generated|divider|divider|StageOut[86]~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[86]~131_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \irig|year_s\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \irig|year_s\(6),
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[86]~131_combout\);

-- Location: LCCOMB_X16_Y22_N4
\irig|Add5~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~30_combout\ = (!\rs~q\ & ((\up~q\ & (\year[5]~input_o\)) # (!\up~q\ & ((\irig|Add5~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \year[5]~input_o\,
	datab => \up~q\,
	datac => \irig|Add5~10_combout\,
	datad => \rs~q\,
	combout => \irig|Add5~30_combout\);

-- Location: LCCOMB_X15_Y21_N20
\irig|year_s[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s\(5) = (GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & ((\irig|Add5~30_combout\))) # (!GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & (\irig|year_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(5),
	datac => \irig|Add5~30_combout\,
	datad => \irig|year_s[8]~25clkctrl_outclk\,
	combout => \irig|year_s\(5));

-- Location: LCCOMB_X15_Y21_N4
\irig|Mod0|auto_generated|divider|divider|StageOut[85]~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[85]~133_combout\ = (\irig|year_s\(5) & \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(5),
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[85]~133_combout\);

-- Location: LCCOMB_X15_Y20_N6
\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ = (((\irig|Mod0|auto_generated|divider|divider|StageOut[85]~134_combout\) # (\irig|Mod0|auto_generated|divider|divider|StageOut[85]~133_combout\)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ = CARRY((\irig|Mod0|auto_generated|divider|divider|StageOut[85]~134_combout\) # (\irig|Mod0|auto_generated|divider|divider|StageOut[85]~133_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[85]~134_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[85]~133_combout\,
	datad => VCC,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\);

-- Location: LCCOMB_X15_Y20_N8
\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[86]~132_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[86]~131_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[86]~132_combout\ & 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[86]~131_combout\)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|StageOut[86]~132_combout\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[86]~131_combout\ & 
-- !\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[86]~132_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[86]~131_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\);

-- Location: LCCOMB_X15_Y20_N10
\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((((\irig|Mod0|auto_generated|divider|divider|StageOut[87]~130_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[87]~205_combout\))))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[87]~130_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|StageOut[87]~205_combout\) # (GND))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((\irig|Mod0|auto_generated|divider|divider|StageOut[87]~130_combout\) # ((\irig|Mod0|auto_generated|divider|divider|StageOut[87]~205_combout\) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[87]~130_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[87]~205_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X15_Y20_N12
\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\irig|Mod0|auto_generated|divider|divider|StageOut[88]~129_combout\ & (((!\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[88]~129_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[88]~204_combout\ & (!\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[88]~204_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) # (GND)))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\irig|Mod0|auto_generated|divider|divider|StageOut[88]~129_combout\ & !\irig|Mod0|auto_generated|divider|divider|StageOut[88]~204_combout\)) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[88]~129_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[88]~204_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X15_Y20_N14
\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[89]~203_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[89]~128_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((((\irig|Mod0|auto_generated|divider|divider|StageOut[89]~203_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[89]~128_combout\)))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[89]~203_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[89]~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[89]~203_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[89]~128_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\);

-- Location: LCCOMB_X15_Y20_N18
\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ & ((((\irig|Mod0|auto_generated|divider|divider|StageOut[91]~201_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[91]~126_combout\))))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[91]~201_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|StageOut[91]~126_combout\) # (GND))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\ = CARRY((\irig|Mod0|auto_generated|divider|divider|StageOut[91]~201_combout\) # ((\irig|Mod0|auto_generated|divider|divider|StageOut[91]~126_combout\) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[91]~201_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[91]~126_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\);

-- Location: LCCOMB_X15_Y20_N20
\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ = !\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\);

-- Location: LCCOMB_X16_Y20_N0
\irig|Mod0|auto_generated|divider|divider|StageOut[104]~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[104]~135_combout\ = (!\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[104]~135_combout\);

-- Location: LCCOMB_X15_Y20_N28
\irig|Mod0|auto_generated|divider|divider|StageOut[103]~183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[103]~183_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[90]~202_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[90]~202_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[103]~183_combout\);

-- Location: LCCOMB_X15_Y20_N24
\irig|Mod0|auto_generated|divider|divider|StageOut[102]~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[102]~137_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[102]~137_combout\);

-- Location: LCCOMB_X15_Y20_N30
\irig|Mod0|auto_generated|divider|divider|StageOut[101]~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[101]~138_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[101]~138_combout\);

-- Location: LCCOMB_X14_Y20_N12
\irig|Mod0|auto_generated|divider|divider|StageOut[100]~186\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[100]~186_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[87]~205_combout\) # 
-- ((!\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[87]~205_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[100]~186_combout\);

-- Location: LCCOMB_X14_Y20_N4
\irig|Mod0|auto_generated|divider|divider|StageOut[99]~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\);

-- Location: LCCOMB_X19_Y20_N4
\irig|Mod0|auto_generated|divider|divider|StageOut[98]~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[98]~141_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[98]~141_combout\);

-- Location: LCCOMB_X16_Y21_N24
\irig|Mod0|auto_generated|divider|divider|StageOut[97]~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[97]~142_combout\ = (\irig|year_s\(4) & \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|year_s\(4),
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[97]~142_combout\);

-- Location: LCCOMB_X16_Y20_N8
\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ = (((\irig|Mod0|auto_generated|divider|divider|StageOut[97]~145_combout\) # (\irig|Mod0|auto_generated|divider|divider|StageOut[97]~142_combout\)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ = CARRY((\irig|Mod0|auto_generated|divider|divider|StageOut[97]~145_combout\) # (\irig|Mod0|auto_generated|divider|divider|StageOut[97]~142_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[97]~145_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[97]~142_combout\,
	datad => VCC,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\);

-- Location: LCCOMB_X16_Y20_N10
\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[98]~207_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[98]~141_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[98]~207_combout\ & 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[98]~141_combout\)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|StageOut[98]~207_combout\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[98]~141_combout\ & 
-- !\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[98]~207_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[98]~141_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\);

-- Location: LCCOMB_X16_Y20_N12
\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((((\irig|Mod0|auto_generated|divider|divider|StageOut[99]~206_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\))))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[99]~206_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\) # (GND))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ = CARRY((\irig|Mod0|auto_generated|divider|divider|StageOut[99]~206_combout\) # ((\irig|Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[99]~206_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\);

-- Location: LCCOMB_X16_Y20_N16
\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[101]~185_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[101]~138_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((((\irig|Mod0|auto_generated|divider|divider|StageOut[101]~185_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[101]~138_combout\)))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[101]~185_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[101]~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[101]~185_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[101]~138_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\);

-- Location: LCCOMB_X16_Y20_N18
\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[102]~184_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[102]~137_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[102]~184_combout\ & 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[102]~137_combout\)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|StageOut[102]~184_combout\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[102]~137_combout\ & 
-- !\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[102]~184_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[102]~137_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\);

-- Location: LCCOMB_X16_Y20_N20
\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ & ((((\irig|Mod0|auto_generated|divider|divider|StageOut[103]~136_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[103]~183_combout\))))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[103]~136_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|StageOut[103]~183_combout\) # (GND))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ = CARRY((\irig|Mod0|auto_generated|divider|divider|StageOut[103]~136_combout\) # ((\irig|Mod0|auto_generated|divider|divider|StageOut[103]~183_combout\) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[103]~136_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[103]~183_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\);

-- Location: LCCOMB_X16_Y20_N22
\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[104]~182_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[104]~135_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[104]~182_combout\ & 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[104]~135_combout\)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|StageOut[104]~182_combout\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[104]~135_combout\ & 
-- !\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[104]~182_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[104]~135_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\);

-- Location: LCCOMB_X16_Y20_N24
\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ = \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\);

-- Location: LCCOMB_X19_Y20_N24
\irig|Mod0|auto_generated|divider|divider|StageOut[111]~210\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[111]~210_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & (\irig|year_s\(5))) 
-- # (!\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(5),
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[111]~210_combout\);

-- Location: LCCOMB_X16_Y20_N6
\irig|Mod0|auto_generated|divider|divider|StageOut[117]~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[117]~146_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[117]~146_combout\);

-- Location: LCCOMB_X16_Y20_N28
\irig|Mod0|auto_generated|divider|divider|StageOut[116]~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[116]~147_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[116]~147_combout\);

-- Location: LCCOMB_X16_Y20_N30
\irig|Mod0|auto_generated|divider|divider|StageOut[115]~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[115]~148_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[115]~148_combout\);

-- Location: LCCOMB_X14_Y20_N2
\irig|Mod0|auto_generated|divider|divider|StageOut[101]~185\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[101]~185_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[88]~204_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|StageOut[88]~204_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[101]~185_combout\);

-- Location: LCCOMB_X14_Y20_N24
\irig|Mod0|auto_generated|divider|divider|StageOut[114]~190\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[114]~190_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[101]~185_combout\) # 
-- ((!\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[101]~185_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[114]~190_combout\);

-- Location: LCCOMB_X14_Y20_N26
\irig|Mod0|auto_generated|divider|divider|StageOut[113]~191\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[113]~191_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[100]~186_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[100]~186_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[113]~191_combout\);

-- Location: LCCOMB_X19_Y20_N28
\irig|Mod0|auto_generated|divider|divider|StageOut[112]~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[112]~151_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[112]~151_combout\);

-- Location: LCCOMB_X19_Y20_N22
\irig|Mod0|auto_generated|divider|divider|StageOut[111]~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[111]~152_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[111]~152_combout\);

-- Location: LCCOMB_X19_Y20_N0
\irig|Mod0|auto_generated|divider|divider|StageOut[110]~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[110]~153_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[110]~153_combout\);

-- Location: IOIBUF_X16_Y29_N8
\year[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_year(3),
	o => \year[3]~input_o\);

-- Location: LCCOMB_X16_Y21_N28
\irig|Add5~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add5~32_combout\ = (!\rs~q\ & ((\up~q\ & (\year[3]~input_o\)) # (!\up~q\ & ((\irig|Add5~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up~q\,
	datab => \year[3]~input_o\,
	datac => \irig|Add5~6_combout\,
	datad => \rs~q\,
	combout => \irig|Add5~32_combout\);

-- Location: LCCOMB_X15_Y21_N26
\irig|year_s[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s\(3) = (GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & (\irig|Add5~32_combout\)) # (!GLOBAL(\irig|year_s[8]~25clkctrl_outclk\) & ((\irig|year_s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add5~32_combout\,
	datac => \irig|year_s\(3),
	datad => \irig|year_s[8]~25clkctrl_outclk\,
	combout => \irig|year_s\(3));

-- Location: LCCOMB_X19_Y20_N10
\irig|Mod0|auto_generated|divider|divider|StageOut[109]~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[109]~154_combout\ = (\irig|year_s\(3) & \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|year_s\(3),
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[109]~154_combout\);

-- Location: LCCOMB_X17_Y20_N8
\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[110]~208_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[110]~153_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[110]~208_combout\ & 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[110]~153_combout\)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|StageOut[110]~208_combout\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[110]~153_combout\ & 
-- !\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[110]~208_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[110]~153_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\);

-- Location: LCCOMB_X17_Y20_N14
\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[113]~150_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[113]~191_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & ((((\irig|Mod0|auto_generated|divider|divider|StageOut[113]~150_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[113]~191_combout\)))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[113]~150_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[113]~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[113]~150_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[113]~191_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\);

-- Location: LCCOMB_X17_Y20_N20
\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~13\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[116]~188_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[116]~147_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~13\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[116]~188_combout\ & 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[116]~147_combout\)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~15\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|StageOut[116]~188_combout\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[116]~147_combout\ & 
-- !\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[116]~188_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[116]~147_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~13\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~15\);

-- Location: LCCOMB_X17_Y20_N22
\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~16_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~15\ & ((((\irig|Mod0|auto_generated|divider|divider|StageOut[117]~187_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[117]~146_combout\))))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~15\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[117]~187_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|StageOut[117]~146_combout\) # (GND))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~17\ = CARRY((\irig|Mod0|auto_generated|divider|divider|StageOut[117]~187_combout\) # ((\irig|Mod0|auto_generated|divider|divider|StageOut[117]~146_combout\) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[117]~187_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[117]~146_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~15\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~16_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~17\);

-- Location: LCCOMB_X17_Y20_N24
\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ = !\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~17\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\);

-- Location: LCCOMB_X20_Y20_N6
\irig|Mod0|auto_generated|divider|divider|StageOut[124]~193\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[124]~193_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[111]~210_combout\) # 
-- ((!\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[111]~210_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[124]~193_combout\);

-- Location: LCCOMB_X20_Y20_N28
\irig|Mod0|auto_generated|divider|divider|StageOut[123]~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[123]~159_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[123]~159_combout\);

-- Location: LCCOMB_X14_Y20_N14
\irig|Mod0|auto_generated|divider|divider|StageOut[96]~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[96]~155_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \irig|year_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \irig|year_s\(3),
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[96]~155_combout\);

-- Location: LCCOMB_X14_Y20_N0
\irig|Mod0|auto_generated|divider|divider|StageOut[96]~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[96]~156_combout\ = (!\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \irig|year_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \irig|year_s\(3),
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[96]~156_combout\);

-- Location: LCCOMB_X14_Y20_N8
\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\ = (\irig|Mod0|auto_generated|divider|divider|StageOut[96]~155_combout\) # (\irig|Mod0|auto_generated|divider|divider|StageOut[96]~156_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[96]~155_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|StageOut[96]~156_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\);

-- Location: LCCOMB_X20_Y20_N22
\irig|Mod0|auto_generated|divider|divider|StageOut[122]~209\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & 
-- (\irig|year_s\(3))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(3),
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\);

-- Location: LCCOMB_X20_Y20_N26
\irig|Mod0|auto_generated|divider|divider|StageOut[108]~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[108]~162_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \irig|year_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \irig|year_s\(2),
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[108]~162_combout\);

-- Location: LCCOMB_X20_Y20_N24
\irig|Mod0|auto_generated|divider|divider|StageOut[108]~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[108]~163_combout\ = (!\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \irig|year_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \irig|year_s\(2),
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[108]~163_combout\);

-- Location: LCCOMB_X20_Y20_N8
\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\ = (\irig|Mod0|auto_generated|divider|divider|StageOut[108]~162_combout\) # (\irig|Mod0|auto_generated|divider|divider|StageOut[108]~163_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[108]~162_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|StageOut[108]~163_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\);

-- Location: LCCOMB_X20_Y20_N18
\irig|Mod0|auto_generated|divider|divider|StageOut[121]~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\);

-- Location: LCCOMB_X21_Y20_N8
\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\ = (((\irig|Mod0|auto_generated|divider|divider|StageOut[121]~161_combout\) # (\irig|Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ = CARRY((\irig|Mod0|auto_generated|divider|divider|StageOut[121]~161_combout\) # (\irig|Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[121]~161_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\,
	datad => VCC,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\);

-- Location: LCCOMB_X21_Y20_N10
\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[122]~160_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[122]~160_combout\ & 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|StageOut[122]~160_combout\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\ & 
-- !\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[122]~160_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\);

-- Location: LCCOMB_X21_Y20_N14
\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\ = (\irig|Mod0|auto_generated|divider|divider|StageOut[124]~158_combout\ & (((!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\)))) # 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[124]~158_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[124]~193_combout\ & (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\)) # 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[124]~193_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\) # (GND)))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ = CARRY(((!\irig|Mod0|auto_generated|divider|divider|StageOut[124]~158_combout\ & !\irig|Mod0|auto_generated|divider|divider|StageOut[124]~193_combout\)) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[124]~158_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[124]~193_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\);

-- Location: LCCOMB_X16_Y20_N4
\irig|Mod0|auto_generated|divider|divider|StageOut[104]~182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[104]~182_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[91]~201_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[91]~201_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[104]~182_combout\);

-- Location: LCCOMB_X16_Y20_N2
\irig|Mod0|auto_generated|divider|divider|StageOut[117]~187\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[117]~187_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[104]~182_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[104]~182_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[117]~187_combout\);

-- Location: LCCOMB_X20_Y20_N4
\irig|Mod0|auto_generated|divider|divider|StageOut[130]~195\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[130]~195_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[117]~187_combout\) # 
-- ((!\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[117]~187_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[130]~195_combout\);

-- Location: LCCOMB_X17_Y20_N2
\irig|Mod0|auto_generated|divider|divider|StageOut[129]~166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[129]~166_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[129]~166_combout\);

-- Location: LCCOMB_X15_Y20_N22
\irig|Mod0|auto_generated|divider|divider|StageOut[89]~203\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[89]~203_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\irig|year_s\(9)))) 
-- # (!\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \irig|year_s\(9),
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[89]~203_combout\);

-- Location: LCCOMB_X14_Y20_N20
\irig|Mod0|auto_generated|divider|divider|StageOut[102]~184\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[102]~184_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[89]~203_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|StageOut[89]~203_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[102]~184_combout\);

-- Location: LCCOMB_X14_Y20_N10
\irig|Mod0|auto_generated|divider|divider|StageOut[115]~189\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[115]~189_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[102]~184_combout\) # 
-- ((!\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[102]~184_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[115]~189_combout\);

-- Location: LCCOMB_X22_Y20_N28
\irig|Mod0|auto_generated|divider|divider|StageOut[128]~197\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[128]~197_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[115]~189_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[115]~189_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[128]~197_combout\);

-- Location: LCCOMB_X22_Y20_N22
\irig|Mod0|auto_generated|divider|divider|StageOut[127]~198\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[127]~198_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[114]~190_combout\) # 
-- ((!\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[114]~190_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[127]~198_combout\);

-- Location: LCCOMB_X17_Y20_N28
\irig|Mod0|auto_generated|divider|divider|StageOut[126]~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[126]~169_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[126]~169_combout\);

-- Location: LCCOMB_X16_Y18_N24
\irig|Mod0|auto_generated|divider|divider|StageOut[99]~206\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[99]~206_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\irig|year_s\(6))) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \irig|year_s\(6),
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[99]~206_combout\);

-- Location: LCCOMB_X16_Y18_N26
\irig|Mod0|auto_generated|divider|divider|StageOut[112]~192\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[112]~192_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[99]~206_combout\) # 
-- ((!\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[99]~206_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[112]~192_combout\);

-- Location: LCCOMB_X17_Y18_N30
\irig|Mod0|auto_generated|divider|divider|StageOut[125]~200\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[125]~200_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[112]~192_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ & !\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[112]~192_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[125]~200_combout\);

-- Location: LCCOMB_X21_Y20_N16
\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[125]~170_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[125]~200_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & ((((\irig|Mod0|auto_generated|divider|divider|StageOut[125]~170_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[125]~200_combout\)))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[125]~170_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[125]~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[125]~170_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[125]~200_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\);

-- Location: LCCOMB_X21_Y20_N18
\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[126]~199_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[126]~169_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[126]~199_combout\ & 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[126]~169_combout\)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|StageOut[126]~199_combout\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[126]~169_combout\ & 
-- !\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[126]~199_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[126]~169_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\);

-- Location: LCCOMB_X21_Y20_N20
\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ & ((((\irig|Mod0|auto_generated|divider|divider|StageOut[127]~168_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[127]~198_combout\))))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[127]~168_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|StageOut[127]~198_combout\) # (GND))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~13\ = CARRY((\irig|Mod0|auto_generated|divider|divider|StageOut[127]~168_combout\) # ((\irig|Mod0|auto_generated|divider|divider|StageOut[127]~198_combout\) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[127]~168_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[127]~198_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~13\);

-- Location: LCCOMB_X21_Y20_N22
\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~13\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[128]~197_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~13\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\ & 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[128]~197_combout\)))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~15\ = CARRY((!\irig|Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[128]~197_combout\ & 
-- !\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[128]~197_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~13\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~15\);

-- Location: LCCOMB_X21_Y20_N24
\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~16_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~15\ & ((((\irig|Mod0|auto_generated|divider|divider|StageOut[129]~196_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[129]~166_combout\))))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~15\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[129]~196_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|StageOut[129]~166_combout\) # (GND))))
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~17\ = CARRY((\irig|Mod0|auto_generated|divider|divider|StageOut[129]~196_combout\) # ((\irig|Mod0|auto_generated|divider|divider|StageOut[129]~166_combout\) # 
-- (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[129]~196_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[129]~166_combout\,
	datad => VCC,
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~15\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~16_combout\,
	cout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~17\);

-- Location: LCCOMB_X21_Y20_N28
\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ = \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~19\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\);

-- Location: LCCOMB_X21_Y20_N4
\irig|Mod0|auto_generated|divider|divider|StageOut[137]~171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[137]~171_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[124]~158_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|StageOut[124]~193_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & (((\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[124]~158_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[124]~193_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[137]~171_combout\);

-- Location: LCCOMB_X21_Y20_N0
\irig|Mod0|auto_generated|divider|divider|StageOut[138]~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[138]~173_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[125]~170_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|StageOut[125]~200_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & (((\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[125]~170_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[125]~200_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[138]~173_combout\);

-- Location: LCCOMB_X21_Y20_N30
\irig|LessThan41~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan41~4_combout\ = ((!\irig|Mod0|auto_generated|divider|divider|StageOut[136]~172_combout\ & !\irig|Mod0|auto_generated|divider|divider|StageOut[137]~171_combout\)) # (!\irig|Mod0|auto_generated|divider|divider|StageOut[138]~173_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[136]~172_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[137]~171_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|StageOut[138]~173_combout\,
	combout => \irig|LessThan41~4_combout\);

-- Location: LCCOMB_X22_Y20_N24
\irig|Mod0|auto_generated|divider|divider|StageOut[141]~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[141]~174_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|StageOut[128]~197_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & (((\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[128]~197_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[141]~174_combout\);

-- Location: LCCOMB_X22_Y20_N4
\irig|Mod0|auto_generated|divider|divider|StageOut[139]~176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[139]~176_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[126]~199_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|StageOut[126]~169_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & (((\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[126]~199_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[126]~169_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[139]~176_combout\);

-- Location: LCCOMB_X22_Y20_N2
\irig|Mod0|auto_generated|divider|divider|StageOut[140]~175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[140]~175_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[127]~168_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|StageOut[127]~198_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & (((\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[127]~168_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[127]~198_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[140]~175_combout\);

-- Location: LCCOMB_X22_Y20_N26
\irig|LessThan41~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan41~5_combout\ = (!\irig|Mod0|auto_generated|divider|divider|StageOut[141]~174_combout\ & (!\irig|Mod0|auto_generated|divider|divider|StageOut[139]~176_combout\ & !\irig|Mod0|auto_generated|divider|divider|StageOut[140]~175_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[141]~174_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[139]~176_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|StageOut[140]~175_combout\,
	combout => \irig|LessThan41~5_combout\);

-- Location: LCCOMB_X16_Y21_N26
\irig|Mod0|auto_generated|divider|divider|StageOut[84]~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[84]~143_combout\ = (\irig|year_s\(4) & \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(4),
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[84]~143_combout\);

-- Location: LCCOMB_X16_Y21_N12
\irig|Mod0|auto_generated|divider|divider|StageOut[84]~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[84]~144_combout\ = (\irig|year_s\(4) & !\irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(4),
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[84]~144_combout\);

-- Location: LCCOMB_X16_Y21_N16
\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ = (\irig|Mod0|auto_generated|divider|divider|StageOut[84]~143_combout\) # (\irig|Mod0|auto_generated|divider|divider|StageOut[84]~144_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[84]~143_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|StageOut[84]~144_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\);

-- Location: LCCOMB_X16_Y21_N4
\irig|Mod0|auto_generated|divider|divider|StageOut[110]~208\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[110]~208_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & 
-- ((\irig|year_s\(4)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & (\irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\,
	datac => \irig|year_s\(4),
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[110]~208_combout\);

-- Location: LCCOMB_X17_Y21_N8
\irig|Mod0|auto_generated|divider|divider|StageOut[123]~194\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[123]~194_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[110]~208_combout\) # 
-- ((!\irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[110]~208_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[123]~194_combout\);

-- Location: LCCOMB_X21_Y20_N6
\irig|Mod0|auto_generated|divider|divider|StageOut[136]~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[136]~172_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & (((\irig|Mod0|auto_generated|divider|divider|StageOut[123]~159_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[123]~194_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[123]~159_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[123]~194_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[136]~172_combout\);

-- Location: LCCOMB_X22_Y20_N6
\irig|Add38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add38~0_combout\ = \irig|Mod0|auto_generated|divider|divider|StageOut[136]~172_combout\ $ (VCC)
-- \irig|Add38~1\ = CARRY(\irig|Mod0|auto_generated|divider|divider|StageOut[136]~172_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[136]~172_combout\,
	datad => VCC,
	combout => \irig|Add38~0_combout\,
	cout => \irig|Add38~1\);

-- Location: LCCOMB_X22_Y20_N10
\irig|Add38~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add38~4_combout\ = (\irig|Mod0|auto_generated|divider|divider|StageOut[138]~173_combout\ & (\irig|Add38~3\ $ (GND))) # (!\irig|Mod0|auto_generated|divider|divider|StageOut[138]~173_combout\ & (!\irig|Add38~3\ & VCC))
-- \irig|Add38~5\ = CARRY((\irig|Mod0|auto_generated|divider|divider|StageOut[138]~173_combout\ & !\irig|Add38~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[138]~173_combout\,
	datad => VCC,
	cin => \irig|Add38~3\,
	combout => \irig|Add38~4_combout\,
	cout => \irig|Add38~5\);

-- Location: LCCOMB_X23_Y20_N4
\irig|aux~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~2_combout\ = (\irig|LessThan41~4_combout\ & ((\irig|LessThan41~5_combout\ & (\irig|Mod0|auto_generated|divider|divider|StageOut[138]~173_combout\)) # (!\irig|LessThan41~5_combout\ & ((\irig|Add38~4_combout\))))) # (!\irig|LessThan41~4_combout\ & 
-- (((\irig|Add38~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[138]~173_combout\,
	datab => \irig|LessThan41~4_combout\,
	datac => \irig|LessThan41~5_combout\,
	datad => \irig|Add38~4_combout\,
	combout => \irig|aux~2_combout\);

-- Location: LCCOMB_X22_Y20_N14
\irig|Add38~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add38~8_combout\ = (\irig|Mod0|auto_generated|divider|divider|StageOut[140]~175_combout\ & ((GND) # (!\irig|Add38~7\))) # (!\irig|Mod0|auto_generated|divider|divider|StageOut[140]~175_combout\ & (\irig|Add38~7\ $ (GND)))
-- \irig|Add38~9\ = CARRY((\irig|Mod0|auto_generated|divider|divider|StageOut[140]~175_combout\) # (!\irig|Add38~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[140]~175_combout\,
	datad => VCC,
	cin => \irig|Add38~7\,
	combout => \irig|Add38~8_combout\,
	cout => \irig|Add38~9\);

-- Location: LCCOMB_X22_Y20_N30
\irig|LessThan41~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan41~6_combout\ = (\irig|LessThan41~5_combout\ & (((!\irig|Mod0|auto_generated|divider|divider|StageOut[136]~172_combout\ & !\irig|Mod0|auto_generated|divider|divider|StageOut[137]~171_combout\)) # 
-- (!\irig|Mod0|auto_generated|divider|divider|StageOut[138]~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan41~5_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[136]~172_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[137]~171_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|StageOut[138]~173_combout\,
	combout => \irig|LessThan41~6_combout\);

-- Location: LCCOMB_X22_Y20_N16
\irig|Add38~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add38~10_combout\ = \irig|Add38~9\ $ (!\irig|Mod0|auto_generated|divider|divider|StageOut[141]~174_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \irig|Mod0|auto_generated|divider|divider|StageOut[141]~174_combout\,
	cin => \irig|Add38~9\,
	combout => \irig|Add38~10_combout\);

-- Location: LCCOMB_X22_Y20_N0
\irig|LessThan42~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan42~1_combout\ = (\irig|LessThan41~6_combout\) # ((!\irig|Add38~6_combout\ & (!\irig|Add38~8_combout\ & !\irig|Add38~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add38~6_combout\,
	datab => \irig|Add38~8_combout\,
	datac => \irig|LessThan41~6_combout\,
	datad => \irig|Add38~10_combout\,
	combout => \irig|LessThan42~1_combout\);

-- Location: LCCOMB_X23_Y20_N8
\irig|aux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~0_combout\ = (\irig|LessThan41~5_combout\ & ((\irig|LessThan41~4_combout\ & (\irig|Mod0|auto_generated|divider|divider|StageOut[136]~172_combout\)) # (!\irig|LessThan41~4_combout\ & ((\irig|Add38~0_combout\))))) # (!\irig|LessThan41~5_combout\ & 
-- (((\irig|Add38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[136]~172_combout\,
	datab => \irig|Add38~0_combout\,
	datac => \irig|LessThan41~5_combout\,
	datad => \irig|LessThan41~4_combout\,
	combout => \irig|aux~0_combout\);

-- Location: LCCOMB_X20_Y20_N0
\irig|Mod0|auto_generated|divider|divider|StageOut[135]~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[135]~177_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[122]~160_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & (((\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[122]~160_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[135]~177_combout\);

-- Location: LCCOMB_X20_Y20_N12
\irig|LessThan42~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan42~2_combout\ = (!\irig|aux~0_combout\ & !\irig|Mod0|auto_generated|divider|divider|StageOut[135]~177_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|aux~0_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|StageOut[135]~177_combout\,
	combout => \irig|LessThan42~2_combout\);

-- Location: LCCOMB_X23_Y20_N0
\irig|LessThan42~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan42~3_combout\ = (!\irig|aux~2_combout\ & (\irig|LessThan42~1_combout\ & ((\irig|LessThan42~2_combout\) # (!\irig|aux~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~1_combout\,
	datab => \irig|aux~2_combout\,
	datac => \irig|LessThan42~1_combout\,
	datad => \irig|LessThan42~2_combout\,
	combout => \irig|LessThan42~3_combout\);

-- Location: LCCOMB_X28_Y18_N26
\irig|year_c[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_c[6]~2_combout\ = !\irig|LessThan42~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \irig|LessThan42~3_combout\,
	combout => \irig|year_c[6]~2_combout\);

-- Location: FF_X28_Y18_N27
\irig|year_c[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|year_c[6]~2_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|year_c\(6));

-- Location: LCCOMB_X20_Y20_N16
\irig|Mod0|auto_generated|divider|divider|StageOut[121]~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[121]~161_combout\ = (\irig|year_s\(2) & \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(2),
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[121]~161_combout\);

-- Location: LCCOMB_X20_Y20_N2
\irig|Mod0|auto_generated|divider|divider|StageOut[134]~178\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod0|auto_generated|divider|divider|StageOut[134]~178_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|StageOut[121]~161_combout\)))) # (!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & (((\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[121]~161_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \irig|Mod0|auto_generated|divider|divider|StageOut[134]~178_combout\);

-- Location: LCCOMB_X23_Y20_N2
\irig|LessThan42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan42~0_combout\ = (!\irig|aux~2_combout\ & (((!\irig|aux~0_combout\ & !\irig|Mod0|auto_generated|divider|divider|StageOut[135]~177_combout\)) # (!\irig|aux~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~1_combout\,
	datab => \irig|aux~0_combout\,
	datac => \irig|aux~2_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|StageOut[135]~177_combout\,
	combout => \irig|LessThan42~0_combout\);

-- Location: LCCOMB_X23_Y21_N20
\irig|aux~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~3_combout\ = (\irig|LessThan42~1_combout\ & ((\irig|LessThan42~0_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[135]~177_combout\))) # (!\irig|LessThan42~0_combout\ & (\irig|Add39~0_combout\)))) # (!\irig|LessThan42~1_combout\ & 
-- (\irig|Add39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add39~0_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[135]~177_combout\,
	datac => \irig|LessThan42~1_combout\,
	datad => \irig|LessThan42~0_combout\,
	combout => \irig|aux~3_combout\);

-- Location: LCCOMB_X23_Y20_N18
\irig|Add39~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add39~4_combout\ = (\irig|aux~1_combout\ & (\irig|Add39~3\ $ (GND))) # (!\irig|aux~1_combout\ & (!\irig|Add39~3\ & VCC))
-- \irig|Add39~5\ = CARRY((\irig|aux~1_combout\ & !\irig|Add39~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~1_combout\,
	datad => VCC,
	cin => \irig|Add39~3\,
	combout => \irig|Add39~4_combout\,
	cout => \irig|Add39~5\);

-- Location: LCCOMB_X23_Y20_N10
\irig|aux~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~5_combout\ = (\irig|LessThan42~0_combout\ & ((\irig|LessThan42~1_combout\ & (\irig|aux~1_combout\)) # (!\irig|LessThan42~1_combout\ & ((\irig|Add39~4_combout\))))) # (!\irig|LessThan42~0_combout\ & (((\irig|Add39~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~1_combout\,
	datab => \irig|LessThan42~0_combout\,
	datac => \irig|LessThan42~1_combout\,
	datad => \irig|Add39~4_combout\,
	combout => \irig|aux~5_combout\);

-- Location: LCCOMB_X22_Y21_N28
\irig|LessThan43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan43~0_combout\ = (!\irig|aux~5_combout\ & (((!\irig|Mod0|auto_generated|divider|divider|StageOut[134]~178_combout\ & !\irig|aux~3_combout\)) # (!\irig|aux~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~4_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[134]~178_combout\,
	datac => \irig|aux~3_combout\,
	datad => \irig|aux~5_combout\,
	combout => \irig|LessThan43~0_combout\);

-- Location: LCCOMB_X23_Y20_N22
\irig|Add39~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add39~8_combout\ = (\irig|Add39~7\ & ((((\irig|Add38~6_combout\ & !\irig|LessThan41~6_combout\))))) # (!\irig|Add39~7\ & (((\irig|Add38~6_combout\ & !\irig|LessThan41~6_combout\)) # (GND)))
-- \irig|Add39~9\ = CARRY(((\irig|Add38~6_combout\ & !\irig|LessThan41~6_combout\)) # (!\irig|Add39~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add38~6_combout\,
	datab => \irig|LessThan41~6_combout\,
	datad => VCC,
	cin => \irig|Add39~7\,
	combout => \irig|Add39~8_combout\,
	cout => \irig|Add39~9\);

-- Location: LCCOMB_X23_Y20_N24
\irig|Add39~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add39~10_combout\ = (\irig|Add38~8_combout\ & ((\irig|LessThan41~6_combout\ & (!\irig|Add39~9\)) # (!\irig|LessThan41~6_combout\ & (\irig|Add39~9\ & VCC)))) # (!\irig|Add38~8_combout\ & (((!\irig|Add39~9\))))
-- \irig|Add39~11\ = CARRY((!\irig|Add39~9\ & ((\irig|LessThan41~6_combout\) # (!\irig|Add38~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add38~8_combout\,
	datab => \irig|LessThan41~6_combout\,
	datad => VCC,
	cin => \irig|Add39~9\,
	combout => \irig|Add39~10_combout\,
	cout => \irig|Add39~11\);

-- Location: LCCOMB_X23_Y20_N26
\irig|Add39~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add39~12_combout\ = \irig|Add39~11\ $ (((\irig|Add38~10_combout\ & !\irig|LessThan41~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add38~10_combout\,
	datad => \irig|LessThan41~6_combout\,
	cin => \irig|Add39~11\,
	combout => \irig|Add39~12_combout\);

-- Location: LCCOMB_X23_Y20_N28
\irig|LessThan43~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan43~1_combout\ = (\irig|LessThan42~1_combout\ & ((\irig|LessThan42~0_combout\) # ((!\irig|Add39~8_combout\ & !\irig|Add39~10_combout\)))) # (!\irig|LessThan42~1_combout\ & (((!\irig|Add39~8_combout\ & !\irig|Add39~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan42~1_combout\,
	datab => \irig|LessThan42~0_combout\,
	datac => \irig|Add39~8_combout\,
	datad => \irig|Add39~10_combout\,
	combout => \irig|LessThan43~1_combout\);

-- Location: LCCOMB_X23_Y20_N6
\irig|LessThan43~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan43~2_combout\ = (\irig|LessThan43~1_combout\ & ((\irig|LessThan42~3_combout\) # ((!\irig|Add39~6_combout\ & !\irig|Add39~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add39~6_combout\,
	datab => \irig|LessThan42~3_combout\,
	datac => \irig|Add39~12_combout\,
	datad => \irig|LessThan43~1_combout\,
	combout => \irig|LessThan43~2_combout\);

-- Location: LCCOMB_X22_Y21_N26
\irig|LessThan43~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan43~3_combout\ = (\irig|LessThan43~0_combout\ & \irig|LessThan43~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan43~0_combout\,
	datad => \irig|LessThan43~2_combout\,
	combout => \irig|LessThan43~3_combout\);

-- Location: LCCOMB_X28_Y18_N8
\irig|year_c[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_c[5]~1_combout\ = !\irig|LessThan43~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \irig|LessThan43~3_combout\,
	combout => \irig|year_c[5]~1_combout\);

-- Location: FF_X28_Y18_N9
\irig|year_c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|year_c[5]~1_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|year_c\(5));

-- Location: LCCOMB_X22_Y16_N30
\irig|day_s[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[0]~24_combout\ = (\pps~input_o\ & (!\irig|pre_pps~q\ & ((\irig|year_s[8]~1_combout\) # (!\irig|year_s[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pps~input_o\,
	datab => \irig|year_s[8]~1_combout\,
	datac => \irig|year_s[8]~0_combout\,
	datad => \irig|pre_pps~q\,
	combout => \irig|day_s[0]~24_combout\);

-- Location: IOIBUF_X21_Y29_N15
\day[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_day(2),
	o => \day[2]~input_o\);

-- Location: LCCOMB_X22_Y16_N12
\irig|day_s[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[2]~18_combout\ = (\day[2]~input_o\ & \up~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \day[2]~input_o\,
	datad => \up~q\,
	combout => \irig|day_s[2]~18_combout\);

-- Location: IOIBUF_X41_Y17_N8
\day[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_day(1),
	o => \day[1]~input_o\);

-- Location: LCCOMB_X22_Y16_N26
\irig|day_s[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[1]~20_combout\ = (\day[1]~input_o\ & \up~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \day[1]~input_o\,
	datad => \up~q\,
	combout => \irig|day_s[1]~20_combout\);

-- Location: LCCOMB_X22_Y16_N28
\irig|day_s[1]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[1]~21_combout\ = (!\rs~q\ & ((\irig|day_s[1]~20_combout\) # ((\irig|Add4~2_combout\ & \irig|day_s[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~q\,
	datab => \irig|Add4~2_combout\,
	datac => \irig|day_s[1]~20_combout\,
	datad => \irig|day_s[4]~6_combout\,
	combout => \irig|day_s[1]~21_combout\);

-- Location: LCCOMB_X22_Y16_N24
\irig|day_s[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s\(1) = (\irig|day_s[0]~24_combout\ & ((\irig|day_s[1]~21_combout\))) # (!\irig|day_s[0]~24_combout\ & (\irig|day_s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|day_s\(1),
	datac => \irig|day_s[0]~24_combout\,
	datad => \irig|day_s[1]~21_combout\,
	combout => \irig|day_s\(1));

-- Location: IOIBUF_X41_Y18_N1
\day[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_day(0),
	o => \day[0]~input_o\);

-- Location: LCCOMB_X21_Y16_N4
\irig|day_s[0]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[0]~22_combout\ = (\rs~q\) # ((\day[0]~input_o\ & \up~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~q\,
	datab => \day[0]~input_o\,
	datac => \up~q\,
	combout => \irig|day_s[0]~22_combout\);

-- Location: LCCOMB_X21_Y16_N20
\irig|day_s[0]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[0]~23_combout\ = (\irig|day_s[0]~22_combout\) # ((!\up~q\ & ((\irig|Add4~0_combout\) # (\irig|day_s[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add4~0_combout\,
	datab => \up~q\,
	datac => \irig|day_s[0]~22_combout\,
	datad => \irig|day_s[0]~4_combout\,
	combout => \irig|day_s[0]~23_combout\);

-- Location: LCCOMB_X21_Y16_N12
\irig|day_s[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s\(0) = (\irig|day_s[0]~24_combout\ & ((\irig|day_s[0]~23_combout\))) # (!\irig|day_s[0]~24_combout\ & (\irig|day_s\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(0),
	datac => \irig|day_s[0]~24_combout\,
	datad => \irig|day_s[0]~23_combout\,
	combout => \irig|day_s\(0));

-- Location: LCCOMB_X20_Y16_N4
\irig|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add4~0_combout\ = \irig|day_s\(0) $ (VCC)
-- \irig|Add4~1\ = CARRY(\irig|day_s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|day_s\(0),
	datad => VCC,
	combout => \irig|Add4~0_combout\,
	cout => \irig|Add4~1\);

-- Location: LCCOMB_X20_Y16_N6
\irig|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add4~2_combout\ = (\irig|day_s\(1) & (!\irig|Add4~1\)) # (!\irig|day_s\(1) & ((\irig|Add4~1\) # (GND)))
-- \irig|Add4~3\ = CARRY((!\irig|Add4~1\) # (!\irig|day_s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|day_s\(1),
	datad => VCC,
	cin => \irig|Add4~1\,
	combout => \irig|Add4~2_combout\,
	cout => \irig|Add4~3\);

-- Location: LCCOMB_X15_Y19_N16
\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\ = (\irig|year_s\(8) & (\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\ & VCC)) # (!\irig|year_s\(8) & 
-- (!\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\ = CARRY((!\irig|year_s\(8) & !\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(8),
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\);

-- Location: LCCOMB_X15_Y19_N18
\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\ = (\irig|year_s\(9) & ((GND) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\))) # (!\irig|year_s\(9) & 
-- (\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\ $ (GND)))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\ = CARRY((\irig|year_s\(9)) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(9),
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\);

-- Location: LCCOMB_X15_Y19_N22
\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~8_combout\ = (\irig|year_s\(11) & (\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~7\ $ (GND))) # (!\irig|year_s\(11) & 
-- (!\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~7\ & VCC))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~9\ = CARRY((\irig|year_s\(11) & !\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(11),
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~7\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~8_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~9\);

-- Location: LCCOMB_X15_Y19_N24
\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ = !\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~9\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\);

-- Location: LCCOMB_X15_Y19_N6
\irig|Mod1|auto_generated|divider|divider|StageOut[104]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[104]~83_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~8_combout\ & !\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~8_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[104]~83_combout\);

-- Location: LCCOMB_X16_Y19_N24
\irig|Mod1|auto_generated|divider|divider|StageOut[103]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[103]~84_combout\ = (\irig|year_s\(10) & \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(10),
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[103]~84_combout\);

-- Location: LCCOMB_X15_Y19_N30
\irig|Mod1|auto_generated|divider|divider|StageOut[102]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[102]~87_combout\ = (!\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[102]~87_combout\);

-- Location: LCCOMB_X15_Y19_N28
\irig|Mod1|auto_generated|divider|divider|StageOut[101]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[101]~88_combout\ = (\irig|year_s\(8) & \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|year_s\(8),
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[101]~88_combout\);

-- Location: LCCOMB_X15_Y19_N4
\irig|Mod1|auto_generated|divider|divider|StageOut[100]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[100]~90_combout\ = (\irig|year_s\(7) & \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(7),
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[100]~90_combout\);

-- Location: LCCOMB_X16_Y18_N10
\irig|Mod1|auto_generated|divider|divider|StageOut[99]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[99]~93_combout\ = (!\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \irig|year_s\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \irig|year_s\(6),
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[99]~93_combout\);

-- Location: LCCOMB_X16_Y19_N4
\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\ = (((\irig|Mod1|auto_generated|divider|divider|StageOut[99]~92_combout\) # (\irig|Mod1|auto_generated|divider|divider|StageOut[99]~93_combout\)))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ = CARRY((\irig|Mod1|auto_generated|divider|divider|StageOut[99]~92_combout\) # (\irig|Mod1|auto_generated|divider|divider|StageOut[99]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[99]~92_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[99]~93_combout\,
	datad => VCC,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\);

-- Location: LCCOMB_X16_Y19_N6
\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ & (((\irig|Mod1|auto_generated|divider|divider|StageOut[100]~91_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[100]~90_combout\)))) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[100]~91_combout\ & 
-- (!\irig|Mod1|auto_generated|divider|divider|StageOut[100]~90_combout\)))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ = CARRY((!\irig|Mod1|auto_generated|divider|divider|StageOut[100]~91_combout\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[100]~90_combout\ & 
-- !\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[100]~91_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[100]~90_combout\,
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\);

-- Location: LCCOMB_X16_Y19_N8
\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ & ((((\irig|Mod1|auto_generated|divider|divider|StageOut[101]~89_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[101]~88_combout\))))) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ & ((\irig|Mod1|auto_generated|divider|divider|StageOut[101]~89_combout\) # 
-- ((\irig|Mod1|auto_generated|divider|divider|StageOut[101]~88_combout\) # (GND))))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\ = CARRY((\irig|Mod1|auto_generated|divider|divider|StageOut[101]~89_combout\) # ((\irig|Mod1|auto_generated|divider|divider|StageOut[101]~88_combout\) # 
-- (!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[101]~89_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[101]~88_combout\,
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\);

-- Location: LCCOMB_X16_Y19_N12
\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ & (((\irig|Mod1|auto_generated|divider|divider|StageOut[103]~85_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[103]~84_combout\)))) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ & ((((\irig|Mod1|auto_generated|divider|divider|StageOut[103]~85_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[103]~84_combout\)))))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~9\ = CARRY((!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ & ((\irig|Mod1|auto_generated|divider|divider|StageOut[103]~85_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[103]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[103]~85_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[103]~84_combout\,
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~7\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~9\);

-- Location: LCCOMB_X16_Y19_N14
\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~9\ & (((\irig|Mod1|auto_generated|divider|divider|StageOut[104]~82_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[104]~83_combout\)))) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~9\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[104]~82_combout\ & 
-- (!\irig|Mod1|auto_generated|divider|divider|StageOut[104]~83_combout\)))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~11\ = CARRY((!\irig|Mod1|auto_generated|divider|divider|StageOut[104]~82_combout\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[104]~83_combout\ & 
-- !\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[104]~82_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[104]~83_combout\,
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~9\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~11\);

-- Location: LCCOMB_X16_Y19_N16
\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ = \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~11\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\);

-- Location: LCCOMB_X17_Y19_N0
\irig|Mod1|auto_generated|divider|divider|StageOut[117]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[117]~94_combout\ = (!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[117]~94_combout\);

-- Location: LCCOMB_X16_Y19_N18
\irig|Mod1|auto_generated|divider|divider|StageOut[116]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[116]~95_combout\ = (!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[116]~95_combout\);

-- Location: LCCOMB_X16_Y19_N30
\irig|Mod1|auto_generated|divider|divider|StageOut[115]~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[115]~135_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & (\irig|year_s\(9))) 
-- # (!\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(9),
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[115]~135_combout\);

-- Location: LCCOMB_X16_Y19_N28
\irig|Mod1|auto_generated|divider|divider|StageOut[114]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[114]~97_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\ & !\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[114]~97_combout\);

-- Location: LCCOMB_X16_Y19_N22
\irig|Mod1|auto_generated|divider|divider|StageOut[113]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[113]~98_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\ & !\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[113]~98_combout\);

-- Location: LCCOMB_X17_Y18_N24
\irig|Mod1|auto_generated|divider|divider|StageOut[112]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[112]~99_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & \irig|year_s\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => \irig|year_s\(6),
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[112]~99_combout\);

-- Location: LCCOMB_X16_Y19_N20
\irig|Mod1|auto_generated|divider|divider|StageOut[111]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[111]~101_combout\ = (\irig|year_s\(5) & \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|year_s\(5),
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[111]~101_combout\);

-- Location: LCCOMB_X17_Y19_N4
\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\ = (((\irig|Mod1|auto_generated|divider|divider|StageOut[111]~104_combout\) # (\irig|Mod1|auto_generated|divider|divider|StageOut[111]~101_combout\)))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\ = CARRY((\irig|Mod1|auto_generated|divider|divider|StageOut[111]~104_combout\) # (\irig|Mod1|auto_generated|divider|divider|StageOut[111]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[111]~104_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[111]~101_combout\,
	datad => VCC,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\);

-- Location: LCCOMB_X17_Y19_N8
\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\ & ((((\irig|Mod1|auto_generated|divider|divider|StageOut[113]~137_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[113]~98_combout\))))) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\ & ((\irig|Mod1|auto_generated|divider|divider|StageOut[113]~137_combout\) # 
-- ((\irig|Mod1|auto_generated|divider|divider|StageOut[113]~98_combout\) # (GND))))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\ = CARRY((\irig|Mod1|auto_generated|divider|divider|StageOut[113]~137_combout\) # ((\irig|Mod1|auto_generated|divider|divider|StageOut[113]~98_combout\) # 
-- (!\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[113]~137_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[113]~98_combout\,
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\);

-- Location: LCCOMB_X17_Y19_N10
\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\ = (\irig|Mod1|auto_generated|divider|divider|StageOut[114]~136_combout\ & (((!\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\)))) # 
-- (!\irig|Mod1|auto_generated|divider|divider|StageOut[114]~136_combout\ & ((\irig|Mod1|auto_generated|divider|divider|StageOut[114]~97_combout\ & (!\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\)) # 
-- (!\irig|Mod1|auto_generated|divider|divider|StageOut[114]~97_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\) # (GND)))))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~7\ = CARRY(((!\irig|Mod1|auto_generated|divider|divider|StageOut[114]~136_combout\ & !\irig|Mod1|auto_generated|divider|divider|StageOut[114]~97_combout\)) # 
-- (!\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[114]~136_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[114]~97_combout\,
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~7\);

-- Location: LCCOMB_X17_Y19_N14
\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~9\ & (((\irig|Mod1|auto_generated|divider|divider|StageOut[116]~134_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[116]~95_combout\)))) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~9\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[116]~134_combout\ & 
-- (!\irig|Mod1|auto_generated|divider|divider|StageOut[116]~95_combout\)))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~11\ = CARRY((!\irig|Mod1|auto_generated|divider|divider|StageOut[116]~134_combout\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[116]~95_combout\ & 
-- !\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[116]~134_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[116]~95_combout\,
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~9\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~11\);

-- Location: LCCOMB_X17_Y19_N16
\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~12_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~11\ & ((((\irig|Mod1|auto_generated|divider|divider|StageOut[117]~133_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[117]~94_combout\))))) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~11\ & ((\irig|Mod1|auto_generated|divider|divider|StageOut[117]~133_combout\) # 
-- ((\irig|Mod1|auto_generated|divider|divider|StageOut[117]~94_combout\) # (GND))))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~13\ = CARRY((\irig|Mod1|auto_generated|divider|divider|StageOut[117]~133_combout\) # ((\irig|Mod1|auto_generated|divider|divider|StageOut[117]~94_combout\) # 
-- (!\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[117]~133_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[117]~94_combout\,
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~11\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~12_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~13\);

-- Location: LCCOMB_X17_Y19_N18
\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ = !\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~13\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\);

-- Location: LCCOMB_X19_Y19_N2
\irig|Mod1|auto_generated|divider|divider|StageOut[121]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[121]~122_combout\ = (\irig|year_s\(2) & \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|year_s\(2),
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[121]~122_combout\);

-- Location: LCCOMB_X19_Y19_N28
\irig|Mod1|auto_generated|divider|divider|StageOut[108]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[108]~123_combout\ = (\irig|year_s\(2) & \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|year_s\(2),
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[108]~123_combout\);

-- Location: LCCOMB_X19_Y19_N10
\irig|Mod1|auto_generated|divider|divider|StageOut[108]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[108]~124_combout\ = (\irig|year_s\(2) & !\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|year_s\(2),
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[108]~124_combout\);

-- Location: LCCOMB_X19_Y19_N4
\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\ = (\irig|Mod1|auto_generated|divider|divider|StageOut[108]~123_combout\) # (\irig|Mod1|auto_generated|divider|divider|StageOut[108]~124_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[108]~123_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|StageOut[108]~124_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\);

-- Location: LCCOMB_X19_Y19_N12
\irig|Mod1|auto_generated|divider|divider|StageOut[121]~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[121]~125_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\ & !\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[121]~125_combout\);

-- Location: LCCOMB_X19_Y19_N6
\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~20_combout\ = (\irig|Mod1|auto_generated|divider|divider|StageOut[121]~122_combout\) # (\irig|Mod1|auto_generated|divider|divider|StageOut[121]~125_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[121]~122_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|StageOut[121]~125_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~20_combout\);

-- Location: LCCOMB_X21_Y19_N8
\irig|Mod1|auto_generated|divider|divider|StageOut[110]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[110]~110_combout\ = (\irig|year_s\(4) & \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|year_s\(4),
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[110]~110_combout\);

-- Location: LCCOMB_X21_Y19_N30
\irig|Mod1|auto_generated|divider|divider|StageOut[97]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[97]~111_combout\ = (\irig|year_s\(4) & \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|year_s\(4),
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[97]~111_combout\);

-- Location: LCCOMB_X21_Y19_N12
\irig|Mod1|auto_generated|divider|divider|StageOut[97]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[97]~112_combout\ = (\irig|year_s\(4) & !\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|year_s\(4),
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[97]~112_combout\);

-- Location: LCCOMB_X21_Y19_N0
\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~16_combout\ = (\irig|Mod1|auto_generated|divider|divider|StageOut[97]~111_combout\) # (\irig|Mod1|auto_generated|divider|divider|StageOut[97]~112_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|StageOut[97]~111_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|StageOut[97]~112_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~16_combout\);

-- Location: LCCOMB_X21_Y19_N18
\irig|Mod1|auto_generated|divider|divider|StageOut[110]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[110]~113_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~16_combout\ & !\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~16_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[110]~113_combout\);

-- Location: LCCOMB_X21_Y19_N22
\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~16_combout\ = (\irig|Mod1|auto_generated|divider|divider|StageOut[110]~110_combout\) # (\irig|Mod1|auto_generated|divider|divider|StageOut[110]~113_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|StageOut[110]~110_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|StageOut[110]~113_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~16_combout\);

-- Location: LCCOMB_X21_Y19_N4
\irig|Mod1|auto_generated|divider|divider|StageOut[123]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[123]~114_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~16_combout\ & !\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~16_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[123]~114_combout\);

-- Location: LCCOMB_X22_Y19_N14
\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~0_combout\ = (((\irig|Mod1|auto_generated|divider|divider|StageOut[123]~140_combout\) # (\irig|Mod1|auto_generated|divider|divider|StageOut[123]~114_combout\)))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~1\ = CARRY((\irig|Mod1|auto_generated|divider|divider|StageOut[123]~140_combout\) # (\irig|Mod1|auto_generated|divider|divider|StageOut[123]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[123]~140_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[123]~114_combout\,
	datad => VCC,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~0_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~1\);

-- Location: LCCOMB_X20_Y21_N4
\irig|Mod1|auto_generated|divider|divider|StageOut[96]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[96]~119_combout\ = (!\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \irig|year_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \irig|year_s\(3),
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[96]~119_combout\);

-- Location: LCCOMB_X20_Y21_N2
\irig|Mod1|auto_generated|divider|divider|StageOut[96]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[96]~118_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \irig|year_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \irig|year_s\(3),
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[96]~118_combout\);

-- Location: LCCOMB_X20_Y21_N8
\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\ = (\irig|Mod1|auto_generated|divider|divider|StageOut[96]~119_combout\) # (\irig|Mod1|auto_generated|divider|divider|StageOut[96]~118_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|StageOut[96]~119_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|StageOut[96]~118_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\);

-- Location: LCCOMB_X20_Y21_N26
\irig|Mod1|auto_generated|divider|divider|StageOut[109]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[109]~120_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\ & !\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[109]~120_combout\);

-- Location: LCCOMB_X20_Y21_N28
\irig|Mod1|auto_generated|divider|divider|StageOut[109]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[109]~117_combout\ = (\irig|year_s\(3) & \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s\(3),
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[109]~117_combout\);

-- Location: LCCOMB_X20_Y21_N30
\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\ = (\irig|Mod1|auto_generated|divider|divider|StageOut[109]~120_combout\) # (\irig|Mod1|auto_generated|divider|divider|StageOut[109]~117_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|StageOut[109]~120_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|StageOut[109]~117_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\);

-- Location: LCCOMB_X21_Y19_N14
\irig|Mod1|auto_generated|divider|divider|StageOut[122]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\ & !\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\);

-- Location: LCCOMB_X21_Y19_N10
\irig|Mod1|auto_generated|divider|divider|StageOut[122]~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[122]~141_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & 
-- (\irig|year_s\(3))) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(3),
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[122]~141_combout\);

-- Location: LCCOMB_X21_Y19_N24
\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~18_combout\ = (\irig|Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\) # (\irig|Mod1|auto_generated|divider|divider|StageOut[122]~141_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|StageOut[122]~141_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~18_combout\);

-- Location: LCCOMB_X21_Y19_N28
\irig|year_s[8]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~4_combout\ = (!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\ & (!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~20_combout\ & 
-- (!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~0_combout\ & !\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~20_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~0_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~18_combout\,
	combout => \irig|year_s[8]~4_combout\);

-- Location: LCCOMB_X21_Y19_N6
\irig|Mod1|auto_generated|divider|divider|StageOut[124]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[124]~109_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\ & !\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[124]~109_combout\);

-- Location: LCCOMB_X22_Y19_N16
\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~2_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~1\ & (((\irig|Mod1|auto_generated|divider|divider|StageOut[124]~139_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[124]~109_combout\)))) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~1\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[124]~139_combout\ & 
-- (!\irig|Mod1|auto_generated|divider|divider|StageOut[124]~109_combout\)))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~3\ = CARRY((!\irig|Mod1|auto_generated|divider|divider|StageOut[124]~139_combout\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[124]~109_combout\ & 
-- !\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[124]~139_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[124]~109_combout\,
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~1\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~2_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~3\);

-- Location: LCCOMB_X19_Y19_N16
\irig|Mod1|auto_generated|divider|divider|StageOut[125]~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[125]~138_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & 
-- (\irig|year_s\(6))) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(6),
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[125]~138_combout\);

-- Location: LCCOMB_X22_Y19_N18
\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~4_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~3\ & ((((\irig|Mod1|auto_generated|divider|divider|StageOut[125]~108_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[125]~138_combout\))))) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~3\ & ((\irig|Mod1|auto_generated|divider|divider|StageOut[125]~108_combout\) # 
-- ((\irig|Mod1|auto_generated|divider|divider|StageOut[125]~138_combout\) # (GND))))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~5\ = CARRY((\irig|Mod1|auto_generated|divider|divider|StageOut[125]~108_combout\) # ((\irig|Mod1|auto_generated|divider|divider|StageOut[125]~138_combout\) # 
-- (!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[125]~108_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[125]~138_combout\,
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~3\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~4_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~5\);

-- Location: LCCOMB_X17_Y19_N24
\irig|Mod1|auto_generated|divider|divider|StageOut[126]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[126]~107_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\ & !\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[126]~107_combout\);

-- Location: LCCOMB_X22_Y19_N20
\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~6_combout\ = (\irig|Mod1|auto_generated|divider|divider|StageOut[126]~130_combout\ & (((!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~5\)))) # 
-- (!\irig|Mod1|auto_generated|divider|divider|StageOut[126]~130_combout\ & ((\irig|Mod1|auto_generated|divider|divider|StageOut[126]~107_combout\ & (!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~5\)) # 
-- (!\irig|Mod1|auto_generated|divider|divider|StageOut[126]~107_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~5\) # (GND)))))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~7\ = CARRY(((!\irig|Mod1|auto_generated|divider|divider|StageOut[126]~130_combout\ & !\irig|Mod1|auto_generated|divider|divider|StageOut[126]~107_combout\)) # 
-- (!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[126]~130_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[126]~107_combout\,
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~5\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~6_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~7\);

-- Location: LCCOMB_X22_Y19_N4
\irig|year_s[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~3_combout\ = (!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~8_combout\ & (!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~2_combout\ & 
-- (!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~4_combout\ & !\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~8_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~2_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~4_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~6_combout\,
	combout => \irig|year_s[8]~3_combout\);

-- Location: LCCOMB_X17_Y19_N28
\irig|Mod1|auto_generated|divider|divider|StageOut[130]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[130]~116_combout\ = (!\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~12_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[130]~116_combout\);

-- Location: LCCOMB_X19_Y19_N20
\irig|Mod1|auto_generated|divider|divider|StageOut[129]~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[129]~131_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & ((\irig|Mod1|auto_generated|divider|divider|StageOut[116]~134_combout\) # 
-- ((!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[116]~134_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[129]~131_combout\);

-- Location: LCCOMB_X17_Y19_N30
\irig|Mod1|auto_generated|divider|divider|StageOut[128]~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[128]~128_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & ((\irig|Mod1|auto_generated|divider|divider|StageOut[115]~135_combout\) # 
-- ((\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\ & !\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[115]~135_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[128]~128_combout\);

-- Location: LCCOMB_X17_Y19_N22
\irig|Mod1|auto_generated|divider|divider|StageOut[127]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[127]~106_combout\ = (!\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[127]~106_combout\);

-- Location: LCCOMB_X22_Y19_N24
\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~9\ & (((\irig|Mod1|auto_generated|divider|divider|StageOut[128]~105_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[128]~128_combout\)))) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~9\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[128]~105_combout\ & 
-- (!\irig|Mod1|auto_generated|divider|divider|StageOut[128]~128_combout\)))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~11\ = CARRY((!\irig|Mod1|auto_generated|divider|divider|StageOut[128]~105_combout\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[128]~128_combout\ & 
-- !\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[128]~105_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[128]~128_combout\,
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~9\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~11\);

-- Location: LCCOMB_X22_Y19_N26
\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~12_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~11\ & ((((\irig|Mod1|auto_generated|divider|divider|StageOut[129]~115_combout\) # 
-- (\irig|Mod1|auto_generated|divider|divider|StageOut[129]~131_combout\))))) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~11\ & ((\irig|Mod1|auto_generated|divider|divider|StageOut[129]~115_combout\) # 
-- ((\irig|Mod1|auto_generated|divider|divider|StageOut[129]~131_combout\) # (GND))))
-- \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~13\ = CARRY((\irig|Mod1|auto_generated|divider|divider|StageOut[129]~115_combout\) # ((\irig|Mod1|auto_generated|divider|divider|StageOut[129]~131_combout\) # 
-- (!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[129]~115_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[129]~131_combout\,
	datad => VCC,
	cin => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~11\,
	combout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~12_combout\,
	cout => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~13\);

-- Location: LCCOMB_X22_Y19_N2
\irig|year_s[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~2_combout\ = (!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~16_combout\ & (!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~14_combout\ & 
-- (!\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~12_combout\ & !\irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~16_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~14_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~12_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\,
	combout => \irig|year_s[8]~2_combout\);

-- Location: LCCOMB_X22_Y19_N10
\irig|year_s[8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~5_combout\ = (\irig|year_s[8]~4_combout\ & (\irig|year_s[8]~3_combout\ & \irig|year_s[8]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|year_s[8]~4_combout\,
	datac => \irig|year_s[8]~3_combout\,
	datad => \irig|year_s[8]~2_combout\,
	combout => \irig|year_s[8]~5_combout\);

-- Location: LCCOMB_X16_Y19_N2
\irig|Mod1|auto_generated|divider|divider|StageOut[117]~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[117]~133_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & (\irig|year_s\(11))) 
-- # (!\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(11),
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~8_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[117]~133_combout\);

-- Location: LCCOMB_X19_Y19_N14
\irig|Mod1|auto_generated|divider|divider|StageOut[130]~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[130]~132_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & ((\irig|Mod1|auto_generated|divider|divider|StageOut[117]~133_combout\) # 
-- ((\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & !\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|StageOut[117]~133_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[130]~132_combout\);

-- Location: LCCOMB_X19_Y19_N18
\irig|year_s[8]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~10_combout\ = (!\irig|Mod1|auto_generated|divider|divider|StageOut[124]~139_combout\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[129]~131_combout\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[130]~132_combout\ & 
-- !\irig|Mod1|auto_generated|divider|divider|StageOut[125]~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[124]~139_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[129]~131_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|StageOut[130]~132_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|StageOut[125]~138_combout\,
	combout => \irig|year_s[8]~10_combout\);

-- Location: LCCOMB_X17_Y19_N2
\irig|Mod1|auto_generated|divider|divider|StageOut[129]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[129]~115_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & !\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[129]~115_combout\);

-- Location: LCCOMB_X19_Y19_N26
\irig|Mod1|auto_generated|divider|divider|StageOut[126]~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[126]~130_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & ((\irig|Mod1|auto_generated|divider|divider|StageOut[113]~137_combout\) # 
-- ((!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[113]~137_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[126]~130_combout\);

-- Location: LCCOMB_X19_Y19_N0
\irig|year_s[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~12_combout\ = (!\irig|Mod1|auto_generated|divider|divider|StageOut[130]~116_combout\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[129]~115_combout\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[126]~130_combout\ & 
-- !\irig|Mod1|auto_generated|divider|divider|StageOut[121]~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[130]~116_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[129]~115_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|StageOut[126]~130_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|StageOut[121]~122_combout\,
	combout => \irig|year_s[8]~12_combout\);

-- Location: LCCOMB_X15_Y19_N12
\irig|Mod1|auto_generated|divider|divider|StageOut[114]~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[114]~136_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & (\irig|year_s\(8))) 
-- # (!\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(8),
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[114]~136_combout\);

-- Location: LCCOMB_X21_Y19_N26
\irig|Mod1|auto_generated|divider|divider|StageOut[127]~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[127]~129_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & ((\irig|Mod1|auto_generated|divider|divider|StageOut[114]~136_combout\) # 
-- ((\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\ & !\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|StageOut[114]~136_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[127]~129_combout\);

-- Location: LCCOMB_X21_Y19_N16
\irig|Mod1|auto_generated|divider|divider|StageOut[123]~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mod1|auto_generated|divider|divider|StageOut[123]~140_combout\ = (\irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & ((\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & 
-- ((\irig|year_s\(4)))) # (!\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (\irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~16_combout\,
	datac => \irig|year_s\(4),
	datad => \irig|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \irig|Mod1|auto_generated|divider|divider|StageOut[123]~140_combout\);

-- Location: LCCOMB_X21_Y19_N2
\irig|year_s[8]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~11_combout\ = (!\irig|Mod1|auto_generated|divider|divider|StageOut[122]~141_combout\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[128]~128_combout\ & (!\irig|Mod1|auto_generated|divider|divider|StageOut[127]~129_combout\ & 
-- !\irig|Mod1|auto_generated|divider|divider|StageOut[123]~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod1|auto_generated|divider|divider|StageOut[122]~141_combout\,
	datab => \irig|Mod1|auto_generated|divider|divider|StageOut[128]~128_combout\,
	datac => \irig|Mod1|auto_generated|divider|divider|StageOut[127]~129_combout\,
	datad => \irig|Mod1|auto_generated|divider|divider|StageOut[123]~140_combout\,
	combout => \irig|year_s[8]~11_combout\);

-- Location: LCCOMB_X22_Y19_N0
\irig|year_s[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~16_combout\ = (\irig|year_s[8]~15_combout\ & (\irig|year_s[8]~10_combout\ & (\irig|year_s[8]~12_combout\ & \irig|year_s[8]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s[8]~15_combout\,
	datab => \irig|year_s[8]~10_combout\,
	datac => \irig|year_s[8]~12_combout\,
	datad => \irig|year_s[8]~11_combout\,
	combout => \irig|year_s[8]~16_combout\);

-- Location: LCCOMB_X21_Y20_N2
\irig|year_s[8]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~17_combout\ = (\irig|Mod0|auto_generated|divider|divider|StageOut[136]~172_combout\) # ((\irig|year_s[8]~16_combout\) # ((\irig|Mod0|auto_generated|divider|divider|StageOut[137]~171_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|StageOut[138]~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[136]~172_combout\,
	datab => \irig|year_s[8]~16_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[137]~171_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|StageOut[138]~173_combout\,
	combout => \irig|year_s[8]~17_combout\);

-- Location: LCCOMB_X21_Y16_N6
\irig|year_s[8]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~9_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\) # ((\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\) # (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~16_combout\,
	combout => \irig|year_s[8]~9_combout\);

-- Location: LCCOMB_X21_Y16_N30
\irig|year_s[8]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~20_combout\ = (\irig|year_s[8]~19_combout\) # ((\irig|year_s[8]~17_combout\) # ((!\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & \irig|year_s[8]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s[8]~19_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	datac => \irig|year_s[8]~17_combout\,
	datad => \irig|year_s[8]~9_combout\,
	combout => \irig|year_s[8]~20_combout\);

-- Location: LCCOMB_X19_Y20_N8
\irig|year_s[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~6_combout\ = (!\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\) # 
-- (\irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~16_combout\,
	combout => \irig|year_s[8]~6_combout\);

-- Location: LCCOMB_X19_Y20_N14
\irig|year_s[8]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~7_combout\ = (\irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & ((\irig|Mod0|auto_generated|divider|divider|StageOut[129]~196_combout\) # 
-- ((\irig|Mod0|auto_generated|divider|divider|StageOut[130]~195_combout\) # (\irig|year_s[8]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[129]~196_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[130]~195_combout\,
	datac => \irig|year_s[8]~6_combout\,
	datad => \irig|Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \irig|year_s[8]~7_combout\);

-- Location: LCCOMB_X22_Y20_N18
\irig|year_s[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~8_combout\ = (\irig|Mod0|auto_generated|divider|divider|StageOut[141]~174_combout\) # ((\irig|Mod0|auto_generated|divider|divider|StageOut[140]~175_combout\) # ((\irig|Mod0|auto_generated|divider|divider|StageOut[139]~176_combout\) # 
-- (\irig|year_s[8]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mod0|auto_generated|divider|divider|StageOut[141]~174_combout\,
	datab => \irig|Mod0|auto_generated|divider|divider|StageOut[140]~175_combout\,
	datac => \irig|Mod0|auto_generated|divider|divider|StageOut[139]~176_combout\,
	datad => \irig|year_s[8]~7_combout\,
	combout => \irig|year_s[8]~8_combout\);

-- Location: LCCOMB_X21_Y16_N18
\irig|year_s[8]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~21_combout\ = (\irig|year_s[8]~5_combout\) # ((!\irig|year_s\(1) & ((\irig|year_s[8]~20_combout\) # (\irig|year_s[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s\(1),
	datab => \irig|year_s[8]~5_combout\,
	datac => \irig|year_s[8]~20_combout\,
	datad => \irig|year_s[8]~8_combout\,
	combout => \irig|year_s[8]~21_combout\);

-- Location: LCCOMB_X21_Y16_N22
\irig|year_s[8]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~22_combout\ = (\irig|Add4~6_combout\ & ((\irig|year_s\(0)) # ((\irig|Add4~0_combout\) # (!\irig|year_s[8]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add4~6_combout\,
	datab => \irig|year_s\(0),
	datac => \irig|Add4~0_combout\,
	datad => \irig|year_s[8]~21_combout\,
	combout => \irig|year_s[8]~22_combout\);

-- Location: LCCOMB_X20_Y16_N8
\irig|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add4~4_combout\ = (\irig|day_s\(2) & (\irig|Add4~3\ $ (GND))) # (!\irig|day_s\(2) & (!\irig|Add4~3\ & VCC))
-- \irig|Add4~5\ = CARRY((\irig|day_s\(2) & !\irig|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|day_s\(2),
	datad => VCC,
	cin => \irig|Add4~3\,
	combout => \irig|Add4~4_combout\,
	cout => \irig|Add4~5\);

-- Location: LCCOMB_X21_Y16_N14
\irig|year_s[8]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|year_s[8]~23_combout\ = (!\irig|Add4~8_combout\ & (((!\irig|Add4~4_combout\) # (!\irig|year_s[8]~22_combout\)) # (!\irig|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add4~8_combout\,
	datab => \irig|Add4~2_combout\,
	datac => \irig|year_s[8]~22_combout\,
	datad => \irig|Add4~4_combout\,
	combout => \irig|year_s[8]~23_combout\);

-- Location: LCCOMB_X20_Y16_N18
\irig|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add4~14_combout\ = (\irig|day_s\(7) & (!\irig|Add4~13\)) # (!\irig|day_s\(7) & ((\irig|Add4~13\) # (GND)))
-- \irig|Add4~15\ = CARRY((!\irig|Add4~13\) # (!\irig|day_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(7),
	datad => VCC,
	cin => \irig|Add4~13\,
	combout => \irig|Add4~14_combout\,
	cout => \irig|Add4~15\);

-- Location: LCCOMB_X21_Y16_N0
\irig|day_s[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[0]~4_combout\ = (\irig|Add4~16_combout\ & ((\irig|Add4~14_combout\) # ((!\irig|year_s[8]~24_combout\ & !\irig|year_s[8]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|year_s[8]~24_combout\,
	datab => \irig|Add4~16_combout\,
	datac => \irig|year_s[8]~23_combout\,
	datad => \irig|Add4~14_combout\,
	combout => \irig|day_s[0]~4_combout\);

-- Location: LCCOMB_X21_Y16_N10
\irig|day_s[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[4]~6_combout\ = (!\up~q\ & !\irig|day_s[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \up~q\,
	datad => \irig|day_s[0]~4_combout\,
	combout => \irig|day_s[4]~6_combout\);

-- Location: LCCOMB_X21_Y16_N24
\irig|day_s[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[2]~19_combout\ = (!\rs~q\ & ((\irig|day_s[2]~18_combout\) # ((\irig|Add4~4_combout\ & \irig|day_s[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add4~4_combout\,
	datab => \irig|day_s[2]~18_combout\,
	datac => \rs~q\,
	datad => \irig|day_s[4]~6_combout\,
	combout => \irig|day_s[2]~19_combout\);

-- Location: LCCOMB_X21_Y16_N28
\irig|day_s[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s\(2) = (\irig|day_s[0]~24_combout\ & ((\irig|day_s[2]~19_combout\))) # (!\irig|day_s[0]~24_combout\ & (\irig|day_s\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|day_s\(2),
	datac => \irig|day_s[0]~24_combout\,
	datad => \irig|day_s[2]~19_combout\,
	combout => \irig|day_s\(2));

-- Location: LCCOMB_X20_Y16_N10
\irig|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add4~6_combout\ = (\irig|day_s\(3) & (!\irig|Add4~5\)) # (!\irig|day_s\(3) & ((\irig|Add4~5\) # (GND)))
-- \irig|Add4~7\ = CARRY((!\irig|Add4~5\) # (!\irig|day_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(3),
	datad => VCC,
	cin => \irig|Add4~5\,
	combout => \irig|Add4~6_combout\,
	cout => \irig|Add4~7\);

-- Location: LCCOMB_X20_Y16_N12
\irig|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add4~8_combout\ = (\irig|day_s\(4) & (\irig|Add4~7\ $ (GND))) # (!\irig|day_s\(4) & (!\irig|Add4~7\ & VCC))
-- \irig|Add4~9\ = CARRY((\irig|day_s\(4) & !\irig|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(4),
	datad => VCC,
	cin => \irig|Add4~7\,
	combout => \irig|Add4~8_combout\,
	cout => \irig|Add4~9\);

-- Location: LCCOMB_X20_Y16_N14
\irig|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add4~10_combout\ = (\irig|day_s\(5) & (!\irig|Add4~9\)) # (!\irig|day_s\(5) & ((\irig|Add4~9\) # (GND)))
-- \irig|Add4~11\ = CARRY((!\irig|Add4~9\) # (!\irig|day_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(5),
	datad => VCC,
	cin => \irig|Add4~9\,
	combout => \irig|Add4~10_combout\,
	cout => \irig|Add4~11\);

-- Location: LCCOMB_X20_Y16_N16
\irig|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add4~12_combout\ = (\irig|day_s\(6) & (\irig|Add4~11\ $ (GND))) # (!\irig|day_s\(6) & (!\irig|Add4~11\ & VCC))
-- \irig|Add4~13\ = CARRY((\irig|day_s\(6) & !\irig|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|day_s\(6),
	datad => VCC,
	cin => \irig|Add4~11\,
	combout => \irig|Add4~12_combout\,
	cout => \irig|Add4~13\);

-- Location: IOIBUF_X14_Y29_N8
\day[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_day(6),
	o => \day[6]~input_o\);

-- Location: LCCOMB_X20_Y19_N22
\irig|day_s[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[6]~12_combout\ = (\day[6]~input_o\ & \up~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \day[6]~input_o\,
	datad => \up~q\,
	combout => \irig|day_s[6]~12_combout\);

-- Location: LCCOMB_X20_Y16_N0
\irig|day_s[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[6]~13_combout\ = (!\rs~q\ & ((\irig|day_s[6]~12_combout\) # ((\irig|Add4~12_combout\ & \irig|day_s[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~q\,
	datab => \irig|Add4~12_combout\,
	datac => \irig|day_s[4]~6_combout\,
	datad => \irig|day_s[6]~12_combout\,
	combout => \irig|day_s[6]~13_combout\);

-- Location: LCCOMB_X20_Y16_N24
\irig|day_s[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s\(6) = (\irig|day_s[0]~24_combout\ & ((\irig|day_s[6]~13_combout\))) # (!\irig|day_s[0]~24_combout\ & (\irig|day_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|day_s\(6),
	datac => \irig|day_s[0]~24_combout\,
	datad => \irig|day_s[6]~13_combout\,
	combout => \irig|day_s\(6));

-- Location: LCCOMB_X20_Y16_N20
\irig|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add4~16_combout\ = \irig|Add4~15\ $ (!\irig|day_s\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \irig|day_s\(8),
	cin => \irig|Add4~15\,
	combout => \irig|Add4~16_combout\);

-- Location: IOIBUF_X16_Y29_N1
\day[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_day(8),
	o => \day[8]~input_o\);

-- Location: LCCOMB_X20_Y19_N28
\irig|day_s[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[8]~16_combout\ = (\day[8]~input_o\ & \up~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \day[8]~input_o\,
	datad => \up~q\,
	combout => \irig|day_s[8]~16_combout\);

-- Location: LCCOMB_X20_Y16_N2
\irig|day_s[8]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[8]~17_combout\ = (!\rs~q\ & ((\irig|day_s[8]~16_combout\) # ((\irig|Add4~16_combout\ & \irig|day_s[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~q\,
	datab => \irig|Add4~16_combout\,
	datac => \irig|day_s[4]~6_combout\,
	datad => \irig|day_s[8]~16_combout\,
	combout => \irig|day_s[8]~17_combout\);

-- Location: LCCOMB_X20_Y16_N30
\irig|day_s[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s\(8) = (\irig|day_s[0]~24_combout\ & ((\irig|day_s[8]~17_combout\))) # (!\irig|day_s[0]~24_combout\ & (\irig|day_s\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(8),
	datac => \irig|day_s[0]~24_combout\,
	datad => \irig|day_s[8]~17_combout\,
	combout => \irig|day_s\(8));

-- Location: IOIBUF_X19_Y29_N29
\day[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_day(3),
	o => \day[3]~input_o\);

-- Location: LCCOMB_X20_Y19_N30
\irig|day_s[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[3]~8_combout\ = (\day[3]~input_o\ & \up~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \day[3]~input_o\,
	datad => \up~q\,
	combout => \irig|day_s[3]~8_combout\);

-- Location: LCCOMB_X21_Y16_N16
\irig|day_s[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[3]~9_combout\ = (!\rs~q\ & ((\irig|day_s[3]~8_combout\) # ((\irig|Add4~6_combout\ & \irig|day_s[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~q\,
	datab => \irig|day_s[3]~8_combout\,
	datac => \irig|Add4~6_combout\,
	datad => \irig|day_s[4]~6_combout\,
	combout => \irig|day_s[3]~9_combout\);

-- Location: LCCOMB_X21_Y16_N2
\irig|day_s[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s\(3) = (\irig|day_s[0]~24_combout\ & ((\irig|day_s[3]~9_combout\))) # (!\irig|day_s[0]~24_combout\ & (\irig|day_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(3),
	datac => \irig|day_s[0]~24_combout\,
	datad => \irig|day_s[3]~9_combout\,
	combout => \irig|day_s\(3));

-- Location: IOIBUF_X11_Y29_N29
\day[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_day(5),
	o => \day[5]~input_o\);

-- Location: LCCOMB_X20_Y19_N24
\irig|day_s[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[5]~5_combout\ = (\day[5]~input_o\ & \up~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \day[5]~input_o\,
	datad => \up~q\,
	combout => \irig|day_s[5]~5_combout\);

-- Location: LCCOMB_X20_Y16_N28
\irig|day_s[5]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[5]~7_combout\ = (!\rs~q\ & ((\irig|day_s[5]~5_combout\) # ((\irig|Add4~10_combout\ & \irig|day_s[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~q\,
	datab => \irig|Add4~10_combout\,
	datac => \irig|day_s[4]~6_combout\,
	datad => \irig|day_s[5]~5_combout\,
	combout => \irig|day_s[5]~7_combout\);

-- Location: LCCOMB_X20_Y16_N22
\irig|day_s[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s\(5) = (\irig|day_s[0]~24_combout\ & ((\irig|day_s[5]~7_combout\))) # (!\irig|day_s[0]~24_combout\ & (\irig|day_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(5),
	datac => \irig|day_s[0]~24_combout\,
	datad => \irig|day_s[5]~7_combout\,
	combout => \irig|day_s\(5));

-- Location: LCCOMB_X17_Y16_N18
\irig|LessThan31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan31~0_combout\ = ((!\irig|day_s\(4) & (!\irig|day_s\(3) & !\irig|day_s\(5)))) # (!\irig|day_s\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(4),
	datab => \irig|day_s\(3),
	datac => \irig|day_s\(6),
	datad => \irig|day_s\(5),
	combout => \irig|LessThan31~0_combout\);

-- Location: LCCOMB_X17_Y16_N2
\irig|LessThan31~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan31~1_combout\ = (!\irig|day_s\(8) & ((\irig|LessThan31~0_combout\) # (!\irig|day_s\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(7),
	datab => \irig|day_s\(8),
	datad => \irig|LessThan31~0_combout\,
	combout => \irig|LessThan31~1_combout\);

-- Location: LCCOMB_X29_Y16_N8
\irig|day_c[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_c[9]~0_combout\ = !\irig|LessThan31~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan31~1_combout\,
	combout => \irig|day_c[9]~0_combout\);

-- Location: FF_X28_Y18_N1
\irig|day_c[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	asdata => \irig|day_c[9]~0_combout\,
	sload => VCC,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|day_c\(9));

-- Location: LCCOMB_X17_Y16_N4
\irig|Add29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add29~0_combout\ = \irig|day_s\(3) $ (VCC)
-- \irig|Add29~1\ = CARRY(\irig|day_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|day_s\(3),
	datad => VCC,
	combout => \irig|Add29~0_combout\,
	cout => \irig|Add29~1\);

-- Location: LCCOMB_X17_Y16_N6
\irig|Add29~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add29~2_combout\ = (\irig|day_s\(4) & (\irig|Add29~1\ & VCC)) # (!\irig|day_s\(4) & (!\irig|Add29~1\))
-- \irig|Add29~3\ = CARRY((!\irig|day_s\(4) & !\irig|Add29~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(4),
	datad => VCC,
	cin => \irig|Add29~1\,
	combout => \irig|Add29~2_combout\,
	cout => \irig|Add29~3\);

-- Location: LCCOMB_X17_Y16_N10
\irig|Add29~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add29~6_combout\ = (\irig|day_s\(6) & (!\irig|Add29~5\)) # (!\irig|day_s\(6) & ((\irig|Add29~5\) # (GND)))
-- \irig|Add29~7\ = CARRY((!\irig|Add29~5\) # (!\irig|day_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(6),
	datad => VCC,
	cin => \irig|Add29~5\,
	combout => \irig|Add29~6_combout\,
	cout => \irig|Add29~7\);

-- Location: LCCOMB_X17_Y16_N28
\irig|aux~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~10_combout\ = (\irig|LessThan31~1_combout\ & (\irig|day_s\(6))) # (!\irig|LessThan31~1_combout\ & ((\irig|Add29~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|LessThan31~1_combout\,
	datac => \irig|day_s\(6),
	datad => \irig|Add29~6_combout\,
	combout => \irig|aux~10_combout\);

-- Location: LCCOMB_X21_Y16_N8
\irig|day_s[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[4]~10_combout\ = (\day[4]~input_o\ & \up~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \day[4]~input_o\,
	datad => \up~q\,
	combout => \irig|day_s[4]~10_combout\);

-- Location: LCCOMB_X21_Y16_N26
\irig|day_s[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[4]~11_combout\ = (!\rs~q\ & ((\irig|day_s[4]~10_combout\) # ((\irig|Add4~8_combout\ & \irig|day_s[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~q\,
	datab => \irig|Add4~8_combout\,
	datac => \irig|day_s[4]~10_combout\,
	datad => \irig|day_s[4]~6_combout\,
	combout => \irig|day_s[4]~11_combout\);

-- Location: LCCOMB_X17_Y16_N22
\irig|day_s[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s\(4) = (\irig|day_s[0]~24_combout\ & ((\irig|day_s[4]~11_combout\))) # (!\irig|day_s[0]~24_combout\ & (\irig|day_s\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(4),
	datac => \irig|day_s[4]~11_combout\,
	datad => \irig|day_s[0]~24_combout\,
	combout => \irig|day_s\(4));

-- Location: LCCOMB_X17_Y16_N30
\irig|aux~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~8_combout\ = (\irig|LessThan31~1_combout\ & (\irig|day_s\(4))) # (!\irig|LessThan31~1_combout\ & ((\irig|Add29~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|LessThan31~1_combout\,
	datac => \irig|day_s\(4),
	datad => \irig|Add29~2_combout\,
	combout => \irig|aux~8_combout\);

-- Location: LCCOMB_X17_Y16_N0
\irig|aux~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~7_combout\ = (\irig|LessThan31~1_combout\ & (\irig|day_s\(3))) # (!\irig|LessThan31~1_combout\ & ((\irig|Add29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|day_s\(3),
	datac => \irig|Add29~0_combout\,
	datad => \irig|LessThan31~1_combout\,
	combout => \irig|aux~7_combout\);

-- Location: LCCOMB_X17_Y16_N20
\irig|LessThan32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan32~1_combout\ = (!\irig|day_s\(2) & (!\irig|aux~8_combout\ & !\irig|aux~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(2),
	datac => \irig|aux~8_combout\,
	datad => \irig|aux~7_combout\,
	combout => \irig|LessThan32~1_combout\);

-- Location: LCCOMB_X17_Y16_N12
\irig|Add29~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add29~8_combout\ = (\irig|day_s\(7) & (\irig|Add29~7\ $ (GND))) # (!\irig|day_s\(7) & (!\irig|Add29~7\ & VCC))
-- \irig|Add29~9\ = CARRY((\irig|day_s\(7) & !\irig|Add29~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(7),
	datad => VCC,
	cin => \irig|Add29~7\,
	combout => \irig|Add29~8_combout\,
	cout => \irig|Add29~9\);

-- Location: LCCOMB_X17_Y16_N14
\irig|Add29~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add29~10_combout\ = (\irig|day_s\(8) & (\irig|Add29~9\ & VCC)) # (!\irig|day_s\(8) & (!\irig|Add29~9\))
-- \irig|Add29~11\ = CARRY((!\irig|day_s\(8) & !\irig|Add29~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|day_s\(8),
	datad => VCC,
	cin => \irig|Add29~9\,
	combout => \irig|Add29~10_combout\,
	cout => \irig|Add29~11\);

-- Location: LCCOMB_X17_Y16_N16
\irig|Add29~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add29~12_combout\ = \irig|Add29~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \irig|Add29~11\,
	combout => \irig|Add29~12_combout\);

-- Location: LCCOMB_X20_Y19_N20
\irig|day_s[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[7]~14_combout\ = (\up~q\ & (\day[7]~input_o\)) # (!\up~q\ & (((!\irig|Add4~16_combout\ & \irig|Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \day[7]~input_o\,
	datab => \irig|Add4~16_combout\,
	datac => \irig|Add4~14_combout\,
	datad => \up~q\,
	combout => \irig|day_s[7]~14_combout\);

-- Location: LCCOMB_X20_Y19_N0
\irig|day_s[7]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s[7]~15_combout\ = (!\rs~q\ & \irig|day_s[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rs~q\,
	datad => \irig|day_s[7]~14_combout\,
	combout => \irig|day_s[7]~15_combout\);

-- Location: LCCOMB_X17_Y16_N26
\irig|day_s[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_s\(7) = (\irig|day_s[0]~24_combout\ & ((\irig|day_s[7]~15_combout\))) # (!\irig|day_s[0]~24_combout\ & (\irig|day_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_s\(7),
	datac => \irig|day_s[7]~15_combout\,
	datad => \irig|day_s[0]~24_combout\,
	combout => \irig|day_s\(7));

-- Location: LCCOMB_X17_Y16_N24
\irig|aux~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~6_combout\ = (\irig|day_s\(8) & (((\irig|Add29~8_combout\)))) # (!\irig|day_s\(8) & (\irig|day_s\(7) & ((\irig|LessThan31~0_combout\) # (\irig|Add29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan31~0_combout\,
	datab => \irig|day_s\(8),
	datac => \irig|day_s\(7),
	datad => \irig|Add29~8_combout\,
	combout => \irig|aux~6_combout\);

-- Location: LCCOMB_X16_Y16_N20
\irig|LessThan32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan32~0_combout\ = (!\irig|aux~6_combout\ & ((\irig|LessThan31~1_combout\) # ((!\irig|Add29~12_combout\ & !\irig|Add29~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan31~1_combout\,
	datab => \irig|Add29~12_combout\,
	datac => \irig|Add29~10_combout\,
	datad => \irig|aux~6_combout\,
	combout => \irig|LessThan32~0_combout\);

-- Location: LCCOMB_X16_Y16_N28
\irig|LessThan32~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan32~2_combout\ = (\irig|LessThan32~0_combout\ & (((\irig|LessThan32~1_combout\) # (!\irig|aux~10_combout\)) # (!\irig|aux~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~9_combout\,
	datab => \irig|aux~10_combout\,
	datac => \irig|LessThan32~1_combout\,
	datad => \irig|LessThan32~0_combout\,
	combout => \irig|LessThan32~2_combout\);

-- Location: LCCOMB_X16_Y14_N10
\irig|day_c[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|day_c[8]~1_combout\ = !\irig|LessThan32~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan32~2_combout\,
	combout => \irig|day_c[8]~1_combout\);

-- Location: FF_X28_Y18_N19
\irig|day_c[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	asdata => \irig|day_c[8]~1_combout\,
	sload => VCC,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|day_c\(8));

-- Location: LCCOMB_X28_Y18_N18
\irig|Mux1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~20_combout\ = (\irig|cnt\(0) & (\irig|day_c\(9))) # (!\irig|cnt\(0) & ((\irig|day_c\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|day_c\(9),
	datac => \irig|day_c\(8),
	datad => \irig|cnt\(0),
	combout => \irig|Mux1~20_combout\);

-- Location: LCCOMB_X28_Y18_N28
\irig|Mux1~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~70_combout\ = (\irig|tmp\(1) & ((\irig|tmp\(2)) # ((!\irig|Mux1~20_combout\)))) # (!\irig|tmp\(1) & (\irig|tmp\(2) & ((\irig|tmp\(0)) # (!\irig|Mux1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(1),
	datab => \irig|tmp\(2),
	datac => \irig|tmp\(0),
	datad => \irig|Mux1~20_combout\,
	combout => \irig|Mux1~70_combout\);

-- Location: LCCOMB_X28_Y18_N24
\irig|Mux1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~21_combout\ = (\irig|cnt\(4) & (\irig|cnt\(0))) # (!\irig|cnt\(4) & (((!\irig|tmp\(3) & !\irig|Mux1~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(4),
	datab => \irig|cnt\(0),
	datac => \irig|tmp\(3),
	datad => \irig|Mux1~70_combout\,
	combout => \irig|Mux1~21_combout\);

-- Location: LCCOMB_X28_Y18_N2
\irig|Mux1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~22_combout\ = (\irig|cnt\(4) & ((\irig|Mux1~21_combout\ & (\irig|year_c\(6))) # (!\irig|Mux1~21_combout\ & ((\irig|year_c\(5)))))) # (!\irig|cnt\(4) & (((\irig|Mux1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(4),
	datab => \irig|year_c\(6),
	datac => \irig|year_c\(5),
	datad => \irig|Mux1~21_combout\,
	combout => \irig|Mux1~22_combout\);

-- Location: LCCOMB_X30_Y18_N16
\irig|Mux1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~6_combout\ = ((!\irig|tmp\(1) & !\irig|tmp\(0))) # (!\irig|tmp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(1),
	datac => \irig|tmp\(2),
	datad => \irig|tmp\(0),
	combout => \irig|Mux1~6_combout\);

-- Location: LCCOMB_X28_Y18_N20
\irig|Mux1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~23_combout\ = (\irig|tmp\(3) & (((!\irig|Mux1~22_combout\)))) # (!\irig|tmp\(3) & ((\irig|Mux1~22_combout\ & ((\irig|Mux1~6_combout\))) # (!\irig|Mux1~22_combout\ & (\irig|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(1),
	datab => \irig|Mux1~6_combout\,
	datac => \irig|tmp\(3),
	datad => \irig|Mux1~22_combout\,
	combout => \irig|Mux1~23_combout\);

-- Location: LCCOMB_X28_Y18_N22
\irig|Mux1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~24_combout\ = (\irig|cnt\(4) & ((\irig|Mux1~22_combout\ & ((\irig|Mux1~23_combout\))) # (!\irig|Mux1~22_combout\ & (!\irig|tmp\(2) & !\irig|Mux1~23_combout\)))) # (!\irig|cnt\(4) & (\irig|Mux1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(4),
	datab => \irig|Mux1~22_combout\,
	datac => \irig|tmp\(2),
	datad => \irig|Mux1~23_combout\,
	combout => \irig|Mux1~24_combout\);

-- Location: LCCOMB_X27_Y18_N6
\irig|Mux1~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~25_combout\ = (!\irig|cnt\(2) & ((\irig|Mux1~19_combout\) # ((!\irig|cnt\(1) & \irig|Mux1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(2),
	datab => \irig|Mux1~19_combout\,
	datac => \irig|cnt\(1),
	datad => \irig|Mux1~24_combout\,
	combout => \irig|Mux1~25_combout\);

-- Location: LCCOMB_X27_Y18_N8
\irig|output~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~40_combout\ = (\irig|cnt\(5) & (!\irig|cnt\(6) & ((\irig|Mux1~25_combout\)))) # (!\irig|cnt\(5) & (((\irig|cnt\(4))) # (!\irig|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(5),
	datab => \irig|cnt\(6),
	datac => \irig|cnt\(4),
	datad => \irig|Mux1~25_combout\,
	combout => \irig|output~40_combout\);

-- Location: FF_X24_Y21_N19
\irig|tod[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|tod[10]~31_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tod\(10));

-- Location: LCCOMB_X26_Y18_N20
\irig|output~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~32_combout\ = (\irig|tod\(10) & ((!\irig|tmp\(0)) # (!\irig|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(2),
	datab => \irig|tod\(10),
	datad => \irig|tmp\(0),
	combout => \irig|output~32_combout\);

-- Location: LCCOMB_X26_Y18_N8
\irig|output~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~33_combout\ = (!\irig|tmp\(3) & ((\irig|tmp\(1) & (!\irig|tmp\(2) & \irig|output~32_combout\)) # (!\irig|tmp\(1) & ((\irig|output~32_combout\) # (!\irig|tmp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(3),
	datab => \irig|tmp\(1),
	datac => \irig|tmp\(2),
	datad => \irig|output~32_combout\,
	combout => \irig|output~33_combout\);

-- Location: FF_X24_Y21_N5
\irig|tod[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|tod[3]~17_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tod\(3));

-- Location: LCCOMB_X26_Y18_N6
\irig|output~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~36_combout\ = (\irig|tod\(3) & ((!\irig|tmp\(0)) # (!\irig|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|tmp\(2),
	datac => \irig|tod\(3),
	datad => \irig|tmp\(0),
	combout => \irig|output~36_combout\);

-- Location: LCCOMB_X26_Y18_N4
\irig|output~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~37_combout\ = (!\irig|tmp\(3) & ((\irig|tmp\(1) & (!\irig|tmp\(2) & \irig|output~36_combout\)) # (!\irig|tmp\(1) & ((\irig|output~36_combout\) # (!\irig|tmp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(3),
	datab => \irig|tmp\(1),
	datac => \irig|tmp\(2),
	datad => \irig|output~36_combout\,
	combout => \irig|output~37_combout\);

-- Location: FF_X24_Y21_N13
\irig|tod[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|tod[7]~25_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tod\(7));

-- Location: LCCOMB_X26_Y18_N22
\irig|output~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~34_combout\ = (\irig|tod\(7) & ((!\irig|tmp\(0)) # (!\irig|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|tmp\(2),
	datac => \irig|tod\(7),
	datad => \irig|tmp\(0),
	combout => \irig|output~34_combout\);

-- Location: LCCOMB_X26_Y18_N12
\irig|output~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~35_combout\ = (!\irig|tmp\(3) & ((\irig|tmp\(1) & (!\irig|tmp\(2) & \irig|output~34_combout\)) # (!\irig|tmp\(1) & ((\irig|output~34_combout\) # (!\irig|tmp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(3),
	datab => \irig|tmp\(1),
	datac => \irig|tmp\(2),
	datad => \irig|output~34_combout\,
	combout => \irig|output~35_combout\);

-- Location: LCCOMB_X26_Y18_N26
\irig|Mux1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~15_combout\ = (\irig|cnt\(2) & ((\irig|cnt\(3)) # ((\irig|output~35_combout\)))) # (!\irig|cnt\(2) & (!\irig|cnt\(3) & (\irig|output~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(2),
	datab => \irig|cnt\(3),
	datac => \irig|output~37_combout\,
	datad => \irig|output~35_combout\,
	combout => \irig|Mux1~15_combout\);

-- Location: FF_X24_Y21_N27
\irig|tod[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|tod[14]~39_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tod\(14));

-- Location: LCCOMB_X26_Y18_N14
\irig|output~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~38_combout\ = (\irig|tod\(14) & ((!\irig|tmp\(0)) # (!\irig|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|tmp\(2),
	datac => \irig|tmp\(0),
	datad => \irig|tod\(14),
	combout => \irig|output~38_combout\);

-- Location: LCCOMB_X26_Y18_N0
\irig|output~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~39_combout\ = (!\irig|tmp\(3) & ((\irig|tmp\(2) & (!\irig|tmp\(1) & \irig|output~38_combout\)) # (!\irig|tmp\(2) & ((\irig|output~38_combout\) # (!\irig|tmp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(2),
	datab => \irig|tmp\(1),
	datac => \irig|output~38_combout\,
	datad => \irig|tmp\(3),
	combout => \irig|output~39_combout\);

-- Location: LCCOMB_X26_Y18_N18
\irig|Mux1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~16_combout\ = (\irig|cnt\(3) & ((\irig|Mux1~15_combout\ & ((\irig|output~39_combout\))) # (!\irig|Mux1~15_combout\ & (\irig|output~33_combout\)))) # (!\irig|cnt\(3) & (((\irig|Mux1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(3),
	datab => \irig|output~33_combout\,
	datac => \irig|Mux1~15_combout\,
	datad => \irig|output~39_combout\,
	combout => \irig|Mux1~16_combout\);

-- Location: LCCOMB_X24_Y18_N28
\irig|Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~5_combout\ = (!\irig|tmp\(1) & (!\irig|tmp\(2) & ((\irig|cnt\(2)) # (!\irig|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(3),
	datab => \irig|cnt\(2),
	datac => \irig|tmp\(1),
	datad => \irig|tmp\(2),
	combout => \irig|Mux1~5_combout\);

-- Location: FF_X24_Y21_N23
\irig|tod[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|tod[12]~35_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tod\(12));

-- Location: FF_X24_Y21_N9
\irig|tod[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|tod[5]~21_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tod\(5));

-- Location: FF_X23_Y21_N29
\irig|tod[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	asdata => \irig|sec_s\(1),
	sload => VCC,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tod\(1));

-- Location: LCCOMB_X23_Y21_N28
\irig|Mux1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~7_combout\ = (!\irig|cnt\(3) & ((\irig|cnt\(2) & (\irig|tod\(5))) # (!\irig|cnt\(2) & ((\irig|tod\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(3),
	datab => \irig|tod\(5),
	datac => \irig|tod\(1),
	datad => \irig|cnt\(2),
	combout => \irig|Mux1~7_combout\);

-- Location: LCCOMB_X24_Y18_N6
\irig|Mux1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~8_combout\ = (\irig|Mux1~7_combout\) # ((\irig|cnt\(2) & (\irig|tod\(12) & \irig|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(2),
	datab => \irig|tod\(12),
	datac => \irig|cnt\(3),
	datad => \irig|Mux1~7_combout\,
	combout => \irig|Mux1~8_combout\);

-- Location: LCCOMB_X24_Y18_N20
\irig|Mux1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~9_combout\ = (!\irig|tmp\(3) & ((\irig|Mux1~5_combout\) # ((\irig|Mux1~6_combout\ & \irig|Mux1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mux1~6_combout\,
	datab => \irig|Mux1~5_combout\,
	datac => \irig|tmp\(3),
	datad => \irig|Mux1~8_combout\,
	combout => \irig|Mux1~9_combout\);

-- Location: FF_X24_Y21_N25
\irig|tod[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|tod[13]~37_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tod\(13));

-- Location: LCCOMB_X26_Y21_N22
\irig|output~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~22_combout\ = (\irig|tod\(13) & ((!\irig|tmp\(2)) # (!\irig|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|tmp\(0),
	datac => \irig|tod\(13),
	datad => \irig|tmp\(2),
	combout => \irig|output~22_combout\);

-- Location: LCCOMB_X26_Y21_N4
\irig|output~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~23_combout\ = (!\irig|tmp\(3) & ((\irig|tmp\(1) & (!\irig|tmp\(2) & \irig|output~22_combout\)) # (!\irig|tmp\(1) & ((\irig|output~22_combout\) # (!\irig|tmp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(1),
	datab => \irig|tmp\(2),
	datac => \irig|output~22_combout\,
	datad => \irig|tmp\(3),
	combout => \irig|output~23_combout\);

-- Location: LCCOMB_X26_Y21_N10
\irig|output~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~18_combout\ = (\irig|tod\(6) & ((!\irig|tmp\(2)) # (!\irig|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tod\(6),
	datac => \irig|tmp\(0),
	datad => \irig|tmp\(2),
	combout => \irig|output~18_combout\);

-- Location: LCCOMB_X26_Y21_N28
\irig|output~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~19_combout\ = (!\irig|tmp\(3) & ((\irig|tmp\(2) & (!\irig|tmp\(1) & \irig|output~18_combout\)) # (!\irig|tmp\(2) & ((\irig|output~18_combout\) # (!\irig|tmp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(2),
	datab => \irig|tmp\(3),
	datac => \irig|tmp\(1),
	datad => \irig|output~18_combout\,
	combout => \irig|output~19_combout\);

-- Location: FF_X26_Y21_N21
\irig|tod[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	asdata => \irig|tod[2]~15_combout\,
	sload => VCC,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tod\(2));

-- Location: LCCOMB_X26_Y21_N20
\irig|output~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~20_combout\ = (\irig|tod\(2) & ((!\irig|tmp\(2)) # (!\irig|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|tmp\(0),
	datac => \irig|tod\(2),
	datad => \irig|tmp\(2),
	combout => \irig|output~20_combout\);

-- Location: LCCOMB_X26_Y21_N6
\irig|output~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~21_combout\ = (!\irig|tmp\(3) & ((\irig|tmp\(2) & (!\irig|tmp\(1) & \irig|output~20_combout\)) # (!\irig|tmp\(2) & ((\irig|output~20_combout\) # (!\irig|tmp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(2),
	datab => \irig|tmp\(1),
	datac => \irig|tmp\(3),
	datad => \irig|output~20_combout\,
	combout => \irig|output~21_combout\);

-- Location: LCCOMB_X26_Y21_N8
\irig|Mux1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~10_combout\ = (\irig|cnt\(3) & (((\irig|cnt\(2))))) # (!\irig|cnt\(3) & ((\irig|cnt\(2) & (\irig|output~19_combout\)) # (!\irig|cnt\(2) & ((\irig|output~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(3),
	datab => \irig|output~19_combout\,
	datac => \irig|cnt\(2),
	datad => \irig|output~21_combout\,
	combout => \irig|Mux1~10_combout\);

-- Location: FF_X24_Y21_N17
\irig|tod[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|tod[9]~29_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tod\(9));

-- Location: LCCOMB_X24_Y18_N2
\irig|output~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~16_combout\ = (\irig|tod\(9) & ((!\irig|tmp\(2)) # (!\irig|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(0),
	datab => \irig|tmp\(2),
	datad => \irig|tod\(9),
	combout => \irig|output~16_combout\);

-- Location: LCCOMB_X24_Y18_N16
\irig|output~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~17_combout\ = (!\irig|tmp\(3) & ((\irig|tmp\(1) & (!\irig|tmp\(2) & \irig|output~16_combout\)) # (!\irig|tmp\(1) & ((\irig|output~16_combout\) # (!\irig|tmp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(1),
	datab => \irig|tmp\(3),
	datac => \irig|tmp\(2),
	datad => \irig|output~16_combout\,
	combout => \irig|output~17_combout\);

-- Location: LCCOMB_X26_Y21_N14
\irig|Mux1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~11_combout\ = (\irig|cnt\(3) & ((\irig|Mux1~10_combout\ & (\irig|output~23_combout\)) # (!\irig|Mux1~10_combout\ & ((\irig|output~17_combout\))))) # (!\irig|cnt\(3) & (((\irig|Mux1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(3),
	datab => \irig|output~23_combout\,
	datac => \irig|Mux1~10_combout\,
	datad => \irig|output~17_combout\,
	combout => \irig|Mux1~11_combout\);

-- Location: FF_X24_Y21_N7
\irig|tod[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|tod[4]~19_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tod\(4));

-- Location: LCCOMB_X26_Y21_N2
\irig|output~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~26_combout\ = (\irig|tod\(4) & ((!\irig|tmp\(2)) # (!\irig|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|tod\(4),
	datac => \irig|tmp\(0),
	datad => \irig|tmp\(2),
	combout => \irig|output~26_combout\);

-- Location: LCCOMB_X26_Y21_N24
\irig|output~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~27_combout\ = (!\irig|tmp\(3) & ((\irig|tmp\(2) & (!\irig|tmp\(1) & \irig|output~26_combout\)) # (!\irig|tmp\(2) & ((\irig|output~26_combout\) # (!\irig|tmp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(2),
	datab => \irig|tmp\(3),
	datac => \irig|tmp\(1),
	datad => \irig|output~26_combout\,
	combout => \irig|output~27_combout\);

-- Location: FF_X26_Y18_N17
\irig|tod[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	asdata => \irig|sec_s\(0),
	sload => VCC,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tod\(0));

-- Location: LCCOMB_X26_Y18_N16
\irig|output~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~28_combout\ = (\irig|tod\(0) & ((!\irig|tmp\(0)) # (!\irig|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|tmp\(2),
	datac => \irig|tod\(0),
	datad => \irig|tmp\(0),
	combout => \irig|output~28_combout\);

-- Location: LCCOMB_X26_Y18_N10
\irig|output~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~29_combout\ = (!\irig|tmp\(3) & ((\irig|tmp\(1) & (!\irig|tmp\(2) & \irig|output~28_combout\)) # (!\irig|tmp\(1) & ((\irig|output~28_combout\) # (!\irig|tmp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(3),
	datab => \irig|tmp\(1),
	datac => \irig|tmp\(2),
	datad => \irig|output~28_combout\,
	combout => \irig|output~29_combout\);

-- Location: LCCOMB_X26_Y21_N30
\irig|Mux1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~12_combout\ = (\irig|cnt\(3) & (((\irig|cnt\(2))))) # (!\irig|cnt\(3) & ((\irig|cnt\(2) & (\irig|output~27_combout\)) # (!\irig|cnt\(2) & ((\irig|output~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(3),
	datab => \irig|output~27_combout\,
	datac => \irig|output~29_combout\,
	datad => \irig|cnt\(2),
	combout => \irig|Mux1~12_combout\);

-- Location: FF_X24_Y21_N15
\irig|tod[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|tod[8]~27_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|tod\(8));

-- Location: LCCOMB_X26_Y19_N28
\irig|output~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~24_combout\ = (\irig|tod\(8) & ((!\irig|tmp\(0)) # (!\irig|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(2),
	datac => \irig|tmp\(0),
	datad => \irig|tod\(8),
	combout => \irig|output~24_combout\);

-- Location: LCCOMB_X26_Y21_N0
\irig|output~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~25_combout\ = (!\irig|tmp\(3) & ((\irig|tmp\(2) & (!\irig|tmp\(1) & \irig|output~24_combout\)) # (!\irig|tmp\(2) & ((\irig|output~24_combout\) # (!\irig|tmp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(2),
	datab => \irig|tmp\(3),
	datac => \irig|tmp\(1),
	datad => \irig|output~24_combout\,
	combout => \irig|output~25_combout\);

-- Location: LCCOMB_X26_Y21_N12
\irig|Mux1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~13_combout\ = (\irig|cnt\(3) & ((\irig|Mux1~12_combout\ & (\irig|output~31_combout\)) # (!\irig|Mux1~12_combout\ & ((\irig|output~25_combout\))))) # (!\irig|cnt\(3) & (((\irig|Mux1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|output~31_combout\,
	datab => \irig|cnt\(3),
	datac => \irig|Mux1~12_combout\,
	datad => \irig|output~25_combout\,
	combout => \irig|Mux1~13_combout\);

-- Location: LCCOMB_X26_Y21_N18
\irig|Mux1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~14_combout\ = (\irig|cnt\(1) & ((\irig|cnt\(0)) # ((\irig|Mux1~11_combout\)))) # (!\irig|cnt\(1) & (!\irig|cnt\(0) & ((\irig|Mux1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(1),
	datab => \irig|cnt\(0),
	datac => \irig|Mux1~11_combout\,
	datad => \irig|Mux1~13_combout\,
	combout => \irig|Mux1~14_combout\);

-- Location: LCCOMB_X27_Y18_N16
\irig|Mux1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~17_combout\ = (\irig|cnt\(0) & ((\irig|Mux1~14_combout\ & (\irig|Mux1~16_combout\)) # (!\irig|Mux1~14_combout\ & ((\irig|Mux1~9_combout\))))) # (!\irig|cnt\(0) & (((\irig|Mux1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(0),
	datab => \irig|Mux1~16_combout\,
	datac => \irig|Mux1~9_combout\,
	datad => \irig|Mux1~14_combout\,
	combout => \irig|Mux1~17_combout\);

-- Location: LCCOMB_X27_Y18_N22
\irig|output~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~41_combout\ = (\irig|output~15_combout\ & (((\irig|output~40_combout\ & \irig|Mux1~17_combout\)) # (!\irig|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(6),
	datab => \irig|output~15_combout\,
	datac => \irig|output~40_combout\,
	datad => \irig|Mux1~17_combout\,
	combout => \irig|output~41_combout\);

-- Location: LCCOMB_X28_Y18_N0
\irig|Mux1~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~52_combout\ = (\irig|cnt\(4) & ((!\irig|cnt\(1)))) # (!\irig|cnt\(4) & (!\irig|tmp\(3) & \irig|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(4),
	datab => \irig|tmp\(3),
	datad => \irig|cnt\(1),
	combout => \irig|Mux1~52_combout\);

-- Location: LCCOMB_X22_Y23_N4
\irig|aux~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~49_combout\ = (\irig|hour_s\(3) & ((\irig|hour_s\(2) & (!\irig|hour_s\(1) & \irig|hour_s\(4))) # (!\irig|hour_s\(2) & ((\irig|hour_s\(4)) # (!\irig|hour_s\(1)))))) # (!\irig|hour_s\(3) & ((\irig|hour_s\(2)) # ((!\irig|hour_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(3),
	datab => \irig|hour_s\(2),
	datac => \irig|hour_s\(1),
	datad => \irig|hour_s\(4),
	combout => \irig|aux~49_combout\);

-- Location: LCCOMB_X24_Y18_N12
\irig|hour_c[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|hour_c[4]~0_combout\ = !\irig|aux~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \irig|aux~49_combout\,
	combout => \irig|hour_c[4]~0_combout\);

-- Location: FF_X24_Y18_N13
\irig|hour_c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|hour_c[4]~0_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|hour_c\(4));

-- Location: LCCOMB_X24_Y18_N18
\irig|Mux1~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~49_combout\ = (\irig|tmp\(1) & (((!\irig|tmp\(2) & \irig|hour_c\(4))))) # (!\irig|tmp\(1) & (((!\irig|tmp\(0) & \irig|hour_c\(4))) # (!\irig|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(1),
	datab => \irig|tmp\(0),
	datac => \irig|tmp\(2),
	datad => \irig|hour_c\(4),
	combout => \irig|Mux1~49_combout\);

-- Location: LCCOMB_X24_Y18_N0
\irig|Mux1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~50_combout\ = (\irig|cnt\(0) & (!\irig|cnt\(2) & (!\irig|tmp\(3) & \irig|Mux1~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(0),
	datab => \irig|cnt\(2),
	datac => \irig|tmp\(3),
	datad => \irig|Mux1~49_combout\,
	combout => \irig|Mux1~50_combout\);

-- Location: LCCOMB_X24_Y19_N30
\irig|aux~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~40_combout\ = (\irig|min_s\(5) & (!\irig|min_s\(3) & ((\irig|min_s\(4)) # (!\irig|min_s\(2))))) # (!\irig|min_s\(5) & (\irig|min_s\(3) & ((\irig|min_s\(2)) # (!\irig|min_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s\(5),
	datab => \irig|min_s\(4),
	datac => \irig|min_s\(2),
	datad => \irig|min_s\(3),
	combout => \irig|aux~40_combout\);

-- Location: LCCOMB_X24_Y19_N8
\irig|aux~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~39_combout\ = (\irig|min_s\(5) & ((\irig|min_s\(3) & ((!\irig|min_s\(4)) # (!\irig|min_s\(2)))) # (!\irig|min_s\(3) & ((\irig|min_s\(4)))))) # (!\irig|min_s\(5) & (((!\irig|min_s\(2) & !\irig|min_s\(3))) # (!\irig|min_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s\(5),
	datab => \irig|min_s\(2),
	datac => \irig|min_s\(3),
	datad => \irig|min_s\(4),
	combout => \irig|aux~39_combout\);

-- Location: LCCOMB_X24_Y19_N4
\irig|LessThan20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan20~0_combout\ = (!\irig|min_s\(1) & (\irig|min_s\(2) $ (\irig|aux~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s\(1),
	datac => \irig|min_s\(2),
	datad => \irig|aux~39_combout\,
	combout => \irig|LessThan20~0_combout\);

-- Location: LCCOMB_X24_Y19_N20
\irig|Add20~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add20~4_combout\ = (\irig|aux~40_combout\ & (\irig|Add20~3\ $ (GND))) # (!\irig|aux~40_combout\ & (!\irig|Add20~3\ & VCC))
-- \irig|Add20~5\ = CARRY((\irig|aux~40_combout\ & !\irig|Add20~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~40_combout\,
	datad => VCC,
	cin => \irig|Add20~3\,
	combout => \irig|Add20~4_combout\,
	cout => \irig|Add20~5\);

-- Location: LCCOMB_X28_Y19_N28
\irig|aux~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~42_combout\ = (\irig|aux~41_combout\ & (((\irig|Add20~4_combout\)))) # (!\irig|aux~41_combout\ & (\irig|aux~40_combout\ & ((\irig|LessThan20~0_combout\) # (\irig|Add20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~41_combout\,
	datab => \irig|aux~40_combout\,
	datac => \irig|LessThan20~0_combout\,
	datad => \irig|Add20~4_combout\,
	combout => \irig|aux~42_combout\);

-- Location: LCCOMB_X24_Y19_N14
\irig|aux~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~41_combout\ = (\irig|min_s\(4) & (!\irig|min_s\(2) & (\irig|min_s\(3) $ (!\irig|min_s\(5))))) # (!\irig|min_s\(4) & (!\irig|min_s\(3) & (\irig|min_s\(2) & \irig|min_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_s\(3),
	datab => \irig|min_s\(4),
	datac => \irig|min_s\(2),
	datad => \irig|min_s\(5),
	combout => \irig|aux~41_combout\);

-- Location: LCCOMB_X24_Y19_N22
\irig|Add20~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add20~6_combout\ = (\irig|aux~41_combout\ & (\irig|Add20~5\ & VCC)) # (!\irig|aux~41_combout\ & (!\irig|Add20~5\))
-- \irig|Add20~7\ = CARRY((!\irig|aux~41_combout\ & !\irig|Add20~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~41_combout\,
	datad => VCC,
	cin => \irig|Add20~5\,
	combout => \irig|Add20~6_combout\,
	cout => \irig|Add20~7\);

-- Location: LCCOMB_X24_Y19_N24
\irig|Add20~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add20~8_combout\ = (\irig|Add20~7\ & ((((!\irig|Add19~0_combout\ & !\irig|aux~39_combout\))))) # (!\irig|Add20~7\ & (((!\irig|Add19~0_combout\ & !\irig|aux~39_combout\)) # (GND)))
-- \irig|Add20~9\ = CARRY(((!\irig|Add19~0_combout\ & !\irig|aux~39_combout\)) # (!\irig|Add20~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add19~0_combout\,
	datab => \irig|aux~39_combout\,
	datad => VCC,
	cin => \irig|Add20~7\,
	combout => \irig|Add20~8_combout\,
	cout => \irig|Add20~9\);

-- Location: LCCOMB_X24_Y19_N26
\irig|Add20~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add20~10_combout\ = !\irig|Add20~9\
-- \irig|Add20~11\ = CARRY(!\irig|Add20~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \irig|Add20~9\,
	combout => \irig|Add20~10_combout\,
	cout => \irig|Add20~11\);

-- Location: LCCOMB_X24_Y19_N0
\irig|aux~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~43_combout\ = (\irig|Add20~10_combout\ & ((\irig|aux~41_combout\) # ((\irig|aux~40_combout\ & !\irig|LessThan20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~40_combout\,
	datab => \irig|LessThan20~0_combout\,
	datac => \irig|Add20~10_combout\,
	datad => \irig|aux~41_combout\,
	combout => \irig|aux~43_combout\);

-- Location: LCCOMB_X24_Y19_N28
\irig|Add20~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add20~12_combout\ = \irig|Add20~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \irig|Add20~11\,
	combout => \irig|Add20~12_combout\);

-- Location: LCCOMB_X28_Y19_N18
\irig|LessThan21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan21~0_combout\ = (\irig|Add20~6_combout\) # ((\irig|Add20~12_combout\) # (\irig|Add20~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add20~6_combout\,
	datac => \irig|Add20~12_combout\,
	datad => \irig|Add20~8_combout\,
	combout => \irig|LessThan21~0_combout\);

-- Location: LCCOMB_X28_Y19_N30
\irig|LessThan21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan21~1_combout\ = (\irig|aux~42_combout\) # ((\irig|aux~43_combout\) # ((!\irig|LessThan20~1_combout\ & \irig|LessThan21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan20~1_combout\,
	datab => \irig|aux~42_combout\,
	datac => \irig|aux~43_combout\,
	datad => \irig|LessThan21~0_combout\,
	combout => \irig|LessThan21~1_combout\);

-- Location: LCCOMB_X28_Y19_N4
\irig|Add21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add21~0_combout\ = \irig|aux~42_combout\ $ (VCC)
-- \irig|Add21~1\ = CARRY(\irig|aux~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~42_combout\,
	datad => VCC,
	combout => \irig|Add21~0_combout\,
	cout => \irig|Add21~1\);

-- Location: LCCOMB_X28_Y19_N6
\irig|Add21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add21~2_combout\ = (\irig|LessThan20~1_combout\ & (((!\irig|Add21~1\)))) # (!\irig|LessThan20~1_combout\ & ((\irig|Add20~6_combout\ & (\irig|Add21~1\ & VCC)) # (!\irig|Add20~6_combout\ & (!\irig|Add21~1\))))
-- \irig|Add21~3\ = CARRY((!\irig|Add21~1\ & ((\irig|LessThan20~1_combout\) # (!\irig|Add20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan20~1_combout\,
	datab => \irig|Add20~6_combout\,
	datad => VCC,
	cin => \irig|Add21~1\,
	combout => \irig|Add21~2_combout\,
	cout => \irig|Add21~3\);

-- Location: LCCOMB_X28_Y19_N0
\irig|aux~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~44_combout\ = (\irig|LessThan21~1_combout\ & \irig|Add21~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan21~1_combout\,
	datad => \irig|Add21~2_combout\,
	combout => \irig|aux~44_combout\);

-- Location: LCCOMB_X28_Y19_N22
\irig|aux~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~45_combout\ = (\irig|Add21~0_combout\ & \irig|LessThan21~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Add21~0_combout\,
	datad => \irig|LessThan21~1_combout\,
	combout => \irig|aux~45_combout\);

-- Location: LCCOMB_X28_Y19_N8
\irig|Add21~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add21~4_combout\ = (\irig|Add21~3\ & ((((!\irig|LessThan20~1_combout\ & \irig|Add20~8_combout\))))) # (!\irig|Add21~3\ & (((!\irig|LessThan20~1_combout\ & \irig|Add20~8_combout\)) # (GND)))
-- \irig|Add21~5\ = CARRY(((!\irig|LessThan20~1_combout\ & \irig|Add20~8_combout\)) # (!\irig|Add21~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan20~1_combout\,
	datab => \irig|Add20~8_combout\,
	datad => VCC,
	cin => \irig|Add21~3\,
	combout => \irig|Add21~4_combout\,
	cout => \irig|Add21~5\);

-- Location: LCCOMB_X28_Y19_N12
\irig|Add21~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add21~8_combout\ = (\irig|Add21~7\ & ((((!\irig|LessThan20~1_combout\ & \irig|Add20~12_combout\))))) # (!\irig|Add21~7\ & (((!\irig|LessThan20~1_combout\ & \irig|Add20~12_combout\)) # (GND)))
-- \irig|Add21~9\ = CARRY(((!\irig|LessThan20~1_combout\ & \irig|Add20~12_combout\)) # (!\irig|Add21~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan20~1_combout\,
	datab => \irig|Add20~12_combout\,
	datad => VCC,
	cin => \irig|Add21~7\,
	combout => \irig|Add21~8_combout\,
	cout => \irig|Add21~9\);

-- Location: LCCOMB_X28_Y19_N14
\irig|Add21~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add21~10_combout\ = (\irig|LessThan20~1_combout\ & (((!\irig|Add21~9\)))) # (!\irig|LessThan20~1_combout\ & ((\irig|Add20~12_combout\ & (\irig|Add21~9\ & VCC)) # (!\irig|Add20~12_combout\ & (!\irig|Add21~9\))))
-- \irig|Add21~11\ = CARRY((!\irig|Add21~9\ & ((\irig|LessThan20~1_combout\) # (!\irig|Add20~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan20~1_combout\,
	datab => \irig|Add20~12_combout\,
	datad => VCC,
	cin => \irig|Add21~9\,
	combout => \irig|Add21~10_combout\,
	cout => \irig|Add21~11\);

-- Location: LCCOMB_X28_Y19_N16
\irig|Add21~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add21~12_combout\ = \irig|Add21~11\ $ (((!\irig|LessThan20~1_combout\ & \irig|Add20~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan20~1_combout\,
	datad => \irig|Add20~12_combout\,
	cin => \irig|Add21~11\,
	combout => \irig|Add21~12_combout\);

-- Location: LCCOMB_X28_Y19_N20
\irig|LessThan22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan22~0_combout\ = (\irig|Add21~6_combout\) # ((\irig|Add21~4_combout\) # ((\irig|Add21~10_combout\) # (\irig|Add21~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add21~6_combout\,
	datab => \irig|Add21~4_combout\,
	datac => \irig|Add21~10_combout\,
	datad => \irig|Add21~8_combout\,
	combout => \irig|LessThan22~0_combout\);

-- Location: LCCOMB_X28_Y19_N2
\irig|LessThan22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan22~1_combout\ = (\irig|LessThan21~1_combout\ & ((\irig|Add21~12_combout\) # (\irig|LessThan22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add21~12_combout\,
	datac => \irig|LessThan21~1_combout\,
	datad => \irig|LessThan22~0_combout\,
	combout => \irig|LessThan22~1_combout\);

-- Location: LCCOMB_X28_Y19_N24
\irig|LessThan22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan22~2_combout\ = (\irig|aux~46_combout\) # ((\irig|aux~44_combout\) # ((\irig|aux~45_combout\) # (\irig|LessThan22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~46_combout\,
	datab => \irig|aux~44_combout\,
	datac => \irig|aux~45_combout\,
	datad => \irig|LessThan22~1_combout\,
	combout => \irig|LessThan22~2_combout\);

-- Location: LCCOMB_X29_Y19_N16
\irig|Add22~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add22~4_combout\ = (\irig|aux~45_combout\ & (\irig|Add22~3\ & VCC)) # (!\irig|aux~45_combout\ & (!\irig|Add22~3\))
-- \irig|Add22~5\ = CARRY((!\irig|aux~45_combout\ & !\irig|Add22~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~45_combout\,
	datad => VCC,
	cin => \irig|Add22~3\,
	combout => \irig|Add22~4_combout\,
	cout => \irig|Add22~5\);

-- Location: LCCOMB_X29_Y19_N18
\irig|Add22~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add22~6_combout\ = (\irig|aux~44_combout\ & ((GND) # (!\irig|Add22~5\))) # (!\irig|aux~44_combout\ & (\irig|Add22~5\ $ (GND)))
-- \irig|Add22~7\ = CARRY((\irig|aux~44_combout\) # (!\irig|Add22~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~44_combout\,
	datad => VCC,
	cin => \irig|Add22~5\,
	combout => \irig|Add22~6_combout\,
	cout => \irig|Add22~7\);

-- Location: LCCOMB_X29_Y19_N20
\irig|Add22~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add22~8_combout\ = (\irig|Add21~4_combout\ & ((\irig|LessThan21~1_combout\ & (\irig|Add22~7\ & VCC)) # (!\irig|LessThan21~1_combout\ & (!\irig|Add22~7\)))) # (!\irig|Add21~4_combout\ & (((!\irig|Add22~7\))))
-- \irig|Add22~9\ = CARRY((!\irig|Add22~7\ & ((!\irig|LessThan21~1_combout\) # (!\irig|Add21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add21~4_combout\,
	datab => \irig|LessThan21~1_combout\,
	datad => VCC,
	cin => \irig|Add22~7\,
	combout => \irig|Add22~8_combout\,
	cout => \irig|Add22~9\);

-- Location: LCCOMB_X29_Y19_N22
\irig|Add22~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add22~10_combout\ = (\irig|Add22~9\ & ((((\irig|Add21~6_combout\ & \irig|LessThan21~1_combout\))))) # (!\irig|Add22~9\ & (((\irig|Add21~6_combout\ & \irig|LessThan21~1_combout\)) # (GND)))
-- \irig|Add22~11\ = CARRY(((\irig|Add21~6_combout\ & \irig|LessThan21~1_combout\)) # (!\irig|Add22~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add21~6_combout\,
	datab => \irig|LessThan21~1_combout\,
	datad => VCC,
	cin => \irig|Add22~9\,
	combout => \irig|Add22~10_combout\,
	cout => \irig|Add22~11\);

-- Location: LCCOMB_X30_Y19_N28
\irig|Add22~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add22~12_combout\ = (\irig|LessThan22~2_combout\ & \irig|Add22~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan22~2_combout\,
	datad => \irig|Add22~10_combout\,
	combout => \irig|Add22~12_combout\);

-- Location: LCCOMB_X29_Y19_N24
\irig|Add22~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add22~13_combout\ = (\irig|Add21~8_combout\ & ((\irig|LessThan21~1_combout\ & (\irig|Add22~11\ & VCC)) # (!\irig|LessThan21~1_combout\ & (!\irig|Add22~11\)))) # (!\irig|Add21~8_combout\ & (((!\irig|Add22~11\))))
-- \irig|Add22~14\ = CARRY((!\irig|Add22~11\ & ((!\irig|LessThan21~1_combout\) # (!\irig|Add21~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add21~8_combout\,
	datab => \irig|LessThan21~1_combout\,
	datad => VCC,
	cin => \irig|Add22~11\,
	combout => \irig|Add22~13_combout\,
	cout => \irig|Add22~14\);

-- Location: LCCOMB_X29_Y19_N30
\irig|Add22~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add22~15_combout\ = (\irig|LessThan22~2_combout\ & \irig|Add22~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|LessThan22~2_combout\,
	datad => \irig|Add22~13_combout\,
	combout => \irig|Add22~15_combout\);

-- Location: LCCOMB_X29_Y19_N2
\irig|Add22~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add22~21_combout\ = (\irig|LessThan22~2_combout\ & \irig|Add22~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|LessThan22~2_combout\,
	datad => \irig|Add22~8_combout\,
	combout => \irig|Add22~21_combout\);

-- Location: LCCOMB_X29_Y19_N4
\irig|Add22~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add22~20_combout\ = (\irig|Add22~6_combout\ & \irig|LessThan22~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add22~6_combout\,
	datad => \irig|LessThan22~2_combout\,
	combout => \irig|Add22~20_combout\);

-- Location: LCCOMB_X29_Y19_N6
\irig|Add22~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add22~19_combout\ = (\irig|Add22~4_combout\ & \irig|LessThan22~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|Add22~4_combout\,
	datad => \irig|LessThan22~2_combout\,
	combout => \irig|Add22~19_combout\);

-- Location: LCCOMB_X29_Y19_N8
\irig|LessThan23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan23~0_combout\ = (!\irig|aux~48_combout\ & (!\irig|Add22~21_combout\ & (!\irig|Add22~20_combout\ & !\irig|Add22~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~48_combout\,
	datab => \irig|Add22~21_combout\,
	datac => \irig|Add22~20_combout\,
	datad => \irig|Add22~19_combout\,
	combout => \irig|LessThan23~0_combout\);

-- Location: LCCOMB_X29_Y19_N28
\irig|Add22~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add22~22_combout\ = \irig|Add22~17\ $ (((!\irig|LessThan21~1_combout\) # (!\irig|Add21~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add21~12_combout\,
	datad => \irig|LessThan21~1_combout\,
	cin => \irig|Add22~17\,
	combout => \irig|Add22~22_combout\);

-- Location: LCCOMB_X29_Y19_N10
\irig|LessThan23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan23~1_combout\ = (!\irig|Add22~24_combout\ & (\irig|LessThan23~0_combout\ & ((!\irig|Add22~22_combout\) # (!\irig|LessThan22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add22~24_combout\,
	datab => \irig|LessThan22~2_combout\,
	datac => \irig|LessThan23~0_combout\,
	datad => \irig|Add22~22_combout\,
	combout => \irig|LessThan23~1_combout\);

-- Location: LCCOMB_X29_Y19_N0
\irig|LessThan23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan23~2_combout\ = (\irig|Add22~18_combout\) # ((\irig|Add22~12_combout\) # ((\irig|Add22~15_combout\) # (!\irig|LessThan23~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add22~18_combout\,
	datab => \irig|Add22~12_combout\,
	datac => \irig|Add22~15_combout\,
	datad => \irig|LessThan23~1_combout\,
	combout => \irig|LessThan23~2_combout\);

-- Location: FF_X29_Y19_N1
\irig|min_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|LessThan23~2_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|min_c\(1));

-- Location: LCCOMB_X22_Y18_N22
\irig|Mux1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~46_combout\ = (!\irig|cnt\(2) & ((\irig|cnt\(0) & ((\irig|min_c\(1)))) # (!\irig|cnt\(0) & (\irig|min_c\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_c\(0),
	datab => \irig|cnt\(2),
	datac => \irig|cnt\(0),
	datad => \irig|min_c\(1),
	combout => \irig|Mux1~46_combout\);

-- Location: LCCOMB_X22_Y18_N20
\irig|Mux1~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~47_combout\ = (\irig|Mux1~6_combout\ & ((\irig|Mux1~46_combout\) # ((\irig|min_c\(4) & \irig|ctrlout~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_c\(4),
	datab => \irig|ctrlout~15_combout\,
	datac => \irig|Mux1~46_combout\,
	datad => \irig|Mux1~6_combout\,
	combout => \irig|Mux1~47_combout\);

-- Location: LCCOMB_X22_Y18_N2
\irig|Mux1~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~51_combout\ = (\irig|cnt\(4) & (((\irig|Mux1~50_combout\)))) # (!\irig|cnt\(4) & ((\irig|Mux1~48_combout\) # ((\irig|Mux1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mux1~48_combout\,
	datab => \irig|cnt\(4),
	datac => \irig|Mux1~50_combout\,
	datad => \irig|Mux1~47_combout\,
	combout => \irig|Mux1~51_combout\);

-- Location: LCCOMB_X24_Y18_N14
\irig|Mux1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~42_combout\ = (!\irig|tmp\(1) & (!\irig|tmp\(2) & ((\irig|cnt\(2)) # (!\irig|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(1),
	datab => \irig|cnt\(2),
	datac => \irig|tmp\(2),
	datad => \irig|cnt\(0),
	combout => \irig|Mux1~42_combout\);

-- Location: LCCOMB_X22_Y23_N22
\irig|LessThan25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan25~0_combout\ = (\irig|hour_s\(4) & ((\irig|hour_s\(2)) # (\irig|hour_s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(2),
	datac => \irig|hour_s\(4),
	datad => \irig|hour_s\(3),
	combout => \irig|LessThan25~0_combout\);

-- Location: FF_X22_Y18_N27
\irig|hour_c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	asdata => \irig|LessThan25~0_combout\,
	sload => VCC,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|hour_c\(5));

-- Location: LCCOMB_X22_Y18_N26
\irig|Mux1~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~43_combout\ = (!\irig|cnt\(0) & ((\irig|cnt\(2) & (!\irig|day_c\(0))) # (!\irig|cnt\(2) & ((\irig|hour_c\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_c\(0),
	datab => \irig|cnt\(0),
	datac => \irig|hour_c\(5),
	datad => \irig|cnt\(2),
	combout => \irig|Mux1~43_combout\);

-- Location: LCCOMB_X22_Y18_N16
\irig|Mux1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~44_combout\ = (\irig|Mux1~6_combout\ & ((\irig|Mux1~43_combout\) # ((\irig|day_c\(1) & \irig|ctrlout~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|day_c\(1),
	datab => \irig|ctrlout~15_combout\,
	datac => \irig|Mux1~43_combout\,
	datad => \irig|Mux1~6_combout\,
	combout => \irig|Mux1~44_combout\);

-- Location: FF_X28_Y19_N25
\irig|min_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|LessThan22~2_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|min_c\(2));

-- Location: LCCOMB_X21_Y18_N16
\irig|LessThan11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan11~0_combout\ = (\irig|sec_s\(5) & ((\irig|sec_s\(3)) # (\irig|sec_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|sec_s\(5),
	datac => \irig|sec_s\(3),
	datad => \irig|sec_s\(4),
	combout => \irig|LessThan11~0_combout\);

-- Location: FF_X22_Y18_N9
\irig|sec_c[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	asdata => \irig|LessThan11~0_combout\,
	sload => VCC,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|sec_c\(6));

-- Location: LCCOMB_X22_Y18_N8
\irig|Mux1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~40_combout\ = (!\irig|cnt\(0) & ((\irig|cnt\(2) & (\irig|min_c\(2))) # (!\irig|cnt\(2) & ((\irig|sec_c\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(0),
	datab => \irig|min_c\(2),
	datac => \irig|sec_c\(6),
	datad => \irig|cnt\(2),
	combout => \irig|Mux1~40_combout\);

-- Location: LCCOMB_X22_Y18_N12
\irig|Mux1~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~41_combout\ = (\irig|Mux1~6_combout\ & ((\irig|Mux1~40_combout\) # ((\irig|min_c\(3) & \irig|ctrlout~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|min_c\(3),
	datab => \irig|ctrlout~15_combout\,
	datac => \irig|Mux1~40_combout\,
	datad => \irig|Mux1~6_combout\,
	combout => \irig|Mux1~41_combout\);

-- Location: LCCOMB_X27_Y18_N12
\irig|Mux1~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~45_combout\ = (\irig|Mux1~42_combout\) # ((\irig|cnt\(1) & (\irig|Mux1~44_combout\)) # (!\irig|cnt\(1) & ((\irig|Mux1~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(1),
	datab => \irig|Mux1~42_combout\,
	datac => \irig|Mux1~44_combout\,
	datad => \irig|Mux1~41_combout\,
	combout => \irig|Mux1~45_combout\);

-- Location: LCCOMB_X27_Y18_N30
\irig|Mux1~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~53_combout\ = (\irig|Mux1~52_combout\ & (((\irig|Mux1~51_combout\)))) # (!\irig|Mux1~52_combout\ & (!\irig|tmp\(3) & ((\irig|Mux1~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(3),
	datab => \irig|Mux1~52_combout\,
	datac => \irig|Mux1~51_combout\,
	datad => \irig|Mux1~45_combout\,
	combout => \irig|Mux1~53_combout\);

-- Location: LCCOMB_X22_Y23_N8
\irig|aux~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~59_combout\ = (\irig|hour_s\(2) & (!\irig|hour_s\(4) & ((\irig|hour_s\(1)) # (!\irig|hour_s\(3))))) # (!\irig|hour_s\(2) & (\irig|hour_s\(4) & ((\irig|hour_s\(3)) # (!\irig|hour_s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(3),
	datab => \irig|hour_s\(2),
	datac => \irig|hour_s\(1),
	datad => \irig|hour_s\(4),
	combout => \irig|aux~59_combout\);

-- Location: FF_X28_Y18_N15
\irig|hour_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	asdata => \irig|aux~59_combout\,
	sload => VCC,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|hour_c\(2));

-- Location: LCCOMB_X24_Y23_N30
\irig|aux~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~60_combout\ = (\irig|hour_s\(3) & (!\irig|hour_s\(1) & (\irig|hour_s\(2) $ (!\irig|hour_s\(4))))) # (!\irig|hour_s\(3) & (!\irig|hour_s\(2) & (\irig|hour_s\(4) & \irig|hour_s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_s\(3),
	datab => \irig|hour_s\(2),
	datac => \irig|hour_s\(4),
	datad => \irig|hour_s\(1),
	combout => \irig|aux~60_combout\);

-- Location: FF_X28_Y18_N11
\irig|hour_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	asdata => \irig|aux~60_combout\,
	sload => VCC,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|hour_c\(3));

-- Location: LCCOMB_X28_Y18_N10
\irig|Mux1~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~65_combout\ = (\irig|cnt\(1) & (((\irig|hour_c\(3)) # (!\irig|cnt\(0))))) # (!\irig|cnt\(1) & (\irig|hour_c\(1) & ((\irig|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_c\(1),
	datab => \irig|cnt\(1),
	datac => \irig|hour_c\(3),
	datad => \irig|cnt\(0),
	combout => \irig|Mux1~65_combout\);

-- Location: LCCOMB_X28_Y18_N14
\irig|Mux1~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~66_combout\ = (\irig|cnt\(0) & (((\irig|Mux1~65_combout\)))) # (!\irig|cnt\(0) & ((\irig|Mux1~65_combout\ & ((\irig|hour_c\(2)))) # (!\irig|Mux1~65_combout\ & (\irig|hour_c\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|hour_c\(0),
	datab => \irig|cnt\(0),
	datac => \irig|hour_c\(2),
	datad => \irig|Mux1~65_combout\,
	combout => \irig|Mux1~66_combout\);

-- Location: LCCOMB_X30_Y18_N20
\irig|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Equal6~0_combout\ = (!\irig|tmp\(2) & !\irig|tmp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|tmp\(2),
	datad => \irig|tmp\(1),
	combout => \irig|Equal6~0_combout\);

-- Location: LCCOMB_X30_Y18_N4
\irig|Mux1~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~67_combout\ = (!\irig|tmp\(3) & ((\irig|Mux1~66_combout\ & (\irig|Mux1~6_combout\)) # (!\irig|Mux1~66_combout\ & ((\irig|Equal6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(3),
	datab => \irig|Mux1~6_combout\,
	datac => \irig|Mux1~66_combout\,
	datad => \irig|Equal6~0_combout\,
	combout => \irig|Mux1~67_combout\);

-- Location: LCCOMB_X30_Y18_N14
\irig|Equal17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Equal17~0_combout\ = (\irig|cnt\(1) & \irig|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|cnt\(1),
	datad => \irig|cnt\(0),
	combout => \irig|Equal17~0_combout\);

-- Location: LCCOMB_X22_Y17_N22
\irig|aux~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~52_combout\ = (\irig|sec_s\(4) & (!\irig|sec_s\(2) & (\irig|sec_s\(5) $ (!\irig|sec_s\(3))))) # (!\irig|sec_s\(4) & (\irig|sec_s\(5) & (!\irig|sec_s\(3) & \irig|sec_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(4),
	datab => \irig|sec_s\(5),
	datac => \irig|sec_s\(3),
	datad => \irig|sec_s\(2),
	combout => \irig|aux~52_combout\);

-- Location: LCCOMB_X22_Y17_N14
\irig|aux~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~50_combout\ = (\irig|sec_s\(4) & ((\irig|sec_s\(2) & (\irig|sec_s\(5) & !\irig|sec_s\(3))) # (!\irig|sec_s\(2) & ((\irig|sec_s\(5)) # (!\irig|sec_s\(3)))))) # (!\irig|sec_s\(4) & (((\irig|sec_s\(3)) # (!\irig|sec_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(2),
	datab => \irig|sec_s\(4),
	datac => \irig|sec_s\(5),
	datad => \irig|sec_s\(3),
	combout => \irig|aux~50_combout\);

-- Location: LCCOMB_X23_Y17_N4
\irig|LessThan13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan13~0_combout\ = (!\irig|sec_s\(1) & (\irig|sec_s\(2) $ (\irig|aux~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(2),
	datac => \irig|aux~50_combout\,
	datad => \irig|sec_s\(1),
	combout => \irig|LessThan13~0_combout\);

-- Location: LCCOMB_X23_Y17_N30
\irig|aux~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~51_combout\ = (\irig|sec_s\(5) & (!\irig|sec_s\(3) & ((\irig|sec_s\(4)) # (!\irig|sec_s\(2))))) # (!\irig|sec_s\(5) & (\irig|sec_s\(3) & ((\irig|sec_s\(2)) # (!\irig|sec_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(5),
	datab => \irig|sec_s\(4),
	datac => \irig|sec_s\(2),
	datad => \irig|sec_s\(3),
	combout => \irig|aux~51_combout\);

-- Location: LCCOMB_X23_Y17_N28
\irig|LessThan13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan13~1_combout\ = (!\irig|aux~52_combout\ & ((\irig|LessThan13~0_combout\) # (!\irig|aux~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~52_combout\,
	datac => \irig|LessThan13~0_combout\,
	datad => \irig|aux~51_combout\,
	combout => \irig|LessThan13~1_combout\);

-- Location: LCCOMB_X23_Y17_N6
\irig|Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add14~0_combout\ = \irig|sec_s\(1) $ (VCC)
-- \irig|Add14~1\ = CARRY(\irig|sec_s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|sec_s\(1),
	datad => VCC,
	combout => \irig|Add14~0_combout\,
	cout => \irig|Add14~1\);

-- Location: LCCOMB_X23_Y17_N8
\irig|Add14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add14~2_combout\ = (\irig|Add14~1\ & ((\irig|aux~50_combout\ $ (!\irig|sec_s\(2))))) # (!\irig|Add14~1\ & (\irig|aux~50_combout\ $ ((\irig|sec_s\(2)))))
-- \irig|Add14~3\ = CARRY((!\irig|Add14~1\ & (\irig|aux~50_combout\ $ (\irig|sec_s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~50_combout\,
	datab => \irig|sec_s\(2),
	datad => VCC,
	cin => \irig|Add14~1\,
	combout => \irig|Add14~2_combout\,
	cout => \irig|Add14~3\);

-- Location: LCCOMB_X23_Y17_N10
\irig|Add14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add14~4_combout\ = (\irig|aux~51_combout\ & (\irig|Add14~3\ $ (GND))) # (!\irig|aux~51_combout\ & (!\irig|Add14~3\ & VCC))
-- \irig|Add14~5\ = CARRY((\irig|aux~51_combout\ & !\irig|Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~51_combout\,
	datad => VCC,
	cin => \irig|Add14~3\,
	combout => \irig|Add14~4_combout\,
	cout => \irig|Add14~5\);

-- Location: LCCOMB_X23_Y17_N14
\irig|Add14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add14~8_combout\ = (\irig|Add14~7\ & ((((!\irig|Add13~0_combout\ & !\irig|aux~50_combout\))))) # (!\irig|Add14~7\ & (((!\irig|Add13~0_combout\ & !\irig|aux~50_combout\)) # (GND)))
-- \irig|Add14~9\ = CARRY(((!\irig|Add13~0_combout\ & !\irig|aux~50_combout\)) # (!\irig|Add14~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add13~0_combout\,
	datab => \irig|aux~50_combout\,
	datad => VCC,
	cin => \irig|Add14~7\,
	combout => \irig|Add14~8_combout\,
	cout => \irig|Add14~9\);

-- Location: LCCOMB_X23_Y17_N16
\irig|Add14~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add14~10_combout\ = !\irig|Add14~9\
-- \irig|Add14~11\ = CARRY(!\irig|Add14~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \irig|Add14~9\,
	combout => \irig|Add14~10_combout\,
	cout => \irig|Add14~11\);

-- Location: LCCOMB_X23_Y17_N22
\irig|aux~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~54_combout\ = (\irig|Add14~10_combout\ & ((\irig|aux~52_combout\) # ((\irig|aux~51_combout\ & !\irig|LessThan13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~51_combout\,
	datab => \irig|LessThan13~0_combout\,
	datac => \irig|aux~52_combout\,
	datad => \irig|Add14~10_combout\,
	combout => \irig|aux~54_combout\);

-- Location: LCCOMB_X23_Y17_N18
\irig|Add14~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add14~12_combout\ = \irig|Add14~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \irig|Add14~11\,
	combout => \irig|Add14~12_combout\);

-- Location: LCCOMB_X23_Y17_N0
\irig|LessThan14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan14~0_combout\ = (\irig|Add14~6_combout\) # ((\irig|Add14~8_combout\) # (\irig|Add14~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add14~6_combout\,
	datac => \irig|Add14~8_combout\,
	datad => \irig|Add14~12_combout\,
	combout => \irig|LessThan14~0_combout\);

-- Location: LCCOMB_X23_Y17_N2
\irig|LessThan14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan14~1_combout\ = (\irig|aux~53_combout\) # ((\irig|aux~54_combout\) # ((!\irig|LessThan13~1_combout\ & \irig|LessThan14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~53_combout\,
	datab => \irig|LessThan13~1_combout\,
	datac => \irig|aux~54_combout\,
	datad => \irig|LessThan14~0_combout\,
	combout => \irig|LessThan14~1_combout\);

-- Location: FF_X30_Y18_N7
\irig|sec_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	asdata => \irig|LessThan14~1_combout\,
	sload => VCC,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|sec_c\(3));

-- Location: LCCOMB_X30_Y18_N6
\irig|Mux1~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~57_combout\ = (!\irig|cnt\(0) & ((\irig|cnt\(1) & (\irig|sec_c\(4))) # (!\irig|cnt\(1) & ((\irig|sec_c\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_c\(4),
	datab => \irig|cnt\(0),
	datac => \irig|sec_c\(3),
	datad => \irig|cnt\(1),
	combout => \irig|Mux1~57_combout\);

-- Location: LCCOMB_X30_Y18_N18
\irig|Mux1~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~58_combout\ = (\irig|Mux1~6_combout\ & ((\irig|Mux1~57_combout\) # ((\irig|sec_c\(5) & \irig|Equal17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_c\(5),
	datab => \irig|Mux1~6_combout\,
	datac => \irig|Equal17~0_combout\,
	datad => \irig|Mux1~57_combout\,
	combout => \irig|Mux1~58_combout\);

-- Location: LCCOMB_X30_Y18_N8
\irig|Mux1~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~59_combout\ = (!\irig|tmp\(3) & ((\irig|Mux1~58_combout\) # ((!\irig|Mux1~29_combout\ & \irig|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mux1~29_combout\,
	datab => \irig|Equal6~0_combout\,
	datac => \irig|tmp\(3),
	datad => \irig|Mux1~58_combout\,
	combout => \irig|Mux1~59_combout\);

-- Location: LCCOMB_X30_Y18_N22
\irig|Mux1~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~62_combout\ = (!\irig|tmp\(1) & (!\irig|tmp\(2) & ((\irig|cnt\(0)) # (\irig|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(1),
	datab => \irig|cnt\(0),
	datac => \irig|tmp\(2),
	datad => \irig|cnt\(1),
	combout => \irig|Mux1~62_combout\);

-- Location: LCCOMB_X30_Y18_N30
\irig|Mux1~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~29_combout\ = (!\irig|cnt\(1) & \irig|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|cnt\(1),
	datad => \irig|cnt\(0),
	combout => \irig|Mux1~29_combout\);

-- Location: LCCOMB_X23_Y17_N20
\irig|aux~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~53_combout\ = (\irig|aux~52_combout\ & (((\irig|Add14~4_combout\)))) # (!\irig|aux~52_combout\ & (\irig|aux~51_combout\ & ((\irig|LessThan13~0_combout\) # (\irig|Add14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~52_combout\,
	datab => \irig|aux~51_combout\,
	datac => \irig|LessThan13~0_combout\,
	datad => \irig|Add14~4_combout\,
	combout => \irig|aux~53_combout\);

-- Location: LCCOMB_X24_Y20_N0
\irig|Add15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add15~0_combout\ = \irig|aux~53_combout\ $ (VCC)
-- \irig|Add15~1\ = CARRY(\irig|aux~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~53_combout\,
	datad => VCC,
	combout => \irig|Add15~0_combout\,
	cout => \irig|Add15~1\);

-- Location: LCCOMB_X26_Y20_N18
\irig|aux~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~56_combout\ = (\irig|LessThan14~1_combout\ & \irig|Add15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan14~1_combout\,
	datad => \irig|Add15~0_combout\,
	combout => \irig|aux~56_combout\);

-- Location: LCCOMB_X24_Y20_N2
\irig|Add15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add15~2_combout\ = (\irig|Add14~6_combout\ & ((\irig|LessThan13~1_combout\ & (!\irig|Add15~1\)) # (!\irig|LessThan13~1_combout\ & (\irig|Add15~1\ & VCC)))) # (!\irig|Add14~6_combout\ & (((!\irig|Add15~1\))))
-- \irig|Add15~3\ = CARRY((!\irig|Add15~1\ & ((\irig|LessThan13~1_combout\) # (!\irig|Add14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add14~6_combout\,
	datab => \irig|LessThan13~1_combout\,
	datad => VCC,
	cin => \irig|Add15~1\,
	combout => \irig|Add15~2_combout\,
	cout => \irig|Add15~3\);

-- Location: LCCOMB_X26_Y20_N20
\irig|aux~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~55_combout\ = (\irig|LessThan14~1_combout\ & \irig|Add15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan14~1_combout\,
	datad => \irig|Add15~2_combout\,
	combout => \irig|aux~55_combout\);

-- Location: LCCOMB_X24_Y20_N4
\irig|Add15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add15~4_combout\ = (\irig|Add15~3\ & ((((\irig|Add14~8_combout\ & !\irig|LessThan13~1_combout\))))) # (!\irig|Add15~3\ & (((\irig|Add14~8_combout\ & !\irig|LessThan13~1_combout\)) # (GND)))
-- \irig|Add15~5\ = CARRY(((\irig|Add14~8_combout\ & !\irig|LessThan13~1_combout\)) # (!\irig|Add15~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add14~8_combout\,
	datab => \irig|LessThan13~1_combout\,
	datad => VCC,
	cin => \irig|Add15~3\,
	combout => \irig|Add15~4_combout\,
	cout => \irig|Add15~5\);

-- Location: LCCOMB_X24_Y20_N6
\irig|Add15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add15~6_combout\ = (\irig|aux~54_combout\ & (\irig|Add15~5\ & VCC)) # (!\irig|aux~54_combout\ & (!\irig|Add15~5\))
-- \irig|Add15~7\ = CARRY((!\irig|aux~54_combout\ & !\irig|Add15~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~54_combout\,
	datad => VCC,
	cin => \irig|Add15~5\,
	combout => \irig|Add15~6_combout\,
	cout => \irig|Add15~7\);

-- Location: LCCOMB_X24_Y20_N8
\irig|Add15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add15~8_combout\ = (\irig|Add15~7\ & ((((\irig|Add14~12_combout\ & !\irig|LessThan13~1_combout\))))) # (!\irig|Add15~7\ & (((\irig|Add14~12_combout\ & !\irig|LessThan13~1_combout\)) # (GND)))
-- \irig|Add15~9\ = CARRY(((\irig|Add14~12_combout\ & !\irig|LessThan13~1_combout\)) # (!\irig|Add15~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add14~12_combout\,
	datab => \irig|LessThan13~1_combout\,
	datad => VCC,
	cin => \irig|Add15~7\,
	combout => \irig|Add15~8_combout\,
	cout => \irig|Add15~9\);

-- Location: LCCOMB_X24_Y20_N10
\irig|Add15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add15~10_combout\ = (\irig|Add14~12_combout\ & ((\irig|LessThan13~1_combout\ & (!\irig|Add15~9\)) # (!\irig|LessThan13~1_combout\ & (\irig|Add15~9\ & VCC)))) # (!\irig|Add14~12_combout\ & (((!\irig|Add15~9\))))
-- \irig|Add15~11\ = CARRY((!\irig|Add15~9\ & ((\irig|LessThan13~1_combout\) # (!\irig|Add14~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add14~12_combout\,
	datab => \irig|LessThan13~1_combout\,
	datad => VCC,
	cin => \irig|Add15~9\,
	combout => \irig|Add15~10_combout\,
	cout => \irig|Add15~11\);

-- Location: LCCOMB_X24_Y20_N22
\irig|LessThan15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan15~0_combout\ = (\irig|Add15~6_combout\) # ((\irig|Add15~4_combout\) # ((\irig|Add15~8_combout\) # (\irig|Add15~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add15~6_combout\,
	datab => \irig|Add15~4_combout\,
	datac => \irig|Add15~8_combout\,
	datad => \irig|Add15~10_combout\,
	combout => \irig|LessThan15~0_combout\);

-- Location: LCCOMB_X24_Y20_N12
\irig|Add15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add15~12_combout\ = \irig|Add15~11\ $ (((\irig|Add14~12_combout\ & !\irig|LessThan13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add14~12_combout\,
	datad => \irig|LessThan13~1_combout\,
	cin => \irig|Add15~11\,
	combout => \irig|Add15~12_combout\);

-- Location: LCCOMB_X24_Y20_N28
\irig|LessThan15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan15~1_combout\ = (\irig|LessThan14~1_combout\ & ((\irig|LessThan15~0_combout\) # (\irig|Add15~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan14~1_combout\,
	datac => \irig|LessThan15~0_combout\,
	datad => \irig|Add15~12_combout\,
	combout => \irig|LessThan15~1_combout\);

-- Location: LCCOMB_X24_Y20_N18
\irig|LessThan15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan15~2_combout\ = (\irig|aux~57_combout\) # ((\irig|aux~56_combout\) # ((\irig|aux~55_combout\) # (\irig|LessThan15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|aux~57_combout\,
	datab => \irig|aux~56_combout\,
	datac => \irig|aux~55_combout\,
	datad => \irig|LessThan15~1_combout\,
	combout => \irig|LessThan15~2_combout\);

-- Location: FF_X27_Y20_N25
\irig|sec_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	asdata => \irig|LessThan15~2_combout\,
	sload => VCC,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|sec_c\(2));

-- Location: LCCOMB_X23_Y17_N24
\irig|aux~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~57_combout\ = (\irig|LessThan13~1_combout\ & (\irig|sec_s\(2) $ ((!\irig|aux~50_combout\)))) # (!\irig|LessThan13~1_combout\ & (((\irig|Add14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(2),
	datab => \irig|aux~50_combout\,
	datac => \irig|Add14~2_combout\,
	datad => \irig|LessThan13~1_combout\,
	combout => \irig|aux~57_combout\);

-- Location: LCCOMB_X26_Y20_N0
\irig|Add16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add16~0_combout\ = \irig|aux~57_combout\ $ (VCC)
-- \irig|Add16~1\ = CARRY(\irig|aux~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~57_combout\,
	datad => VCC,
	combout => \irig|Add16~0_combout\,
	cout => \irig|Add16~1\);

-- Location: LCCOMB_X26_Y20_N4
\irig|Add16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add16~4_combout\ = (\irig|aux~55_combout\ & ((GND) # (!\irig|Add16~3\))) # (!\irig|aux~55_combout\ & (\irig|Add16~3\ $ (GND)))
-- \irig|Add16~5\ = CARRY((\irig|aux~55_combout\) # (!\irig|Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|aux~55_combout\,
	datad => VCC,
	cin => \irig|Add16~3\,
	combout => \irig|Add16~4_combout\,
	cout => \irig|Add16~5\);

-- Location: LCCOMB_X26_Y20_N6
\irig|Add16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add16~6_combout\ = (\irig|Add15~4_combout\ & ((\irig|LessThan14~1_combout\ & (\irig|Add16~5\ & VCC)) # (!\irig|LessThan14~1_combout\ & (!\irig|Add16~5\)))) # (!\irig|Add15~4_combout\ & (((!\irig|Add16~5\))))
-- \irig|Add16~7\ = CARRY((!\irig|Add16~5\ & ((!\irig|LessThan14~1_combout\) # (!\irig|Add15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add15~4_combout\,
	datab => \irig|LessThan14~1_combout\,
	datad => VCC,
	cin => \irig|Add16~5\,
	combout => \irig|Add16~6_combout\,
	cout => \irig|Add16~7\);

-- Location: LCCOMB_X26_Y20_N8
\irig|Add16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add16~8_combout\ = (\irig|Add16~7\ & ((((\irig|LessThan14~1_combout\ & \irig|Add15~6_combout\))))) # (!\irig|Add16~7\ & (((\irig|LessThan14~1_combout\ & \irig|Add15~6_combout\)) # (GND)))
-- \irig|Add16~9\ = CARRY(((\irig|LessThan14~1_combout\ & \irig|Add15~6_combout\)) # (!\irig|Add16~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan14~1_combout\,
	datab => \irig|Add15~6_combout\,
	datad => VCC,
	cin => \irig|Add16~7\,
	combout => \irig|Add16~8_combout\,
	cout => \irig|Add16~9\);

-- Location: LCCOMB_X27_Y20_N24
\irig|Add16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add16~10_combout\ = (\irig|LessThan15~2_combout\ & \irig|Add16~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan15~2_combout\,
	datad => \irig|Add16~8_combout\,
	combout => \irig|Add16~10_combout\);

-- Location: LCCOMB_X26_Y20_N10
\irig|Add16~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add16~11_combout\ = (\irig|LessThan14~1_combout\ & ((\irig|Add15~8_combout\ & (\irig|Add16~9\ & VCC)) # (!\irig|Add15~8_combout\ & (!\irig|Add16~9\)))) # (!\irig|LessThan14~1_combout\ & (((!\irig|Add16~9\))))
-- \irig|Add16~12\ = CARRY((!\irig|Add16~9\ & ((!\irig|Add15~8_combout\) # (!\irig|LessThan14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan14~1_combout\,
	datab => \irig|Add15~8_combout\,
	datad => VCC,
	cin => \irig|Add16~9\,
	combout => \irig|Add16~11_combout\,
	cout => \irig|Add16~12\);

-- Location: LCCOMB_X26_Y20_N28
\irig|Add16~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add16~13_combout\ = (\irig|LessThan15~2_combout\ & \irig|Add16~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan15~2_combout\,
	datad => \irig|Add16~11_combout\,
	combout => \irig|Add16~13_combout\);

-- Location: LCCOMB_X26_Y20_N14
\irig|Add16~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add16~20_combout\ = \irig|Add16~15\ $ (((!\irig|Add15~12_combout\) # (!\irig|LessThan14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \irig|LessThan14~1_combout\,
	datad => \irig|Add15~12_combout\,
	cin => \irig|Add16~15\,
	combout => \irig|Add16~20_combout\);

-- Location: LCCOMB_X24_Y20_N24
\irig|aux~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|aux~58_combout\ = (\irig|LessThan13~1_combout\ & (\irig|sec_s\(1))) # (!\irig|LessThan13~1_combout\ & ((\irig|Add14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_s\(1),
	datac => \irig|Add14~0_combout\,
	datad => \irig|LessThan13~1_combout\,
	combout => \irig|aux~58_combout\);

-- Location: LCCOMB_X26_Y20_N26
\irig|Add16~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add16~19_combout\ = (\irig|LessThan15~2_combout\ & \irig|Add16~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|LessThan15~2_combout\,
	datad => \irig|Add16~6_combout\,
	combout => \irig|Add16~19_combout\);

-- Location: LCCOMB_X26_Y20_N16
\irig|Add16~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Add16~18_combout\ = (\irig|Add16~4_combout\ & \irig|LessThan15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|Add16~4_combout\,
	datad => \irig|LessThan15~2_combout\,
	combout => \irig|Add16~18_combout\);

-- Location: LCCOMB_X26_Y20_N24
\irig|LessThan16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan16~2_combout\ = (!\irig|Add16~17_combout\ & (!\irig|aux~58_combout\ & (!\irig|Add16~19_combout\ & !\irig|Add16~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add16~17_combout\,
	datab => \irig|aux~58_combout\,
	datac => \irig|Add16~19_combout\,
	datad => \irig|Add16~18_combout\,
	combout => \irig|LessThan16~2_combout\);

-- Location: LCCOMB_X26_Y20_N30
\irig|LessThan16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan16~4_combout\ = (\irig|LessThan16~2_combout\ & (((!\irig|Add16~0_combout\ & !\irig|Add16~20_combout\)) # (!\irig|LessThan15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|LessThan15~2_combout\,
	datab => \irig|Add16~0_combout\,
	datac => \irig|Add16~20_combout\,
	datad => \irig|LessThan16~2_combout\,
	combout => \irig|LessThan16~4_combout\);

-- Location: LCCOMB_X27_Y20_N28
\irig|LessThan16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan16~3_combout\ = (\irig|Add16~16_combout\) # ((\irig|Add16~10_combout\) # ((\irig|Add16~13_combout\) # (!\irig|LessThan16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Add16~16_combout\,
	datab => \irig|Add16~10_combout\,
	datac => \irig|Add16~13_combout\,
	datad => \irig|LessThan16~4_combout\,
	combout => \irig|LessThan16~3_combout\);

-- Location: FF_X27_Y20_N29
\irig|sec_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|LessThan16~3_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|sec_c\(1));

-- Location: LCCOMB_X30_Y18_N2
\irig|Mux1~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~60_combout\ = (\irig|cnt\(1) & ((\irig|cnt\(0) & (\irig|sec_c\(2))) # (!\irig|cnt\(0) & ((\irig|sec_c\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(0),
	datab => \irig|cnt\(1),
	datac => \irig|sec_c\(2),
	datad => \irig|sec_c\(1),
	combout => \irig|Mux1~60_combout\);

-- Location: LCCOMB_X30_Y18_N24
\irig|Mux1~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~61_combout\ = (\irig|Mux1~6_combout\ & ((\irig|Mux1~60_combout\) # ((\irig|sec_c\(0) & \irig|Mux1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|sec_c\(0),
	datab => \irig|Mux1~6_combout\,
	datac => \irig|Mux1~29_combout\,
	datad => \irig|Mux1~60_combout\,
	combout => \irig|Mux1~61_combout\);

-- Location: LCCOMB_X30_Y18_N0
\irig|Mux1~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~63_combout\ = (!\irig|tmp\(3) & ((\irig|Mux1~62_combout\) # (\irig|Mux1~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|tmp\(3),
	datac => \irig|Mux1~62_combout\,
	datad => \irig|Mux1~61_combout\,
	combout => \irig|Mux1~63_combout\);

-- Location: LCCOMB_X30_Y18_N26
\irig|Mux1~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~64_combout\ = (\irig|cnt\(4) & (\irig|cnt\(2))) # (!\irig|cnt\(4) & ((\irig|cnt\(2) & (\irig|Mux1~59_combout\)) # (!\irig|cnt\(2) & ((\irig|Mux1~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(4),
	datab => \irig|cnt\(2),
	datac => \irig|Mux1~59_combout\,
	datad => \irig|Mux1~63_combout\,
	combout => \irig|Mux1~64_combout\);

-- Location: LCCOMB_X29_Y18_N26
\irig|Mux1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~54_combout\ = (!\irig|cnt\(1) & !\irig|tmp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|cnt\(1),
	datad => \irig|tmp\(3),
	combout => \irig|Mux1~54_combout\);

-- Location: LCCOMB_X27_Y21_N20
\irig|LessThan18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|LessThan18~0_combout\ = (\irig|min_s\(5) & ((\irig|min_s\(4)) # (\irig|min_s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|min_s\(5),
	datac => \irig|min_s\(4),
	datad => \irig|min_s\(3),
	combout => \irig|LessThan18~0_combout\);

-- Location: FF_X27_Y21_N21
\irig|min_c[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|LessThan18~0_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|min_c\(6));

-- Location: LCCOMB_X27_Y21_N22
\irig|min_c[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|min_c[5]~1_combout\ = !\irig|aux~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irig|aux~39_combout\,
	combout => \irig|min_c[5]~1_combout\);

-- Location: FF_X27_Y21_N23
\irig|min_c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|min_c[5]~1_combout\,
	ena => \irig|ctrlcon~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|min_c\(5));

-- Location: LCCOMB_X27_Y21_N0
\irig|Mux1~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~55_combout\ = (\irig|cnt\(0) & (\irig|min_c\(6))) # (!\irig|cnt\(0) & ((\irig|min_c\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irig|min_c\(6),
	datac => \irig|min_c\(5),
	datad => \irig|cnt\(0),
	combout => \irig|Mux1~55_combout\);

-- Location: LCCOMB_X30_Y18_N28
\irig|Mux1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~56_combout\ = (\irig|Mux1~54_combout\ & ((\irig|Mux1~55_combout\ & ((\irig|Mux1~6_combout\))) # (!\irig|Mux1~55_combout\ & (\irig|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Equal6~0_combout\,
	datab => \irig|Mux1~6_combout\,
	datac => \irig|Mux1~54_combout\,
	datad => \irig|Mux1~55_combout\,
	combout => \irig|Mux1~56_combout\);

-- Location: LCCOMB_X30_Y18_N10
\irig|Mux1~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~68_combout\ = (\irig|cnt\(4) & ((\irig|Mux1~64_combout\ & (\irig|Mux1~67_combout\)) # (!\irig|Mux1~64_combout\ & ((\irig|Mux1~56_combout\))))) # (!\irig|cnt\(4) & (((\irig|Mux1~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(4),
	datab => \irig|Mux1~67_combout\,
	datac => \irig|Mux1~64_combout\,
	datad => \irig|Mux1~56_combout\,
	combout => \irig|Mux1~68_combout\);

-- Location: LCCOMB_X27_Y18_N4
\irig|Mux1~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|Mux1~69_combout\ = (\irig|cnt\(5) & (\irig|cnt\(3))) # (!\irig|cnt\(5) & ((\irig|cnt\(3) & (\irig|Mux1~53_combout\)) # (!\irig|cnt\(3) & ((\irig|Mux1~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(5),
	datab => \irig|cnt\(3),
	datac => \irig|Mux1~53_combout\,
	datad => \irig|Mux1~68_combout\,
	combout => \irig|Mux1~69_combout\);

-- Location: LCCOMB_X27_Y18_N10
\irig|output~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~42_combout\ = (\irig|Mux1~69_combout\ & (((\irig|output~40_combout\)))) # (!\irig|Mux1~69_combout\ & (\irig|Mux1~39_combout\ & (\irig|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|Mux1~39_combout\,
	datab => \irig|cnt\(5),
	datac => \irig|Mux1~69_combout\,
	datad => \irig|output~40_combout\,
	combout => \irig|output~42_combout\);

-- Location: LCCOMB_X27_Y18_N28
\irig|output~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~43_combout\ = (\irig|output~14_combout\) # ((\irig|output~41_combout\ & ((\irig|cnt\(6)) # (\irig|output~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|cnt\(6),
	datab => \irig|output~14_combout\,
	datac => \irig|output~41_combout\,
	datad => \irig|output~42_combout\,
	combout => \irig|output~43_combout\);

-- Location: LCCOMB_X27_Y18_N26
\irig|output\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|output~combout\ = (\enable~input_o\ & ((\irig|output~44_combout\ & ((\irig|output~43_combout\))) # (!\irig|output~44_combout\ & (\irig|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irig|output~combout\,
	datab => \enable~input_o\,
	datac => \irig|output~44_combout\,
	datad => \irig|output~43_combout\,
	combout => \irig|output~combout\);

-- Location: LCCOMB_X17_Y28_N2
\divisor|pre_pps~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|pre_pps~0_combout\ = !\pps~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pps~input_o\,
	combout => \divisor|pre_pps~0_combout\);

-- Location: FF_X17_Y28_N29
\divisor|pre_pps\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \divisor|pre_pps~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|pre_pps~q\);

-- Location: LCCOMB_X16_Y24_N28
\divisor|aux~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~4_combout\ = (\divisor|Add0~48_combout\ & !\divisor|contar~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Add0~48_combout\,
	datab => \divisor|contar~0_combout\,
	combout => \divisor|aux~4_combout\);

-- Location: FF_X16_Y24_N29
\divisor|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(24));

-- Location: LCCOMB_X16_Y24_N22
\divisor|aux~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~12_combout\ = (\divisor|Add0~32_combout\ & !\divisor|contar~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Add0~32_combout\,
	datab => \divisor|contar~0_combout\,
	combout => \divisor|aux~12_combout\);

-- Location: FF_X16_Y24_N23
\divisor|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(16));

-- Location: LCCOMB_X15_Y25_N0
\divisor|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~0_combout\ = \divisor|cnt\(0) $ (VCC)
-- \divisor|Add0~1\ = CARRY(\divisor|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cnt\(0),
	datad => VCC,
	combout => \divisor|Add0~0_combout\,
	cout => \divisor|Add0~1\);

-- Location: LCCOMB_X15_Y25_N2
\divisor|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~2_combout\ = (\divisor|cnt\(1) & (!\divisor|Add0~1\)) # (!\divisor|cnt\(1) & ((\divisor|Add0~1\) # (GND)))
-- \divisor|Add0~3\ = CARRY((!\divisor|Add0~1\) # (!\divisor|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(1),
	datad => VCC,
	cin => \divisor|Add0~1\,
	combout => \divisor|Add0~2_combout\,
	cout => \divisor|Add0~3\);

-- Location: LCCOMB_X16_Y25_N28
\divisor|aux~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~29_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contar~0_combout\,
	datad => \divisor|Add0~2_combout\,
	combout => \divisor|aux~29_combout\);

-- Location: FF_X16_Y25_N29
\divisor|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(1));

-- Location: LCCOMB_X15_Y25_N4
\divisor|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~4_combout\ = (\divisor|cnt\(2) & (\divisor|Add0~3\ $ (GND))) # (!\divisor|cnt\(2) & (!\divisor|Add0~3\ & VCC))
-- \divisor|Add0~5\ = CARRY((\divisor|cnt\(2) & !\divisor|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(2),
	datad => VCC,
	cin => \divisor|Add0~3\,
	combout => \divisor|Add0~4_combout\,
	cout => \divisor|Add0~5\);

-- Location: LCCOMB_X16_Y25_N10
\divisor|aux~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~30_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contar~0_combout\,
	datac => \divisor|Add0~4_combout\,
	combout => \divisor|aux~30_combout\);

-- Location: FF_X16_Y25_N11
\divisor|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(2));

-- Location: LCCOMB_X15_Y25_N6
\divisor|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~6_combout\ = (\divisor|cnt\(3) & (!\divisor|Add0~5\)) # (!\divisor|cnt\(3) & ((\divisor|Add0~5\) # (GND)))
-- \divisor|Add0~7\ = CARRY((!\divisor|Add0~5\) # (!\divisor|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(3),
	datad => VCC,
	cin => \divisor|Add0~5\,
	combout => \divisor|Add0~6_combout\,
	cout => \divisor|Add0~7\);

-- Location: LCCOMB_X16_Y25_N16
\divisor|aux~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~31_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contar~0_combout\,
	datac => \divisor|Add0~6_combout\,
	combout => \divisor|aux~31_combout\);

-- Location: FF_X16_Y25_N17
\divisor|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(3));

-- Location: LCCOMB_X15_Y25_N8
\divisor|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~8_combout\ = (\divisor|cnt\(4) & (\divisor|Add0~7\ $ (GND))) # (!\divisor|cnt\(4) & (!\divisor|Add0~7\ & VCC))
-- \divisor|Add0~9\ = CARRY((\divisor|cnt\(4) & !\divisor|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(4),
	datad => VCC,
	cin => \divisor|Add0~7\,
	combout => \divisor|Add0~8_combout\,
	cout => \divisor|Add0~9\);

-- Location: LCCOMB_X16_Y25_N12
\divisor|aux~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~24_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contar~0_combout\,
	datad => \divisor|Add0~8_combout\,
	combout => \divisor|aux~24_combout\);

-- Location: FF_X16_Y25_N13
\divisor|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(4));

-- Location: LCCOMB_X15_Y25_N10
\divisor|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~10_combout\ = (\divisor|cnt\(5) & (!\divisor|Add0~9\)) # (!\divisor|cnt\(5) & ((\divisor|Add0~9\) # (GND)))
-- \divisor|Add0~11\ = CARRY((!\divisor|Add0~9\) # (!\divisor|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(5),
	datad => VCC,
	cin => \divisor|Add0~9\,
	combout => \divisor|Add0~10_combout\,
	cout => \divisor|Add0~11\);

-- Location: LCCOMB_X16_Y25_N26
\divisor|aux~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~25_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contar~0_combout\,
	datad => \divisor|Add0~10_combout\,
	combout => \divisor|aux~25_combout\);

-- Location: FF_X16_Y25_N27
\divisor|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(5));

-- Location: LCCOMB_X15_Y25_N12
\divisor|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~12_combout\ = (\divisor|cnt\(6) & (\divisor|Add0~11\ $ (GND))) # (!\divisor|cnt\(6) & (!\divisor|Add0~11\ & VCC))
-- \divisor|Add0~13\ = CARRY((\divisor|cnt\(6) & !\divisor|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(6),
	datad => VCC,
	cin => \divisor|Add0~11\,
	combout => \divisor|Add0~12_combout\,
	cout => \divisor|Add0~13\);

-- Location: LCCOMB_X16_Y25_N0
\divisor|aux~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~26_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contar~0_combout\,
	datad => \divisor|Add0~12_combout\,
	combout => \divisor|aux~26_combout\);

-- Location: FF_X16_Y25_N1
\divisor|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(6));

-- Location: LCCOMB_X15_Y25_N16
\divisor|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~16_combout\ = (\divisor|cnt\(8) & (\divisor|Add0~15\ $ (GND))) # (!\divisor|cnt\(8) & (!\divisor|Add0~15\ & VCC))
-- \divisor|Add0~17\ = CARRY((\divisor|cnt\(8) & !\divisor|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(8),
	datad => VCC,
	cin => \divisor|Add0~15\,
	combout => \divisor|Add0~16_combout\,
	cout => \divisor|Add0~17\);

-- Location: LCCOMB_X16_Y25_N8
\divisor|aux~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~20_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contar~0_combout\,
	datac => \divisor|Add0~16_combout\,
	combout => \divisor|aux~20_combout\);

-- Location: FF_X16_Y25_N9
\divisor|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(8));

-- Location: LCCOMB_X15_Y25_N18
\divisor|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~18_combout\ = (\divisor|cnt\(9) & (!\divisor|Add0~17\)) # (!\divisor|cnt\(9) & ((\divisor|Add0~17\) # (GND)))
-- \divisor|Add0~19\ = CARRY((!\divisor|Add0~17\) # (!\divisor|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(9),
	datad => VCC,
	cin => \divisor|Add0~17\,
	combout => \divisor|Add0~18_combout\,
	cout => \divisor|Add0~19\);

-- Location: LCCOMB_X16_Y25_N18
\divisor|aux~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~21_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contar~0_combout\,
	datad => \divisor|Add0~18_combout\,
	combout => \divisor|aux~21_combout\);

-- Location: FF_X16_Y25_N19
\divisor|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(9));

-- Location: LCCOMB_X15_Y25_N20
\divisor|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~20_combout\ = (\divisor|cnt\(10) & (\divisor|Add0~19\ $ (GND))) # (!\divisor|cnt\(10) & (!\divisor|Add0~19\ & VCC))
-- \divisor|Add0~21\ = CARRY((\divisor|cnt\(10) & !\divisor|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cnt\(10),
	datad => VCC,
	cin => \divisor|Add0~19\,
	combout => \divisor|Add0~20_combout\,
	cout => \divisor|Add0~21\);

-- Location: LCCOMB_X15_Y25_N22
\divisor|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~22_combout\ = (\divisor|cnt\(11) & (!\divisor|Add0~21\)) # (!\divisor|cnt\(11) & ((\divisor|Add0~21\) # (GND)))
-- \divisor|Add0~23\ = CARRY((!\divisor|Add0~21\) # (!\divisor|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cnt\(11),
	datad => VCC,
	cin => \divisor|Add0~21\,
	combout => \divisor|Add0~22_combout\,
	cout => \divisor|Add0~23\);

-- Location: LCCOMB_X15_Y25_N24
\divisor|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~24_combout\ = (\divisor|cnt\(12) & (\divisor|Add0~23\ $ (GND))) # (!\divisor|cnt\(12) & (!\divisor|Add0~23\ & VCC))
-- \divisor|Add0~25\ = CARRY((\divisor|cnt\(12) & !\divisor|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cnt\(12),
	datad => VCC,
	cin => \divisor|Add0~23\,
	combout => \divisor|Add0~24_combout\,
	cout => \divisor|Add0~25\);

-- Location: LCCOMB_X15_Y25_N26
\divisor|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~26_combout\ = (\divisor|cnt\(13) & (!\divisor|Add0~25\)) # (!\divisor|cnt\(13) & ((\divisor|Add0~25\) # (GND)))
-- \divisor|Add0~27\ = CARRY((!\divisor|Add0~25\) # (!\divisor|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(13),
	datad => VCC,
	cin => \divisor|Add0~25\,
	combout => \divisor|Add0~26_combout\,
	cout => \divisor|Add0~27\);

-- Location: LCCOMB_X16_Y25_N14
\divisor|aux~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~17_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contar~0_combout\,
	datac => \divisor|Add0~26_combout\,
	combout => \divisor|aux~17_combout\);

-- Location: FF_X16_Y25_N15
\divisor|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(13));

-- Location: LCCOMB_X15_Y25_N28
\divisor|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~28_combout\ = (\divisor|cnt\(14) & (\divisor|Add0~27\ $ (GND))) # (!\divisor|cnt\(14) & (!\divisor|Add0~27\ & VCC))
-- \divisor|Add0~29\ = CARRY((\divisor|cnt\(14) & !\divisor|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cnt\(14),
	datad => VCC,
	cin => \divisor|Add0~27\,
	combout => \divisor|Add0~28_combout\,
	cout => \divisor|Add0~29\);

-- Location: LCCOMB_X15_Y25_N30
\divisor|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~30_combout\ = (\divisor|cnt\(15) & (!\divisor|Add0~29\)) # (!\divisor|cnt\(15) & ((\divisor|Add0~29\) # (GND)))
-- \divisor|Add0~31\ = CARRY((!\divisor|Add0~29\) # (!\divisor|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(15),
	datad => VCC,
	cin => \divisor|Add0~29\,
	combout => \divisor|Add0~30_combout\,
	cout => \divisor|Add0~31\);

-- Location: LCCOMB_X16_Y25_N22
\divisor|aux~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~19_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contar~0_combout\,
	datad => \divisor|Add0~30_combout\,
	combout => \divisor|aux~19_combout\);

-- Location: FF_X16_Y25_N23
\divisor|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(15));

-- Location: LCCOMB_X15_Y24_N0
\divisor|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~32_combout\ = (\divisor|cnt\(16) & (\divisor|Add0~31\ $ (GND))) # (!\divisor|cnt\(16) & (!\divisor|Add0~31\ & VCC))
-- \divisor|Add0~33\ = CARRY((\divisor|cnt\(16) & !\divisor|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(16),
	datad => VCC,
	cin => \divisor|Add0~31\,
	combout => \divisor|Add0~32_combout\,
	cout => \divisor|Add0~33\);

-- Location: LCCOMB_X15_Y24_N4
\divisor|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~36_combout\ = (\divisor|cnt\(18) & (\divisor|Add0~35\ $ (GND))) # (!\divisor|cnt\(18) & (!\divisor|Add0~35\ & VCC))
-- \divisor|Add0~37\ = CARRY((\divisor|cnt\(18) & !\divisor|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(18),
	datad => VCC,
	cin => \divisor|Add0~35\,
	combout => \divisor|Add0~36_combout\,
	cout => \divisor|Add0~37\);

-- Location: LCCOMB_X16_Y24_N18
\divisor|aux~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~14_combout\ = (\divisor|Add0~36_combout\ & !\divisor|contar~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|Add0~36_combout\,
	datac => \divisor|contar~0_combout\,
	combout => \divisor|aux~14_combout\);

-- Location: FF_X16_Y24_N19
\divisor|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(18));

-- Location: LCCOMB_X15_Y24_N6
\divisor|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~38_combout\ = (\divisor|cnt\(19) & (!\divisor|Add0~37\)) # (!\divisor|cnt\(19) & ((\divisor|Add0~37\) # (GND)))
-- \divisor|Add0~39\ = CARRY((!\divisor|Add0~37\) # (!\divisor|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(19),
	datad => VCC,
	cin => \divisor|Add0~37\,
	combout => \divisor|Add0~38_combout\,
	cout => \divisor|Add0~39\);

-- Location: LCCOMB_X16_Y24_N12
\divisor|aux~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~15_combout\ = (\divisor|Add0~38_combout\ & !\divisor|contar~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|Add0~38_combout\,
	datac => \divisor|contar~0_combout\,
	combout => \divisor|aux~15_combout\);

-- Location: FF_X16_Y24_N13
\divisor|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(19));

-- Location: LCCOMB_X15_Y24_N8
\divisor|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~40_combout\ = (\divisor|cnt\(20) & (\divisor|Add0~39\ $ (GND))) # (!\divisor|cnt\(20) & (!\divisor|Add0~39\ & VCC))
-- \divisor|Add0~41\ = CARRY((\divisor|cnt\(20) & !\divisor|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(20),
	datad => VCC,
	cin => \divisor|Add0~39\,
	combout => \divisor|Add0~40_combout\,
	cout => \divisor|Add0~41\);

-- Location: LCCOMB_X16_Y24_N10
\divisor|aux~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~8_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contar~0_combout\,
	datad => \divisor|Add0~40_combout\,
	combout => \divisor|aux~8_combout\);

-- Location: FF_X16_Y24_N11
\divisor|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(20));

-- Location: LCCOMB_X15_Y24_N10
\divisor|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~42_combout\ = (\divisor|cnt\(21) & (!\divisor|Add0~41\)) # (!\divisor|cnt\(21) & ((\divisor|Add0~41\) # (GND)))
-- \divisor|Add0~43\ = CARRY((!\divisor|Add0~41\) # (!\divisor|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(21),
	datad => VCC,
	cin => \divisor|Add0~41\,
	combout => \divisor|Add0~42_combout\,
	cout => \divisor|Add0~43\);

-- Location: LCCOMB_X16_Y24_N16
\divisor|aux~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~9_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contar~0_combout\,
	datad => \divisor|Add0~42_combout\,
	combout => \divisor|aux~9_combout\);

-- Location: FF_X16_Y24_N17
\divisor|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(21));

-- Location: LCCOMB_X15_Y24_N12
\divisor|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~44_combout\ = (\divisor|cnt\(22) & (\divisor|Add0~43\ $ (GND))) # (!\divisor|cnt\(22) & (!\divisor|Add0~43\ & VCC))
-- \divisor|Add0~45\ = CARRY((\divisor|cnt\(22) & !\divisor|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(22),
	datad => VCC,
	cin => \divisor|Add0~43\,
	combout => \divisor|Add0~44_combout\,
	cout => \divisor|Add0~45\);

-- Location: LCCOMB_X17_Y24_N8
\divisor|aux~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~10_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|contar~0_combout\,
	datad => \divisor|Add0~44_combout\,
	combout => \divisor|aux~10_combout\);

-- Location: FF_X17_Y24_N9
\divisor|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(22));

-- Location: LCCOMB_X15_Y24_N14
\divisor|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~46_combout\ = (\divisor|cnt\(23) & (!\divisor|Add0~45\)) # (!\divisor|cnt\(23) & ((\divisor|Add0~45\) # (GND)))
-- \divisor|Add0~47\ = CARRY((!\divisor|Add0~45\) # (!\divisor|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(23),
	datad => VCC,
	cin => \divisor|Add0~45\,
	combout => \divisor|Add0~46_combout\,
	cout => \divisor|Add0~47\);

-- Location: LCCOMB_X17_Y24_N6
\divisor|aux~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~11_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|contar~0_combout\,
	datad => \divisor|Add0~46_combout\,
	combout => \divisor|aux~11_combout\);

-- Location: FF_X17_Y24_N7
\divisor|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(23));

-- Location: LCCOMB_X15_Y24_N18
\divisor|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~50_combout\ = (\divisor|cnt\(25) & (!\divisor|Add0~49\)) # (!\divisor|cnt\(25) & ((\divisor|Add0~49\) # (GND)))
-- \divisor|Add0~51\ = CARRY((!\divisor|Add0~49\) # (!\divisor|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(25),
	datad => VCC,
	cin => \divisor|Add0~49\,
	combout => \divisor|Add0~50_combout\,
	cout => \divisor|Add0~51\);

-- Location: LCCOMB_X16_Y24_N26
\divisor|aux~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~5_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contar~0_combout\,
	datad => \divisor|Add0~50_combout\,
	combout => \divisor|aux~5_combout\);

-- Location: FF_X16_Y24_N27
\divisor|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(25));

-- Location: LCCOMB_X15_Y24_N20
\divisor|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~52_combout\ = (\divisor|cnt\(26) & (\divisor|Add0~51\ $ (GND))) # (!\divisor|cnt\(26) & (!\divisor|Add0~51\ & VCC))
-- \divisor|Add0~53\ = CARRY((\divisor|cnt\(26) & !\divisor|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(26),
	datad => VCC,
	cin => \divisor|Add0~51\,
	combout => \divisor|Add0~52_combout\,
	cout => \divisor|Add0~53\);

-- Location: LCCOMB_X16_Y24_N0
\divisor|aux~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~6_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contar~0_combout\,
	datad => \divisor|Add0~52_combout\,
	combout => \divisor|aux~6_combout\);

-- Location: FF_X16_Y24_N1
\divisor|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(26));

-- Location: LCCOMB_X16_Y24_N24
\divisor|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Equal0~1_combout\ = (!\divisor|cnt\(27) & (!\divisor|cnt\(26) & (!\divisor|cnt\(25) & !\divisor|cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cnt\(27),
	datab => \divisor|cnt\(26),
	datac => \divisor|cnt\(25),
	datad => \divisor|cnt\(24),
	combout => \divisor|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y24_N2
\divisor|aux~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~1_combout\ = (\divisor|Add0~58_combout\ & !\divisor|contar~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Add0~58_combout\,
	datab => \divisor|contar~0_combout\,
	combout => \divisor|aux~1_combout\);

-- Location: FF_X16_Y24_N3
\divisor|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(29));

-- Location: LCCOMB_X15_Y24_N22
\divisor|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~54_combout\ = (\divisor|cnt\(27) & (!\divisor|Add0~53\)) # (!\divisor|cnt\(27) & ((\divisor|Add0~53\) # (GND)))
-- \divisor|Add0~55\ = CARRY((!\divisor|Add0~53\) # (!\divisor|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cnt\(27),
	datad => VCC,
	cin => \divisor|Add0~53\,
	combout => \divisor|Add0~54_combout\,
	cout => \divisor|Add0~55\);

-- Location: LCCOMB_X15_Y24_N24
\divisor|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~56_combout\ = (\divisor|cnt\(28) & (\divisor|Add0~55\ $ (GND))) # (!\divisor|cnt\(28) & (!\divisor|Add0~55\ & VCC))
-- \divisor|Add0~57\ = CARRY((\divisor|cnt\(28) & !\divisor|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cnt\(28),
	datad => VCC,
	cin => \divisor|Add0~55\,
	combout => \divisor|Add0~56_combout\,
	cout => \divisor|Add0~57\);

-- Location: LCCOMB_X16_Y24_N20
\divisor|aux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~0_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contar~0_combout\,
	datad => \divisor|Add0~56_combout\,
	combout => \divisor|aux~0_combout\);

-- Location: FF_X16_Y24_N21
\divisor|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(28));

-- Location: LCCOMB_X16_Y24_N6
\divisor|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Equal0~0_combout\ = (!\divisor|cnt\(30) & (!\divisor|cnt\(29) & (!\divisor|cnt\(31) & !\divisor|cnt\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cnt\(30),
	datab => \divisor|cnt\(29),
	datac => \divisor|cnt\(31),
	datad => \divisor|cnt\(28),
	combout => \divisor|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y24_N12
\divisor|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Equal0~2_combout\ = (!\divisor|cnt\(21) & (!\divisor|cnt\(20) & (!\divisor|cnt\(22) & !\divisor|cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cnt\(21),
	datab => \divisor|cnt\(20),
	datac => \divisor|cnt\(22),
	datad => \divisor|cnt\(23),
	combout => \divisor|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y24_N10
\divisor|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Equal0~4_combout\ = (\divisor|Equal0~3_combout\ & (\divisor|Equal0~1_combout\ & (\divisor|Equal0~0_combout\ & \divisor|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Equal0~3_combout\,
	datab => \divisor|Equal0~1_combout\,
	datac => \divisor|Equal0~0_combout\,
	datad => \divisor|Equal0~2_combout\,
	combout => \divisor|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y25_N30
\divisor|contar~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|contar~0_combout\ = (\divisor|Equal0~9_combout\ & ((\divisor|Equal0~4_combout\) # ((\divisor|pre_pps~q\ & \pps~input_o\)))) # (!\divisor|Equal0~9_combout\ & (\divisor|pre_pps~q\ & (\pps~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Equal0~9_combout\,
	datab => \divisor|pre_pps~q\,
	datac => \pps~input_o\,
	datad => \divisor|Equal0~4_combout\,
	combout => \divisor|contar~0_combout\);

-- Location: LCCOMB_X16_Y24_N8
\divisor|aux~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|aux~3_combout\ = (!\divisor|contar~0_combout\ & \divisor|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contar~0_combout\,
	datad => \divisor|Add0~62_combout\,
	combout => \divisor|aux~3_combout\);

-- Location: FF_X16_Y24_N9
\divisor|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|aux~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cnt\(31));

-- Location: LCCOMB_X15_Y24_N26
\divisor|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~58_combout\ = (\divisor|cnt\(29) & (!\divisor|Add0~57\)) # (!\divisor|cnt\(29) & ((\divisor|Add0~57\) # (GND)))
-- \divisor|Add0~59\ = CARRY((!\divisor|Add0~57\) # (!\divisor|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cnt\(29),
	datad => VCC,
	cin => \divisor|Add0~57\,
	combout => \divisor|Add0~58_combout\,
	cout => \divisor|Add0~59\);

-- Location: LCCOMB_X15_Y24_N30
\divisor|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|Add0~62_combout\ = \divisor|cnt\(31) $ (\divisor|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cnt\(31),
	cin => \divisor|Add0~61\,
	combout => \divisor|Add0~62_combout\);

-- Location: LCCOMB_X15_Y23_N22
\divisor|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~0_combout\ = (!\divisor|Add0~34_combout\ & (!\divisor|Add0~36_combout\ & (!\divisor|Add0~32_combout\ & !\divisor|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Add0~34_combout\,
	datab => \divisor|Add0~36_combout\,
	datac => \divisor|Add0~32_combout\,
	datad => \divisor|Add0~38_combout\,
	combout => \divisor|LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y23_N12
\divisor|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~1_combout\ = (!\divisor|Add0~2_combout\ & (!\divisor|Add0~4_combout\ & (!\divisor|Add0~0_combout\ & !\divisor|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Add0~2_combout\,
	datab => \divisor|Add0~4_combout\,
	datac => \divisor|Add0~0_combout\,
	datad => \divisor|Add0~6_combout\,
	combout => \divisor|LessThan0~1_combout\);

-- Location: LCCOMB_X15_Y23_N14
\divisor|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~3_combout\ = (!\divisor|Add0~16_combout\ & (!\divisor|Add0~18_combout\ & (!\divisor|Add0~20_combout\ & !\divisor|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Add0~16_combout\,
	datab => \divisor|Add0~18_combout\,
	datac => \divisor|Add0~20_combout\,
	datad => \divisor|Add0~22_combout\,
	combout => \divisor|LessThan0~3_combout\);

-- Location: LCCOMB_X15_Y23_N20
\divisor|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~4_combout\ = (!\divisor|Add0~26_combout\ & (!\divisor|Add0~24_combout\ & (!\divisor|Add0~30_combout\ & !\divisor|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Add0~26_combout\,
	datab => \divisor|Add0~24_combout\,
	datac => \divisor|Add0~30_combout\,
	datad => \divisor|Add0~28_combout\,
	combout => \divisor|LessThan0~4_combout\);

-- Location: LCCOMB_X15_Y23_N28
\divisor|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~5_combout\ = (\divisor|LessThan0~2_combout\ & (\divisor|LessThan0~1_combout\ & (\divisor|LessThan0~3_combout\ & \divisor|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|LessThan0~2_combout\,
	datab => \divisor|LessThan0~1_combout\,
	datac => \divisor|LessThan0~3_combout\,
	datad => \divisor|LessThan0~4_combout\,
	combout => \divisor|LessThan0~5_combout\);

-- Location: LCCOMB_X15_Y23_N24
\divisor|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~6_combout\ = (!\divisor|Add0~40_combout\ & (!\divisor|Add0~46_combout\ & (!\divisor|Add0~42_combout\ & \divisor|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Add0~40_combout\,
	datab => \divisor|Add0~46_combout\,
	datac => \divisor|Add0~42_combout\,
	datad => \divisor|LessThan0~5_combout\,
	combout => \divisor|LessThan0~6_combout\);

-- Location: LCCOMB_X15_Y23_N16
\divisor|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~7_combout\ = (!\divisor|Add0~48_combout\ & (!\divisor|Add0~44_combout\ & (\divisor|LessThan0~0_combout\ & \divisor|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Add0~48_combout\,
	datab => \divisor|Add0~44_combout\,
	datac => \divisor|LessThan0~0_combout\,
	datad => \divisor|LessThan0~6_combout\,
	combout => \divisor|LessThan0~7_combout\);

-- Location: LCCOMB_X15_Y23_N10
\divisor|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~8_combout\ = (!\divisor|Add0~52_combout\ & (!\divisor|Add0~50_combout\ & (!\divisor|Add0~54_combout\ & \divisor|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Add0~52_combout\,
	datab => \divisor|Add0~50_combout\,
	datac => \divisor|Add0~54_combout\,
	datad => \divisor|LessThan0~7_combout\,
	combout => \divisor|LessThan0~8_combout\);

-- Location: LCCOMB_X15_Y23_N18
\divisor|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~9_combout\ = (!\divisor|Add0~56_combout\ & (!\divisor|Add0~58_combout\ & \divisor|LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|Add0~56_combout\,
	datac => \divisor|Add0~58_combout\,
	datad => \divisor|LessThan0~8_combout\,
	combout => \divisor|LessThan0~9_combout\);

-- Location: LCCOMB_X15_Y23_N30
\divisor|LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~10_combout\ = (\divisor|Add0~62_combout\) # ((\divisor|contar~0_combout\) # ((!\divisor|Add0~60_combout\ & \divisor|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Add0~60_combout\,
	datab => \divisor|Add0~62_combout\,
	datac => \divisor|contar~0_combout\,
	datad => \divisor|LessThan0~9_combout\,
	combout => \divisor|LessThan0~10_combout\);

-- Location: FF_X15_Y23_N31
\divisor|clk_ou\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|clk_ou~q\);

-- Location: CLKCTRL_G11
\divisor|clk_ou~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divisor|clk_ou~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divisor|clk_ou~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y17_N10
\irig|irq_ou~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \irig|irq_ou~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \irig|irq_ou~feeder_combout\);

-- Location: FF_X21_Y17_N11
\irig|irq_ou\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clk_ou~clkctrl_outclk\,
	d => \irig|irq_ou~feeder_combout\,
	clrn => \irig|ALT_INV_ctrlclk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irig|irq_ou~q\);

ww_output <= \output~output_o\;

ww_irq_ou <= \irq_ou~output_o\;
END structure;


