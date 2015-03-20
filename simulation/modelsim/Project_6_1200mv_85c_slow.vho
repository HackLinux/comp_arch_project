-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "03/20/2015 18:14:01"

-- 
-- Device: Altera EP4CGX30CF23C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cache_final IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	m_writedata : IN std_logic_vector(31 DOWNTO 0);
	m_address : IN std_logic_vector(18 DOWNTO 0);
	m_memwrite : IN std_logic;
	m_memread : IN std_logic;
	m_readdata : BUFFER std_logic_vector(31 DOWNTO 0);
	m_waitrequest : BUFFER std_logic;
	s_writedata : BUFFER std_logic_vector(31 DOWNTO 0);
	s_address : BUFFER std_logic_vector(18 DOWNTO 0);
	s_memwrite : BUFFER std_logic;
	s_memread : BUFFER std_logic;
	s_readdata : IN std_logic_vector(31 DOWNTO 0);
	s_waitrequest : IN std_logic
	);
END cache_final;

-- Design Ports Information
-- m_readdata[0]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[3]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[5]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[7]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[8]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[9]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[10]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[11]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[12]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[13]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[14]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[15]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[16]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[17]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[18]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[19]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[20]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[21]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[22]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[23]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[24]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[25]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[26]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[27]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[28]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[29]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[30]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[31]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_waitrequest	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[0]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[1]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[2]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[3]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[4]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[5]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[6]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[7]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[8]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[9]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[10]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[11]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[12]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[13]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[14]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[15]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[16]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[17]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[18]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[19]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[20]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[21]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[22]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[23]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[24]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[25]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[26]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[27]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[28]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[29]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[30]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[31]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_address[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_address[1]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_address[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_address[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_address[4]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_address[5]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_address[6]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_address[7]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_address[8]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_address[9]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_address[10]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_address[11]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_address[12]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_address[13]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_address[14]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_address[15]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_address[16]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_address[17]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_address[18]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_memwrite	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_memread	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[1]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[3]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[4]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[5]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[8]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[9]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[10]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[11]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[12]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[13]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[14]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[15]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[16]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[17]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[18]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[19]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[20]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[21]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[22]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[23]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[24]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[25]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[26]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[27]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[28]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[29]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[30]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[31]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_address[9]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_address[10]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_address[11]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_address[12]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_address[16]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_address[13]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_address[14]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_address[15]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_address[17]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_address[18]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_waitrequest	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_memwrite	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[2]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[5]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[7]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[8]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[9]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[10]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[11]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[12]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[13]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[14]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[15]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[16]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[17]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[18]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[19]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[20]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[21]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[22]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[23]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[24]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[25]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[26]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[27]	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[28]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[29]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[30]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[31]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_address[0]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_address[1]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_address[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_address[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_address[4]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_address[5]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_address[6]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_address[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_address[8]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_memread	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cache_final IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_m_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_m_address : std_logic_vector(18 DOWNTO 0);
SIGNAL ww_m_memwrite : std_logic;
SIGNAL ww_m_memread : std_logic;
SIGNAL ww_m_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_m_waitrequest : std_logic;
SIGNAL ww_s_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_s_address : std_logic_vector(18 DOWNTO 0);
SIGNAL ww_s_memwrite : std_logic;
SIGNAL ww_s_memread : std_logic;
SIGNAL ww_s_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_s_waitrequest : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \WideOr105~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \current.dma~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m_readdata[0]~output_o\ : std_logic;
SIGNAL \m_readdata[1]~output_o\ : std_logic;
SIGNAL \m_readdata[2]~output_o\ : std_logic;
SIGNAL \m_readdata[3]~output_o\ : std_logic;
SIGNAL \m_readdata[4]~output_o\ : std_logic;
SIGNAL \m_readdata[5]~output_o\ : std_logic;
SIGNAL \m_readdata[6]~output_o\ : std_logic;
SIGNAL \m_readdata[7]~output_o\ : std_logic;
SIGNAL \m_readdata[8]~output_o\ : std_logic;
SIGNAL \m_readdata[9]~output_o\ : std_logic;
SIGNAL \m_readdata[10]~output_o\ : std_logic;
SIGNAL \m_readdata[11]~output_o\ : std_logic;
SIGNAL \m_readdata[12]~output_o\ : std_logic;
SIGNAL \m_readdata[13]~output_o\ : std_logic;
SIGNAL \m_readdata[14]~output_o\ : std_logic;
SIGNAL \m_readdata[15]~output_o\ : std_logic;
SIGNAL \m_readdata[16]~output_o\ : std_logic;
SIGNAL \m_readdata[17]~output_o\ : std_logic;
SIGNAL \m_readdata[18]~output_o\ : std_logic;
SIGNAL \m_readdata[19]~output_o\ : std_logic;
SIGNAL \m_readdata[20]~output_o\ : std_logic;
SIGNAL \m_readdata[21]~output_o\ : std_logic;
SIGNAL \m_readdata[22]~output_o\ : std_logic;
SIGNAL \m_readdata[23]~output_o\ : std_logic;
SIGNAL \m_readdata[24]~output_o\ : std_logic;
SIGNAL \m_readdata[25]~output_o\ : std_logic;
SIGNAL \m_readdata[26]~output_o\ : std_logic;
SIGNAL \m_readdata[27]~output_o\ : std_logic;
SIGNAL \m_readdata[28]~output_o\ : std_logic;
SIGNAL \m_readdata[29]~output_o\ : std_logic;
SIGNAL \m_readdata[30]~output_o\ : std_logic;
SIGNAL \m_readdata[31]~output_o\ : std_logic;
SIGNAL \m_waitrequest~output_o\ : std_logic;
SIGNAL \s_writedata[0]~output_o\ : std_logic;
SIGNAL \s_writedata[1]~output_o\ : std_logic;
SIGNAL \s_writedata[2]~output_o\ : std_logic;
SIGNAL \s_writedata[3]~output_o\ : std_logic;
SIGNAL \s_writedata[4]~output_o\ : std_logic;
SIGNAL \s_writedata[5]~output_o\ : std_logic;
SIGNAL \s_writedata[6]~output_o\ : std_logic;
SIGNAL \s_writedata[7]~output_o\ : std_logic;
SIGNAL \s_writedata[8]~output_o\ : std_logic;
SIGNAL \s_writedata[9]~output_o\ : std_logic;
SIGNAL \s_writedata[10]~output_o\ : std_logic;
SIGNAL \s_writedata[11]~output_o\ : std_logic;
SIGNAL \s_writedata[12]~output_o\ : std_logic;
SIGNAL \s_writedata[13]~output_o\ : std_logic;
SIGNAL \s_writedata[14]~output_o\ : std_logic;
SIGNAL \s_writedata[15]~output_o\ : std_logic;
SIGNAL \s_writedata[16]~output_o\ : std_logic;
SIGNAL \s_writedata[17]~output_o\ : std_logic;
SIGNAL \s_writedata[18]~output_o\ : std_logic;
SIGNAL \s_writedata[19]~output_o\ : std_logic;
SIGNAL \s_writedata[20]~output_o\ : std_logic;
SIGNAL \s_writedata[21]~output_o\ : std_logic;
SIGNAL \s_writedata[22]~output_o\ : std_logic;
SIGNAL \s_writedata[23]~output_o\ : std_logic;
SIGNAL \s_writedata[24]~output_o\ : std_logic;
SIGNAL \s_writedata[25]~output_o\ : std_logic;
SIGNAL \s_writedata[26]~output_o\ : std_logic;
SIGNAL \s_writedata[27]~output_o\ : std_logic;
SIGNAL \s_writedata[28]~output_o\ : std_logic;
SIGNAL \s_writedata[29]~output_o\ : std_logic;
SIGNAL \s_writedata[30]~output_o\ : std_logic;
SIGNAL \s_writedata[31]~output_o\ : std_logic;
SIGNAL \s_address[0]~output_o\ : std_logic;
SIGNAL \s_address[1]~output_o\ : std_logic;
SIGNAL \s_address[2]~output_o\ : std_logic;
SIGNAL \s_address[3]~output_o\ : std_logic;
SIGNAL \s_address[4]~output_o\ : std_logic;
SIGNAL \s_address[5]~output_o\ : std_logic;
SIGNAL \s_address[6]~output_o\ : std_logic;
SIGNAL \s_address[7]~output_o\ : std_logic;
SIGNAL \s_address[8]~output_o\ : std_logic;
SIGNAL \s_address[9]~output_o\ : std_logic;
SIGNAL \s_address[10]~output_o\ : std_logic;
SIGNAL \s_address[11]~output_o\ : std_logic;
SIGNAL \s_address[12]~output_o\ : std_logic;
SIGNAL \s_address[13]~output_o\ : std_logic;
SIGNAL \s_address[14]~output_o\ : std_logic;
SIGNAL \s_address[15]~output_o\ : std_logic;
SIGNAL \s_address[16]~output_o\ : std_logic;
SIGNAL \s_address[17]~output_o\ : std_logic;
SIGNAL \s_address[18]~output_o\ : std_logic;
SIGNAL \s_memwrite~output_o\ : std_logic;
SIGNAL \s_memread~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \init_index[0]~7_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \current.reset~feeder_combout\ : std_logic;
SIGNAL \current.reset~q\ : std_logic;
SIGNAL \init_offset~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \init_done~0_combout\ : std_logic;
SIGNAL \init_index[5]~19\ : std_logic;
SIGNAL \init_index[6]~20_combout\ : std_logic;
SIGNAL \init_index[4]~9_combout\ : std_logic;
SIGNAL \init_done~1_combout\ : std_logic;
SIGNAL \init_done~2_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \current.init~q\ : std_logic;
SIGNAL \init_index[0]~8\ : std_logic;
SIGNAL \init_index[1]~10_combout\ : std_logic;
SIGNAL \init_index[1]~11\ : std_logic;
SIGNAL \init_index[2]~12_combout\ : std_logic;
SIGNAL \init_index[2]~13\ : std_logic;
SIGNAL \init_index[3]~14_combout\ : std_logic;
SIGNAL \init_index[3]~15\ : std_logic;
SIGNAL \init_index[4]~16_combout\ : std_logic;
SIGNAL \init_index[4]~17\ : std_logic;
SIGNAL \init_index[5]~18_combout\ : std_logic;
SIGNAL \m_memwrite~input_o\ : std_logic;
SIGNAL \m_memread~input_o\ : std_logic;
SIGNAL \m_address[18]~input_o\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \s_waitrequest~input_o\ : std_logic;
SIGNAL \m_address[12]~input_o\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \current.dma~feeder_combout\ : std_logic;
SIGNAL \current.dma~q\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector27~2_combout\ : std_logic;
SIGNAL \m_address[17]~input_o\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \m_address[15]~input_o\ : std_logic;
SIGNAL \m_address[16]~input_o\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \m_address[2]~input_o\ : std_logic;
SIGNAL \WideOr122~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \WideOr105~0_combout\ : std_logic;
SIGNAL \WideOr105~0clkctrl_outclk\ : std_logic;
SIGNAL \cache_w_index[0][0]~combout\ : std_logic;
SIGNAL \m_address[3]~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \cache_w_index[0][1]~combout\ : std_logic;
SIGNAL \m_address[4]~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \cache_w_index[0][2]~combout\ : std_logic;
SIGNAL \m_address[5]~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \cache_w_index[0][3]~combout\ : std_logic;
SIGNAL \m_address[6]~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \cache_w_index[0][4]~combout\ : std_logic;
SIGNAL \m_address[8]~input_o\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \cache_w_index[0][6]~combout\ : std_logic;
SIGNAL \cache_r_addr[0][2]~0_combout\ : std_logic;
SIGNAL \cache_r_addr[0][3]~1_combout\ : std_logic;
SIGNAL \cache_r_addr[0][4]~2_combout\ : std_logic;
SIGNAL \cache_r_addr[0][5]~3_combout\ : std_logic;
SIGNAL \cache_r_addr[0][6]~4_combout\ : std_logic;
SIGNAL \m_address[7]~input_o\ : std_logic;
SIGNAL \cache_r_addr[0][7]~5_combout\ : std_logic;
SIGNAL \cache_r_addr[0][8]~6_combout\ : std_logic;
SIGNAL \m_address[10]~input_o\ : std_logic;
SIGNAL \m_address[11]~input_o\ : std_logic;
SIGNAL \ctrl_in[1][10]~2_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \Selector17~3_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Selector19~3_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata~26_combout\ : std_logic;
SIGNAL \m_address[14]~input_o\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata~27_combout\ : std_logic;
SIGNAL \m_address[13]~input_o\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata~29_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata~28_combout\ : std_logic;
SIGNAL \hits[1]~2_combout\ : std_logic;
SIGNAL \hits[1]~1_combout\ : std_logic;
SIGNAL \hits[1]~4_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Selector26~2_combout\ : std_logic;
SIGNAL \m_address[9]~input_o\ : std_logic;
SIGNAL \Selector26~4_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata~32_combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Selector36~1_combout\ : std_logic;
SIGNAL \Selector36~2_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector27~3_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata~36_combout\ : std_logic;
SIGNAL \Selector27~4_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata~35_combout\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata~34_combout\ : std_logic;
SIGNAL \Selector29~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata~33_combout\ : std_logic;
SIGNAL \Selector30~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata~32_combout\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata~31_combout\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata~30_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector33~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata~29_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata~27_combout\ : std_logic;
SIGNAL \Selector35~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata~28_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~11_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \Equal1~12_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~13_combout\ : std_logic;
SIGNAL \LRU_in~2_combout\ : std_logic;
SIGNAL \ctrl_in[0][10]~1_combout\ : std_logic;
SIGNAL \ctrl_in[0][10]~3_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \LRU_in~0_combout\ : std_logic;
SIGNAL \LRU_in~1_combout\ : std_logic;
SIGNAL \ctrl_in[1][10]~0_combout\ : std_logic;
SIGNAL \KO_index~0_combout\ : std_logic;
SIGNAL \KO_index~1_combout\ : std_logic;
SIGNAL \KO_index~combout\ : std_logic;
SIGNAL \KO_index_reg~q\ : std_logic;
SIGNAL \ds_waitrequest~0_combout\ : std_logic;
SIGNAL \ds_waitrequest~q\ : std_logic;
SIGNAL \Selector106~3_combout\ : std_logic;
SIGNAL \Selector106~4_combout\ : std_logic;
SIGNAL \s_address~0_combout\ : std_logic;
SIGNAL \Selector109~0_combout\ : std_logic;
SIGNAL \Selector108~0_combout\ : std_logic;
SIGNAL \Selector108~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata~24_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata~22_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0_bypass[4]~feeder_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata~21_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata~23_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata~25_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \cache_gen:0:xcache|ctrldata~26_combout\ : std_logic;
SIGNAL \empty_index~0_combout\ : std_logic;
SIGNAL \empty_index~1_combout\ : std_logic;
SIGNAL \empty_index~combout\ : std_logic;
SIGNAL \empty_index_reg~q\ : std_logic;
SIGNAL \Selector105~0_combout\ : std_logic;
SIGNAL \Selector107~0_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata~31_combout\ : std_logic;
SIGNAL \hits[1]~3_combout\ : std_logic;
SIGNAL \word_in~0_combout\ : std_logic;
SIGNAL \word_in~1_combout\ : std_logic;
SIGNAL \Selector26~3_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \hits[1]~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Selector143~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \current.mem_write~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \current.idle~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \cache_w_index[0][5]~combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata~23_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0_bypass[4]~feeder_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata~21_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata~24_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata~22_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata~25_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \cache_gen:1:xcache|ctrldata~30_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \word_number~0_combout\ : std_logic;
SIGNAL \word_number[0]~1_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \current.write_back~q\ : std_logic;
SIGNAL \word_number~2_combout\ : std_logic;
SIGNAL \Selector10~3_combout\ : std_logic;
SIGNAL \Selector165~0_combout\ : std_logic;
SIGNAL \Selector161~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \current.mem_read~q\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector10~4_combout\ : std_logic;
SIGNAL \current.busy~q\ : std_logic;
SIGNAL \Selector161~1_combout\ : std_logic;
SIGNAL \Selector161~2_combout\ : std_logic;
SIGNAL \hit_index~0_combout\ : std_logic;
SIGNAL \hit_index_reg~q\ : std_logic;
SIGNAL \s_readdata[0]~input_o\ : std_logic;
SIGNAL \m_writedata[0]~input_o\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \Selector68~1_combout\ : std_logic;
SIGNAL \Selector68~2_combout\ : std_logic;
SIGNAL \Selector106~6_combout\ : std_logic;
SIGNAL \Selector106~2_combout\ : std_logic;
SIGNAL \Selector105~1_combout\ : std_logic;
SIGNAL \Selector103~0_combout\ : std_logic;
SIGNAL \m_address[0]~input_o\ : std_logic;
SIGNAL \cache_w_offset~0_combout\ : std_logic;
SIGNAL \Selector103~1_combout\ : std_logic;
SIGNAL \Selector104~0_combout\ : std_logic;
SIGNAL \Selector104~combout\ : std_logic;
SIGNAL \m_address[1]~input_o\ : std_logic;
SIGNAL \cache_w_offset~1_combout\ : std_logic;
SIGNAL \Selector103~2_combout\ : std_logic;
SIGNAL \Selector103~combout\ : std_logic;
SIGNAL \Selector195~0_combout\ : std_logic;
SIGNAL \Selector195~1_combout\ : std_logic;
SIGNAL \Selector195~combout\ : std_logic;
SIGNAL \current.dma~clkctrl_outclk\ : std_logic;
SIGNAL \cache_r_offset[0][0]~combout\ : std_logic;
SIGNAL \Selector197~combout\ : std_logic;
SIGNAL \cache_r_offset[0][1]~combout\ : std_logic;
SIGNAL \s_readdata[1]~input_o\ : std_logic;
SIGNAL \s_readdata[2]~input_o\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~43_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~45_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~44_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~42_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~46_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~47_combout\ : std_logic;
SIGNAL \s_readdata[3]~input_o\ : std_logic;
SIGNAL \s_readdata[4]~input_o\ : std_logic;
SIGNAL \s_readdata[5]~input_o\ : std_logic;
SIGNAL \s_readdata[6]~input_o\ : std_logic;
SIGNAL \m_writedata[6]~input_o\ : std_logic;
SIGNAL \s_readdata[7]~input_o\ : std_logic;
SIGNAL \s_readdata[8]~input_o\ : std_logic;
SIGNAL \m_writedata[8]~input_o\ : std_logic;
SIGNAL \s_readdata[9]~input_o\ : std_logic;
SIGNAL \s_readdata[10]~input_o\ : std_logic;
SIGNAL \s_readdata[11]~input_o\ : std_logic;
SIGNAL \s_readdata[12]~input_o\ : std_logic;
SIGNAL \s_readdata[13]~input_o\ : std_logic;
SIGNAL \m_writedata[13]~input_o\ : std_logic;
SIGNAL \s_readdata[14]~input_o\ : std_logic;
SIGNAL \m_writedata[14]~input_o\ : std_logic;
SIGNAL \s_readdata[15]~input_o\ : std_logic;
SIGNAL \m_writedata[15]~input_o\ : std_logic;
SIGNAL \s_readdata[16]~input_o\ : std_logic;
SIGNAL \m_writedata[16]~input_o\ : std_logic;
SIGNAL \s_readdata[17]~input_o\ : std_logic;
SIGNAL \m_writedata[17]~input_o\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~65_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Selector51~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~64_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \Selector52~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~63_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Selector53~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~62_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \Selector54~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~61_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Selector55~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~60_combout\ : std_logic;
SIGNAL \m_writedata[12]~input_o\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \Selector56~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~59_combout\ : std_logic;
SIGNAL \m_writedata[11]~input_o\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Selector57~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~58_combout\ : std_logic;
SIGNAL \m_writedata[10]~input_o\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \Selector58~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~57_combout\ : std_logic;
SIGNAL \m_writedata[9]~input_o\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Selector59~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~56_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \Selector60~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~55_combout\ : std_logic;
SIGNAL \m_writedata[7]~input_o\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \Selector61~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~54_combout\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \Selector62~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~53_combout\ : std_logic;
SIGNAL \m_writedata[5]~input_o\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \Selector63~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~52_combout\ : std_logic;
SIGNAL \m_writedata[4]~input_o\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \Selector64~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~51_combout\ : std_logic;
SIGNAL \m_writedata[3]~input_o\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \Selector65~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~50_combout\ : std_logic;
SIGNAL \m_writedata[2]~input_o\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \Selector66~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~49_combout\ : std_logic;
SIGNAL \m_writedata[1]~input_o\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \Selector67~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~48_combout\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \Selector100~1_combout\ : std_logic;
SIGNAL \Selector100~2_combout\ : std_logic;
SIGNAL \Selector106~5_combout\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~43_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~45_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~42_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~44_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~46_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~47_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~65_combout\ : std_logic;
SIGNAL \Selector83~0_combout\ : std_logic;
SIGNAL \Selector83~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~64_combout\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \Selector84~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~63_combout\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \Selector85~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~62_combout\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \Selector86~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~61_combout\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \Selector87~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~60_combout\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \Selector88~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~59_combout\ : std_logic;
SIGNAL \Selector89~0_combout\ : std_logic;
SIGNAL \Selector89~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~58_combout\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \Selector90~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~57_combout\ : std_logic;
SIGNAL \Selector91~0_combout\ : std_logic;
SIGNAL \Selector91~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~56_combout\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \Selector92~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~55_combout\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \Selector93~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~54_combout\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \Selector94~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~53_combout\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \Selector95~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~52_combout\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \Selector96~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~51_combout\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \Selector97~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~50_combout\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \Selector98~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~49_combout\ : std_logic;
SIGNAL \Selector99~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~48_combout\ : std_logic;
SIGNAL \hit_reg~q\ : std_logic;
SIGNAL \dma_req_reg~q\ : std_logic;
SIGNAL \Selector141~0_combout\ : std_logic;
SIGNAL \Selector141~1_combout\ : std_logic;
SIGNAL \Selector140~0_combout\ : std_logic;
SIGNAL \Selector141~2_combout\ : std_logic;
SIGNAL \Selector140~1_combout\ : std_logic;
SIGNAL \Selector140~2_combout\ : std_logic;
SIGNAL \Selector139~0_combout\ : std_logic;
SIGNAL \Selector139~1_combout\ : std_logic;
SIGNAL \Selector138~0_combout\ : std_logic;
SIGNAL \Selector138~1_combout\ : std_logic;
SIGNAL \Selector137~0_combout\ : std_logic;
SIGNAL \Selector137~1_combout\ : std_logic;
SIGNAL \Selector136~0_combout\ : std_logic;
SIGNAL \Selector136~1_combout\ : std_logic;
SIGNAL \Selector135~0_combout\ : std_logic;
SIGNAL \Selector135~1_combout\ : std_logic;
SIGNAL \Selector134~0_combout\ : std_logic;
SIGNAL \Selector134~1_combout\ : std_logic;
SIGNAL \Selector133~0_combout\ : std_logic;
SIGNAL \Selector133~1_combout\ : std_logic;
SIGNAL \Selector132~0_combout\ : std_logic;
SIGNAL \Selector132~1_combout\ : std_logic;
SIGNAL \Selector131~0_combout\ : std_logic;
SIGNAL \Selector131~1_combout\ : std_logic;
SIGNAL \Selector130~0_combout\ : std_logic;
SIGNAL \Selector130~1_combout\ : std_logic;
SIGNAL \Selector129~0_combout\ : std_logic;
SIGNAL \Selector129~1_combout\ : std_logic;
SIGNAL \Selector128~0_combout\ : std_logic;
SIGNAL \Selector128~1_combout\ : std_logic;
SIGNAL \Selector127~0_combout\ : std_logic;
SIGNAL \Selector127~1_combout\ : std_logic;
SIGNAL \Selector126~0_combout\ : std_logic;
SIGNAL \Selector126~1_combout\ : std_logic;
SIGNAL \Selector125~0_combout\ : std_logic;
SIGNAL \Selector125~1_combout\ : std_logic;
SIGNAL \Selector124~0_combout\ : std_logic;
SIGNAL \Selector124~1_combout\ : std_logic;
SIGNAL \s_readdata[18]~input_o\ : std_logic;
SIGNAL \m_writedata[18]~input_o\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \Selector82~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~79_combout\ : std_logic;
SIGNAL \s_readdata[31]~input_o\ : std_logic;
SIGNAL \m_writedata[31]~input_o\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \Selector69~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~78_combout\ : std_logic;
SIGNAL \m_writedata[30]~input_o\ : std_logic;
SIGNAL \s_readdata[30]~input_o\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \Selector70~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~77_combout\ : std_logic;
SIGNAL \s_readdata[29]~input_o\ : std_logic;
SIGNAL \m_writedata[29]~input_o\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \Selector71~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~76_combout\ : std_logic;
SIGNAL \s_readdata[28]~input_o\ : std_logic;
SIGNAL \m_writedata[28]~input_o\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \Selector72~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~75_combout\ : std_logic;
SIGNAL \m_writedata[27]~input_o\ : std_logic;
SIGNAL \s_readdata[27]~input_o\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \Selector73~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~74_combout\ : std_logic;
SIGNAL \m_writedata[26]~input_o\ : std_logic;
SIGNAL \s_readdata[26]~input_o\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \Selector74~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~73_combout\ : std_logic;
SIGNAL \s_readdata[25]~input_o\ : std_logic;
SIGNAL \m_writedata[25]~input_o\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \Selector75~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~72_combout\ : std_logic;
SIGNAL \s_readdata[24]~input_o\ : std_logic;
SIGNAL \m_writedata[24]~input_o\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \Selector76~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~71_combout\ : std_logic;
SIGNAL \s_readdata[23]~input_o\ : std_logic;
SIGNAL \m_writedata[23]~input_o\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \Selector77~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~70_combout\ : std_logic;
SIGNAL \s_readdata[22]~input_o\ : std_logic;
SIGNAL \m_writedata[22]~input_o\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \Selector78~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~69_combout\ : std_logic;
SIGNAL \m_writedata[21]~input_o\ : std_logic;
SIGNAL \s_readdata[21]~input_o\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \Selector79~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~68_combout\ : std_logic;
SIGNAL \m_writedata[20]~input_o\ : std_logic;
SIGNAL \s_readdata[20]~input_o\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \Selector80~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~67_combout\ : std_logic;
SIGNAL \s_readdata[19]~input_o\ : std_logic;
SIGNAL \m_writedata[19]~input_o\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \Selector81~1_combout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \cache_gen:0:xcache|linedata~66_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Selector50~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~79_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Selector37~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~78_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector38~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~77_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector39~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~76_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Selector40~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~75_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Selector41~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~74_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Selector42~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~73_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector43~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~72_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector44~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~71_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector45~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~70_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Selector46~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~69_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Selector47~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~68_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Selector48~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~67_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Selector49~1_combout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \cache_gen:1:xcache|linedata~66_combout\ : std_logic;
SIGNAL \Selector123~0_combout\ : std_logic;
SIGNAL \Selector123~1_combout\ : std_logic;
SIGNAL \Selector122~0_combout\ : std_logic;
SIGNAL \Selector122~1_combout\ : std_logic;
SIGNAL \Selector121~0_combout\ : std_logic;
SIGNAL \Selector121~1_combout\ : std_logic;
SIGNAL \Selector120~0_combout\ : std_logic;
SIGNAL \Selector120~1_combout\ : std_logic;
SIGNAL \Selector119~0_combout\ : std_logic;
SIGNAL \Selector119~1_combout\ : std_logic;
SIGNAL \Selector118~0_combout\ : std_logic;
SIGNAL \Selector118~1_combout\ : std_logic;
SIGNAL \Selector117~0_combout\ : std_logic;
SIGNAL \Selector117~1_combout\ : std_logic;
SIGNAL \Selector116~0_combout\ : std_logic;
SIGNAL \Selector116~1_combout\ : std_logic;
SIGNAL \Selector115~0_combout\ : std_logic;
SIGNAL \Selector115~1_combout\ : std_logic;
SIGNAL \Selector114~0_combout\ : std_logic;
SIGNAL \Selector114~1_combout\ : std_logic;
SIGNAL \Selector113~0_combout\ : std_logic;
SIGNAL \Selector113~1_combout\ : std_logic;
SIGNAL \Selector112~0_combout\ : std_logic;
SIGNAL \Selector112~1_combout\ : std_logic;
SIGNAL \Selector111~0_combout\ : std_logic;
SIGNAL \Selector111~1_combout\ : std_logic;
SIGNAL \Selector110~0_combout\ : std_logic;
SIGNAL \Selector110~1_combout\ : std_logic;
SIGNAL \Selector194~0_combout\ : std_logic;
SIGNAL \Selector163~0_combout\ : std_logic;
SIGNAL \Selector194~1_combout\ : std_logic;
SIGNAL \Selector193~0_combout\ : std_logic;
SIGNAL \Selector193~1_combout\ : std_logic;
SIGNAL \Selector192~0_combout\ : std_logic;
SIGNAL \Selector192~1_combout\ : std_logic;
SIGNAL \Selector191~0_combout\ : std_logic;
SIGNAL \Selector191~1_combout\ : std_logic;
SIGNAL \Selector190~0_combout\ : std_logic;
SIGNAL \Selector190~1_combout\ : std_logic;
SIGNAL \Selector189~0_combout\ : std_logic;
SIGNAL \Selector189~1_combout\ : std_logic;
SIGNAL \Selector188~0_combout\ : std_logic;
SIGNAL \Selector188~1_combout\ : std_logic;
SIGNAL \Selector187~0_combout\ : std_logic;
SIGNAL \Selector187~1_combout\ : std_logic;
SIGNAL \Selector186~0_combout\ : std_logic;
SIGNAL \Selector186~1_combout\ : std_logic;
SIGNAL \Selector185~0_combout\ : std_logic;
SIGNAL \Selector185~1_combout\ : std_logic;
SIGNAL \Selector184~0_combout\ : std_logic;
SIGNAL \Selector184~1_combout\ : std_logic;
SIGNAL \Selector183~0_combout\ : std_logic;
SIGNAL \Selector183~1_combout\ : std_logic;
SIGNAL \Selector182~0_combout\ : std_logic;
SIGNAL \Selector182~1_combout\ : std_logic;
SIGNAL \Selector181~0_combout\ : std_logic;
SIGNAL \Selector181~1_combout\ : std_logic;
SIGNAL \Selector180~0_combout\ : std_logic;
SIGNAL \Selector180~1_combout\ : std_logic;
SIGNAL \Selector179~0_combout\ : std_logic;
SIGNAL \Selector179~1_combout\ : std_logic;
SIGNAL \Selector178~0_combout\ : std_logic;
SIGNAL \Selector178~1_combout\ : std_logic;
SIGNAL \Selector177~0_combout\ : std_logic;
SIGNAL \Selector177~1_combout\ : std_logic;
SIGNAL \Selector176~0_combout\ : std_logic;
SIGNAL \Selector176~1_combout\ : std_logic;
SIGNAL \Selector175~0_combout\ : std_logic;
SIGNAL \Selector175~1_combout\ : std_logic;
SIGNAL \Selector174~0_combout\ : std_logic;
SIGNAL \Selector174~1_combout\ : std_logic;
SIGNAL \Selector173~0_combout\ : std_logic;
SIGNAL \Selector173~1_combout\ : std_logic;
SIGNAL \Selector172~0_combout\ : std_logic;
SIGNAL \Selector172~1_combout\ : std_logic;
SIGNAL \Selector171~0_combout\ : std_logic;
SIGNAL \Selector171~1_combout\ : std_logic;
SIGNAL \Selector170~0_combout\ : std_logic;
SIGNAL \Selector170~1_combout\ : std_logic;
SIGNAL \Selector169~0_combout\ : std_logic;
SIGNAL \Selector169~1_combout\ : std_logic;
SIGNAL \Selector168~0_combout\ : std_logic;
SIGNAL \Selector168~1_combout\ : std_logic;
SIGNAL \Selector167~0_combout\ : std_logic;
SIGNAL \Selector167~1_combout\ : std_logic;
SIGNAL \Selector166~0_combout\ : std_logic;
SIGNAL \Selector166~1_combout\ : std_logic;
SIGNAL \Selector165~1_combout\ : std_logic;
SIGNAL \Selector165~2_combout\ : std_logic;
SIGNAL \Selector164~0_combout\ : std_logic;
SIGNAL \Selector164~1_combout\ : std_logic;
SIGNAL \Selector163~1_combout\ : std_logic;
SIGNAL \Selector163~2_combout\ : std_logic;
SIGNAL \Selector162~3_combout\ : std_logic;
SIGNAL \Selector161~3_combout\ : std_logic;
SIGNAL \Selector161~4_combout\ : std_logic;
SIGNAL \Selector162~2_combout\ : std_logic;
SIGNAL \Selector161~5_combout\ : std_logic;
SIGNAL \Selector160~0_combout\ : std_logic;
SIGNAL \Selector159~0_combout\ : std_logic;
SIGNAL \Selector158~0_combout\ : std_logic;
SIGNAL \Selector157~0_combout\ : std_logic;
SIGNAL \Selector156~0_combout\ : std_logic;
SIGNAL \Selector155~0_combout\ : std_logic;
SIGNAL \Selector154~0_combout\ : std_logic;
SIGNAL \Selector144~0_combout\ : std_logic;
SIGNAL \Selector153~0_combout\ : std_logic;
SIGNAL \Selector153~1_combout\ : std_logic;
SIGNAL \Selector153~2_combout\ : std_logic;
SIGNAL \Selector152~0_combout\ : std_logic;
SIGNAL \Selector152~1_combout\ : std_logic;
SIGNAL \Selector152~2_combout\ : std_logic;
SIGNAL \Selector151~0_combout\ : std_logic;
SIGNAL \Selector151~1_combout\ : std_logic;
SIGNAL \Selector151~2_combout\ : std_logic;
SIGNAL \Selector150~0_combout\ : std_logic;
SIGNAL \Selector150~1_combout\ : std_logic;
SIGNAL \Selector150~2_combout\ : std_logic;
SIGNAL \Selector149~0_combout\ : std_logic;
SIGNAL \Selector149~1_combout\ : std_logic;
SIGNAL \Selector148~0_combout\ : std_logic;
SIGNAL \Selector148~1_combout\ : std_logic;
SIGNAL \Selector147~0_combout\ : std_logic;
SIGNAL \Selector147~1_combout\ : std_logic;
SIGNAL \Selector146~0_combout\ : std_logic;
SIGNAL \Selector146~1_combout\ : std_logic;
SIGNAL \Selector145~0_combout\ : std_logic;
SIGNAL \Selector145~1_combout\ : std_logic;
SIGNAL \Selector145~2_combout\ : std_logic;
SIGNAL \Selector144~1_combout\ : std_logic;
SIGNAL \Selector144~2_combout\ : std_logic;
SIGNAL \Selector143~1_combout\ : std_logic;
SIGNAL \Selector143~2_combout\ : std_logic;
SIGNAL \Selector142~0_combout\ : std_logic;
SIGNAL \Selector142~1_combout\ : std_logic;
SIGNAL \Selector142~2_combout\ : std_logic;
SIGNAL init_offset : std_logic_vector(1 DOWNTO 0);
SIGNAL init_index : std_logic_vector(6 DOWNTO 0);
SIGNAL \cache_gen:1:xcache|ctrldata_rtl_0_bypass\ : std_logic_vector(0 TO 27);
SIGNAL \cache_gen:1:xcache|linedata_rtl_0_bypass\ : std_logic_vector(0 TO 50);
SIGNAL dword_number : std_logic_vector(1 DOWNTO 0);
SIGNAL \cache_gen:0:xcache|ctrldata_rtl_0_bypass\ : std_logic_vector(0 TO 27);
SIGNAL \cache_gen:0:xcache|linedata_rtl_0_bypass\ : std_logic_vector(0 TO 50);
SIGNAL word_number : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_current.init~q\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_m_writedata <= m_writedata;
ww_m_address <= m_address;
ww_m_memwrite <= m_memwrite;
ww_m_memread <= m_memread;
m_readdata <= ww_m_readdata;
m_waitrequest <= ww_m_waitrequest;
s_writedata <= ww_s_writedata;
s_address <= ww_s_address;
s_memwrite <= ww_s_memwrite;
s_memread <= ww_s_memread;
ww_s_readdata <= s_readdata;
ww_s_waitrequest <= s_waitrequest;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\Selector51~1_combout\ & \Selector52~1_combout\ & \Selector53~1_combout\ & \Selector54~1_combout\ & \Selector55~1_combout\ & \Selector56~1_combout\ & 
\Selector57~1_combout\ & \Selector58~1_combout\ & \Selector59~1_combout\ & \Selector60~1_combout\ & \Selector61~1_combout\ & \Selector62~1_combout\ & \Selector63~1_combout\ & \Selector64~1_combout\ & \Selector65~1_combout\ & \Selector66~1_combout\ & 
\Selector67~1_combout\ & \Selector68~2_combout\);

\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\cache_w_index[0][6]~combout\ & \cache_w_index[0][5]~combout\ & \cache_w_index[0][4]~combout\ & \cache_w_index[0][3]~combout\ & \cache_w_index[0][2]~combout\ & 
\cache_w_index[0][1]~combout\ & \cache_w_index[0][0]~combout\ & \Selector103~combout\ & \Selector104~combout\);

\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\cache_r_addr[0][8]~6_combout\ & \cache_r_addr[0][7]~5_combout\ & \cache_r_addr[0][6]~4_combout\ & \cache_r_addr[0][5]~3_combout\ & \cache_r_addr[0][4]~2_combout\ & 
\cache_r_addr[0][3]~1_combout\ & \cache_r_addr[0][2]~0_combout\ & \cache_r_offset[0][1]~combout\ & \cache_r_offset[0][0]~combout\);

\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a1\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a2\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a3\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a4\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a5\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a6\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a7\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a8\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a9\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a10\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a11\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a12\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a13\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a14\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a15\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a16\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a17\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);

\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\Selector83~1_combout\ & \Selector84~1_combout\ & \Selector85~1_combout\ & \Selector86~1_combout\ & \Selector87~1_combout\ & \Selector88~1_combout\ & 
\Selector89~1_combout\ & \Selector90~1_combout\ & \Selector91~1_combout\ & \Selector92~1_combout\ & \Selector93~1_combout\ & \Selector94~1_combout\ & \Selector95~1_combout\ & \Selector96~1_combout\ & \Selector97~1_combout\ & \Selector98~1_combout\ & 
\Selector99~1_combout\ & \Selector100~2_combout\);

\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\cache_w_index[0][6]~combout\ & \cache_w_index[0][5]~combout\ & \cache_w_index[0][4]~combout\ & \cache_w_index[0][3]~combout\ & \cache_w_index[0][2]~combout\ & 
\cache_w_index[0][1]~combout\ & \cache_w_index[0][0]~combout\ & \Selector103~combout\ & \Selector104~combout\);

\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\cache_r_addr[0][8]~6_combout\ & \cache_r_addr[0][7]~5_combout\ & \cache_r_addr[0][6]~4_combout\ & \cache_r_addr[0][5]~3_combout\ & \cache_r_addr[0][4]~2_combout\ & 
\cache_r_addr[0][3]~1_combout\ & \cache_r_addr[0][2]~0_combout\ & \cache_r_offset[0][1]~combout\ & \cache_r_offset[0][0]~combout\);

\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a1\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a2\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a3\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a4\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a5\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a6\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a7\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a8\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a9\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a10\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a11\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a12\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a13\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a14\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a15\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a16\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a17\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);

\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \Selector37~1_combout\ & \Selector38~1_combout\ & \Selector39~1_combout\ & \Selector40~1_combout\ & \Selector41~1_combout\ & 
\Selector42~1_combout\ & \Selector43~1_combout\ & \Selector44~1_combout\ & \Selector45~1_combout\ & \Selector46~1_combout\ & \Selector47~1_combout\ & \Selector48~1_combout\ & \Selector49~1_combout\ & \Selector50~1_combout\);

\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\cache_w_index[0][6]~combout\ & \cache_w_index[0][5]~combout\ & \cache_w_index[0][4]~combout\ & \cache_w_index[0][3]~combout\ & \cache_w_index[0][2]~combout\ & 
\cache_w_index[0][1]~combout\ & \cache_w_index[0][0]~combout\ & \Selector103~combout\ & \Selector104~combout\);

\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\cache_r_addr[0][8]~6_combout\ & \cache_r_addr[0][7]~5_combout\ & \cache_r_addr[0][6]~4_combout\ & \cache_r_addr[0][5]~3_combout\ & \cache_r_addr[0][4]~2_combout\ & 
\cache_r_addr[0][3]~1_combout\ & \cache_r_addr[0][2]~0_combout\ & \cache_r_offset[0][1]~combout\ & \cache_r_offset[0][0]~combout\);

\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a19\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(1);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a20\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(2);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a21\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(3);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a22\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(4);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a23\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(5);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a24\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(6);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a25\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(7);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a26\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(8);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a27\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(9);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a28\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(10);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a29\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(11);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a30\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(12);
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a31\ <= \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(13);

\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \Selector69~1_combout\ & \Selector70~1_combout\ & \Selector71~1_combout\ & \Selector72~1_combout\ & \Selector73~1_combout\ & 
\Selector74~1_combout\ & \Selector75~1_combout\ & \Selector76~1_combout\ & \Selector77~1_combout\ & \Selector78~1_combout\ & \Selector79~1_combout\ & \Selector80~1_combout\ & \Selector81~1_combout\ & \Selector82~1_combout\);

\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\cache_w_index[0][6]~combout\ & \cache_w_index[0][5]~combout\ & \cache_w_index[0][4]~combout\ & \cache_w_index[0][3]~combout\ & \cache_w_index[0][2]~combout\ & 
\cache_w_index[0][1]~combout\ & \cache_w_index[0][0]~combout\ & \Selector103~combout\ & \Selector104~combout\);

\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\cache_r_addr[0][8]~6_combout\ & \cache_r_addr[0][7]~5_combout\ & \cache_r_addr[0][6]~4_combout\ & \cache_r_addr[0][5]~3_combout\ & \cache_r_addr[0][4]~2_combout\ & 
\cache_r_addr[0][3]~1_combout\ & \cache_r_addr[0][2]~0_combout\ & \cache_r_offset[0][1]~combout\ & \cache_r_offset[0][0]~combout\);

\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a19\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(1);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a20\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(2);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a21\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(3);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a22\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(4);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a23\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(5);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a24\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(6);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a25\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(7);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a26\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(8);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a27\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(9);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a28\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(10);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a29\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(11);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a30\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(12);
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a31\ <= \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(13);

\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & \Selector16~0_combout\);

\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\cache_w_index[0][6]~combout\ & \cache_w_index[0][5]~combout\ & \cache_w_index[0][4]~combout\ & \cache_w_index[0][3]~combout\ & \cache_w_index[0][2]~combout\ & 
\cache_w_index[0][1]~combout\ & \cache_w_index[0][0]~combout\);

\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\cache_r_addr[0][8]~6_combout\ & \cache_r_addr[0][7]~5_combout\ & \cache_r_addr[0][6]~4_combout\ & \cache_r_addr[0][5]~3_combout\ & \cache_r_addr[0][4]~2_combout\ & 
\cache_r_addr[0][3]~1_combout\ & \cache_r_addr[0][2]~0_combout\);

\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\ctrl_in[0][10]~3_combout\ & \Selector27~4_combout\ & \Selector28~1_combout\ & \Selector29~1_combout\ & \Selector30~1_combout\ & \Selector31~1_combout\ & \Selector32~1_combout\ & \Selector33~1_combout\ & \Selector34~1_combout\ & \Selector35~1_combout\ & 
\Selector36~2_combout\);

\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\cache_w_index[0][6]~combout\ & \cache_w_index[0][5]~combout\ & \cache_w_index[0][4]~combout\ & \cache_w_index[0][3]~combout\ & \cache_w_index[0][2]~combout\ & 
\cache_w_index[0][1]~combout\ & \cache_w_index[0][0]~combout\);

\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\cache_r_addr[0][8]~6_combout\ & \cache_r_addr[0][7]~5_combout\ & \cache_r_addr[0][6]~4_combout\ & \cache_r_addr[0][5]~3_combout\ & \cache_r_addr[0][4]~2_combout\ & 
\cache_r_addr[0][3]~1_combout\ & \cache_r_addr[0][2]~0_combout\);

\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a1\ <= \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a2\ <= \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a3\ <= \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a4\ <= \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a5\ <= \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a6\ <= \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a7\ <= \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a8\ <= \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a9\ <= \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a10\ <= \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);

\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \Selector15~0_combout\ & 
\ctrl_in[1][10]~2_combout\ & \Selector17~2_combout\ & \Selector18~1_combout\ & \Selector19~2_combout\ & \Selector20~1_combout\ & \Selector21~1_combout\ & \Selector22~1_combout\ & \Selector23~2_combout\ & \Selector24~1_combout\ & \Selector25~1_combout\ & 
\Selector26~4_combout\);

\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\cache_w_index[0][6]~combout\ & \cache_w_index[0][5]~combout\ & \cache_w_index[0][4]~combout\ & \cache_w_index[0][3]~combout\ & \cache_w_index[0][2]~combout\ & 
\cache_w_index[0][1]~combout\ & \cache_w_index[0][0]~combout\);

\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\cache_r_addr[0][8]~6_combout\ & \cache_r_addr[0][7]~5_combout\ & \cache_r_addr[0][6]~4_combout\ & \cache_r_addr[0][5]~3_combout\ & \cache_r_addr[0][4]~2_combout\ & 
\cache_r_addr[0][3]~1_combout\ & \cache_r_addr[0][2]~0_combout\);

\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a1\ <= \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a2\ <= \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a3\ <= \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a4\ <= \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a5\ <= \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a6\ <= \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a7\ <= \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a8\ <= \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a9\ <= \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a10\ <= \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11\ <= \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);

\WideOr105~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \WideOr105~0_combout\);

\current.dma~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \current.dma~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_current.init~q\ <= NOT \current.init~q\;
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X81_Y44_N9
\m_readdata[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector141~2_combout\,
	devoe => ww_devoe,
	o => \m_readdata[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\m_readdata[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector140~2_combout\,
	devoe => ww_devoe,
	o => \m_readdata[1]~output_o\);

-- Location: IOOBUF_X81_Y25_N2
\m_readdata[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector139~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[2]~output_o\);

-- Location: IOOBUF_X81_Y17_N9
\m_readdata[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector138~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[3]~output_o\);

-- Location: IOOBUF_X81_Y2_N2
\m_readdata[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector137~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[4]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\m_readdata[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector136~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[5]~output_o\);

-- Location: IOOBUF_X33_Y67_N23
\m_readdata[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector135~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[6]~output_o\);

-- Location: IOOBUF_X29_Y67_N9
\m_readdata[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector134~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[7]~output_o\);

-- Location: IOOBUF_X31_Y67_N2
\m_readdata[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector133~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[8]~output_o\);

-- Location: IOOBUF_X29_Y67_N2
\m_readdata[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector132~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[9]~output_o\);

-- Location: IOOBUF_X81_Y26_N9
\m_readdata[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector131~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[10]~output_o\);

-- Location: IOOBUF_X81_Y14_N16
\m_readdata[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector130~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[11]~output_o\);

-- Location: IOOBUF_X33_Y67_N2
\m_readdata[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector129~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[12]~output_o\);

-- Location: IOOBUF_X44_Y67_N16
\m_readdata[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector128~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[13]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\m_readdata[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector127~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[14]~output_o\);

-- Location: IOOBUF_X17_Y0_N16
\m_readdata[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector126~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[15]~output_o\);

-- Location: IOOBUF_X81_Y6_N16
\m_readdata[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector125~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[16]~output_o\);

-- Location: IOOBUF_X81_Y19_N9
\m_readdata[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector124~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[17]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\m_readdata[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector123~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[18]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\m_readdata[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector122~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[19]~output_o\);

-- Location: IOOBUF_X24_Y67_N2
\m_readdata[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector121~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[20]~output_o\);

-- Location: IOOBUF_X22_Y67_N9
\m_readdata[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector120~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[21]~output_o\);

-- Location: IOOBUF_X52_Y67_N16
\m_readdata[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector119~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[22]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\m_readdata[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector118~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[23]~output_o\);

-- Location: IOOBUF_X81_Y4_N2
\m_readdata[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector117~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[24]~output_o\);

-- Location: IOOBUF_X40_Y67_N2
\m_readdata[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector116~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[25]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\m_readdata[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector115~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[26]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\m_readdata[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector114~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[27]~output_o\);

-- Location: IOOBUF_X81_Y5_N2
\m_readdata[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector113~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[28]~output_o\);

-- Location: IOOBUF_X81_Y9_N9
\m_readdata[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector112~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[29]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\m_readdata[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector111~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[30]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\m_readdata[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector110~1_combout\,
	devoe => ww_devoe,
	o => \m_readdata[31]~output_o\);

-- Location: IOOBUF_X81_Y7_N2
\m_waitrequest~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector9~0_combout\,
	devoe => ww_devoe,
	o => \m_waitrequest~output_o\);

-- Location: IOOBUF_X17_Y0_N9
\s_writedata[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector194~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[0]~output_o\);

-- Location: IOOBUF_X70_Y0_N9
\s_writedata[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector193~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[1]~output_o\);

-- Location: IOOBUF_X81_Y14_N9
\s_writedata[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector192~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[2]~output_o\);

-- Location: IOOBUF_X68_Y0_N2
\s_writedata[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector191~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[3]~output_o\);

-- Location: IOOBUF_X81_Y43_N2
\s_writedata[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector190~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\s_writedata[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector189~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[5]~output_o\);

-- Location: IOOBUF_X17_Y0_N2
\s_writedata[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector188~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[6]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\s_writedata[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector187~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[7]~output_o\);

-- Location: IOOBUF_X31_Y67_N16
\s_writedata[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector186~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[8]~output_o\);

-- Location: IOOBUF_X81_Y42_N9
\s_writedata[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector185~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[9]~output_o\);

-- Location: IOOBUF_X81_Y25_N9
\s_writedata[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector184~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[10]~output_o\);

-- Location: IOOBUF_X81_Y10_N9
\s_writedata[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector183~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[11]~output_o\);

-- Location: IOOBUF_X81_Y20_N9
\s_writedata[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector182~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[12]~output_o\);

-- Location: IOOBUF_X81_Y17_N2
\s_writedata[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector181~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[13]~output_o\);

-- Location: IOOBUF_X31_Y67_N9
\s_writedata[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector180~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[14]~output_o\);

-- Location: IOOBUF_X81_Y41_N2
\s_writedata[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector179~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[15]~output_o\);

-- Location: IOOBUF_X68_Y0_N9
\s_writedata[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector178~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[16]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\s_writedata[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector177~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[17]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\s_writedata[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector176~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[18]~output_o\);

-- Location: IOOBUF_X81_Y11_N2
\s_writedata[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector175~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[19]~output_o\);

-- Location: IOOBUF_X29_Y67_N16
\s_writedata[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector174~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[20]~output_o\);

-- Location: IOOBUF_X33_Y0_N23
\s_writedata[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector173~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[21]~output_o\);

-- Location: IOOBUF_X15_Y0_N23
\s_writedata[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector172~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[22]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\s_writedata[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector171~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[23]~output_o\);

-- Location: IOOBUF_X81_Y7_N9
\s_writedata[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector170~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[24]~output_o\);

-- Location: IOOBUF_X81_Y16_N2
\s_writedata[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector169~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[25]~output_o\);

-- Location: IOOBUF_X6_Y0_N16
\s_writedata[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector168~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[26]~output_o\);

-- Location: IOOBUF_X26_Y67_N16
\s_writedata[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector167~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[27]~output_o\);

-- Location: IOOBUF_X44_Y0_N16
\s_writedata[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector166~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[28]~output_o\);

-- Location: IOOBUF_X81_Y9_N2
\s_writedata[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector165~2_combout\,
	devoe => ww_devoe,
	o => \s_writedata[29]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\s_writedata[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector164~1_combout\,
	devoe => ww_devoe,
	o => \s_writedata[30]~output_o\);

-- Location: IOOBUF_X49_Y67_N9
\s_writedata[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector163~2_combout\,
	devoe => ww_devoe,
	o => \s_writedata[31]~output_o\);

-- Location: IOOBUF_X81_Y6_N2
\s_address[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector162~2_combout\,
	devoe => ww_devoe,
	o => \s_address[0]~output_o\);

-- Location: IOOBUF_X70_Y0_N16
\s_address[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector161~5_combout\,
	devoe => ww_devoe,
	o => \s_address[1]~output_o\);

-- Location: IOOBUF_X44_Y67_N9
\s_address[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector160~0_combout\,
	devoe => ww_devoe,
	o => \s_address[2]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\s_address[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector159~0_combout\,
	devoe => ww_devoe,
	o => \s_address[3]~output_o\);

-- Location: IOOBUF_X81_Y8_N2
\s_address[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector158~0_combout\,
	devoe => ww_devoe,
	o => \s_address[4]~output_o\);

-- Location: IOOBUF_X70_Y0_N2
\s_address[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector157~0_combout\,
	devoe => ww_devoe,
	o => \s_address[5]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\s_address[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector156~0_combout\,
	devoe => ww_devoe,
	o => \s_address[6]~output_o\);

-- Location: IOOBUF_X44_Y0_N23
\s_address[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector155~0_combout\,
	devoe => ww_devoe,
	o => \s_address[7]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\s_address[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector154~0_combout\,
	devoe => ww_devoe,
	o => \s_address[8]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\s_address[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector153~2_combout\,
	devoe => ww_devoe,
	o => \s_address[9]~output_o\);

-- Location: IOOBUF_X68_Y0_N16
\s_address[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector152~2_combout\,
	devoe => ww_devoe,
	o => \s_address[10]~output_o\);

-- Location: IOOBUF_X49_Y67_N23
\s_address[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector151~2_combout\,
	devoe => ww_devoe,
	o => \s_address[11]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\s_address[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector150~2_combout\,
	devoe => ww_devoe,
	o => \s_address[12]~output_o\);

-- Location: IOOBUF_X42_Y67_N16
\s_address[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector149~1_combout\,
	devoe => ww_devoe,
	o => \s_address[13]~output_o\);

-- Location: IOOBUF_X81_Y8_N9
\s_address[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector148~1_combout\,
	devoe => ww_devoe,
	o => \s_address[14]~output_o\);

-- Location: IOOBUF_X81_Y12_N2
\s_address[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector147~1_combout\,
	devoe => ww_devoe,
	o => \s_address[15]~output_o\);

-- Location: IOOBUF_X10_Y0_N23
\s_address[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector146~1_combout\,
	devoe => ww_devoe,
	o => \s_address[16]~output_o\);

-- Location: IOOBUF_X81_Y12_N9
\s_address[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector145~2_combout\,
	devoe => ww_devoe,
	o => \s_address[17]~output_o\);

-- Location: IOOBUF_X47_Y67_N9
\s_address[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector144~2_combout\,
	devoe => ww_devoe,
	o => \s_address[18]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\s_memwrite~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector143~2_combout\,
	devoe => ww_devoe,
	o => \s_memwrite~output_o\);

-- Location: IOOBUF_X81_Y2_N16
\s_memread~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector142~2_combout\,
	devoe => ww_devoe,
	o => \s_memread~output_o\);

-- Location: IOIBUF_X38_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G29
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: LCCOMB_X38_Y13_N10
\init_index[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \init_index[0]~7_combout\ = init_index(0) $ (VCC)
-- \init_index[0]~8\ = CARRY(init_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => init_index(0),
	datad => VCC,
	combout => \init_index[0]~7_combout\,
	cout => \init_index[0]~8\);

-- Location: IOIBUF_X38_Y0_N22
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G28
\rst~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: LCCOMB_X37_Y13_N6
\current.reset~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current.reset~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \current.reset~feeder_combout\);

-- Location: FF_X37_Y13_N7
\current.reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current.reset~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current.reset~q\);

-- Location: LCCOMB_X36_Y13_N2
\init_offset~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \init_offset~0_combout\ = (\current.init~q\ & !init_offset(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.init~q\,
	datad => init_offset(0),
	combout => \init_offset~0_combout\);

-- Location: FF_X36_Y13_N7
\init_offset[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \init_offset~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_offset(0));

-- Location: LCCOMB_X38_Y13_N24
\Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = init_offset(0) $ (init_offset(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => init_offset(0),
	datac => init_offset(1),
	combout => \Add2~0_combout\);

-- Location: FF_X38_Y13_N25
\init_offset[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_current.init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_offset(1));

-- Location: LCCOMB_X38_Y13_N30
\init_done~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \init_done~0_combout\ = (init_index(1) & (init_offset(1) & (init_offset(0) & init_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => init_index(1),
	datab => init_offset(1),
	datac => init_offset(0),
	datad => init_index(0),
	combout => \init_done~0_combout\);

-- Location: LCCOMB_X38_Y13_N20
\init_index[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \init_index[5]~18_combout\ = (init_index(5) & (!\init_index[4]~17\)) # (!init_index(5) & ((\init_index[4]~17\) # (GND)))
-- \init_index[5]~19\ = CARRY((!\init_index[4]~17\) # (!init_index(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_index(5),
	datad => VCC,
	cin => \init_index[4]~17\,
	combout => \init_index[5]~18_combout\,
	cout => \init_index[5]~19\);

-- Location: LCCOMB_X38_Y13_N22
\init_index[6]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \init_index[6]~20_combout\ = init_index(6) $ (!\init_index[5]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_index(6),
	cin => \init_index[5]~19\,
	combout => \init_index[6]~20_combout\);

-- Location: LCCOMB_X38_Y13_N2
\init_index[4]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \init_index[4]~9_combout\ = ((init_offset(1) & init_offset(0))) # (!\current.init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => init_offset(1),
	datac => init_offset(0),
	datad => \current.init~q\,
	combout => \init_index[4]~9_combout\);

-- Location: FF_X38_Y13_N23
\init_index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \init_index[6]~20_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_current.init~q\,
	ena => \init_index[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_index(6));

-- Location: LCCOMB_X38_Y13_N28
\init_done~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \init_done~1_combout\ = (init_index(3) & (init_index(4) & (init_index(2) & init_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => init_index(3),
	datab => init_index(4),
	datac => init_index(2),
	datad => init_index(5),
	combout => \init_done~1_combout\);

-- Location: LCCOMB_X38_Y13_N4
\init_done~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \init_done~2_combout\ = (\init_done~0_combout\ & (init_index(6) & \init_done~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_done~0_combout\,
	datac => init_index(6),
	datad => \init_done~1_combout\,
	combout => \init_done~2_combout\);

-- Location: LCCOMB_X37_Y13_N30
\Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ((\current.init~q\ & !\init_done~2_combout\)) # (!\current.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.reset~q\,
	datac => \current.init~q\,
	datad => \init_done~2_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X37_Y13_N31
\current.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector8~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current.init~q\);

-- Location: FF_X38_Y13_N11
\init_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \init_index[0]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_current.init~q\,
	ena => \init_index[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_index(0));

-- Location: LCCOMB_X38_Y13_N12
\init_index[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \init_index[1]~10_combout\ = (init_index(1) & (!\init_index[0]~8\)) # (!init_index(1) & ((\init_index[0]~8\) # (GND)))
-- \init_index[1]~11\ = CARRY((!\init_index[0]~8\) # (!init_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_index(1),
	datad => VCC,
	cin => \init_index[0]~8\,
	combout => \init_index[1]~10_combout\,
	cout => \init_index[1]~11\);

-- Location: FF_X38_Y13_N13
\init_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \init_index[1]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_current.init~q\,
	ena => \init_index[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_index(1));

-- Location: LCCOMB_X38_Y13_N14
\init_index[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \init_index[2]~12_combout\ = (init_index(2) & (\init_index[1]~11\ $ (GND))) # (!init_index(2) & (!\init_index[1]~11\ & VCC))
-- \init_index[2]~13\ = CARRY((init_index(2) & !\init_index[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => init_index(2),
	datad => VCC,
	cin => \init_index[1]~11\,
	combout => \init_index[2]~12_combout\,
	cout => \init_index[2]~13\);

-- Location: FF_X38_Y13_N15
\init_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \init_index[2]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_current.init~q\,
	ena => \init_index[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_index(2));

-- Location: LCCOMB_X38_Y13_N16
\init_index[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \init_index[3]~14_combout\ = (init_index(3) & (!\init_index[2]~13\)) # (!init_index(3) & ((\init_index[2]~13\) # (GND)))
-- \init_index[3]~15\ = CARRY((!\init_index[2]~13\) # (!init_index(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => init_index(3),
	datad => VCC,
	cin => \init_index[2]~13\,
	combout => \init_index[3]~14_combout\,
	cout => \init_index[3]~15\);

-- Location: FF_X38_Y13_N17
\init_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \init_index[3]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_current.init~q\,
	ena => \init_index[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_index(3));

-- Location: LCCOMB_X38_Y13_N18
\init_index[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \init_index[4]~16_combout\ = (init_index(4) & (\init_index[3]~15\ $ (GND))) # (!init_index(4) & (!\init_index[3]~15\ & VCC))
-- \init_index[4]~17\ = CARRY((init_index(4) & !\init_index[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => init_index(4),
	datad => VCC,
	cin => \init_index[3]~15\,
	combout => \init_index[4]~16_combout\,
	cout => \init_index[4]~17\);

-- Location: FF_X38_Y13_N19
\init_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \init_index[4]~16_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_current.init~q\,
	ena => \init_index[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_index(4));

-- Location: FF_X38_Y13_N21
\init_index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \init_index[5]~18_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_current.init~q\,
	ena => \init_index[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => init_index(5));

-- Location: IOIBUF_X33_Y0_N1
\m_memwrite~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_memwrite,
	o => \m_memwrite~input_o\);

-- Location: IOIBUF_X47_Y67_N1
\m_memread~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_memread,
	o => \m_memread~input_o\);

-- Location: IOIBUF_X81_Y7_N15
\m_address[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_address(18),
	o => \m_address[18]~input_o\);

-- Location: LCCOMB_X36_Y10_N10
\Selector9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (!\m_address[18]~input_o\ & (\current.idle~q\ & (\m_memwrite~input_o\ $ (!\m_memread~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_memwrite~input_o\,
	datab => \m_memread~input_o\,
	datac => \m_address[18]~input_o\,
	datad => \current.idle~q\,
	combout => \Selector9~1_combout\);

-- Location: IOIBUF_X47_Y0_N1
\s_waitrequest~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_waitrequest,
	o => \s_waitrequest~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\m_address[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_address(12),
	o => \m_address[12]~input_o\);

-- Location: LCCOMB_X36_Y10_N30
\Selector14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\current.dma~q\ & ((\s_waitrequest~input_o\) # ((\m_address[18]~input_o\ & \current.idle~q\)))) # (!\current.dma~q\ & (\m_address[18]~input_o\ & ((\current.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.dma~q\,
	datab => \m_address[18]~input_o\,
	datac => \s_waitrequest~input_o\,
	datad => \current.idle~q\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X38_Y10_N30
\current.dma~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current.dma~feeder_combout\ = \Selector14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector14~0_combout\,
	combout => \current.dma~feeder_combout\);

-- Location: FF_X38_Y10_N31
\current.dma\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current.dma~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current.dma~q\);

-- Location: LCCOMB_X37_Y13_N28
\Selector27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\current.reset~q\ & (!\current.init~q\ & !\current.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.reset~q\,
	datac => \current.init~q\,
	datad => \current.idle~q\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X38_Y10_N4
\Selector27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~2_combout\ = (\current.mem_write~q\) # ((\current.dma~q\) # (!\Selector27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current.mem_write~q\,
	datac => \current.dma~q\,
	datad => \Selector27~0_combout\,
	combout => \Selector27~2_combout\);

-- Location: IOIBUF_X52_Y67_N22
\m_address[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_address(17),
	o => \m_address[17]~input_o\);

-- Location: LCCOMB_X37_Y10_N18
\Selector10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\s_waitrequest~input_o\ & \current.write_back~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_waitrequest~input_o\,
	datad => \current.write_back~q\,
	combout => \Selector10~0_combout\);

-- Location: FF_X39_Y12_N25
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector26~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(15));

-- Location: IOIBUF_X81_Y4_N15
\m_address[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_address(15),
	o => \m_address[15]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\m_address[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_address(16),
	o => \m_address[16]~input_o\);

-- Location: LCCOMB_X34_Y12_N2
\Selector23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\current.busy~q\ & ((!\hits[1]~4_combout\) # (!\m_memwrite~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.busy~q\,
	datab => \m_memwrite~input_o\,
	datac => \hits[1]~4_combout\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X34_Y12_N20
\Selector20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\cache_gen:1:xcache|ctrldata~29_combout\ & (!\Selector27~2_combout\ & ((\current.write_back~q\) # (\Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata~29_combout\,
	datab => \Selector27~2_combout\,
	datac => \current.write_back~q\,
	datad => \Selector23~0_combout\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X34_Y12_N18
\Selector20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (\current.init~q\) # ((\Selector20~0_combout\) # ((\Selector26~3_combout\ & \m_address[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~3_combout\,
	datab => \m_address[15]~input_o\,
	datac => \current.init~q\,
	datad => \Selector20~0_combout\,
	combout => \Selector20~1_combout\);

-- Location: FF_X34_Y12_N31
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector20~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(21));

-- Location: IOIBUF_X15_Y0_N15
\m_address[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_address(2),
	o => \m_address[2]~input_o\);

-- Location: LCCOMB_X38_Y13_N0
\WideOr122~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr122~0_combout\ = (!\current.write_back~q\ & (!\current.busy~q\ & !\current.mem_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current.write_back~q\,
	datac => \current.busy~q\,
	datad => \current.mem_read~q\,
	combout => \WideOr122~0_combout\);

-- Location: LCCOMB_X38_Y11_N12
\Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\WideOr122~0_combout\ & (((init_index(0) & !\current.idle~q\)))) # (!\WideOr122~0_combout\ & (\m_address[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[2]~input_o\,
	datab => init_index(0),
	datac => \current.idle~q\,
	datad => \WideOr122~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X38_Y10_N26
\WideOr105~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr105~0_combout\ = (\current.reset~q\ & (!\current.dma~q\ & !\current.mem_write~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current.reset~q\,
	datac => \current.dma~q\,
	datad => \current.mem_write~q\,
	combout => \WideOr105~0_combout\);

-- Location: CLKCTRL_G27
\WideOr105~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr105~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr105~0clkctrl_outclk\);

-- Location: LCCOMB_X36_Y10_N24
\cache_w_index[0][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_w_index[0][0]~combout\ = (GLOBAL(\WideOr105~0clkctrl_outclk\) & (\Selector5~0_combout\)) # (!GLOBAL(\WideOr105~0clkctrl_outclk\) & ((\cache_w_index[0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \cache_w_index[0][0]~combout\,
	datad => \WideOr105~0clkctrl_outclk\,
	combout => \cache_w_index[0][0]~combout\);

-- Location: IOIBUF_X49_Y0_N8
\m_address[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_address(3),
	o => \m_address[3]~input_o\);

-- Location: LCCOMB_X37_Y13_N16
\Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\WideOr122~0_combout\ & (((init_index(1) & !\current.idle~q\)))) # (!\WideOr122~0_combout\ & (\m_address[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[3]~input_o\,
	datab => \WideOr122~0_combout\,
	datac => init_index(1),
	datad => \current.idle~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X36_Y10_N8
\cache_w_index[0][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_w_index[0][1]~combout\ = (GLOBAL(\WideOr105~0clkctrl_outclk\) & (\Selector6~0_combout\)) # (!GLOBAL(\WideOr105~0clkctrl_outclk\) & ((\cache_w_index[0][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \cache_w_index[0][1]~combout\,
	datad => \WideOr105~0clkctrl_outclk\,
	combout => \cache_w_index[0][1]~combout\);

-- Location: IOIBUF_X81_Y6_N8
\m_address[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_address(4),
	o => \m_address[4]~input_o\);

-- Location: LCCOMB_X37_Y10_N16
\Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\WideOr122~0_combout\ & (((init_index(2) & !\current.idle~q\)))) # (!\WideOr122~0_combout\ & (\m_address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[4]~input_o\,
	datab => \WideOr122~0_combout\,
	datac => init_index(2),
	datad => \current.idle~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X37_Y10_N8
\cache_w_index[0][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_w_index[0][2]~combout\ = (GLOBAL(\WideOr105~0clkctrl_outclk\) & (\Selector4~0_combout\)) # (!GLOBAL(\WideOr105~0clkctrl_outclk\) & ((\cache_w_index[0][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \cache_w_index[0][2]~combout\,
	datad => \WideOr105~0clkctrl_outclk\,
	combout => \cache_w_index[0][2]~combout\);

-- Location: IOIBUF_X44_Y0_N1
\m_address[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_address(5),
	o => \m_address[5]~input_o\);

-- Location: LCCOMB_X37_Y10_N10
\Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\WideOr122~0_combout\ & (((init_index(3) & !\current.idle~q\)))) # (!\WideOr122~0_combout\ & (\m_address[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[5]~input_o\,
	datab => init_index(3),
	datac => \WideOr122~0_combout\,
	datad => \current.idle~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X37_Y10_N4
\cache_w_index[0][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_w_index[0][3]~combout\ = (GLOBAL(\WideOr105~0clkctrl_outclk\) & (\Selector3~0_combout\)) # (!GLOBAL(\WideOr105~0clkctrl_outclk\) & ((\cache_w_index[0][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \cache_w_index[0][3]~combout\,
	datad => \WideOr105~0clkctrl_outclk\,
	combout => \cache_w_index[0][3]~combout\);

-- Location: IOIBUF_X54_Y0_N22
\m_address[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_address(6),
	o => \m_address[6]~input_o\);

-- Location: LCCOMB_X37_Y13_N22
\Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\WideOr122~0_combout\ & (((!\current.idle~q\ & init_index(4))))) # (!\WideOr122~0_combout\ & (\m_address[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[6]~input_o\,
	datab => \current.idle~q\,
	datac => \WideOr122~0_combout\,
	datad => init_index(4),
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X34_Y10_N10
\cache_w_index[0][4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_w_index[0][4]~combout\ = (GLOBAL(\WideOr105~0clkctrl_outclk\) & ((\Selector2~0_combout\))) # (!GLOBAL(\WideOr105~0clkctrl_outclk\) & (\cache_w_index[0][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_w_index[0][4]~combout\,
	datab => \Selector2~0_combout\,
	datad => \WideOr105~0clkctrl_outclk\,
	combout => \cache_w_index[0][4]~combout\);

-- Location: IOIBUF_X81_Y3_N8
\m_address[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_address(8),
	o => \m_address[8]~input_o\);

-- Location: LCCOMB_X38_Y13_N6
\Selector7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\WideOr122~0_combout\ & (!\current.idle~q\ & ((init_index(6))))) # (!\WideOr122~0_combout\ & (((\m_address[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.idle~q\,
	datab => \m_address[8]~input_o\,
	datac => init_index(6),
	datad => \WideOr122~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X34_Y10_N4
\cache_w_index[0][6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_w_index[0][6]~combout\ = (GLOBAL(\WideOr105~0clkctrl_outclk\) & (\Selector7~0_combout\)) # (!GLOBAL(\WideOr105~0clkctrl_outclk\) & ((\cache_w_index[0][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \cache_w_index[0][6]~combout\,
	datad => \WideOr105~0clkctrl_outclk\,
	combout => \cache_w_index[0][6]~combout\);

-- Location: LCCOMB_X36_Y10_N22
\cache_r_addr[0][2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_r_addr[0][2]~0_combout\ = (\m_address[2]~input_o\ & (!\current.init~q\ & \WideOr105~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[2]~input_o\,
	datab => \current.init~q\,
	datad => \WideOr105~0_combout\,
	combout => \cache_r_addr[0][2]~0_combout\);

-- Location: LCCOMB_X38_Y10_N6
\cache_r_addr[0][3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_r_addr[0][3]~1_combout\ = (\WideOr105~0_combout\ & (\m_address[3]~input_o\ & !\current.init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr105~0_combout\,
	datab => \m_address[3]~input_o\,
	datad => \current.init~q\,
	combout => \cache_r_addr[0][3]~1_combout\);

-- Location: LCCOMB_X37_Y10_N14
\cache_r_addr[0][4]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_r_addr[0][4]~2_combout\ = (\m_address[4]~input_o\ & (!\current.init~q\ & \WideOr105~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[4]~input_o\,
	datab => \current.init~q\,
	datad => \WideOr105~0_combout\,
	combout => \cache_r_addr[0][4]~2_combout\);

-- Location: LCCOMB_X38_Y10_N22
\cache_r_addr[0][5]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_r_addr[0][5]~3_combout\ = (\WideOr105~0_combout\ & (\m_address[5]~input_o\ & !\current.init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr105~0_combout\,
	datab => \m_address[5]~input_o\,
	datad => \current.init~q\,
	combout => \cache_r_addr[0][5]~3_combout\);

-- Location: LCCOMB_X34_Y10_N18
\cache_r_addr[0][6]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_r_addr[0][6]~4_combout\ = (\m_address[6]~input_o\ & (!\current.init~q\ & \WideOr105~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[6]~input_o\,
	datab => \current.init~q\,
	datad => \WideOr105~0_combout\,
	combout => \cache_r_addr[0][6]~4_combout\);

-- Location: IOIBUF_X15_Y0_N8
\m_address[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_address(7),
	o => \m_address[7]~input_o\);

-- Location: LCCOMB_X37_Y10_N0
\cache_r_addr[0][7]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_r_addr[0][7]~5_combout\ = (\m_address[7]~input_o\ & (!\current.init~q\ & \WideOr105~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[7]~input_o\,
	datab => \current.init~q\,
	datad => \WideOr105~0_combout\,
	combout => \cache_r_addr[0][7]~5_combout\);

-- Location: LCCOMB_X34_Y10_N6
\cache_r_addr[0][8]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_r_addr[0][8]~6_combout\ = (\m_address[8]~input_o\ & (!\current.init~q\ & \WideOr105~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[8]~input_o\,
	datab => \current.init~q\,
	datad => \WideOr105~0_combout\,
	combout => \cache_r_addr[0][8]~6_combout\);

-- Location: IOIBUF_X56_Y0_N15
\m_address[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_address(10),
	o => \m_address[10]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\m_address[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_address(11),
	o => \m_address[11]~input_o\);

-- Location: FF_X38_Y8_N19
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector24~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(17));

-- Location: FF_X34_Y12_N7
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector22~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(19));

-- Location: FF_X39_Y12_N11
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector19~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(22));

-- Location: LCCOMB_X36_Y12_N18
\ctrl_in[1][10]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ctrl_in[1][10]~2_combout\ = (\ctrl_in[1][10]~0_combout\) # (\current.init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_in[1][10]~0_combout\,
	datad => \current.init~q\,
	combout => \ctrl_in[1][10]~2_combout\);

-- Location: LCCOMB_X38_Y12_N20
\Selector15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\current.mem_read~q\) # ((\cache_gen:1:xcache|ctrldata~30_combout\ & \current.busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datac => \cache_gen:1:xcache|ctrldata~30_combout\,
	datad => \current.busy~q\,
	combout => \Selector15~0_combout\);

-- Location: M9K_X35_Y12_N0
\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_set:\cache_gen:1:xcache|altsyncram:ctrldata_rtl_0|altsyncram_vjc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 13,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 13,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Selector107~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~input_o\,
	ena0 => \Selector107~0_combout\,
	portadatain => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X40_Y12_N21
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector17~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(24));

-- Location: LCCOMB_X40_Y12_N10
\Selector17~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~3_combout\ = (\Selector26~1_combout\ & ((\cache_gen:1:xcache|ctrldata~25_combout\ & ((\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(24)))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & 
-- (\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a9\,
	datab => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(24),
	datac => \cache_gen:1:xcache|ctrldata~25_combout\,
	datad => \Selector26~1_combout\,
	combout => \Selector17~3_combout\);

-- Location: LCCOMB_X40_Y12_N26
\Selector17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (\current.init~q\) # ((\Selector17~3_combout\) # ((\m_address[18]~input_o\ & \Selector26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[18]~input_o\,
	datab => \Selector26~3_combout\,
	datac => \current.init~q\,
	datad => \Selector17~3_combout\,
	combout => \Selector17~2_combout\);

-- Location: LCCOMB_X39_Y12_N20
\Selector19~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~3_combout\ = (\Selector26~1_combout\ & ((\cache_gen:1:xcache|ctrldata~25_combout\ & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(22))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & 
-- ((\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a7\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(22),
	datab => \Selector26~1_combout\,
	datac => \cache_gen:1:xcache|ctrldata~25_combout\,
	datad => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a7\,
	combout => \Selector19~3_combout\);

-- Location: LCCOMB_X39_Y12_N10
\Selector19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (\Selector19~3_combout\) # ((\current.init~q\) # ((\m_address[16]~input_o\ & \Selector26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[16]~input_o\,
	datab => \Selector19~3_combout\,
	datac => \current.init~q\,
	datad => \Selector26~3_combout\,
	combout => \Selector19~2_combout\);

-- Location: FF_X39_Y12_N17
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(20));

-- Location: LCCOMB_X38_Y12_N6
\cache_gen:1:xcache|ctrldata~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|ctrldata~26_combout\ = (\cache_gen:1:xcache|ctrldata~25_combout\ & ((\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(20)))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & (\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|ctrldata~25_combout\,
	datac => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a5\,
	datad => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(20),
	combout => \cache_gen:1:xcache|ctrldata~26_combout\);

-- Location: IOIBUF_X49_Y67_N15
\m_address[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_address(14),
	o => \m_address[14]~input_o\);

-- Location: LCCOMB_X39_Y12_N0
\Selector21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\Selector26~3_combout\ & ((\m_address[14]~input_o\) # ((\cache_gen:1:xcache|ctrldata~26_combout\ & \Selector26~1_combout\)))) # (!\Selector26~3_combout\ & (\cache_gen:1:xcache|ctrldata~26_combout\ & (\Selector26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~3_combout\,
	datab => \cache_gen:1:xcache|ctrldata~26_combout\,
	datac => \Selector26~1_combout\,
	datad => \m_address[14]~input_o\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X39_Y12_N16
\Selector21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (\current.init~q\) # (\Selector21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current.init~q\,
	datac => \Selector21~0_combout\,
	combout => \Selector21~1_combout\);

-- Location: LCCOMB_X38_Y12_N4
\cache_gen:1:xcache|ctrldata~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|ctrldata~27_combout\ = (\cache_gen:1:xcache|ctrldata~25_combout\ & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(19))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & ((\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|ctrldata~25_combout\,
	datac => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(19),
	datad => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a4\,
	combout => \cache_gen:1:xcache|ctrldata~27_combout\);

-- Location: IOIBUF_X49_Y0_N1
\m_address[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_address(13),
	o => \m_address[13]~input_o\);

-- Location: LCCOMB_X34_Y12_N10
\Selector22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\m_address[13]~input_o\ & (!\Selector27~2_combout\ & (!\current.write_back~q\ & !\Selector23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[13]~input_o\,
	datab => \Selector27~2_combout\,
	datac => \current.write_back~q\,
	datad => \Selector23~0_combout\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X34_Y12_N28
\Selector22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = (\current.init~q\) # ((\Selector22~0_combout\) # ((\cache_gen:1:xcache|ctrldata~27_combout\ & \Selector26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata~27_combout\,
	datab => \current.init~q\,
	datac => \Selector22~0_combout\,
	datad => \Selector26~1_combout\,
	combout => \Selector22~1_combout\);

-- Location: LCCOMB_X38_Y8_N16
\Selector24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\Selector26~1_combout\ & ((\cache_gen:1:xcache|ctrldata~25_combout\ & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(17))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & 
-- ((\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata~25_combout\,
	datab => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(17),
	datac => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a2\,
	datad => \Selector26~1_combout\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X38_Y8_N4
\Selector24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = (\current.init~q\) # ((\Selector24~0_combout\) # ((\m_address[11]~input_o\ & \Selector26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[11]~input_o\,
	datab => \current.init~q\,
	datac => \Selector26~3_combout\,
	datad => \Selector24~0_combout\,
	combout => \Selector24~1_combout\);

-- Location: FF_X40_Y12_N31
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector25~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(16));

-- Location: LCCOMB_X40_Y12_N28
\Selector25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\Selector26~1_combout\ & ((\cache_gen:1:xcache|ctrldata~25_combout\ & ((\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(16)))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & 
-- (\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a1\,
	datab => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(16),
	datac => \Selector26~1_combout\,
	datad => \cache_gen:1:xcache|ctrldata~25_combout\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X40_Y12_N14
\Selector25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (\current.init~q\) # ((\Selector25~0_combout\) # ((\Selector26~3_combout\ & \m_address[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~3_combout\,
	datab => \m_address[10]~input_o\,
	datac => \current.init~q\,
	datad => \Selector25~0_combout\,
	combout => \Selector25~1_combout\);

-- Location: LCCOMB_X38_Y12_N14
\cache_gen:1:xcache|ctrldata~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|ctrldata~29_combout\ = (\cache_gen:1:xcache|ctrldata~25_combout\ & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(21))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & ((\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|ctrldata~25_combout\,
	datac => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(21),
	datad => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a6\,
	combout => \cache_gen:1:xcache|ctrldata~29_combout\);

-- Location: LCCOMB_X38_Y12_N18
\cache_gen:1:xcache|ctrldata~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|ctrldata~28_combout\ = (\cache_gen:1:xcache|ctrldata~25_combout\ & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(22))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & ((\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|ctrldata~25_combout\,
	datac => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(22),
	datad => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a7\,
	combout => \cache_gen:1:xcache|ctrldata~28_combout\);

-- Location: LCCOMB_X38_Y12_N26
\hits[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hits[1]~2_combout\ = (\m_address[15]~input_o\ & (\cache_gen:1:xcache|ctrldata~29_combout\ & (\m_address[16]~input_o\ $ (!\cache_gen:1:xcache|ctrldata~28_combout\)))) # (!\m_address[15]~input_o\ & (!\cache_gen:1:xcache|ctrldata~29_combout\ & 
-- (\m_address[16]~input_o\ $ (!\cache_gen:1:xcache|ctrldata~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[15]~input_o\,
	datab => \m_address[16]~input_o\,
	datac => \cache_gen:1:xcache|ctrldata~29_combout\,
	datad => \cache_gen:1:xcache|ctrldata~28_combout\,
	combout => \hits[1]~2_combout\);

-- Location: LCCOMB_X38_Y12_N8
\hits[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hits[1]~1_combout\ = (\m_address[13]~input_o\ & (\cache_gen:1:xcache|ctrldata~27_combout\ & (\m_address[14]~input_o\ $ (!\cache_gen:1:xcache|ctrldata~26_combout\)))) # (!\m_address[13]~input_o\ & (!\cache_gen:1:xcache|ctrldata~27_combout\ & 
-- (\m_address[14]~input_o\ $ (!\cache_gen:1:xcache|ctrldata~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[13]~input_o\,
	datab => \m_address[14]~input_o\,
	datac => \cache_gen:1:xcache|ctrldata~27_combout\,
	datad => \cache_gen:1:xcache|ctrldata~26_combout\,
	combout => \hits[1]~1_combout\);

-- Location: LCCOMB_X38_Y12_N12
\hits[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hits[1]~4_combout\ = (\hits[1]~2_combout\ & (\hits[1]~3_combout\ & (\hits[1]~1_combout\ & \hits[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hits[1]~2_combout\,
	datab => \hits[1]~3_combout\,
	datac => \hits[1]~1_combout\,
	datad => \hits[1]~0_combout\,
	combout => \hits[1]~4_combout\);

-- Location: LCCOMB_X38_Y10_N18
\Selector26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\current.write_back~q\) # ((\current.busy~q\ & ((!\hits[1]~4_combout\) # (!\m_memwrite~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_memwrite~input_o\,
	datab => \current.busy~q\,
	datac => \current.write_back~q\,
	datad => \hits[1]~4_combout\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X38_Y10_N10
\Selector26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = (!\current.dma~q\ & (\Selector27~0_combout\ & (!\current.mem_write~q\ & \Selector26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.dma~q\,
	datab => \Selector27~0_combout\,
	datac => \current.mem_write~q\,
	datad => \Selector26~0_combout\,
	combout => \Selector26~1_combout\);

-- Location: LCCOMB_X39_Y12_N22
\Selector26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~2_combout\ = (\Selector26~1_combout\ & ((\cache_gen:1:xcache|ctrldata~25_combout\ & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(15))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & 
-- ((\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(15),
	datab => \cache_gen:1:xcache|ctrldata~25_combout\,
	datac => \Selector26~1_combout\,
	datad => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \Selector26~2_combout\);

-- Location: IOIBUF_X52_Y0_N8
\m_address[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_address(9),
	o => \m_address[9]~input_o\);

-- Location: LCCOMB_X39_Y12_N14
\Selector26~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~4_combout\ = (\current.init~q\) # ((\Selector26~2_combout\) # ((\Selector26~3_combout\ & \m_address[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~3_combout\,
	datab => \current.init~q\,
	datac => \Selector26~2_combout\,
	datad => \m_address[9]~input_o\,
	combout => \Selector26~4_combout\);

-- Location: FF_X36_Y12_N19
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ctrl_in[1][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(25));

-- Location: LCCOMB_X34_Y12_N0
\cache_gen:1:xcache|ctrldata~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|ctrldata~32_combout\ = (\cache_gen:1:xcache|ctrldata~25_combout\ & ((\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(25)))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & (\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a10\,
	datac => \cache_gen:1:xcache|ctrldata~25_combout\,
	datad => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(25),
	combout => \cache_gen:1:xcache|ctrldata~32_combout\);

-- Location: LCCOMB_X36_Y12_N28
\Selector27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = (\current.busy~q\ & (((!\cache_gen:0:xcache|ctrldata~26_combout\) # (!\m_memwrite~input_o\)) # (!\Equal1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~13_combout\,
	datab => \m_memwrite~input_o\,
	datac => \current.busy~q\,
	datad => \cache_gen:0:xcache|ctrldata~26_combout\,
	combout => \Selector27~1_combout\);

-- Location: LCCOMB_X37_Y8_N22
\Selector36~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (!\Selector27~2_combout\ & ((\current.write_back~q\) # (\Selector27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.write_back~q\,
	datab => \Selector27~2_combout\,
	datad => \Selector27~1_combout\,
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X37_Y8_N8
\Selector36~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector36~1_combout\ = (!\Selector27~2_combout\ & (\m_address[9]~input_o\ & (!\Selector27~1_combout\ & !\current.write_back~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~2_combout\,
	datab => \m_address[9]~input_o\,
	datac => \Selector27~1_combout\,
	datad => \current.write_back~q\,
	combout => \Selector36~1_combout\);

-- Location: LCCOMB_X37_Y8_N18
\Selector36~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector36~2_combout\ = (\current.init~q\) # ((\Selector36~1_combout\) # ((\Selector36~0_combout\ & \cache_gen:0:xcache|ctrldata~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~0_combout\,
	datab => \current.init~q\,
	datac => \Selector36~1_combout\,
	datad => \cache_gen:0:xcache|ctrldata~28_combout\,
	combout => \Selector36~2_combout\);

-- Location: FF_X37_Y8_N19
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector36~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(15));

-- Location: LCCOMB_X36_Y8_N24
\Selector35~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (!\Selector27~2_combout\ & (!\current.write_back~q\ & (\m_address[10]~input_o\ & !\Selector27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~2_combout\,
	datab => \current.write_back~q\,
	datac => \m_address[10]~input_o\,
	datad => \Selector27~1_combout\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X37_Y8_N6
\Selector32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (!\Selector27~2_combout\ & (\m_address[13]~input_o\ & (!\Selector27~1_combout\ & !\current.write_back~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~2_combout\,
	datab => \m_address[13]~input_o\,
	datac => \Selector27~1_combout\,
	datad => \current.write_back~q\,
	combout => \Selector32~0_combout\);

-- Location: FF_X37_Y8_N5
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector32~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(19));

-- Location: LCCOMB_X37_Y8_N16
\Selector31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (!\Selector27~2_combout\ & (\m_address[14]~input_o\ & (!\Selector27~1_combout\ & !\current.write_back~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~2_combout\,
	datab => \m_address[14]~input_o\,
	datac => \Selector27~1_combout\,
	datad => \current.write_back~q\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X37_Y8_N10
\Selector30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (!\Selector27~2_combout\ & (\m_address[15]~input_o\ & (!\current.write_back~q\ & !\Selector27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~2_combout\,
	datab => \m_address[15]~input_o\,
	datac => \current.write_back~q\,
	datad => \Selector27~1_combout\,
	combout => \Selector30~0_combout\);

-- Location: FF_X37_Y8_N27
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector30~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(21));

-- Location: LCCOMB_X37_Y8_N12
\Selector29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (!\Selector27~2_combout\ & (\m_address[16]~input_o\ & (!\Selector27~1_combout\ & !\current.write_back~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~2_combout\,
	datab => \m_address[16]~input_o\,
	datac => \Selector27~1_combout\,
	datad => \current.write_back~q\,
	combout => \Selector29~0_combout\);

-- Location: FF_X37_Y8_N1
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(22));

-- Location: LCCOMB_X36_Y8_N6
\Selector28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (!\current.write_back~q\ & (\m_address[17]~input_o\ & (!\Selector27~2_combout\ & !\Selector27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.write_back~q\,
	datab => \m_address[17]~input_o\,
	datac => \Selector27~2_combout\,
	datad => \Selector27~1_combout\,
	combout => \Selector28~0_combout\);

-- Location: FF_X36_Y8_N13
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector28~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(23));

-- Location: LCCOMB_X37_Y8_N20
\Selector27~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~3_combout\ = (!\Selector27~2_combout\ & (\m_address[18]~input_o\ & (!\current.write_back~q\ & !\Selector27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~2_combout\,
	datab => \m_address[18]~input_o\,
	datac => \current.write_back~q\,
	datad => \Selector27~1_combout\,
	combout => \Selector27~3_combout\);

-- Location: FF_X37_Y8_N31
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector27~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(24));

-- Location: M9K_X35_Y8_N0
\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_set:\cache_gen:0:xcache|altsyncram:ctrldata_rtl_0|altsyncram_vjc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 13,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 13,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Selector108~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~input_o\,
	ena0 => \Selector108~1_combout\,
	portadatain => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X36_Y8_N20
\cache_gen:0:xcache|ctrldata~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata~36_combout\ = (\cache_gen:0:xcache|ctrldata~25_combout\ & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(24))) # (!\cache_gen:0:xcache|ctrldata~25_combout\ & ((\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(24),
	datac => \cache_gen:0:xcache|ctrldata~25_combout\,
	datad => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a9\,
	combout => \cache_gen:0:xcache|ctrldata~36_combout\);

-- Location: LCCOMB_X37_Y8_N30
\Selector27~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~4_combout\ = (\current.init~q\) # ((\Selector27~3_combout\) # ((\Selector36~0_combout\ & \cache_gen:0:xcache|ctrldata~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~0_combout\,
	datab => \current.init~q\,
	datac => \Selector27~3_combout\,
	datad => \cache_gen:0:xcache|ctrldata~36_combout\,
	combout => \Selector27~4_combout\);

-- Location: LCCOMB_X36_Y8_N12
\cache_gen:0:xcache|ctrldata~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata~35_combout\ = (\cache_gen:0:xcache|ctrldata~25_combout\ & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(23))) # (!\cache_gen:0:xcache|ctrldata~25_combout\ & ((\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|ctrldata~25_combout\,
	datac => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(23),
	datad => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a8\,
	combout => \cache_gen:0:xcache|ctrldata~35_combout\);

-- Location: LCCOMB_X36_Y8_N8
\Selector28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = (\Selector28~0_combout\) # ((\current.init~q\) # ((\cache_gen:0:xcache|ctrldata~35_combout\ & \Selector36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~0_combout\,
	datab => \current.init~q\,
	datac => \cache_gen:0:xcache|ctrldata~35_combout\,
	datad => \Selector36~0_combout\,
	combout => \Selector28~1_combout\);

-- Location: LCCOMB_X37_Y8_N26
\cache_gen:0:xcache|ctrldata~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata~34_combout\ = (\cache_gen:0:xcache|ctrldata~25_combout\ & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(22))) # (!\cache_gen:0:xcache|ctrldata~25_combout\ & ((\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|ctrldata~25_combout\,
	datab => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(22),
	datad => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a7\,
	combout => \cache_gen:0:xcache|ctrldata~34_combout\);

-- Location: LCCOMB_X37_Y8_N0
\Selector29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector29~1_combout\ = (\current.init~q\) # ((\Selector29~0_combout\) # ((\Selector36~0_combout\ & \cache_gen:0:xcache|ctrldata~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~0_combout\,
	datab => \current.init~q\,
	datac => \Selector29~0_combout\,
	datad => \cache_gen:0:xcache|ctrldata~34_combout\,
	combout => \Selector29~1_combout\);

-- Location: LCCOMB_X36_Y8_N0
\cache_gen:0:xcache|ctrldata~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata~33_combout\ = (\cache_gen:0:xcache|ctrldata~25_combout\ & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(21))) # (!\cache_gen:0:xcache|ctrldata~25_combout\ & ((\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|ctrldata~25_combout\,
	datab => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(21),
	datad => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a6\,
	combout => \cache_gen:0:xcache|ctrldata~33_combout\);

-- Location: LCCOMB_X37_Y8_N14
\Selector30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector30~1_combout\ = (\Selector30~0_combout\) # ((\current.init~q\) # ((\Selector36~0_combout\ & \cache_gen:0:xcache|ctrldata~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector30~0_combout\,
	datab => \current.init~q\,
	datac => \Selector36~0_combout\,
	datad => \cache_gen:0:xcache|ctrldata~33_combout\,
	combout => \Selector30~1_combout\);

-- Location: FF_X37_Y8_N25
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector31~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(20));

-- Location: LCCOMB_X38_Y8_N10
\cache_gen:0:xcache|ctrldata~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata~32_combout\ = (\cache_gen:0:xcache|ctrldata~25_combout\ & ((\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(20)))) # (!\cache_gen:0:xcache|ctrldata~25_combout\ & (\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a5\,
	datac => \cache_gen:0:xcache|ctrldata~25_combout\,
	datad => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(20),
	combout => \cache_gen:0:xcache|ctrldata~32_combout\);

-- Location: LCCOMB_X37_Y8_N24
\Selector31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = (\current.init~q\) # ((\Selector31~0_combout\) # ((\Selector36~0_combout\ & \cache_gen:0:xcache|ctrldata~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~0_combout\,
	datab => \current.init~q\,
	datac => \Selector31~0_combout\,
	datad => \cache_gen:0:xcache|ctrldata~32_combout\,
	combout => \Selector31~1_combout\);

-- Location: LCCOMB_X36_Y8_N30
\cache_gen:0:xcache|ctrldata~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata~31_combout\ = (\cache_gen:0:xcache|ctrldata~25_combout\ & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(19))) # (!\cache_gen:0:xcache|ctrldata~25_combout\ & ((\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(19),
	datab => \cache_gen:0:xcache|ctrldata~25_combout\,
	datad => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a4\,
	combout => \cache_gen:0:xcache|ctrldata~31_combout\);

-- Location: LCCOMB_X37_Y8_N4
\Selector32~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = (\current.init~q\) # ((\Selector32~0_combout\) # ((\Selector36~0_combout\ & \cache_gen:0:xcache|ctrldata~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~0_combout\,
	datab => \current.init~q\,
	datac => \Selector32~0_combout\,
	datad => \cache_gen:0:xcache|ctrldata~31_combout\,
	combout => \Selector32~1_combout\);

-- Location: FF_X38_Y8_N13
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector33~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(18));

-- Location: LCCOMB_X38_Y8_N20
\cache_gen:0:xcache|ctrldata~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata~30_combout\ = (\cache_gen:0:xcache|ctrldata~25_combout\ & ((\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(18)))) # (!\cache_gen:0:xcache|ctrldata~25_combout\ & (\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a3\,
	datab => \cache_gen:0:xcache|ctrldata~25_combout\,
	datad => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(18),
	combout => \cache_gen:0:xcache|ctrldata~30_combout\);

-- Location: LCCOMB_X38_Y8_N8
\Selector33~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (!\current.write_back~q\ & (\m_address[12]~input_o\ & (!\Selector27~2_combout\ & !\Selector27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.write_back~q\,
	datab => \m_address[12]~input_o\,
	datac => \Selector27~2_combout\,
	datad => \Selector27~1_combout\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X38_Y8_N14
\Selector33~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector33~1_combout\ = (\current.init~q\) # ((\Selector33~0_combout\) # ((\cache_gen:0:xcache|ctrldata~30_combout\ & \Selector36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.init~q\,
	datab => \cache_gen:0:xcache|ctrldata~30_combout\,
	datac => \Selector33~0_combout\,
	datad => \Selector36~0_combout\,
	combout => \Selector33~1_combout\);

-- Location: FF_X38_Y8_N31
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector34~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(17));

-- Location: LCCOMB_X38_Y8_N6
\cache_gen:0:xcache|ctrldata~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata~29_combout\ = (\cache_gen:0:xcache|ctrldata~25_combout\ & ((\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(17)))) # (!\cache_gen:0:xcache|ctrldata~25_combout\ & (\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a2\,
	datac => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(17),
	datad => \cache_gen:0:xcache|ctrldata~25_combout\,
	combout => \cache_gen:0:xcache|ctrldata~29_combout\);

-- Location: LCCOMB_X38_Y8_N26
\Selector34~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\m_address[11]~input_o\ & (!\Selector27~2_combout\ & (!\current.write_back~q\ & !\Selector27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[11]~input_o\,
	datab => \Selector27~2_combout\,
	datac => \current.write_back~q\,
	datad => \Selector27~1_combout\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X38_Y8_N22
\Selector34~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = (\current.init~q\) # ((\Selector34~0_combout\) # ((\cache_gen:0:xcache|ctrldata~29_combout\ & \Selector36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|ctrldata~29_combout\,
	datab => \current.init~q\,
	datac => \Selector34~0_combout\,
	datad => \Selector36~0_combout\,
	combout => \Selector34~1_combout\);

-- Location: FF_X36_Y8_N1
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector35~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(16));

-- Location: LCCOMB_X36_Y8_N2
\cache_gen:0:xcache|ctrldata~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata~27_combout\ = (\cache_gen:0:xcache|ctrldata~25_combout\ & ((\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(16)))) # (!\cache_gen:0:xcache|ctrldata~25_combout\ & (\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a1\,
	datac => \cache_gen:0:xcache|ctrldata~25_combout\,
	datad => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(16),
	combout => \cache_gen:0:xcache|ctrldata~27_combout\);

-- Location: LCCOMB_X36_Y8_N22
\Selector35~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector35~1_combout\ = (\current.init~q\) # ((\Selector35~0_combout\) # ((\cache_gen:0:xcache|ctrldata~27_combout\ & \Selector36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.init~q\,
	datab => \Selector35~0_combout\,
	datac => \cache_gen:0:xcache|ctrldata~27_combout\,
	datad => \Selector36~0_combout\,
	combout => \Selector35~1_combout\);

-- Location: LCCOMB_X36_Y8_N26
\cache_gen:0:xcache|ctrldata~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata~28_combout\ = (\cache_gen:0:xcache|ctrldata~25_combout\ & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(15))) # (!\cache_gen:0:xcache|ctrldata~25_combout\ & 
-- ((\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(15),
	datac => \cache_gen:0:xcache|ctrldata~25_combout\,
	datad => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \cache_gen:0:xcache|ctrldata~28_combout\);

-- Location: LCCOMB_X36_Y8_N18
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\m_address[9]~input_o\ & (\cache_gen:0:xcache|ctrldata~28_combout\ & (\m_address[10]~input_o\ $ (!\cache_gen:0:xcache|ctrldata~27_combout\)))) # (!\m_address[9]~input_o\ & (!\cache_gen:0:xcache|ctrldata~28_combout\ & 
-- (\m_address[10]~input_o\ $ (!\cache_gen:0:xcache|ctrldata~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[9]~input_o\,
	datab => \m_address[10]~input_o\,
	datac => \cache_gen:0:xcache|ctrldata~28_combout\,
	datad => \cache_gen:0:xcache|ctrldata~27_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X38_Y8_N24
\Equal1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\m_address[11]~input_o\ & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(17) & (\m_address[12]~input_o\ $ (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(18))))) # (!\m_address[11]~input_o\ & 
-- (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(17) & (\m_address[12]~input_o\ $ (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[11]~input_o\,
	datab => \m_address[12]~input_o\,
	datac => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(17),
	datad => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(18),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X36_Y12_N0
\Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\m_address[11]~input_o\ & (\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a2\ & (\m_address[12]~input_o\ $ (!\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a3\)))) # (!\m_address[11]~input_o\ & 
-- (!\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a2\ & (\m_address[12]~input_o\ $ (!\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[11]~input_o\,
	datab => \m_address[12]~input_o\,
	datac => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a3\,
	datad => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a2\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X36_Y12_N6
\Equal1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\cache_gen:0:xcache|ctrldata~25_combout\ & (\Equal1~2_combout\)) # (!\cache_gen:0:xcache|ctrldata~25_combout\ & ((\Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|ctrldata~25_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X36_Y8_N14
\Equal1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~11_combout\ = (\m_address[18]~input_o\ & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(24) & (\m_address[17]~input_o\ $ (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(23))))) # (!\m_address[18]~input_o\ & 
-- (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(24) & (\m_address[17]~input_o\ $ (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[18]~input_o\,
	datab => \m_address[17]~input_o\,
	datac => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(24),
	datad => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(23),
	combout => \Equal1~11_combout\);

-- Location: LCCOMB_X36_Y8_N28
\Equal1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\m_address[18]~input_o\ & (\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a9\ & (\m_address[17]~input_o\ $ (!\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a8\)))) # (!\m_address[18]~input_o\ & 
-- (!\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a9\ & (\m_address[17]~input_o\ $ (!\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[18]~input_o\,
	datab => \m_address[17]~input_o\,
	datac => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a8\,
	datad => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a9\,
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X36_Y8_N16
\Equal1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~12_combout\ = (\cache_gen:0:xcache|ctrldata~25_combout\ & (\Equal1~11_combout\)) # (!\cache_gen:0:xcache|ctrldata~25_combout\ & ((\Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~11_combout\,
	datac => \cache_gen:0:xcache|ctrldata~25_combout\,
	datad => \Equal1~10_combout\,
	combout => \Equal1~12_combout\);

-- Location: LCCOMB_X37_Y8_N2
\Equal1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\m_address[13]~input_o\ & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(19) & (\m_address[16]~input_o\ $ (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(22))))) # (!\m_address[13]~input_o\ & 
-- (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(19) & (\m_address[16]~input_o\ $ (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[13]~input_o\,
	datab => \m_address[16]~input_o\,
	datac => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(19),
	datad => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(22),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X37_Y8_N28
\Equal1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (\m_address[15]~input_o\ & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(21) & (\m_address[14]~input_o\ $ (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(20))))) # (!\m_address[15]~input_o\ & 
-- (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(21) & (\m_address[14]~input_o\ $ (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[15]~input_o\,
	datab => \m_address[14]~input_o\,
	datac => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(21),
	datad => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(20),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X36_Y8_N10
\Equal1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (\m_address[13]~input_o\ & (\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a4\ & (\m_address[15]~input_o\ $ (!\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a6\)))) # (!\m_address[13]~input_o\ & 
-- (!\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a4\ & (\m_address[15]~input_o\ $ (!\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[13]~input_o\,
	datab => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a4\,
	datac => \m_address[15]~input_o\,
	datad => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a6\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X37_Y12_N16
\Equal1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (\m_address[16]~input_o\ & (\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a7\ & (\m_address[14]~input_o\ $ (!\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a5\)))) # (!\m_address[16]~input_o\ & 
-- (!\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a7\ & (\m_address[14]~input_o\ $ (!\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[16]~input_o\,
	datab => \m_address[14]~input_o\,
	datac => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a5\,
	datad => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a7\,
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X37_Y12_N10
\Equal1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (\Equal1~6_combout\ & \Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~6_combout\,
	datad => \Equal1~7_combout\,
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X37_Y12_N18
\Equal1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\cache_gen:0:xcache|ctrldata~25_combout\ & (\Equal1~4_combout\ & (\Equal1~5_combout\))) # (!\cache_gen:0:xcache|ctrldata~25_combout\ & (((\Equal1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \cache_gen:0:xcache|ctrldata~25_combout\,
	datac => \Equal1~5_combout\,
	datad => \Equal1~8_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X37_Y12_N4
\Equal1~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~13_combout\ = (\Equal1~0_combout\ & (\Equal1~3_combout\ & (\Equal1~12_combout\ & \Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~3_combout\,
	datac => \Equal1~12_combout\,
	datad => \Equal1~9_combout\,
	combout => \Equal1~13_combout\);

-- Location: LCCOMB_X36_Y12_N2
\LRU_in~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LRU_in~2_combout\ = (\current.busy~q\ & (\cache_gen:0:xcache|ctrldata~26_combout\ & ((\Equal1~13_combout\) # (\hits[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~13_combout\,
	datab => \hits[1]~4_combout\,
	datac => \current.busy~q\,
	datad => \cache_gen:0:xcache|ctrldata~26_combout\,
	combout => \LRU_in~2_combout\);

-- Location: LCCOMB_X36_Y12_N4
\ctrl_in[0][10]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ctrl_in[0][10]~1_combout\ = (\LRU_in~2_combout\ & (\hit_index~0_combout\ & ((\cache_gen:1:xcache|ctrldata~32_combout\) # (\LRU_in~0_combout\)))) # (!\LRU_in~2_combout\ & (((\LRU_in~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata~32_combout\,
	datab => \hit_index~0_combout\,
	datac => \LRU_in~0_combout\,
	datad => \LRU_in~2_combout\,
	combout => \ctrl_in[0][10]~1_combout\);

-- Location: LCCOMB_X36_Y12_N26
\ctrl_in[0][10]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ctrl_in[0][10]~3_combout\ = (\ctrl_in[0][10]~1_combout\) # (\current.init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl_in[0][10]~1_combout\,
	datad => \current.init~q\,
	combout => \ctrl_in[0][10]~3_combout\);

-- Location: FF_X36_Y12_N27
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ctrl_in[0][10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(25));

-- Location: LCCOMB_X36_Y12_N22
\LRU_in~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LRU_in~0_combout\ = (\cache_gen:0:xcache|ctrldata~25_combout\ & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(25))) # (!\cache_gen:0:xcache|ctrldata~25_combout\ & ((\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(25),
	datab => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a10\,
	datad => \cache_gen:0:xcache|ctrldata~25_combout\,
	combout => \LRU_in~0_combout\);

-- Location: LCCOMB_X37_Y12_N30
\LRU_in~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LRU_in~1_combout\ = (\cache_gen:1:xcache|ctrldata~30_combout\ & (\current.busy~q\ & \Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata~30_combout\,
	datac => \current.busy~q\,
	datad => \Equal3~1_combout\,
	combout => \LRU_in~1_combout\);

-- Location: LCCOMB_X36_Y12_N30
\ctrl_in[1][10]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ctrl_in[1][10]~0_combout\ = (\LRU_in~1_combout\ & (!\hit_index~0_combout\ & ((\LRU_in~0_combout\) # (\cache_gen:1:xcache|ctrldata~32_combout\)))) # (!\LRU_in~1_combout\ & (((\cache_gen:1:xcache|ctrldata~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LRU_in~0_combout\,
	datab => \cache_gen:1:xcache|ctrldata~32_combout\,
	datac => \LRU_in~1_combout\,
	datad => \hit_index~0_combout\,
	combout => \ctrl_in[1][10]~0_combout\);

-- Location: LCCOMB_X36_Y12_N14
\KO_index~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \KO_index~0_combout\ = (\Selector13~0_combout\ & ((\ctrl_in[1][10]~0_combout\) # ((\current.init~q\)))) # (!\Selector13~0_combout\ & (((\KO_index_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_in[1][10]~0_combout\,
	datab => \current.init~q\,
	datac => \Selector13~0_combout\,
	datad => \KO_index_reg~q\,
	combout => \KO_index~0_combout\);

-- Location: LCCOMB_X37_Y12_N24
\KO_index~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \KO_index~1_combout\ = (\current.init~q\) # ((\ctrl_in[1][10]~0_combout\) # ((\ctrl_in[0][10]~1_combout\) # (!\Selector13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.init~q\,
	datab => \ctrl_in[1][10]~0_combout\,
	datac => \ctrl_in[0][10]~1_combout\,
	datad => \Selector13~0_combout\,
	combout => \KO_index~1_combout\);

-- Location: LCCOMB_X36_Y12_N8
KO_index : cycloneiv_lcell_comb
-- Equation(s):
-- \KO_index~combout\ = (\KO_index~1_combout\ & (\KO_index~0_combout\)) # (!\KO_index~1_combout\ & ((\KO_index~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KO_index~0_combout\,
	datac => \KO_index~combout\,
	datad => \KO_index~1_combout\,
	combout => \KO_index~combout\);

-- Location: FF_X36_Y12_N9
KO_index_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \KO_index~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KO_index_reg~q\);

-- Location: LCCOMB_X39_Y13_N20
\ds_waitrequest~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ds_waitrequest~0_combout\ = !\s_waitrequest~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_waitrequest~input_o\,
	combout => \ds_waitrequest~0_combout\);

-- Location: FF_X39_Y13_N21
ds_waitrequest : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ds_waitrequest~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ds_waitrequest~q\);

-- Location: LCCOMB_X37_Y10_N20
\Selector106~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector106~3_combout\ = (\ds_waitrequest~q\ & (!\current.write_back~q\ & \current.mem_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ds_waitrequest~q\,
	datab => \current.write_back~q\,
	datad => \current.mem_read~q\,
	combout => \Selector106~3_combout\);

-- Location: LCCOMB_X37_Y10_N26
\Selector106~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector106~4_combout\ = (\empty_index_reg~q\ & (((\KO_index_reg~q\)) # (!\Selector10~0_combout\))) # (!\empty_index_reg~q\ & (!\Selector106~3_combout\ & ((\KO_index_reg~q\) # (!\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \empty_index_reg~q\,
	datab => \Selector10~0_combout\,
	datac => \KO_index_reg~q\,
	datad => \Selector106~3_combout\,
	combout => \Selector106~4_combout\);

-- Location: LCCOMB_X36_Y13_N28
\s_address~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_address~0_combout\ = (!\current.write_back~q\ & !\current.mem_read~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current.write_back~q\,
	datad => \current.mem_read~q\,
	combout => \s_address~0_combout\);

-- Location: LCCOMB_X37_Y12_N14
\Selector109~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector109~0_combout\ = ((!\hits[1]~4_combout\ & ((!\cache_gen:0:xcache|ctrldata~26_combout\) # (!\Equal1~13_combout\)))) # (!\current.busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.busy~q\,
	datab => \Equal1~13_combout\,
	datac => \hits[1]~4_combout\,
	datad => \cache_gen:0:xcache|ctrldata~26_combout\,
	combout => \Selector109~0_combout\);

-- Location: LCCOMB_X37_Y12_N28
\Selector108~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector108~0_combout\ = ((\Selector109~0_combout\ & ((\current.busy~q\) # (!\current.init~q\)))) # (!\s_address~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_address~0_combout\,
	datab => \Selector109~0_combout\,
	datac => \current.busy~q\,
	datad => \current.init~q\,
	combout => \Selector108~0_combout\);

-- Location: LCCOMB_X36_Y8_N4
\Selector108~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector108~1_combout\ = (!\Selector108~0_combout\) # (!\Selector106~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector106~4_combout\,
	datad => \Selector108~0_combout\,
	combout => \Selector108~1_combout\);

-- Location: FF_X36_Y8_N31
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector108~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(0));

-- Location: FF_X34_Y10_N13
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \cache_r_addr[0][8]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(14));

-- Location: LCCOMB_X34_Y10_N20
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata_rtl_0_bypass[13]~feeder_combout\ = \cache_w_index[0][6]~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cache_w_index[0][6]~combout\,
	combout => \cache_gen:0:xcache|ctrldata_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X34_Y10_N21
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cache_gen:0:xcache|ctrldata_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(13));

-- Location: LCCOMB_X34_Y10_N12
\cache_gen:0:xcache|ctrldata~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata~24_combout\ = (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(0) & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(14) $ (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(0),
	datac => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(14),
	datad => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(13),
	combout => \cache_gen:0:xcache|ctrldata~24_combout\);

-- Location: FF_X37_Y10_N3
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \cache_w_index[0][2]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(5));

-- Location: FF_X37_Y10_N15
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \cache_w_index[0][3]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(7));

-- Location: FF_X38_Y10_N9
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \cache_r_addr[0][4]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(6));

-- Location: LCCOMB_X38_Y10_N2
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata_rtl_0_bypass[8]~feeder_combout\ = \cache_r_addr[0][5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_r_addr[0][5]~3_combout\,
	combout => \cache_gen:0:xcache|ctrldata_rtl_0_bypass[8]~feeder_combout\);

-- Location: FF_X38_Y10_N3
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cache_gen:0:xcache|ctrldata_rtl_0_bypass[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(8));

-- Location: LCCOMB_X38_Y10_N8
\cache_gen:0:xcache|ctrldata~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata~22_combout\ = (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(5) & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(6) & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(7) $ (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(8))))) # 
-- (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(5) & (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(6) & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(7) $ (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(5),
	datab => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(7),
	datac => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(6),
	datad => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(8),
	combout => \cache_gen:0:xcache|ctrldata~22_combout\);

-- Location: LCCOMB_X36_Y10_N26
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata_rtl_0_bypass[1]~feeder_combout\ = \cache_w_index[0][0]~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cache_w_index[0][0]~combout\,
	combout => \cache_gen:0:xcache|ctrldata_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X36_Y10_N27
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cache_gen:0:xcache|ctrldata_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(1));

-- Location: LCCOMB_X36_Y10_N14
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata_rtl_0_bypass[3]~feeder_combout\ = \cache_w_index[0][1]~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cache_w_index[0][1]~combout\,
	combout => \cache_gen:0:xcache|ctrldata_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X36_Y10_N15
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cache_gen:0:xcache|ctrldata_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(3));

-- Location: FF_X38_Y10_N15
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \cache_r_addr[0][2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(2));

-- Location: LCCOMB_X38_Y10_N28
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata_rtl_0_bypass[4]~feeder_combout\ = \cache_r_addr[0][3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cache_r_addr[0][3]~1_combout\,
	combout => \cache_gen:0:xcache|ctrldata_rtl_0_bypass[4]~feeder_combout\);

-- Location: FF_X38_Y10_N29
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cache_gen:0:xcache|ctrldata_rtl_0_bypass[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(4));

-- Location: LCCOMB_X38_Y10_N14
\cache_gen:0:xcache|ctrldata~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata~21_combout\ = (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(1) & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(2) & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(3) $ (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(4))))) # 
-- (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(1) & (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(2) & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(3) $ (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(1),
	datab => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(3),
	datac => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(2),
	datad => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(4),
	combout => \cache_gen:0:xcache|ctrldata~21_combout\);

-- Location: LCCOMB_X34_Y10_N26
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata_rtl_0_bypass[11]~feeder_combout\ = \cache_w_index[0][5]~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cache_w_index[0][5]~combout\,
	combout => \cache_gen:0:xcache|ctrldata_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X34_Y10_N27
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cache_gen:0:xcache|ctrldata_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(11));

-- Location: LCCOMB_X34_Y10_N8
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata_rtl_0_bypass[12]~feeder_combout\ = \cache_r_addr[0][7]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cache_r_addr[0][7]~5_combout\,
	combout => \cache_gen:0:xcache|ctrldata_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X34_Y10_N9
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cache_gen:0:xcache|ctrldata_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(12));

-- Location: FF_X34_Y10_N17
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \cache_r_addr[0][6]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(10));

-- Location: LCCOMB_X34_Y10_N24
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata_rtl_0_bypass[9]~feeder_combout\ = \cache_w_index[0][4]~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cache_w_index[0][4]~combout\,
	combout => \cache_gen:0:xcache|ctrldata_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X34_Y10_N25
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cache_gen:0:xcache|ctrldata_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(9));

-- Location: LCCOMB_X34_Y10_N16
\cache_gen:0:xcache|ctrldata~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata~23_combout\ = (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(11) & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(12) & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(10) $ (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(9))))) # 
-- (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(11) & (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(12) & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(10) $ (!\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(11),
	datab => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(12),
	datac => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(10),
	datad => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(9),
	combout => \cache_gen:0:xcache|ctrldata~23_combout\);

-- Location: LCCOMB_X34_Y10_N2
\cache_gen:0:xcache|ctrldata~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata~25_combout\ = (\cache_gen:0:xcache|ctrldata~24_combout\ & (\cache_gen:0:xcache|ctrldata~22_combout\ & (\cache_gen:0:xcache|ctrldata~21_combout\ & \cache_gen:0:xcache|ctrldata~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|ctrldata~24_combout\,
	datab => \cache_gen:0:xcache|ctrldata~22_combout\,
	datac => \cache_gen:0:xcache|ctrldata~21_combout\,
	datad => \cache_gen:0:xcache|ctrldata~23_combout\,
	combout => \cache_gen:0:xcache|ctrldata~25_combout\);

-- Location: LCCOMB_X37_Y11_N26
\Selector16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\current.mem_read~q\) # ((\current.busy~q\ & \cache_gen:0:xcache|ctrldata~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current.busy~q\,
	datac => \current.mem_read~q\,
	datad => \cache_gen:0:xcache|ctrldata~26_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X36_Y12_N23
\cache_gen:0:xcache|ctrldata_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector16~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(26));

-- Location: M9K_X35_Y10_N0
\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_set:\cache_gen:0:xcache|altsyncram:ctrldata_rtl_0|altsyncram_vjc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 13,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 13,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Selector108~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Selector108~1_combout\,
	portadatain => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X36_Y12_N20
\cache_gen:0:xcache|ctrldata~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|ctrldata~26_combout\ = (\cache_gen:0:xcache|ctrldata~25_combout\ & (\cache_gen:0:xcache|ctrldata_rtl_0_bypass\(26))) # (!\cache_gen:0:xcache|ctrldata~25_combout\ & 
-- ((\cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|ctrldata~25_combout\,
	datac => \cache_gen:0:xcache|ctrldata_rtl_0_bypass\(26),
	datad => \cache_gen:0:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	combout => \cache_gen:0:xcache|ctrldata~26_combout\);

-- Location: LCCOMB_X38_Y12_N16
\empty_index~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \empty_index~0_combout\ = (\empty_index_reg~q\ & (((!\cache_gen:1:xcache|ctrldata~30_combout\) # (!\cache_gen:0:xcache|ctrldata~26_combout\)) # (!\current.busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.busy~q\,
	datab => \cache_gen:0:xcache|ctrldata~26_combout\,
	datac => \empty_index_reg~q\,
	datad => \cache_gen:1:xcache|ctrldata~30_combout\,
	combout => \empty_index~0_combout\);

-- Location: LCCOMB_X37_Y11_N16
\empty_index~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \empty_index~1_combout\ = ((!\current.busy~q\) # (!\cache_gen:0:xcache|ctrldata~26_combout\)) # (!\cache_gen:1:xcache|ctrldata~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata~30_combout\,
	datac => \cache_gen:0:xcache|ctrldata~26_combout\,
	datad => \current.busy~q\,
	combout => \empty_index~1_combout\);

-- Location: LCCOMB_X38_Y12_N28
empty_index : cycloneiv_lcell_comb
-- Equation(s):
-- \empty_index~combout\ = (\empty_index~1_combout\ & ((\empty_index~0_combout\))) # (!\empty_index~1_combout\ & (\empty_index~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \empty_index~combout\,
	datac => \empty_index~0_combout\,
	datad => \empty_index~1_combout\,
	combout => \empty_index~combout\);

-- Location: FF_X38_Y12_N29
empty_index_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \empty_index~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \empty_index_reg~q\);

-- Location: LCCOMB_X37_Y10_N12
\Selector105~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector105~0_combout\ = (\empty_index_reg~q\ & (!\Selector106~3_combout\ & ((!\KO_index_reg~q\) # (!\Selector10~0_combout\)))) # (!\empty_index_reg~q\ & (((!\KO_index_reg~q\)) # (!\Selector10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \empty_index_reg~q\,
	datab => \Selector10~0_combout\,
	datac => \KO_index_reg~q\,
	datad => \Selector106~3_combout\,
	combout => \Selector105~0_combout\);

-- Location: LCCOMB_X34_Y12_N4
\Selector107~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector107~0_combout\ = (!\Selector108~0_combout\) # (!\Selector105~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector105~0_combout\,
	datac => \Selector108~0_combout\,
	combout => \Selector107~0_combout\);

-- Location: LCCOMB_X40_Y12_N16
\Selector18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\Selector26~1_combout\ & ((\cache_gen:1:xcache|ctrldata~25_combout\ & ((\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(23)))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & 
-- (\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a8\,
	datab => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(23),
	datac => \Selector26~1_combout\,
	datad => \cache_gen:1:xcache|ctrldata~25_combout\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X40_Y12_N8
\Selector18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (\current.init~q\) # ((\Selector18~0_combout\) # ((\m_address[17]~input_o\ & \Selector26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[17]~input_o\,
	datab => \Selector26~3_combout\,
	datac => \current.init~q\,
	datad => \Selector18~0_combout\,
	combout => \Selector18~1_combout\);

-- Location: FF_X40_Y12_N13
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector18~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(23));

-- Location: LCCOMB_X38_Y12_N22
\Equal2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = \m_address[17]~input_o\ $ (((\cache_gen:1:xcache|ctrldata~25_combout\ & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(23))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & 
-- ((\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a8\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[17]~input_o\,
	datab => \cache_gen:1:xcache|ctrldata~25_combout\,
	datac => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(23),
	datad => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a8\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X38_Y12_N30
\cache_gen:1:xcache|ctrldata~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|ctrldata~31_combout\ = (\cache_gen:1:xcache|ctrldata~25_combout\ & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(24))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & ((\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|ctrldata~25_combout\,
	datac => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(24),
	datad => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a9\,
	combout => \cache_gen:1:xcache|ctrldata~31_combout\);

-- Location: LCCOMB_X38_Y12_N24
\hits[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hits[1]~3_combout\ = (!\Equal2~4_combout\ & (\cache_gen:1:xcache|ctrldata~30_combout\ & (\m_address[18]~input_o\ $ (!\cache_gen:1:xcache|ctrldata~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \m_address[18]~input_o\,
	datac => \cache_gen:1:xcache|ctrldata~31_combout\,
	datad => \cache_gen:1:xcache|ctrldata~30_combout\,
	combout => \hits[1]~3_combout\);

-- Location: LCCOMB_X34_Y12_N12
\word_in~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \word_in~0_combout\ = (!\hits[1]~2_combout\) # (!\m_memwrite~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_memwrite~input_o\,
	datad => \hits[1]~2_combout\,
	combout => \word_in~0_combout\);

-- Location: LCCOMB_X34_Y12_N24
\word_in~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \word_in~1_combout\ = (((\word_in~0_combout\) # (!\hits[1]~1_combout\)) # (!\hits[1]~0_combout\)) # (!\hits[1]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hits[1]~3_combout\,
	datab => \hits[1]~0_combout\,
	datac => \hits[1]~1_combout\,
	datad => \word_in~0_combout\,
	combout => \word_in~1_combout\);

-- Location: LCCOMB_X34_Y12_N14
\Selector26~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~3_combout\ = (!\current.write_back~q\ & (!\Selector27~2_combout\ & ((!\word_in~1_combout\) # (!\current.busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.write_back~q\,
	datab => \current.busy~q\,
	datac => \Selector27~2_combout\,
	datad => \word_in~1_combout\,
	combout => \Selector26~3_combout\);

-- Location: LCCOMB_X39_Y12_N30
\Selector23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\Selector26~1_combout\ & ((\cache_gen:1:xcache|ctrldata~25_combout\ & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(18))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & 
-- ((\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata~25_combout\,
	datab => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(18),
	datac => \Selector26~1_combout\,
	datad => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a3\,
	combout => \Selector23~1_combout\);

-- Location: LCCOMB_X39_Y12_N26
\Selector23~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = (\current.init~q\) # ((\Selector23~1_combout\) # ((\Selector26~3_combout\ & \m_address[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~3_combout\,
	datab => \current.init~q\,
	datac => \Selector23~1_combout\,
	datad => \m_address[12]~input_o\,
	combout => \Selector23~2_combout\);

-- Location: FF_X39_Y12_N19
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector23~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(18));

-- Location: LCCOMB_X39_Y12_N12
\Equal2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = \m_address[12]~input_o\ $ (((\cache_gen:1:xcache|ctrldata~25_combout\ & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(18))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & 
-- ((\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[12]~input_o\,
	datab => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(18),
	datac => \cache_gen:1:xcache|ctrldata~25_combout\,
	datad => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a3\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X39_Y12_N4
\Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = \m_address[9]~input_o\ $ (((\cache_gen:1:xcache|ctrldata~25_combout\ & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(15))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & 
-- ((\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[9]~input_o\,
	datab => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(15),
	datac => \cache_gen:1:xcache|ctrldata~25_combout\,
	datad => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X39_Y12_N8
\Equal2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = \m_address[10]~input_o\ $ (((\cache_gen:1:xcache|ctrldata~25_combout\ & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(16))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & 
-- ((\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata~25_combout\,
	datab => \m_address[10]~input_o\,
	datac => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(16),
	datad => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a1\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X39_Y12_N6
\Equal2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = \m_address[11]~input_o\ $ (((\cache_gen:1:xcache|ctrldata~25_combout\ & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(17))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & 
-- ((\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata~25_combout\,
	datab => \m_address[11]~input_o\,
	datac => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(17),
	datad => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a2\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X39_Y12_N2
\hits[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hits[1]~0_combout\ = (!\Equal2~3_combout\ & (!\Equal2~0_combout\ & (!\Equal2~1_combout\ & !\Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal2~1_combout\,
	datad => \Equal2~2_combout\,
	combout => \hits[1]~0_combout\);

-- Location: LCCOMB_X38_Y12_N10
\Equal3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\hits[1]~2_combout\ & (\hits[1]~1_combout\ & \hits[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hits[1]~2_combout\,
	datac => \hits[1]~1_combout\,
	datad => \hits[1]~3_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X37_Y12_N12
\Equal3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\hits[1]~0_combout\ & ((\Equal3~0_combout\) # ((\Equal1~13_combout\ & \cache_gen:0:xcache|ctrldata~26_combout\)))) # (!\hits[1]~0_combout\ & (((\Equal1~13_combout\ & \cache_gen:0:xcache|ctrldata~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hits[1]~0_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal1~13_combout\,
	datad => \cache_gen:0:xcache|ctrldata~26_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X38_Y10_N12
\Selector143~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector143~0_combout\ = (\m_memwrite~input_o\ & (\current.busy~q\ & !\Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_memwrite~input_o\,
	datab => \current.busy~q\,
	datad => \Equal3~1_combout\,
	combout => \Selector143~0_combout\);

-- Location: LCCOMB_X38_Y10_N0
\Selector12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\Selector143~0_combout\) # ((\s_waitrequest~input_o\ & \current.mem_write~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_waitrequest~input_o\,
	datac => \current.mem_write~q\,
	datad => \Selector143~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X38_Y10_N1
\current.mem_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector12~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current.mem_write~q\);

-- Location: LCCOMB_X38_Y13_N8
\Selector9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\Selector109~0_combout\ & ((\s_waitrequest~input_o\) # ((!\current.mem_write~q\ & !\current.dma~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_waitrequest~input_o\,
	datab => \current.mem_write~q\,
	datac => \current.dma~q\,
	datad => \Selector109~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X38_Y13_N26
\Selector9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\Selector9~1_combout\) # (((\init_done~2_combout\ & \current.init~q\)) # (!\Selector9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~1_combout\,
	datab => \init_done~2_combout\,
	datac => \Selector9~0_combout\,
	datad => \current.init~q\,
	combout => \Selector9~2_combout\);

-- Location: FF_X38_Y13_N27
\current.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current.idle~q\);

-- Location: LCCOMB_X37_Y13_N12
\Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\WideOr122~0_combout\ & (init_index(5) & (!\current.idle~q\))) # (!\WideOr122~0_combout\ & (((\m_address[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => init_index(5),
	datab => \current.idle~q\,
	datac => \WideOr122~0_combout\,
	datad => \m_address[7]~input_o\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X34_Y10_N22
\cache_w_index[0][5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_w_index[0][5]~combout\ = (GLOBAL(\WideOr105~0clkctrl_outclk\) & (\Selector1~0_combout\)) # (!GLOBAL(\WideOr105~0clkctrl_outclk\) & ((\cache_w_index[0][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector1~0_combout\,
	datac => \cache_w_index[0][5]~combout\,
	datad => \WideOr105~0clkctrl_outclk\,
	combout => \cache_w_index[0][5]~combout\);

-- Location: FF_X34_Y10_N23
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cache_w_index[0][5]~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(11));

-- Location: FF_X34_Y10_N19
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cache_r_addr[0][6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(10));

-- Location: FF_X34_Y10_N1
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \cache_r_addr[0][7]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(12));

-- Location: LCCOMB_X34_Y10_N28
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|ctrldata_rtl_0_bypass[9]~feeder_combout\ = \cache_w_index[0][4]~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cache_w_index[0][4]~combout\,
	combout => \cache_gen:1:xcache|ctrldata_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X34_Y10_N29
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cache_gen:1:xcache|ctrldata_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(9));

-- Location: LCCOMB_X34_Y10_N0
\cache_gen:1:xcache|ctrldata~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|ctrldata~23_combout\ = (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(11) & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(12) & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(10) $ (!\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(9))))) # 
-- (!\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(11) & (!\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(12) & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(10) $ (!\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(11),
	datab => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(10),
	datac => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(12),
	datad => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(9),
	combout => \cache_gen:1:xcache|ctrldata~23_combout\);

-- Location: LCCOMB_X36_Y10_N12
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|ctrldata_rtl_0_bypass[4]~feeder_combout\ = \cache_r_addr[0][3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cache_r_addr[0][3]~1_combout\,
	combout => \cache_gen:1:xcache|ctrldata_rtl_0_bypass[4]~feeder_combout\);

-- Location: FF_X36_Y10_N13
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cache_gen:1:xcache|ctrldata_rtl_0_bypass[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(4));

-- Location: FF_X36_Y10_N21
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \cache_w_index[0][1]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(3));

-- Location: FF_X36_Y10_N7
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \cache_r_addr[0][2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(2));

-- Location: LCCOMB_X36_Y10_N0
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|ctrldata_rtl_0_bypass[1]~feeder_combout\ = \cache_w_index[0][0]~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cache_w_index[0][0]~combout\,
	combout => \cache_gen:1:xcache|ctrldata_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X36_Y10_N1
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cache_gen:1:xcache|ctrldata_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(1));

-- Location: LCCOMB_X36_Y10_N6
\cache_gen:1:xcache|ctrldata~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|ctrldata~21_combout\ = (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(4) & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(3) & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(2) $ (!\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(1))))) # 
-- (!\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(4) & (!\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(3) & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(2) $ (!\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(4),
	datab => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(3),
	datac => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(2),
	datad => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(1),
	combout => \cache_gen:1:xcache|ctrldata~21_combout\);

-- Location: LCCOMB_X34_Y10_N30
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|ctrldata_rtl_0_bypass[13]~feeder_combout\ = \cache_w_index[0][6]~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cache_w_index[0][6]~combout\,
	combout => \cache_gen:1:xcache|ctrldata_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X34_Y10_N31
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cache_gen:1:xcache|ctrldata_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(13));

-- Location: FF_X34_Y12_N23
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector107~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(0));

-- Location: FF_X34_Y10_N7
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cache_r_addr[0][8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(14));

-- Location: LCCOMB_X34_Y10_N14
\cache_gen:1:xcache|ctrldata~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|ctrldata~24_combout\ = (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(0) & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(13) $ (!\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(13),
	datab => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(0),
	datad => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(14),
	combout => \cache_gen:1:xcache|ctrldata~24_combout\);

-- Location: LCCOMB_X37_Y10_N6
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|ctrldata_rtl_0_bypass[5]~feeder_combout\ = \cache_w_index[0][2]~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cache_w_index[0][2]~combout\,
	combout => \cache_gen:1:xcache|ctrldata_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X37_Y10_N7
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cache_gen:1:xcache|ctrldata_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(5));

-- Location: LCCOMB_X37_Y10_N28
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|ctrldata_rtl_0_bypass[8]~feeder_combout\ = \cache_r_addr[0][5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cache_r_addr[0][5]~3_combout\,
	combout => \cache_gen:1:xcache|ctrldata_rtl_0_bypass[8]~feeder_combout\);

-- Location: FF_X37_Y10_N29
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cache_gen:1:xcache|ctrldata_rtl_0_bypass[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(8));

-- Location: FF_X37_Y10_N25
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \cache_r_addr[0][4]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(6));

-- Location: FF_X37_Y10_N19
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \cache_w_index[0][3]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(7));

-- Location: LCCOMB_X37_Y10_N24
\cache_gen:1:xcache|ctrldata~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|ctrldata~22_combout\ = (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(5) & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(6) & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(8) $ (!\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(7))))) # 
-- (!\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(5) & (!\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(6) & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(8) $ (!\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(5),
	datab => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(8),
	datac => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(6),
	datad => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(7),
	combout => \cache_gen:1:xcache|ctrldata~22_combout\);

-- Location: LCCOMB_X37_Y10_N22
\cache_gen:1:xcache|ctrldata~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|ctrldata~25_combout\ = (\cache_gen:1:xcache|ctrldata~23_combout\ & (\cache_gen:1:xcache|ctrldata~21_combout\ & (\cache_gen:1:xcache|ctrldata~24_combout\ & \cache_gen:1:xcache|ctrldata~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata~23_combout\,
	datab => \cache_gen:1:xcache|ctrldata~21_combout\,
	datac => \cache_gen:1:xcache|ctrldata~24_combout\,
	datad => \cache_gen:1:xcache|ctrldata~22_combout\,
	combout => \cache_gen:1:xcache|ctrldata~25_combout\);

-- Location: FF_X38_Y12_N21
\cache_gen:1:xcache|ctrldata_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(26));

-- Location: LCCOMB_X38_Y12_N2
\cache_gen:1:xcache|ctrldata~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|ctrldata~30_combout\ = (\cache_gen:1:xcache|ctrldata~25_combout\ & ((\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(26)))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & (\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|ctrldata~25_combout\,
	datac => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a11\,
	datad => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(26),
	combout => \cache_gen:1:xcache|ctrldata~30_combout\);

-- Location: LCCOMB_X36_Y12_N12
\Selector13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\cache_gen:1:xcache|ctrldata~30_combout\ & (\current.busy~q\ & \cache_gen:0:xcache|ctrldata~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|ctrldata~30_combout\,
	datac => \current.busy~q\,
	datad => \cache_gen:0:xcache|ctrldata~26_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X39_Y13_N0
\word_number~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \word_number~0_combout\ = (!word_number(0) & ((\current.mem_read~q\) # (\current.write_back~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current.mem_read~q\,
	datac => word_number(0),
	datad => \current.write_back~q\,
	combout => \word_number~0_combout\);

-- Location: LCCOMB_X39_Y13_N14
\word_number[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \word_number[0]~1_combout\ = ((!\current.mem_read~q\ & !\current.write_back~q\)) # (!\s_waitrequest~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current.mem_read~q\,
	datac => \s_waitrequest~input_o\,
	datad => \current.write_back~q\,
	combout => \word_number[0]~1_combout\);

-- Location: FF_X39_Y13_N1
\word_number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \word_number~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \word_number[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => word_number(0));

-- Location: LCCOMB_X39_Y13_N28
\Selector13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\current.write_back~q\ & (((\s_waitrequest~input_o\) # (!word_number(1))) # (!word_number(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.write_back~q\,
	datab => word_number(0),
	datac => \s_waitrequest~input_o\,
	datad => word_number(1),
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X37_Y13_N18
\Selector13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (\Selector13~1_combout\) # ((\Selector13~0_combout\ & (!\Equal3~1_combout\ & !\m_memwrite~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Equal3~1_combout\,
	datac => \m_memwrite~input_o\,
	datad => \Selector13~1_combout\,
	combout => \Selector13~2_combout\);

-- Location: FF_X37_Y13_N19
\current.write_back\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector13~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current.write_back~q\);

-- Location: LCCOMB_X39_Y13_N12
\word_number~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \word_number~2_combout\ = (\current.write_back~q\ & ((word_number(1) $ (word_number(0))))) # (!\current.write_back~q\ & (\current.mem_read~q\ & (word_number(1) $ (word_number(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.write_back~q\,
	datab => \current.mem_read~q\,
	datac => word_number(1),
	datad => word_number(0),
	combout => \word_number~2_combout\);

-- Location: FF_X39_Y13_N13
\word_number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \word_number~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \word_number[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => word_number(1));

-- Location: FF_X37_Y13_N25
\dword_number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => word_number(1),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dword_number(1));

-- Location: FF_X36_Y13_N9
\dword_number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => word_number(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dword_number(0));

-- Location: LCCOMB_X39_Y13_N18
\Selector10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector10~3_combout\ = (dword_number(1) & (\ds_waitrequest~q\ & dword_number(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dword_number(1),
	datab => \ds_waitrequest~q\,
	datac => dword_number(0),
	combout => \Selector10~3_combout\);

-- Location: LCCOMB_X37_Y13_N14
\Selector165~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector165~0_combout\ = (\current.busy~q\ & !\m_memwrite~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current.busy~q\,
	datac => \m_memwrite~input_o\,
	combout => \Selector165~0_combout\);

-- Location: LCCOMB_X38_Y12_N0
\Selector161~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector161~0_combout\ = (\Selector165~0_combout\ & (!\Equal3~1_combout\ & ((!\cache_gen:1:xcache|ctrldata~30_combout\) # (!\cache_gen:0:xcache|ctrldata~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector165~0_combout\,
	datab => \cache_gen:0:xcache|ctrldata~26_combout\,
	datac => \Equal3~1_combout\,
	datad => \cache_gen:1:xcache|ctrldata~30_combout\,
	combout => \Selector161~0_combout\);

-- Location: LCCOMB_X39_Y13_N4
\Selector11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\Selector161~0_combout\) # ((!\Selector10~3_combout\ & \current.mem_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector10~3_combout\,
	datac => \current.mem_read~q\,
	datad => \Selector161~0_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X39_Y13_N5
\current.mem_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current.mem_read~q\);

-- Location: LCCOMB_X39_Y13_N16
\Selector10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\current.write_back~q\ & (word_number(0) & (!\s_waitrequest~input_o\ & word_number(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.write_back~q\,
	datab => word_number(0),
	datac => \s_waitrequest~input_o\,
	datad => word_number(1),
	combout => \Selector10~2_combout\);

-- Location: LCCOMB_X36_Y10_N18
\Selector10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (!\m_address[18]~input_o\ & (\current.idle~q\ & (\m_memwrite~input_o\ $ (\m_memread~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_memwrite~input_o\,
	datab => \m_memread~input_o\,
	datac => \m_address[18]~input_o\,
	datad => \current.idle~q\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X37_Y11_N0
\Selector10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector10~4_combout\ = (\Selector10~2_combout\) # ((\Selector10~1_combout\) # ((\current.mem_read~q\ & \Selector10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \Selector10~3_combout\,
	datac => \Selector10~2_combout\,
	datad => \Selector10~1_combout\,
	combout => \Selector10~4_combout\);

-- Location: FF_X37_Y11_N1
\current.busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector10~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current.busy~q\);

-- Location: LCCOMB_X36_Y12_N10
\Selector161~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector161~1_combout\ = (\Equal1~3_combout\ & (\current.busy~q\ & \Equal1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datac => \current.busy~q\,
	datad => \Equal1~9_combout\,
	combout => \Selector161~1_combout\);

-- Location: LCCOMB_X36_Y12_N24
\Selector161~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector161~2_combout\ = (\Equal1~12_combout\ & (\Equal1~0_combout\ & (\cache_gen:0:xcache|ctrldata~26_combout\ & \Selector161~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~12_combout\,
	datab => \Equal1~0_combout\,
	datac => \cache_gen:0:xcache|ctrldata~26_combout\,
	datad => \Selector161~1_combout\,
	combout => \Selector161~2_combout\);

-- Location: LCCOMB_X36_Y12_N16
\hit_index~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hit_index~0_combout\ = (\current.busy~q\ & ((\hits[1]~4_combout\) # ((\hit_index_reg~q\ & !\Selector161~2_combout\)))) # (!\current.busy~q\ & (((\hit_index_reg~q\ & !\Selector161~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.busy~q\,
	datab => \hits[1]~4_combout\,
	datac => \hit_index_reg~q\,
	datad => \Selector161~2_combout\,
	combout => \hit_index~0_combout\);

-- Location: FF_X36_Y12_N17
hit_index_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hit_index~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hit_index_reg~q\);

-- Location: IOIBUF_X81_Y34_N8
\s_readdata[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(0),
	o => \s_readdata[0]~input_o\);

-- Location: IOIBUF_X33_Y67_N8
\m_writedata[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(0),
	o => \m_writedata[0]~input_o\);

-- Location: LCCOMB_X33_Y12_N4
\Selector68~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (\m_memwrite~input_o\ & (\current.busy~q\ & \hits[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_memwrite~input_o\,
	datab => \current.busy~q\,
	datad => \hits[1]~4_combout\,
	combout => \Selector68~0_combout\);

-- Location: LCCOMB_X33_Y12_N10
\Selector68~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector68~1_combout\ = (\m_writedata[0]~input_o\ & ((\Selector68~0_combout\) # ((\Selector23~0_combout\ & \cache_gen:1:xcache|linedata~48_combout\)))) # (!\m_writedata[0]~input_o\ & (((\Selector23~0_combout\ & 
-- \cache_gen:1:xcache|linedata~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[0]~input_o\,
	datab => \Selector68~0_combout\,
	datac => \Selector23~0_combout\,
	datad => \cache_gen:1:xcache|linedata~48_combout\,
	combout => \Selector68~1_combout\);

-- Location: LCCOMB_X33_Y12_N0
\Selector68~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector68~2_combout\ = (\Selector68~1_combout\) # ((\s_readdata[0]~input_o\ & \current.mem_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_readdata[0]~input_o\,
	datac => \current.mem_read~q\,
	datad => \Selector68~1_combout\,
	combout => \Selector68~2_combout\);

-- Location: FF_X33_Y12_N1
\cache_gen:1:xcache|linedata_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector68~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(19));

-- Location: LCCOMB_X37_Y12_N6
\Selector106~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector106~6_combout\ = (!\current.mem_read~q\ & (\m_memwrite~input_o\ & (!\Selector109~0_combout\ & !\current.write_back~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \m_memwrite~input_o\,
	datac => \Selector109~0_combout\,
	datad => \current.write_back~q\,
	combout => \Selector106~6_combout\);

-- Location: LCCOMB_X37_Y12_N26
\Selector106~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector106~2_combout\ = (\current.init~q\ & (\s_address~0_combout\ & ((\Selector109~0_combout\) # (!\m_memwrite~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.init~q\,
	datab => \Selector109~0_combout\,
	datac => \s_address~0_combout\,
	datad => \m_memwrite~input_o\,
	combout => \Selector106~2_combout\);

-- Location: LCCOMB_X37_Y12_N0
\Selector105~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector105~1_combout\ = ((\Selector106~2_combout\) # ((\Selector106~6_combout\ & \hit_index_reg~q\))) # (!\Selector105~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector106~6_combout\,
	datab => \hit_index_reg~q\,
	datac => \Selector105~0_combout\,
	datad => \Selector106~2_combout\,
	combout => \Selector105~1_combout\);

-- Location: LCCOMB_X36_Y13_N16
\Selector103~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector103~0_combout\ = (!\current.write_back~q\ & (!\current.mem_read~q\ & ((\current.busy~q\) # (\current.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.busy~q\,
	datab => \current.write_back~q\,
	datac => \current.init~q\,
	datad => \current.mem_read~q\,
	combout => \Selector103~0_combout\);

-- Location: IOIBUF_X81_Y4_N22
\m_address[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_address(0),
	o => \m_address[0]~input_o\);

-- Location: LCCOMB_X36_Y13_N8
\cache_w_offset~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_w_offset~0_combout\ = (\Equal3~1_combout\ & ((\m_address[0]~input_o\))) # (!\Equal3~1_combout\ & (word_number(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~1_combout\,
	datac => word_number(0),
	datad => \m_address[0]~input_o\,
	combout => \cache_w_offset~0_combout\);

-- Location: LCCOMB_X36_Y13_N6
\Selector103~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector103~1_combout\ = (\current.write_back~q\) # ((\current.busy~q\ & !\current.mem_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.busy~q\,
	datab => \current.write_back~q\,
	datad => \current.mem_read~q\,
	combout => \Selector103~1_combout\);

-- Location: LCCOMB_X36_Y13_N18
\Selector104~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector104~0_combout\ = (\s_address~0_combout\ & (((\Selector103~1_combout\)))) # (!\s_address~0_combout\ & ((\Selector103~1_combout\ & ((word_number(0)))) # (!\Selector103~1_combout\ & (dword_number(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dword_number(0),
	datab => \s_address~0_combout\,
	datac => word_number(0),
	datad => \Selector103~1_combout\,
	combout => \Selector104~0_combout\);

-- Location: LCCOMB_X36_Y13_N0
Selector104 : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector104~combout\ = (\Selector103~0_combout\ & ((\Selector104~0_combout\ & ((\cache_w_offset~0_combout\))) # (!\Selector104~0_combout\ & (init_offset(0))))) # (!\Selector103~0_combout\ & (((\Selector104~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => init_offset(0),
	datab => \Selector103~0_combout\,
	datac => \cache_w_offset~0_combout\,
	datad => \Selector104~0_combout\,
	combout => \Selector104~combout\);

-- Location: IOIBUF_X81_Y10_N1
\m_address[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_address(1),
	o => \m_address[1]~input_o\);

-- Location: LCCOMB_X37_Y12_N22
\cache_w_offset~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_w_offset~1_combout\ = (\Equal3~1_combout\ & (\m_address[1]~input_o\)) # (!\Equal3~1_combout\ & ((word_number(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datac => \m_address[1]~input_o\,
	datad => word_number(1),
	combout => \cache_w_offset~1_combout\);

-- Location: LCCOMB_X37_Y13_N24
\Selector103~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector103~2_combout\ = (\s_address~0_combout\ & (((\Selector103~1_combout\)))) # (!\s_address~0_combout\ & ((\Selector103~1_combout\ & (word_number(1))) # (!\Selector103~1_combout\ & ((dword_number(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_address~0_combout\,
	datab => word_number(1),
	datac => dword_number(1),
	datad => \Selector103~1_combout\,
	combout => \Selector103~2_combout\);

-- Location: LCCOMB_X36_Y13_N22
Selector103 : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector103~combout\ = (\Selector103~0_combout\ & ((\Selector103~2_combout\ & ((\cache_w_offset~1_combout\))) # (!\Selector103~2_combout\ & (init_offset(1))))) # (!\Selector103~0_combout\ & (((\Selector103~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => init_offset(1),
	datab => \Selector103~0_combout\,
	datac => \cache_w_offset~1_combout\,
	datad => \Selector103~2_combout\,
	combout => \Selector103~combout\);

-- Location: LCCOMB_X36_Y13_N12
\Selector195~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector195~0_combout\ = (!\current.mem_read~q\ & (!\current.write_back~q\ & ((\current.idle~q\) # (\current.busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \current.idle~q\,
	datac => \current.busy~q\,
	datad => \current.write_back~q\,
	combout => \Selector195~0_combout\);

-- Location: LCCOMB_X36_Y13_N10
\Selector195~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector195~1_combout\ = (\Selector195~0_combout\ & ((\Selector104~0_combout\ & ((word_number(0)))) # (!\Selector104~0_combout\ & (\m_address[0]~input_o\)))) # (!\Selector195~0_combout\ & (((\Selector104~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector195~0_combout\,
	datab => \m_address[0]~input_o\,
	datac => word_number(0),
	datad => \Selector104~0_combout\,
	combout => \Selector195~1_combout\);

-- Location: LCCOMB_X36_Y13_N4
Selector195 : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector195~combout\ = (\Equal3~1_combout\ & ((\Selector195~0_combout\ & ((\m_address[0]~input_o\))) # (!\Selector195~0_combout\ & (\Selector195~1_combout\)))) # (!\Equal3~1_combout\ & (\Selector195~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector195~1_combout\,
	datab => \m_address[0]~input_o\,
	datac => \Equal3~1_combout\,
	datad => \Selector195~0_combout\,
	combout => \Selector195~combout\);

-- Location: CLKCTRL_G25
\current.dma~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \current.dma~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \current.dma~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y13_N14
\cache_r_offset[0][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_r_offset[0][0]~combout\ = (GLOBAL(\current.dma~clkctrl_outclk\) & (\cache_r_offset[0][0]~combout\)) # (!GLOBAL(\current.dma~clkctrl_outclk\) & ((\Selector195~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_r_offset[0][0]~combout\,
	datac => \Selector195~combout\,
	datad => \current.dma~clkctrl_outclk\,
	combout => \cache_r_offset[0][0]~combout\);

-- Location: LCCOMB_X37_Y12_N8
Selector197 : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector197~combout\ = (\Selector195~0_combout\ & ((\Selector103~2_combout\ & ((\cache_w_offset~1_combout\))) # (!\Selector103~2_combout\ & (\m_address[1]~input_o\)))) # (!\Selector195~0_combout\ & (((\Selector103~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[1]~input_o\,
	datab => \Selector195~0_combout\,
	datac => \Selector103~2_combout\,
	datad => \cache_w_offset~1_combout\,
	combout => \Selector197~combout\);

-- Location: LCCOMB_X37_Y12_N2
\cache_r_offset[0][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_r_offset[0][1]~combout\ = (GLOBAL(\current.dma~clkctrl_outclk\) & (\cache_r_offset[0][1]~combout\)) # (!GLOBAL(\current.dma~clkctrl_outclk\) & ((\Selector197~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_r_offset[0][1]~combout\,
	datac => \current.dma~clkctrl_outclk\,
	datad => \Selector197~combout\,
	combout => \cache_r_offset[0][1]~combout\);

-- Location: IOIBUF_X81_Y34_N1
\s_readdata[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(1),
	o => \s_readdata[1]~input_o\);

-- Location: IOIBUF_X44_Y67_N1
\s_readdata[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(2),
	o => \s_readdata[2]~input_o\);

-- Location: FF_X36_Y14_N1
\cache_gen:1:xcache|linedata_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector66~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(21));

-- Location: FF_X37_Y12_N1
\cache_gen:1:xcache|linedata_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector105~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(0));

-- Location: FF_X34_Y10_N11
\cache_gen:1:xcache|linedata_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_w_index[0][6]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(17));

-- Location: FF_X36_Y11_N17
\cache_gen:1:xcache|linedata_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_r_addr[0][8]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(18));

-- Location: FF_X36_Y11_N11
\cache_gen:1:xcache|linedata_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_w_index[0][1]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(7));

-- Location: FF_X36_Y11_N9
\cache_gen:1:xcache|linedata_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_w_index[0][0]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(5));

-- Location: FF_X37_Y11_N31
\cache_gen:1:xcache|linedata_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_r_addr[0][3]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(8));

-- Location: LCCOMB_X37_Y11_N18
\cache_gen:1:xcache|linedata_rtl_0_bypass[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata_rtl_0_bypass[6]~feeder_combout\ = \cache_r_addr[0][2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cache_r_addr[0][2]~0_combout\,
	combout => \cache_gen:1:xcache|linedata_rtl_0_bypass[6]~feeder_combout\);

-- Location: FF_X37_Y11_N19
\cache_gen:1:xcache|linedata_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cache_gen:1:xcache|linedata_rtl_0_bypass[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(6));

-- Location: LCCOMB_X37_Y11_N30
\cache_gen:1:xcache|linedata~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~43_combout\ = (\cache_gen:1:xcache|linedata_rtl_0_bypass\(7) & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(8) & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(5) $ (!\cache_gen:1:xcache|linedata_rtl_0_bypass\(6))))) # 
-- (!\cache_gen:1:xcache|linedata_rtl_0_bypass\(7) & (!\cache_gen:1:xcache|linedata_rtl_0_bypass\(8) & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(5) $ (!\cache_gen:1:xcache|linedata_rtl_0_bypass\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata_rtl_0_bypass\(7),
	datab => \cache_gen:1:xcache|linedata_rtl_0_bypass\(5),
	datac => \cache_gen:1:xcache|linedata_rtl_0_bypass\(8),
	datad => \cache_gen:1:xcache|linedata_rtl_0_bypass\(6),
	combout => \cache_gen:1:xcache|linedata~43_combout\);

-- Location: FF_X34_Y11_N23
\cache_gen:1:xcache|linedata_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_w_index[0][5]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(15));

-- Location: FF_X36_Y11_N21
\cache_gen:1:xcache|linedata_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_r_addr[0][7]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(16));

-- Location: FF_X36_Y11_N3
\cache_gen:1:xcache|linedata_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_r_addr[0][6]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(14));

-- Location: FF_X34_Y11_N9
\cache_gen:1:xcache|linedata_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_w_index[0][4]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(13));

-- Location: LCCOMB_X36_Y11_N2
\cache_gen:1:xcache|linedata~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~45_combout\ = (\cache_gen:1:xcache|linedata_rtl_0_bypass\(15) & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(16) & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(14) $ (!\cache_gen:1:xcache|linedata_rtl_0_bypass\(13))))) # 
-- (!\cache_gen:1:xcache|linedata_rtl_0_bypass\(15) & (!\cache_gen:1:xcache|linedata_rtl_0_bypass\(16) & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(14) $ (!\cache_gen:1:xcache|linedata_rtl_0_bypass\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata_rtl_0_bypass\(15),
	datab => \cache_gen:1:xcache|linedata_rtl_0_bypass\(16),
	datac => \cache_gen:1:xcache|linedata_rtl_0_bypass\(14),
	datad => \cache_gen:1:xcache|linedata_rtl_0_bypass\(13),
	combout => \cache_gen:1:xcache|linedata~45_combout\);

-- Location: FF_X37_Y10_N9
\cache_gen:1:xcache|linedata_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_w_index[0][3]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(11));

-- Location: FF_X37_Y10_N5
\cache_gen:1:xcache|linedata_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_w_index[0][2]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(9));

-- Location: FF_X38_Y10_N17
\cache_gen:1:xcache|linedata_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_r_addr[0][4]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(10));

-- Location: LCCOMB_X38_Y10_N24
\cache_gen:1:xcache|linedata_rtl_0_bypass[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata_rtl_0_bypass[12]~feeder_combout\ = \cache_r_addr[0][5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cache_r_addr[0][5]~3_combout\,
	combout => \cache_gen:1:xcache|linedata_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X38_Y10_N25
\cache_gen:1:xcache|linedata_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cache_gen:1:xcache|linedata_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(12));

-- Location: LCCOMB_X38_Y10_N16
\cache_gen:1:xcache|linedata~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~44_combout\ = (\cache_gen:1:xcache|linedata_rtl_0_bypass\(11) & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(12) & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(9) $ (!\cache_gen:1:xcache|linedata_rtl_0_bypass\(10))))) # 
-- (!\cache_gen:1:xcache|linedata_rtl_0_bypass\(11) & (!\cache_gen:1:xcache|linedata_rtl_0_bypass\(12) & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(9) $ (!\cache_gen:1:xcache|linedata_rtl_0_bypass\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata_rtl_0_bypass\(11),
	datab => \cache_gen:1:xcache|linedata_rtl_0_bypass\(9),
	datac => \cache_gen:1:xcache|linedata_rtl_0_bypass\(10),
	datad => \cache_gen:1:xcache|linedata_rtl_0_bypass\(12),
	combout => \cache_gen:1:xcache|linedata~44_combout\);

-- Location: FF_X36_Y13_N3
\cache_gen:1:xcache|linedata_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_r_offset[0][0]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(2));

-- Location: FF_X36_Y13_N29
\cache_gen:1:xcache|linedata_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector103~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(3));

-- Location: FF_X37_Y13_N1
\cache_gen:1:xcache|linedata_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_r_offset[0][1]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(4));

-- Location: FF_X37_Y13_N3
\cache_gen:1:xcache|linedata_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector104~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(1));

-- Location: LCCOMB_X37_Y13_N0
\cache_gen:1:xcache|linedata~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~42_combout\ = (\cache_gen:1:xcache|linedata_rtl_0_bypass\(2) & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(1) & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(3) $ (!\cache_gen:1:xcache|linedata_rtl_0_bypass\(4))))) # 
-- (!\cache_gen:1:xcache|linedata_rtl_0_bypass\(2) & (!\cache_gen:1:xcache|linedata_rtl_0_bypass\(1) & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(3) $ (!\cache_gen:1:xcache|linedata_rtl_0_bypass\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata_rtl_0_bypass\(2),
	datab => \cache_gen:1:xcache|linedata_rtl_0_bypass\(3),
	datac => \cache_gen:1:xcache|linedata_rtl_0_bypass\(4),
	datad => \cache_gen:1:xcache|linedata_rtl_0_bypass\(1),
	combout => \cache_gen:1:xcache|linedata~42_combout\);

-- Location: LCCOMB_X37_Y11_N28
\cache_gen:1:xcache|linedata~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~46_combout\ = (\cache_gen:1:xcache|linedata~43_combout\ & (\cache_gen:1:xcache|linedata~45_combout\ & (\cache_gen:1:xcache|linedata~44_combout\ & \cache_gen:1:xcache|linedata~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~43_combout\,
	datab => \cache_gen:1:xcache|linedata~45_combout\,
	datac => \cache_gen:1:xcache|linedata~44_combout\,
	datad => \cache_gen:1:xcache|linedata~42_combout\,
	combout => \cache_gen:1:xcache|linedata~46_combout\);

-- Location: LCCOMB_X36_Y11_N16
\cache_gen:1:xcache|linedata~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~47_combout\ = (\cache_gen:1:xcache|linedata_rtl_0_bypass\(0) & (\cache_gen:1:xcache|linedata~46_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(17) $ (!\cache_gen:1:xcache|linedata_rtl_0_bypass\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata_rtl_0_bypass\(0),
	datab => \cache_gen:1:xcache|linedata_rtl_0_bypass\(17),
	datac => \cache_gen:1:xcache|linedata_rtl_0_bypass\(18),
	datad => \cache_gen:1:xcache|linedata~46_combout\,
	combout => \cache_gen:1:xcache|linedata~47_combout\);

-- Location: IOIBUF_X81_Y4_N8
\s_readdata[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(3),
	o => \s_readdata[3]~input_o\);

-- Location: FF_X36_Y14_N13
\cache_gen:1:xcache|linedata_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector65~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(22));

-- Location: IOIBUF_X8_Y0_N22
\s_readdata[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(4),
	o => \s_readdata[4]~input_o\);

-- Location: FF_X34_Y13_N25
\cache_gen:1:xcache|linedata_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector64~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(23));

-- Location: IOIBUF_X81_Y39_N1
\s_readdata[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(5),
	o => \s_readdata[5]~input_o\);

-- Location: FF_X33_Y13_N5
\cache_gen:1:xcache|linedata_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector63~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(24));

-- Location: IOIBUF_X33_Y67_N15
\s_readdata[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(6),
	o => \s_readdata[6]~input_o\);

-- Location: IOIBUF_X81_Y42_N1
\m_writedata[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(6),
	o => \m_writedata[6]~input_o\);

-- Location: FF_X33_Y14_N5
\cache_gen:1:xcache|linedata_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(25));

-- Location: IOIBUF_X3_Y0_N15
\s_readdata[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(7),
	o => \s_readdata[7]~input_o\);

-- Location: FF_X33_Y14_N31
\cache_gen:1:xcache|linedata_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector61~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(26));

-- Location: IOIBUF_X81_Y23_N8
\s_readdata[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(8),
	o => \s_readdata[8]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\m_writedata[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(8),
	o => \m_writedata[8]~input_o\);

-- Location: FF_X32_Y13_N29
\cache_gen:1:xcache|linedata_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector60~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(27));

-- Location: IOIBUF_X81_Y39_N8
\s_readdata[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(9),
	o => \s_readdata[9]~input_o\);

-- Location: FF_X32_Y13_N17
\cache_gen:1:xcache|linedata_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector59~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(28));

-- Location: IOIBUF_X81_Y46_N8
\s_readdata[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(10),
	o => \s_readdata[10]~input_o\);

-- Location: IOIBUF_X42_Y67_N8
\s_readdata[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(11),
	o => \s_readdata[11]~input_o\);

-- Location: FF_X34_Y14_N31
\cache_gen:1:xcache|linedata_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector57~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(30));

-- Location: IOIBUF_X81_Y2_N8
\s_readdata[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(12),
	o => \s_readdata[12]~input_o\);

-- Location: FF_X34_Y13_N27
\cache_gen:1:xcache|linedata_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector56~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(31));

-- Location: IOIBUF_X58_Y0_N22
\s_readdata[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(13),
	o => \s_readdata[13]~input_o\);

-- Location: IOIBUF_X61_Y0_N1
\m_writedata[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(13),
	o => \m_writedata[13]~input_o\);

-- Location: IOIBUF_X10_Y0_N1
\s_readdata[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(14),
	o => \s_readdata[14]~input_o\);

-- Location: IOIBUF_X17_Y0_N22
\m_writedata[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(14),
	o => \m_writedata[14]~input_o\);

-- Location: FF_X32_Y14_N1
\cache_gen:1:xcache|linedata_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector54~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(33));

-- Location: IOIBUF_X31_Y67_N22
\s_readdata[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(15),
	o => \s_readdata[15]~input_o\);

-- Location: IOIBUF_X29_Y67_N22
\m_writedata[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(15),
	o => \m_writedata[15]~input_o\);

-- Location: FF_X32_Y14_N31
\cache_gen:1:xcache|linedata_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector53~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(34));

-- Location: IOIBUF_X81_Y19_N1
\s_readdata[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(16),
	o => \s_readdata[16]~input_o\);

-- Location: IOIBUF_X81_Y14_N1
\m_writedata[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(16),
	o => \m_writedata[16]~input_o\);

-- Location: FF_X37_Y14_N31
\cache_gen:1:xcache|linedata_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector52~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(35));

-- Location: IOIBUF_X81_Y16_N8
\s_readdata[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(17),
	o => \s_readdata[17]~input_o\);

-- Location: IOIBUF_X63_Y0_N1
\m_writedata[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(17),
	o => \m_writedata[17]~input_o\);

-- Location: M9K_X35_Y13_N0
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_set:\cache_gen:1:xcache|altsyncram:linedata_rtl_0|altsyncram_ujc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Selector105~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Selector105~1_combout\,
	portadatain => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X37_Y14_N17
\cache_gen:1:xcache|linedata_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(36));

-- Location: LCCOMB_X37_Y14_N26
\cache_gen:1:xcache|linedata~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~65_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0_bypass\(36)))) # (!\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|linedata~47_combout\,
	datac => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a17\,
	datad => \cache_gen:1:xcache|linedata_rtl_0_bypass\(36),
	combout => \cache_gen:1:xcache|linedata~65_combout\);

-- Location: LCCOMB_X37_Y14_N12
\Selector51~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\m_writedata[17]~input_o\ & ((\Selector68~0_combout\) # ((\cache_gen:1:xcache|linedata~65_combout\ & \Selector23~0_combout\)))) # (!\m_writedata[17]~input_o\ & (\cache_gen:1:xcache|linedata~65_combout\ & 
-- ((\Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[17]~input_o\,
	datab => \cache_gen:1:xcache|linedata~65_combout\,
	datac => \Selector68~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector51~0_combout\);

-- Location: LCCOMB_X37_Y14_N16
\Selector51~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector51~1_combout\ = (\Selector51~0_combout\) # ((\current.mem_read~q\ & \s_readdata[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \s_readdata[17]~input_o\,
	datad => \Selector51~0_combout\,
	combout => \Selector51~1_combout\);

-- Location: LCCOMB_X36_Y14_N20
\cache_gen:1:xcache|linedata~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~64_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(35))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata_rtl_0_bypass\(35),
	datab => \cache_gen:1:xcache|linedata~47_combout\,
	datad => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a16\,
	combout => \cache_gen:1:xcache|linedata~64_combout\);

-- Location: LCCOMB_X37_Y14_N2
\Selector52~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\m_writedata[16]~input_o\ & ((\Selector68~0_combout\) # ((\cache_gen:1:xcache|linedata~64_combout\ & \Selector23~0_combout\)))) # (!\m_writedata[16]~input_o\ & (\cache_gen:1:xcache|linedata~64_combout\ & 
-- ((\Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[16]~input_o\,
	datab => \cache_gen:1:xcache|linedata~64_combout\,
	datac => \Selector68~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector52~0_combout\);

-- Location: LCCOMB_X37_Y14_N30
\Selector52~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector52~1_combout\ = (\Selector52~0_combout\) # ((\current.mem_read~q\ & \s_readdata[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datac => \s_readdata[16]~input_o\,
	datad => \Selector52~0_combout\,
	combout => \Selector52~1_combout\);

-- Location: LCCOMB_X32_Y14_N4
\cache_gen:1:xcache|linedata~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~63_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(34))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|linedata~47_combout\,
	datac => \cache_gen:1:xcache|linedata_rtl_0_bypass\(34),
	datad => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a15\,
	combout => \cache_gen:1:xcache|linedata~63_combout\);

-- Location: LCCOMB_X32_Y14_N12
\Selector53~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\Selector68~0_combout\ & ((\m_writedata[15]~input_o\) # ((\cache_gen:1:xcache|linedata~63_combout\ & \Selector23~0_combout\)))) # (!\Selector68~0_combout\ & (((\cache_gen:1:xcache|linedata~63_combout\ & \Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector68~0_combout\,
	datab => \m_writedata[15]~input_o\,
	datac => \cache_gen:1:xcache|linedata~63_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector53~0_combout\);

-- Location: LCCOMB_X32_Y14_N30
\Selector53~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector53~1_combout\ = (\Selector53~0_combout\) # ((\current.mem_read~q\ & \s_readdata[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datac => \s_readdata[15]~input_o\,
	datad => \Selector53~0_combout\,
	combout => \Selector53~1_combout\);

-- Location: LCCOMB_X32_Y14_N22
\cache_gen:1:xcache|linedata~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~62_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(33))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|linedata_rtl_0_bypass\(33),
	datac => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a14\,
	datad => \cache_gen:1:xcache|linedata~47_combout\,
	combout => \cache_gen:1:xcache|linedata~62_combout\);

-- Location: LCCOMB_X32_Y14_N20
\Selector54~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\m_writedata[14]~input_o\ & ((\Selector68~0_combout\) # ((\cache_gen:1:xcache|linedata~62_combout\ & \Selector23~0_combout\)))) # (!\m_writedata[14]~input_o\ & (((\cache_gen:1:xcache|linedata~62_combout\ & 
-- \Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[14]~input_o\,
	datab => \Selector68~0_combout\,
	datac => \cache_gen:1:xcache|linedata~62_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector54~0_combout\);

-- Location: LCCOMB_X32_Y14_N0
\Selector54~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector54~1_combout\ = (\Selector54~0_combout\) # ((\current.mem_read~q\ & \s_readdata[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datac => \s_readdata[14]~input_o\,
	datad => \Selector54~0_combout\,
	combout => \Selector54~1_combout\);

-- Location: FF_X34_Y13_N15
\cache_gen:1:xcache|linedata_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector55~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(32));

-- Location: LCCOMB_X34_Y13_N16
\cache_gen:1:xcache|linedata~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~61_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0_bypass\(32)))) # (!\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a13\,
	datab => \cache_gen:1:xcache|linedata~47_combout\,
	datac => \cache_gen:1:xcache|linedata_rtl_0_bypass\(32),
	combout => \cache_gen:1:xcache|linedata~61_combout\);

-- Location: LCCOMB_X34_Y13_N28
\Selector55~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\m_writedata[13]~input_o\ & ((\Selector68~0_combout\) # ((\Selector23~0_combout\ & \cache_gen:1:xcache|linedata~61_combout\)))) # (!\m_writedata[13]~input_o\ & (\Selector23~0_combout\ & 
-- (\cache_gen:1:xcache|linedata~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[13]~input_o\,
	datab => \Selector23~0_combout\,
	datac => \cache_gen:1:xcache|linedata~61_combout\,
	datad => \Selector68~0_combout\,
	combout => \Selector55~0_combout\);

-- Location: LCCOMB_X34_Y13_N14
\Selector55~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector55~1_combout\ = (\Selector55~0_combout\) # ((\current.mem_read~q\ & \s_readdata[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current.mem_read~q\,
	datac => \s_readdata[13]~input_o\,
	datad => \Selector55~0_combout\,
	combout => \Selector55~1_combout\);

-- Location: LCCOMB_X34_Y13_N0
\cache_gen:1:xcache|linedata~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~60_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(31))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata_rtl_0_bypass\(31),
	datab => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a12\,
	datac => \cache_gen:1:xcache|linedata~47_combout\,
	combout => \cache_gen:1:xcache|linedata~60_combout\);

-- Location: IOIBUF_X81_Y20_N1
\m_writedata[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(12),
	o => \m_writedata[12]~input_o\);

-- Location: LCCOMB_X34_Y13_N12
\Selector56~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\Selector68~0_combout\ & ((\m_writedata[12]~input_o\) # ((\cache_gen:1:xcache|linedata~60_combout\ & \Selector23~0_combout\)))) # (!\Selector68~0_combout\ & (\cache_gen:1:xcache|linedata~60_combout\ & ((\Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector68~0_combout\,
	datab => \cache_gen:1:xcache|linedata~60_combout\,
	datac => \m_writedata[12]~input_o\,
	datad => \Selector23~0_combout\,
	combout => \Selector56~0_combout\);

-- Location: LCCOMB_X34_Y13_N26
\Selector56~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector56~1_combout\ = (\Selector56~0_combout\) # ((\current.mem_read~q\ & \s_readdata[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current.mem_read~q\,
	datac => \s_readdata[12]~input_o\,
	datad => \Selector56~0_combout\,
	combout => \Selector56~1_combout\);

-- Location: LCCOMB_X34_Y14_N4
\cache_gen:1:xcache|linedata~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~59_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(30))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|linedata~47_combout\,
	datac => \cache_gen:1:xcache|linedata_rtl_0_bypass\(30),
	datad => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a11\,
	combout => \cache_gen:1:xcache|linedata~59_combout\);

-- Location: IOIBUF_X42_Y67_N1
\m_writedata[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(11),
	o => \m_writedata[11]~input_o\);

-- Location: LCCOMB_X34_Y14_N20
\Selector57~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\cache_gen:1:xcache|linedata~59_combout\ & ((\Selector23~0_combout\) # ((\m_writedata[11]~input_o\ & \Selector68~0_combout\)))) # (!\cache_gen:1:xcache|linedata~59_combout\ & (\m_writedata[11]~input_o\ & 
-- (\Selector68~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~59_combout\,
	datab => \m_writedata[11]~input_o\,
	datac => \Selector68~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector57~0_combout\);

-- Location: LCCOMB_X34_Y14_N30
\Selector57~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector57~1_combout\ = (\Selector57~0_combout\) # ((\s_readdata[11]~input_o\ & \current.mem_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[11]~input_o\,
	datac => \current.mem_read~q\,
	datad => \Selector57~0_combout\,
	combout => \Selector57~1_combout\);

-- Location: FF_X34_Y14_N27
\cache_gen:1:xcache|linedata_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector58~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(29));

-- Location: LCCOMB_X34_Y14_N16
\cache_gen:1:xcache|linedata~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~58_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0_bypass\(29)))) # (!\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a10\,
	datac => \cache_gen:1:xcache|linedata_rtl_0_bypass\(29),
	datad => \cache_gen:1:xcache|linedata~47_combout\,
	combout => \cache_gen:1:xcache|linedata~58_combout\);

-- Location: IOIBUF_X81_Y26_N1
\m_writedata[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(10),
	o => \m_writedata[10]~input_o\);

-- Location: LCCOMB_X34_Y14_N12
\Selector58~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\cache_gen:1:xcache|linedata~58_combout\ & ((\Selector23~0_combout\) # ((\m_writedata[10]~input_o\ & \Selector68~0_combout\)))) # (!\cache_gen:1:xcache|linedata~58_combout\ & (\m_writedata[10]~input_o\ & 
-- (\Selector68~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~58_combout\,
	datab => \m_writedata[10]~input_o\,
	datac => \Selector68~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector58~0_combout\);

-- Location: LCCOMB_X34_Y14_N26
\Selector58~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector58~1_combout\ = (\Selector58~0_combout\) # ((\s_readdata[10]~input_o\ & \current.mem_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_readdata[10]~input_o\,
	datac => \current.mem_read~q\,
	datad => \Selector58~0_combout\,
	combout => \Selector58~1_combout\);

-- Location: LCCOMB_X32_Y13_N10
\cache_gen:1:xcache|linedata~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~57_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(28))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|linedata_rtl_0_bypass\(28),
	datac => \cache_gen:1:xcache|linedata~47_combout\,
	datad => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a9\,
	combout => \cache_gen:1:xcache|linedata~57_combout\);

-- Location: IOIBUF_X19_Y0_N22
\m_writedata[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(9),
	o => \m_writedata[9]~input_o\);

-- Location: LCCOMB_X32_Y13_N0
\Selector59~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\cache_gen:1:xcache|linedata~57_combout\ & ((\Selector23~0_combout\) # ((\m_writedata[9]~input_o\ & \Selector68~0_combout\)))) # (!\cache_gen:1:xcache|linedata~57_combout\ & (\m_writedata[9]~input_o\ & (\Selector68~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~57_combout\,
	datab => \m_writedata[9]~input_o\,
	datac => \Selector68~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector59~0_combout\);

-- Location: LCCOMB_X32_Y13_N16
\Selector59~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector59~1_combout\ = (\Selector59~0_combout\) # ((\s_readdata[9]~input_o\ & \current.mem_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[9]~input_o\,
	datac => \current.mem_read~q\,
	datad => \Selector59~0_combout\,
	combout => \Selector59~1_combout\);

-- Location: LCCOMB_X32_Y13_N18
\cache_gen:1:xcache|linedata~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~56_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(27))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|linedata_rtl_0_bypass\(27),
	datac => \cache_gen:1:xcache|linedata~47_combout\,
	datad => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a8\,
	combout => \cache_gen:1:xcache|linedata~56_combout\);

-- Location: LCCOMB_X32_Y13_N20
\Selector60~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\m_writedata[8]~input_o\ & ((\Selector68~0_combout\) # ((\cache_gen:1:xcache|linedata~56_combout\ & \Selector23~0_combout\)))) # (!\m_writedata[8]~input_o\ & (\cache_gen:1:xcache|linedata~56_combout\ & 
-- ((\Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[8]~input_o\,
	datab => \cache_gen:1:xcache|linedata~56_combout\,
	datac => \Selector68~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector60~0_combout\);

-- Location: LCCOMB_X32_Y13_N28
\Selector60~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector60~1_combout\ = (\Selector60~0_combout\) # ((\s_readdata[8]~input_o\ & \current.mem_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_readdata[8]~input_o\,
	datac => \current.mem_read~q\,
	datad => \Selector60~0_combout\,
	combout => \Selector60~1_combout\);

-- Location: LCCOMB_X33_Y14_N12
\cache_gen:1:xcache|linedata~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~55_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(26))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata_rtl_0_bypass\(26),
	datab => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a7\,
	datac => \cache_gen:1:xcache|linedata~47_combout\,
	combout => \cache_gen:1:xcache|linedata~55_combout\);

-- Location: IOIBUF_X81_Y21_N8
\m_writedata[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(7),
	o => \m_writedata[7]~input_o\);

-- Location: LCCOMB_X33_Y14_N0
\Selector61~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\cache_gen:1:xcache|linedata~55_combout\ & ((\Selector23~0_combout\) # ((\m_writedata[7]~input_o\ & \Selector68~0_combout\)))) # (!\cache_gen:1:xcache|linedata~55_combout\ & (\m_writedata[7]~input_o\ & 
-- ((\Selector68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~55_combout\,
	datab => \m_writedata[7]~input_o\,
	datac => \Selector23~0_combout\,
	datad => \Selector68~0_combout\,
	combout => \Selector61~0_combout\);

-- Location: LCCOMB_X33_Y14_N30
\Selector61~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector61~1_combout\ = (\Selector61~0_combout\) # ((\current.mem_read~q\ & \s_readdata[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datac => \s_readdata[7]~input_o\,
	datad => \Selector61~0_combout\,
	combout => \Selector61~1_combout\);

-- Location: LCCOMB_X33_Y14_N2
\cache_gen:1:xcache|linedata~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~54_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(25))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~47_combout\,
	datac => \cache_gen:1:xcache|linedata_rtl_0_bypass\(25),
	datad => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a6\,
	combout => \cache_gen:1:xcache|linedata~54_combout\);

-- Location: LCCOMB_X33_Y14_N6
\Selector62~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (\Selector68~0_combout\ & ((\m_writedata[6]~input_o\) # ((\Selector23~0_combout\ & \cache_gen:1:xcache|linedata~54_combout\)))) # (!\Selector68~0_combout\ & (((\Selector23~0_combout\ & \cache_gen:1:xcache|linedata~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector68~0_combout\,
	datab => \m_writedata[6]~input_o\,
	datac => \Selector23~0_combout\,
	datad => \cache_gen:1:xcache|linedata~54_combout\,
	combout => \Selector62~0_combout\);

-- Location: LCCOMB_X33_Y14_N4
\Selector62~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector62~1_combout\ = (\Selector62~0_combout\) # ((\current.mem_read~q\ & \s_readdata[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datac => \s_readdata[6]~input_o\,
	datad => \Selector62~0_combout\,
	combout => \Selector62~1_combout\);

-- Location: LCCOMB_X33_Y13_N6
\cache_gen:1:xcache|linedata~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~53_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(24))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~47_combout\,
	datab => \cache_gen:1:xcache|linedata_rtl_0_bypass\(24),
	datad => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a5\,
	combout => \cache_gen:1:xcache|linedata~53_combout\);

-- Location: IOIBUF_X19_Y0_N15
\m_writedata[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(5),
	o => \m_writedata[5]~input_o\);

-- Location: LCCOMB_X33_Y13_N24
\Selector63~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\cache_gen:1:xcache|linedata~53_combout\ & ((\Selector23~0_combout\) # ((\m_writedata[5]~input_o\ & \Selector68~0_combout\)))) # (!\cache_gen:1:xcache|linedata~53_combout\ & (\m_writedata[5]~input_o\ & 
-- ((\Selector68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~53_combout\,
	datab => \m_writedata[5]~input_o\,
	datac => \Selector23~0_combout\,
	datad => \Selector68~0_combout\,
	combout => \Selector63~0_combout\);

-- Location: LCCOMB_X33_Y13_N4
\Selector63~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector63~1_combout\ = (\Selector63~0_combout\) # ((\s_readdata[5]~input_o\ & \current.mem_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_readdata[5]~input_o\,
	datac => \current.mem_read~q\,
	datad => \Selector63~0_combout\,
	combout => \Selector63~1_combout\);

-- Location: LCCOMB_X34_Y13_N24
\cache_gen:1:xcache|linedata~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~52_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(23))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|linedata~47_combout\,
	datac => \cache_gen:1:xcache|linedata_rtl_0_bypass\(23),
	datad => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a4\,
	combout => \cache_gen:1:xcache|linedata~52_combout\);

-- Location: IOIBUF_X81_Y25_N15
\m_writedata[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(4),
	o => \m_writedata[4]~input_o\);

-- Location: LCCOMB_X34_Y13_N20
\Selector64~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (\Selector68~0_combout\ & ((\m_writedata[4]~input_o\) # ((\cache_gen:1:xcache|linedata~52_combout\ & \Selector23~0_combout\)))) # (!\Selector68~0_combout\ & (\cache_gen:1:xcache|linedata~52_combout\ & ((\Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector68~0_combout\,
	datab => \cache_gen:1:xcache|linedata~52_combout\,
	datac => \m_writedata[4]~input_o\,
	datad => \Selector23~0_combout\,
	combout => \Selector64~0_combout\);

-- Location: LCCOMB_X34_Y13_N22
\Selector64~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector64~1_combout\ = (\Selector64~0_combout\) # ((\current.mem_read~q\ & \s_readdata[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current.mem_read~q\,
	datac => \s_readdata[4]~input_o\,
	datad => \Selector64~0_combout\,
	combout => \Selector64~1_combout\);

-- Location: LCCOMB_X36_Y14_N14
\cache_gen:1:xcache|linedata~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~51_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(22))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata_rtl_0_bypass\(22),
	datab => \cache_gen:1:xcache|linedata~47_combout\,
	datad => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a3\,
	combout => \cache_gen:1:xcache|linedata~51_combout\);

-- Location: IOIBUF_X81_Y10_N15
\m_writedata[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(3),
	o => \m_writedata[3]~input_o\);

-- Location: LCCOMB_X36_Y14_N10
\Selector65~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\cache_gen:1:xcache|linedata~51_combout\ & ((\Selector23~0_combout\) # ((\m_writedata[3]~input_o\ & \Selector68~0_combout\)))) # (!\cache_gen:1:xcache|linedata~51_combout\ & (\m_writedata[3]~input_o\ & 
-- ((\Selector68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~51_combout\,
	datab => \m_writedata[3]~input_o\,
	datac => \Selector23~0_combout\,
	datad => \Selector68~0_combout\,
	combout => \Selector65~0_combout\);

-- Location: LCCOMB_X36_Y14_N12
\Selector65~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector65~1_combout\ = (\Selector65~0_combout\) # ((\s_readdata[3]~input_o\ & \current.mem_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_readdata[3]~input_o\,
	datac => \current.mem_read~q\,
	datad => \Selector65~0_combout\,
	combout => \Selector65~1_combout\);

-- Location: LCCOMB_X37_Y14_N20
\cache_gen:1:xcache|linedata~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~50_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(21))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata_rtl_0_bypass\(21),
	datab => \cache_gen:1:xcache|linedata~47_combout\,
	datad => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a2\,
	combout => \cache_gen:1:xcache|linedata~50_combout\);

-- Location: IOIBUF_X81_Y21_N1
\m_writedata[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(2),
	o => \m_writedata[2]~input_o\);

-- Location: LCCOMB_X36_Y14_N2
\Selector66~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (\cache_gen:1:xcache|linedata~50_combout\ & ((\Selector23~0_combout\) # ((\m_writedata[2]~input_o\ & \Selector68~0_combout\)))) # (!\cache_gen:1:xcache|linedata~50_combout\ & (\m_writedata[2]~input_o\ & 
-- ((\Selector68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~50_combout\,
	datab => \m_writedata[2]~input_o\,
	datac => \Selector23~0_combout\,
	datad => \Selector68~0_combout\,
	combout => \Selector66~0_combout\);

-- Location: LCCOMB_X36_Y14_N0
\Selector66~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector66~1_combout\ = (\Selector66~0_combout\) # ((\s_readdata[2]~input_o\ & \current.mem_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[2]~input_o\,
	datac => \current.mem_read~q\,
	datad => \Selector66~0_combout\,
	combout => \Selector66~1_combout\);

-- Location: FF_X36_Y13_N31
\cache_gen:1:xcache|linedata_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector67~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(20));

-- Location: LCCOMB_X36_Y13_N30
\cache_gen:1:xcache|linedata~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~49_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0_bypass\(20)))) # (!\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a1\,
	datab => \cache_gen:1:xcache|linedata~47_combout\,
	datac => \cache_gen:1:xcache|linedata_rtl_0_bypass\(20),
	combout => \cache_gen:1:xcache|linedata~49_combout\);

-- Location: IOIBUF_X58_Y0_N15
\m_writedata[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(1),
	o => \m_writedata[1]~input_o\);

-- Location: LCCOMB_X36_Y13_N20
\Selector67~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\cache_gen:1:xcache|linedata~49_combout\ & ((\Selector23~0_combout\) # ((\m_writedata[1]~input_o\ & \Selector68~0_combout\)))) # (!\cache_gen:1:xcache|linedata~49_combout\ & (\m_writedata[1]~input_o\ & 
-- ((\Selector68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~49_combout\,
	datab => \m_writedata[1]~input_o\,
	datac => \Selector23~0_combout\,
	datad => \Selector68~0_combout\,
	combout => \Selector67~0_combout\);

-- Location: LCCOMB_X36_Y13_N26
\Selector67~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector67~1_combout\ = (\Selector67~0_combout\) # ((\current.mem_read~q\ & \s_readdata[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datac => \s_readdata[1]~input_o\,
	datad => \Selector67~0_combout\,
	combout => \Selector67~1_combout\);

-- Location: LCCOMB_X34_Y12_N26
\cache_gen:1:xcache|linedata~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~48_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(19))) # (!\cache_gen:1:xcache|linedata~47_combout\ & 
-- ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata_rtl_0_bypass\(19),
	datab => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \cache_gen:1:xcache|linedata~47_combout\,
	combout => \cache_gen:1:xcache|linedata~48_combout\);

-- Location: LCCOMB_X33_Y12_N16
\Selector100~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = (\m_memwrite~input_o\ & (\current.busy~q\ & (\Equal1~13_combout\ & \cache_gen:0:xcache|ctrldata~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_memwrite~input_o\,
	datab => \current.busy~q\,
	datac => \Equal1~13_combout\,
	datad => \cache_gen:0:xcache|ctrldata~26_combout\,
	combout => \Selector100~0_combout\);

-- Location: LCCOMB_X33_Y12_N14
\Selector100~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector100~1_combout\ = (\current.mem_read~q\ & ((\s_readdata[0]~input_o\) # ((\Selector100~0_combout\ & \m_writedata[0]~input_o\)))) # (!\current.mem_read~q\ & (\Selector100~0_combout\ & (\m_writedata[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \Selector100~0_combout\,
	datac => \m_writedata[0]~input_o\,
	datad => \s_readdata[0]~input_o\,
	combout => \Selector100~1_combout\);

-- Location: LCCOMB_X33_Y12_N30
\Selector100~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector100~2_combout\ = (\Selector100~1_combout\) # ((\Selector27~1_combout\ & \cache_gen:0:xcache|linedata~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector27~1_combout\,
	datac => \cache_gen:0:xcache|linedata~48_combout\,
	datad => \Selector100~1_combout\,
	combout => \Selector100~2_combout\);

-- Location: FF_X33_Y12_N31
\cache_gen:0:xcache|linedata_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector100~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(19));

-- Location: LCCOMB_X37_Y12_N20
\Selector106~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector106~5_combout\ = ((\Selector106~2_combout\) # ((\Selector106~6_combout\ & !\hit_index_reg~q\))) # (!\Selector106~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector106~6_combout\,
	datab => \Selector106~4_combout\,
	datac => \Selector106~2_combout\,
	datad => \hit_index_reg~q\,
	combout => \Selector106~5_combout\);

-- Location: LCCOMB_X33_Y12_N12
\Selector99~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (\m_writedata[1]~input_o\ & ((\Selector100~0_combout\) # ((\current.mem_read~q\ & \s_readdata[1]~input_o\)))) # (!\m_writedata[1]~input_o\ & (((\current.mem_read~q\ & \s_readdata[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[1]~input_o\,
	datab => \Selector100~0_combout\,
	datac => \current.mem_read~q\,
	datad => \s_readdata[1]~input_o\,
	combout => \Selector99~0_combout\);

-- Location: FF_X33_Y12_N23
\cache_gen:0:xcache|linedata_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector99~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(20));

-- Location: FF_X37_Y12_N21
\cache_gen:0:xcache|linedata_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector106~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(0));

-- Location: LCCOMB_X33_Y10_N18
\cache_gen:0:xcache|linedata_rtl_0_bypass[17]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata_rtl_0_bypass[17]~feeder_combout\ = \cache_w_index[0][6]~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cache_w_index[0][6]~combout\,
	combout => \cache_gen:0:xcache|linedata_rtl_0_bypass[17]~feeder_combout\);

-- Location: FF_X33_Y10_N19
\cache_gen:0:xcache|linedata_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cache_gen:0:xcache|linedata_rtl_0_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(17));

-- Location: FF_X33_Y10_N25
\cache_gen:0:xcache|linedata_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_r_addr[0][8]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(18));

-- Location: FF_X36_Y10_N23
\cache_gen:0:xcache|linedata_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_w_index[0][1]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(7));

-- Location: FF_X36_Y10_N25
\cache_gen:0:xcache|linedata_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_r_addr[0][2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(6));

-- Location: FF_X36_Y10_N17
\cache_gen:0:xcache|linedata_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_r_addr[0][3]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(8));

-- Location: LCCOMB_X36_Y10_N28
\cache_gen:0:xcache|linedata_rtl_0_bypass[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata_rtl_0_bypass[5]~feeder_combout\ = \cache_w_index[0][0]~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cache_w_index[0][0]~combout\,
	combout => \cache_gen:0:xcache|linedata_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X36_Y10_N29
\cache_gen:0:xcache|linedata_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cache_gen:0:xcache|linedata_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(5));

-- Location: LCCOMB_X36_Y10_N16
\cache_gen:0:xcache|linedata~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~43_combout\ = (\cache_gen:0:xcache|linedata_rtl_0_bypass\(7) & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(8) & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(6) $ (!\cache_gen:0:xcache|linedata_rtl_0_bypass\(5))))) # 
-- (!\cache_gen:0:xcache|linedata_rtl_0_bypass\(7) & (!\cache_gen:0:xcache|linedata_rtl_0_bypass\(8) & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(6) $ (!\cache_gen:0:xcache|linedata_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata_rtl_0_bypass\(7),
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(6),
	datac => \cache_gen:0:xcache|linedata_rtl_0_bypass\(8),
	datad => \cache_gen:0:xcache|linedata_rtl_0_bypass\(5),
	combout => \cache_gen:0:xcache|linedata~43_combout\);

-- Location: LCCOMB_X33_Y10_N10
\cache_gen:0:xcache|linedata_rtl_0_bypass[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata_rtl_0_bypass[14]~feeder_combout\ = \cache_r_addr[0][6]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_r_addr[0][6]~4_combout\,
	combout => \cache_gen:0:xcache|linedata_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X33_Y10_N11
\cache_gen:0:xcache|linedata_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cache_gen:0:xcache|linedata_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(14));

-- Location: FF_X34_Y10_N15
\cache_gen:0:xcache|linedata_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_w_index[0][5]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(15));

-- Location: FF_X33_Y10_N5
\cache_gen:0:xcache|linedata_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_r_addr[0][7]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(16));

-- Location: FF_X34_Y10_N5
\cache_gen:0:xcache|linedata_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_w_index[0][4]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(13));

-- Location: LCCOMB_X33_Y10_N4
\cache_gen:0:xcache|linedata~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~45_combout\ = (\cache_gen:0:xcache|linedata_rtl_0_bypass\(14) & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(13) & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(15) $ (!\cache_gen:0:xcache|linedata_rtl_0_bypass\(16))))) # 
-- (!\cache_gen:0:xcache|linedata_rtl_0_bypass\(14) & (!\cache_gen:0:xcache|linedata_rtl_0_bypass\(13) & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(15) $ (!\cache_gen:0:xcache|linedata_rtl_0_bypass\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata_rtl_0_bypass\(14),
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(15),
	datac => \cache_gen:0:xcache|linedata_rtl_0_bypass\(16),
	datad => \cache_gen:0:xcache|linedata_rtl_0_bypass\(13),
	combout => \cache_gen:0:xcache|linedata~45_combout\);

-- Location: FF_X36_Y13_N23
\cache_gen:0:xcache|linedata_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector103~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(3));

-- Location: FF_X36_Y13_N1
\cache_gen:0:xcache|linedata_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector104~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(1));

-- Location: FF_X36_Y13_N25
\cache_gen:0:xcache|linedata_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_r_offset[0][0]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(2));

-- Location: FF_X37_Y12_N11
\cache_gen:0:xcache|linedata_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_r_offset[0][1]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(4));

-- Location: LCCOMB_X36_Y13_N24
\cache_gen:0:xcache|linedata~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~42_combout\ = (\cache_gen:0:xcache|linedata_rtl_0_bypass\(3) & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(4) & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(1) $ (!\cache_gen:0:xcache|linedata_rtl_0_bypass\(2))))) # 
-- (!\cache_gen:0:xcache|linedata_rtl_0_bypass\(3) & (!\cache_gen:0:xcache|linedata_rtl_0_bypass\(4) & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(1) $ (!\cache_gen:0:xcache|linedata_rtl_0_bypass\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata_rtl_0_bypass\(3),
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(1),
	datac => \cache_gen:0:xcache|linedata_rtl_0_bypass\(2),
	datad => \cache_gen:0:xcache|linedata_rtl_0_bypass\(4),
	combout => \cache_gen:0:xcache|linedata~42_combout\);

-- Location: FF_X37_Y10_N21
\cache_gen:0:xcache|linedata_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_w_index[0][2]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(9));

-- Location: FF_X38_Y10_N13
\cache_gen:0:xcache|linedata_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_r_addr[0][4]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(10));

-- Location: FF_X37_Y10_N31
\cache_gen:0:xcache|linedata_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_r_addr[0][5]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(12));

-- Location: FF_X37_Y10_N1
\cache_gen:0:xcache|linedata_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cache_w_index[0][3]~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(11));

-- Location: LCCOMB_X37_Y10_N30
\cache_gen:0:xcache|linedata~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~44_combout\ = (\cache_gen:0:xcache|linedata_rtl_0_bypass\(9) & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(10) & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(12) $ (!\cache_gen:0:xcache|linedata_rtl_0_bypass\(11))))) # 
-- (!\cache_gen:0:xcache|linedata_rtl_0_bypass\(9) & (!\cache_gen:0:xcache|linedata_rtl_0_bypass\(10) & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(12) $ (!\cache_gen:0:xcache|linedata_rtl_0_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata_rtl_0_bypass\(9),
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(10),
	datac => \cache_gen:0:xcache|linedata_rtl_0_bypass\(12),
	datad => \cache_gen:0:xcache|linedata_rtl_0_bypass\(11),
	combout => \cache_gen:0:xcache|linedata~44_combout\);

-- Location: LCCOMB_X33_Y10_N20
\cache_gen:0:xcache|linedata~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~46_combout\ = (\cache_gen:0:xcache|linedata~43_combout\ & (\cache_gen:0:xcache|linedata~45_combout\ & (\cache_gen:0:xcache|linedata~42_combout\ & \cache_gen:0:xcache|linedata~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~43_combout\,
	datab => \cache_gen:0:xcache|linedata~45_combout\,
	datac => \cache_gen:0:xcache|linedata~42_combout\,
	datad => \cache_gen:0:xcache|linedata~44_combout\,
	combout => \cache_gen:0:xcache|linedata~46_combout\);

-- Location: LCCOMB_X33_Y10_N24
\cache_gen:0:xcache|linedata~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~47_combout\ = (\cache_gen:0:xcache|linedata_rtl_0_bypass\(0) & (\cache_gen:0:xcache|linedata~46_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(17) $ (!\cache_gen:0:xcache|linedata_rtl_0_bypass\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata_rtl_0_bypass\(0),
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(17),
	datac => \cache_gen:0:xcache|linedata_rtl_0_bypass\(18),
	datad => \cache_gen:0:xcache|linedata~46_combout\,
	combout => \cache_gen:0:xcache|linedata~47_combout\);

-- Location: FF_X36_Y14_N25
\cache_gen:0:xcache|linedata_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector97~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(22));

-- Location: FF_X33_Y13_N1
\cache_gen:0:xcache|linedata_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector96~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(23));

-- Location: FF_X33_Y13_N13
\cache_gen:0:xcache|linedata_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector95~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(24));

-- Location: FF_X34_Y14_N1
\cache_gen:0:xcache|linedata_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector94~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(25));

-- Location: FF_X33_Y14_N23
\cache_gen:0:xcache|linedata_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(26));

-- Location: FF_X32_Y13_N5
\cache_gen:0:xcache|linedata_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector92~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(27));

-- Location: FF_X32_Y13_N25
\cache_gen:0:xcache|linedata_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector91~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(28));

-- Location: FF_X34_Y14_N15
\cache_gen:0:xcache|linedata_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector89~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(30));

-- Location: FF_X34_Y13_N11
\cache_gen:0:xcache|linedata_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector88~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(31));

-- Location: FF_X34_Y13_N31
\cache_gen:0:xcache|linedata_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector87~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(32));

-- Location: FF_X32_Y14_N7
\cache_gen:0:xcache|linedata_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector85~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(34));

-- Location: FF_X36_Y14_N23
\cache_gen:0:xcache|linedata_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector84~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(35));

-- Location: M9K_X35_Y14_N0
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_set:\cache_gen:0:xcache|altsyncram:linedata_rtl_0|altsyncram_ujc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Selector106~5_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Selector106~5_combout\,
	portadatain => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X37_Y14_N29
\cache_gen:0:xcache|linedata_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector83~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(36));

-- Location: LCCOMB_X37_Y14_N22
\cache_gen:0:xcache|linedata~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~65_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0_bypass\(36)))) # (!\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a17\,
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(36),
	datac => \cache_gen:0:xcache|linedata~47_combout\,
	combout => \cache_gen:0:xcache|linedata~65_combout\);

-- Location: LCCOMB_X37_Y14_N6
\Selector83~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector83~0_combout\ = (\current.mem_read~q\ & ((\s_readdata[17]~input_o\) # ((\m_writedata[17]~input_o\ & \Selector100~0_combout\)))) # (!\current.mem_read~q\ & (((\m_writedata[17]~input_o\ & \Selector100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \s_readdata[17]~input_o\,
	datac => \m_writedata[17]~input_o\,
	datad => \Selector100~0_combout\,
	combout => \Selector83~0_combout\);

-- Location: LCCOMB_X37_Y14_N28
\Selector83~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector83~1_combout\ = (\Selector83~0_combout\) # ((\Selector27~1_combout\ & \cache_gen:0:xcache|linedata~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector27~1_combout\,
	datac => \cache_gen:0:xcache|linedata~65_combout\,
	datad => \Selector83~0_combout\,
	combout => \Selector83~1_combout\);

-- Location: LCCOMB_X36_Y14_N4
\cache_gen:0:xcache|linedata~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~64_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(35))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata_rtl_0_bypass\(35),
	datac => \cache_gen:0:xcache|linedata~47_combout\,
	datad => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a16\,
	combout => \cache_gen:0:xcache|linedata~64_combout\);

-- Location: LCCOMB_X36_Y14_N18
\Selector84~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = (\m_writedata[16]~input_o\ & ((\Selector100~0_combout\) # ((\s_readdata[16]~input_o\ & \current.mem_read~q\)))) # (!\m_writedata[16]~input_o\ & (\s_readdata[16]~input_o\ & (\current.mem_read~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[16]~input_o\,
	datab => \s_readdata[16]~input_o\,
	datac => \current.mem_read~q\,
	datad => \Selector100~0_combout\,
	combout => \Selector84~0_combout\);

-- Location: LCCOMB_X36_Y14_N22
\Selector84~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector84~1_combout\ = (\Selector84~0_combout\) # ((\Selector27~1_combout\ & \cache_gen:0:xcache|linedata~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~1_combout\,
	datab => \cache_gen:0:xcache|linedata~64_combout\,
	datad => \Selector84~0_combout\,
	combout => \Selector84~1_combout\);

-- Location: LCCOMB_X32_Y14_N8
\cache_gen:0:xcache|linedata~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~63_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(34))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata_rtl_0_bypass\(34),
	datab => \cache_gen:0:xcache|linedata~47_combout\,
	datad => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a15\,
	combout => \cache_gen:0:xcache|linedata~63_combout\);

-- Location: LCCOMB_X32_Y14_N10
\Selector85~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = (\current.mem_read~q\ & ((\s_readdata[15]~input_o\) # ((\Selector100~0_combout\ & \m_writedata[15]~input_o\)))) # (!\current.mem_read~q\ & (((\Selector100~0_combout\ & \m_writedata[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \s_readdata[15]~input_o\,
	datac => \Selector100~0_combout\,
	datad => \m_writedata[15]~input_o\,
	combout => \Selector85~0_combout\);

-- Location: LCCOMB_X32_Y14_N6
\Selector85~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector85~1_combout\ = (\Selector85~0_combout\) # ((\cache_gen:0:xcache|linedata~63_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata~63_combout\,
	datac => \Selector27~1_combout\,
	datad => \Selector85~0_combout\,
	combout => \Selector85~1_combout\);

-- Location: FF_X32_Y14_N17
\cache_gen:0:xcache|linedata_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector86~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(33));

-- Location: LCCOMB_X32_Y14_N26
\cache_gen:0:xcache|linedata~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~62_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0_bypass\(33)))) # (!\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata~47_combout\,
	datac => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a14\,
	datad => \cache_gen:0:xcache|linedata_rtl_0_bypass\(33),
	combout => \cache_gen:0:xcache|linedata~62_combout\);

-- Location: LCCOMB_X32_Y14_N18
\Selector86~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = (\s_readdata[14]~input_o\ & ((\current.mem_read~q\) # ((\m_writedata[14]~input_o\ & \Selector100~0_combout\)))) # (!\s_readdata[14]~input_o\ & (\m_writedata[14]~input_o\ & (\Selector100~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[14]~input_o\,
	datab => \m_writedata[14]~input_o\,
	datac => \Selector100~0_combout\,
	datad => \current.mem_read~q\,
	combout => \Selector86~0_combout\);

-- Location: LCCOMB_X32_Y14_N16
\Selector86~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector86~1_combout\ = (\Selector86~0_combout\) # ((\cache_gen:0:xcache|linedata~62_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~62_combout\,
	datac => \Selector27~1_combout\,
	datad => \Selector86~0_combout\,
	combout => \Selector86~1_combout\);

-- Location: LCCOMB_X34_Y13_N4
\cache_gen:0:xcache|linedata~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~61_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(32))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata_rtl_0_bypass\(32),
	datac => \cache_gen:0:xcache|linedata~47_combout\,
	datad => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a13\,
	combout => \cache_gen:0:xcache|linedata~61_combout\);

-- Location: LCCOMB_X34_Y13_N2
\Selector87~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = (\m_writedata[13]~input_o\ & ((\Selector100~0_combout\) # ((\current.mem_read~q\ & \s_readdata[13]~input_o\)))) # (!\m_writedata[13]~input_o\ & (\current.mem_read~q\ & (\s_readdata[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[13]~input_o\,
	datab => \current.mem_read~q\,
	datac => \s_readdata[13]~input_o\,
	datad => \Selector100~0_combout\,
	combout => \Selector87~0_combout\);

-- Location: LCCOMB_X34_Y13_N30
\Selector87~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector87~1_combout\ = (\Selector87~0_combout\) # ((\cache_gen:0:xcache|linedata~61_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata~61_combout\,
	datac => \Selector27~1_combout\,
	datad => \Selector87~0_combout\,
	combout => \Selector87~1_combout\);

-- Location: LCCOMB_X34_Y13_N8
\cache_gen:0:xcache|linedata~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~60_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(31))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata_rtl_0_bypass\(31),
	datac => \cache_gen:0:xcache|linedata~47_combout\,
	datad => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a12\,
	combout => \cache_gen:0:xcache|linedata~60_combout\);

-- Location: LCCOMB_X34_Y13_N6
\Selector88~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = (\m_writedata[12]~input_o\ & ((\Selector100~0_combout\) # ((\s_readdata[12]~input_o\ & \current.mem_read~q\)))) # (!\m_writedata[12]~input_o\ & (\s_readdata[12]~input_o\ & (\current.mem_read~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[12]~input_o\,
	datab => \s_readdata[12]~input_o\,
	datac => \current.mem_read~q\,
	datad => \Selector100~0_combout\,
	combout => \Selector88~0_combout\);

-- Location: LCCOMB_X34_Y13_N10
\Selector88~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector88~1_combout\ = (\Selector88~0_combout\) # ((\Selector27~1_combout\ & \cache_gen:0:xcache|linedata~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~1_combout\,
	datac => \cache_gen:0:xcache|linedata~60_combout\,
	datad => \Selector88~0_combout\,
	combout => \Selector88~1_combout\);

-- Location: LCCOMB_X34_Y14_N24
\cache_gen:0:xcache|linedata~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~59_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(30))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(30),
	datac => \cache_gen:0:xcache|linedata~47_combout\,
	datad => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a11\,
	combout => \cache_gen:0:xcache|linedata~59_combout\);

-- Location: LCCOMB_X34_Y14_N10
\Selector89~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector89~0_combout\ = (\s_readdata[11]~input_o\ & ((\current.mem_read~q\) # ((\m_writedata[11]~input_o\ & \Selector100~0_combout\)))) # (!\s_readdata[11]~input_o\ & (\m_writedata[11]~input_o\ & ((\Selector100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[11]~input_o\,
	datab => \m_writedata[11]~input_o\,
	datac => \current.mem_read~q\,
	datad => \Selector100~0_combout\,
	combout => \Selector89~0_combout\);

-- Location: LCCOMB_X34_Y14_N14
\Selector89~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector89~1_combout\ = (\Selector89~0_combout\) # ((\cache_gen:0:xcache|linedata~59_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata~59_combout\,
	datac => \Selector27~1_combout\,
	datad => \Selector89~0_combout\,
	combout => \Selector89~1_combout\);

-- Location: FF_X34_Y14_N19
\cache_gen:0:xcache|linedata_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector90~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(29));

-- Location: LCCOMB_X34_Y14_N0
\cache_gen:0:xcache|linedata~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~58_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0_bypass\(29)))) # (!\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a10\,
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(29),
	datad => \cache_gen:0:xcache|linedata~47_combout\,
	combout => \cache_gen:0:xcache|linedata~58_combout\);

-- Location: LCCOMB_X34_Y14_N6
\Selector90~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (\current.mem_read~q\ & ((\s_readdata[10]~input_o\) # ((\m_writedata[10]~input_o\ & \Selector100~0_combout\)))) # (!\current.mem_read~q\ & (((\m_writedata[10]~input_o\ & \Selector100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \s_readdata[10]~input_o\,
	datac => \m_writedata[10]~input_o\,
	datad => \Selector100~0_combout\,
	combout => \Selector90~0_combout\);

-- Location: LCCOMB_X34_Y14_N18
\Selector90~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector90~1_combout\ = (\Selector90~0_combout\) # ((\cache_gen:0:xcache|linedata~58_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata~58_combout\,
	datac => \Selector27~1_combout\,
	datad => \Selector90~0_combout\,
	combout => \Selector90~1_combout\);

-- Location: LCCOMB_X32_Y13_N22
\cache_gen:0:xcache|linedata~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~57_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(28))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(28),
	datac => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a9\,
	datad => \cache_gen:0:xcache|linedata~47_combout\,
	combout => \cache_gen:0:xcache|linedata~57_combout\);

-- Location: LCCOMB_X32_Y13_N6
\Selector91~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector91~0_combout\ = (\s_readdata[9]~input_o\ & ((\current.mem_read~q\) # ((\m_writedata[9]~input_o\ & \Selector100~0_combout\)))) # (!\s_readdata[9]~input_o\ & (\m_writedata[9]~input_o\ & ((\Selector100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[9]~input_o\,
	datab => \m_writedata[9]~input_o\,
	datac => \current.mem_read~q\,
	datad => \Selector100~0_combout\,
	combout => \Selector91~0_combout\);

-- Location: LCCOMB_X32_Y13_N24
\Selector91~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector91~1_combout\ = (\Selector91~0_combout\) # ((\cache_gen:0:xcache|linedata~57_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~57_combout\,
	datac => \Selector27~1_combout\,
	datad => \Selector91~0_combout\,
	combout => \Selector91~1_combout\);

-- Location: LCCOMB_X32_Y13_N14
\cache_gen:0:xcache|linedata~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~56_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(27))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(27),
	datac => \cache_gen:0:xcache|linedata~47_combout\,
	datad => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a8\,
	combout => \cache_gen:0:xcache|linedata~56_combout\);

-- Location: LCCOMB_X32_Y13_N2
\Selector92~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = (\m_writedata[8]~input_o\ & ((\Selector100~0_combout\) # ((\s_readdata[8]~input_o\ & \current.mem_read~q\)))) # (!\m_writedata[8]~input_o\ & (\s_readdata[8]~input_o\ & (\current.mem_read~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[8]~input_o\,
	datab => \s_readdata[8]~input_o\,
	datac => \current.mem_read~q\,
	datad => \Selector100~0_combout\,
	combout => \Selector92~0_combout\);

-- Location: LCCOMB_X32_Y13_N4
\Selector92~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector92~1_combout\ = (\Selector92~0_combout\) # ((\cache_gen:0:xcache|linedata~56_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata~56_combout\,
	datac => \Selector27~1_combout\,
	datad => \Selector92~0_combout\,
	combout => \Selector92~1_combout\);

-- Location: LCCOMB_X33_Y14_N28
\cache_gen:0:xcache|linedata~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~55_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(26))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata~47_combout\,
	datac => \cache_gen:0:xcache|linedata_rtl_0_bypass\(26),
	datad => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a7\,
	combout => \cache_gen:0:xcache|linedata~55_combout\);

-- Location: LCCOMB_X33_Y14_N18
\Selector93~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\current.mem_read~q\ & ((\s_readdata[7]~input_o\) # ((\m_writedata[7]~input_o\ & \Selector100~0_combout\)))) # (!\current.mem_read~q\ & (\m_writedata[7]~input_o\ & ((\Selector100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \m_writedata[7]~input_o\,
	datac => \s_readdata[7]~input_o\,
	datad => \Selector100~0_combout\,
	combout => \Selector93~0_combout\);

-- Location: LCCOMB_X33_Y14_N22
\Selector93~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector93~1_combout\ = (\Selector93~0_combout\) # ((\Selector27~1_combout\ & \cache_gen:0:xcache|linedata~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector27~1_combout\,
	datac => \cache_gen:0:xcache|linedata~55_combout\,
	datad => \Selector93~0_combout\,
	combout => \Selector93~1_combout\);

-- Location: LCCOMB_X33_Y14_N24
\cache_gen:0:xcache|linedata~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~54_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(25))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata~47_combout\,
	datac => \cache_gen:0:xcache|linedata_rtl_0_bypass\(25),
	datad => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a6\,
	combout => \cache_gen:0:xcache|linedata~54_combout\);

-- Location: LCCOMB_X34_Y14_N28
\Selector94~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (\m_writedata[6]~input_o\ & ((\Selector100~0_combout\) # ((\current.mem_read~q\ & \s_readdata[6]~input_o\)))) # (!\m_writedata[6]~input_o\ & (\current.mem_read~q\ & (\s_readdata[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[6]~input_o\,
	datab => \current.mem_read~q\,
	datac => \s_readdata[6]~input_o\,
	datad => \Selector100~0_combout\,
	combout => \Selector94~0_combout\);

-- Location: LCCOMB_X34_Y14_N22
\Selector94~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector94~1_combout\ = (\Selector94~0_combout\) # ((\cache_gen:0:xcache|linedata~54_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata~54_combout\,
	datac => \Selector27~1_combout\,
	datad => \Selector94~0_combout\,
	combout => \Selector94~1_combout\);

-- Location: LCCOMB_X33_Y13_N18
\cache_gen:0:xcache|linedata~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~53_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(24))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata_rtl_0_bypass\(24),
	datac => \cache_gen:0:xcache|linedata~47_combout\,
	datad => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a5\,
	combout => \cache_gen:0:xcache|linedata~53_combout\);

-- Location: LCCOMB_X33_Y13_N22
\Selector95~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (\current.mem_read~q\ & ((\s_readdata[5]~input_o\) # ((\m_writedata[5]~input_o\ & \Selector100~0_combout\)))) # (!\current.mem_read~q\ & (\m_writedata[5]~input_o\ & ((\Selector100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \m_writedata[5]~input_o\,
	datac => \s_readdata[5]~input_o\,
	datad => \Selector100~0_combout\,
	combout => \Selector95~0_combout\);

-- Location: LCCOMB_X33_Y13_N12
\Selector95~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector95~1_combout\ = (\Selector95~0_combout\) # ((\cache_gen:0:xcache|linedata~53_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata~53_combout\,
	datac => \Selector95~0_combout\,
	datad => \Selector27~1_combout\,
	combout => \Selector95~1_combout\);

-- Location: LCCOMB_X33_Y13_N2
\cache_gen:0:xcache|linedata~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~52_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(23))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(23),
	datac => \cache_gen:0:xcache|linedata~47_combout\,
	datad => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a4\,
	combout => \cache_gen:0:xcache|linedata~52_combout\);

-- Location: LCCOMB_X33_Y13_N26
\Selector96~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (\current.mem_read~q\ & ((\s_readdata[4]~input_o\) # ((\m_writedata[4]~input_o\ & \Selector100~0_combout\)))) # (!\current.mem_read~q\ & (\m_writedata[4]~input_o\ & ((\Selector100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \m_writedata[4]~input_o\,
	datac => \s_readdata[4]~input_o\,
	datad => \Selector100~0_combout\,
	combout => \Selector96~0_combout\);

-- Location: LCCOMB_X33_Y13_N0
\Selector96~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector96~1_combout\ = (\Selector96~0_combout\) # ((\cache_gen:0:xcache|linedata~52_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata~52_combout\,
	datac => \Selector96~0_combout\,
	datad => \Selector27~1_combout\,
	combout => \Selector96~1_combout\);

-- Location: LCCOMB_X36_Y14_N26
\cache_gen:0:xcache|linedata~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~51_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(22))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(22),
	datac => \cache_gen:0:xcache|linedata~47_combout\,
	datad => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a3\,
	combout => \cache_gen:0:xcache|linedata~51_combout\);

-- Location: LCCOMB_X36_Y14_N16
\Selector97~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = (\current.mem_read~q\ & ((\s_readdata[3]~input_o\) # ((\m_writedata[3]~input_o\ & \Selector100~0_combout\)))) # (!\current.mem_read~q\ & (\m_writedata[3]~input_o\ & ((\Selector100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \m_writedata[3]~input_o\,
	datac => \s_readdata[3]~input_o\,
	datad => \Selector100~0_combout\,
	combout => \Selector97~0_combout\);

-- Location: LCCOMB_X36_Y14_N24
\Selector97~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector97~1_combout\ = (\Selector97~0_combout\) # ((\Selector27~1_combout\ & \cache_gen:0:xcache|linedata~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~1_combout\,
	datac => \cache_gen:0:xcache|linedata~51_combout\,
	datad => \Selector97~0_combout\,
	combout => \Selector97~1_combout\);

-- Location: FF_X36_Y14_N7
\cache_gen:0:xcache|linedata_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector98~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(21));

-- Location: LCCOMB_X36_Y14_N8
\cache_gen:0:xcache|linedata~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~50_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0_bypass\(21)))) # (!\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~47_combout\,
	datac => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a2\,
	datad => \cache_gen:0:xcache|linedata_rtl_0_bypass\(21),
	combout => \cache_gen:0:xcache|linedata~50_combout\);

-- Location: LCCOMB_X36_Y14_N28
\Selector98~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = (\s_readdata[2]~input_o\ & ((\current.mem_read~q\) # ((\m_writedata[2]~input_o\ & \Selector100~0_combout\)))) # (!\s_readdata[2]~input_o\ & (\m_writedata[2]~input_o\ & ((\Selector100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[2]~input_o\,
	datab => \m_writedata[2]~input_o\,
	datac => \current.mem_read~q\,
	datad => \Selector100~0_combout\,
	combout => \Selector98~0_combout\);

-- Location: LCCOMB_X36_Y14_N6
\Selector98~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector98~1_combout\ = (\Selector98~0_combout\) # ((\Selector27~1_combout\ & \cache_gen:0:xcache|linedata~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~1_combout\,
	datab => \cache_gen:0:xcache|linedata~50_combout\,
	datad => \Selector98~0_combout\,
	combout => \Selector98~1_combout\);

-- Location: LCCOMB_X33_Y12_N24
\cache_gen:0:xcache|linedata~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~49_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(20))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata_rtl_0_bypass\(20),
	datac => \cache_gen:0:xcache|linedata~47_combout\,
	datad => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a1\,
	combout => \cache_gen:0:xcache|linedata~49_combout\);

-- Location: LCCOMB_X33_Y12_N22
\Selector99~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector99~1_combout\ = (\Selector99~0_combout\) # ((\Selector27~1_combout\ & \cache_gen:0:xcache|linedata~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector99~0_combout\,
	datab => \Selector27~1_combout\,
	datad => \cache_gen:0:xcache|linedata~49_combout\,
	combout => \Selector99~1_combout\);

-- Location: LCCOMB_X33_Y12_N8
\cache_gen:0:xcache|linedata~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~48_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(19))) # (!\cache_gen:0:xcache|linedata~47_combout\ & 
-- ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata_rtl_0_bypass\(19),
	datab => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \cache_gen:0:xcache|linedata~47_combout\,
	combout => \cache_gen:0:xcache|linedata~48_combout\);

-- Location: FF_X37_Y12_N13
hit_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal3~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hit_reg~q\);

-- Location: FF_X36_Y10_N9
dma_req_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m_address[18]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dma_req_reg~q\);

-- Location: LCCOMB_X37_Y10_N2
\Selector141~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector141~0_combout\ = (\hit_reg~q\ & (\current.idle~q\ & !\dma_req_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hit_reg~q\,
	datab => \current.idle~q\,
	datad => \dma_req_reg~q\,
	combout => \Selector141~0_combout\);

-- Location: LCCOMB_X33_Y12_N6
\Selector141~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector141~1_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~48_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hit_index_reg~q\,
	datab => \cache_gen:1:xcache|linedata~48_combout\,
	datac => \cache_gen:0:xcache|linedata~48_combout\,
	datad => \Selector141~0_combout\,
	combout => \Selector141~1_combout\);

-- Location: LCCOMB_X36_Y10_N20
\Selector140~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector140~0_combout\ = (\current.dma~q\) # ((\dma_req_reg~q\ & \current.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dma_req_reg~q\,
	datab => \current.dma~q\,
	datad => \current.idle~q\,
	combout => \Selector140~0_combout\);

-- Location: LCCOMB_X33_Y12_N20
\Selector141~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector141~2_combout\ = (\Selector141~1_combout\) # ((\Selector140~0_combout\ & \s_readdata[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector141~1_combout\,
	datac => \Selector140~0_combout\,
	datad => \s_readdata[0]~input_o\,
	combout => \Selector141~2_combout\);

-- Location: LCCOMB_X37_Y13_N20
\Selector140~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector140~1_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~49_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector141~0_combout\,
	datab => \cache_gen:1:xcache|linedata~49_combout\,
	datac => \hit_index_reg~q\,
	datad => \cache_gen:0:xcache|linedata~49_combout\,
	combout => \Selector140~1_combout\);

-- Location: LCCOMB_X37_Y13_N2
\Selector140~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector140~2_combout\ = (\Selector140~1_combout\) # ((\Selector140~0_combout\ & \s_readdata[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector140~0_combout\,
	datab => \s_readdata[1]~input_o\,
	datad => \Selector140~1_combout\,
	combout => \Selector140~2_combout\);

-- Location: LCCOMB_X37_Y14_N14
\Selector139~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector139~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & ((\cache_gen:1:xcache|linedata~50_combout\))) # (!\hit_index_reg~q\ & (\cache_gen:0:xcache|linedata~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector141~0_combout\,
	datab => \cache_gen:0:xcache|linedata~50_combout\,
	datac => \hit_index_reg~q\,
	datad => \cache_gen:1:xcache|linedata~50_combout\,
	combout => \Selector139~0_combout\);

-- Location: LCCOMB_X36_Y14_N30
\Selector139~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector139~1_combout\ = (\Selector139~0_combout\) # ((\Selector140~0_combout\ & \s_readdata[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector139~0_combout\,
	datac => \Selector140~0_combout\,
	datad => \s_readdata[2]~input_o\,
	combout => \Selector139~1_combout\);

-- Location: LCCOMB_X37_Y14_N4
\Selector138~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector138~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~51_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector141~0_combout\,
	datab => \cache_gen:1:xcache|linedata~51_combout\,
	datac => \cache_gen:0:xcache|linedata~51_combout\,
	datad => \hit_index_reg~q\,
	combout => \Selector138~0_combout\);

-- Location: LCCOMB_X37_Y13_N26
\Selector138~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector138~1_combout\ = (\Selector138~0_combout\) # ((\s_readdata[3]~input_o\ & \Selector140~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_readdata[3]~input_o\,
	datac => \Selector140~0_combout\,
	datad => \Selector138~0_combout\,
	combout => \Selector138~1_combout\);

-- Location: LCCOMB_X33_Y13_N28
\Selector137~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector137~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~52_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector141~0_combout\,
	datab => \cache_gen:1:xcache|linedata~52_combout\,
	datac => \hit_index_reg~q\,
	datad => \cache_gen:0:xcache|linedata~52_combout\,
	combout => \Selector137~0_combout\);

-- Location: LCCOMB_X33_Y13_N14
\Selector137~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector137~1_combout\ = (\Selector137~0_combout\) # ((\s_readdata[4]~input_o\ & \Selector140~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[4]~input_o\,
	datab => \Selector137~0_combout\,
	datac => \Selector140~0_combout\,
	combout => \Selector137~1_combout\);

-- Location: LCCOMB_X31_Y14_N24
\Selector136~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector136~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & ((\cache_gen:1:xcache|linedata~53_combout\))) # (!\hit_index_reg~q\ & (\cache_gen:0:xcache|linedata~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hit_index_reg~q\,
	datab => \cache_gen:0:xcache|linedata~53_combout\,
	datac => \cache_gen:1:xcache|linedata~53_combout\,
	datad => \Selector141~0_combout\,
	combout => \Selector136~0_combout\);

-- Location: LCCOMB_X31_Y14_N2
\Selector136~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector136~1_combout\ = (\Selector136~0_combout\) # ((\Selector140~0_combout\ & \s_readdata[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector136~0_combout\,
	datac => \Selector140~0_combout\,
	datad => \s_readdata[5]~input_o\,
	combout => \Selector136~1_combout\);

-- Location: LCCOMB_X33_Y14_N14
\Selector135~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector135~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & ((\cache_gen:1:xcache|linedata~54_combout\))) # (!\hit_index_reg~q\ & (\cache_gen:0:xcache|linedata~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector141~0_combout\,
	datab => \cache_gen:0:xcache|linedata~54_combout\,
	datac => \hit_index_reg~q\,
	datad => \cache_gen:1:xcache|linedata~54_combout\,
	combout => \Selector135~0_combout\);

-- Location: LCCOMB_X33_Y14_N16
\Selector135~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector135~1_combout\ = (\Selector135~0_combout\) # ((\s_readdata[6]~input_o\ & \Selector140~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_readdata[6]~input_o\,
	datac => \Selector135~0_combout\,
	datad => \Selector140~0_combout\,
	combout => \Selector135~1_combout\);

-- Location: LCCOMB_X31_Y14_N0
\Selector134~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector134~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & ((\cache_gen:1:xcache|linedata~55_combout\))) # (!\hit_index_reg~q\ & (\cache_gen:0:xcache|linedata~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~55_combout\,
	datab => \Selector141~0_combout\,
	datac => \cache_gen:1:xcache|linedata~55_combout\,
	datad => \hit_index_reg~q\,
	combout => \Selector134~0_combout\);

-- Location: LCCOMB_X31_Y14_N26
\Selector134~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector134~1_combout\ = (\Selector134~0_combout\) # ((\s_readdata[7]~input_o\ & \Selector140~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[7]~input_o\,
	datab => \Selector134~0_combout\,
	datac => \Selector140~0_combout\,
	combout => \Selector134~1_combout\);

-- Location: LCCOMB_X32_Y13_N12
\Selector133~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector133~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~56_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hit_index_reg~q\,
	datab => \cache_gen:1:xcache|linedata~56_combout\,
	datac => \cache_gen:0:xcache|linedata~56_combout\,
	datad => \Selector141~0_combout\,
	combout => \Selector133~0_combout\);

-- Location: LCCOMB_X32_Y13_N26
\Selector133~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector133~1_combout\ = (\Selector133~0_combout\) # ((\Selector140~0_combout\ & \s_readdata[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector133~0_combout\,
	datab => \Selector140~0_combout\,
	datad => \s_readdata[8]~input_o\,
	combout => \Selector133~1_combout\);

-- Location: LCCOMB_X31_Y14_N12
\Selector132~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector132~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~57_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~57_combout\,
	datab => \cache_gen:0:xcache|linedata~57_combout\,
	datac => \hit_index_reg~q\,
	datad => \Selector141~0_combout\,
	combout => \Selector132~0_combout\);

-- Location: LCCOMB_X31_Y14_N10
\Selector132~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector132~1_combout\ = (\Selector132~0_combout\) # ((\Selector140~0_combout\ & \s_readdata[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector132~0_combout\,
	datac => \Selector140~0_combout\,
	datad => \s_readdata[9]~input_o\,
	combout => \Selector132~1_combout\);

-- Location: LCCOMB_X33_Y14_N26
\Selector131~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector131~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & ((\cache_gen:1:xcache|linedata~58_combout\))) # (!\hit_index_reg~q\ & (\cache_gen:0:xcache|linedata~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector141~0_combout\,
	datab => \cache_gen:0:xcache|linedata~58_combout\,
	datac => \hit_index_reg~q\,
	datad => \cache_gen:1:xcache|linedata~58_combout\,
	combout => \Selector131~0_combout\);

-- Location: LCCOMB_X34_Y14_N8
\Selector131~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector131~1_combout\ = (\Selector131~0_combout\) # ((\Selector140~0_combout\ & \s_readdata[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector140~0_combout\,
	datac => \Selector131~0_combout\,
	datad => \s_readdata[10]~input_o\,
	combout => \Selector131~1_combout\);

-- Location: LCCOMB_X38_Y14_N28
\Selector130~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector130~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~59_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~59_combout\,
	datab => \hit_index_reg~q\,
	datac => \cache_gen:0:xcache|linedata~59_combout\,
	datad => \Selector141~0_combout\,
	combout => \Selector130~0_combout\);

-- Location: LCCOMB_X38_Y14_N6
\Selector130~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector130~1_combout\ = (\Selector130~0_combout\) # ((\Selector140~0_combout\ & \s_readdata[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector130~0_combout\,
	datac => \Selector140~0_combout\,
	datad => \s_readdata[11]~input_o\,
	combout => \Selector130~1_combout\);

-- Location: LCCOMB_X33_Y13_N16
\Selector129~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector129~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~60_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector141~0_combout\,
	datab => \cache_gen:1:xcache|linedata~60_combout\,
	datac => \cache_gen:0:xcache|linedata~60_combout\,
	datad => \hit_index_reg~q\,
	combout => \Selector129~0_combout\);

-- Location: LCCOMB_X33_Y13_N10
\Selector129~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector129~1_combout\ = (\Selector129~0_combout\) # ((\Selector140~0_combout\ & \s_readdata[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector140~0_combout\,
	datab => \Selector129~0_combout\,
	datac => \s_readdata[12]~input_o\,
	combout => \Selector129~1_combout\);

-- Location: LCCOMB_X38_Y14_N0
\Selector128~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector128~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~61_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~61_combout\,
	datab => \hit_index_reg~q\,
	datac => \cache_gen:0:xcache|linedata~61_combout\,
	datad => \Selector141~0_combout\,
	combout => \Selector128~0_combout\);

-- Location: LCCOMB_X38_Y14_N26
\Selector128~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector128~1_combout\ = (\Selector128~0_combout\) # ((\s_readdata[13]~input_o\ & \Selector140~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[13]~input_o\,
	datab => \Selector128~0_combout\,
	datac => \Selector140~0_combout\,
	combout => \Selector128~1_combout\);

-- Location: LCCOMB_X31_Y14_N4
\Selector127~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector127~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~62_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hit_index_reg~q\,
	datab => \cache_gen:1:xcache|linedata~62_combout\,
	datac => \cache_gen:0:xcache|linedata~62_combout\,
	datad => \Selector141~0_combout\,
	combout => \Selector127~0_combout\);

-- Location: LCCOMB_X32_Y14_N28
\Selector127~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector127~1_combout\ = (\Selector127~0_combout\) # ((\s_readdata[14]~input_o\ & \Selector140~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[14]~input_o\,
	datab => \Selector140~0_combout\,
	datac => \Selector127~0_combout\,
	combout => \Selector127~1_combout\);

-- Location: LCCOMB_X31_Y14_N14
\Selector126~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector126~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~63_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~63_combout\,
	datab => \Selector141~0_combout\,
	datac => \cache_gen:0:xcache|linedata~63_combout\,
	datad => \hit_index_reg~q\,
	combout => \Selector126~0_combout\);

-- Location: LCCOMB_X32_Y14_N2
\Selector126~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector126~1_combout\ = (\Selector126~0_combout\) # ((\s_readdata[15]~input_o\ & \Selector140~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector126~0_combout\,
	datab => \s_readdata[15]~input_o\,
	datad => \Selector140~0_combout\,
	combout => \Selector126~1_combout\);

-- Location: LCCOMB_X37_Y14_N8
\Selector125~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector125~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & ((\cache_gen:1:xcache|linedata~64_combout\))) # (!\hit_index_reg~q\ & (\cache_gen:0:xcache|linedata~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector141~0_combout\,
	datab => \cache_gen:0:xcache|linedata~64_combout\,
	datac => \hit_index_reg~q\,
	datad => \cache_gen:1:xcache|linedata~64_combout\,
	combout => \Selector125~0_combout\);

-- Location: LCCOMB_X37_Y14_N18
\Selector125~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector125~1_combout\ = (\Selector125~0_combout\) # ((\Selector140~0_combout\ & \s_readdata[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector140~0_combout\,
	datab => \s_readdata[16]~input_o\,
	datac => \Selector125~0_combout\,
	combout => \Selector125~1_combout\);

-- Location: LCCOMB_X38_Y14_N24
\Selector124~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector124~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~65_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hit_index_reg~q\,
	datab => \Selector141~0_combout\,
	datac => \cache_gen:1:xcache|linedata~65_combout\,
	datad => \cache_gen:0:xcache|linedata~65_combout\,
	combout => \Selector124~0_combout\);

-- Location: LCCOMB_X38_Y14_N2
\Selector124~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector124~1_combout\ = (\Selector124~0_combout\) # ((\Selector140~0_combout\ & \s_readdata[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector140~0_combout\,
	datac => \s_readdata[17]~input_o\,
	datad => \Selector124~0_combout\,
	combout => \Selector124~1_combout\);

-- Location: IOIBUF_X31_Y0_N15
\s_readdata[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(18),
	o => \s_readdata[18]~input_o\);

-- Location: IOIBUF_X24_Y67_N22
\m_writedata[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(18),
	o => \m_writedata[18]~input_o\);

-- Location: LCCOMB_X32_Y9_N18
\Selector82~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = (\s_readdata[18]~input_o\ & ((\current.mem_read~q\) # ((\m_writedata[18]~input_o\ & \Selector100~0_combout\)))) # (!\s_readdata[18]~input_o\ & (\m_writedata[18]~input_o\ & ((\Selector100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[18]~input_o\,
	datab => \m_writedata[18]~input_o\,
	datac => \current.mem_read~q\,
	datad => \Selector100~0_combout\,
	combout => \Selector82~0_combout\);

-- Location: LCCOMB_X32_Y9_N12
\Selector82~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector82~1_combout\ = (\Selector82~0_combout\) # ((\Selector27~1_combout\ & \cache_gen:0:xcache|linedata~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~1_combout\,
	datac => \cache_gen:0:xcache|linedata~66_combout\,
	datad => \Selector82~0_combout\,
	combout => \Selector82~1_combout\);

-- Location: FF_X32_Y9_N5
\cache_gen:0:xcache|linedata_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector81~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(38));

-- Location: FF_X32_Y11_N13
\cache_gen:0:xcache|linedata_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector80~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(39));

-- Location: FF_X36_Y11_N13
\cache_gen:0:xcache|linedata_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector76~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(43));

-- Location: FF_X36_Y11_N1
\cache_gen:0:xcache|linedata_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector75~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(44));

-- Location: FF_X34_Y11_N21
\cache_gen:0:xcache|linedata_rtl_0_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector74~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(45));

-- Location: FF_X34_Y11_N27
\cache_gen:0:xcache|linedata_rtl_0_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector73~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(46));

-- Location: FF_X36_Y9_N25
\cache_gen:0:xcache|linedata_rtl_0_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector72~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(47));

-- Location: FF_X36_Y9_N17
\cache_gen:0:xcache|linedata_rtl_0_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(48));

-- Location: FF_X34_Y9_N17
\cache_gen:0:xcache|linedata_rtl_0_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector69~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(50));

-- Location: M9K_X35_Y11_N0
\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_set:\cache_gen:0:xcache|altsyncram:linedata_rtl_0|altsyncram_ujc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Selector106~5_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Selector106~5_combout\,
	portadatain => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X34_Y9_N22
\cache_gen:0:xcache|linedata~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~79_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(50))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(50),
	datac => \cache_gen:0:xcache|linedata~47_combout\,
	datad => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a31\,
	combout => \cache_gen:0:xcache|linedata~79_combout\);

-- Location: IOIBUF_X42_Y0_N1
\s_readdata[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(31),
	o => \s_readdata[31]~input_o\);

-- Location: IOIBUF_X42_Y0_N8
\m_writedata[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(31),
	o => \m_writedata[31]~input_o\);

-- Location: LCCOMB_X34_Y9_N6
\Selector69~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (\s_readdata[31]~input_o\ & ((\current.mem_read~q\) # ((\Selector100~0_combout\ & \m_writedata[31]~input_o\)))) # (!\s_readdata[31]~input_o\ & (((\Selector100~0_combout\ & \m_writedata[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[31]~input_o\,
	datab => \current.mem_read~q\,
	datac => \Selector100~0_combout\,
	datad => \m_writedata[31]~input_o\,
	combout => \Selector69~0_combout\);

-- Location: LCCOMB_X34_Y9_N16
\Selector69~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector69~1_combout\ = (\Selector69~0_combout\) # ((\cache_gen:0:xcache|linedata~79_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~79_combout\,
	datac => \Selector27~1_combout\,
	datad => \Selector69~0_combout\,
	combout => \Selector69~1_combout\);

-- Location: FF_X34_Y9_N25
\cache_gen:0:xcache|linedata_rtl_0_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector70~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(49));

-- Location: LCCOMB_X34_Y9_N14
\cache_gen:0:xcache|linedata~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~78_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0_bypass\(49)))) # (!\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~47_combout\,
	datac => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a30\,
	datad => \cache_gen:0:xcache|linedata_rtl_0_bypass\(49),
	combout => \cache_gen:0:xcache|linedata~78_combout\);

-- Location: IOIBUF_X58_Y0_N1
\m_writedata[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(30),
	o => \m_writedata[30]~input_o\);

-- Location: IOIBUF_X33_Y0_N15
\s_readdata[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(30),
	o => \s_readdata[30]~input_o\);

-- Location: LCCOMB_X34_Y9_N2
\Selector70~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (\m_writedata[30]~input_o\ & ((\Selector100~0_combout\) # ((\current.mem_read~q\ & \s_readdata[30]~input_o\)))) # (!\m_writedata[30]~input_o\ & (\current.mem_read~q\ & ((\s_readdata[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[30]~input_o\,
	datab => \current.mem_read~q\,
	datac => \Selector100~0_combout\,
	datad => \s_readdata[30]~input_o\,
	combout => \Selector70~0_combout\);

-- Location: LCCOMB_X34_Y9_N24
\Selector70~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector70~1_combout\ = (\Selector70~0_combout\) # ((\cache_gen:0:xcache|linedata~78_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata~78_combout\,
	datac => \Selector27~1_combout\,
	datad => \Selector70~0_combout\,
	combout => \Selector70~1_combout\);

-- Location: LCCOMB_X36_Y9_N26
\cache_gen:0:xcache|linedata~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~77_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(48))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(48),
	datac => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a29\,
	datad => \cache_gen:0:xcache|linedata~47_combout\,
	combout => \cache_gen:0:xcache|linedata~77_combout\);

-- Location: IOIBUF_X65_Y0_N8
\s_readdata[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(29),
	o => \s_readdata[29]~input_o\);

-- Location: IOIBUF_X44_Y0_N8
\m_writedata[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(29),
	o => \m_writedata[29]~input_o\);

-- Location: LCCOMB_X36_Y9_N2
\Selector71~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\s_readdata[29]~input_o\ & ((\current.mem_read~q\) # ((\m_writedata[29]~input_o\ & \Selector100~0_combout\)))) # (!\s_readdata[29]~input_o\ & (((\m_writedata[29]~input_o\ & \Selector100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[29]~input_o\,
	datab => \current.mem_read~q\,
	datac => \m_writedata[29]~input_o\,
	datad => \Selector100~0_combout\,
	combout => \Selector71~0_combout\);

-- Location: LCCOMB_X36_Y9_N16
\Selector71~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector71~1_combout\ = (\Selector71~0_combout\) # ((\cache_gen:0:xcache|linedata~77_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~77_combout\,
	datab => \Selector27~1_combout\,
	datad => \Selector71~0_combout\,
	combout => \Selector71~1_combout\);

-- Location: LCCOMB_X36_Y9_N30
\cache_gen:0:xcache|linedata~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~76_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(47))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(47),
	datac => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a28\,
	datad => \cache_gen:0:xcache|linedata~47_combout\,
	combout => \cache_gen:0:xcache|linedata~76_combout\);

-- Location: IOIBUF_X44_Y67_N22
\s_readdata[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(28),
	o => \s_readdata[28]~input_o\);

-- Location: IOIBUF_X40_Y0_N8
\m_writedata[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(28),
	o => \m_writedata[28]~input_o\);

-- Location: LCCOMB_X36_Y9_N6
\Selector72~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\s_readdata[28]~input_o\ & ((\current.mem_read~q\) # ((\m_writedata[28]~input_o\ & \Selector100~0_combout\)))) # (!\s_readdata[28]~input_o\ & (\m_writedata[28]~input_o\ & ((\Selector100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[28]~input_o\,
	datab => \m_writedata[28]~input_o\,
	datac => \current.mem_read~q\,
	datad => \Selector100~0_combout\,
	combout => \Selector72~0_combout\);

-- Location: LCCOMB_X36_Y9_N24
\Selector72~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector72~1_combout\ = (\Selector72~0_combout\) # ((\cache_gen:0:xcache|linedata~76_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~76_combout\,
	datab => \Selector27~1_combout\,
	datad => \Selector72~0_combout\,
	combout => \Selector72~1_combout\);

-- Location: LCCOMB_X34_Y11_N12
\cache_gen:0:xcache|linedata~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~75_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(46))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata_rtl_0_bypass\(46),
	datab => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a27\,
	datac => \cache_gen:0:xcache|linedata~47_combout\,
	combout => \cache_gen:0:xcache|linedata~75_combout\);

-- Location: IOIBUF_X26_Y67_N8
\m_writedata[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(27),
	o => \m_writedata[27]~input_o\);

-- Location: IOIBUF_X26_Y67_N1
\s_readdata[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(27),
	o => \s_readdata[27]~input_o\);

-- Location: LCCOMB_X34_Y11_N2
\Selector73~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\m_writedata[27]~input_o\ & ((\Selector100~0_combout\) # ((\s_readdata[27]~input_o\ & \current.mem_read~q\)))) # (!\m_writedata[27]~input_o\ & (\s_readdata[27]~input_o\ & ((\current.mem_read~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[27]~input_o\,
	datab => \s_readdata[27]~input_o\,
	datac => \Selector100~0_combout\,
	datad => \current.mem_read~q\,
	combout => \Selector73~0_combout\);

-- Location: LCCOMB_X34_Y11_N26
\Selector73~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector73~1_combout\ = (\Selector73~0_combout\) # ((\cache_gen:0:xcache|linedata~75_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~75_combout\,
	datac => \Selector27~1_combout\,
	datad => \Selector73~0_combout\,
	combout => \Selector73~1_combout\);

-- Location: LCCOMB_X34_Y11_N14
\cache_gen:0:xcache|linedata~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~74_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(45))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(45),
	datac => \cache_gen:0:xcache|linedata~47_combout\,
	datad => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a26\,
	combout => \cache_gen:0:xcache|linedata~74_combout\);

-- Location: IOIBUF_X13_Y0_N1
\m_writedata[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(26),
	o => \m_writedata[26]~input_o\);

-- Location: IOIBUF_X42_Y67_N22
\s_readdata[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(26),
	o => \s_readdata[26]~input_o\);

-- Location: LCCOMB_X34_Y11_N6
\Selector74~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\current.mem_read~q\ & ((\s_readdata[26]~input_o\) # ((\m_writedata[26]~input_o\ & \Selector100~0_combout\)))) # (!\current.mem_read~q\ & (\m_writedata[26]~input_o\ & (\Selector100~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \m_writedata[26]~input_o\,
	datac => \Selector100~0_combout\,
	datad => \s_readdata[26]~input_o\,
	combout => \Selector74~0_combout\);

-- Location: LCCOMB_X34_Y11_N20
\Selector74~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector74~1_combout\ = (\Selector74~0_combout\) # ((\Selector27~1_combout\ & \cache_gen:0:xcache|linedata~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~1_combout\,
	datac => \cache_gen:0:xcache|linedata~74_combout\,
	datad => \Selector74~0_combout\,
	combout => \Selector74~1_combout\);

-- Location: LCCOMB_X36_Y11_N26
\cache_gen:0:xcache|linedata~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~73_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(44))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~47_combout\,
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(44),
	datad => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a25\,
	combout => \cache_gen:0:xcache|linedata~73_combout\);

-- Location: IOIBUF_X65_Y0_N1
\s_readdata[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(25),
	o => \s_readdata[25]~input_o\);

-- Location: IOIBUF_X81_Y2_N22
\m_writedata[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(25),
	o => \m_writedata[25]~input_o\);

-- Location: LCCOMB_X36_Y11_N18
\Selector75~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\s_readdata[25]~input_o\ & ((\current.mem_read~q\) # ((\m_writedata[25]~input_o\ & \Selector100~0_combout\)))) # (!\s_readdata[25]~input_o\ & (\m_writedata[25]~input_o\ & ((\Selector100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[25]~input_o\,
	datab => \m_writedata[25]~input_o\,
	datac => \current.mem_read~q\,
	datad => \Selector100~0_combout\,
	combout => \Selector75~0_combout\);

-- Location: LCCOMB_X36_Y11_N0
\Selector75~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector75~1_combout\ = (\Selector75~0_combout\) # ((\cache_gen:0:xcache|linedata~73_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~73_combout\,
	datab => \Selector27~1_combout\,
	datad => \Selector75~0_combout\,
	combout => \Selector75~1_combout\);

-- Location: LCCOMB_X36_Y11_N14
\cache_gen:0:xcache|linedata~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~72_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(43))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata_rtl_0_bypass\(43),
	datab => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a24\,
	datad => \cache_gen:0:xcache|linedata~47_combout\,
	combout => \cache_gen:0:xcache|linedata~72_combout\);

-- Location: IOIBUF_X81_Y3_N1
\s_readdata[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(24),
	o => \s_readdata[24]~input_o\);

-- Location: IOIBUF_X63_Y0_N8
\m_writedata[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(24),
	o => \m_writedata[24]~input_o\);

-- Location: LCCOMB_X36_Y11_N6
\Selector76~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\s_readdata[24]~input_o\ & ((\current.mem_read~q\) # ((\m_writedata[24]~input_o\ & \Selector100~0_combout\)))) # (!\s_readdata[24]~input_o\ & (((\m_writedata[24]~input_o\ & \Selector100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[24]~input_o\,
	datab => \current.mem_read~q\,
	datac => \m_writedata[24]~input_o\,
	datad => \Selector100~0_combout\,
	combout => \Selector76~0_combout\);

-- Location: LCCOMB_X36_Y11_N12
\Selector76~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector76~1_combout\ = (\Selector76~0_combout\) # ((\Selector27~1_combout\ & \cache_gen:0:xcache|linedata~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector27~1_combout\,
	datac => \cache_gen:0:xcache|linedata~72_combout\,
	datad => \Selector76~0_combout\,
	combout => \Selector76~1_combout\);

-- Location: FF_X33_Y11_N25
\cache_gen:0:xcache|linedata_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector77~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(42));

-- Location: LCCOMB_X33_Y11_N14
\cache_gen:0:xcache|linedata~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~71_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0_bypass\(42)))) # (!\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata~47_combout\,
	datac => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a23\,
	datad => \cache_gen:0:xcache|linedata_rtl_0_bypass\(42),
	combout => \cache_gen:0:xcache|linedata~71_combout\);

-- Location: IOIBUF_X26_Y0_N15
\s_readdata[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(23),
	o => \s_readdata[23]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\m_writedata[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(23),
	o => \m_writedata[23]~input_o\);

-- Location: LCCOMB_X33_Y11_N6
\Selector77~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\current.mem_read~q\ & ((\s_readdata[23]~input_o\) # ((\m_writedata[23]~input_o\ & \Selector100~0_combout\)))) # (!\current.mem_read~q\ & (((\m_writedata[23]~input_o\ & \Selector100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \s_readdata[23]~input_o\,
	datac => \m_writedata[23]~input_o\,
	datad => \Selector100~0_combout\,
	combout => \Selector77~0_combout\);

-- Location: LCCOMB_X33_Y11_N24
\Selector77~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector77~1_combout\ = (\Selector77~0_combout\) # ((\cache_gen:0:xcache|linedata~71_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:0:xcache|linedata~71_combout\,
	datac => \Selector27~1_combout\,
	datad => \Selector77~0_combout\,
	combout => \Selector77~1_combout\);

-- Location: FF_X33_Y11_N5
\cache_gen:0:xcache|linedata_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector78~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(41));

-- Location: LCCOMB_X33_Y11_N26
\cache_gen:0:xcache|linedata~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~70_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0_bypass\(41)))) # (!\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a22\,
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(41),
	datac => \cache_gen:0:xcache|linedata~47_combout\,
	combout => \cache_gen:0:xcache|linedata~70_combout\);

-- Location: IOIBUF_X33_Y0_N8
\s_readdata[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(22),
	o => \s_readdata[22]~input_o\);

-- Location: IOIBUF_X81_Y11_N22
\m_writedata[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(22),
	o => \m_writedata[22]~input_o\);

-- Location: LCCOMB_X33_Y11_N10
\Selector78~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (\current.mem_read~q\ & ((\s_readdata[22]~input_o\) # ((\m_writedata[22]~input_o\ & \Selector100~0_combout\)))) # (!\current.mem_read~q\ & (((\m_writedata[22]~input_o\ & \Selector100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \s_readdata[22]~input_o\,
	datac => \m_writedata[22]~input_o\,
	datad => \Selector100~0_combout\,
	combout => \Selector78~0_combout\);

-- Location: LCCOMB_X33_Y11_N4
\Selector78~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector78~1_combout\ = (\Selector78~0_combout\) # ((\cache_gen:0:xcache|linedata~70_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~70_combout\,
	datac => \Selector27~1_combout\,
	datad => \Selector78~0_combout\,
	combout => \Selector78~1_combout\);

-- Location: FF_X32_Y11_N21
\cache_gen:0:xcache|linedata_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector79~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(40));

-- Location: LCCOMB_X32_Y11_N10
\cache_gen:0:xcache|linedata~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~69_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0_bypass\(40)))) # (!\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a21\,
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(40),
	datac => \cache_gen:0:xcache|linedata~47_combout\,
	combout => \cache_gen:0:xcache|linedata~69_combout\);

-- Location: IOIBUF_X29_Y0_N1
\m_writedata[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(21),
	o => \m_writedata[21]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\s_readdata[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(21),
	o => \s_readdata[21]~input_o\);

-- Location: LCCOMB_X32_Y11_N2
\Selector79~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (\current.mem_read~q\ & ((\s_readdata[21]~input_o\) # ((\m_writedata[21]~input_o\ & \Selector100~0_combout\)))) # (!\current.mem_read~q\ & (\m_writedata[21]~input_o\ & ((\Selector100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \m_writedata[21]~input_o\,
	datac => \s_readdata[21]~input_o\,
	datad => \Selector100~0_combout\,
	combout => \Selector79~0_combout\);

-- Location: LCCOMB_X32_Y11_N20
\Selector79~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector79~1_combout\ = (\Selector79~0_combout\) # ((\cache_gen:0:xcache|linedata~69_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~69_combout\,
	datac => \Selector27~1_combout\,
	datad => \Selector79~0_combout\,
	combout => \Selector79~1_combout\);

-- Location: LCCOMB_X32_Y11_N22
\cache_gen:0:xcache|linedata~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~68_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(39))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata_rtl_0_bypass\(39),
	datac => \cache_gen:0:xcache|linedata~47_combout\,
	datad => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a20\,
	combout => \cache_gen:0:xcache|linedata~68_combout\);

-- Location: IOIBUF_X56_Y0_N1
\m_writedata[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(20),
	o => \m_writedata[20]~input_o\);

-- Location: IOIBUF_X26_Y67_N22
\s_readdata[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(20),
	o => \s_readdata[20]~input_o\);

-- Location: LCCOMB_X32_Y11_N18
\Selector80~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (\current.mem_read~q\ & ((\s_readdata[20]~input_o\) # ((\m_writedata[20]~input_o\ & \Selector100~0_combout\)))) # (!\current.mem_read~q\ & (\m_writedata[20]~input_o\ & ((\Selector100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \m_writedata[20]~input_o\,
	datac => \s_readdata[20]~input_o\,
	datad => \Selector100~0_combout\,
	combout => \Selector80~0_combout\);

-- Location: LCCOMB_X32_Y11_N12
\Selector80~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector80~1_combout\ = (\Selector80~0_combout\) # ((\cache_gen:0:xcache|linedata~68_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~68_combout\,
	datac => \Selector27~1_combout\,
	datad => \Selector80~0_combout\,
	combout => \Selector80~1_combout\);

-- Location: LCCOMB_X32_Y9_N22
\cache_gen:0:xcache|linedata~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~67_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & (\cache_gen:0:xcache|linedata_rtl_0_bypass\(38))) # (!\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~47_combout\,
	datab => \cache_gen:0:xcache|linedata_rtl_0_bypass\(38),
	datac => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a19\,
	combout => \cache_gen:0:xcache|linedata~67_combout\);

-- Location: IOIBUF_X22_Y0_N15
\s_readdata[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_readdata(19),
	o => \s_readdata[19]~input_o\);

-- Location: IOIBUF_X15_Y0_N1
\m_writedata[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_writedata(19),
	o => \m_writedata[19]~input_o\);

-- Location: LCCOMB_X32_Y9_N10
\Selector81~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (\current.mem_read~q\ & ((\s_readdata[19]~input_o\) # ((\m_writedata[19]~input_o\ & \Selector100~0_combout\)))) # (!\current.mem_read~q\ & (((\m_writedata[19]~input_o\ & \Selector100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \s_readdata[19]~input_o\,
	datac => \m_writedata[19]~input_o\,
	datad => \Selector100~0_combout\,
	combout => \Selector81~0_combout\);

-- Location: LCCOMB_X32_Y9_N4
\Selector81~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector81~1_combout\ = (\Selector81~0_combout\) # ((\cache_gen:0:xcache|linedata~67_combout\ & \Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~67_combout\,
	datac => \Selector27~1_combout\,
	datad => \Selector81~0_combout\,
	combout => \Selector81~1_combout\);

-- Location: FF_X32_Y9_N13
\cache_gen:0:xcache|linedata_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector82~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:0:xcache|linedata_rtl_0_bypass\(37));

-- Location: LCCOMB_X32_Y9_N14
\cache_gen:0:xcache|linedata~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:0:xcache|linedata~66_combout\ = (\cache_gen:0:xcache|linedata~47_combout\ & ((\cache_gen:0:xcache|linedata_rtl_0_bypass\(37)))) # (!\cache_gen:0:xcache|linedata~47_combout\ & 
-- (\cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~47_combout\,
	datac => \cache_gen:0:xcache|linedata_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	datad => \cache_gen:0:xcache|linedata_rtl_0_bypass\(37),
	combout => \cache_gen:0:xcache|linedata~66_combout\);

-- Location: LCCOMB_X32_Y9_N0
\Selector50~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\cache_gen:1:xcache|linedata~66_combout\ & ((\Selector23~0_combout\) # ((\m_writedata[18]~input_o\ & \Selector68~0_combout\)))) # (!\cache_gen:1:xcache|linedata~66_combout\ & (\m_writedata[18]~input_o\ & 
-- ((\Selector68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~66_combout\,
	datab => \m_writedata[18]~input_o\,
	datac => \Selector23~0_combout\,
	datad => \Selector68~0_combout\,
	combout => \Selector50~0_combout\);

-- Location: LCCOMB_X32_Y9_N28
\Selector50~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector50~1_combout\ = (\Selector50~0_combout\) # ((\s_readdata[18]~input_o\ & \current.mem_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[18]~input_o\,
	datac => \current.mem_read~q\,
	datad => \Selector50~0_combout\,
	combout => \Selector50~1_combout\);

-- Location: FF_X32_Y9_N29
\cache_gen:1:xcache|linedata_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector50~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(37));

-- Location: FF_X32_Y9_N21
\cache_gen:1:xcache|linedata_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector49~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(38));

-- Location: FF_X32_Y11_N9
\cache_gen:1:xcache|linedata_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector47~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(40));

-- Location: FF_X33_Y11_N29
\cache_gen:1:xcache|linedata_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector46~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(41));

-- Location: FF_X33_Y11_N9
\cache_gen:1:xcache|linedata_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector45~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(42));

-- Location: FF_X36_Y11_N23
\cache_gen:1:xcache|linedata_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector44~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(43));

-- Location: FF_X36_Y11_N5
\cache_gen:1:xcache|linedata_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(44));

-- Location: FF_X34_Y11_N31
\cache_gen:1:xcache|linedata_rtl_0_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector41~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(46));

-- Location: FF_X36_Y9_N29
\cache_gen:1:xcache|linedata_rtl_0_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(47));

-- Location: FF_X34_Y9_N1
\cache_gen:1:xcache|linedata_rtl_0_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector38~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(49));

-- Location: M9K_X35_Y9_N0
\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_set:\cache_gen:1:xcache|altsyncram:linedata_rtl_0|altsyncram_ujc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Selector105~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Selector105~1_combout\,
	portadatain => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: FF_X34_Y9_N29
\cache_gen:1:xcache|linedata_rtl_0_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(50));

-- Location: LCCOMB_X34_Y9_N26
\cache_gen:1:xcache|linedata~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~79_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0_bypass\(50)))) # (!\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~47_combout\,
	datab => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a31\,
	datad => \cache_gen:1:xcache|linedata_rtl_0_bypass\(50),
	combout => \cache_gen:1:xcache|linedata~79_combout\);

-- Location: LCCOMB_X34_Y9_N12
\Selector37~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\m_writedata[31]~input_o\ & ((\Selector68~0_combout\) # ((\Selector23~0_combout\ & \cache_gen:1:xcache|linedata~79_combout\)))) # (!\m_writedata[31]~input_o\ & (\Selector23~0_combout\ & 
-- (\cache_gen:1:xcache|linedata~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[31]~input_o\,
	datab => \Selector23~0_combout\,
	datac => \cache_gen:1:xcache|linedata~79_combout\,
	datad => \Selector68~0_combout\,
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X34_Y9_N28
\Selector37~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector37~1_combout\ = (\Selector37~0_combout\) # ((\current.mem_read~q\ & \s_readdata[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current.mem_read~q\,
	datac => \s_readdata[31]~input_o\,
	datad => \Selector37~0_combout\,
	combout => \Selector37~1_combout\);

-- Location: LCCOMB_X34_Y9_N10
\cache_gen:1:xcache|linedata~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~78_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(49))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~47_combout\,
	datab => \cache_gen:1:xcache|linedata_rtl_0_bypass\(49),
	datad => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a30\,
	combout => \cache_gen:1:xcache|linedata~78_combout\);

-- Location: LCCOMB_X34_Y9_N20
\Selector38~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\m_writedata[30]~input_o\ & ((\Selector68~0_combout\) # ((\Selector23~0_combout\ & \cache_gen:1:xcache|linedata~78_combout\)))) # (!\m_writedata[30]~input_o\ & (\Selector23~0_combout\ & 
-- (\cache_gen:1:xcache|linedata~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[30]~input_o\,
	datab => \Selector23~0_combout\,
	datac => \cache_gen:1:xcache|linedata~78_combout\,
	datad => \Selector68~0_combout\,
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X34_Y9_N0
\Selector38~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector38~1_combout\ = (\Selector38~0_combout\) # ((\current.mem_read~q\ & \s_readdata[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current.mem_read~q\,
	datac => \s_readdata[30]~input_o\,
	datad => \Selector38~0_combout\,
	combout => \Selector38~1_combout\);

-- Location: FF_X36_Y9_N21
\cache_gen:1:xcache|linedata_rtl_0_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector39~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(48));

-- Location: LCCOMB_X36_Y9_N10
\cache_gen:1:xcache|linedata~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~77_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0_bypass\(48)))) # (!\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a29\,
	datab => \cache_gen:1:xcache|linedata_rtl_0_bypass\(48),
	datad => \cache_gen:1:xcache|linedata~47_combout\,
	combout => \cache_gen:1:xcache|linedata~77_combout\);

-- Location: LCCOMB_X36_Y9_N12
\Selector39~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\cache_gen:1:xcache|linedata~77_combout\ & ((\Selector23~0_combout\) # ((\m_writedata[29]~input_o\ & \Selector68~0_combout\)))) # (!\cache_gen:1:xcache|linedata~77_combout\ & (\m_writedata[29]~input_o\ & 
-- (\Selector68~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~77_combout\,
	datab => \m_writedata[29]~input_o\,
	datac => \Selector68~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector39~0_combout\);

-- Location: LCCOMB_X36_Y9_N20
\Selector39~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector39~1_combout\ = (\Selector39~0_combout\) # ((\current.mem_read~q\ & \s_readdata[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current.mem_read~q\,
	datac => \s_readdata[29]~input_o\,
	datad => \Selector39~0_combout\,
	combout => \Selector39~1_combout\);

-- Location: LCCOMB_X36_Y9_N22
\cache_gen:1:xcache|linedata~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~76_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(47))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|linedata_rtl_0_bypass\(47),
	datac => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a28\,
	datad => \cache_gen:1:xcache|linedata~47_combout\,
	combout => \cache_gen:1:xcache|linedata~76_combout\);

-- Location: LCCOMB_X36_Y9_N0
\Selector40~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\cache_gen:1:xcache|linedata~76_combout\ & ((\Selector23~0_combout\) # ((\m_writedata[28]~input_o\ & \Selector68~0_combout\)))) # (!\cache_gen:1:xcache|linedata~76_combout\ & (\m_writedata[28]~input_o\ & 
-- (\Selector68~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~76_combout\,
	datab => \m_writedata[28]~input_o\,
	datac => \Selector68~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X36_Y9_N28
\Selector40~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector40~1_combout\ = (\Selector40~0_combout\) # ((\current.mem_read~q\ & \s_readdata[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current.mem_read~q\,
	datac => \s_readdata[28]~input_o\,
	datad => \Selector40~0_combout\,
	combout => \Selector40~1_combout\);

-- Location: LCCOMB_X34_Y11_N16
\cache_gen:1:xcache|linedata~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~75_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(46))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata_rtl_0_bypass\(46),
	datac => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a27\,
	datad => \cache_gen:1:xcache|linedata~47_combout\,
	combout => \cache_gen:1:xcache|linedata~75_combout\);

-- Location: LCCOMB_X34_Y11_N0
\Selector41~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\m_writedata[27]~input_o\ & ((\Selector68~0_combout\) # ((\Selector23~0_combout\ & \cache_gen:1:xcache|linedata~75_combout\)))) # (!\m_writedata[27]~input_o\ & (\Selector23~0_combout\ & 
-- (\cache_gen:1:xcache|linedata~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[27]~input_o\,
	datab => \Selector23~0_combout\,
	datac => \cache_gen:1:xcache|linedata~75_combout\,
	datad => \Selector68~0_combout\,
	combout => \Selector41~0_combout\);

-- Location: LCCOMB_X34_Y11_N30
\Selector41~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector41~1_combout\ = (\Selector41~0_combout\) # ((\current.mem_read~q\ & \s_readdata[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \s_readdata[27]~input_o\,
	datad => \Selector41~0_combout\,
	combout => \Selector41~1_combout\);

-- Location: FF_X34_Y11_N5
\cache_gen:1:xcache|linedata_rtl_0_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector42~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(45));

-- Location: LCCOMB_X34_Y11_N10
\cache_gen:1:xcache|linedata~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~74_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0_bypass\(45)))) # (!\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a26\,
	datac => \cache_gen:1:xcache|linedata_rtl_0_bypass\(45),
	datad => \cache_gen:1:xcache|linedata~47_combout\,
	combout => \cache_gen:1:xcache|linedata~74_combout\);

-- Location: LCCOMB_X34_Y11_N24
\Selector42~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\cache_gen:1:xcache|linedata~74_combout\ & ((\Selector23~0_combout\) # ((\m_writedata[26]~input_o\ & \Selector68~0_combout\)))) # (!\cache_gen:1:xcache|linedata~74_combout\ & (((\m_writedata[26]~input_o\ & 
-- \Selector68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~74_combout\,
	datab => \Selector23~0_combout\,
	datac => \m_writedata[26]~input_o\,
	datad => \Selector68~0_combout\,
	combout => \Selector42~0_combout\);

-- Location: LCCOMB_X34_Y11_N4
\Selector42~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector42~1_combout\ = (\Selector42~0_combout\) # ((\current.mem_read~q\ & \s_readdata[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \s_readdata[26]~input_o\,
	datad => \Selector42~0_combout\,
	combout => \Selector42~1_combout\);

-- Location: LCCOMB_X36_Y11_N30
\cache_gen:1:xcache|linedata~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~73_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(44))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|linedata~47_combout\,
	datac => \cache_gen:1:xcache|linedata_rtl_0_bypass\(44),
	datad => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a25\,
	combout => \cache_gen:1:xcache|linedata~73_combout\);

-- Location: LCCOMB_X36_Y11_N24
\Selector43~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\Selector23~0_combout\ & ((\cache_gen:1:xcache|linedata~73_combout\) # ((\m_writedata[25]~input_o\ & \Selector68~0_combout\)))) # (!\Selector23~0_combout\ & (\m_writedata[25]~input_o\ & ((\Selector68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => \m_writedata[25]~input_o\,
	datac => \cache_gen:1:xcache|linedata~73_combout\,
	datad => \Selector68~0_combout\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X36_Y11_N4
\Selector43~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector43~1_combout\ = (\Selector43~0_combout\) # ((\s_readdata[25]~input_o\ & \current.mem_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[25]~input_o\,
	datab => \current.mem_read~q\,
	datad => \Selector43~0_combout\,
	combout => \Selector43~1_combout\);

-- Location: LCCOMB_X36_Y11_N10
\cache_gen:1:xcache|linedata~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~72_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(43))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata_rtl_0_bypass\(43),
	datab => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a24\,
	datad => \cache_gen:1:xcache|linedata~47_combout\,
	combout => \cache_gen:1:xcache|linedata~72_combout\);

-- Location: LCCOMB_X36_Y11_N28
\Selector44~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\Selector23~0_combout\ & ((\cache_gen:1:xcache|linedata~72_combout\) # ((\m_writedata[24]~input_o\ & \Selector68~0_combout\)))) # (!\Selector23~0_combout\ & (((\m_writedata[24]~input_o\ & \Selector68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => \cache_gen:1:xcache|linedata~72_combout\,
	datac => \m_writedata[24]~input_o\,
	datad => \Selector68~0_combout\,
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X36_Y11_N22
\Selector44~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector44~1_combout\ = (\Selector44~0_combout\) # ((\current.mem_read~q\ & \s_readdata[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current.mem_read~q\,
	datac => \s_readdata[24]~input_o\,
	datad => \Selector44~0_combout\,
	combout => \Selector44~1_combout\);

-- Location: LCCOMB_X33_Y11_N2
\cache_gen:1:xcache|linedata~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~71_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(42))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|linedata_rtl_0_bypass\(42),
	datac => \cache_gen:1:xcache|linedata~47_combout\,
	datad => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a23\,
	combout => \cache_gen:1:xcache|linedata~71_combout\);

-- Location: LCCOMB_X33_Y11_N20
\Selector45~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\m_writedata[23]~input_o\ & ((\Selector68~0_combout\) # ((\cache_gen:1:xcache|linedata~71_combout\ & \Selector23~0_combout\)))) # (!\m_writedata[23]~input_o\ & (\cache_gen:1:xcache|linedata~71_combout\ & 
-- ((\Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[23]~input_o\,
	datab => \cache_gen:1:xcache|linedata~71_combout\,
	datac => \Selector68~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector45~0_combout\);

-- Location: LCCOMB_X33_Y11_N8
\Selector45~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector45~1_combout\ = (\Selector45~0_combout\) # ((\current.mem_read~q\ & \s_readdata[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datac => \s_readdata[23]~input_o\,
	datad => \Selector45~0_combout\,
	combout => \Selector45~1_combout\);

-- Location: LCCOMB_X33_Y11_N18
\cache_gen:1:xcache|linedata~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~70_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(41))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|linedata_rtl_0_bypass\(41),
	datac => \cache_gen:1:xcache|linedata~47_combout\,
	datad => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a22\,
	combout => \cache_gen:1:xcache|linedata~70_combout\);

-- Location: LCCOMB_X33_Y11_N12
\Selector46~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\m_writedata[22]~input_o\ & ((\Selector68~0_combout\) # ((\cache_gen:1:xcache|linedata~70_combout\ & \Selector23~0_combout\)))) # (!\m_writedata[22]~input_o\ & (\cache_gen:1:xcache|linedata~70_combout\ & 
-- ((\Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[22]~input_o\,
	datab => \cache_gen:1:xcache|linedata~70_combout\,
	datac => \Selector68~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector46~0_combout\);

-- Location: LCCOMB_X33_Y11_N28
\Selector46~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector46~1_combout\ = (\Selector46~0_combout\) # ((\current.mem_read~q\ & \s_readdata[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datab => \s_readdata[22]~input_o\,
	datad => \Selector46~0_combout\,
	combout => \Selector46~1_combout\);

-- Location: LCCOMB_X32_Y11_N26
\cache_gen:1:xcache|linedata~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~69_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(40))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~47_combout\,
	datac => \cache_gen:1:xcache|linedata_rtl_0_bypass\(40),
	datad => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a21\,
	combout => \cache_gen:1:xcache|linedata~69_combout\);

-- Location: LCCOMB_X32_Y11_N24
\Selector47~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\cache_gen:1:xcache|linedata~69_combout\ & ((\Selector23~0_combout\) # ((\m_writedata[21]~input_o\ & \Selector68~0_combout\)))) # (!\cache_gen:1:xcache|linedata~69_combout\ & (\m_writedata[21]~input_o\ & 
-- (\Selector68~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~69_combout\,
	datab => \m_writedata[21]~input_o\,
	datac => \Selector68~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector47~0_combout\);

-- Location: LCCOMB_X32_Y11_N8
\Selector47~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector47~1_combout\ = (\Selector47~0_combout\) # ((\current.mem_read~q\ & \s_readdata[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.mem_read~q\,
	datac => \s_readdata[21]~input_o\,
	datad => \Selector47~0_combout\,
	combout => \Selector47~1_combout\);

-- Location: FF_X33_Y9_N5
\cache_gen:1:xcache|linedata_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector48~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_gen:1:xcache|linedata_rtl_0_bypass\(39));

-- Location: LCCOMB_X33_Y9_N2
\cache_gen:1:xcache|linedata~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~68_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0_bypass\(39)))) # (!\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a20\,
	datac => \cache_gen:1:xcache|linedata_rtl_0_bypass\(39),
	datad => \cache_gen:1:xcache|linedata~47_combout\,
	combout => \cache_gen:1:xcache|linedata~68_combout\);

-- Location: LCCOMB_X33_Y9_N0
\Selector48~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\m_writedata[20]~input_o\ & ((\Selector68~0_combout\) # ((\cache_gen:1:xcache|linedata~68_combout\ & \Selector23~0_combout\)))) # (!\m_writedata[20]~input_o\ & (\cache_gen:1:xcache|linedata~68_combout\ & 
-- ((\Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[20]~input_o\,
	datab => \cache_gen:1:xcache|linedata~68_combout\,
	datac => \Selector68~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector48~0_combout\);

-- Location: LCCOMB_X33_Y9_N4
\Selector48~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector48~1_combout\ = (\Selector48~0_combout\) # ((\current.mem_read~q\ & \s_readdata[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current.mem_read~q\,
	datac => \s_readdata[20]~input_o\,
	datad => \Selector48~0_combout\,
	combout => \Selector48~1_combout\);

-- Location: LCCOMB_X32_Y9_N30
\cache_gen:1:xcache|linedata~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~67_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(38))) # (!\cache_gen:1:xcache|linedata~47_combout\ & ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|linedata_rtl_0_bypass\(38),
	datac => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a19\,
	datad => \cache_gen:1:xcache|linedata~47_combout\,
	combout => \cache_gen:1:xcache|linedata~67_combout\);

-- Location: LCCOMB_X32_Y9_N24
\Selector49~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\cache_gen:1:xcache|linedata~67_combout\ & ((\Selector23~0_combout\) # ((\m_writedata[19]~input_o\ & \Selector68~0_combout\)))) # (!\cache_gen:1:xcache|linedata~67_combout\ & (\m_writedata[19]~input_o\ & 
-- ((\Selector68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~67_combout\,
	datab => \m_writedata[19]~input_o\,
	datac => \Selector23~0_combout\,
	datad => \Selector68~0_combout\,
	combout => \Selector49~0_combout\);

-- Location: LCCOMB_X32_Y9_N20
\Selector49~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector49~1_combout\ = (\Selector49~0_combout\) # ((\s_readdata[19]~input_o\ & \current.mem_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_readdata[19]~input_o\,
	datac => \current.mem_read~q\,
	datad => \Selector49~0_combout\,
	combout => \Selector49~1_combout\);

-- Location: LCCOMB_X32_Y9_N26
\cache_gen:1:xcache|linedata~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_gen:1:xcache|linedata~66_combout\ = (\cache_gen:1:xcache|linedata~47_combout\ & (\cache_gen:1:xcache|linedata_rtl_0_bypass\(37))) # (!\cache_gen:1:xcache|linedata~47_combout\ & 
-- ((\cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_gen:1:xcache|linedata_rtl_0_bypass\(37),
	datac => \cache_gen:1:xcache|linedata_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	datad => \cache_gen:1:xcache|linedata~47_combout\,
	combout => \cache_gen:1:xcache|linedata~66_combout\);

-- Location: LCCOMB_X32_Y9_N8
\Selector123~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector123~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & ((\cache_gen:1:xcache|linedata~66_combout\))) # (!\hit_index_reg~q\ & (\cache_gen:0:xcache|linedata~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hit_index_reg~q\,
	datab => \cache_gen:0:xcache|linedata~66_combout\,
	datac => \cache_gen:1:xcache|linedata~66_combout\,
	datad => \Selector141~0_combout\,
	combout => \Selector123~0_combout\);

-- Location: LCCOMB_X32_Y9_N2
\Selector123~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector123~1_combout\ = (\Selector123~0_combout\) # ((\Selector140~0_combout\ & \s_readdata[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector123~0_combout\,
	datac => \Selector140~0_combout\,
	datad => \s_readdata[18]~input_o\,
	combout => \Selector123~1_combout\);

-- Location: LCCOMB_X31_Y11_N0
\Selector122~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector122~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~67_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~67_combout\,
	datab => \hit_index_reg~q\,
	datac => \cache_gen:0:xcache|linedata~67_combout\,
	datad => \Selector141~0_combout\,
	combout => \Selector122~0_combout\);

-- Location: LCCOMB_X31_Y11_N14
\Selector122~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector122~1_combout\ = (\Selector122~0_combout\) # ((\s_readdata[19]~input_o\ & \Selector140~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector122~0_combout\,
	datac => \s_readdata[19]~input_o\,
	datad => \Selector140~0_combout\,
	combout => \Selector122~1_combout\);

-- Location: LCCOMB_X32_Y11_N16
\Selector121~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector121~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & ((\cache_gen:1:xcache|linedata~68_combout\))) # (!\hit_index_reg~q\ & (\cache_gen:0:xcache|linedata~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hit_index_reg~q\,
	datab => \Selector141~0_combout\,
	datac => \cache_gen:0:xcache|linedata~68_combout\,
	datad => \cache_gen:1:xcache|linedata~68_combout\,
	combout => \Selector121~0_combout\);

-- Location: LCCOMB_X32_Y11_N30
\Selector121~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector121~1_combout\ = (\Selector121~0_combout\) # ((\s_readdata[20]~input_o\ & \Selector140~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[20]~input_o\,
	datab => \Selector121~0_combout\,
	datac => \Selector140~0_combout\,
	combout => \Selector121~1_combout\);

-- Location: LCCOMB_X31_Y11_N8
\Selector120~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector120~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~69_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~69_combout\,
	datab => \hit_index_reg~q\,
	datac => \cache_gen:0:xcache|linedata~69_combout\,
	datad => \Selector141~0_combout\,
	combout => \Selector120~0_combout\);

-- Location: LCCOMB_X31_Y11_N18
\Selector120~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector120~1_combout\ = (\Selector120~0_combout\) # ((\s_readdata[21]~input_o\ & \Selector140~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector120~0_combout\,
	datac => \s_readdata[21]~input_o\,
	datad => \Selector140~0_combout\,
	combout => \Selector120~1_combout\);

-- Location: LCCOMB_X33_Y11_N16
\Selector119~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector119~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & ((\cache_gen:1:xcache|linedata~70_combout\))) # (!\hit_index_reg~q\ & (\cache_gen:0:xcache|linedata~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~70_combout\,
	datab => \cache_gen:1:xcache|linedata~70_combout\,
	datac => \hit_index_reg~q\,
	datad => \Selector141~0_combout\,
	combout => \Selector119~0_combout\);

-- Location: LCCOMB_X33_Y11_N22
\Selector119~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector119~1_combout\ = (\Selector119~0_combout\) # ((\Selector140~0_combout\ & \s_readdata[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector119~0_combout\,
	datac => \Selector140~0_combout\,
	datad => \s_readdata[22]~input_o\,
	combout => \Selector119~1_combout\);

-- Location: LCCOMB_X31_Y11_N20
\Selector118~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector118~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~71_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~71_combout\,
	datab => \hit_index_reg~q\,
	datac => \cache_gen:0:xcache|linedata~71_combout\,
	datad => \Selector141~0_combout\,
	combout => \Selector118~0_combout\);

-- Location: LCCOMB_X31_Y11_N22
\Selector118~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector118~1_combout\ = (\Selector118~0_combout\) # ((\s_readdata[23]~input_o\ & \Selector140~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector118~0_combout\,
	datac => \s_readdata[23]~input_o\,
	datad => \Selector140~0_combout\,
	combout => \Selector118~1_combout\);

-- Location: LCCOMB_X37_Y11_N4
\Selector117~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector117~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & ((\cache_gen:1:xcache|linedata~72_combout\))) # (!\hit_index_reg~q\ & (\cache_gen:0:xcache|linedata~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~72_combout\,
	datab => \hit_index_reg~q\,
	datac => \Selector141~0_combout\,
	datad => \cache_gen:1:xcache|linedata~72_combout\,
	combout => \Selector117~0_combout\);

-- Location: LCCOMB_X36_Y11_N20
\Selector117~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector117~1_combout\ = (\Selector117~0_combout\) # ((\s_readdata[24]~input_o\ & \Selector140~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[24]~input_o\,
	datab => \Selector140~0_combout\,
	datad => \Selector117~0_combout\,
	combout => \Selector117~1_combout\);

-- Location: LCCOMB_X38_Y14_N8
\Selector116~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector116~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & ((\cache_gen:1:xcache|linedata~73_combout\))) # (!\hit_index_reg~q\ & (\cache_gen:0:xcache|linedata~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~73_combout\,
	datab => \cache_gen:1:xcache|linedata~73_combout\,
	datac => \hit_index_reg~q\,
	datad => \Selector141~0_combout\,
	combout => \Selector116~0_combout\);

-- Location: LCCOMB_X38_Y14_N10
\Selector116~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector116~1_combout\ = (\Selector116~0_combout\) # ((\Selector140~0_combout\ & \s_readdata[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector116~0_combout\,
	datac => \Selector140~0_combout\,
	datad => \s_readdata[25]~input_o\,
	combout => \Selector116~1_combout\);

-- Location: LCCOMB_X34_Y11_N28
\Selector115~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector115~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & ((\cache_gen:1:xcache|linedata~74_combout\))) # (!\hit_index_reg~q\ & (\cache_gen:0:xcache|linedata~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector141~0_combout\,
	datab => \hit_index_reg~q\,
	datac => \cache_gen:0:xcache|linedata~74_combout\,
	datad => \cache_gen:1:xcache|linedata~74_combout\,
	combout => \Selector115~0_combout\);

-- Location: LCCOMB_X34_Y11_N8
\Selector115~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector115~1_combout\ = (\Selector115~0_combout\) # ((\Selector140~0_combout\ & \s_readdata[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector140~0_combout\,
	datab => \Selector115~0_combout\,
	datad => \s_readdata[26]~input_o\,
	combout => \Selector115~1_combout\);

-- Location: LCCOMB_X31_Y11_N4
\Selector114~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector114~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~75_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~75_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~75_combout\,
	datab => \hit_index_reg~q\,
	datac => \cache_gen:0:xcache|linedata~75_combout\,
	datad => \Selector141~0_combout\,
	combout => \Selector114~0_combout\);

-- Location: LCCOMB_X31_Y11_N26
\Selector114~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector114~1_combout\ = (\Selector114~0_combout\) # ((\s_readdata[27]~input_o\ & \Selector140~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_readdata[27]~input_o\,
	datac => \Selector114~0_combout\,
	datad => \Selector140~0_combout\,
	combout => \Selector114~1_combout\);

-- Location: LCCOMB_X36_Y9_N4
\Selector113~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector113~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~76_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~76_combout\,
	datab => \Selector141~0_combout\,
	datac => \cache_gen:0:xcache|linedata~76_combout\,
	datad => \hit_index_reg~q\,
	combout => \Selector113~0_combout\);

-- Location: LCCOMB_X36_Y9_N14
\Selector113~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector113~1_combout\ = (\Selector113~0_combout\) # ((\Selector140~0_combout\ & \s_readdata[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector140~0_combout\,
	datab => \Selector113~0_combout\,
	datac => \s_readdata[28]~input_o\,
	combout => \Selector113~1_combout\);

-- Location: LCCOMB_X39_Y9_N0
\Selector112~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector112~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~77_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hit_index_reg~q\,
	datab => \cache_gen:1:xcache|linedata~77_combout\,
	datac => \cache_gen:0:xcache|linedata~77_combout\,
	datad => \Selector141~0_combout\,
	combout => \Selector112~0_combout\);

-- Location: LCCOMB_X39_Y9_N2
\Selector112~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector112~1_combout\ = (\Selector112~0_combout\) # ((\s_readdata[29]~input_o\ & \Selector140~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_readdata[29]~input_o\,
	datab => \Selector112~0_combout\,
	datad => \Selector140~0_combout\,
	combout => \Selector112~1_combout\);

-- Location: LCCOMB_X34_Y9_N4
\Selector111~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector111~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~78_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~78_combout\,
	datab => \cache_gen:0:xcache|linedata~78_combout\,
	datac => \Selector141~0_combout\,
	datad => \hit_index_reg~q\,
	combout => \Selector111~0_combout\);

-- Location: LCCOMB_X34_Y9_N18
\Selector111~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector111~1_combout\ = (\Selector111~0_combout\) # ((\s_readdata[30]~input_o\ & \Selector140~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_readdata[30]~input_o\,
	datac => \Selector111~0_combout\,
	datad => \Selector140~0_combout\,
	combout => \Selector111~1_combout\);

-- Location: LCCOMB_X39_Y9_N12
\Selector110~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector110~0_combout\ = (\Selector141~0_combout\ & ((\hit_index_reg~q\ & (\cache_gen:1:xcache|linedata~79_combout\)) # (!\hit_index_reg~q\ & ((\cache_gen:0:xcache|linedata~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hit_index_reg~q\,
	datab => \cache_gen:1:xcache|linedata~79_combout\,
	datac => \cache_gen:0:xcache|linedata~79_combout\,
	datad => \Selector141~0_combout\,
	combout => \Selector110~0_combout\);

-- Location: LCCOMB_X39_Y9_N30
\Selector110~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector110~1_combout\ = (\Selector110~0_combout\) # ((\Selector140~0_combout\ & \s_readdata[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector140~0_combout\,
	datac => \s_readdata[31]~input_o\,
	datad => \Selector110~0_combout\,
	combout => \Selector110~1_combout\);

-- Location: LCCOMB_X33_Y12_N26
\Selector194~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector194~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|linedata~48_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|linedata~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KO_index_reg~q\,
	datab => \cache_gen:1:xcache|linedata~48_combout\,
	datac => \cache_gen:0:xcache|linedata~48_combout\,
	datad => \current.write_back~q\,
	combout => \Selector194~0_combout\);

-- Location: LCCOMB_X37_Y13_N10
\Selector163~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector163~0_combout\ = (\Selector109~0_combout\ & (!\Selector165~0_combout\ & (\s_address~0_combout\ & \Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector109~0_combout\,
	datab => \Selector165~0_combout\,
	datac => \s_address~0_combout\,
	datad => \Selector27~0_combout\,
	combout => \Selector163~0_combout\);

-- Location: LCCOMB_X33_Y12_N28
\Selector194~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector194~1_combout\ = (\Selector194~0_combout\) # ((\Selector163~0_combout\ & \m_writedata[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector194~0_combout\,
	datab => \Selector163~0_combout\,
	datac => \m_writedata[0]~input_o\,
	combout => \Selector194~1_combout\);

-- Location: LCCOMB_X37_Y13_N4
\Selector193~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector193~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & ((\cache_gen:1:xcache|linedata~49_combout\))) # (!\KO_index_reg~q\ & (\cache_gen:0:xcache|linedata~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~49_combout\,
	datab => \cache_gen:1:xcache|linedata~49_combout\,
	datac => \current.write_back~q\,
	datad => \KO_index_reg~q\,
	combout => \Selector193~0_combout\);

-- Location: LCCOMB_X39_Y13_N30
\Selector193~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector193~1_combout\ = (\Selector193~0_combout\) # ((\Selector163~0_combout\ & \m_writedata[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector163~0_combout\,
	datab => \Selector193~0_combout\,
	datad => \m_writedata[1]~input_o\,
	combout => \Selector193~1_combout\);

-- Location: LCCOMB_X37_Y14_N0
\Selector192~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector192~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|linedata~50_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|linedata~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~50_combout\,
	datab => \cache_gen:0:xcache|linedata~50_combout\,
	datac => \KO_index_reg~q\,
	datad => \current.write_back~q\,
	combout => \Selector192~0_combout\);

-- Location: LCCOMB_X39_Y14_N4
\Selector192~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector192~1_combout\ = (\Selector192~0_combout\) # ((\Selector163~0_combout\ & \m_writedata[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector192~0_combout\,
	datac => \Selector163~0_combout\,
	datad => \m_writedata[2]~input_o\,
	combout => \Selector192~1_combout\);

-- Location: LCCOMB_X37_Y14_N10
\Selector191~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector191~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & ((\cache_gen:1:xcache|linedata~51_combout\))) # (!\KO_index_reg~q\ & (\cache_gen:0:xcache|linedata~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~51_combout\,
	datab => \cache_gen:1:xcache|linedata~51_combout\,
	datac => \KO_index_reg~q\,
	datad => \current.write_back~q\,
	combout => \Selector191~0_combout\);

-- Location: LCCOMB_X39_Y14_N2
\Selector191~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector191~1_combout\ = (\Selector191~0_combout\) # ((\Selector163~0_combout\ & \m_writedata[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector191~0_combout\,
	datac => \Selector163~0_combout\,
	datad => \m_writedata[3]~input_o\,
	combout => \Selector191~1_combout\);

-- Location: LCCOMB_X33_Y13_N8
\Selector190~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector190~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|linedata~52_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|linedata~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.write_back~q\,
	datab => \cache_gen:1:xcache|linedata~52_combout\,
	datac => \KO_index_reg~q\,
	datad => \cache_gen:0:xcache|linedata~52_combout\,
	combout => \Selector190~0_combout\);

-- Location: LCCOMB_X33_Y13_N30
\Selector190~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector190~1_combout\ = (\Selector190~0_combout\) # ((\Selector163~0_combout\ & \m_writedata[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector163~0_combout\,
	datac => \Selector190~0_combout\,
	datad => \m_writedata[4]~input_o\,
	combout => \Selector190~1_combout\);

-- Location: LCCOMB_X31_Y14_N16
\Selector189~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector189~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & ((\cache_gen:1:xcache|linedata~53_combout\))) # (!\KO_index_reg~q\ & (\cache_gen:0:xcache|linedata~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KO_index_reg~q\,
	datab => \cache_gen:0:xcache|linedata~53_combout\,
	datac => \cache_gen:1:xcache|linedata~53_combout\,
	datad => \current.write_back~q\,
	combout => \Selector189~0_combout\);

-- Location: LCCOMB_X31_Y14_N18
\Selector189~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector189~1_combout\ = (\Selector189~0_combout\) # ((\m_writedata[5]~input_o\ & \Selector163~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector189~0_combout\,
	datac => \m_writedata[5]~input_o\,
	datad => \Selector163~0_combout\,
	combout => \Selector189~1_combout\);

-- Location: LCCOMB_X33_Y14_N8
\Selector188~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector188~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & ((\cache_gen:1:xcache|linedata~54_combout\))) # (!\KO_index_reg~q\ & (\cache_gen:0:xcache|linedata~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.write_back~q\,
	datab => \cache_gen:0:xcache|linedata~54_combout\,
	datac => \KO_index_reg~q\,
	datad => \cache_gen:1:xcache|linedata~54_combout\,
	combout => \Selector188~0_combout\);

-- Location: LCCOMB_X33_Y14_N10
\Selector188~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector188~1_combout\ = (\Selector188~0_combout\) # ((\Selector163~0_combout\ & \m_writedata[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector163~0_combout\,
	datac => \Selector188~0_combout\,
	datad => \m_writedata[6]~input_o\,
	combout => \Selector188~1_combout\);

-- Location: LCCOMB_X31_Y14_N20
\Selector187~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector187~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & ((\cache_gen:1:xcache|linedata~55_combout\))) # (!\KO_index_reg~q\ & (\cache_gen:0:xcache|linedata~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KO_index_reg~q\,
	datab => \cache_gen:0:xcache|linedata~55_combout\,
	datac => \cache_gen:1:xcache|linedata~55_combout\,
	datad => \current.write_back~q\,
	combout => \Selector187~0_combout\);

-- Location: LCCOMB_X31_Y14_N22
\Selector187~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector187~1_combout\ = (\Selector187~0_combout\) # ((\m_writedata[7]~input_o\ & \Selector163~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector187~0_combout\,
	datac => \m_writedata[7]~input_o\,
	datad => \Selector163~0_combout\,
	combout => \Selector187~1_combout\);

-- Location: LCCOMB_X32_Y13_N8
\Selector186~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector186~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|linedata~56_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|linedata~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KO_index_reg~q\,
	datab => \cache_gen:1:xcache|linedata~56_combout\,
	datac => \cache_gen:0:xcache|linedata~56_combout\,
	datad => \current.write_back~q\,
	combout => \Selector186~0_combout\);

-- Location: LCCOMB_X32_Y13_N30
\Selector186~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector186~1_combout\ = (\Selector186~0_combout\) # ((\Selector163~0_combout\ & \m_writedata[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector163~0_combout\,
	datac => \Selector186~0_combout\,
	datad => \m_writedata[8]~input_o\,
	combout => \Selector186~1_combout\);

-- Location: LCCOMB_X31_Y14_N8
\Selector185~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector185~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & ((\cache_gen:1:xcache|linedata~57_combout\))) # (!\KO_index_reg~q\ & (\cache_gen:0:xcache|linedata~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~57_combout\,
	datab => \current.write_back~q\,
	datac => \KO_index_reg~q\,
	datad => \cache_gen:1:xcache|linedata~57_combout\,
	combout => \Selector185~0_combout\);

-- Location: LCCOMB_X31_Y14_N6
\Selector185~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector185~1_combout\ = (\Selector185~0_combout\) # ((\m_writedata[9]~input_o\ & \Selector163~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[9]~input_o\,
	datac => \Selector185~0_combout\,
	datad => \Selector163~0_combout\,
	combout => \Selector185~1_combout\);

-- Location: LCCOMB_X33_Y14_N20
\Selector184~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector184~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|linedata~58_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|linedata~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~58_combout\,
	datab => \cache_gen:0:xcache|linedata~58_combout\,
	datac => \KO_index_reg~q\,
	datad => \current.write_back~q\,
	combout => \Selector184~0_combout\);

-- Location: LCCOMB_X34_Y14_N2
\Selector184~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector184~1_combout\ = (\Selector184~0_combout\) # ((\m_writedata[10]~input_o\ & \Selector163~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_writedata[10]~input_o\,
	datac => \Selector163~0_combout\,
	datad => \Selector184~0_combout\,
	combout => \Selector184~1_combout\);

-- Location: LCCOMB_X38_Y14_N4
\Selector183~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector183~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|linedata~59_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|linedata~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~59_combout\,
	datab => \KO_index_reg~q\,
	datac => \cache_gen:0:xcache|linedata~59_combout\,
	datad => \current.write_back~q\,
	combout => \Selector183~0_combout\);

-- Location: LCCOMB_X38_Y14_N30
\Selector183~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector183~1_combout\ = (\Selector183~0_combout\) # ((\Selector163~0_combout\ & \m_writedata[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector183~0_combout\,
	datac => \Selector163~0_combout\,
	datad => \m_writedata[11]~input_o\,
	combout => \Selector183~1_combout\);

-- Location: LCCOMB_X33_Y13_N20
\Selector182~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector182~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|linedata~60_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|linedata~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.write_back~q\,
	datab => \cache_gen:1:xcache|linedata~60_combout\,
	datac => \cache_gen:0:xcache|linedata~60_combout\,
	datad => \KO_index_reg~q\,
	combout => \Selector182~0_combout\);

-- Location: LCCOMB_X34_Y13_N18
\Selector182~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector182~1_combout\ = (\Selector182~0_combout\) # ((\Selector163~0_combout\ & \m_writedata[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector163~0_combout\,
	datac => \m_writedata[12]~input_o\,
	datad => \Selector182~0_combout\,
	combout => \Selector182~1_combout\);

-- Location: LCCOMB_X38_Y14_N12
\Selector181~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector181~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & ((\cache_gen:1:xcache|linedata~61_combout\))) # (!\KO_index_reg~q\ & (\cache_gen:0:xcache|linedata~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.write_back~q\,
	datab => \KO_index_reg~q\,
	datac => \cache_gen:0:xcache|linedata~61_combout\,
	datad => \cache_gen:1:xcache|linedata~61_combout\,
	combout => \Selector181~0_combout\);

-- Location: LCCOMB_X38_Y14_N22
\Selector181~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector181~1_combout\ = (\Selector181~0_combout\) # ((\Selector163~0_combout\ & \m_writedata[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector181~0_combout\,
	datac => \Selector163~0_combout\,
	datad => \m_writedata[13]~input_o\,
	combout => \Selector181~1_combout\);

-- Location: LCCOMB_X31_Y14_N28
\Selector180~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector180~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|linedata~62_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|linedata~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KO_index_reg~q\,
	datab => \cache_gen:1:xcache|linedata~62_combout\,
	datac => \cache_gen:0:xcache|linedata~62_combout\,
	datad => \current.write_back~q\,
	combout => \Selector180~0_combout\);

-- Location: LCCOMB_X32_Y14_N24
\Selector180~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector180~1_combout\ = (\Selector180~0_combout\) # ((\m_writedata[14]~input_o\ & \Selector163~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[14]~input_o\,
	datab => \Selector180~0_combout\,
	datac => \Selector163~0_combout\,
	combout => \Selector180~1_combout\);

-- Location: LCCOMB_X31_Y14_N30
\Selector179~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector179~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|linedata~63_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|linedata~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KO_index_reg~q\,
	datab => \cache_gen:1:xcache|linedata~63_combout\,
	datac => \cache_gen:0:xcache|linedata~63_combout\,
	datad => \current.write_back~q\,
	combout => \Selector179~0_combout\);

-- Location: LCCOMB_X32_Y14_N14
\Selector179~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector179~1_combout\ = (\Selector179~0_combout\) # ((\m_writedata[15]~input_o\ & \Selector163~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_writedata[15]~input_o\,
	datac => \Selector163~0_combout\,
	datad => \Selector179~0_combout\,
	combout => \Selector179~1_combout\);

-- Location: LCCOMB_X37_Y14_N24
\Selector178~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector178~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & ((\cache_gen:1:xcache|linedata~64_combout\))) # (!\KO_index_reg~q\ & (\cache_gen:0:xcache|linedata~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.write_back~q\,
	datab => \cache_gen:0:xcache|linedata~64_combout\,
	datac => \KO_index_reg~q\,
	datad => \cache_gen:1:xcache|linedata~64_combout\,
	combout => \Selector178~0_combout\);

-- Location: LCCOMB_X38_Y14_N20
\Selector178~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector178~1_combout\ = (\Selector178~0_combout\) # ((\m_writedata[16]~input_o\ & \Selector163~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[16]~input_o\,
	datac => \Selector163~0_combout\,
	datad => \Selector178~0_combout\,
	combout => \Selector178~1_combout\);

-- Location: LCCOMB_X38_Y14_N18
\Selector177~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector177~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|linedata~65_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|linedata~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.write_back~q\,
	datab => \KO_index_reg~q\,
	datac => \cache_gen:1:xcache|linedata~65_combout\,
	datad => \cache_gen:0:xcache|linedata~65_combout\,
	combout => \Selector177~0_combout\);

-- Location: LCCOMB_X39_Y9_N24
\Selector177~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector177~1_combout\ = (\Selector177~0_combout\) # ((\m_writedata[17]~input_o\ & \Selector163~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector177~0_combout\,
	datac => \m_writedata[17]~input_o\,
	datad => \Selector163~0_combout\,
	combout => \Selector177~1_combout\);

-- Location: LCCOMB_X32_Y9_N16
\Selector176~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector176~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & ((\cache_gen:1:xcache|linedata~66_combout\))) # (!\KO_index_reg~q\ & (\cache_gen:0:xcache|linedata~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.write_back~q\,
	datab => \cache_gen:0:xcache|linedata~66_combout\,
	datac => \cache_gen:1:xcache|linedata~66_combout\,
	datad => \KO_index_reg~q\,
	combout => \Selector176~0_combout\);

-- Location: LCCOMB_X32_Y9_N6
\Selector176~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector176~1_combout\ = (\Selector176~0_combout\) # ((\Selector163~0_combout\ & \m_writedata[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector163~0_combout\,
	datac => \m_writedata[18]~input_o\,
	datad => \Selector176~0_combout\,
	combout => \Selector176~1_combout\);

-- Location: LCCOMB_X31_Y11_N12
\Selector175~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector175~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|linedata~67_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|linedata~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~67_combout\,
	datab => \current.write_back~q\,
	datac => \cache_gen:0:xcache|linedata~67_combout\,
	datad => \KO_index_reg~q\,
	combout => \Selector175~0_combout\);

-- Location: LCCOMB_X31_Y11_N2
\Selector175~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector175~1_combout\ = (\Selector175~0_combout\) # ((\m_writedata[19]~input_o\ & \Selector163~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector175~0_combout\,
	datac => \m_writedata[19]~input_o\,
	datad => \Selector163~0_combout\,
	combout => \Selector175~1_combout\);

-- Location: LCCOMB_X32_Y11_N28
\Selector174~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector174~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & ((\cache_gen:1:xcache|linedata~68_combout\))) # (!\KO_index_reg~q\ & (\cache_gen:0:xcache|linedata~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.write_back~q\,
	datab => \KO_index_reg~q\,
	datac => \cache_gen:0:xcache|linedata~68_combout\,
	datad => \cache_gen:1:xcache|linedata~68_combout\,
	combout => \Selector174~0_combout\);

-- Location: LCCOMB_X32_Y11_N6
\Selector174~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector174~1_combout\ = (\Selector174~0_combout\) # ((\Selector163~0_combout\ & \m_writedata[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector163~0_combout\,
	datab => \Selector174~0_combout\,
	datad => \m_writedata[20]~input_o\,
	combout => \Selector174~1_combout\);

-- Location: LCCOMB_X31_Y11_N24
\Selector173~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector173~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|linedata~69_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|linedata~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~69_combout\,
	datab => \KO_index_reg~q\,
	datac => \cache_gen:0:xcache|linedata~69_combout\,
	datad => \current.write_back~q\,
	combout => \Selector173~0_combout\);

-- Location: LCCOMB_X32_Y11_N4
\Selector173~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector173~1_combout\ = (\Selector173~0_combout\) # ((\m_writedata[21]~input_o\ & \Selector163~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector173~0_combout\,
	datac => \m_writedata[21]~input_o\,
	datad => \Selector163~0_combout\,
	combout => \Selector173~1_combout\);

-- Location: LCCOMB_X33_Y11_N0
\Selector172~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector172~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & ((\cache_gen:1:xcache|linedata~70_combout\))) # (!\KO_index_reg~q\ & (\cache_gen:0:xcache|linedata~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~70_combout\,
	datab => \current.write_back~q\,
	datac => \KO_index_reg~q\,
	datad => \cache_gen:1:xcache|linedata~70_combout\,
	combout => \Selector172~0_combout\);

-- Location: LCCOMB_X33_Y11_N30
\Selector172~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector172~1_combout\ = (\Selector172~0_combout\) # ((\m_writedata[22]~input_o\ & \Selector163~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector172~0_combout\,
	datac => \m_writedata[22]~input_o\,
	datad => \Selector163~0_combout\,
	combout => \Selector172~1_combout\);

-- Location: LCCOMB_X31_Y11_N10
\Selector171~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector171~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & ((\cache_gen:1:xcache|linedata~71_combout\))) # (!\KO_index_reg~q\ & (\cache_gen:0:xcache|linedata~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~71_combout\,
	datab => \KO_index_reg~q\,
	datac => \cache_gen:1:xcache|linedata~71_combout\,
	datad => \current.write_back~q\,
	combout => \Selector171~0_combout\);

-- Location: LCCOMB_X31_Y11_N28
\Selector171~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector171~1_combout\ = (\Selector171~0_combout\) # ((\m_writedata[23]~input_o\ & \Selector163~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector171~0_combout\,
	datac => \m_writedata[23]~input_o\,
	datad => \Selector163~0_combout\,
	combout => \Selector171~1_combout\);

-- Location: LCCOMB_X37_Y11_N20
\Selector170~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector170~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & ((\cache_gen:1:xcache|linedata~72_combout\))) # (!\KO_index_reg~q\ & (\cache_gen:0:xcache|linedata~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.write_back~q\,
	datab => \cache_gen:0:xcache|linedata~72_combout\,
	datac => \KO_index_reg~q\,
	datad => \cache_gen:1:xcache|linedata~72_combout\,
	combout => \Selector170~0_combout\);

-- Location: LCCOMB_X36_Y11_N8
\Selector170~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector170~1_combout\ = (\Selector170~0_combout\) # ((\m_writedata[24]~input_o\ & \Selector163~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[24]~input_o\,
	datab => \Selector163~0_combout\,
	datad => \Selector170~0_combout\,
	combout => \Selector170~1_combout\);

-- Location: LCCOMB_X38_Y14_N16
\Selector169~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector169~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & ((\cache_gen:1:xcache|linedata~73_combout\))) # (!\KO_index_reg~q\ & (\cache_gen:0:xcache|linedata~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~73_combout\,
	datab => \cache_gen:1:xcache|linedata~73_combout\,
	datac => \KO_index_reg~q\,
	datad => \current.write_back~q\,
	combout => \Selector169~0_combout\);

-- Location: LCCOMB_X38_Y14_N14
\Selector169~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector169~1_combout\ = (\Selector169~0_combout\) # ((\Selector163~0_combout\ & \m_writedata[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector169~0_combout\,
	datac => \Selector163~0_combout\,
	datad => \m_writedata[25]~input_o\,
	combout => \Selector169~1_combout\);

-- Location: LCCOMB_X34_Y11_N18
\Selector168~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector168~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|linedata~74_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|linedata~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~74_combout\,
	datab => \cache_gen:0:xcache|linedata~74_combout\,
	datac => \KO_index_reg~q\,
	datad => \current.write_back~q\,
	combout => \Selector168~0_combout\);

-- Location: LCCOMB_X34_Y11_N22
\Selector168~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector168~1_combout\ = (\Selector168~0_combout\) # ((\Selector163~0_combout\ & \m_writedata[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector163~0_combout\,
	datab => \m_writedata[26]~input_o\,
	datad => \Selector168~0_combout\,
	combout => \Selector168~1_combout\);

-- Location: LCCOMB_X31_Y11_N30
\Selector167~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector167~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|linedata~75_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|linedata~75_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~75_combout\,
	datab => \current.write_back~q\,
	datac => \cache_gen:0:xcache|linedata~75_combout\,
	datad => \KO_index_reg~q\,
	combout => \Selector167~0_combout\);

-- Location: LCCOMB_X31_Y11_N16
\Selector167~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector167~1_combout\ = (\Selector167~0_combout\) # ((\m_writedata[27]~input_o\ & \Selector163~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector167~0_combout\,
	datab => \m_writedata[27]~input_o\,
	datad => \Selector163~0_combout\,
	combout => \Selector167~1_combout\);

-- Location: LCCOMB_X36_Y9_N8
\Selector166~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector166~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|linedata~76_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|linedata~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~76_combout\,
	datab => \current.write_back~q\,
	datac => \cache_gen:0:xcache|linedata~76_combout\,
	datad => \KO_index_reg~q\,
	combout => \Selector166~0_combout\);

-- Location: LCCOMB_X36_Y9_N18
\Selector166~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector166~1_combout\ = (\Selector166~0_combout\) # ((\Selector163~0_combout\ & \m_writedata[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector163~0_combout\,
	datac => \Selector166~0_combout\,
	datad => \m_writedata[28]~input_o\,
	combout => \Selector166~1_combout\);

-- Location: LCCOMB_X39_Y9_N18
\Selector165~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector165~1_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & ((\cache_gen:1:xcache|linedata~77_combout\))) # (!\KO_index_reg~q\ & (\cache_gen:0:xcache|linedata~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~77_combout\,
	datab => \cache_gen:1:xcache|linedata~77_combout\,
	datac => \current.write_back~q\,
	datad => \KO_index_reg~q\,
	combout => \Selector165~1_combout\);

-- Location: LCCOMB_X39_Y9_N4
\Selector165~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector165~2_combout\ = (\Selector165~1_combout\) # ((\Selector163~0_combout\ & \m_writedata[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector163~0_combout\,
	datac => \m_writedata[29]~input_o\,
	datad => \Selector165~1_combout\,
	combout => \Selector165~2_combout\);

-- Location: LCCOMB_X34_Y9_N8
\Selector164~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector164~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|linedata~78_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|linedata~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|linedata~78_combout\,
	datab => \cache_gen:0:xcache|linedata~78_combout\,
	datac => \KO_index_reg~q\,
	datad => \current.write_back~q\,
	combout => \Selector164~0_combout\);

-- Location: LCCOMB_X34_Y9_N30
\Selector164~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector164~1_combout\ = (\Selector164~0_combout\) # ((\m_writedata[30]~input_o\ & \Selector163~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_writedata[30]~input_o\,
	datab => \Selector164~0_combout\,
	datad => \Selector163~0_combout\,
	combout => \Selector164~1_combout\);

-- Location: LCCOMB_X39_Y9_N22
\Selector163~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector163~1_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & ((\cache_gen:1:xcache|linedata~79_combout\))) # (!\KO_index_reg~q\ & (\cache_gen:0:xcache|linedata~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|linedata~79_combout\,
	datab => \cache_gen:1:xcache|linedata~79_combout\,
	datac => \current.write_back~q\,
	datad => \KO_index_reg~q\,
	combout => \Selector163~1_combout\);

-- Location: LCCOMB_X39_Y9_N28
\Selector163~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector163~2_combout\ = (\Selector163~1_combout\) # ((\m_writedata[31]~input_o\ & \Selector163~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector163~1_combout\,
	datab => \m_writedata[31]~input_o\,
	datad => \Selector163~0_combout\,
	combout => \Selector163~2_combout\);

-- Location: LCCOMB_X39_Y13_N8
\Selector162~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector162~3_combout\ = (!\current.write_back~q\ & (!\current.mem_read~q\ & !\Selector161~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.write_back~q\,
	datab => \current.mem_read~q\,
	datad => \Selector161~0_combout\,
	combout => \Selector162~3_combout\);

-- Location: LCCOMB_X37_Y13_N8
\Selector161~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector161~3_combout\ = (\Selector27~0_combout\ & ((\m_memwrite~input_o\) # (!\Selector13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datac => \m_memwrite~input_o\,
	datad => \Selector27~0_combout\,
	combout => \Selector161~3_combout\);

-- Location: LCCOMB_X38_Y11_N24
\Selector161~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector161~4_combout\ = (\Selector161~2_combout\) # (((\hits[1]~4_combout\ & \current.busy~q\)) # (!\Selector161~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hits[1]~4_combout\,
	datab => \Selector161~2_combout\,
	datac => \current.busy~q\,
	datad => \Selector161~3_combout\,
	combout => \Selector161~4_combout\);

-- Location: LCCOMB_X39_Y13_N6
\Selector162~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector162~2_combout\ = (!\Selector161~4_combout\ & ((\Selector162~3_combout\ & (\m_address[0]~input_o\)) # (!\Selector162~3_combout\ & ((word_number(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[0]~input_o\,
	datab => word_number(0),
	datac => \Selector162~3_combout\,
	datad => \Selector161~4_combout\,
	combout => \Selector162~2_combout\);

-- Location: LCCOMB_X39_Y13_N22
\Selector161~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector161~5_combout\ = (!\Selector161~4_combout\ & ((\Selector162~3_combout\ & ((\m_address[1]~input_o\))) # (!\Selector162~3_combout\ & (word_number(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_number(1),
	datab => \Selector161~4_combout\,
	datac => \Selector162~3_combout\,
	datad => \m_address[1]~input_o\,
	combout => \Selector161~5_combout\);

-- Location: LCCOMB_X38_Y11_N18
\Selector160~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector160~0_combout\ = (\Selector109~0_combout\ & (\m_address[2]~input_o\ & \Selector161~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector109~0_combout\,
	datac => \m_address[2]~input_o\,
	datad => \Selector161~3_combout\,
	combout => \Selector160~0_combout\);

-- Location: LCCOMB_X40_Y8_N12
\Selector159~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector159~0_combout\ = (\Selector109~0_combout\ & (\Selector161~3_combout\ & \m_address[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector109~0_combout\,
	datac => \Selector161~3_combout\,
	datad => \m_address[3]~input_o\,
	combout => \Selector159~0_combout\);

-- Location: LCCOMB_X40_Y8_N10
\Selector158~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector158~0_combout\ = (\Selector109~0_combout\ & (\Selector161~3_combout\ & \m_address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector109~0_combout\,
	datac => \Selector161~3_combout\,
	datad => \m_address[4]~input_o\,
	combout => \Selector158~0_combout\);

-- Location: LCCOMB_X40_Y8_N16
\Selector157~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector157~0_combout\ = (\Selector161~3_combout\ & (\m_address[5]~input_o\ & \Selector109~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector161~3_combout\,
	datab => \m_address[5]~input_o\,
	datad => \Selector109~0_combout\,
	combout => \Selector157~0_combout\);

-- Location: LCCOMB_X40_Y8_N30
\Selector156~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector156~0_combout\ = (\Selector109~0_combout\ & (\Selector161~3_combout\ & \m_address[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector109~0_combout\,
	datac => \Selector161~3_combout\,
	datad => \m_address[6]~input_o\,
	combout => \Selector156~0_combout\);

-- Location: LCCOMB_X40_Y8_N28
\Selector155~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector155~0_combout\ = (\Selector161~3_combout\ & (\m_address[7]~input_o\ & \Selector109~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector161~3_combout\,
	datab => \m_address[7]~input_o\,
	datad => \Selector109~0_combout\,
	combout => \Selector155~0_combout\);

-- Location: LCCOMB_X40_Y8_N18
\Selector154~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector154~0_combout\ = (\Selector161~3_combout\ & (\m_address[8]~input_o\ & \Selector109~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector161~3_combout\,
	datac => \m_address[8]~input_o\,
	datad => \Selector109~0_combout\,
	combout => \Selector154~0_combout\);

-- Location: LCCOMB_X40_Y8_N2
\Selector144~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector144~0_combout\ = (\Selector109~0_combout\ & (\Selector161~3_combout\ & !\current.write_back~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector109~0_combout\,
	datac => \Selector161~3_combout\,
	datad => \current.write_back~q\,
	combout => \Selector144~0_combout\);

-- Location: LCCOMB_X39_Y12_N24
\Selector153~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector153~0_combout\ = (\KO_index_reg~q\ & ((\cache_gen:1:xcache|ctrldata~25_combout\ & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(15))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & 
-- ((\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata~25_combout\,
	datab => \KO_index_reg~q\,
	datac => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(15),
	datad => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \Selector153~0_combout\);

-- Location: LCCOMB_X40_Y8_N4
\Selector153~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector153~1_combout\ = (\current.write_back~q\ & ((\Selector153~0_combout\) # ((\cache_gen:0:xcache|ctrldata~28_combout\ & !\KO_index_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|ctrldata~28_combout\,
	datab => \KO_index_reg~q\,
	datac => \Selector153~0_combout\,
	datad => \current.write_back~q\,
	combout => \Selector153~1_combout\);

-- Location: LCCOMB_X40_Y8_N8
\Selector153~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector153~2_combout\ = (\Selector153~1_combout\) # ((\m_address[9]~input_o\ & \Selector144~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[9]~input_o\,
	datab => \Selector144~0_combout\,
	datac => \Selector153~1_combout\,
	combout => \Selector153~2_combout\);

-- Location: LCCOMB_X40_Y12_N30
\Selector152~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector152~0_combout\ = (\KO_index_reg~q\ & ((\cache_gen:1:xcache|ctrldata~25_combout\ & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(16))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & 
-- ((\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata~25_combout\,
	datab => \KO_index_reg~q\,
	datac => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(16),
	datad => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a1\,
	combout => \Selector152~0_combout\);

-- Location: LCCOMB_X40_Y12_N22
\Selector152~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector152~1_combout\ = (\current.write_back~q\ & ((\Selector152~0_combout\) # ((!\KO_index_reg~q\ & \cache_gen:0:xcache|ctrldata~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.write_back~q\,
	datab => \KO_index_reg~q\,
	datac => \Selector152~0_combout\,
	datad => \cache_gen:0:xcache|ctrldata~27_combout\,
	combout => \Selector152~1_combout\);

-- Location: LCCOMB_X40_Y12_N12
\Selector152~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector152~2_combout\ = (\Selector152~1_combout\) # ((\Selector144~0_combout\ & \m_address[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector152~1_combout\,
	datab => \Selector144~0_combout\,
	datad => \m_address[10]~input_o\,
	combout => \Selector152~2_combout\);

-- Location: LCCOMB_X38_Y8_N18
\Selector151~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector151~0_combout\ = (\KO_index_reg~q\ & ((\cache_gen:1:xcache|ctrldata~25_combout\ & ((\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(17)))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & 
-- (\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata~25_combout\,
	datab => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a2\,
	datac => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(17),
	datad => \KO_index_reg~q\,
	combout => \Selector151~0_combout\);

-- Location: LCCOMB_X38_Y8_N2
\Selector151~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector151~1_combout\ = (\current.write_back~q\ & ((\Selector151~0_combout\) # ((\cache_gen:0:xcache|ctrldata~29_combout\ & !\KO_index_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:0:xcache|ctrldata~29_combout\,
	datab => \KO_index_reg~q\,
	datac => \current.write_back~q\,
	datad => \Selector151~0_combout\,
	combout => \Selector151~1_combout\);

-- Location: LCCOMB_X38_Y8_N30
\Selector151~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector151~2_combout\ = (\Selector151~1_combout\) # ((\m_address[11]~input_o\ & \Selector144~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[11]~input_o\,
	datab => \Selector144~0_combout\,
	datad => \Selector151~1_combout\,
	combout => \Selector151~2_combout\);

-- Location: LCCOMB_X39_Y12_N18
\Selector150~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector150~0_combout\ = (\KO_index_reg~q\ & ((\cache_gen:1:xcache|ctrldata~25_combout\ & (\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(18))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & 
-- ((\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata~25_combout\,
	datab => \KO_index_reg~q\,
	datac => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(18),
	datad => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a3\,
	combout => \Selector150~0_combout\);

-- Location: LCCOMB_X38_Y8_N28
\Selector150~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector150~1_combout\ = (\current.write_back~q\ & ((\Selector150~0_combout\) # ((!\KO_index_reg~q\ & \cache_gen:0:xcache|ctrldata~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KO_index_reg~q\,
	datab => \cache_gen:0:xcache|ctrldata~30_combout\,
	datac => \current.write_back~q\,
	datad => \Selector150~0_combout\,
	combout => \Selector150~1_combout\);

-- Location: LCCOMB_X38_Y8_N12
\Selector150~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector150~2_combout\ = (\Selector150~1_combout\) # ((\Selector144~0_combout\ & \m_address[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector144~0_combout\,
	datab => \m_address[12]~input_o\,
	datad => \Selector150~1_combout\,
	combout => \Selector150~2_combout\);

-- Location: LCCOMB_X34_Y12_N16
\Selector149~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector149~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|ctrldata~27_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|ctrldata~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KO_index_reg~q\,
	datab => \current.write_back~q\,
	datac => \cache_gen:1:xcache|ctrldata~27_combout\,
	datad => \cache_gen:0:xcache|ctrldata~31_combout\,
	combout => \Selector149~0_combout\);

-- Location: LCCOMB_X34_Y12_N22
\Selector149~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector149~1_combout\ = (\Selector149~0_combout\) # ((\Selector144~0_combout\ & \m_address[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector144~0_combout\,
	datab => \Selector149~0_combout\,
	datad => \m_address[13]~input_o\,
	combout => \Selector149~1_combout\);

-- Location: LCCOMB_X40_Y8_N22
\Selector148~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector148~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|ctrldata~26_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|ctrldata~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata~26_combout\,
	datab => \KO_index_reg~q\,
	datac => \cache_gen:0:xcache|ctrldata~32_combout\,
	datad => \current.write_back~q\,
	combout => \Selector148~0_combout\);

-- Location: LCCOMB_X40_Y8_N20
\Selector148~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector148~1_combout\ = (\Selector148~0_combout\) # ((\m_address[14]~input_o\ & \Selector144~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_address[14]~input_o\,
	datac => \Selector148~0_combout\,
	datad => \Selector144~0_combout\,
	combout => \Selector148~1_combout\);

-- Location: LCCOMB_X34_Y12_N8
\Selector147~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector147~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & ((\cache_gen:1:xcache|ctrldata~29_combout\))) # (!\KO_index_reg~q\ & (\cache_gen:0:xcache|ctrldata~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KO_index_reg~q\,
	datab => \cache_gen:0:xcache|ctrldata~33_combout\,
	datac => \current.write_back~q\,
	datad => \cache_gen:1:xcache|ctrldata~29_combout\,
	combout => \Selector147~0_combout\);

-- Location: LCCOMB_X34_Y12_N6
\Selector147~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector147~1_combout\ = (\Selector147~0_combout\) # ((\Selector144~0_combout\ & \m_address[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector144~0_combout\,
	datab => \Selector147~0_combout\,
	datad => \m_address[15]~input_o\,
	combout => \Selector147~1_combout\);

-- Location: LCCOMB_X33_Y12_N18
\Selector146~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector146~0_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|ctrldata~28_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|ctrldata~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KO_index_reg~q\,
	datab => \cache_gen:1:xcache|ctrldata~28_combout\,
	datac => \cache_gen:0:xcache|ctrldata~34_combout\,
	datad => \current.write_back~q\,
	combout => \Selector146~0_combout\);

-- Location: LCCOMB_X34_Y12_N30
\Selector146~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector146~1_combout\ = (\Selector146~0_combout\) # ((\Selector144~0_combout\ & \m_address[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector144~0_combout\,
	datab => \m_address[16]~input_o\,
	datad => \Selector146~0_combout\,
	combout => \Selector146~1_combout\);

-- Location: LCCOMB_X40_Y12_N6
\Selector145~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector145~0_combout\ = (\KO_index_reg~q\ & ((\cache_gen:1:xcache|ctrldata~25_combout\ & ((\cache_gen:1:xcache|ctrldata_rtl_0_bypass\(23)))) # (!\cache_gen:1:xcache|ctrldata~25_combout\ & 
-- (\cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata~25_combout\,
	datab => \KO_index_reg~q\,
	datac => \cache_gen:1:xcache|ctrldata_rtl_0|auto_generated|ram_block1a8\,
	datad => \cache_gen:1:xcache|ctrldata_rtl_0_bypass\(23),
	combout => \Selector145~0_combout\);

-- Location: LCCOMB_X40_Y12_N18
\Selector145~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector145~1_combout\ = (\current.write_back~q\ & ((\Selector145~0_combout\) # ((!\KO_index_reg~q\ & \cache_gen:0:xcache|ctrldata~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current.write_back~q\,
	datab => \KO_index_reg~q\,
	datac => \cache_gen:0:xcache|ctrldata~35_combout\,
	datad => \Selector145~0_combout\,
	combout => \Selector145~1_combout\);

-- Location: LCCOMB_X40_Y12_N20
\Selector145~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector145~2_combout\ = (\Selector145~1_combout\) # ((\m_address[17]~input_o\ & \Selector144~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_address[17]~input_o\,
	datab => \Selector144~0_combout\,
	datad => \Selector145~1_combout\,
	combout => \Selector145~2_combout\);

-- Location: LCCOMB_X39_Y12_N28
\Selector144~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector144~1_combout\ = (\current.write_back~q\ & ((\KO_index_reg~q\ & (\cache_gen:1:xcache|ctrldata~31_combout\)) # (!\KO_index_reg~q\ & ((\cache_gen:0:xcache|ctrldata~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_gen:1:xcache|ctrldata~31_combout\,
	datab => \KO_index_reg~q\,
	datac => \current.write_back~q\,
	datad => \cache_gen:0:xcache|ctrldata~36_combout\,
	combout => \Selector144~1_combout\);

-- Location: LCCOMB_X40_Y12_N24
\Selector144~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector144~2_combout\ = (\Selector144~1_combout\) # ((\Selector144~0_combout\ & \m_address[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector144~1_combout\,
	datac => \Selector144~0_combout\,
	datad => \m_address[18]~input_o\,
	combout => \Selector144~2_combout\);

-- Location: LCCOMB_X36_Y10_N4
\Selector143~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector143~1_combout\ = (\ds_waitrequest~q\ & (\current.dma~q\ & ((\m_memwrite~input_o\)))) # (!\ds_waitrequest~q\ & ((\current.write_back~q\) # ((\current.dma~q\ & \m_memwrite~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ds_waitrequest~q\,
	datab => \current.dma~q\,
	datac => \current.write_back~q\,
	datad => \m_memwrite~input_o\,
	combout => \Selector143~1_combout\);

-- Location: LCCOMB_X38_Y10_N20
\Selector143~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector143~2_combout\ = (\Selector143~1_combout\) # ((\current.mem_write~q\) # (\Selector143~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector143~1_combout\,
	datab => \current.mem_write~q\,
	datad => \Selector143~0_combout\,
	combout => \Selector143~2_combout\);

-- Location: LCCOMB_X39_Y13_N10
\Selector142~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector142~0_combout\ = (\current.dma~q\ & \m_memread~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current.dma~q\,
	datad => \m_memread~input_o\,
	combout => \Selector142~0_combout\);

-- Location: LCCOMB_X39_Y13_N24
\Selector142~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector142~1_combout\ = (((\s_waitrequest~input_o\ & !\ds_waitrequest~q\)) # (!dword_number(0))) # (!dword_number(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dword_number(1),
	datab => dword_number(0),
	datac => \s_waitrequest~input_o\,
	datad => \ds_waitrequest~q\,
	combout => \Selector142~1_combout\);

-- Location: LCCOMB_X39_Y13_N2
\Selector142~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector142~2_combout\ = (\Selector142~0_combout\) # ((\Selector161~0_combout\) # ((\Selector142~1_combout\ & \current.mem_read~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector142~0_combout\,
	datab => \Selector142~1_combout\,
	datac => \current.mem_read~q\,
	datad => \Selector161~0_combout\,
	combout => \Selector142~2_combout\);

ww_m_readdata(0) <= \m_readdata[0]~output_o\;

ww_m_readdata(1) <= \m_readdata[1]~output_o\;

ww_m_readdata(2) <= \m_readdata[2]~output_o\;

ww_m_readdata(3) <= \m_readdata[3]~output_o\;

ww_m_readdata(4) <= \m_readdata[4]~output_o\;

ww_m_readdata(5) <= \m_readdata[5]~output_o\;

ww_m_readdata(6) <= \m_readdata[6]~output_o\;

ww_m_readdata(7) <= \m_readdata[7]~output_o\;

ww_m_readdata(8) <= \m_readdata[8]~output_o\;

ww_m_readdata(9) <= \m_readdata[9]~output_o\;

ww_m_readdata(10) <= \m_readdata[10]~output_o\;

ww_m_readdata(11) <= \m_readdata[11]~output_o\;

ww_m_readdata(12) <= \m_readdata[12]~output_o\;

ww_m_readdata(13) <= \m_readdata[13]~output_o\;

ww_m_readdata(14) <= \m_readdata[14]~output_o\;

ww_m_readdata(15) <= \m_readdata[15]~output_o\;

ww_m_readdata(16) <= \m_readdata[16]~output_o\;

ww_m_readdata(17) <= \m_readdata[17]~output_o\;

ww_m_readdata(18) <= \m_readdata[18]~output_o\;

ww_m_readdata(19) <= \m_readdata[19]~output_o\;

ww_m_readdata(20) <= \m_readdata[20]~output_o\;

ww_m_readdata(21) <= \m_readdata[21]~output_o\;

ww_m_readdata(22) <= \m_readdata[22]~output_o\;

ww_m_readdata(23) <= \m_readdata[23]~output_o\;

ww_m_readdata(24) <= \m_readdata[24]~output_o\;

ww_m_readdata(25) <= \m_readdata[25]~output_o\;

ww_m_readdata(26) <= \m_readdata[26]~output_o\;

ww_m_readdata(27) <= \m_readdata[27]~output_o\;

ww_m_readdata(28) <= \m_readdata[28]~output_o\;

ww_m_readdata(29) <= \m_readdata[29]~output_o\;

ww_m_readdata(30) <= \m_readdata[30]~output_o\;

ww_m_readdata(31) <= \m_readdata[31]~output_o\;

ww_m_waitrequest <= \m_waitrequest~output_o\;

ww_s_writedata(0) <= \s_writedata[0]~output_o\;

ww_s_writedata(1) <= \s_writedata[1]~output_o\;

ww_s_writedata(2) <= \s_writedata[2]~output_o\;

ww_s_writedata(3) <= \s_writedata[3]~output_o\;

ww_s_writedata(4) <= \s_writedata[4]~output_o\;

ww_s_writedata(5) <= \s_writedata[5]~output_o\;

ww_s_writedata(6) <= \s_writedata[6]~output_o\;

ww_s_writedata(7) <= \s_writedata[7]~output_o\;

ww_s_writedata(8) <= \s_writedata[8]~output_o\;

ww_s_writedata(9) <= \s_writedata[9]~output_o\;

ww_s_writedata(10) <= \s_writedata[10]~output_o\;

ww_s_writedata(11) <= \s_writedata[11]~output_o\;

ww_s_writedata(12) <= \s_writedata[12]~output_o\;

ww_s_writedata(13) <= \s_writedata[13]~output_o\;

ww_s_writedata(14) <= \s_writedata[14]~output_o\;

ww_s_writedata(15) <= \s_writedata[15]~output_o\;

ww_s_writedata(16) <= \s_writedata[16]~output_o\;

ww_s_writedata(17) <= \s_writedata[17]~output_o\;

ww_s_writedata(18) <= \s_writedata[18]~output_o\;

ww_s_writedata(19) <= \s_writedata[19]~output_o\;

ww_s_writedata(20) <= \s_writedata[20]~output_o\;

ww_s_writedata(21) <= \s_writedata[21]~output_o\;

ww_s_writedata(22) <= \s_writedata[22]~output_o\;

ww_s_writedata(23) <= \s_writedata[23]~output_o\;

ww_s_writedata(24) <= \s_writedata[24]~output_o\;

ww_s_writedata(25) <= \s_writedata[25]~output_o\;

ww_s_writedata(26) <= \s_writedata[26]~output_o\;

ww_s_writedata(27) <= \s_writedata[27]~output_o\;

ww_s_writedata(28) <= \s_writedata[28]~output_o\;

ww_s_writedata(29) <= \s_writedata[29]~output_o\;

ww_s_writedata(30) <= \s_writedata[30]~output_o\;

ww_s_writedata(31) <= \s_writedata[31]~output_o\;

ww_s_address(0) <= \s_address[0]~output_o\;

ww_s_address(1) <= \s_address[1]~output_o\;

ww_s_address(2) <= \s_address[2]~output_o\;

ww_s_address(3) <= \s_address[3]~output_o\;

ww_s_address(4) <= \s_address[4]~output_o\;

ww_s_address(5) <= \s_address[5]~output_o\;

ww_s_address(6) <= \s_address[6]~output_o\;

ww_s_address(7) <= \s_address[7]~output_o\;

ww_s_address(8) <= \s_address[8]~output_o\;

ww_s_address(9) <= \s_address[9]~output_o\;

ww_s_address(10) <= \s_address[10]~output_o\;

ww_s_address(11) <= \s_address[11]~output_o\;

ww_s_address(12) <= \s_address[12]~output_o\;

ww_s_address(13) <= \s_address[13]~output_o\;

ww_s_address(14) <= \s_address[14]~output_o\;

ww_s_address(15) <= \s_address[15]~output_o\;

ww_s_address(16) <= \s_address[16]~output_o\;

ww_s_address(17) <= \s_address[17]~output_o\;

ww_s_address(18) <= \s_address[18]~output_o\;

ww_s_memwrite <= \s_memwrite~output_o\;

ww_s_memread <= \s_memread~output_o\;
END structure;


