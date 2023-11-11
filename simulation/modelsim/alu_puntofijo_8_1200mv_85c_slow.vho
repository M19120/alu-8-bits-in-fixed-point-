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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/09/2023 17:47:56"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu_puntofijo IS
    PORT (
	a : IN IEEE.NUMERIC_STD.signed(7 DOWNTO 0);
	b : IN IEEE.NUMERIC_STD.signed(7 DOWNTO 0);
	buss : IN std_logic_vector(1 DOWNTO 0);
	mover : IN std_logic_vector(1 DOWNTO 0);
	signo : OUT std_logic;
	clk : IN std_logic;
	displays : OUT std_logic_vector(3 DOWNTO 0);
	segments : OUT std_logic_vector(7 DOWNTO 0)
	);
END alu_puntofijo;

-- Design Ports Information
-- signo	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[0]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[1]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- displays[3]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[3]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[4]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[5]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[6]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[7]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buss[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buss[0]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mover[0]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mover[1]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu_puntofijo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_buss : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_mover : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_signo : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_displays : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_segments : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \reset_count[5]~28_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux48~1_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Mux49~1_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux23~10_combout\ : std_logic;
SIGNAL \Mux24~6_combout\ : std_logic;
SIGNAL \Mux23~11_combout\ : std_logic;
SIGNAL \Mux23~12_combout\ : std_logic;
SIGNAL \Mux24~7_combout\ : std_logic;
SIGNAL \Mux23~13_combout\ : std_logic;
SIGNAL \Mux23~15_combout\ : std_logic;
SIGNAL \Mux23~16_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~13_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~22_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \signo~output_o\ : std_logic;
SIGNAL \displays[0]~output_o\ : std_logic;
SIGNAL \displays[1]~output_o\ : std_logic;
SIGNAL \displays[2]~output_o\ : std_logic;
SIGNAL \displays[3]~output_o\ : std_logic;
SIGNAL \segments[0]~output_o\ : std_logic;
SIGNAL \segments[1]~output_o\ : std_logic;
SIGNAL \segments[2]~output_o\ : std_logic;
SIGNAL \segments[3]~output_o\ : std_logic;
SIGNAL \segments[4]~output_o\ : std_logic;
SIGNAL \segments[5]~output_o\ : std_logic;
SIGNAL \segments[6]~output_o\ : std_logic;
SIGNAL \segments[7]~output_o\ : std_logic;
SIGNAL \buss[0]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \mover[0]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \mover[1]~input_o\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux47~1_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux50~1_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \buss[1]~input_o\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \reset_count[0]~18_combout\ : std_logic;
SIGNAL \reset_count[14]~46_combout\ : std_logic;
SIGNAL \reset_count[12]~42_combout\ : std_logic;
SIGNAL \reset_count[12]~feeder_combout\ : std_logic;
SIGNAL \reset_count[4]~26_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \reset_count[0]~19\ : std_logic;
SIGNAL \reset_count[1]~20_combout\ : std_logic;
SIGNAL \reset_count[1]~21\ : std_logic;
SIGNAL \reset_count[2]~22_combout\ : std_logic;
SIGNAL \reset_count[2]~23\ : std_logic;
SIGNAL \reset_count[3]~24_combout\ : std_logic;
SIGNAL \reset_count[3]~25\ : std_logic;
SIGNAL \reset_count[4]~27\ : std_logic;
SIGNAL \reset_count[5]~29\ : std_logic;
SIGNAL \reset_count[6]~31\ : std_logic;
SIGNAL \reset_count[7]~33\ : std_logic;
SIGNAL \reset_count[8]~34_combout\ : std_logic;
SIGNAL \reset_count[8]~35\ : std_logic;
SIGNAL \reset_count[9]~36_combout\ : std_logic;
SIGNAL \reset_count[9]~37\ : std_logic;
SIGNAL \reset_count[10]~38_combout\ : std_logic;
SIGNAL \reset_count[10]~39\ : std_logic;
SIGNAL \reset_count[11]~40_combout\ : std_logic;
SIGNAL \reset_count[11]~41\ : std_logic;
SIGNAL \reset_count[12]~43\ : std_logic;
SIGNAL \reset_count[13]~44_combout\ : std_logic;
SIGNAL \reset_count[13]~45\ : std_logic;
SIGNAL \reset_count[14]~47\ : std_logic;
SIGNAL \reset_count[15]~49\ : std_logic;
SIGNAL \reset_count[16]~50_combout\ : std_logic;
SIGNAL \reset_count[16]~51\ : std_logic;
SIGNAL \reset_count[17]~52_combout\ : std_logic;
SIGNAL \reset_count[15]~48_combout\ : std_logic;
SIGNAL \reset_count[6]~30_combout\ : std_logic;
SIGNAL \reset_count[7]~32_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \selection[0]~1_combout\ : std_logic;
SIGNAL \selection[0]~2_combout\ : std_logic;
SIGNAL \selection[0]~3_combout\ : std_logic;
SIGNAL \selection[1]~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \Mux23~7_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Mux22~7_combout\ : std_logic;
SIGNAL \Mux22~8_combout\ : std_logic;
SIGNAL \Mux23~14_combout\ : std_logic;
SIGNAL \Mux23~9_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Mux23~17_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mux23~18_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux23~8_combout\ : std_logic;
SIGNAL \Mux23~19_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mux23~20_combout\ : std_logic;
SIGNAL \Mux23~21_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \Mux21~7_combout\ : std_logic;
SIGNAL \Mux21~8_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Mux24~8_combout\ : std_logic;
SIGNAL \Mux24~9_combout\ : std_logic;
SIGNAL \Mux24~10_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux24~11_combout\ : std_logic;
SIGNAL \Mux24~12_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL selection : std_logic_vector(1 DOWNTO 0);
SIGNAL reset_count : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_Mux61~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~6_combout\ : std_logic;

BEGIN

ww_a <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(a);
ww_b <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(b);
ww_buss <= buss;
ww_mover <= mover;
signo <= ww_signo;
ww_clk <= clk;
displays <= ww_displays;
segments <= ww_segments;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~1\ & \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\a[7]~input_o\ & \a[6]~input_o\ & \a[5]~input_o\ & \a[4]~input_o\ & \a[3]~input_o\ & \a[2]~input_o\ & \a[1]~input_o\ & \a[0]~input_o\ & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\b[7]~input_o\ & \b[6]~input_o\ & \b[5]~input_o\ & \b[4]~input_o\ & \b[3]~input_o\ & \b[2]~input_o\ & \b[1]~input_o\ & \b[0]~input_o\ & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Mux61~0_combout\ <= NOT \Mux61~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\ALT_INV_Mux23~7_combout\ <= NOT \Mux23~7_combout\;
\ALT_INV_Mux23~6_combout\ <= NOT \Mux23~6_combout\;

-- Location: DSPOUT_X20_Y4_N2
\Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X19_Y5_N6
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\Mux39~0_combout\ $ (\Mux52~0_combout\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\Mux39~0_combout\ & ((!\Add1~3\) # (!\Mux52~0_combout\))) # (!\Mux39~0_combout\ & (!\Mux52~0_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~0_combout\,
	datab => \Mux52~0_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X19_Y5_N8
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Mux51~0_combout\ & ((\Mux38~0_combout\ & (!\Add1~5\)) # (!\Mux38~0_combout\ & ((\Add1~5\) # (GND))))) # (!\Mux51~0_combout\ & ((\Mux38~0_combout\ & (\Add1~5\ & VCC)) # (!\Mux38~0_combout\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\Mux51~0_combout\ & ((!\Add1~5\) # (!\Mux38~0_combout\))) # (!\Mux51~0_combout\ & (!\Mux38~0_combout\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~0_combout\,
	datab => \Mux38~0_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X19_Y5_N12
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Mux49~1_combout\ & ((\Mux36~1_combout\ & (!\Add1~9\)) # (!\Mux36~1_combout\ & ((\Add1~9\) # (GND))))) # (!\Mux49~1_combout\ & ((\Mux36~1_combout\ & (\Add1~9\ & VCC)) # (!\Mux36~1_combout\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\Mux49~1_combout\ & ((!\Add1~9\) # (!\Mux36~1_combout\))) # (!\Mux49~1_combout\ & (!\Mux36~1_combout\ & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~1_combout\,
	datab => \Mux36~1_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X19_Y5_N14
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\Mux48~1_combout\ $ (\Mux35~1_combout\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\Mux48~1_combout\ & (\Mux35~1_combout\ & !\Add1~11\)) # (!\Mux48~1_combout\ & ((\Mux35~1_combout\) # (!\Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~1_combout\,
	datab => \Mux35~1_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X19_Y5_N16
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Mux34~1_combout\ & ((\Mux47~1_combout\ & (!\Add1~13\)) # (!\Mux47~1_combout\ & (\Add1~13\ & VCC)))) # (!\Mux34~1_combout\ & ((\Mux47~1_combout\ & ((\Add1~13\) # (GND))) # (!\Mux47~1_combout\ & (!\Add1~13\))))
-- \Add1~15\ = CARRY((\Mux34~1_combout\ & (\Mux47~1_combout\ & !\Add1~13\)) # (!\Mux34~1_combout\ & ((\Mux47~1_combout\) # (!\Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \Mux47~1_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X19_Y5_N22
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\Mux44~1_combout\ $ (\Mux31~1_combout\ $ (\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\Mux44~1_combout\ & (\Mux31~1_combout\ & !\Add1~19\)) # (!\Mux44~1_combout\ & ((\Mux31~1_combout\) # (!\Add1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~1_combout\,
	datab => \Mux31~1_combout\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X19_Y5_N26
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\Mux29~0_combout\ $ (\Mux42~0_combout\ $ (\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\Mux29~0_combout\ & ((!\Add1~23\) # (!\Mux42~0_combout\))) # (!\Mux29~0_combout\ & (!\Mux42~0_combout\ & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \Mux42~0_combout\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X19_Y5_N28
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\a[7]~input_o\ & ((\b[7]~input_o\ & (!\Add1~25\)) # (!\b[7]~input_o\ & (\Add1~25\ & VCC)))) # (!\a[7]~input_o\ & ((\b[7]~input_o\ & ((\Add1~25\) # (GND))) # (!\b[7]~input_o\ & (!\Add1~25\))))
-- \Add1~27\ = CARRY((\a[7]~input_o\ & (\b[7]~input_o\ & !\Add1~25\)) # (!\a[7]~input_o\ & ((\b[7]~input_o\) # (!\Add1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \b[7]~input_o\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X18_Y5_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Mux51~0_combout\ & ((\Mux38~0_combout\ & (\Add0~5\ & VCC)) # (!\Mux38~0_combout\ & (!\Add0~5\)))) # (!\Mux51~0_combout\ & ((\Mux38~0_combout\ & (!\Add0~5\)) # (!\Mux38~0_combout\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\Mux51~0_combout\ & (!\Mux38~0_combout\ & !\Add0~5\)) # (!\Mux51~0_combout\ & ((!\Add0~5\) # (!\Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~0_combout\,
	datab => \Mux38~0_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X18_Y5_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\Mux37~1_combout\ $ (\Mux50~1_combout\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\Mux37~1_combout\ & ((\Mux50~1_combout\) # (!\Add0~7\))) # (!\Mux37~1_combout\ & (\Mux50~1_combout\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~1_combout\,
	datab => \Mux50~1_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X18_Y5_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Mux34~1_combout\ & ((\Mux47~1_combout\ & (\Add0~13\ & VCC)) # (!\Mux47~1_combout\ & (!\Add0~13\)))) # (!\Mux34~1_combout\ & ((\Mux47~1_combout\ & (!\Add0~13\)) # (!\Mux47~1_combout\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\Mux34~1_combout\ & (!\Mux47~1_combout\ & !\Add0~13\)) # (!\Mux34~1_combout\ & ((!\Add0~13\) # (!\Mux47~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \Mux47~1_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X18_Y5_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\Mux29~0_combout\ $ (\Mux42~0_combout\ $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\Mux29~0_combout\ & ((\Mux42~0_combout\) # (!\Add0~23\))) # (!\Mux29~0_combout\ & (\Mux42~0_combout\ & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \Mux42~0_combout\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X18_Y5_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\b[7]~input_o\ & ((\a[7]~input_o\ & (\Add0~25\ & VCC)) # (!\a[7]~input_o\ & (!\Add0~25\)))) # (!\b[7]~input_o\ & ((\a[7]~input_o\ & (!\Add0~25\)) # (!\a[7]~input_o\ & ((\Add0~25\) # (GND)))))
-- \Add0~27\ = CARRY((\b[7]~input_o\ & (!\a[7]~input_o\ & !\Add0~25\)) # (!\b[7]~input_o\ & ((!\Add0~25\) # (!\a[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \a[7]~input_o\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X16_Y3_N3
\reset_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reset_count[5]~28_combout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reset_count(5));

-- Location: LCCOMB_X17_Y3_N24
\reset_count[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_count[5]~28_combout\ = (reset_count(5) & (!\reset_count[4]~27\)) # (!reset_count(5) & ((\reset_count[4]~27\) # (GND)))
-- \reset_count[5]~29\ = CARRY((!\reset_count[4]~27\) # (!reset_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reset_count(5),
	datad => VCC,
	cin => \reset_count[4]~27\,
	combout => \reset_count[5]~28_combout\,
	cout => \reset_count[5]~29\);

-- Location: LCCOMB_X17_Y5_N0
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\mover[0]~input_o\ & ((\mover[1]~input_o\ & ((\a[7]~input_o\))) # (!\mover[1]~input_o\ & (\a[6]~input_o\)))) # (!\mover[0]~input_o\ & (((\a[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \mover[0]~input_o\,
	datac => \a[7]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X18_Y4_N20
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\mover[0]~input_o\ & ((\mover[1]~input_o\ & (\b[7]~input_o\)) # (!\mover[1]~input_o\ & ((\b[5]~input_o\))))) # (!\mover[0]~input_o\ & (\b[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mover[0]~input_o\,
	datab => \b[7]~input_o\,
	datac => \b[5]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X17_Y5_N12
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (!\mover[1]~input_o\ & ((\mover[0]~input_o\ & ((\a[4]~input_o\))) # (!\mover[0]~input_o\ & (\a[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \mover[0]~input_o\,
	datac => \a[4]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X18_Y4_N22
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\mover[0]~input_o\ & ((\a[1]~input_o\) # ((\mover[1]~input_o\)))) # (!\mover[0]~input_o\ & (((\a[3]~input_o\ & !\mover[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[3]~input_o\,
	datac => \mover[0]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X17_Y5_N8
\Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\Mux34~0_combout\ & (((\a[7]~input_o\) # (!\mover[1]~input_o\)))) # (!\Mux34~0_combout\ & (\a[5]~input_o\ & ((\mover[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \Mux34~0_combout\,
	datac => \a[7]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X21_Y5_N10
\Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\mover[0]~input_o\ & (((\mover[1]~input_o\)))) # (!\mover[0]~input_o\ & ((\mover[1]~input_o\ & ((\b[4]~input_o\))) # (!\mover[1]~input_o\ & (\b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \mover[0]~input_o\,
	datac => \b[4]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X21_Y5_N12
\Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~1_combout\ = (\mover[0]~input_o\ & ((\Mux48~0_combout\ & (\b[6]~input_o\)) # (!\Mux48~0_combout\ & ((\b[0]~input_o\))))) # (!\mover[0]~input_o\ & (((\Mux48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \mover[0]~input_o\,
	datac => \b[0]~input_o\,
	datad => \Mux48~0_combout\,
	combout => \Mux48~1_combout\);

-- Location: LCCOMB_X18_Y4_N12
\Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (!\mover[0]~input_o\ & ((\mover[1]~input_o\ & ((\b[3]~input_o\))) # (!\mover[1]~input_o\ & (\b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mover[0]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X18_Y4_N14
\Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~1_combout\ = (\Mux49~0_combout\) # ((\b[5]~input_o\ & (\mover[0]~input_o\ & \mover[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~0_combout\,
	datab => \b[5]~input_o\,
	datac => \mover[0]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux49~1_combout\);

-- Location: LCCOMB_X17_Y5_N26
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (!\mover[0]~input_o\ & ((\mover[1]~input_o\ & (\a[2]~input_o\)) # (!\mover[1]~input_o\ & ((\a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mover[1]~input_o\,
	datab => \a[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \mover[0]~input_o\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X17_Y5_N20
\Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (\Mux37~0_combout\) # ((\mover[0]~input_o\ & (\a[4]~input_o\ & \mover[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~0_combout\,
	datab => \mover[0]~input_o\,
	datac => \a[4]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux37~1_combout\);

-- Location: LCCOMB_X18_Y4_N4
\Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\mover[1]~input_o\ & ((\mover[0]~input_o\ & ((\b[3]~input_o\))) # (!\mover[0]~input_o\ & (\b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mover[0]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X17_Y5_N16
\Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (\mover[0]~input_o\ & (\a[0]~input_o\ & \mover[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mover[0]~input_o\,
	datac => \a[0]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X19_Y4_N26
\Mux23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~10_combout\ = (selection(1)) # ((\buss[1]~input_o\) # (selection(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selection(1),
	datac => \buss[1]~input_o\,
	datad => selection(0),
	combout => \Mux23~10_combout\);

-- Location: LCCOMB_X19_Y4_N0
\Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~6_combout\ = (\Mux23~10_combout\ & (((\Mux24~13_combout\)))) # (!\Mux23~10_combout\ & ((\Mux24~13_combout\ & (\Add0~24_combout\)) # (!\Mux24~13_combout\ & ((\Add1~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~10_combout\,
	datab => \Add0~24_combout\,
	datac => \Add1~24_combout\,
	datad => \Mux24~13_combout\,
	combout => \Mux24~6_combout\);

-- Location: LCCOMB_X19_Y4_N22
\Mux23~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~11_combout\ = (selection(1) & (((selection(0))) # (!\buss[0]~input_o\))) # (!selection(1) & (((\buss[1]~input_o\) # (!selection(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buss[0]~input_o\,
	datab => \buss[1]~input_o\,
	datac => selection(1),
	datad => selection(0),
	combout => \Mux23~11_combout\);

-- Location: LCCOMB_X19_Y4_N8
\Mux23~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~12_combout\ = (selection(1) & (((selection(0))))) # (!selection(1) & ((\buss[0]~input_o\) # ((\buss[1]~input_o\) # (!selection(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buss[0]~input_o\,
	datab => \buss[1]~input_o\,
	datac => selection(1),
	datad => selection(0),
	combout => \Mux23~12_combout\);

-- Location: LCCOMB_X19_Y4_N30
\Mux24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~7_combout\ = (\Mux23~11_combout\ & ((\Mux23~12_combout\ & ((\Mux24~6_combout\))) # (!\Mux23~12_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT4\)))) # (!\Mux23~11_combout\ & (\Mux23~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~11_combout\,
	datab => \Mux23~12_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \Mux24~6_combout\,
	combout => \Mux24~7_combout\);

-- Location: LCCOMB_X19_Y4_N10
\Mux23~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~13_combout\ = ((selection(0) & (!\buss[0]~input_o\)) # (!selection(0) & ((\buss[1]~input_o\)))) # (!selection(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buss[0]~input_o\,
	datab => \buss[1]~input_o\,
	datac => selection(1),
	datad => selection(0),
	combout => \Mux23~13_combout\);

-- Location: LCCOMB_X19_Y4_N28
\Mux23~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~15_combout\ = (\Mux23~10_combout\ & (\Mux23~22_combout\)) # (!\Mux23~10_combout\ & ((\Mux23~22_combout\ & (\Add0~26_combout\)) # (!\Mux23~22_combout\ & ((\Add1~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~10_combout\,
	datab => \Mux23~22_combout\,
	datac => \Add0~26_combout\,
	datad => \Add1~26_combout\,
	combout => \Mux23~15_combout\);

-- Location: LCCOMB_X19_Y4_N6
\Mux23~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~16_combout\ = (\Mux23~11_combout\ & ((\Mux23~12_combout\ & (\Mux23~15_combout\)) # (!\Mux23~12_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT5\))))) # (!\Mux23~11_combout\ & (((\Mux23~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~11_combout\,
	datab => \Mux23~15_combout\,
	datac => \Mux23~12_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	combout => \Mux23~16_combout\);

-- Location: LCCOMB_X16_Y3_N26
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (selection(1) & ((selection(0) & ((\Add1~4_combout\))) # (!selection(0) & (\Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => selection(0),
	datac => \Add1~4_combout\,
	datad => selection(1),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X17_Y4_N12
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\buss[0]~input_o\ & ((\Mux22~0_combout\) # ((\Mux23~6_combout\ & \Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datab => \buss[0]~input_o\,
	datac => \Mux23~6_combout\,
	datad => \Add1~20_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X17_Y4_N10
\Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (!\buss[1]~input_o\ & ((\Mux22~1_combout\) # ((\Mux0~0_combout\ & !\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux20~0_combout\,
	datad => \buss[1]~input_o\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X17_Y4_N30
\Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (selection(1) & ((selection(0) & ((\Mult0|auto_generated|mac_out2~DATAOUT2\))) # (!selection(0) & (\Mult0|auto_generated|mac_out2~DATAOUT6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => selection(1),
	datac => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => selection(0),
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X16_Y3_N12
\Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (selection(0) & ((\buss[0]~input_o\ & ((\Add1~6_combout\))) # (!\buss[0]~input_o\ & (\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buss[0]~input_o\,
	datab => \Add0~6_combout\,
	datac => selection(0),
	datad => \Add1~6_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X16_Y3_N30
\Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (!selection(0) & ((\buss[0]~input_o\ & (\Add1~14_combout\)) # (!\buss[0]~input_o\ & ((\Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buss[0]~input_o\,
	datab => \Add1~14_combout\,
	datac => selection(0),
	datad => \Add0~14_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X16_Y3_N14
\Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (selection(1) & ((\Mux21~3_combout\) # (\Mux21~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~3_combout\,
	datab => \Mux21~4_combout\,
	datad => selection(1),
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X16_Y3_N22
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((!reset_count(11)) # (!reset_count(8))) # (!reset_count(7))) # (!reset_count(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_count(6),
	datab => reset_count(7),
	datac => reset_count(8),
	datad => reset_count(11),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y6_N26
\Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (selection(0) & (((\Mult0|auto_generated|mac_out2~DATAOUT8\)))) # (!selection(0) & ((\Mult0|auto_generated|mac_out2~DATAOUT12\) # ((!\buss[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selection(0),
	datab => \Mult0|auto_generated|mac_out2~DATAOUT12\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => \buss[1]~input_o\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X19_Y6_N12
\Mux24~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~13_combout\ = (!\buss[0]~input_o\ & (\Mux24~3_combout\ & !selection(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buss[0]~input_o\,
	datac => \Mux24~3_combout\,
	datad => selection(1),
	combout => \Mux24~13_combout\);

-- Location: LCCOMB_X19_Y4_N12
\Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (selection(0) & (\Mult0|auto_generated|mac_out2~DATAOUT9\)) # (!selection(0) & (((\Mult0|auto_generated|mac_out2~DATAOUT13\) # (!\buss[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	datac => \buss[1]~input_o\,
	datad => selection(0),
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X19_Y4_N18
\Mux23~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~22_combout\ = (!selection(1) & (!\buss[0]~input_o\ & \Mux23~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selection(1),
	datac => \buss[0]~input_o\,
	datad => \Mux23~3_combout\,
	combout => \Mux23~22_combout\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOOBUF_X34_Y9_N16
\signo~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \signo~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\displays[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
	devoe => ww_devoe,
	o => \displays[0]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\displays[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux23~6_combout\,
	devoe => ww_devoe,
	o => \displays[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\displays[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux23~7_combout\,
	devoe => ww_devoe,
	o => \displays[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\displays[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux17~0_combout\,
	devoe => ww_devoe,
	o => \displays[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\segments[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \segments[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\segments[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux61~0_combout\,
	devoe => ww_devoe,
	o => \segments[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\segments[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux60~0_combout\,
	devoe => ww_devoe,
	o => \segments[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\segments[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux59~0_combout\,
	devoe => ww_devoe,
	o => \segments[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\segments[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux58~0_combout\,
	devoe => ww_devoe,
	o => \segments[4]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\segments[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux57~0_combout\,
	devoe => ww_devoe,
	o => \segments[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\segments[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux56~0_combout\,
	devoe => ww_devoe,
	o => \segments[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\segments[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux55~0_combout\,
	devoe => ww_devoe,
	o => \segments[7]~output_o\);

-- Location: IOIBUF_X0_Y7_N1
\buss[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buss(0),
	o => \buss[0]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\mover[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mover(0),
	o => \mover[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\mover[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mover(1),
	o => \mover[1]~input_o\);

-- Location: LCCOMB_X21_Y5_N4
\Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\mover[0]~input_o\ & ((\mover[1]~input_o\ & (\b[7]~input_o\)) # (!\mover[1]~input_o\ & ((\b[6]~input_o\))))) # (!\mover[0]~input_o\ & (\b[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \mover[0]~input_o\,
	datac => \b[6]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux42~0_combout\);

-- Location: IOIBUF_X1_Y0_N22
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X17_Y5_N22
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\mover[0]~input_o\ & ((\mover[1]~input_o\ & ((\a[7]~input_o\))) # (!\mover[1]~input_o\ & (\a[5]~input_o\)))) # (!\mover[0]~input_o\ & (((\a[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \mover[0]~input_o\,
	datac => \a[7]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X17_Y5_N30
\Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\Mux31~0_combout\) # ((\a[7]~input_o\ & \mover[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datac => \a[7]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux31~1_combout\);

-- Location: IOIBUF_X30_Y0_N8
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: LCCOMB_X18_Y4_N30
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (!\mover[1]~input_o\ & ((\mover[0]~input_o\ & (\b[3]~input_o\)) # (!\mover[0]~input_o\ & ((\b[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[5]~input_o\,
	datac => \mover[0]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X18_Y4_N24
\Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = (\Mux45~0_combout\) # ((\b[7]~input_o\ & \mover[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[7]~input_o\,
	datac => \Mux45~0_combout\,
	datad => \mover[1]~input_o\,
	combout => \Mux45~1_combout\);

-- Location: IOIBUF_X16_Y0_N1
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X17_Y5_N28
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\mover[1]~input_o\ & (((\mover[0]~input_o\)))) # (!\mover[1]~input_o\ & ((\mover[0]~input_o\ & (\a[2]~input_o\)) # (!\mover[0]~input_o\ & ((\a[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mover[1]~input_o\,
	datab => \a[2]~input_o\,
	datac => \a[4]~input_o\,
	datad => \mover[0]~input_o\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X17_Y5_N10
\Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\Mux33~0_combout\ & (((\a[7]~input_o\) # (!\mover[1]~input_o\)))) # (!\Mux33~0_combout\ & (\a[6]~input_o\ & ((\mover[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \Mux33~0_combout\,
	datac => \a[7]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux33~1_combout\);

-- Location: IOIBUF_X34_Y4_N22
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X18_Y4_N6
\Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\mover[0]~input_o\ & (((\mover[1]~input_o\)))) # (!\mover[0]~input_o\ & ((\mover[1]~input_o\ & ((\b[5]~input_o\))) # (!\mover[1]~input_o\ & (\b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[5]~input_o\,
	datac => \mover[0]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X18_Y4_N8
\Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~1_combout\ = (\mover[0]~input_o\ & ((\Mux47~0_combout\ & (\b[7]~input_o\)) # (!\Mux47~0_combout\ & ((\b[1]~input_o\))))) # (!\mover[0]~input_o\ & (((\Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mover[0]~input_o\,
	datab => \b[7]~input_o\,
	datac => \b[1]~input_o\,
	datad => \Mux47~0_combout\,
	combout => \Mux47~1_combout\);

-- Location: IOIBUF_X23_Y0_N15
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X17_Y5_N14
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\mover[1]~input_o\ & (((\mover[0]~input_o\)))) # (!\mover[1]~input_o\ & ((\mover[0]~input_o\ & ((\a[0]~input_o\))) # (!\mover[0]~input_o\ & (\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mover[1]~input_o\,
	datab => \a[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \mover[0]~input_o\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X17_Y5_N4
\Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\Mux35~0_combout\ & ((\a[6]~input_o\) # ((!\mover[1]~input_o\)))) # (!\Mux35~0_combout\ & (((\a[4]~input_o\ & \mover[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \Mux35~0_combout\,
	datac => \a[4]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux35~1_combout\);

-- Location: IOIBUF_X5_Y0_N15
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X18_Y4_N28
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (!\mover[0]~input_o\ & ((\mover[1]~input_o\ & ((\a[3]~input_o\))) # (!\mover[1]~input_o\ & (\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[3]~input_o\,
	datac => \mover[0]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X18_Y4_N26
\Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\Mux36~0_combout\) # ((\mover[1]~input_o\ & (\a[5]~input_o\ & \mover[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mover[1]~input_o\,
	datab => \a[5]~input_o\,
	datac => \mover[0]~input_o\,
	datad => \Mux36~0_combout\,
	combout => \Mux36~1_combout\);

-- Location: IOIBUF_X34_Y7_N8
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X21_Y5_N26
\Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (!\mover[0]~input_o\ & ((\mover[1]~input_o\ & (\b[2]~input_o\)) # (!\mover[1]~input_o\ & ((\b[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \mover[0]~input_o\,
	datac => \b[0]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X21_Y5_N0
\Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~1_combout\ = (\Mux50~0_combout\) # ((\b[4]~input_o\ & (\mover[0]~input_o\ & \mover[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \mover[0]~input_o\,
	datac => \Mux50~0_combout\,
	datad => \mover[1]~input_o\,
	combout => \Mux50~1_combout\);

-- Location: LCCOMB_X18_Y4_N2
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\mover[1]~input_o\ & ((\mover[0]~input_o\ & ((\a[3]~input_o\))) # (!\mover[0]~input_o\ & (\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[3]~input_o\,
	datac => \mover[0]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X21_Y5_N18
\Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\mover[1]~input_o\ & ((\mover[0]~input_o\ & (\b[2]~input_o\)) # (!\mover[0]~input_o\ & ((\b[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \mover[0]~input_o\,
	datac => \b[0]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X18_Y4_N18
\Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\a[1]~input_o\ & (\mover[0]~input_o\ & \mover[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datac => \mover[0]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X21_Y5_N20
\Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (\mover[0]~input_o\ & (\b[0]~input_o\ & \mover[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mover[0]~input_o\,
	datac => \b[0]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X19_Y5_N2
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Mux41~0_combout\ & ((GND) # (!\Mux54~0_combout\))) # (!\Mux41~0_combout\ & (\Mux54~0_combout\ $ (GND)))
-- \Add1~1\ = CARRY((\Mux41~0_combout\) # (!\Mux54~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~0_combout\,
	datab => \Mux54~0_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X19_Y5_N4
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Mux53~0_combout\ & ((\Mux40~0_combout\ & (!\Add1~1\)) # (!\Mux40~0_combout\ & ((\Add1~1\) # (GND))))) # (!\Mux53~0_combout\ & ((\Mux40~0_combout\ & (\Add1~1\ & VCC)) # (!\Mux40~0_combout\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\Mux53~0_combout\ & ((!\Add1~1\) # (!\Mux40~0_combout\))) # (!\Mux53~0_combout\ & (!\Mux40~0_combout\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux53~0_combout\,
	datab => \Mux40~0_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X19_Y5_N10
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\Mux37~1_combout\ $ (\Mux50~1_combout\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\Mux37~1_combout\ & ((!\Add1~7\) # (!\Mux50~1_combout\))) # (!\Mux37~1_combout\ & (!\Mux50~1_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~1_combout\,
	datab => \Mux50~1_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X19_Y5_N18
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\Mux46~1_combout\ $ (\Mux33~1_combout\ $ (\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\Mux46~1_combout\ & (\Mux33~1_combout\ & !\Add1~15\)) # (!\Mux46~1_combout\ & ((\Mux33~1_combout\) # (!\Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~1_combout\,
	datab => \Mux33~1_combout\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X19_Y5_N20
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\Mux32~1_combout\ & ((\Mux45~1_combout\ & (!\Add1~17\)) # (!\Mux45~1_combout\ & (\Add1~17\ & VCC)))) # (!\Mux32~1_combout\ & ((\Mux45~1_combout\ & ((\Add1~17\) # (GND))) # (!\Mux45~1_combout\ & (!\Add1~17\))))
-- \Add1~19\ = CARRY((\Mux32~1_combout\ & (\Mux45~1_combout\ & !\Add1~17\)) # (!\Mux32~1_combout\ & ((\Mux45~1_combout\) # (!\Add1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~1_combout\,
	datab => \Mux45~1_combout\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X19_Y5_N24
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\Mux43~0_combout\ & ((\Mux30~0_combout\ & (!\Add1~21\)) # (!\Mux30~0_combout\ & ((\Add1~21\) # (GND))))) # (!\Mux43~0_combout\ & ((\Mux30~0_combout\ & (\Add1~21\ & VCC)) # (!\Mux30~0_combout\ & (!\Add1~21\))))
-- \Add1~23\ = CARRY((\Mux43~0_combout\ & ((!\Add1~21\) # (!\Mux30~0_combout\))) # (!\Mux43~0_combout\ & (!\Mux30~0_combout\ & !\Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~0_combout\,
	datab => \Mux30~0_combout\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X19_Y5_N30
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = \a[7]~input_o\ $ (\b[7]~input_o\ $ (\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \b[7]~input_o\,
	cin => \Add1~27\,
	combout => \Add1~28_combout\);

-- Location: LCCOMB_X21_Y5_N2
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (!\mover[1]~input_o\ & ((\mover[0]~input_o\ & (\b[4]~input_o\)) # (!\mover[0]~input_o\ & ((\b[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \mover[0]~input_o\,
	datac => \b[6]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X21_Y5_N24
\Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = (\Mux44~0_combout\) # ((\b[7]~input_o\ & \mover[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \Mux44~0_combout\,
	datad => \mover[1]~input_o\,
	combout => \Mux44~1_combout\);

-- Location: LCCOMB_X17_Y5_N24
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (!\mover[1]~input_o\ & ((\mover[0]~input_o\ & (\a[3]~input_o\)) # (!\mover[0]~input_o\ & ((\a[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mover[1]~input_o\,
	datab => \a[3]~input_o\,
	datac => \a[5]~input_o\,
	datad => \mover[0]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X17_Y5_N18
\Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\Mux32~0_combout\) # ((\a[7]~input_o\ & \mover[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux32~0_combout\,
	datac => \a[7]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux32~1_combout\);

-- Location: IOIBUF_X34_Y2_N15
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X21_Y5_N22
\Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\mover[0]~input_o\ & (((\mover[1]~input_o\)))) # (!\mover[0]~input_o\ & ((\mover[1]~input_o\ & ((\b[6]~input_o\))) # (!\mover[1]~input_o\ & (\b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \mover[0]~input_o\,
	datac => \b[6]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X21_Y5_N28
\Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = (\Mux46~0_combout\ & ((\b[7]~input_o\) # ((!\mover[0]~input_o\)))) # (!\Mux46~0_combout\ & (((\b[2]~input_o\ & \mover[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \b[2]~input_o\,
	datac => \Mux46~0_combout\,
	datad => \mover[0]~input_o\,
	combout => \Mux46~1_combout\);

-- Location: LCCOMB_X17_Y5_N6
\Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\mover[1]~input_o\ & ((\mover[0]~input_o\ & (\a[2]~input_o\)) # (!\mover[0]~input_o\ & ((\a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mover[1]~input_o\,
	datab => \a[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \mover[0]~input_o\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X18_Y4_N0
\Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\mover[0]~input_o\ & (\b[1]~input_o\ & \mover[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mover[0]~input_o\,
	datac => \b[1]~input_o\,
	datad => \mover[1]~input_o\,
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X18_Y5_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Mux41~0_combout\ & (\Mux54~0_combout\ $ (VCC))) # (!\Mux41~0_combout\ & (\Mux54~0_combout\ & VCC))
-- \Add0~1\ = CARRY((\Mux41~0_combout\ & \Mux54~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~0_combout\,
	datab => \Mux54~0_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X18_Y5_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Mux40~0_combout\ & ((\Mux53~0_combout\ & (\Add0~1\ & VCC)) # (!\Mux53~0_combout\ & (!\Add0~1\)))) # (!\Mux40~0_combout\ & ((\Mux53~0_combout\ & (!\Add0~1\)) # (!\Mux53~0_combout\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\Mux40~0_combout\ & (!\Mux53~0_combout\ & !\Add0~1\)) # (!\Mux40~0_combout\ & ((!\Add0~1\) # (!\Mux53~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux40~0_combout\,
	datab => \Mux53~0_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X18_Y5_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\Mux52~0_combout\ $ (\Mux39~0_combout\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\Mux52~0_combout\ & ((\Mux39~0_combout\) # (!\Add0~3\))) # (!\Mux52~0_combout\ & (\Mux39~0_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~0_combout\,
	datab => \Mux39~0_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X18_Y5_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Mux49~1_combout\ & ((\Mux36~1_combout\ & (\Add0~9\ & VCC)) # (!\Mux36~1_combout\ & (!\Add0~9\)))) # (!\Mux49~1_combout\ & ((\Mux36~1_combout\ & (!\Add0~9\)) # (!\Mux36~1_combout\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\Mux49~1_combout\ & (!\Mux36~1_combout\ & !\Add0~9\)) # (!\Mux49~1_combout\ & ((!\Add0~9\) # (!\Mux36~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~1_combout\,
	datab => \Mux36~1_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X18_Y5_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Mux48~1_combout\ $ (\Mux35~1_combout\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\Mux48~1_combout\ & ((\Mux35~1_combout\) # (!\Add0~11\))) # (!\Mux48~1_combout\ & (\Mux35~1_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~1_combout\,
	datab => \Mux35~1_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X18_Y5_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\Mux33~1_combout\ $ (\Mux46~1_combout\ $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\Mux33~1_combout\ & ((\Mux46~1_combout\) # (!\Add0~15\))) # (!\Mux33~1_combout\ & (\Mux46~1_combout\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~1_combout\,
	datab => \Mux46~1_combout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X18_Y5_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\Mux45~1_combout\ & ((\Mux32~1_combout\ & (\Add0~17\ & VCC)) # (!\Mux32~1_combout\ & (!\Add0~17\)))) # (!\Mux45~1_combout\ & ((\Mux32~1_combout\ & (!\Add0~17\)) # (!\Mux32~1_combout\ & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((\Mux45~1_combout\ & (!\Mux32~1_combout\ & !\Add0~17\)) # (!\Mux45~1_combout\ & ((!\Add0~17\) # (!\Mux32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~1_combout\,
	datab => \Mux32~1_combout\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X18_Y5_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\Mux31~1_combout\ $ (\Mux44~1_combout\ $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\Mux31~1_combout\ & ((\Mux44~1_combout\) # (!\Add0~19\))) # (!\Mux31~1_combout\ & (\Mux44~1_combout\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \Mux44~1_combout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X18_Y5_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\Mux43~0_combout\ & ((\Mux30~0_combout\ & (\Add0~21\ & VCC)) # (!\Mux30~0_combout\ & (!\Add0~21\)))) # (!\Mux43~0_combout\ & ((\Mux30~0_combout\ & (!\Add0~21\)) # (!\Mux30~0_combout\ & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((\Mux43~0_combout\ & (!\Mux30~0_combout\ & !\Add0~21\)) # (!\Mux43~0_combout\ & ((!\Add0~21\) # (!\Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~0_combout\,
	datab => \Mux30~0_combout\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X18_Y5_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = \b[7]~input_o\ $ (\a[7]~input_o\ $ (!\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \a[7]~input_o\,
	cin => \Add0~27\,
	combout => \Add0~28_combout\);

-- Location: LCCOMB_X17_Y4_N4
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\buss[0]~input_o\ & (\Add1~28_combout\)) # (!\buss[0]~input_o\ & ((\Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buss[0]~input_o\,
	datac => \Add1~28_combout\,
	datad => \Add0~28_combout\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X18_Y0_N15
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: DSPMULT_X20_Y4_N0
\Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: IOIBUF_X0_Y9_N8
\buss[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buss(1),
	o => \buss[1]~input_o\);

-- Location: LCCOMB_X17_Y4_N26
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\buss[1]~input_o\ & ((\buss[0]~input_o\) # ((!\Mult0|auto_generated|mac_out2~DATAOUT15\)))) # (!\buss[1]~input_o\ & (((!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buss[0]~input_o\,
	datab => \Mux0~0_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => \buss[1]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X17_Y3_N14
\reset_count[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_count[0]~18_combout\ = reset_count(0) $ (VCC)
-- \reset_count[0]~19\ = CARRY(reset_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reset_count(0),
	datad => VCC,
	combout => \reset_count[0]~18_combout\,
	cout => \reset_count[0]~19\);

-- Location: LCCOMB_X17_Y2_N10
\reset_count[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_count[14]~46_combout\ = (reset_count(14) & (\reset_count[13]~45\ $ (GND))) # (!reset_count(14) & (!\reset_count[13]~45\ & VCC))
-- \reset_count[14]~47\ = CARRY((reset_count(14) & !\reset_count[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reset_count(14),
	datad => VCC,
	cin => \reset_count[13]~45\,
	combout => \reset_count[14]~46_combout\,
	cout => \reset_count[14]~47\);

-- Location: FF_X17_Y2_N11
\reset_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reset_count[14]~46_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reset_count(14));

-- Location: LCCOMB_X17_Y2_N6
\reset_count[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_count[12]~42_combout\ = (reset_count(12) & (\reset_count[11]~41\ $ (GND))) # (!reset_count(12) & (!\reset_count[11]~41\ & VCC))
-- \reset_count[12]~43\ = CARRY((reset_count(12) & !\reset_count[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reset_count(12),
	datad => VCC,
	cin => \reset_count[11]~41\,
	combout => \reset_count[12]~42_combout\,
	cout => \reset_count[12]~43\);

-- Location: LCCOMB_X17_Y3_N4
\reset_count[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_count[12]~feeder_combout\ = \reset_count[12]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_count[12]~42_combout\,
	combout => \reset_count[12]~feeder_combout\);

-- Location: FF_X17_Y3_N5
\reset_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reset_count[12]~feeder_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reset_count(12));

-- Location: LCCOMB_X17_Y3_N22
\reset_count[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_count[4]~26_combout\ = (reset_count(4) & (\reset_count[3]~25\ $ (GND))) # (!reset_count(4) & (!\reset_count[3]~25\ & VCC))
-- \reset_count[4]~27\ = CARRY((reset_count(4) & !\reset_count[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reset_count(4),
	datad => VCC,
	cin => \reset_count[3]~25\,
	combout => \reset_count[4]~26_combout\,
	cout => \reset_count[4]~27\);

-- Location: FF_X17_Y3_N23
\reset_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reset_count[4]~26_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reset_count(4));

-- Location: LCCOMB_X17_Y3_N6
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!reset_count(3) & (!reset_count(2) & (!reset_count(0) & !reset_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_count(3),
	datab => reset_count(2),
	datac => reset_count(0),
	datad => reset_count(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y3_N24
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!reset_count(5) & (!reset_count(4) & \LessThan0~0_combout\))) # (!reset_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_count(5),
	datab => reset_count(4),
	datac => reset_count(9),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X16_Y3_N20
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!reset_count(12) & ((\LessThan0~2_combout\) # ((\LessThan0~1_combout\) # (!reset_count(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => reset_count(12),
	datac => reset_count(10),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X16_Y3_N18
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!reset_count(15) & ((\LessThan0~3_combout\) # (!reset_count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_count(15),
	datac => reset_count(13),
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X16_Y3_N28
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (reset_count(16) & (reset_count(17) & ((reset_count(14)) # (!\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_count(16),
	datab => reset_count(17),
	datac => reset_count(14),
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: FF_X17_Y3_N15
\reset_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reset_count[0]~18_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reset_count(0));

-- Location: LCCOMB_X17_Y3_N16
\reset_count[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_count[1]~20_combout\ = (reset_count(1) & (!\reset_count[0]~19\)) # (!reset_count(1) & ((\reset_count[0]~19\) # (GND)))
-- \reset_count[1]~21\ = CARRY((!\reset_count[0]~19\) # (!reset_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reset_count(1),
	datad => VCC,
	cin => \reset_count[0]~19\,
	combout => \reset_count[1]~20_combout\,
	cout => \reset_count[1]~21\);

-- Location: FF_X17_Y3_N17
\reset_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reset_count[1]~20_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reset_count(1));

-- Location: LCCOMB_X17_Y3_N18
\reset_count[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_count[2]~22_combout\ = (reset_count(2) & (\reset_count[1]~21\ $ (GND))) # (!reset_count(2) & (!\reset_count[1]~21\ & VCC))
-- \reset_count[2]~23\ = CARRY((reset_count(2) & !\reset_count[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reset_count(2),
	datad => VCC,
	cin => \reset_count[1]~21\,
	combout => \reset_count[2]~22_combout\,
	cout => \reset_count[2]~23\);

-- Location: FF_X17_Y3_N19
\reset_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reset_count[2]~22_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reset_count(2));

-- Location: LCCOMB_X17_Y3_N20
\reset_count[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_count[3]~24_combout\ = (reset_count(3) & (!\reset_count[2]~23\)) # (!reset_count(3) & ((\reset_count[2]~23\) # (GND)))
-- \reset_count[3]~25\ = CARRY((!\reset_count[2]~23\) # (!reset_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reset_count(3),
	datad => VCC,
	cin => \reset_count[2]~23\,
	combout => \reset_count[3]~24_combout\,
	cout => \reset_count[3]~25\);

-- Location: FF_X17_Y3_N21
\reset_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reset_count[3]~24_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reset_count(3));

-- Location: LCCOMB_X17_Y3_N26
\reset_count[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_count[6]~30_combout\ = (reset_count(6) & (\reset_count[5]~29\ $ (GND))) # (!reset_count(6) & (!\reset_count[5]~29\ & VCC))
-- \reset_count[6]~31\ = CARRY((reset_count(6) & !\reset_count[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reset_count(6),
	datad => VCC,
	cin => \reset_count[5]~29\,
	combout => \reset_count[6]~30_combout\,
	cout => \reset_count[6]~31\);

-- Location: LCCOMB_X17_Y3_N28
\reset_count[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_count[7]~32_combout\ = (reset_count(7) & (!\reset_count[6]~31\)) # (!reset_count(7) & ((\reset_count[6]~31\) # (GND)))
-- \reset_count[7]~33\ = CARRY((!\reset_count[6]~31\) # (!reset_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reset_count(7),
	datad => VCC,
	cin => \reset_count[6]~31\,
	combout => \reset_count[7]~32_combout\,
	cout => \reset_count[7]~33\);

-- Location: LCCOMB_X17_Y3_N30
\reset_count[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_count[8]~34_combout\ = (reset_count(8) & (\reset_count[7]~33\ $ (GND))) # (!reset_count(8) & (!\reset_count[7]~33\ & VCC))
-- \reset_count[8]~35\ = CARRY((reset_count(8) & !\reset_count[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reset_count(8),
	datad => VCC,
	cin => \reset_count[7]~33\,
	combout => \reset_count[8]~34_combout\,
	cout => \reset_count[8]~35\);

-- Location: FF_X16_Y3_N5
\reset_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reset_count[8]~34_combout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reset_count(8));

-- Location: LCCOMB_X17_Y2_N0
\reset_count[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_count[9]~36_combout\ = (reset_count(9) & (!\reset_count[8]~35\)) # (!reset_count(9) & ((\reset_count[8]~35\) # (GND)))
-- \reset_count[9]~37\ = CARRY((!\reset_count[8]~35\) # (!reset_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reset_count(9),
	datad => VCC,
	cin => \reset_count[8]~35\,
	combout => \reset_count[9]~36_combout\,
	cout => \reset_count[9]~37\);

-- Location: FF_X17_Y2_N1
\reset_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reset_count[9]~36_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reset_count(9));

-- Location: LCCOMB_X17_Y2_N2
\reset_count[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_count[10]~38_combout\ = (reset_count(10) & (\reset_count[9]~37\ $ (GND))) # (!reset_count(10) & (!\reset_count[9]~37\ & VCC))
-- \reset_count[10]~39\ = CARRY((reset_count(10) & !\reset_count[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reset_count(10),
	datad => VCC,
	cin => \reset_count[9]~37\,
	combout => \reset_count[10]~38_combout\,
	cout => \reset_count[10]~39\);

-- Location: FF_X17_Y2_N3
\reset_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reset_count[10]~38_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reset_count(10));

-- Location: LCCOMB_X17_Y2_N4
\reset_count[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_count[11]~40_combout\ = (reset_count(11) & (!\reset_count[10]~39\)) # (!reset_count(11) & ((\reset_count[10]~39\) # (GND)))
-- \reset_count[11]~41\ = CARRY((!\reset_count[10]~39\) # (!reset_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reset_count(11),
	datad => VCC,
	cin => \reset_count[10]~39\,
	combout => \reset_count[11]~40_combout\,
	cout => \reset_count[11]~41\);

-- Location: FF_X17_Y2_N5
\reset_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reset_count[11]~40_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reset_count(11));

-- Location: LCCOMB_X17_Y2_N8
\reset_count[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_count[13]~44_combout\ = (reset_count(13) & (!\reset_count[12]~43\)) # (!reset_count(13) & ((\reset_count[12]~43\) # (GND)))
-- \reset_count[13]~45\ = CARRY((!\reset_count[12]~43\) # (!reset_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reset_count(13),
	datad => VCC,
	cin => \reset_count[12]~43\,
	combout => \reset_count[13]~44_combout\,
	cout => \reset_count[13]~45\);

-- Location: FF_X17_Y2_N9
\reset_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reset_count[13]~44_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reset_count(13));

-- Location: LCCOMB_X17_Y2_N12
\reset_count[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_count[15]~48_combout\ = (reset_count(15) & (!\reset_count[14]~47\)) # (!reset_count(15) & ((\reset_count[14]~47\) # (GND)))
-- \reset_count[15]~49\ = CARRY((!\reset_count[14]~47\) # (!reset_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reset_count(15),
	datad => VCC,
	cin => \reset_count[14]~47\,
	combout => \reset_count[15]~48_combout\,
	cout => \reset_count[15]~49\);

-- Location: LCCOMB_X17_Y2_N14
\reset_count[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_count[16]~50_combout\ = (reset_count(16) & (\reset_count[15]~49\ $ (GND))) # (!reset_count(16) & (!\reset_count[15]~49\ & VCC))
-- \reset_count[16]~51\ = CARRY((reset_count(16) & !\reset_count[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reset_count(16),
	datad => VCC,
	cin => \reset_count[15]~49\,
	combout => \reset_count[16]~50_combout\,
	cout => \reset_count[16]~51\);

-- Location: FF_X17_Y2_N15
\reset_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reset_count[16]~50_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reset_count(16));

-- Location: LCCOMB_X17_Y2_N16
\reset_count[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_count[17]~52_combout\ = \reset_count[16]~51\ $ (reset_count(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => reset_count(17),
	cin => \reset_count[16]~51\,
	combout => \reset_count[17]~52_combout\);

-- Location: FF_X17_Y2_N17
\reset_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reset_count[17]~52_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reset_count(17));

-- Location: FF_X16_Y3_N1
\reset_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reset_count[15]~48_combout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reset_count(15));

-- Location: FF_X16_Y3_N17
\reset_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reset_count[6]~30_combout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reset_count(6));

-- Location: FF_X16_Y3_N15
\reset_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reset_count[7]~32_combout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reset_count(7));

-- Location: LCCOMB_X16_Y3_N16
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (((!reset_count(7)) # (!reset_count(6))) # (!reset_count(8))) # (!reset_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_count(9),
	datab => reset_count(8),
	datac => reset_count(6),
	datad => reset_count(7),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X16_Y3_N4
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!reset_count(5) & (!reset_count(4) & \LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_count(5),
	datab => reset_count(4),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X16_Y3_N10
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ((\LessThan0~7_combout\) # ((\LessThan0~6_combout\) # (!reset_count(11)))) # (!reset_count(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_count(10),
	datab => \LessThan0~7_combout\,
	datac => \LessThan0~6_combout\,
	datad => reset_count(11),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X16_Y3_N2
\selection[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \selection[0]~1_combout\ = (reset_count(13) & ((reset_count(12)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_count(12),
	datab => reset_count(13),
	datad => \LessThan0~8_combout\,
	combout => \selection[0]~1_combout\);

-- Location: LCCOMB_X16_Y3_N0
\selection[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \selection[0]~2_combout\ = (reset_count(14)) # ((reset_count(15)) # (\selection[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reset_count(14),
	datac => reset_count(15),
	datad => \selection[0]~1_combout\,
	combout => \selection[0]~2_combout\);

-- Location: LCCOMB_X16_Y3_N8
\selection[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \selection[0]~3_combout\ = selection(0) $ (((reset_count(16) & (reset_count(17) & \selection[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_count(16),
	datab => reset_count(17),
	datac => selection(0),
	datad => \selection[0]~2_combout\,
	combout => \selection[0]~3_combout\);

-- Location: FF_X16_Y3_N9
\selection[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \selection[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => selection(0));

-- Location: LCCOMB_X16_Y3_N6
\selection[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \selection[1]~0_combout\ = selection(1) $ (((selection(0) & \LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selection(0),
	datac => selection(1),
	datad => \LessThan0~5_combout\,
	combout => \selection[1]~0_combout\);

-- Location: FF_X16_Y3_N7
\selection[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \selection[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => selection(1));

-- Location: LCCOMB_X17_Y4_N8
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (selection(0)) # (selection(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selection(0),
	datad => selection(1),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X17_Y4_N22
\Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (selection(0) & !selection(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selection(0),
	datad => selection(1),
	combout => \Mux23~6_combout\);

-- Location: LCCOMB_X19_Y6_N8
\Mux23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~7_combout\ = (selection(1) & !selection(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selection(1),
	datad => selection(0),
	combout => \Mux23~7_combout\);

-- Location: LCCOMB_X19_Y6_N10
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (selection(1) & selection(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selection(1),
	datad => selection(0),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X19_Y6_N20
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (selection(1) & (\mover[1]~input_o\ & (\mover[0]~input_o\ $ (!selection(0))))) # (!selection(1) & (!\mover[1]~input_o\ & (\mover[0]~input_o\ $ (selection(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selection(1),
	datab => \mover[0]~input_o\,
	datac => \mover[1]~input_o\,
	datad => selection(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X18_Y5_N30
\Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (selection(1) & ((selection(0) & (\Add0~4_combout\)) # (!selection(0) & ((\Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selection(1),
	datab => \Add0~4_combout\,
	datac => selection(0),
	datad => \Add0~12_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X17_Y4_N0
\Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (!\buss[1]~input_o\ & ((\Mux22~3_combout\) # ((\Mux23~6_combout\ & \Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~6_combout\,
	datab => \Mux22~3_combout\,
	datac => \buss[1]~input_o\,
	datad => \Add0~20_combout\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X19_Y2_N24
\Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (!selection(1) & ((selection(0) & ((\Mult0|auto_generated|mac_out2~DATAOUT10\))) # (!selection(0) & (\Mult0|auto_generated|mac_out2~DATAOUT14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => selection(1),
	datac => selection(0),
	datad => \Mult0|auto_generated|mac_out2~DATAOUT10\,
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X17_Y4_N16
\Mux22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~7_combout\ = (\Mux22~4_combout\) # ((\buss[1]~input_o\ & ((\Mux22~5_combout\) # (\Mux22~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~5_combout\,
	datab => \Mux22~4_combout\,
	datac => \buss[1]~input_o\,
	datad => \Mux22~6_combout\,
	combout => \Mux22~7_combout\);

-- Location: LCCOMB_X17_Y4_N14
\Mux22~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~8_combout\ = (\Mux22~2_combout\) # ((!\buss[0]~input_o\ & \Mux22~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datac => \buss[0]~input_o\,
	datad => \Mux22~7_combout\,
	combout => \Mux22~8_combout\);

-- Location: LCCOMB_X19_Y4_N16
\Mux23~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~14_combout\ = ((!selection(0) & ((\buss[0]~input_o\) # (\buss[1]~input_o\)))) # (!selection(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buss[0]~input_o\,
	datab => \buss[1]~input_o\,
	datac => selection(1),
	datad => selection(0),
	combout => \Mux23~14_combout\);

-- Location: LCCOMB_X19_Y4_N24
\Mux23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~9_combout\ = (!selection(1) & (!\buss[1]~input_o\ & selection(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selection(1),
	datac => \buss[1]~input_o\,
	datad => selection(0),
	combout => \Mux23~9_combout\);

-- Location: LCCOMB_X19_Y4_N4
\Mux23~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~17_combout\ = (\Mux23~16_combout\ & (((\Add1~18_combout\)) # (!\Mux23~9_combout\))) # (!\Mux23~16_combout\ & (\Mux23~9_combout\ & (\Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~16_combout\,
	datab => \Mux23~9_combout\,
	datac => \Add0~18_combout\,
	datad => \Add1~18_combout\,
	combout => \Mux23~17_combout\);

-- Location: LCCOMB_X19_Y4_N14
\Mux23~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~18_combout\ = (\Mux23~13_combout\ & ((\Mux23~14_combout\ & (\Mux23~17_combout\)) # (!\Mux23~14_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT1\))))) # (!\Mux23~13_combout\ & (\Mux23~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~13_combout\,
	datab => \Mux23~14_combout\,
	datac => \Mux23~17_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \Mux23~18_combout\);

-- Location: LCCOMB_X19_Y6_N18
\Mux23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~8_combout\ = (!\buss[1]~input_o\ & (selection(1) & !selection(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buss[1]~input_o\,
	datab => selection(1),
	datad => selection(0),
	combout => \Mux23~8_combout\);

-- Location: LCCOMB_X19_Y6_N28
\Mux23~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~19_combout\ = (\Mux23~18_combout\ & ((\Add1~10_combout\) # ((!\Mux23~8_combout\)))) # (!\Mux23~18_combout\ & (((\Add0~10_combout\ & \Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Mux23~18_combout\,
	datac => \Add0~10_combout\,
	datad => \Mux23~8_combout\,
	combout => \Mux23~19_combout\);

-- Location: LCCOMB_X19_Y6_N22
\Mux23~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~20_combout\ = (\buss[0]~input_o\ & ((\Add1~2_combout\))) # (!\buss[0]~input_o\ & (\Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datac => \buss[0]~input_o\,
	datad => \Add1~2_combout\,
	combout => \Mux23~20_combout\);

-- Location: LCCOMB_X19_Y6_N24
\Mux23~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~21_combout\ = (\buss[1]~input_o\ & (\Mux23~19_combout\)) # (!\buss[1]~input_o\ & ((\Mux17~0_combout\ & ((\Mux23~20_combout\))) # (!\Mux17~0_combout\ & (\Mux23~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buss[1]~input_o\,
	datab => \Mux23~19_combout\,
	datac => \Mux23~20_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux23~21_combout\);

-- Location: LCCOMB_X17_Y4_N18
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (!selection(1) & ((selection(0) & (\Mult0|auto_generated|mac_out2~DATAOUT11\)) # (!selection(0) & ((\Mult0|auto_generated|mac_out2~DATAOUT15\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT11\,
	datab => selection(1),
	datac => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => selection(0),
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X17_Y4_N24
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (selection(1) & ((selection(0) & ((\Mult0|auto_generated|mac_out2~DATAOUT3\))) # (!selection(0) & (\Mult0|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datab => selection(1),
	datac => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => selection(0),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X16_Y8_N0
\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (!\buss[0]~input_o\ & (\buss[1]~input_o\ & ((\Mux21~1_combout\) # (\Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buss[0]~input_o\,
	datab => \Mux21~1_combout\,
	datac => \buss[1]~input_o\,
	datad => \Mux21~0_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X17_Y4_N28
\Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (\Mux23~6_combout\ & ((\buss[0]~input_o\ & (\Add1~22_combout\)) # (!\buss[0]~input_o\ & ((\Add0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buss[0]~input_o\,
	datab => \Add1~22_combout\,
	datac => \Mux23~6_combout\,
	datad => \Add0~22_combout\,
	combout => \Mux21~6_combout\);

-- Location: LCCOMB_X17_Y4_N6
\Mux21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~7_combout\ = (\Mux21~5_combout\) # ((\Mux21~6_combout\) # ((!\Mux20~0_combout\ & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~5_combout\,
	datab => \Mux20~0_combout\,
	datac => \Mux0~0_combout\,
	datad => \Mux21~6_combout\,
	combout => \Mux21~7_combout\);

-- Location: LCCOMB_X16_Y8_N2
\Mux21~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~8_combout\ = (\Mux21~2_combout\) # ((!\buss[1]~input_o\ & \Mux21~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux21~2_combout\,
	datac => \buss[1]~input_o\,
	datad => \Mux21~7_combout\,
	combout => \Mux21~8_combout\);

-- Location: LCCOMB_X19_Y4_N20
\Mux24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~8_combout\ = (\Mux24~7_combout\ & (((\Add1~16_combout\)) # (!\Mux23~9_combout\))) # (!\Mux24~7_combout\ & (\Mux23~9_combout\ & (\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~7_combout\,
	datab => \Mux23~9_combout\,
	datac => \Add0~16_combout\,
	datad => \Add1~16_combout\,
	combout => \Mux24~8_combout\);

-- Location: LCCOMB_X19_Y4_N2
\Mux24~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~9_combout\ = (\Mux23~13_combout\ & ((\Mux23~14_combout\ & ((\Mux24~8_combout\))) # (!\Mux23~14_combout\ & (\Mult0|auto_generated|mac_out2~dataout\)))) # (!\Mux23~13_combout\ & (\Mux23~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~13_combout\,
	datab => \Mux23~14_combout\,
	datac => \Mult0|auto_generated|mac_out2~dataout\,
	datad => \Mux24~8_combout\,
	combout => \Mux24~9_combout\);

-- Location: LCCOMB_X19_Y6_N0
\Mux24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~10_combout\ = (\Mux24~9_combout\ & (((\Add1~8_combout\) # (!\Mux23~8_combout\)))) # (!\Mux24~9_combout\ & (\Add0~8_combout\ & ((\Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add1~8_combout\,
	datac => \Mux24~9_combout\,
	datad => \Mux23~8_combout\,
	combout => \Mux24~10_combout\);

-- Location: LCCOMB_X19_Y5_N0
\Mux24~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~11_combout\ = (\buss[0]~input_o\ & ((\Add1~0_combout\))) # (!\buss[0]~input_o\ & (\Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buss[0]~input_o\,
	datac => \Add0~0_combout\,
	datad => \Add1~0_combout\,
	combout => \Mux24~11_combout\);

-- Location: LCCOMB_X19_Y6_N2
\Mux24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~12_combout\ = (\Mux17~0_combout\ & ((\buss[1]~input_o\ & (\Mux24~10_combout\)) # (!\buss[1]~input_o\ & ((\Mux24~11_combout\))))) # (!\Mux17~0_combout\ & (\Mux24~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~0_combout\,
	datab => \Mux24~10_combout\,
	datac => \buss[1]~input_o\,
	datad => \Mux24~11_combout\,
	combout => \Mux24~12_combout\);

-- Location: LCCOMB_X18_Y12_N0
\Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (\Mux24~12_combout\ & ((\Mux21~8_combout\) # (\Mux22~8_combout\ $ (\Mux23~21_combout\)))) # (!\Mux24~12_combout\ & ((\Mux23~21_combout\) # (\Mux22~8_combout\ $ (\Mux21~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~8_combout\,
	datab => \Mux23~21_combout\,
	datac => \Mux21~8_combout\,
	datad => \Mux24~12_combout\,
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X18_Y12_N6
\Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (\Mux22~8_combout\ & (\Mux24~12_combout\ & (\Mux23~21_combout\ $ (\Mux21~8_combout\)))) # (!\Mux22~8_combout\ & (!\Mux21~8_combout\ & ((\Mux23~21_combout\) # (\Mux24~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~8_combout\,
	datab => \Mux23~21_combout\,
	datac => \Mux21~8_combout\,
	datad => \Mux24~12_combout\,
	combout => \Mux60~0_combout\);

-- Location: LCCOMB_X18_Y12_N12
\Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (\Mux23~21_combout\ & (((!\Mux21~8_combout\ & \Mux24~12_combout\)))) # (!\Mux23~21_combout\ & ((\Mux22~8_combout\ & (!\Mux21~8_combout\)) # (!\Mux22~8_combout\ & ((\Mux24~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~8_combout\,
	datab => \Mux23~21_combout\,
	datac => \Mux21~8_combout\,
	datad => \Mux24~12_combout\,
	combout => \Mux59~0_combout\);

-- Location: LCCOMB_X18_Y12_N18
\Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\Mux24~12_combout\ & (\Mux22~8_combout\ $ ((!\Mux23~21_combout\)))) # (!\Mux24~12_combout\ & ((\Mux22~8_combout\ & (!\Mux23~21_combout\ & !\Mux21~8_combout\)) # (!\Mux22~8_combout\ & (\Mux23~21_combout\ & \Mux21~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~8_combout\,
	datab => \Mux23~21_combout\,
	datac => \Mux21~8_combout\,
	datad => \Mux24~12_combout\,
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X18_Y12_N24
\Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\Mux22~8_combout\ & (\Mux21~8_combout\ & ((\Mux23~21_combout\) # (!\Mux24~12_combout\)))) # (!\Mux22~8_combout\ & (\Mux23~21_combout\ & (!\Mux21~8_combout\ & !\Mux24~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~8_combout\,
	datab => \Mux23~21_combout\,
	datac => \Mux21~8_combout\,
	datad => \Mux24~12_combout\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X18_Y12_N10
\Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\Mux23~21_combout\ & ((\Mux24~12_combout\ & ((\Mux21~8_combout\))) # (!\Mux24~12_combout\ & (\Mux22~8_combout\)))) # (!\Mux23~21_combout\ & (\Mux22~8_combout\ & (\Mux21~8_combout\ $ (\Mux24~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~8_combout\,
	datab => \Mux23~21_combout\,
	datac => \Mux21~8_combout\,
	datad => \Mux24~12_combout\,
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X18_Y12_N16
\Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\Mux22~8_combout\ & (!\Mux23~21_combout\ & (\Mux21~8_combout\ $ (!\Mux24~12_combout\)))) # (!\Mux22~8_combout\ & (\Mux24~12_combout\ & (\Mux23~21_combout\ $ (!\Mux21~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~8_combout\,
	datab => \Mux23~21_combout\,
	datac => \Mux21~8_combout\,
	datad => \Mux24~12_combout\,
	combout => \Mux55~0_combout\);

ww_signo <= \signo~output_o\;

ww_displays(0) <= \displays[0]~output_o\;

ww_displays(1) <= \displays[1]~output_o\;

ww_displays(2) <= \displays[2]~output_o\;

ww_displays(3) <= \displays[3]~output_o\;

ww_segments(0) <= \segments[0]~output_o\;

ww_segments(1) <= \segments[1]~output_o\;

ww_segments(2) <= \segments[2]~output_o\;

ww_segments(3) <= \segments[3]~output_o\;

ww_segments(4) <= \segments[4]~output_o\;

ww_segments(5) <= \segments[5]~output_o\;

ww_segments(6) <= \segments[6]~output_o\;

ww_segments(7) <= \segments[7]~output_o\;
END structure;


