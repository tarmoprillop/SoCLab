--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.28xd
--  \   \         Application: netgen
--  /   /         Filename: Spar6_Talkthrough_TL_synthesis.vhd
-- /___/   /\     Timestamp: Wed Mar 20 14:16:29 2013
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Spar6_Talkthrough_TL -w -dir netgen/synthesis -ofmt vhdl -sim Spar6_Talkthrough_TL.ngc Spar6_Talkthrough_TL_synthesis.vhd 
-- Device	: xc6slx45-2-csg324
-- Input file	: Spar6_Talkthrough_TL.ngc
-- Output file	: C:\Users\Tarmo\Desktop\FPGA\atlys_ac97_gain\netgen\synthesis\Spar6_Talkthrough_TL_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Spar6_Talkthrough_TL
-- Xilinx	: C:\Xilinx\14.2\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Spar6_Talkthrough_TL is
  port (
    clk : in STD_LOGIC := 'X'; 
    n_reset : in STD_LOGIC := 'X'; 
    SDATA_IN : in STD_LOGIC := 'X'; 
    BIT_CLK : in STD_LOGIC := 'X'; 
    SYNC : out STD_LOGIC; 
    SDATA_OUT : out STD_LOGIC; 
    AC97_n_RESET : out STD_LOGIC; 
    SOURCE : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    VOLUME : in STD_LOGIC_VECTOR ( 4 downto 0 ) 
  );
end Spar6_Talkthrough_TL;

architecture Structure of Spar6_Talkthrough_TL is
  signal SOURCE_2_IBUF_0 : STD_LOGIC; 
  signal SOURCE_1_IBUF_1 : STD_LOGIC; 
  signal SOURCE_0_IBUF_2 : STD_LOGIC; 
  signal VOLUME_4_IBUF_3 : STD_LOGIC; 
  signal VOLUME_3_IBUF_4 : STD_LOGIC; 
  signal VOLUME_2_IBUF_5 : STD_LOGIC; 
  signal VOLUME_1_IBUF_6 : STD_LOGIC; 
  signal VOLUME_0_IBUF_7 : STD_LOGIC; 
  signal clk_BUFGP_8 : STD_LOGIC; 
  signal n_reset_IBUF_9 : STD_LOGIC; 
  signal SDATA_IN_IBUF_10 : STD_LOGIC; 
  signal BIT_CLK_BUFGP_11 : STD_LOGIC; 
  signal cmd_addr_7_Q : STD_LOGIC; 
  signal cmd_addr_5_Q : STD_LOGIC; 
  signal cmd_addr_4_Q : STD_LOGIC; 
  signal cmd_addr_3_Q : STD_LOGIC; 
  signal cmd_addr_2_Q : STD_LOGIC; 
  signal cmd_addr_1_Q : STD_LOGIC; 
  signal cmd_data_15_Q : STD_LOGIC; 
  signal cmd_data_12_Q : STD_LOGIC; 
  signal cmd_data_11_Q : STD_LOGIC; 
  signal cmd_data_10_Q : STD_LOGIC; 
  signal cmd_data_9_Q : STD_LOGIC; 
  signal cmd_data_8_Q : STD_LOGIC; 
  signal cmd_data_6_Q : STD_LOGIC; 
  signal cmd_data_3_Q : STD_LOGIC; 
  signal cmd_data_1_Q : STD_LOGIC; 
  signal cmd_data_0_Q : STD_LOGIC; 
  signal gain0_output_ready_46 : STD_LOGIC; 
  signal gain1_output_ready_65 : STD_LOGIC; 
  signal ac97_cont0_ac97_sdata_out_102 : STD_LOGIC; 
  signal ac97_cont0_ac97_sync_103 : STD_LOGIC; 
  signal ac97_cont0_ac97_n_reset_104 : STD_LOGIC; 
  signal ac97_cont0_ac97_ready_sig_105 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal ac97cmd_cont0_cur_state_FSM_FFd1_In : STD_LOGIC; 
  signal ac97cmd_cont0_cur_state_FSM_FFd2_In : STD_LOGIC; 
  signal ac97cmd_cont0_cur_state_FSM_FFd3_In : STD_LOGIC; 
  signal ac97cmd_cont0_cur_state_FSM_FFd4_In : STD_LOGIC; 
  signal ac97cmd_cont0_cur_state_FSM_FFd4_147 : STD_LOGIC; 
  signal ac97cmd_cont0_cur_state_FSM_FFd3_148 : STD_LOGIC; 
  signal ac97cmd_cont0_cur_state_FSM_FFd2_149 : STD_LOGIC; 
  signal ac97cmd_cont0_cur_state_FSM_FFd1_150 : STD_LOGIC; 
  signal gain1_count_4_Decoder_26_OUT_16_4_1 : STD_LOGIC; 
  signal gain1_n0176_inv_bdd4 : STD_LOGIC; 
  signal gain1_n0155_inv1 : STD_LOGIC; 
  signal gain1_n0176_inv1 : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_16_Q_155 : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_15_Q_156 : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_14_Q_157 : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_13_Q_158 : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_12_Q_159 : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_11_Q_160 : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_10_Q_161 : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_9_Q_162 : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_8_Q_163 : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_7_Q_164 : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_6_Q_165 : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_5_Q_166 : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_4_Q_167 : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_3_Q_168 : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_2_Q_169 : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_1_Q_170 : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_0_Q_171 : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_lut_0_Q_172 : STD_LOGIC; 
  signal gain1_Mmux_count_4_X_7_o_Mux_19_o_3_173 : STD_LOGIC; 
  signal gain1_Mmux_count_4_X_7_o_Mux_19_o_8_174 : STD_LOGIC; 
  signal gain1_Mmux_count_4_X_7_o_Mux_19_o_9_175 : STD_LOGIC; 
  signal gain1_Mmux_count_4_X_7_o_Mux_19_o_91_176 : STD_LOGIC; 
  signal gain1_Mmux_count_4_X_7_o_Mux_19_o_10_177 : STD_LOGIC; 
  signal gain1_Mmux_count_4_X_7_o_Mux_19_o_4_178 : STD_LOGIC; 
  signal gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_16_Q_179 : STD_LOGIC; 
  signal gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_15_Q_180 : STD_LOGIC; 
  signal gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_14_Q_181 : STD_LOGIC; 
  signal gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_13_Q_182 : STD_LOGIC; 
  signal gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_12_Q_183 : STD_LOGIC; 
  signal gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_11_Q_184 : STD_LOGIC; 
  signal gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_10_Q_185 : STD_LOGIC; 
  signal gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_9_Q_186 : STD_LOGIC; 
  signal gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_8_Q_187 : STD_LOGIC; 
  signal gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_7_Q_188 : STD_LOGIC; 
  signal gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_6_Q_189 : STD_LOGIC; 
  signal gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_5_Q_190 : STD_LOGIC; 
  signal gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_4_Q_191 : STD_LOGIC; 
  signal gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_3_Q_192 : STD_LOGIC; 
  signal gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_2_Q_193 : STD_LOGIC; 
  signal gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_1_Q_194 : STD_LOGIC; 
  signal gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_Q_195 : STD_LOGIC; 
  signal gain1_Mcompar_n0027_lutdi3_200 : STD_LOGIC; 
  signal gain1_Mcompar_n0027_lutdi2_203 : STD_LOGIC; 
  signal gain1_Mcompar_n0027_lutdi1_206 : STD_LOGIC; 
  signal gain1_Mcompar_n0027_lutdi_209 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_17_Q_210 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_16_Q_211 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_16_Q_212 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_15_Q_213 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_15_Q_214 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_14_Q_215 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_14_Q_216 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_13_Q_217 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_13_Q_218 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_12_Q_219 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_12_Q_220 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_11_Q_221 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_11_Q_222 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_10_Q_223 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_10_Q_224 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_9_Q_225 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_9_Q_226 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_8_Q_227 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_8_Q_228 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_7_Q_229 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_7_Q_230 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_6_Q_231 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_6_Q_232 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_5_Q_233 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_5_Q_234 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_4_Q_235 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_4_Q_236 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_3_Q_237 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_3_Q_238 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_2_Q_239 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_2_Q_240 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_1_Q_241 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_1_Q_242 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_0_Q_243 : STD_LOGIC; 
  signal gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_0_Q_244 : STD_LOGIC; 
  signal gain1_state_FSM_FFd1_In : STD_LOGIC; 
  signal gain1_state_FSM_FFd2_In : STD_LOGIC; 
  signal gain1_state_FSM_FFd3_In : STD_LOGIC; 
  signal gain1_Mcount_count4 : STD_LOGIC; 
  signal gain1_Mcount_count3 : STD_LOGIC; 
  signal gain1_Mcount_count2 : STD_LOGIC; 
  signal gain1_Mcount_count1 : STD_LOGIC; 
  signal gain1_Mcount_count : STD_LOGIC; 
  signal gain1_n0214_inv : STD_LOGIC; 
  signal gain1_state_1_inv : STD_LOGIC; 
  signal gain1_n0176_inv : STD_LOGIC; 
  signal gain1_n0198_inv : STD_LOGIC; 
  signal gain1_n0155_inv : STD_LOGIC; 
  signal gain1_quot_17_quot_17_mux_33_OUT_0_Q : STD_LOGIC; 
  signal gain1_quot_17_quot_17_mux_33_OUT_1_Q : STD_LOGIC; 
  signal gain1_quot_17_quot_17_mux_33_OUT_2_Q : STD_LOGIC; 
  signal gain1_quot_17_quot_17_mux_33_OUT_3_Q : STD_LOGIC; 
  signal gain1_quot_17_quot_17_mux_33_OUT_4_Q : STD_LOGIC; 
  signal gain1_quot_17_quot_17_mux_33_OUT_5_Q : STD_LOGIC; 
  signal gain1_quot_17_quot_17_mux_33_OUT_6_Q : STD_LOGIC; 
  signal gain1_quot_17_quot_17_mux_33_OUT_7_Q : STD_LOGIC; 
  signal gain1_quot_17_quot_17_mux_33_OUT_8_Q : STD_LOGIC; 
  signal gain1_quot_17_quot_17_mux_33_OUT_9_Q : STD_LOGIC; 
  signal gain1_quot_17_quot_17_mux_33_OUT_10_Q : STD_LOGIC; 
  signal gain1_quot_17_quot_17_mux_33_OUT_11_Q : STD_LOGIC; 
  signal gain1_quot_17_quot_17_mux_33_OUT_12_Q : STD_LOGIC; 
  signal gain1_quot_17_quot_17_mux_33_OUT_13_Q : STD_LOGIC; 
  signal gain1_quot_17_quot_17_mux_33_OUT_14_Q : STD_LOGIC; 
  signal gain1_quot_17_quot_17_mux_33_OUT_15_Q : STD_LOGIC; 
  signal gain1_quot_17_quot_17_mux_33_OUT_16_Q : STD_LOGIC; 
  signal gain1_quot_17_quot_17_mux_33_OUT_17_Q : STD_LOGIC; 
  signal gain1_count_4_X_7_o_Mux_19_o : STD_LOGIC; 
  signal gain1_in_latch_17_GND_7_o_add_14_OUT_0_Q : STD_LOGIC; 
  signal gain1_in_latch_17_GND_7_o_add_14_OUT_1_Q : STD_LOGIC; 
  signal gain1_in_latch_17_GND_7_o_add_14_OUT_2_Q : STD_LOGIC; 
  signal gain1_in_latch_17_GND_7_o_add_14_OUT_3_Q : STD_LOGIC; 
  signal gain1_in_latch_17_GND_7_o_add_14_OUT_4_Q : STD_LOGIC; 
  signal gain1_in_latch_17_GND_7_o_add_14_OUT_5_Q : STD_LOGIC; 
  signal gain1_in_latch_17_GND_7_o_add_14_OUT_6_Q : STD_LOGIC; 
  signal gain1_in_latch_17_GND_7_o_add_14_OUT_7_Q : STD_LOGIC; 
  signal gain1_in_latch_17_GND_7_o_add_14_OUT_8_Q : STD_LOGIC; 
  signal gain1_in_latch_17_GND_7_o_add_14_OUT_9_Q : STD_LOGIC; 
  signal gain1_in_latch_17_GND_7_o_add_14_OUT_10_Q : STD_LOGIC; 
  signal gain1_in_latch_17_GND_7_o_add_14_OUT_11_Q : STD_LOGIC; 
  signal gain1_in_latch_17_GND_7_o_add_14_OUT_12_Q : STD_LOGIC; 
  signal gain1_in_latch_17_GND_7_o_add_14_OUT_13_Q : STD_LOGIC; 
  signal gain1_in_latch_17_GND_7_o_add_14_OUT_14_Q : STD_LOGIC; 
  signal gain1_in_latch_17_GND_7_o_add_14_OUT_15_Q : STD_LOGIC; 
  signal gain1_in_latch_17_GND_7_o_add_14_OUT_16_Q : STD_LOGIC; 
  signal gain1_in_latch_17_GND_7_o_add_14_OUT_17_Q : STD_LOGIC; 
  signal gain1_gain_pos_4_GND_7_o_add_17_OUT_1_Q : STD_LOGIC; 
  signal gain1_gain_pos_4_GND_7_o_add_17_OUT_2_Q : STD_LOGIC; 
  signal gain1_gain_pos_4_GND_7_o_add_17_OUT_3_Q : STD_LOGIC; 
  signal gain1_gain_pos_4_GND_7_o_add_17_OUT_4_Q : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_1_Q : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_2_Q : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_3_Q : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_4_Q : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_5_Q : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_6_Q : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_7_Q : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_8_Q : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_9_Q : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_10_Q : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_11_Q : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_12_Q : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_13_Q : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_14_Q : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_15_Q : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_16_Q : STD_LOGIC; 
  signal gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_17_Q : STD_LOGIC; 
  signal gain1_remainder_17_gain_4_add_25_OUT_0_Q : STD_LOGIC; 
  signal gain1_remainder_17_gain_4_add_25_OUT_1_Q : STD_LOGIC; 
  signal gain1_remainder_17_gain_4_add_25_OUT_2_Q : STD_LOGIC; 
  signal gain1_remainder_17_gain_4_add_25_OUT_3_Q : STD_LOGIC; 
  signal gain1_remainder_17_gain_4_add_25_OUT_4_Q : STD_LOGIC; 
  signal gain1_remainder_17_gain_4_add_25_OUT_5_Q : STD_LOGIC; 
  signal gain1_remainder_17_gain_4_add_25_OUT_6_Q : STD_LOGIC; 
  signal gain1_remainder_17_gain_4_add_25_OUT_7_Q : STD_LOGIC; 
  signal gain1_remainder_17_gain_4_add_25_OUT_8_Q : STD_LOGIC; 
  signal gain1_remainder_17_gain_4_add_25_OUT_9_Q : STD_LOGIC; 
  signal gain1_remainder_17_gain_4_add_25_OUT_10_Q : STD_LOGIC; 
  signal gain1_remainder_17_gain_4_add_25_OUT_11_Q : STD_LOGIC; 
  signal gain1_remainder_17_gain_4_add_25_OUT_12_Q : STD_LOGIC; 
  signal gain1_remainder_17_gain_4_add_25_OUT_13_Q : STD_LOGIC; 
  signal gain1_remainder_17_gain_4_add_25_OUT_14_Q : STD_LOGIC; 
  signal gain1_remainder_17_gain_4_add_25_OUT_15_Q : STD_LOGIC; 
  signal gain1_remainder_17_gain_4_add_25_OUT_16_Q : STD_LOGIC; 
  signal gain1_remainder_17_gain_4_add_25_OUT_17_Q : STD_LOGIC; 
  signal gain1_s_396 : STD_LOGIC; 
  signal gain1_state_2_PWR_10_o_Mux_44_o : STD_LOGIC; 
  signal gain1_state_2_X_7_o_Mux_43_o : STD_LOGIC; 
  signal gain1_state_FSM_FFd3_445 : STD_LOGIC; 
  signal gain1_state_FSM_FFd2_446 : STD_LOGIC; 
  signal gain1_state_FSM_FFd1_447 : STD_LOGIC; 
  signal gain0_count_4_Decoder_26_OUT_16_4_1 : STD_LOGIC; 
  signal gain0_n0176_inv_bdd4 : STD_LOGIC; 
  signal gain0_n0155_inv1 : STD_LOGIC; 
  signal gain0_n0176_inv1 : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_16_Q_474 : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_15_Q_475 : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_14_Q_476 : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_13_Q_477 : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_12_Q_478 : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_11_Q_479 : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_10_Q_480 : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_9_Q_481 : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_8_Q_482 : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_7_Q_483 : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_6_Q_484 : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_5_Q_485 : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_4_Q_486 : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_3_Q_487 : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_2_Q_488 : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_1_Q_489 : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_0_Q_490 : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_lut_0_Q_491 : STD_LOGIC; 
  signal gain0_Mmux_count_4_X_7_o_Mux_19_o_3_492 : STD_LOGIC; 
  signal gain0_Mmux_count_4_X_7_o_Mux_19_o_8_493 : STD_LOGIC; 
  signal gain0_Mmux_count_4_X_7_o_Mux_19_o_9_494 : STD_LOGIC; 
  signal gain0_Mmux_count_4_X_7_o_Mux_19_o_91_495 : STD_LOGIC; 
  signal gain0_Mmux_count_4_X_7_o_Mux_19_o_10_496 : STD_LOGIC; 
  signal gain0_Mmux_count_4_X_7_o_Mux_19_o_4_497 : STD_LOGIC; 
  signal gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_16_Q_498 : STD_LOGIC; 
  signal gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_15_Q_499 : STD_LOGIC; 
  signal gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_14_Q_500 : STD_LOGIC; 
  signal gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_13_Q_501 : STD_LOGIC; 
  signal gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_12_Q_502 : STD_LOGIC; 
  signal gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_11_Q_503 : STD_LOGIC; 
  signal gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_10_Q_504 : STD_LOGIC; 
  signal gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_9_Q_505 : STD_LOGIC; 
  signal gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_8_Q_506 : STD_LOGIC; 
  signal gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_7_Q_507 : STD_LOGIC; 
  signal gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_6_Q_508 : STD_LOGIC; 
  signal gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_5_Q_509 : STD_LOGIC; 
  signal gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_4_Q_510 : STD_LOGIC; 
  signal gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_3_Q_511 : STD_LOGIC; 
  signal gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_2_Q_512 : STD_LOGIC; 
  signal gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_1_Q_513 : STD_LOGIC; 
  signal gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_Q_514 : STD_LOGIC; 
  signal gain0_Mcompar_n0027_lutdi3_519 : STD_LOGIC; 
  signal gain0_Mcompar_n0027_lutdi2_522 : STD_LOGIC; 
  signal gain0_Mcompar_n0027_lutdi1_525 : STD_LOGIC; 
  signal gain0_Mcompar_n0027_lutdi_528 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_17_Q_529 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_16_Q_530 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_16_Q_531 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_15_Q_532 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_15_Q_533 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_14_Q_534 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_14_Q_535 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_13_Q_536 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_13_Q_537 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_12_Q_538 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_12_Q_539 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_11_Q_540 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_11_Q_541 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_10_Q_542 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_10_Q_543 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_9_Q_544 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_9_Q_545 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_8_Q_546 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_8_Q_547 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_7_Q_548 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_7_Q_549 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_6_Q_550 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_6_Q_551 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_5_Q_552 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_5_Q_553 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_4_Q_554 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_4_Q_555 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_3_Q_556 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_3_Q_557 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_2_Q_558 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_2_Q_559 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_1_Q_560 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_1_Q_561 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_0_Q_562 : STD_LOGIC; 
  signal gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_0_Q_563 : STD_LOGIC; 
  signal gain0_state_FSM_FFd1_In : STD_LOGIC; 
  signal gain0_state_FSM_FFd2_In : STD_LOGIC; 
  signal gain0_state_FSM_FFd3_In : STD_LOGIC; 
  signal gain0_Mcount_count4 : STD_LOGIC; 
  signal gain0_Mcount_count3 : STD_LOGIC; 
  signal gain0_Mcount_count2 : STD_LOGIC; 
  signal gain0_Mcount_count1 : STD_LOGIC; 
  signal gain0_Mcount_count : STD_LOGIC; 
  signal gain0_n0214_inv : STD_LOGIC; 
  signal gain0_state_1_inv : STD_LOGIC; 
  signal gain0_n0176_inv : STD_LOGIC; 
  signal gain0_n0198_inv : STD_LOGIC; 
  signal gain0_n0155_inv : STD_LOGIC; 
  signal gain0_quot_17_quot_17_mux_33_OUT_0_Q : STD_LOGIC; 
  signal gain0_quot_17_quot_17_mux_33_OUT_1_Q : STD_LOGIC; 
  signal gain0_quot_17_quot_17_mux_33_OUT_2_Q : STD_LOGIC; 
  signal gain0_quot_17_quot_17_mux_33_OUT_3_Q : STD_LOGIC; 
  signal gain0_quot_17_quot_17_mux_33_OUT_4_Q : STD_LOGIC; 
  signal gain0_quot_17_quot_17_mux_33_OUT_5_Q : STD_LOGIC; 
  signal gain0_quot_17_quot_17_mux_33_OUT_6_Q : STD_LOGIC; 
  signal gain0_quot_17_quot_17_mux_33_OUT_7_Q : STD_LOGIC; 
  signal gain0_quot_17_quot_17_mux_33_OUT_8_Q : STD_LOGIC; 
  signal gain0_quot_17_quot_17_mux_33_OUT_9_Q : STD_LOGIC; 
  signal gain0_quot_17_quot_17_mux_33_OUT_10_Q : STD_LOGIC; 
  signal gain0_quot_17_quot_17_mux_33_OUT_11_Q : STD_LOGIC; 
  signal gain0_quot_17_quot_17_mux_33_OUT_12_Q : STD_LOGIC; 
  signal gain0_quot_17_quot_17_mux_33_OUT_13_Q : STD_LOGIC; 
  signal gain0_quot_17_quot_17_mux_33_OUT_14_Q : STD_LOGIC; 
  signal gain0_quot_17_quot_17_mux_33_OUT_15_Q : STD_LOGIC; 
  signal gain0_quot_17_quot_17_mux_33_OUT_16_Q : STD_LOGIC; 
  signal gain0_quot_17_quot_17_mux_33_OUT_17_Q : STD_LOGIC; 
  signal gain0_count_4_X_7_o_Mux_19_o : STD_LOGIC; 
  signal gain0_in_latch_17_GND_7_o_add_14_OUT_0_Q : STD_LOGIC; 
  signal gain0_in_latch_17_GND_7_o_add_14_OUT_1_Q : STD_LOGIC; 
  signal gain0_in_latch_17_GND_7_o_add_14_OUT_2_Q : STD_LOGIC; 
  signal gain0_in_latch_17_GND_7_o_add_14_OUT_3_Q : STD_LOGIC; 
  signal gain0_in_latch_17_GND_7_o_add_14_OUT_4_Q : STD_LOGIC; 
  signal gain0_in_latch_17_GND_7_o_add_14_OUT_5_Q : STD_LOGIC; 
  signal gain0_in_latch_17_GND_7_o_add_14_OUT_6_Q : STD_LOGIC; 
  signal gain0_in_latch_17_GND_7_o_add_14_OUT_7_Q : STD_LOGIC; 
  signal gain0_in_latch_17_GND_7_o_add_14_OUT_8_Q : STD_LOGIC; 
  signal gain0_in_latch_17_GND_7_o_add_14_OUT_9_Q : STD_LOGIC; 
  signal gain0_in_latch_17_GND_7_o_add_14_OUT_10_Q : STD_LOGIC; 
  signal gain0_in_latch_17_GND_7_o_add_14_OUT_11_Q : STD_LOGIC; 
  signal gain0_in_latch_17_GND_7_o_add_14_OUT_12_Q : STD_LOGIC; 
  signal gain0_in_latch_17_GND_7_o_add_14_OUT_13_Q : STD_LOGIC; 
  signal gain0_in_latch_17_GND_7_o_add_14_OUT_14_Q : STD_LOGIC; 
  signal gain0_in_latch_17_GND_7_o_add_14_OUT_15_Q : STD_LOGIC; 
  signal gain0_in_latch_17_GND_7_o_add_14_OUT_16_Q : STD_LOGIC; 
  signal gain0_in_latch_17_GND_7_o_add_14_OUT_17_Q : STD_LOGIC; 
  signal gain0_gain_pos_4_GND_7_o_add_17_OUT_1_Q : STD_LOGIC; 
  signal gain0_gain_pos_4_GND_7_o_add_17_OUT_2_Q : STD_LOGIC; 
  signal gain0_gain_pos_4_GND_7_o_add_17_OUT_3_Q : STD_LOGIC; 
  signal gain0_gain_pos_4_GND_7_o_add_17_OUT_4_Q : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_1_Q : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_2_Q : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_3_Q : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_4_Q : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_5_Q : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_6_Q : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_7_Q : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_8_Q : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_9_Q : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_10_Q : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_11_Q : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_12_Q : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_13_Q : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_14_Q : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_15_Q : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_16_Q : STD_LOGIC; 
  signal gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_17_Q : STD_LOGIC; 
  signal gain0_remainder_17_gain_4_add_25_OUT_0_Q : STD_LOGIC; 
  signal gain0_remainder_17_gain_4_add_25_OUT_1_Q : STD_LOGIC; 
  signal gain0_remainder_17_gain_4_add_25_OUT_2_Q : STD_LOGIC; 
  signal gain0_remainder_17_gain_4_add_25_OUT_3_Q : STD_LOGIC; 
  signal gain0_remainder_17_gain_4_add_25_OUT_4_Q : STD_LOGIC; 
  signal gain0_remainder_17_gain_4_add_25_OUT_5_Q : STD_LOGIC; 
  signal gain0_remainder_17_gain_4_add_25_OUT_6_Q : STD_LOGIC; 
  signal gain0_remainder_17_gain_4_add_25_OUT_7_Q : STD_LOGIC; 
  signal gain0_remainder_17_gain_4_add_25_OUT_8_Q : STD_LOGIC; 
  signal gain0_remainder_17_gain_4_add_25_OUT_9_Q : STD_LOGIC; 
  signal gain0_remainder_17_gain_4_add_25_OUT_10_Q : STD_LOGIC; 
  signal gain0_remainder_17_gain_4_add_25_OUT_11_Q : STD_LOGIC; 
  signal gain0_remainder_17_gain_4_add_25_OUT_12_Q : STD_LOGIC; 
  signal gain0_remainder_17_gain_4_add_25_OUT_13_Q : STD_LOGIC; 
  signal gain0_remainder_17_gain_4_add_25_OUT_14_Q : STD_LOGIC; 
  signal gain0_remainder_17_gain_4_add_25_OUT_15_Q : STD_LOGIC; 
  signal gain0_remainder_17_gain_4_add_25_OUT_16_Q : STD_LOGIC; 
  signal gain0_remainder_17_gain_4_add_25_OUT_17_Q : STD_LOGIC; 
  signal gain0_s_715 : STD_LOGIC; 
  signal gain0_state_2_PWR_10_o_Mux_44_o : STD_LOGIC; 
  signal gain0_state_2_X_7_o_Mux_43_o : STD_LOGIC; 
  signal gain0_state_FSM_FFd3_764 : STD_LOGIC; 
  signal gain0_state_FSM_FFd2_765 : STD_LOGIC; 
  signal gain0_state_FSM_FFd1_766 : STD_LOGIC; 
  signal ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT101_789 : STD_LOGIC; 
  signal ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102 : STD_LOGIC; 
  signal ac97_cont0_GND_6_o_bit_count_7_AND_6_o : STD_LOGIC; 
  signal ac97_cont0_GND_6_o_bit_count_7_AND_5_o : STD_LOGIC; 
  signal ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o121 : STD_LOGIC; 
  signal ac97_cont0_GND_6_o_bit_count_7_AND_9_o1_794 : STD_LOGIC; 
  signal ac97_cont0_Mmux_GND_6_o_X_6_o_Mux_41_o_9_795 : STD_LOGIC; 
  signal ac97_cont0_Mmux_GND_6_o_X_6_o_Mux_41_o_91_796 : STD_LOGIC; 
  signal ac97_cont0_Mmux_GND_6_o_X_6_o_Mux_41_o_10_797 : STD_LOGIC; 
  signal ac97_cont0_Result_7_1 : STD_LOGIC; 
  signal ac97_cont0_Result_6_1 : STD_LOGIC; 
  signal ac97_cont0_Result_5_1 : STD_LOGIC; 
  signal ac97_cont0_Result_4_1 : STD_LOGIC; 
  signal ac97_cont0_Result_3_1 : STD_LOGIC; 
  signal ac97_cont0_Result_2_1 : STD_LOGIC; 
  signal ac97_cont0_Result_1_1 : STD_LOGIC; 
  signal ac97_cont0_Result_0_1 : STD_LOGIC; 
  signal ac97_cont0_Mcount_rst_counter_val : STD_LOGIC; 
  signal ac97_cont0_n0195_inv : STD_LOGIC; 
  signal ac97_cont0_n0013_inv : STD_LOGIC; 
  signal ac97_cont0_n_reset_inv : STD_LOGIC; 
  signal ac97_cont0_GND_6_o_bit_count_7_equal_21_o : STD_LOGIC; 
  signal ac97_cont0_GND_6_o_GND_6_o_MUX_94_o : STD_LOGIC; 
  signal ac97_cont0_GND_6_o_bit_count_7_AND_9_o : STD_LOGIC; 
  signal ac97_cont0_PWR_6_o_bit_count_7_equal_15_o : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_0_Q : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_1_Q : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_2_Q : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_3_Q : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_4_Q : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_5_Q : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_6_Q : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_7_Q : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_8_Q : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_9_Q : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_10_Q : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_11_Q : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_12_Q : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_13_Q : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_14_Q : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_15_Q : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_16_Q : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_17_Q : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_18_Q : STD_LOGIC; 
  signal ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_19_Q : STD_LOGIC; 
  signal ac97_cont0_latch_cmd_data_4_Q : STD_LOGIC; 
  signal ac97_cont0_latch_cmd_data_5_Q : STD_LOGIC; 
  signal ac97_cont0_latch_cmd_data_7_Q : STD_LOGIC; 
  signal ac97_cont0_latch_cmd_data_10_Q : STD_LOGIC; 
  signal ac97_cont0_latch_cmd_data_17_Q : STD_LOGIC; 
  signal ac97_cont0_latch_cmd_data_12_Q : STD_LOGIC; 
  signal ac97_cont0_latch_cmd_data_13_Q : STD_LOGIC; 
  signal ac97_cont0_latch_cmd_data_14_Q : STD_LOGIC; 
  signal ac97_cont0_latch_cmd_data_15_Q : STD_LOGIC; 
  signal ac97_cont0_latch_cmd_data_19_Q : STD_LOGIC; 
  signal ac97_cont0_latch_cmd_addr_13_Q : STD_LOGIC; 
  signal ac97_cont0_latch_cmd_addr_14_Q : STD_LOGIC; 
  signal ac97_cont0_latch_cmd_addr_15_Q : STD_LOGIC; 
  signal ac97_cont0_latch_cmd_addr_16_Q : STD_LOGIC; 
  signal ac97_cont0_latch_cmd_addr_17_Q : STD_LOGIC; 
  signal ac97_cont0_latch_cmd_addr_19_Q : STD_LOGIC; 
  signal ac97_cont0_Q1_931 : STD_LOGIC; 
  signal ac97_cont0_Q2_932 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal ac97_cont0_GND_6_o_bit_count_7_AND_9_o2_963 : STD_LOGIC; 
  signal ac97_cont0_GND_6_o_bit_count_7_AND_9_o3_964 : STD_LOGIC; 
  signal ac97_cont0_n0195_inv1 : STD_LOGIC; 
  signal ac97_cont0_n0201_inv1_966 : STD_LOGIC; 
  signal ac97_cont0_Mcount_rst_counter_val11_967 : STD_LOGIC; 
  signal ac97_cont0_Mcount_rst_counter_val12_968 : STD_LOGIC; 
  signal ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o21 : STD_LOGIC; 
  signal ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o22_970 : STD_LOGIC; 
  signal ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o23_971 : STD_LOGIC; 
  signal ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o24_972 : STD_LOGIC; 
  signal ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o25_973 : STD_LOGIC; 
  signal ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o210 : STD_LOGIC; 
  signal ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o211_975 : STD_LOGIC; 
  signal ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o213 : STD_LOGIC; 
  signal ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o214_977 : STD_LOGIC; 
  signal ac97_cont0_Q1_glue_set_993 : STD_LOGIC; 
  signal ac97_cont0_Mcount_rst_counter_cy_10_rt_994 : STD_LOGIC; 
  signal ac97_cont0_Mcount_rst_counter_cy_9_rt_995 : STD_LOGIC; 
  signal ac97_cont0_Mcount_rst_counter_cy_8_rt_996 : STD_LOGIC; 
  signal ac97_cont0_Mcount_rst_counter_cy_7_rt_997 : STD_LOGIC; 
  signal ac97_cont0_Mcount_rst_counter_cy_6_rt_998 : STD_LOGIC; 
  signal ac97_cont0_Mcount_rst_counter_cy_5_rt_999 : STD_LOGIC; 
  signal ac97_cont0_Mcount_rst_counter_cy_4_rt_1000 : STD_LOGIC; 
  signal ac97_cont0_Mcount_rst_counter_cy_3_rt_1001 : STD_LOGIC; 
  signal ac97_cont0_Mcount_rst_counter_cy_2_rt_1002 : STD_LOGIC; 
  signal ac97_cont0_Mcount_rst_counter_cy_1_rt_1003 : STD_LOGIC; 
  signal ac97_cont0_Mcount_bit_count_cy_6_rt_1004 : STD_LOGIC; 
  signal ac97_cont0_Mcount_bit_count_cy_5_rt_1005 : STD_LOGIC; 
  signal ac97_cont0_Mcount_bit_count_cy_4_rt_1006 : STD_LOGIC; 
  signal ac97_cont0_Mcount_bit_count_cy_3_rt_1007 : STD_LOGIC; 
  signal ac97_cont0_Mcount_bit_count_cy_2_rt_1008 : STD_LOGIC; 
  signal ac97_cont0_Mcount_bit_count_cy_1_rt_1009 : STD_LOGIC; 
  signal ac97_cont0_Mcount_bit_count_lut_0_1 : STD_LOGIC; 
  signal ac97_cont0_Mcount_rst_counter_xor_11_rt_1011 : STD_LOGIC; 
  signal ac97_cont0_Mcount_bit_count_xor_7_rt_1012 : STD_LOGIC; 
  signal ac97_cont0_ac97_ready_sig_rstpot_1013 : STD_LOGIC; 
  signal ac97_cont0_ac97_sync_rstpot_1014 : STD_LOGIC; 
  signal ac97_cont0_ac97_n_reset_rstpot_1015 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_19_rstpot_1016 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_18_rstpot_1017 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_17_rstpot_1018 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_16_rstpot_1019 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_15_rstpot_1020 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_14_rstpot_1021 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_13_rstpot_1022 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_12_rstpot_1023 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_11_rstpot_1024 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_10_rstpot_1025 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_9_rstpot_1026 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_8_rstpot_1027 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_7_rstpot_1028 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_6_rstpot_1029 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_5_rstpot_1030 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_4_rstpot_1031 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_3_rstpot_1032 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_2_rstpot_1033 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_1_rstpot_1034 : STD_LOGIC; 
  signal ac97_cont0_right_in_data_0_rstpot_1035 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_19_rstpot_1036 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_18_rstpot_1037 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_17_rstpot_1038 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_16_rstpot_1039 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_15_rstpot_1040 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_14_rstpot_1041 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_13_rstpot_1042 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_12_rstpot_1043 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_11_rstpot_1044 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_10_rstpot_1045 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_9_rstpot_1046 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_8_rstpot_1047 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_7_rstpot_1048 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_6_rstpot_1049 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_5_rstpot_1050 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_4_rstpot_1051 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_3_rstpot_1052 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_2_rstpot_1053 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_1_rstpot_1054 : STD_LOGIC; 
  signal ac97_cont0_left_in_data_0_rstpot_1055 : STD_LOGIC; 
  signal ac97_cont0_ac97_sdata_out_rstpot_1056 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_rt_1061 : STD_LOGIC; 
  signal gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_rt_1062 : STD_LOGIC; 
  signal ac97_cont0_bit_count_6_1_1063 : STD_LOGIC; 
  signal ac97_cont0_bit_count_6_2_1064 : STD_LOGIC; 
  signal ac97_cont0_GND_6_o_bit_count_7_AND_9_o31 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal gain0_quot : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal gain1_quot : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal ac97_cont0_left_in_data : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal ac97_cont0_right_in_data : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal R_bus : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal L_bus : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal gain1_gain_pos : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal gain1_Mcompar_n0027_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal gain1_Mcompar_n0027_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gain1_Mcount_count_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal gain1_Mcount_count_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gain1_n0124 : STD_LOGIC_VECTOR ( 17 downto 1 ); 
  signal gain1_n0158 : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal gain1_quot_next : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal gain1_gain : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal gain1_count : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal gain1_remainder : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal gain1_in_latch : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal gain1_n0141 : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal gain0_gain_pos : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal gain0_Mcompar_n0027_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal gain0_Mcompar_n0027_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gain0_Mcount_count_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal gain0_Mcount_count_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal gain0_n0124 : STD_LOGIC_VECTOR ( 17 downto 1 ); 
  signal gain0_n0158 : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal gain0_quot_next : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal gain0_gain : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal gain0_count : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal gain0_remainder : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal gain0_in_latch : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal gain0_n0141 : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal ac97_cont0_Mcount_rst_counter_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal ac97_cont0_Mcount_rst_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal ac97_cont0_Mcount_bit_count_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal ac97_cont0_bit_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ac97_cont0_Result : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal ac97_cont0_latch_right_data : STD_LOGIC_VECTOR ( 19 downto 2 ); 
  signal ac97_cont0_latch_left_data : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal ac97_cont0_rst_counter : STD_LOGIC_VECTOR ( 12 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => ac97_cont0_rst_counter(12)
    );
  L_bus_0 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain0_output_ready_46,
      D => gain0_quot(0),
      R => ac97_cont0_n_reset_inv,
      Q => L_bus(0)
    );
  L_bus_1 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain0_output_ready_46,
      D => gain0_quot(1),
      R => ac97_cont0_n_reset_inv,
      Q => L_bus(1)
    );
  L_bus_2 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain0_output_ready_46,
      D => gain0_quot(2),
      R => ac97_cont0_n_reset_inv,
      Q => L_bus(2)
    );
  L_bus_3 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain0_output_ready_46,
      D => gain0_quot(3),
      R => ac97_cont0_n_reset_inv,
      Q => L_bus(3)
    );
  L_bus_4 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain0_output_ready_46,
      D => gain0_quot(4),
      R => ac97_cont0_n_reset_inv,
      Q => L_bus(4)
    );
  L_bus_5 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain0_output_ready_46,
      D => gain0_quot(5),
      R => ac97_cont0_n_reset_inv,
      Q => L_bus(5)
    );
  L_bus_6 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain0_output_ready_46,
      D => gain0_quot(6),
      R => ac97_cont0_n_reset_inv,
      Q => L_bus(6)
    );
  L_bus_7 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain0_output_ready_46,
      D => gain0_quot(7),
      R => ac97_cont0_n_reset_inv,
      Q => L_bus(7)
    );
  L_bus_8 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain0_output_ready_46,
      D => gain0_quot(8),
      R => ac97_cont0_n_reset_inv,
      Q => L_bus(8)
    );
  L_bus_9 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain0_output_ready_46,
      D => gain0_quot(9),
      R => ac97_cont0_n_reset_inv,
      Q => L_bus(9)
    );
  L_bus_10 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain0_output_ready_46,
      D => gain0_quot(10),
      R => ac97_cont0_n_reset_inv,
      Q => L_bus(10)
    );
  L_bus_11 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain0_output_ready_46,
      D => gain0_quot(11),
      R => ac97_cont0_n_reset_inv,
      Q => L_bus(11)
    );
  L_bus_12 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain0_output_ready_46,
      D => gain0_quot(12),
      R => ac97_cont0_n_reset_inv,
      Q => L_bus(12)
    );
  L_bus_13 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain0_output_ready_46,
      D => gain0_quot(13),
      R => ac97_cont0_n_reset_inv,
      Q => L_bus(13)
    );
  L_bus_14 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain0_output_ready_46,
      D => gain0_quot(14),
      R => ac97_cont0_n_reset_inv,
      Q => L_bus(14)
    );
  L_bus_15 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain0_output_ready_46,
      D => gain0_quot(15),
      R => ac97_cont0_n_reset_inv,
      Q => L_bus(15)
    );
  L_bus_16 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain0_output_ready_46,
      D => gain0_quot(16),
      R => ac97_cont0_n_reset_inv,
      Q => L_bus(16)
    );
  L_bus_17 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain0_output_ready_46,
      D => gain0_quot(17),
      R => ac97_cont0_n_reset_inv,
      Q => L_bus(17)
    );
  R_bus_0 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain1_output_ready_65,
      D => gain1_quot(0),
      R => ac97_cont0_n_reset_inv,
      Q => R_bus(0)
    );
  R_bus_1 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain1_output_ready_65,
      D => gain1_quot(1),
      R => ac97_cont0_n_reset_inv,
      Q => R_bus(1)
    );
  R_bus_2 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain1_output_ready_65,
      D => gain1_quot(2),
      R => ac97_cont0_n_reset_inv,
      Q => R_bus(2)
    );
  R_bus_3 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain1_output_ready_65,
      D => gain1_quot(3),
      R => ac97_cont0_n_reset_inv,
      Q => R_bus(3)
    );
  R_bus_4 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain1_output_ready_65,
      D => gain1_quot(4),
      R => ac97_cont0_n_reset_inv,
      Q => R_bus(4)
    );
  R_bus_5 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain1_output_ready_65,
      D => gain1_quot(5),
      R => ac97_cont0_n_reset_inv,
      Q => R_bus(5)
    );
  R_bus_6 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain1_output_ready_65,
      D => gain1_quot(6),
      R => ac97_cont0_n_reset_inv,
      Q => R_bus(6)
    );
  R_bus_7 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain1_output_ready_65,
      D => gain1_quot(7),
      R => ac97_cont0_n_reset_inv,
      Q => R_bus(7)
    );
  R_bus_8 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain1_output_ready_65,
      D => gain1_quot(8),
      R => ac97_cont0_n_reset_inv,
      Q => R_bus(8)
    );
  R_bus_9 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain1_output_ready_65,
      D => gain1_quot(9),
      R => ac97_cont0_n_reset_inv,
      Q => R_bus(9)
    );
  R_bus_10 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain1_output_ready_65,
      D => gain1_quot(10),
      R => ac97_cont0_n_reset_inv,
      Q => R_bus(10)
    );
  R_bus_11 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain1_output_ready_65,
      D => gain1_quot(11),
      R => ac97_cont0_n_reset_inv,
      Q => R_bus(11)
    );
  R_bus_12 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain1_output_ready_65,
      D => gain1_quot(12),
      R => ac97_cont0_n_reset_inv,
      Q => R_bus(12)
    );
  R_bus_13 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain1_output_ready_65,
      D => gain1_quot(13),
      R => ac97_cont0_n_reset_inv,
      Q => R_bus(13)
    );
  R_bus_14 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain1_output_ready_65,
      D => gain1_quot(14),
      R => ac97_cont0_n_reset_inv,
      Q => R_bus(14)
    );
  R_bus_15 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain1_output_ready_65,
      D => gain1_quot(15),
      R => ac97_cont0_n_reset_inv,
      Q => R_bus(15)
    );
  R_bus_16 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain1_output_ready_65,
      D => gain1_quot(16),
      R => ac97_cont0_n_reset_inv,
      Q => R_bus(16)
    );
  R_bus_17 : FDRE
    port map (
      C => clk_BUFGP_8,
      CE => gain1_output_ready_65,
      D => gain1_quot(17),
      R => ac97_cont0_n_reset_inv,
      Q => R_bus(17)
    );
  ac97cmd_cont0_cur_state_FSM_FFd1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => ac97cmd_cont0_cur_state_FSM_FFd1_In,
      Q => ac97cmd_cont0_cur_state_FSM_FFd1_150
    );
  ac97cmd_cont0_cur_state_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => ac97cmd_cont0_cur_state_FSM_FFd2_In,
      Q => ac97cmd_cont0_cur_state_FSM_FFd2_149
    );
  ac97cmd_cont0_cur_state_FSM_FFd3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => ac97cmd_cont0_cur_state_FSM_FFd3_In,
      Q => ac97cmd_cont0_cur_state_FSM_FFd3_148
    );
  ac97cmd_cont0_cur_state_FSM_FFd4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => ac97cmd_cont0_cur_state_FSM_FFd4_In,
      Q => ac97cmd_cont0_cur_state_FSM_FFd4_147
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_17_Q : XORCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_16_Q_155,
      LI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_17_Q,
      O => gain1_quot_17_quot_17_mux_33_OUT_17_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_16_Q : XORCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_15_Q_156,
      LI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_16_Q,
      O => gain1_quot_17_quot_17_mux_33_OUT_16_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_16_Q : MUXCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_15_Q_156,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_16_Q,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_16_Q_155
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_15_Q : XORCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_14_Q_157,
      LI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_15_Q,
      O => gain1_quot_17_quot_17_mux_33_OUT_15_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_15_Q : MUXCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_14_Q_157,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_15_Q,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_15_Q_156
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_14_Q : XORCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_13_Q_158,
      LI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_14_Q,
      O => gain1_quot_17_quot_17_mux_33_OUT_14_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_14_Q : MUXCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_13_Q_158,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_14_Q,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_14_Q_157
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_13_Q : XORCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_12_Q_159,
      LI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_13_Q,
      O => gain1_quot_17_quot_17_mux_33_OUT_13_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_13_Q : MUXCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_12_Q_159,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_13_Q,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_13_Q_158
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_12_Q : XORCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_11_Q_160,
      LI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_12_Q,
      O => gain1_quot_17_quot_17_mux_33_OUT_12_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_12_Q : MUXCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_11_Q_160,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_12_Q,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_12_Q_159
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_11_Q : XORCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_10_Q_161,
      LI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_11_Q,
      O => gain1_quot_17_quot_17_mux_33_OUT_11_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_11_Q : MUXCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_10_Q_161,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_11_Q,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_11_Q_160
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_10_Q : XORCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_9_Q_162,
      LI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_10_Q,
      O => gain1_quot_17_quot_17_mux_33_OUT_10_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_10_Q : MUXCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_9_Q_162,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_10_Q,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_10_Q_161
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_9_Q : XORCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_8_Q_163,
      LI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_9_Q,
      O => gain1_quot_17_quot_17_mux_33_OUT_9_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_9_Q : MUXCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_8_Q_163,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_9_Q,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_9_Q_162
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_8_Q : XORCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_7_Q_164,
      LI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_8_Q,
      O => gain1_quot_17_quot_17_mux_33_OUT_8_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_8_Q : MUXCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_7_Q_164,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_8_Q,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_8_Q_163
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_7_Q : XORCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_6_Q_165,
      LI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_7_Q,
      O => gain1_quot_17_quot_17_mux_33_OUT_7_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_7_Q : MUXCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_6_Q_165,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_7_Q,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_7_Q_164
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_6_Q : XORCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_5_Q_166,
      LI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_6_Q,
      O => gain1_quot_17_quot_17_mux_33_OUT_6_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_6_Q : MUXCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_5_Q_166,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_6_Q,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_6_Q_165
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_5_Q : XORCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_4_Q_167,
      LI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_5_Q,
      O => gain1_quot_17_quot_17_mux_33_OUT_5_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_5_Q : MUXCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_4_Q_167,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_5_Q,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_5_Q_166
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_4_Q : XORCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_3_Q_168,
      LI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_4_Q,
      O => gain1_quot_17_quot_17_mux_33_OUT_4_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_4_Q : MUXCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_3_Q_168,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_4_Q,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_4_Q_167
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_3_Q : XORCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_2_Q_169,
      LI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_3_Q,
      O => gain1_quot_17_quot_17_mux_33_OUT_3_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_3_Q : MUXCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_2_Q_169,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_3_Q,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_3_Q_168
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_2_Q : XORCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_1_Q_170,
      LI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_2_Q,
      O => gain1_quot_17_quot_17_mux_33_OUT_2_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_2_Q : MUXCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_1_Q_170,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_2_Q,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_2_Q_169
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_1_Q : XORCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_0_Q_171,
      LI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_1_Q,
      O => gain1_quot_17_quot_17_mux_33_OUT_1_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_1_Q : MUXCY
    port map (
      CI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_0_Q_171,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_1_Q,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_1_Q_170
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_0_Q : XORCY
    port map (
      CI => ac97_cont0_rst_counter(12),
      LI => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_lut_0_Q_172,
      O => gain1_quot_17_quot_17_mux_33_OUT_0_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_0_Q : MUXCY
    port map (
      CI => ac97_cont0_rst_counter(12),
      DI => N0,
      S => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_lut_0_Q_172,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_0_Q_171
    );
  gain1_Mmux_count_4_X_7_o_Mux_19_o_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain1_count(0),
      I1 => gain1_in_latch(16),
      I2 => gain1_in_latch(17),
      O => gain1_Mmux_count_4_X_7_o_Mux_19_o_3_173
    );
  gain1_Mmux_count_4_X_7_o_Mux_19_o_8 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => gain1_count(1),
      I1 => gain1_count(0),
      I2 => gain1_in_latch(2),
      I3 => gain1_in_latch(3),
      I4 => gain1_in_latch(1),
      I5 => gain1_in_latch(0),
      O => gain1_Mmux_count_4_X_7_o_Mux_19_o_8_174
    );
  gain1_Mmux_count_4_X_7_o_Mux_19_o_9 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => gain1_count(1),
      I1 => gain1_count(0),
      I2 => gain1_in_latch(6),
      I3 => gain1_in_latch(7),
      I4 => gain1_in_latch(5),
      I5 => gain1_in_latch(4),
      O => gain1_Mmux_count_4_X_7_o_Mux_19_o_9_175
    );
  gain1_Mmux_count_4_X_7_o_Mux_19_o_91 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => gain1_count(1),
      I1 => gain1_count(0),
      I2 => gain1_in_latch(10),
      I3 => gain1_in_latch(11),
      I4 => gain1_in_latch(9),
      I5 => gain1_in_latch(8),
      O => gain1_Mmux_count_4_X_7_o_Mux_19_o_91_176
    );
  gain1_Mmux_count_4_X_7_o_Mux_19_o_10 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => gain1_count(1),
      I1 => gain1_count(0),
      I2 => gain1_in_latch(14),
      I3 => gain1_in_latch(15),
      I4 => gain1_in_latch(13),
      I5 => gain1_in_latch(12),
      O => gain1_Mmux_count_4_X_7_o_Mux_19_o_10_177
    );
  gain1_Mmux_count_4_X_7_o_Mux_19_o_4 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => gain1_count(3),
      I1 => gain1_count(2),
      I2 => gain1_Mmux_count_4_X_7_o_Mux_19_o_91_176,
      I3 => gain1_Mmux_count_4_X_7_o_Mux_19_o_10_177,
      I4 => gain1_Mmux_count_4_X_7_o_Mux_19_o_9_175,
      I5 => gain1_Mmux_count_4_X_7_o_Mux_19_o_8_174,
      O => gain1_Mmux_count_4_X_7_o_Mux_19_o_4_178
    );
  gain1_Mmux_count_4_X_7_o_Mux_19_o_2_f7 : MUXF7
    port map (
      I0 => gain1_Mmux_count_4_X_7_o_Mux_19_o_4_178,
      I1 => gain1_Mmux_count_4_X_7_o_Mux_19_o_3_173,
      S => gain1_count(4),
      O => gain1_count_4_X_7_o_Mux_19_o
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_17_Q : XORCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_16_Q_179,
      LI => gain1_n0124(17),
      O => gain1_in_latch_17_GND_7_o_add_14_OUT_17_Q
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_16_Q : XORCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_15_Q_180,
      LI => gain1_n0124(16),
      O => gain1_in_latch_17_GND_7_o_add_14_OUT_16_Q
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_16_Q : MUXCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_15_Q_180,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_n0124(16),
      O => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_16_Q_179
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_15_Q : XORCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_14_Q_181,
      LI => gain1_n0124(15),
      O => gain1_in_latch_17_GND_7_o_add_14_OUT_15_Q
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_15_Q : MUXCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_14_Q_181,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_n0124(15),
      O => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_15_Q_180
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_14_Q : XORCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_13_Q_182,
      LI => gain1_n0124(14),
      O => gain1_in_latch_17_GND_7_o_add_14_OUT_14_Q
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_14_Q : MUXCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_13_Q_182,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_n0124(14),
      O => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_14_Q_181
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_13_Q : XORCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_12_Q_183,
      LI => gain1_n0124(13),
      O => gain1_in_latch_17_GND_7_o_add_14_OUT_13_Q
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_13_Q : MUXCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_12_Q_183,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_n0124(13),
      O => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_13_Q_182
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_12_Q : XORCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_11_Q_184,
      LI => gain1_n0124(12),
      O => gain1_in_latch_17_GND_7_o_add_14_OUT_12_Q
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_12_Q : MUXCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_11_Q_184,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_n0124(12),
      O => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_12_Q_183
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_11_Q : XORCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_10_Q_185,
      LI => gain1_n0124(11),
      O => gain1_in_latch_17_GND_7_o_add_14_OUT_11_Q
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_11_Q : MUXCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_10_Q_185,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_n0124(11),
      O => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_11_Q_184
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_10_Q : XORCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_9_Q_186,
      LI => gain1_n0124(10),
      O => gain1_in_latch_17_GND_7_o_add_14_OUT_10_Q
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_10_Q : MUXCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_9_Q_186,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_n0124(10),
      O => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_10_Q_185
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_9_Q : XORCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_8_Q_187,
      LI => gain1_n0124(9),
      O => gain1_in_latch_17_GND_7_o_add_14_OUT_9_Q
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_9_Q : MUXCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_8_Q_187,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_n0124(9),
      O => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_9_Q_186
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_8_Q : XORCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_7_Q_188,
      LI => gain1_n0124(8),
      O => gain1_in_latch_17_GND_7_o_add_14_OUT_8_Q
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_8_Q : MUXCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_7_Q_188,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_n0124(8),
      O => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_8_Q_187
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_7_Q : XORCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_6_Q_189,
      LI => gain1_n0124(7),
      O => gain1_in_latch_17_GND_7_o_add_14_OUT_7_Q
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_7_Q : MUXCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_6_Q_189,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_n0124(7),
      O => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_7_Q_188
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_6_Q : XORCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_5_Q_190,
      LI => gain1_n0124(6),
      O => gain1_in_latch_17_GND_7_o_add_14_OUT_6_Q
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_6_Q : MUXCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_5_Q_190,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_n0124(6),
      O => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_6_Q_189
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_5_Q : XORCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_4_Q_191,
      LI => gain1_n0124(5),
      O => gain1_in_latch_17_GND_7_o_add_14_OUT_5_Q
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_5_Q : MUXCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_4_Q_191,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_n0124(5),
      O => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_5_Q_190
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_4_Q : XORCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_3_Q_192,
      LI => gain1_n0124(4),
      O => gain1_in_latch_17_GND_7_o_add_14_OUT_4_Q
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_4_Q : MUXCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_3_Q_192,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_n0124(4),
      O => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_4_Q_191
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_3_Q : XORCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_2_Q_193,
      LI => gain1_n0124(3),
      O => gain1_in_latch_17_GND_7_o_add_14_OUT_3_Q
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_3_Q : MUXCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_2_Q_193,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_n0124(3),
      O => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_3_Q_192
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_2_Q : XORCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_1_Q_194,
      LI => gain1_n0124(2),
      O => gain1_in_latch_17_GND_7_o_add_14_OUT_2_Q
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_2_Q : MUXCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_1_Q_194,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_n0124(2),
      O => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_2_Q_193
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_1_Q : XORCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_Q_195,
      LI => gain1_n0124(1),
      O => gain1_in_latch_17_GND_7_o_add_14_OUT_1_Q
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_1_Q : MUXCY
    port map (
      CI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_Q_195,
      DI => ac97_cont0_rst_counter(12),
      S => gain1_n0124(1),
      O => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_1_Q_194
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_0_Q : XORCY
    port map (
      CI => ac97_cont0_rst_counter(12),
      LI => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_rt_1061,
      O => gain1_in_latch_17_GND_7_o_add_14_OUT_0_Q
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_Q : MUXCY
    port map (
      CI => ac97_cont0_rst_counter(12),
      DI => N0,
      S => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_rt_1061,
      O => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_Q_195
    );
  gain1_Mcompar_n0027_cy_3_Q : MUXCY
    port map (
      CI => gain1_Mcompar_n0027_cy(2),
      DI => gain1_Mcompar_n0027_lutdi3_200,
      S => gain1_Mcompar_n0027_lut(3),
      O => gain1_Mcompar_n0027_cy(3)
    );
  gain1_Mcompar_n0027_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => gain1_remainder(8),
      I1 => gain1_remainder(9),
      I2 => gain1_remainder(10),
      I3 => gain1_remainder(11),
      I4 => gain1_remainder(12),
      O => gain1_Mcompar_n0027_lut(3)
    );
  gain1_Mcompar_n0027_lutdi3 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => gain1_remainder(12),
      I1 => gain1_remainder(11),
      I2 => gain1_remainder(10),
      I3 => gain1_remainder(9),
      I4 => gain1_remainder(8),
      O => gain1_Mcompar_n0027_lutdi3_200
    );
  gain1_Mcompar_n0027_cy_2_Q : MUXCY
    port map (
      CI => gain1_Mcompar_n0027_cy(1),
      DI => gain1_Mcompar_n0027_lutdi2_203,
      S => gain1_Mcompar_n0027_lut(2),
      O => gain1_Mcompar_n0027_cy(2)
    );
  gain1_Mcompar_n0027_lut_2_Q : LUT5
    generic map(
      INIT => X"01000001"
    )
    port map (
      I0 => gain1_remainder(5),
      I1 => gain1_remainder(6),
      I2 => gain1_remainder(7),
      I3 => gain1_remainder(4),
      I4 => gain1_gain_pos(4),
      O => gain1_Mcompar_n0027_lut(2)
    );
  gain1_Mcompar_n0027_lutdi2 : LUT5
    generic map(
      INIT => X"FFFFEEFE"
    )
    port map (
      I0 => gain1_remainder(5),
      I1 => gain1_remainder(7),
      I2 => gain1_remainder(4),
      I3 => gain1_gain_pos(4),
      I4 => gain1_remainder(6),
      O => gain1_Mcompar_n0027_lutdi2_203
    );
  gain1_Mcompar_n0027_cy_1_Q : MUXCY
    port map (
      CI => gain1_Mcompar_n0027_cy(0),
      DI => gain1_Mcompar_n0027_lutdi1_206,
      S => gain1_Mcompar_n0027_lut(1),
      O => gain1_Mcompar_n0027_cy(1)
    );
  gain1_Mcompar_n0027_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => gain1_gain_pos(2),
      I1 => gain1_remainder(2),
      I2 => gain1_gain_pos(3),
      I3 => gain1_remainder(3),
      O => gain1_Mcompar_n0027_lut(1)
    );
  gain1_Mcompar_n0027_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => gain1_remainder(3),
      I1 => gain1_remainder(2),
      I2 => gain1_gain_pos(2),
      I3 => gain1_gain_pos(3),
      O => gain1_Mcompar_n0027_lutdi1_206
    );
  gain1_Mcompar_n0027_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => gain1_Mcompar_n0027_lutdi_209,
      S => gain1_Mcompar_n0027_lut(0),
      O => gain1_Mcompar_n0027_cy(0)
    );
  gain1_Mcompar_n0027_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => gain1_gain_pos(0),
      I1 => gain1_remainder(0),
      I2 => gain1_gain_pos(1),
      I3 => gain1_remainder(1),
      O => gain1_Mcompar_n0027_lut(0)
    );
  gain1_Mcompar_n0027_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => gain1_remainder(1),
      I1 => gain1_remainder(0),
      I2 => gain1_gain_pos(0),
      I3 => gain1_gain_pos(1),
      O => gain1_Mcompar_n0027_lutdi_209
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_xor_17_Q : XORCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_16_Q_211,
      LI => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_17_Q_210,
      O => gain1_remainder_17_gain_4_add_25_OUT_17_Q
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_17_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_remainder(17),
      I1 => gain1_gain(4),
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_17_Q_210
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_xor_16_Q : XORCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_15_Q_213,
      LI => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_16_Q_212,
      O => gain1_remainder_17_gain_4_add_25_OUT_16_Q
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_16_Q : MUXCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_15_Q_213,
      DI => gain1_remainder(16),
      S => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_16_Q_212,
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_16_Q_211
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_16_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_remainder(16),
      I1 => gain1_gain(4),
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_16_Q_212
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_xor_15_Q : XORCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_14_Q_215,
      LI => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_15_Q_214,
      O => gain1_remainder_17_gain_4_add_25_OUT_15_Q
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_15_Q : MUXCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_14_Q_215,
      DI => gain1_remainder(15),
      S => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_15_Q_214,
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_15_Q_213
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_15_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_remainder(15),
      I1 => gain1_gain(4),
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_15_Q_214
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_xor_14_Q : XORCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_13_Q_217,
      LI => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_14_Q_216,
      O => gain1_remainder_17_gain_4_add_25_OUT_14_Q
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_14_Q : MUXCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_13_Q_217,
      DI => gain1_remainder(14),
      S => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_14_Q_216,
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_14_Q_215
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_14_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_remainder(14),
      I1 => gain1_gain(4),
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_14_Q_216
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_xor_13_Q : XORCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_12_Q_219,
      LI => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_13_Q_218,
      O => gain1_remainder_17_gain_4_add_25_OUT_13_Q
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_13_Q : MUXCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_12_Q_219,
      DI => gain1_remainder(13),
      S => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_13_Q_218,
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_13_Q_217
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_13_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_remainder(13),
      I1 => gain1_gain(4),
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_13_Q_218
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_xor_12_Q : XORCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_11_Q_221,
      LI => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_12_Q_220,
      O => gain1_remainder_17_gain_4_add_25_OUT_12_Q
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_12_Q : MUXCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_11_Q_221,
      DI => gain1_remainder(12),
      S => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_12_Q_220,
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_12_Q_219
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_12_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_remainder(12),
      I1 => gain1_gain(4),
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_12_Q_220
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_xor_11_Q : XORCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_10_Q_223,
      LI => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_11_Q_222,
      O => gain1_remainder_17_gain_4_add_25_OUT_11_Q
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_11_Q : MUXCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_10_Q_223,
      DI => gain1_remainder(11),
      S => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_11_Q_222,
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_11_Q_221
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_11_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_remainder(11),
      I1 => gain1_gain(4),
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_11_Q_222
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_xor_10_Q : XORCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_9_Q_225,
      LI => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_10_Q_224,
      O => gain1_remainder_17_gain_4_add_25_OUT_10_Q
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_10_Q : MUXCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_9_Q_225,
      DI => gain1_remainder(10),
      S => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_10_Q_224,
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_10_Q_223
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_remainder(10),
      I1 => gain1_gain(4),
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_10_Q_224
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_xor_9_Q : XORCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_8_Q_227,
      LI => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_9_Q_226,
      O => gain1_remainder_17_gain_4_add_25_OUT_9_Q
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_9_Q : MUXCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_8_Q_227,
      DI => gain1_remainder(9),
      S => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_9_Q_226,
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_9_Q_225
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_remainder(9),
      I1 => gain1_gain(4),
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_9_Q_226
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_xor_8_Q : XORCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_7_Q_229,
      LI => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_8_Q_228,
      O => gain1_remainder_17_gain_4_add_25_OUT_8_Q
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_8_Q : MUXCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_7_Q_229,
      DI => gain1_remainder(8),
      S => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_8_Q_228,
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_8_Q_227
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_remainder(8),
      I1 => gain1_gain(4),
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_8_Q_228
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_xor_7_Q : XORCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_6_Q_231,
      LI => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_7_Q_230,
      O => gain1_remainder_17_gain_4_add_25_OUT_7_Q
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_7_Q : MUXCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_6_Q_231,
      DI => gain1_remainder(7),
      S => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_7_Q_230,
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_7_Q_229
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_remainder(7),
      I1 => gain1_gain(4),
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_7_Q_230
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_xor_6_Q : XORCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_5_Q_233,
      LI => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_6_Q_232,
      O => gain1_remainder_17_gain_4_add_25_OUT_6_Q
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_6_Q : MUXCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_5_Q_233,
      DI => gain1_remainder(6),
      S => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_6_Q_232,
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_6_Q_231
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_remainder(6),
      I1 => gain1_gain(4),
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_6_Q_232
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_xor_5_Q : XORCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_4_Q_235,
      LI => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_5_Q_234,
      O => gain1_remainder_17_gain_4_add_25_OUT_5_Q
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_5_Q : MUXCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_4_Q_235,
      DI => gain1_remainder(5),
      S => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_5_Q_234,
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_5_Q_233
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_remainder(5),
      I1 => gain1_gain(4),
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_5_Q_234
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_xor_4_Q : XORCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_3_Q_237,
      LI => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_4_Q_236,
      O => gain1_remainder_17_gain_4_add_25_OUT_4_Q
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_4_Q : MUXCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_3_Q_237,
      DI => gain1_remainder(4),
      S => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_4_Q_236,
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_4_Q_235
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_remainder(4),
      I1 => gain1_gain(4),
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_4_Q_236
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_xor_3_Q : XORCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_2_Q_239,
      LI => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_3_Q_238,
      O => gain1_remainder_17_gain_4_add_25_OUT_3_Q
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_3_Q : MUXCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_2_Q_239,
      DI => gain1_remainder(3),
      S => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_3_Q_238,
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_3_Q_237
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_remainder(3),
      I1 => gain1_gain(3),
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_3_Q_238
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_xor_2_Q : XORCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_1_Q_241,
      LI => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_2_Q_240,
      O => gain1_remainder_17_gain_4_add_25_OUT_2_Q
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_2_Q : MUXCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_1_Q_241,
      DI => gain1_remainder(2),
      S => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_2_Q_240,
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_2_Q_239
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_remainder(2),
      I1 => gain1_gain(2),
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_2_Q_240
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_xor_1_Q : XORCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_0_Q_243,
      LI => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_1_Q_242,
      O => gain1_remainder_17_gain_4_add_25_OUT_1_Q
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_1_Q : MUXCY
    port map (
      CI => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_0_Q_243,
      DI => gain1_remainder(1),
      S => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_1_Q_242,
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_1_Q_241
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_remainder(1),
      I1 => gain1_gain(1),
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_1_Q_242
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_xor_0_Q : XORCY
    port map (
      CI => ac97_cont0_rst_counter(12),
      LI => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_0_Q_244,
      O => gain1_remainder_17_gain_4_add_25_OUT_0_Q
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_0_Q : MUXCY
    port map (
      CI => ac97_cont0_rst_counter(12),
      DI => gain1_remainder(0),
      S => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_0_Q_244,
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_cy_0_Q_243
    );
  gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_remainder(0),
      I1 => gain1_gain(0),
      O => gain1_Madd_remainder_17_gain_4_add_25_OUT_lut_0_Q_244
    );
  gain1_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_state_FSM_FFd1_In,
      Q => gain1_state_FSM_FFd1_447
    );
  gain1_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_state_FSM_FFd2_In,
      Q => gain1_state_FSM_FFd2_446
    );
  gain1_state_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_state_FSM_FFd3_In,
      Q => gain1_state_FSM_FFd3_445
    );
  gain1_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0214_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_Mcount_count4,
      Q => gain1_count(4)
    );
  gain1_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0214_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_Mcount_count3,
      Q => gain1_count(3)
    );
  gain1_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0214_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_Mcount_count2,
      Q => gain1_count(2)
    );
  gain1_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0214_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_Mcount_count1,
      Q => gain1_count(1)
    );
  gain1_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0214_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_Mcount_count,
      Q => gain1_count(0)
    );
  gain1_Mcount_count_xor_4_Q : XORCY
    port map (
      CI => gain1_Mcount_count_cy(3),
      LI => gain1_Mcount_count_lut(4),
      O => gain1_Mcount_count4
    );
  gain1_Mcount_count_xor_3_Q : XORCY
    port map (
      CI => gain1_Mcount_count_cy(2),
      LI => gain1_Mcount_count_lut(3),
      O => gain1_Mcount_count3
    );
  gain1_Mcount_count_cy_3_Q : MUXCY
    port map (
      CI => gain1_Mcount_count_cy(2),
      DI => N0,
      S => gain1_Mcount_count_lut(3),
      O => gain1_Mcount_count_cy(3)
    );
  gain1_Mcount_count_xor_2_Q : XORCY
    port map (
      CI => gain1_Mcount_count_cy(1),
      LI => gain1_Mcount_count_lut(2),
      O => gain1_Mcount_count2
    );
  gain1_Mcount_count_cy_2_Q : MUXCY
    port map (
      CI => gain1_Mcount_count_cy(1),
      DI => N0,
      S => gain1_Mcount_count_lut(2),
      O => gain1_Mcount_count_cy(2)
    );
  gain1_Mcount_count_xor_1_Q : XORCY
    port map (
      CI => gain1_Mcount_count_cy(0),
      LI => gain1_Mcount_count_lut(1),
      O => gain1_Mcount_count1
    );
  gain1_Mcount_count_cy_1_Q : MUXCY
    port map (
      CI => gain1_Mcount_count_cy(0),
      DI => N0,
      S => gain1_Mcount_count_lut(1),
      O => gain1_Mcount_count_cy(1)
    );
  gain1_Mcount_count_xor_0_Q : XORCY
    port map (
      CI => gain1_state_1_inv,
      LI => gain1_Mcount_count_lut(0),
      O => gain1_Mcount_count
    );
  gain1_Mcount_count_cy_0_Q : MUXCY
    port map (
      CI => gain1_state_1_inv,
      DI => N0,
      S => gain1_Mcount_count_lut(0),
      O => gain1_Mcount_count_cy(0)
    );
  gain1_remainder_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0158(17),
      Q => gain1_remainder(17)
    );
  gain1_remainder_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0158(16),
      Q => gain1_remainder(16)
    );
  gain1_remainder_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0158(15),
      Q => gain1_remainder(15)
    );
  gain1_remainder_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0158(14),
      Q => gain1_remainder(14)
    );
  gain1_remainder_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0158(13),
      Q => gain1_remainder(13)
    );
  gain1_remainder_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0158(12),
      Q => gain1_remainder(12)
    );
  gain1_remainder_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0158(11),
      Q => gain1_remainder(11)
    );
  gain1_remainder_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0158(10),
      Q => gain1_remainder(10)
    );
  gain1_remainder_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0158(9),
      Q => gain1_remainder(9)
    );
  gain1_remainder_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0158(8),
      Q => gain1_remainder(8)
    );
  gain1_remainder_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0158(7),
      Q => gain1_remainder(7)
    );
  gain1_remainder_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0158(6),
      Q => gain1_remainder(6)
    );
  gain1_remainder_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0158(5),
      Q => gain1_remainder(5)
    );
  gain1_remainder_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0158(4),
      Q => gain1_remainder(4)
    );
  gain1_remainder_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0158(3),
      Q => gain1_remainder(3)
    );
  gain1_remainder_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0158(2),
      Q => gain1_remainder(2)
    );
  gain1_remainder_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0158(1),
      Q => gain1_remainder(1)
    );
  gain1_remainder_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0158(0),
      Q => gain1_remainder(0)
    );
  gain1_quot_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_quot_next(17),
      Q => gain1_quot(17)
    );
  gain1_quot_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_quot_next(16),
      Q => gain1_quot(16)
    );
  gain1_quot_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_quot_next(15),
      Q => gain1_quot(15)
    );
  gain1_quot_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_quot_next(14),
      Q => gain1_quot(14)
    );
  gain1_quot_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_quot_next(13),
      Q => gain1_quot(13)
    );
  gain1_quot_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_quot_next(12),
      Q => gain1_quot(12)
    );
  gain1_quot_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_quot_next(11),
      Q => gain1_quot(11)
    );
  gain1_quot_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_quot_next(10),
      Q => gain1_quot(10)
    );
  gain1_quot_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_quot_next(9),
      Q => gain1_quot(9)
    );
  gain1_quot_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_quot_next(8),
      Q => gain1_quot(8)
    );
  gain1_quot_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_quot_next(7),
      Q => gain1_quot(7)
    );
  gain1_quot_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_quot_next(6),
      Q => gain1_quot(6)
    );
  gain1_quot_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_quot_next(5),
      Q => gain1_quot(5)
    );
  gain1_quot_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_quot_next(4),
      Q => gain1_quot(4)
    );
  gain1_quot_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_quot_next(3),
      Q => gain1_quot(3)
    );
  gain1_quot_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_quot_next(2),
      Q => gain1_quot(2)
    );
  gain1_quot_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_quot_next(1),
      Q => gain1_quot(1)
    );
  gain1_quot_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_quot_next(0),
      Q => gain1_quot(0)
    );
  gain1_in_latch_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0141(17),
      Q => gain1_in_latch(17)
    );
  gain1_in_latch_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0141(16),
      Q => gain1_in_latch(16)
    );
  gain1_in_latch_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0141(15),
      Q => gain1_in_latch(15)
    );
  gain1_in_latch_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0141(14),
      Q => gain1_in_latch(14)
    );
  gain1_in_latch_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0141(13),
      Q => gain1_in_latch(13)
    );
  gain1_in_latch_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0141(12),
      Q => gain1_in_latch(12)
    );
  gain1_in_latch_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0141(11),
      Q => gain1_in_latch(11)
    );
  gain1_in_latch_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0141(10),
      Q => gain1_in_latch(10)
    );
  gain1_in_latch_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0141(9),
      Q => gain1_in_latch(9)
    );
  gain1_in_latch_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0141(8),
      Q => gain1_in_latch(8)
    );
  gain1_in_latch_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0141(7),
      Q => gain1_in_latch(7)
    );
  gain1_in_latch_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0141(6),
      Q => gain1_in_latch(6)
    );
  gain1_in_latch_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0141(5),
      Q => gain1_in_latch(5)
    );
  gain1_in_latch_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0141(4),
      Q => gain1_in_latch(4)
    );
  gain1_in_latch_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0141(3),
      Q => gain1_in_latch(3)
    );
  gain1_in_latch_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0141(2),
      Q => gain1_in_latch(2)
    );
  gain1_in_latch_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0141(1),
      Q => gain1_in_latch(1)
    );
  gain1_in_latch_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_n0141(0),
      Q => gain1_in_latch(0)
    );
  gain1_output_ready : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => gain1_state_2_X_7_o_Mux_43_o,
      G => gain1_state_2_PWR_10_o_Mux_44_o,
      Q => gain1_output_ready_65
    );
  gain1_gain_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_gain_pos_4_GND_7_o_add_17_OUT_4_Q,
      Q => gain1_gain(4)
    );
  gain1_gain_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_gain_pos_4_GND_7_o_add_17_OUT_3_Q,
      Q => gain1_gain(3)
    );
  gain1_gain_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_gain_pos_4_GND_7_o_add_17_OUT_2_Q,
      Q => gain1_gain(2)
    );
  gain1_gain_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_gain_pos_4_GND_7_o_add_17_OUT_1_Q,
      Q => gain1_gain(1)
    );
  gain1_gain_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0155_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => gain1_gain_pos(0),
      Q => gain1_gain(0)
    );
  gain1_s : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => ac97_cont0_right_in_data(19),
      Q => gain1_s_396
    );
  gain1_gain_pos_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => VOLUME_4_IBUF_3,
      Q => gain1_gain_pos(4)
    );
  gain1_gain_pos_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => VOLUME_3_IBUF_4,
      Q => gain1_gain_pos(3)
    );
  gain1_gain_pos_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => VOLUME_2_IBUF_5,
      Q => gain1_gain_pos(2)
    );
  gain1_gain_pos_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => VOLUME_1_IBUF_6,
      Q => gain1_gain_pos(1)
    );
  gain1_gain_pos_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain1_n0176_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => VOLUME_0_IBUF_7,
      Q => gain1_gain_pos(0)
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_17_Q : XORCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_16_Q_474,
      LI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_17_Q,
      O => gain0_quot_17_quot_17_mux_33_OUT_17_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_16_Q : XORCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_15_Q_475,
      LI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_16_Q,
      O => gain0_quot_17_quot_17_mux_33_OUT_16_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_16_Q : MUXCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_15_Q_475,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_16_Q,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_16_Q_474
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_15_Q : XORCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_14_Q_476,
      LI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_15_Q,
      O => gain0_quot_17_quot_17_mux_33_OUT_15_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_15_Q : MUXCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_14_Q_476,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_15_Q,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_15_Q_475
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_14_Q : XORCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_13_Q_477,
      LI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_14_Q,
      O => gain0_quot_17_quot_17_mux_33_OUT_14_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_14_Q : MUXCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_13_Q_477,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_14_Q,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_14_Q_476
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_13_Q : XORCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_12_Q_478,
      LI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_13_Q,
      O => gain0_quot_17_quot_17_mux_33_OUT_13_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_13_Q : MUXCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_12_Q_478,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_13_Q,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_13_Q_477
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_12_Q : XORCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_11_Q_479,
      LI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_12_Q,
      O => gain0_quot_17_quot_17_mux_33_OUT_12_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_12_Q : MUXCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_11_Q_479,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_12_Q,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_12_Q_478
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_11_Q : XORCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_10_Q_480,
      LI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_11_Q,
      O => gain0_quot_17_quot_17_mux_33_OUT_11_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_11_Q : MUXCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_10_Q_480,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_11_Q,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_11_Q_479
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_10_Q : XORCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_9_Q_481,
      LI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_10_Q,
      O => gain0_quot_17_quot_17_mux_33_OUT_10_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_10_Q : MUXCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_9_Q_481,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_10_Q,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_10_Q_480
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_9_Q : XORCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_8_Q_482,
      LI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_9_Q,
      O => gain0_quot_17_quot_17_mux_33_OUT_9_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_9_Q : MUXCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_8_Q_482,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_9_Q,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_9_Q_481
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_8_Q : XORCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_7_Q_483,
      LI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_8_Q,
      O => gain0_quot_17_quot_17_mux_33_OUT_8_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_8_Q : MUXCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_7_Q_483,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_8_Q,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_8_Q_482
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_7_Q : XORCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_6_Q_484,
      LI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_7_Q,
      O => gain0_quot_17_quot_17_mux_33_OUT_7_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_7_Q : MUXCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_6_Q_484,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_7_Q,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_7_Q_483
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_6_Q : XORCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_5_Q_485,
      LI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_6_Q,
      O => gain0_quot_17_quot_17_mux_33_OUT_6_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_6_Q : MUXCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_5_Q_485,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_6_Q,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_6_Q_484
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_5_Q : XORCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_4_Q_486,
      LI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_5_Q,
      O => gain0_quot_17_quot_17_mux_33_OUT_5_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_5_Q : MUXCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_4_Q_486,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_5_Q,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_5_Q_485
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_4_Q : XORCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_3_Q_487,
      LI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_4_Q,
      O => gain0_quot_17_quot_17_mux_33_OUT_4_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_4_Q : MUXCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_3_Q_487,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_4_Q,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_4_Q_486
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_3_Q : XORCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_2_Q_488,
      LI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_3_Q,
      O => gain0_quot_17_quot_17_mux_33_OUT_3_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_3_Q : MUXCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_2_Q_488,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_3_Q,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_3_Q_487
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_2_Q : XORCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_1_Q_489,
      LI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_2_Q,
      O => gain0_quot_17_quot_17_mux_33_OUT_2_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_2_Q : MUXCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_1_Q_489,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_2_Q,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_2_Q_488
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_1_Q : XORCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_0_Q_490,
      LI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_1_Q,
      O => gain0_quot_17_quot_17_mux_33_OUT_1_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_1_Q : MUXCY
    port map (
      CI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_0_Q_490,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_1_Q,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_1_Q_489
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_xor_0_Q : XORCY
    port map (
      CI => ac97_cont0_rst_counter(12),
      LI => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_lut_0_Q_491,
      O => gain0_quot_17_quot_17_mux_33_OUT_0_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_0_Q : MUXCY
    port map (
      CI => ac97_cont0_rst_counter(12),
      DI => N0,
      S => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_lut_0_Q_491,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_cy_0_Q_490
    );
  gain0_Mmux_count_4_X_7_o_Mux_19_o_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain0_count(0),
      I1 => gain0_in_latch(16),
      I2 => gain0_in_latch(17),
      O => gain0_Mmux_count_4_X_7_o_Mux_19_o_3_492
    );
  gain0_Mmux_count_4_X_7_o_Mux_19_o_8 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => gain0_count(1),
      I1 => gain0_count(0),
      I2 => gain0_in_latch(2),
      I3 => gain0_in_latch(3),
      I4 => gain0_in_latch(1),
      I5 => gain0_in_latch(0),
      O => gain0_Mmux_count_4_X_7_o_Mux_19_o_8_493
    );
  gain0_Mmux_count_4_X_7_o_Mux_19_o_9 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => gain0_count(1),
      I1 => gain0_count(0),
      I2 => gain0_in_latch(6),
      I3 => gain0_in_latch(7),
      I4 => gain0_in_latch(5),
      I5 => gain0_in_latch(4),
      O => gain0_Mmux_count_4_X_7_o_Mux_19_o_9_494
    );
  gain0_Mmux_count_4_X_7_o_Mux_19_o_91 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => gain0_count(1),
      I1 => gain0_count(0),
      I2 => gain0_in_latch(10),
      I3 => gain0_in_latch(11),
      I4 => gain0_in_latch(9),
      I5 => gain0_in_latch(8),
      O => gain0_Mmux_count_4_X_7_o_Mux_19_o_91_495
    );
  gain0_Mmux_count_4_X_7_o_Mux_19_o_10 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => gain0_count(1),
      I1 => gain0_count(0),
      I2 => gain0_in_latch(14),
      I3 => gain0_in_latch(15),
      I4 => gain0_in_latch(13),
      I5 => gain0_in_latch(12),
      O => gain0_Mmux_count_4_X_7_o_Mux_19_o_10_496
    );
  gain0_Mmux_count_4_X_7_o_Mux_19_o_4 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => gain0_count(3),
      I1 => gain0_count(2),
      I2 => gain0_Mmux_count_4_X_7_o_Mux_19_o_91_495,
      I3 => gain0_Mmux_count_4_X_7_o_Mux_19_o_10_496,
      I4 => gain0_Mmux_count_4_X_7_o_Mux_19_o_9_494,
      I5 => gain0_Mmux_count_4_X_7_o_Mux_19_o_8_493,
      O => gain0_Mmux_count_4_X_7_o_Mux_19_o_4_497
    );
  gain0_Mmux_count_4_X_7_o_Mux_19_o_2_f7 : MUXF7
    port map (
      I0 => gain0_Mmux_count_4_X_7_o_Mux_19_o_4_497,
      I1 => gain0_Mmux_count_4_X_7_o_Mux_19_o_3_492,
      S => gain0_count(4),
      O => gain0_count_4_X_7_o_Mux_19_o
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_17_Q : XORCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_16_Q_498,
      LI => gain0_n0124(17),
      O => gain0_in_latch_17_GND_7_o_add_14_OUT_17_Q
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_16_Q : XORCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_15_Q_499,
      LI => gain0_n0124(16),
      O => gain0_in_latch_17_GND_7_o_add_14_OUT_16_Q
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_16_Q : MUXCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_15_Q_499,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_n0124(16),
      O => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_16_Q_498
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_15_Q : XORCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_14_Q_500,
      LI => gain0_n0124(15),
      O => gain0_in_latch_17_GND_7_o_add_14_OUT_15_Q
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_15_Q : MUXCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_14_Q_500,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_n0124(15),
      O => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_15_Q_499
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_14_Q : XORCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_13_Q_501,
      LI => gain0_n0124(14),
      O => gain0_in_latch_17_GND_7_o_add_14_OUT_14_Q
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_14_Q : MUXCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_13_Q_501,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_n0124(14),
      O => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_14_Q_500
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_13_Q : XORCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_12_Q_502,
      LI => gain0_n0124(13),
      O => gain0_in_latch_17_GND_7_o_add_14_OUT_13_Q
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_13_Q : MUXCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_12_Q_502,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_n0124(13),
      O => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_13_Q_501
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_12_Q : XORCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_11_Q_503,
      LI => gain0_n0124(12),
      O => gain0_in_latch_17_GND_7_o_add_14_OUT_12_Q
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_12_Q : MUXCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_11_Q_503,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_n0124(12),
      O => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_12_Q_502
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_11_Q : XORCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_10_Q_504,
      LI => gain0_n0124(11),
      O => gain0_in_latch_17_GND_7_o_add_14_OUT_11_Q
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_11_Q : MUXCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_10_Q_504,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_n0124(11),
      O => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_11_Q_503
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_10_Q : XORCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_9_Q_505,
      LI => gain0_n0124(10),
      O => gain0_in_latch_17_GND_7_o_add_14_OUT_10_Q
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_10_Q : MUXCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_9_Q_505,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_n0124(10),
      O => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_10_Q_504
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_9_Q : XORCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_8_Q_506,
      LI => gain0_n0124(9),
      O => gain0_in_latch_17_GND_7_o_add_14_OUT_9_Q
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_9_Q : MUXCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_8_Q_506,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_n0124(9),
      O => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_9_Q_505
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_8_Q : XORCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_7_Q_507,
      LI => gain0_n0124(8),
      O => gain0_in_latch_17_GND_7_o_add_14_OUT_8_Q
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_8_Q : MUXCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_7_Q_507,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_n0124(8),
      O => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_8_Q_506
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_7_Q : XORCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_6_Q_508,
      LI => gain0_n0124(7),
      O => gain0_in_latch_17_GND_7_o_add_14_OUT_7_Q
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_7_Q : MUXCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_6_Q_508,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_n0124(7),
      O => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_7_Q_507
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_6_Q : XORCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_5_Q_509,
      LI => gain0_n0124(6),
      O => gain0_in_latch_17_GND_7_o_add_14_OUT_6_Q
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_6_Q : MUXCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_5_Q_509,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_n0124(6),
      O => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_6_Q_508
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_5_Q : XORCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_4_Q_510,
      LI => gain0_n0124(5),
      O => gain0_in_latch_17_GND_7_o_add_14_OUT_5_Q
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_5_Q : MUXCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_4_Q_510,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_n0124(5),
      O => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_5_Q_509
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_4_Q : XORCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_3_Q_511,
      LI => gain0_n0124(4),
      O => gain0_in_latch_17_GND_7_o_add_14_OUT_4_Q
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_4_Q : MUXCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_3_Q_511,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_n0124(4),
      O => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_4_Q_510
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_3_Q : XORCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_2_Q_512,
      LI => gain0_n0124(3),
      O => gain0_in_latch_17_GND_7_o_add_14_OUT_3_Q
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_3_Q : MUXCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_2_Q_512,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_n0124(3),
      O => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_3_Q_511
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_2_Q : XORCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_1_Q_513,
      LI => gain0_n0124(2),
      O => gain0_in_latch_17_GND_7_o_add_14_OUT_2_Q
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_2_Q : MUXCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_1_Q_513,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_n0124(2),
      O => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_2_Q_512
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_1_Q : XORCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_Q_514,
      LI => gain0_n0124(1),
      O => gain0_in_latch_17_GND_7_o_add_14_OUT_1_Q
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_1_Q : MUXCY
    port map (
      CI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_Q_514,
      DI => ac97_cont0_rst_counter(12),
      S => gain0_n0124(1),
      O => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_1_Q_513
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_xor_0_Q : XORCY
    port map (
      CI => ac97_cont0_rst_counter(12),
      LI => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_rt_1062,
      O => gain0_in_latch_17_GND_7_o_add_14_OUT_0_Q
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_Q : MUXCY
    port map (
      CI => ac97_cont0_rst_counter(12),
      DI => N0,
      S => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_rt_1062,
      O => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_Q_514
    );
  gain0_Mcompar_n0027_cy_3_Q : MUXCY
    port map (
      CI => gain0_Mcompar_n0027_cy(2),
      DI => gain0_Mcompar_n0027_lutdi3_519,
      S => gain0_Mcompar_n0027_lut(3),
      O => gain0_Mcompar_n0027_cy(3)
    );
  gain0_Mcompar_n0027_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => gain0_remainder(8),
      I1 => gain0_remainder(9),
      I2 => gain0_remainder(10),
      I3 => gain0_remainder(11),
      I4 => gain0_remainder(12),
      O => gain0_Mcompar_n0027_lut(3)
    );
  gain0_Mcompar_n0027_lutdi3 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => gain0_remainder(12),
      I1 => gain0_remainder(11),
      I2 => gain0_remainder(10),
      I3 => gain0_remainder(9),
      I4 => gain0_remainder(8),
      O => gain0_Mcompar_n0027_lutdi3_519
    );
  gain0_Mcompar_n0027_cy_2_Q : MUXCY
    port map (
      CI => gain0_Mcompar_n0027_cy(1),
      DI => gain0_Mcompar_n0027_lutdi2_522,
      S => gain0_Mcompar_n0027_lut(2),
      O => gain0_Mcompar_n0027_cy(2)
    );
  gain0_Mcompar_n0027_lut_2_Q : LUT5
    generic map(
      INIT => X"01000001"
    )
    port map (
      I0 => gain0_remainder(5),
      I1 => gain0_remainder(6),
      I2 => gain0_remainder(7),
      I3 => gain0_remainder(4),
      I4 => gain0_gain_pos(4),
      O => gain0_Mcompar_n0027_lut(2)
    );
  gain0_Mcompar_n0027_lutdi2 : LUT5
    generic map(
      INIT => X"FFFFEEFE"
    )
    port map (
      I0 => gain0_remainder(5),
      I1 => gain0_remainder(7),
      I2 => gain0_remainder(4),
      I3 => gain0_gain_pos(4),
      I4 => gain0_remainder(6),
      O => gain0_Mcompar_n0027_lutdi2_522
    );
  gain0_Mcompar_n0027_cy_1_Q : MUXCY
    port map (
      CI => gain0_Mcompar_n0027_cy(0),
      DI => gain0_Mcompar_n0027_lutdi1_525,
      S => gain0_Mcompar_n0027_lut(1),
      O => gain0_Mcompar_n0027_cy(1)
    );
  gain0_Mcompar_n0027_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => gain0_gain_pos(2),
      I1 => gain0_remainder(2),
      I2 => gain0_gain_pos(3),
      I3 => gain0_remainder(3),
      O => gain0_Mcompar_n0027_lut(1)
    );
  gain0_Mcompar_n0027_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => gain0_remainder(3),
      I1 => gain0_remainder(2),
      I2 => gain0_gain_pos(2),
      I3 => gain0_gain_pos(3),
      O => gain0_Mcompar_n0027_lutdi1_525
    );
  gain0_Mcompar_n0027_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => gain0_Mcompar_n0027_lutdi_528,
      S => gain0_Mcompar_n0027_lut(0),
      O => gain0_Mcompar_n0027_cy(0)
    );
  gain0_Mcompar_n0027_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => gain0_gain_pos(0),
      I1 => gain0_remainder(0),
      I2 => gain0_gain_pos(1),
      I3 => gain0_remainder(1),
      O => gain0_Mcompar_n0027_lut(0)
    );
  gain0_Mcompar_n0027_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => gain0_remainder(1),
      I1 => gain0_remainder(0),
      I2 => gain0_gain_pos(0),
      I3 => gain0_gain_pos(1),
      O => gain0_Mcompar_n0027_lutdi_528
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_xor_17_Q : XORCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_16_Q_530,
      LI => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_17_Q_529,
      O => gain0_remainder_17_gain_4_add_25_OUT_17_Q
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_17_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_remainder(17),
      I1 => gain0_gain(4),
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_17_Q_529
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_xor_16_Q : XORCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_15_Q_532,
      LI => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_16_Q_531,
      O => gain0_remainder_17_gain_4_add_25_OUT_16_Q
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_16_Q : MUXCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_15_Q_532,
      DI => gain0_remainder(16),
      S => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_16_Q_531,
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_16_Q_530
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_16_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_remainder(16),
      I1 => gain0_gain(4),
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_16_Q_531
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_xor_15_Q : XORCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_14_Q_534,
      LI => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_15_Q_533,
      O => gain0_remainder_17_gain_4_add_25_OUT_15_Q
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_15_Q : MUXCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_14_Q_534,
      DI => gain0_remainder(15),
      S => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_15_Q_533,
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_15_Q_532
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_15_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_remainder(15),
      I1 => gain0_gain(4),
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_15_Q_533
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_xor_14_Q : XORCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_13_Q_536,
      LI => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_14_Q_535,
      O => gain0_remainder_17_gain_4_add_25_OUT_14_Q
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_14_Q : MUXCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_13_Q_536,
      DI => gain0_remainder(14),
      S => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_14_Q_535,
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_14_Q_534
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_14_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_remainder(14),
      I1 => gain0_gain(4),
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_14_Q_535
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_xor_13_Q : XORCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_12_Q_538,
      LI => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_13_Q_537,
      O => gain0_remainder_17_gain_4_add_25_OUT_13_Q
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_13_Q : MUXCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_12_Q_538,
      DI => gain0_remainder(13),
      S => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_13_Q_537,
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_13_Q_536
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_13_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_remainder(13),
      I1 => gain0_gain(4),
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_13_Q_537
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_xor_12_Q : XORCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_11_Q_540,
      LI => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_12_Q_539,
      O => gain0_remainder_17_gain_4_add_25_OUT_12_Q
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_12_Q : MUXCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_11_Q_540,
      DI => gain0_remainder(12),
      S => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_12_Q_539,
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_12_Q_538
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_12_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_remainder(12),
      I1 => gain0_gain(4),
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_12_Q_539
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_xor_11_Q : XORCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_10_Q_542,
      LI => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_11_Q_541,
      O => gain0_remainder_17_gain_4_add_25_OUT_11_Q
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_11_Q : MUXCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_10_Q_542,
      DI => gain0_remainder(11),
      S => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_11_Q_541,
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_11_Q_540
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_11_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_remainder(11),
      I1 => gain0_gain(4),
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_11_Q_541
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_xor_10_Q : XORCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_9_Q_544,
      LI => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_10_Q_543,
      O => gain0_remainder_17_gain_4_add_25_OUT_10_Q
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_10_Q : MUXCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_9_Q_544,
      DI => gain0_remainder(10),
      S => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_10_Q_543,
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_10_Q_542
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_remainder(10),
      I1 => gain0_gain(4),
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_10_Q_543
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_xor_9_Q : XORCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_8_Q_546,
      LI => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_9_Q_545,
      O => gain0_remainder_17_gain_4_add_25_OUT_9_Q
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_9_Q : MUXCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_8_Q_546,
      DI => gain0_remainder(9),
      S => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_9_Q_545,
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_9_Q_544
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_remainder(9),
      I1 => gain0_gain(4),
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_9_Q_545
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_xor_8_Q : XORCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_7_Q_548,
      LI => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_8_Q_547,
      O => gain0_remainder_17_gain_4_add_25_OUT_8_Q
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_8_Q : MUXCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_7_Q_548,
      DI => gain0_remainder(8),
      S => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_8_Q_547,
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_8_Q_546
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_remainder(8),
      I1 => gain0_gain(4),
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_8_Q_547
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_xor_7_Q : XORCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_6_Q_550,
      LI => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_7_Q_549,
      O => gain0_remainder_17_gain_4_add_25_OUT_7_Q
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_7_Q : MUXCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_6_Q_550,
      DI => gain0_remainder(7),
      S => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_7_Q_549,
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_7_Q_548
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_remainder(7),
      I1 => gain0_gain(4),
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_7_Q_549
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_xor_6_Q : XORCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_5_Q_552,
      LI => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_6_Q_551,
      O => gain0_remainder_17_gain_4_add_25_OUT_6_Q
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_6_Q : MUXCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_5_Q_552,
      DI => gain0_remainder(6),
      S => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_6_Q_551,
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_6_Q_550
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_remainder(6),
      I1 => gain0_gain(4),
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_6_Q_551
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_xor_5_Q : XORCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_4_Q_554,
      LI => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_5_Q_553,
      O => gain0_remainder_17_gain_4_add_25_OUT_5_Q
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_5_Q : MUXCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_4_Q_554,
      DI => gain0_remainder(5),
      S => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_5_Q_553,
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_5_Q_552
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_remainder(5),
      I1 => gain0_gain(4),
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_5_Q_553
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_xor_4_Q : XORCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_3_Q_556,
      LI => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_4_Q_555,
      O => gain0_remainder_17_gain_4_add_25_OUT_4_Q
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_4_Q : MUXCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_3_Q_556,
      DI => gain0_remainder(4),
      S => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_4_Q_555,
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_4_Q_554
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_remainder(4),
      I1 => gain0_gain(4),
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_4_Q_555
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_xor_3_Q : XORCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_2_Q_558,
      LI => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_3_Q_557,
      O => gain0_remainder_17_gain_4_add_25_OUT_3_Q
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_3_Q : MUXCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_2_Q_558,
      DI => gain0_remainder(3),
      S => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_3_Q_557,
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_3_Q_556
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_remainder(3),
      I1 => gain0_gain(3),
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_3_Q_557
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_xor_2_Q : XORCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_1_Q_560,
      LI => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_2_Q_559,
      O => gain0_remainder_17_gain_4_add_25_OUT_2_Q
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_2_Q : MUXCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_1_Q_560,
      DI => gain0_remainder(2),
      S => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_2_Q_559,
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_2_Q_558
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_remainder(2),
      I1 => gain0_gain(2),
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_2_Q_559
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_xor_1_Q : XORCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_0_Q_562,
      LI => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_1_Q_561,
      O => gain0_remainder_17_gain_4_add_25_OUT_1_Q
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_1_Q : MUXCY
    port map (
      CI => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_0_Q_562,
      DI => gain0_remainder(1),
      S => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_1_Q_561,
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_1_Q_560
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_remainder(1),
      I1 => gain0_gain(1),
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_1_Q_561
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_xor_0_Q : XORCY
    port map (
      CI => ac97_cont0_rst_counter(12),
      LI => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_0_Q_563,
      O => gain0_remainder_17_gain_4_add_25_OUT_0_Q
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_0_Q : MUXCY
    port map (
      CI => ac97_cont0_rst_counter(12),
      DI => gain0_remainder(0),
      S => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_0_Q_563,
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_cy_0_Q_562
    );
  gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_remainder(0),
      I1 => gain0_gain(0),
      O => gain0_Madd_remainder_17_gain_4_add_25_OUT_lut_0_Q_563
    );
  gain0_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_state_FSM_FFd1_In,
      Q => gain0_state_FSM_FFd1_766
    );
  gain0_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_state_FSM_FFd2_In,
      Q => gain0_state_FSM_FFd2_765
    );
  gain0_state_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_state_FSM_FFd3_In,
      Q => gain0_state_FSM_FFd3_764
    );
  gain0_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0214_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_Mcount_count4,
      Q => gain0_count(4)
    );
  gain0_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0214_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_Mcount_count3,
      Q => gain0_count(3)
    );
  gain0_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0214_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_Mcount_count2,
      Q => gain0_count(2)
    );
  gain0_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0214_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_Mcount_count1,
      Q => gain0_count(1)
    );
  gain0_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0214_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_Mcount_count,
      Q => gain0_count(0)
    );
  gain0_Mcount_count_xor_4_Q : XORCY
    port map (
      CI => gain0_Mcount_count_cy(3),
      LI => gain0_Mcount_count_lut(4),
      O => gain0_Mcount_count4
    );
  gain0_Mcount_count_xor_3_Q : XORCY
    port map (
      CI => gain0_Mcount_count_cy(2),
      LI => gain0_Mcount_count_lut(3),
      O => gain0_Mcount_count3
    );
  gain0_Mcount_count_cy_3_Q : MUXCY
    port map (
      CI => gain0_Mcount_count_cy(2),
      DI => N0,
      S => gain0_Mcount_count_lut(3),
      O => gain0_Mcount_count_cy(3)
    );
  gain0_Mcount_count_xor_2_Q : XORCY
    port map (
      CI => gain0_Mcount_count_cy(1),
      LI => gain0_Mcount_count_lut(2),
      O => gain0_Mcount_count2
    );
  gain0_Mcount_count_cy_2_Q : MUXCY
    port map (
      CI => gain0_Mcount_count_cy(1),
      DI => N0,
      S => gain0_Mcount_count_lut(2),
      O => gain0_Mcount_count_cy(2)
    );
  gain0_Mcount_count_xor_1_Q : XORCY
    port map (
      CI => gain0_Mcount_count_cy(0),
      LI => gain0_Mcount_count_lut(1),
      O => gain0_Mcount_count1
    );
  gain0_Mcount_count_cy_1_Q : MUXCY
    port map (
      CI => gain0_Mcount_count_cy(0),
      DI => N0,
      S => gain0_Mcount_count_lut(1),
      O => gain0_Mcount_count_cy(1)
    );
  gain0_Mcount_count_xor_0_Q : XORCY
    port map (
      CI => gain0_state_1_inv,
      LI => gain0_Mcount_count_lut(0),
      O => gain0_Mcount_count
    );
  gain0_Mcount_count_cy_0_Q : MUXCY
    port map (
      CI => gain0_state_1_inv,
      DI => N0,
      S => gain0_Mcount_count_lut(0),
      O => gain0_Mcount_count_cy(0)
    );
  gain0_remainder_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0158(17),
      Q => gain0_remainder(17)
    );
  gain0_remainder_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0158(16),
      Q => gain0_remainder(16)
    );
  gain0_remainder_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0158(15),
      Q => gain0_remainder(15)
    );
  gain0_remainder_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0158(14),
      Q => gain0_remainder(14)
    );
  gain0_remainder_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0158(13),
      Q => gain0_remainder(13)
    );
  gain0_remainder_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0158(12),
      Q => gain0_remainder(12)
    );
  gain0_remainder_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0158(11),
      Q => gain0_remainder(11)
    );
  gain0_remainder_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0158(10),
      Q => gain0_remainder(10)
    );
  gain0_remainder_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0158(9),
      Q => gain0_remainder(9)
    );
  gain0_remainder_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0158(8),
      Q => gain0_remainder(8)
    );
  gain0_remainder_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0158(7),
      Q => gain0_remainder(7)
    );
  gain0_remainder_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0158(6),
      Q => gain0_remainder(6)
    );
  gain0_remainder_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0158(5),
      Q => gain0_remainder(5)
    );
  gain0_remainder_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0158(4),
      Q => gain0_remainder(4)
    );
  gain0_remainder_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0158(3),
      Q => gain0_remainder(3)
    );
  gain0_remainder_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0158(2),
      Q => gain0_remainder(2)
    );
  gain0_remainder_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0158(1),
      Q => gain0_remainder(1)
    );
  gain0_remainder_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0158(0),
      Q => gain0_remainder(0)
    );
  gain0_quot_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_quot_next(17),
      Q => gain0_quot(17)
    );
  gain0_quot_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_quot_next(16),
      Q => gain0_quot(16)
    );
  gain0_quot_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_quot_next(15),
      Q => gain0_quot(15)
    );
  gain0_quot_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_quot_next(14),
      Q => gain0_quot(14)
    );
  gain0_quot_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_quot_next(13),
      Q => gain0_quot(13)
    );
  gain0_quot_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_quot_next(12),
      Q => gain0_quot(12)
    );
  gain0_quot_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_quot_next(11),
      Q => gain0_quot(11)
    );
  gain0_quot_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_quot_next(10),
      Q => gain0_quot(10)
    );
  gain0_quot_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_quot_next(9),
      Q => gain0_quot(9)
    );
  gain0_quot_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_quot_next(8),
      Q => gain0_quot(8)
    );
  gain0_quot_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_quot_next(7),
      Q => gain0_quot(7)
    );
  gain0_quot_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_quot_next(6),
      Q => gain0_quot(6)
    );
  gain0_quot_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_quot_next(5),
      Q => gain0_quot(5)
    );
  gain0_quot_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_quot_next(4),
      Q => gain0_quot(4)
    );
  gain0_quot_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_quot_next(3),
      Q => gain0_quot(3)
    );
  gain0_quot_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_quot_next(2),
      Q => gain0_quot(2)
    );
  gain0_quot_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_quot_next(1),
      Q => gain0_quot(1)
    );
  gain0_quot_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0198_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_quot_next(0),
      Q => gain0_quot(0)
    );
  gain0_in_latch_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0141(17),
      Q => gain0_in_latch(17)
    );
  gain0_in_latch_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0141(16),
      Q => gain0_in_latch(16)
    );
  gain0_in_latch_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0141(15),
      Q => gain0_in_latch(15)
    );
  gain0_in_latch_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0141(14),
      Q => gain0_in_latch(14)
    );
  gain0_in_latch_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0141(13),
      Q => gain0_in_latch(13)
    );
  gain0_in_latch_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0141(12),
      Q => gain0_in_latch(12)
    );
  gain0_in_latch_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0141(11),
      Q => gain0_in_latch(11)
    );
  gain0_in_latch_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0141(10),
      Q => gain0_in_latch(10)
    );
  gain0_in_latch_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0141(9),
      Q => gain0_in_latch(9)
    );
  gain0_in_latch_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0141(8),
      Q => gain0_in_latch(8)
    );
  gain0_in_latch_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0141(7),
      Q => gain0_in_latch(7)
    );
  gain0_in_latch_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0141(6),
      Q => gain0_in_latch(6)
    );
  gain0_in_latch_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0141(5),
      Q => gain0_in_latch(5)
    );
  gain0_in_latch_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0141(4),
      Q => gain0_in_latch(4)
    );
  gain0_in_latch_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0141(3),
      Q => gain0_in_latch(3)
    );
  gain0_in_latch_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0141(2),
      Q => gain0_in_latch(2)
    );
  gain0_in_latch_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0141(1),
      Q => gain0_in_latch(1)
    );
  gain0_in_latch_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_n0141(0),
      Q => gain0_in_latch(0)
    );
  gain0_output_ready : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => gain0_state_2_X_7_o_Mux_43_o,
      G => gain0_state_2_PWR_10_o_Mux_44_o,
      Q => gain0_output_ready_46
    );
  gain0_gain_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_gain_pos_4_GND_7_o_add_17_OUT_4_Q,
      Q => gain0_gain(4)
    );
  gain0_gain_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_gain_pos_4_GND_7_o_add_17_OUT_3_Q,
      Q => gain0_gain(3)
    );
  gain0_gain_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_gain_pos_4_GND_7_o_add_17_OUT_2_Q,
      Q => gain0_gain(2)
    );
  gain0_gain_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_gain_pos_4_GND_7_o_add_17_OUT_1_Q,
      Q => gain0_gain(1)
    );
  gain0_gain_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0155_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => gain0_gain_pos(0),
      Q => gain0_gain(0)
    );
  gain0_s : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => ac97_cont0_left_in_data(19),
      Q => gain0_s_715
    );
  gain0_gain_pos_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => VOLUME_4_IBUF_3,
      Q => gain0_gain_pos(4)
    );
  gain0_gain_pos_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => VOLUME_3_IBUF_4,
      Q => gain0_gain_pos(3)
    );
  gain0_gain_pos_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => VOLUME_2_IBUF_5,
      Q => gain0_gain_pos(2)
    );
  gain0_gain_pos_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => VOLUME_1_IBUF_6,
      Q => gain0_gain_pos(1)
    );
  gain0_gain_pos_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      CE => gain0_n0176_inv1,
      CLR => ac97_cont0_n_reset_inv,
      D => VOLUME_0_IBUF_7,
      Q => gain0_gain_pos(0)
    );
  ac97_cont0_Mcount_rst_counter_xor_11_Q : XORCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(10),
      LI => ac97_cont0_Mcount_rst_counter_xor_11_rt_1011,
      O => ac97_cont0_Result(11)
    );
  ac97_cont0_Mcount_rst_counter_xor_10_Q : XORCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(9),
      LI => ac97_cont0_Mcount_rst_counter_cy_10_rt_994,
      O => ac97_cont0_Result(10)
    );
  ac97_cont0_Mcount_rst_counter_cy_10_Q : MUXCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(9),
      DI => ac97_cont0_rst_counter(12),
      S => ac97_cont0_Mcount_rst_counter_cy_10_rt_994,
      O => ac97_cont0_Mcount_rst_counter_cy(10)
    );
  ac97_cont0_Mcount_rst_counter_xor_9_Q : XORCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(8),
      LI => ac97_cont0_Mcount_rst_counter_cy_9_rt_995,
      O => ac97_cont0_Result(9)
    );
  ac97_cont0_Mcount_rst_counter_cy_9_Q : MUXCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(8),
      DI => ac97_cont0_rst_counter(12),
      S => ac97_cont0_Mcount_rst_counter_cy_9_rt_995,
      O => ac97_cont0_Mcount_rst_counter_cy(9)
    );
  ac97_cont0_Mcount_rst_counter_xor_8_Q : XORCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(7),
      LI => ac97_cont0_Mcount_rst_counter_cy_8_rt_996,
      O => ac97_cont0_Result(8)
    );
  ac97_cont0_Mcount_rst_counter_cy_8_Q : MUXCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(7),
      DI => ac97_cont0_rst_counter(12),
      S => ac97_cont0_Mcount_rst_counter_cy_8_rt_996,
      O => ac97_cont0_Mcount_rst_counter_cy(8)
    );
  ac97_cont0_Mcount_rst_counter_xor_7_Q : XORCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(6),
      LI => ac97_cont0_Mcount_rst_counter_cy_7_rt_997,
      O => ac97_cont0_Result(7)
    );
  ac97_cont0_Mcount_rst_counter_cy_7_Q : MUXCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(6),
      DI => ac97_cont0_rst_counter(12),
      S => ac97_cont0_Mcount_rst_counter_cy_7_rt_997,
      O => ac97_cont0_Mcount_rst_counter_cy(7)
    );
  ac97_cont0_Mcount_rst_counter_xor_6_Q : XORCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(5),
      LI => ac97_cont0_Mcount_rst_counter_cy_6_rt_998,
      O => ac97_cont0_Result(6)
    );
  ac97_cont0_Mcount_rst_counter_cy_6_Q : MUXCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(5),
      DI => ac97_cont0_rst_counter(12),
      S => ac97_cont0_Mcount_rst_counter_cy_6_rt_998,
      O => ac97_cont0_Mcount_rst_counter_cy(6)
    );
  ac97_cont0_Mcount_rst_counter_xor_5_Q : XORCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(4),
      LI => ac97_cont0_Mcount_rst_counter_cy_5_rt_999,
      O => ac97_cont0_Result(5)
    );
  ac97_cont0_Mcount_rst_counter_cy_5_Q : MUXCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(4),
      DI => ac97_cont0_rst_counter(12),
      S => ac97_cont0_Mcount_rst_counter_cy_5_rt_999,
      O => ac97_cont0_Mcount_rst_counter_cy(5)
    );
  ac97_cont0_Mcount_rst_counter_xor_4_Q : XORCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(3),
      LI => ac97_cont0_Mcount_rst_counter_cy_4_rt_1000,
      O => ac97_cont0_Result(4)
    );
  ac97_cont0_Mcount_rst_counter_cy_4_Q : MUXCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(3),
      DI => ac97_cont0_rst_counter(12),
      S => ac97_cont0_Mcount_rst_counter_cy_4_rt_1000,
      O => ac97_cont0_Mcount_rst_counter_cy(4)
    );
  ac97_cont0_Mcount_rst_counter_xor_3_Q : XORCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(2),
      LI => ac97_cont0_Mcount_rst_counter_cy_3_rt_1001,
      O => ac97_cont0_Result(3)
    );
  ac97_cont0_Mcount_rst_counter_cy_3_Q : MUXCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(2),
      DI => ac97_cont0_rst_counter(12),
      S => ac97_cont0_Mcount_rst_counter_cy_3_rt_1001,
      O => ac97_cont0_Mcount_rst_counter_cy(3)
    );
  ac97_cont0_Mcount_rst_counter_xor_2_Q : XORCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(1),
      LI => ac97_cont0_Mcount_rst_counter_cy_2_rt_1002,
      O => ac97_cont0_Result(2)
    );
  ac97_cont0_Mcount_rst_counter_cy_2_Q : MUXCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(1),
      DI => ac97_cont0_rst_counter(12),
      S => ac97_cont0_Mcount_rst_counter_cy_2_rt_1002,
      O => ac97_cont0_Mcount_rst_counter_cy(2)
    );
  ac97_cont0_Mcount_rst_counter_xor_1_Q : XORCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(0),
      LI => ac97_cont0_Mcount_rst_counter_cy_1_rt_1003,
      O => ac97_cont0_Result(1)
    );
  ac97_cont0_Mcount_rst_counter_cy_1_Q : MUXCY
    port map (
      CI => ac97_cont0_Mcount_rst_counter_cy(0),
      DI => ac97_cont0_rst_counter(12),
      S => ac97_cont0_Mcount_rst_counter_cy_1_rt_1003,
      O => ac97_cont0_Mcount_rst_counter_cy(1)
    );
  ac97_cont0_Mcount_rst_counter_xor_0_Q : XORCY
    port map (
      CI => ac97_cont0_rst_counter(12),
      LI => ac97_cont0_Mcount_rst_counter_lut(0),
      O => ac97_cont0_Result(0)
    );
  ac97_cont0_Mcount_rst_counter_cy_0_Q : MUXCY
    port map (
      CI => ac97_cont0_rst_counter(12),
      DI => N0,
      S => ac97_cont0_Mcount_rst_counter_lut(0),
      O => ac97_cont0_Mcount_rst_counter_cy(0)
    );
  ac97_cont0_Mcount_bit_count_xor_7_Q : XORCY
    port map (
      CI => ac97_cont0_Mcount_bit_count_cy(6),
      LI => ac97_cont0_Mcount_bit_count_xor_7_rt_1012,
      O => ac97_cont0_Result_7_1
    );
  ac97_cont0_Mcount_bit_count_xor_6_Q : XORCY
    port map (
      CI => ac97_cont0_Mcount_bit_count_cy(5),
      LI => ac97_cont0_Mcount_bit_count_cy_6_rt_1004,
      O => ac97_cont0_Result_6_1
    );
  ac97_cont0_Mcount_bit_count_cy_6_Q : MUXCY
    port map (
      CI => ac97_cont0_Mcount_bit_count_cy(5),
      DI => ac97_cont0_rst_counter(12),
      S => ac97_cont0_Mcount_bit_count_cy_6_rt_1004,
      O => ac97_cont0_Mcount_bit_count_cy(6)
    );
  ac97_cont0_Mcount_bit_count_xor_5_Q : XORCY
    port map (
      CI => ac97_cont0_Mcount_bit_count_cy(4),
      LI => ac97_cont0_Mcount_bit_count_cy_5_rt_1005,
      O => ac97_cont0_Result_5_1
    );
  ac97_cont0_Mcount_bit_count_cy_5_Q : MUXCY
    port map (
      CI => ac97_cont0_Mcount_bit_count_cy(4),
      DI => ac97_cont0_rst_counter(12),
      S => ac97_cont0_Mcount_bit_count_cy_5_rt_1005,
      O => ac97_cont0_Mcount_bit_count_cy(5)
    );
  ac97_cont0_Mcount_bit_count_xor_4_Q : XORCY
    port map (
      CI => ac97_cont0_Mcount_bit_count_cy(3),
      LI => ac97_cont0_Mcount_bit_count_cy_4_rt_1006,
      O => ac97_cont0_Result_4_1
    );
  ac97_cont0_Mcount_bit_count_cy_4_Q : MUXCY
    port map (
      CI => ac97_cont0_Mcount_bit_count_cy(3),
      DI => ac97_cont0_rst_counter(12),
      S => ac97_cont0_Mcount_bit_count_cy_4_rt_1006,
      O => ac97_cont0_Mcount_bit_count_cy(4)
    );
  ac97_cont0_Mcount_bit_count_xor_3_Q : XORCY
    port map (
      CI => ac97_cont0_Mcount_bit_count_cy(2),
      LI => ac97_cont0_Mcount_bit_count_cy_3_rt_1007,
      O => ac97_cont0_Result_3_1
    );
  ac97_cont0_Mcount_bit_count_cy_3_Q : MUXCY
    port map (
      CI => ac97_cont0_Mcount_bit_count_cy(2),
      DI => ac97_cont0_rst_counter(12),
      S => ac97_cont0_Mcount_bit_count_cy_3_rt_1007,
      O => ac97_cont0_Mcount_bit_count_cy(3)
    );
  ac97_cont0_Mcount_bit_count_xor_2_Q : XORCY
    port map (
      CI => ac97_cont0_Mcount_bit_count_cy(1),
      LI => ac97_cont0_Mcount_bit_count_cy_2_rt_1008,
      O => ac97_cont0_Result_2_1
    );
  ac97_cont0_Mcount_bit_count_cy_2_Q : MUXCY
    port map (
      CI => ac97_cont0_Mcount_bit_count_cy(1),
      DI => ac97_cont0_rst_counter(12),
      S => ac97_cont0_Mcount_bit_count_cy_2_rt_1008,
      O => ac97_cont0_Mcount_bit_count_cy(2)
    );
  ac97_cont0_Mcount_bit_count_xor_1_Q : XORCY
    port map (
      CI => ac97_cont0_Mcount_bit_count_cy(0),
      LI => ac97_cont0_Mcount_bit_count_cy_1_rt_1009,
      O => ac97_cont0_Result_1_1
    );
  ac97_cont0_Mcount_bit_count_cy_1_Q : MUXCY
    port map (
      CI => ac97_cont0_Mcount_bit_count_cy(0),
      DI => ac97_cont0_rst_counter(12),
      S => ac97_cont0_Mcount_bit_count_cy_1_rt_1009,
      O => ac97_cont0_Mcount_bit_count_cy(1)
    );
  ac97_cont0_Mcount_bit_count_xor_0_Q : XORCY
    port map (
      CI => ac97_cont0_rst_counter(12),
      LI => ac97_cont0_Mcount_bit_count_lut_0_1,
      O => ac97_cont0_Result_0_1
    );
  ac97_cont0_Mcount_bit_count_cy_0_Q : MUXCY
    port map (
      CI => ac97_cont0_rst_counter(12),
      DI => N0,
      S => ac97_cont0_Mcount_bit_count_lut_0_1,
      O => ac97_cont0_Mcount_bit_count_cy(0)
    );
  ac97_cont0_bit_count_7 : FD
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_Result_7_1,
      Q => ac97_cont0_bit_count(7)
    );
  ac97_cont0_bit_count_6 : FD
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_Result_6_1,
      Q => ac97_cont0_bit_count(6)
    );
  ac97_cont0_bit_count_5 : FD
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_Result_5_1,
      Q => ac97_cont0_bit_count(5)
    );
  ac97_cont0_bit_count_4 : FD
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_Result_4_1,
      Q => ac97_cont0_bit_count(4)
    );
  ac97_cont0_bit_count_3 : FD
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_Result_3_1,
      Q => ac97_cont0_bit_count(3)
    );
  ac97_cont0_bit_count_2 : FD
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_Result_2_1,
      Q => ac97_cont0_bit_count(2)
    );
  ac97_cont0_bit_count_1 : FD
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_Result_1_1,
      Q => ac97_cont0_bit_count(1)
    );
  ac97_cont0_bit_count_0 : FD
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_Result_0_1,
      Q => ac97_cont0_bit_count(0)
    );
  ac97_cont0_rst_counter_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => ac97_cont0_Result(11),
      R => ac97_cont0_Mcount_rst_counter_val,
      Q => ac97_cont0_rst_counter(11)
    );
  ac97_cont0_rst_counter_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => ac97_cont0_Result(10),
      R => ac97_cont0_Mcount_rst_counter_val,
      Q => ac97_cont0_rst_counter(10)
    );
  ac97_cont0_rst_counter_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => ac97_cont0_Result(8),
      R => ac97_cont0_Mcount_rst_counter_val,
      Q => ac97_cont0_rst_counter(8)
    );
  ac97_cont0_rst_counter_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => ac97_cont0_Result(7),
      R => ac97_cont0_Mcount_rst_counter_val,
      Q => ac97_cont0_rst_counter(7)
    );
  ac97_cont0_rst_counter_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => ac97_cont0_Result(9),
      R => ac97_cont0_Mcount_rst_counter_val,
      Q => ac97_cont0_rst_counter(9)
    );
  ac97_cont0_rst_counter_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => ac97_cont0_Result(5),
      R => ac97_cont0_Mcount_rst_counter_val,
      Q => ac97_cont0_rst_counter(5)
    );
  ac97_cont0_rst_counter_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => ac97_cont0_Result(4),
      R => ac97_cont0_Mcount_rst_counter_val,
      Q => ac97_cont0_rst_counter(4)
    );
  ac97_cont0_rst_counter_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => ac97_cont0_Result(6),
      R => ac97_cont0_Mcount_rst_counter_val,
      Q => ac97_cont0_rst_counter(6)
    );
  ac97_cont0_rst_counter_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => ac97_cont0_Result(3),
      R => ac97_cont0_Mcount_rst_counter_val,
      Q => ac97_cont0_rst_counter(3)
    );
  ac97_cont0_rst_counter_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => ac97_cont0_Result(2),
      R => ac97_cont0_Mcount_rst_counter_val,
      Q => ac97_cont0_rst_counter(2)
    );
  ac97_cont0_rst_counter_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => ac97_cont0_Result(0),
      R => ac97_cont0_Mcount_rst_counter_val,
      Q => ac97_cont0_rst_counter(0)
    );
  ac97_cont0_rst_counter_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => ac97_cont0_Result(1),
      R => ac97_cont0_Mcount_rst_counter_val,
      Q => ac97_cont0_rst_counter(1)
    );
  ac97_cont0_latch_left_data_19 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_19_Q,
      Q => ac97_cont0_latch_left_data(19)
    );
  ac97_cont0_latch_left_data_18 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_18_Q,
      Q => ac97_cont0_latch_left_data(18)
    );
  ac97_cont0_latch_left_data_17 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_17_Q,
      Q => ac97_cont0_latch_left_data(17)
    );
  ac97_cont0_latch_left_data_16 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_16_Q,
      Q => ac97_cont0_latch_left_data(16)
    );
  ac97_cont0_latch_left_data_15 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_15_Q,
      Q => ac97_cont0_latch_left_data(15)
    );
  ac97_cont0_latch_left_data_14 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_14_Q,
      Q => ac97_cont0_latch_left_data(14)
    );
  ac97_cont0_latch_left_data_13 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_13_Q,
      Q => ac97_cont0_latch_left_data(13)
    );
  ac97_cont0_latch_left_data_12 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_12_Q,
      Q => ac97_cont0_latch_left_data(12)
    );
  ac97_cont0_latch_left_data_11 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_11_Q,
      Q => ac97_cont0_latch_left_data(11)
    );
  ac97_cont0_latch_left_data_10 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_10_Q,
      Q => ac97_cont0_latch_left_data(10)
    );
  ac97_cont0_latch_left_data_9 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_9_Q,
      Q => ac97_cont0_latch_left_data(9)
    );
  ac97_cont0_latch_left_data_8 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_8_Q,
      Q => ac97_cont0_latch_left_data(8)
    );
  ac97_cont0_latch_left_data_7 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_7_Q,
      Q => ac97_cont0_latch_left_data(7)
    );
  ac97_cont0_latch_left_data_6 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_6_Q,
      Q => ac97_cont0_latch_left_data(6)
    );
  ac97_cont0_latch_left_data_5 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_5_Q,
      Q => ac97_cont0_latch_left_data(5)
    );
  ac97_cont0_latch_left_data_4 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_4_Q,
      Q => ac97_cont0_latch_left_data(4)
    );
  ac97_cont0_latch_left_data_3 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_3_Q,
      Q => ac97_cont0_latch_left_data(3)
    );
  ac97_cont0_latch_left_data_2 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_2_Q,
      Q => ac97_cont0_latch_left_data(2)
    );
  ac97_cont0_latch_left_data_1 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_1_Q,
      Q => ac97_cont0_latch_left_data(1)
    );
  ac97_cont0_latch_left_data_0 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_n0195_inv,
      D => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_0_Q,
      Q => ac97_cont0_latch_left_data(0)
    );
  ac97_cont0_Q2 : FDR
    port map (
      C => clk_BUFGP_8,
      D => ac97_cont0_Q1_931,
      R => ac97_cont0_GND_6_o_bit_count_7_equal_21_o,
      Q => ac97_cont0_Q2_932
    );
  ac97_cont0_latch_cmd_data_19 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => cmd_data_15_Q,
      Q => ac97_cont0_latch_cmd_data_19_Q
    );
  ac97_cont0_latch_cmd_data_17 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => cmd_data_12_Q,
      Q => ac97_cont0_latch_cmd_data_17_Q
    );
  ac97_cont0_latch_cmd_data_15 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => cmd_data_11_Q,
      Q => ac97_cont0_latch_cmd_data_15_Q
    );
  ac97_cont0_latch_cmd_data_14 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => cmd_data_10_Q,
      Q => ac97_cont0_latch_cmd_data_14_Q
    );
  ac97_cont0_latch_cmd_data_13 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => cmd_data_9_Q,
      Q => ac97_cont0_latch_cmd_data_13_Q
    );
  ac97_cont0_latch_cmd_data_12 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => cmd_data_8_Q,
      Q => ac97_cont0_latch_cmd_data_12_Q
    );
  ac97_cont0_latch_cmd_data_10 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => cmd_data_6_Q,
      Q => ac97_cont0_latch_cmd_data_10_Q
    );
  ac97_cont0_latch_cmd_data_7 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => cmd_data_3_Q,
      Q => ac97_cont0_latch_cmd_data_7_Q
    );
  ac97_cont0_latch_cmd_data_5 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => cmd_data_1_Q,
      Q => ac97_cont0_latch_cmd_data_5_Q
    );
  ac97_cont0_latch_cmd_data_4 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => cmd_data_0_Q,
      Q => ac97_cont0_latch_cmd_data_4_Q
    );
  ac97_cont0_latch_right_data_19 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => R_bus(17),
      Q => ac97_cont0_latch_right_data(19)
    );
  ac97_cont0_latch_right_data_18 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => R_bus(16),
      Q => ac97_cont0_latch_right_data(18)
    );
  ac97_cont0_latch_right_data_17 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => R_bus(15),
      Q => ac97_cont0_latch_right_data(17)
    );
  ac97_cont0_latch_right_data_16 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => R_bus(14),
      Q => ac97_cont0_latch_right_data(16)
    );
  ac97_cont0_latch_right_data_15 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => R_bus(13),
      Q => ac97_cont0_latch_right_data(15)
    );
  ac97_cont0_latch_right_data_14 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => R_bus(12),
      Q => ac97_cont0_latch_right_data(14)
    );
  ac97_cont0_latch_right_data_13 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => R_bus(11),
      Q => ac97_cont0_latch_right_data(13)
    );
  ac97_cont0_latch_right_data_12 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => R_bus(10),
      Q => ac97_cont0_latch_right_data(12)
    );
  ac97_cont0_latch_right_data_11 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => R_bus(9),
      Q => ac97_cont0_latch_right_data(11)
    );
  ac97_cont0_latch_right_data_10 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => R_bus(8),
      Q => ac97_cont0_latch_right_data(10)
    );
  ac97_cont0_latch_right_data_9 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => R_bus(7),
      Q => ac97_cont0_latch_right_data(9)
    );
  ac97_cont0_latch_right_data_8 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => R_bus(6),
      Q => ac97_cont0_latch_right_data(8)
    );
  ac97_cont0_latch_right_data_7 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => R_bus(5),
      Q => ac97_cont0_latch_right_data(7)
    );
  ac97_cont0_latch_right_data_6 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => R_bus(4),
      Q => ac97_cont0_latch_right_data(6)
    );
  ac97_cont0_latch_right_data_5 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => R_bus(3),
      Q => ac97_cont0_latch_right_data(5)
    );
  ac97_cont0_latch_right_data_4 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => R_bus(2),
      Q => ac97_cont0_latch_right_data(4)
    );
  ac97_cont0_latch_right_data_3 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => R_bus(1),
      Q => ac97_cont0_latch_right_data(3)
    );
  ac97_cont0_latch_right_data_2 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => R_bus(0),
      Q => ac97_cont0_latch_right_data(2)
    );
  ac97_cont0_latch_cmd_addr_19 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => cmd_addr_7_Q,
      Q => ac97_cont0_latch_cmd_addr_19_Q
    );
  ac97_cont0_latch_cmd_addr_17 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => cmd_addr_5_Q,
      Q => ac97_cont0_latch_cmd_addr_17_Q
    );
  ac97_cont0_latch_cmd_addr_16 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => cmd_addr_4_Q,
      Q => ac97_cont0_latch_cmd_addr_16_Q
    );
  ac97_cont0_latch_cmd_addr_15 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => cmd_addr_3_Q,
      Q => ac97_cont0_latch_cmd_addr_15_Q
    );
  ac97_cont0_latch_cmd_addr_14 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => cmd_addr_2_Q,
      Q => ac97_cont0_latch_cmd_addr_14_Q
    );
  ac97_cont0_latch_cmd_addr_13 : FDE
    port map (
      C => BIT_CLK_BUFGP_11,
      CE => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      D => cmd_addr_1_Q,
      Q => ac97_cont0_latch_cmd_addr_13_Q
    );
  ac97cmd_cont0_cmd_21_1 : LUT4
    generic map(
      INIT => X"1410"
    )
    port map (
      I0 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd4_147,
      I2 => ac97cmd_cont0_cur_state_FSM_FFd2_149,
      I3 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      O => cmd_data_3_Q
    );
  ac97cmd_cont0_cmd_3_1 : LUT4
    generic map(
      INIT => X"6444"
    )
    port map (
      I0 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      I2 => ac97cmd_cont0_cur_state_FSM_FFd2_149,
      I3 => ac97cmd_cont0_cur_state_FSM_FFd4_147,
      O => cmd_addr_5_Q
    );
  ac97cmd_cont0_n0456_3_1 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => ac97cmd_cont0_cur_state_FSM_FFd2_149,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      I2 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      I3 => ac97cmd_cont0_cur_state_FSM_FFd4_147,
      O => cmd_data_6_Q
    );
  ac97cmd_cont0_cmd_16_1 : LUT5
    generic map(
      INIT => X"55554808"
    )
    port map (
      I0 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd2_149,
      I2 => ac97cmd_cont0_cur_state_FSM_FFd4_147,
      I3 => SOURCE_0_IBUF_2,
      I4 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      O => cmd_data_8_Q
    );
  ac97cmd_cont0_cmd_24_1 : LUT5
    generic map(
      INIT => X"02200200"
    )
    port map (
      I0 => ac97cmd_cont0_cur_state_FSM_FFd2_149,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      I2 => ac97cmd_cont0_cur_state_FSM_FFd4_147,
      I3 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      I4 => SOURCE_0_IBUF_2,
      O => cmd_data_0_Q
    );
  ac97cmd_cont0_cmd_15_1 : LUT5
    generic map(
      INIT => X"55554808"
    )
    port map (
      I0 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd2_149,
      I2 => ac97cmd_cont0_cur_state_FSM_FFd4_147,
      I3 => SOURCE_1_IBUF_1,
      I4 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      O => cmd_data_9_Q
    );
  ac97cmd_cont0_cmd_23_1 : LUT5
    generic map(
      INIT => X"02200200"
    )
    port map (
      I0 => ac97cmd_cont0_cur_state_FSM_FFd2_149,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      I2 => ac97cmd_cont0_cur_state_FSM_FFd4_147,
      I3 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      I4 => SOURCE_1_IBUF_1,
      O => cmd_data_1_Q
    );
  ac97cmd_cont0_cmd_4_1 : LUT4
    generic map(
      INIT => X"2270"
    )
    port map (
      I0 => ac97cmd_cont0_cur_state_FSM_FFd4_147,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      I2 => ac97cmd_cont0_cur_state_FSM_FFd2_149,
      I3 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      O => cmd_addr_4_Q
    );
  ac97cmd_cont0_cmd_13_1 : LUT4
    generic map(
      INIT => X"2722"
    )
    port map (
      I0 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      I2 => ac97cmd_cont0_cur_state_FSM_FFd4_147,
      I3 => ac97cmd_cont0_cur_state_FSM_FFd2_149,
      O => cmd_data_11_Q
    );
  ac97cmd_cont0_cmd_7_1 : LUT4
    generic map(
      INIT => X"222D"
    )
    port map (
      I0 => ac97cmd_cont0_cur_state_FSM_FFd4_147,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      I2 => ac97cmd_cont0_cur_state_FSM_FFd2_149,
      I3 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      O => cmd_addr_1_Q
    );
  ac97cmd_cont0_cmd_9_1 : LUT4
    generic map(
      INIT => X"6465"
    )
    port map (
      I0 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      I2 => ac97cmd_cont0_cur_state_FSM_FFd4_147,
      I3 => ac97cmd_cont0_cur_state_FSM_FFd2_149,
      O => cmd_data_15_Q
    );
  ac97cmd_cont0_cmd_6_1 : LUT4
    generic map(
      INIT => X"1426"
    )
    port map (
      I0 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd4_147,
      I2 => ac97cmd_cont0_cur_state_FSM_FFd2_149,
      I3 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      O => cmd_addr_2_Q
    );
  ac97cmd_cont0_cmd_2_1 : LUT5
    generic map(
      INIT => X"02200200"
    )
    port map (
      I0 => ac97cmd_cont0_cur_state_FSM_FFd2_149,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      I2 => ac97cmd_cont0_cur_state_FSM_FFd4_147,
      I3 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      I4 => SOURCE_2_IBUF_0,
      O => cmd_data_10_Q
    );
  ac97cmd_cont0_cmd_5_1 : LUT4
    generic map(
      INIT => X"1746"
    )
    port map (
      I0 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      I2 => ac97cmd_cont0_cur_state_FSM_FFd4_147,
      I3 => ac97cmd_cont0_cur_state_FSM_FFd2_149,
      O => cmd_addr_3_Q
    );
  ac97cmd_cont0_cur_state_FSM_FFd2_In1 : LUT5
    generic map(
      INIT => X"75FF20A8"
    )
    port map (
      I0 => ac97_cont0_ac97_ready_sig_105,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd4_147,
      I2 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      I3 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      I4 => ac97cmd_cont0_cur_state_FSM_FFd2_149,
      O => ac97cmd_cont0_cur_state_FSM_FFd2_In
    );
  ac97cmd_cont0_cur_state_FSM_FFd4_In1 : LUT5
    generic map(
      INIT => X"EEEE4C64"
    )
    port map (
      I0 => ac97_cont0_ac97_ready_sig_105,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd4_147,
      I2 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      I3 => ac97cmd_cont0_cur_state_FSM_FFd2_149,
      I4 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      O => ac97cmd_cont0_cur_state_FSM_FFd4_In
    );
  ac97cmd_cont0_cur_state_FSM_FFd3_In1 : LUT5
    generic map(
      INIT => X"646C646E"
    )
    port map (
      I0 => ac97_cont0_ac97_ready_sig_105,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      I2 => ac97cmd_cont0_cur_state_FSM_FFd2_149,
      I3 => ac97cmd_cont0_cur_state_FSM_FFd4_147,
      I4 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      O => ac97cmd_cont0_cur_state_FSM_FFd3_In
    );
  ac97cmd_cont0_cmd_12_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      O => cmd_data_12_Q
    );
  ac97cmd_cont0_cur_state_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => ac97_cont0_ac97_ready_sig_105,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd4_147,
      I2 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      I3 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      O => ac97cmd_cont0_cur_state_FSM_FFd1_In
    );
  ac97cmd_cont0_cmd_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ac97cmd_cont0_cur_state_FSM_FFd1_150,
      I1 => ac97cmd_cont0_cur_state_FSM_FFd3_148,
      O => cmd_addr_7_Q
    );
  gain1_count_4_Decoder_26_OUT_16_4_11 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => gain1_count(3),
      I1 => gain1_count(2),
      I2 => gain1_count(1),
      I3 => gain1_count(4),
      O => gain1_count_4_Decoder_26_OUT_16_4_1
    );
  gain1_Mmux_quot_next91 : LUT6
    generic map(
      INIT => X"EEEAEAEA44404040"
    )
    port map (
      I0 => gain1_state_FSM_FFd1_447,
      I1 => gain1_state_FSM_FFd2_446,
      I2 => gain1_quot(17),
      I3 => gain1_count(0),
      I4 => gain1_count_4_Decoder_26_OUT_16_4_1,
      I5 => gain1_quot_17_quot_17_mux_33_OUT_17_Q,
      O => gain1_quot_next(17)
    );
  gain1_Mmux_quot_next81 : LUT6
    generic map(
      INIT => X"EAEEEAEA40444040"
    )
    port map (
      I0 => gain1_state_FSM_FFd1_447,
      I1 => gain1_state_FSM_FFd2_446,
      I2 => gain1_quot(16),
      I3 => gain1_count(0),
      I4 => gain1_count_4_Decoder_26_OUT_16_4_1,
      I5 => gain1_quot_17_quot_17_mux_33_OUT_16_Q,
      O => gain1_quot_next(16)
    );
  gain1_state_FSM_FFd1_In11 : LUT4
    generic map(
      INIT => X"5540"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => gain1_state_FSM_FFd2_446,
      I2 => gain1_n0176_inv_bdd4,
      I3 => gain1_state_FSM_FFd1_447,
      O => gain1_state_FSM_FFd1_In
    );
  gain1_state_FSM_FFd2_In11 : LUT4
    generic map(
      INIT => X"8ACE"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_n0176_inv_bdd4,
      I3 => gain1_state_FSM_FFd1_447,
      O => gain1_state_FSM_FFd2_In
    );
  gain1_n0176_inv51 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => gain1_count(0),
      I1 => gain1_count(1),
      I2 => gain1_count(2),
      I3 => gain1_count(3),
      I4 => gain1_count(4),
      O => gain1_n0176_inv_bdd4
    );
  gain1_state_FSM_FFd3_In11 : LUT5
    generic map(
      INIT => X"55551054"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => gain1_state_FSM_FFd2_446,
      I2 => ac97_cont0_ac97_ready_sig_105,
      I3 => gain1_n0176_inv_bdd4,
      I4 => gain1_state_FSM_FFd1_447,
      O => gain1_state_FSM_FFd3_In
    );
  gain1_n0155_inv21 : LUT5
    generic map(
      INIT => X"11011000"
    )
    port map (
      I0 => gain1_state_FSM_FFd1_447,
      I1 => gain1_state_FSM_FFd2_446,
      I2 => gain1_state_FSM_FFd3_445,
      I3 => gain1_s_396,
      I4 => ac97_cont0_ac97_ready_sig_105,
      O => gain1_n0155_inv
    );
  gain1_n0176_inv111 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => gain1_state_FSM_FFd1_447,
      I2 => gain1_state_FSM_FFd2_446,
      I3 => ac97_cont0_ac97_ready_sig_105,
      O => gain1_n0176_inv1
    );
  gain1_n0155_inv111 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => gain1_state_FSM_FFd1_447,
      I2 => gain1_state_FSM_FFd2_446,
      O => gain1_n0155_inv1
    );
  gain1_state_2_PWR_10_o_Mux_44_o1 : LUT3
    generic map(
      INIT => X"89"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => gain1_state_FSM_FFd1_447,
      I2 => gain1_state_FSM_FFd2_446,
      O => gain1_state_2_PWR_10_o_Mux_44_o
    );
  gain1_n0176_inv21 : LUT6
    generic map(
      INIT => X"4151405001110010"
    )
    port map (
      I0 => gain1_state_FSM_FFd1_447,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_state_FSM_FFd2_446,
      I3 => gain1_n0176_inv_bdd4,
      I4 => ac97_cont0_ac97_ready_sig_105,
      I5 => gain1_Mcompar_n0027_cy(4),
      O => gain1_n0176_inv
    );
  gain1_n0198_inv21 : LUT5
    generic map(
      INIT => X"55985510"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => gain1_state_FSM_FFd2_446,
      I2 => ac97_cont0_ac97_ready_sig_105,
      I3 => gain1_state_FSM_FFd1_447,
      I4 => gain1_Mcompar_n0027_cy(4),
      O => gain1_n0198_inv
    );
  gain1_gain_pos_4_GND_7_o_add_17_OUT_4_1 : LUT5
    generic map(
      INIT => X"55555556"
    )
    port map (
      I0 => gain1_gain_pos(4),
      I1 => gain1_gain_pos(2),
      I2 => gain1_gain_pos(3),
      I3 => gain1_gain_pos(0),
      I4 => gain1_gain_pos(1),
      O => gain1_gain_pos_4_GND_7_o_add_17_OUT_4_Q
    );
  gain1_gain_pos_4_GND_7_o_add_17_OUT_2_1 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => gain1_gain_pos(2),
      I1 => gain1_gain_pos(0),
      I2 => gain1_gain_pos(1),
      O => gain1_gain_pos_4_GND_7_o_add_17_OUT_2_Q
    );
  gain1_gain_pos_4_GND_7_o_add_17_OUT_3_1 : LUT4
    generic map(
      INIT => X"3336"
    )
    port map (
      I0 => gain1_gain_pos(2),
      I1 => gain1_gain_pos(3),
      I2 => gain1_gain_pos(0),
      I3 => gain1_gain_pos(1),
      O => gain1_gain_pos_4_GND_7_o_add_17_OUT_3_Q
    );
  gain1_Mmux_n015819 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_count_4_X_7_o_Mux_19_o,
      I3 => gain1_remainder_17_gain_4_add_25_OUT_0_Q,
      O => gain1_n0158(0)
    );
  gain1_Mmux_n015821 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_remainder(9),
      I3 => gain1_remainder_17_gain_4_add_25_OUT_10_Q,
      O => gain1_n0158(10)
    );
  gain1_Mmux_n015831 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_remainder(10),
      I3 => gain1_remainder_17_gain_4_add_25_OUT_11_Q,
      O => gain1_n0158(11)
    );
  gain1_Mmux_n015841 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_remainder(11),
      I3 => gain1_remainder_17_gain_4_add_25_OUT_12_Q,
      O => gain1_n0158(12)
    );
  gain1_Mmux_n015851 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_remainder(12),
      I3 => gain1_remainder_17_gain_4_add_25_OUT_13_Q,
      O => gain1_n0158(13)
    );
  gain1_Mmux_n015861 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_remainder(13),
      I3 => gain1_remainder_17_gain_4_add_25_OUT_14_Q,
      O => gain1_n0158(14)
    );
  gain1_Mmux_n015871 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_remainder(14),
      I3 => gain1_remainder_17_gain_4_add_25_OUT_15_Q,
      O => gain1_n0158(15)
    );
  gain1_Mmux_n015881 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_remainder(15),
      I3 => gain1_remainder_17_gain_4_add_25_OUT_16_Q,
      O => gain1_n0158(16)
    );
  gain1_Mmux_n015891 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_remainder(16),
      I3 => gain1_remainder_17_gain_4_add_25_OUT_17_Q,
      O => gain1_n0158(17)
    );
  gain1_Mmux_n0158101 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_remainder(0),
      I3 => gain1_remainder_17_gain_4_add_25_OUT_1_Q,
      O => gain1_n0158(1)
    );
  gain1_Mmux_n0158111 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_remainder(1),
      I3 => gain1_remainder_17_gain_4_add_25_OUT_2_Q,
      O => gain1_n0158(2)
    );
  gain1_Mmux_n0158121 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_remainder(2),
      I3 => gain1_remainder_17_gain_4_add_25_OUT_3_Q,
      O => gain1_n0158(3)
    );
  gain1_Mmux_n0158131 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_remainder(3),
      I3 => gain1_remainder_17_gain_4_add_25_OUT_4_Q,
      O => gain1_n0158(4)
    );
  gain1_Mmux_n0158141 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_remainder(4),
      I3 => gain1_remainder_17_gain_4_add_25_OUT_5_Q,
      O => gain1_n0158(5)
    );
  gain1_Mmux_n0158151 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_remainder(5),
      I3 => gain1_remainder_17_gain_4_add_25_OUT_6_Q,
      O => gain1_n0158(6)
    );
  gain1_Mmux_n0158161 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_remainder(6),
      I3 => gain1_remainder_17_gain_4_add_25_OUT_7_Q,
      O => gain1_n0158(7)
    );
  gain1_Mmux_n0158171 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_remainder(7),
      I3 => gain1_remainder_17_gain_4_add_25_OUT_8_Q,
      O => gain1_n0158(8)
    );
  gain1_Mmux_n0158181 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_remainder(8),
      I3 => gain1_remainder_17_gain_4_add_25_OUT_9_Q,
      O => gain1_n0158(9)
    );
  gain1_n0214_inv1 : LUT4
    generic map(
      INIT => X"4140"
    )
    port map (
      I0 => gain1_state_FSM_FFd1_447,
      I1 => gain1_state_FSM_FFd3_445,
      I2 => gain1_state_FSM_FFd2_446,
      I3 => ac97_cont0_ac97_ready_sig_105,
      O => gain1_n0214_inv
    );
  gain1_Mmux_n014119 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => ac97_cont0_right_in_data(2),
      I2 => gain1_in_latch_17_GND_7_o_add_14_OUT_0_Q,
      O => gain1_n0141(0)
    );
  gain1_Mmux_n014121 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => ac97_cont0_right_in_data(12),
      I2 => gain1_in_latch_17_GND_7_o_add_14_OUT_10_Q,
      O => gain1_n0141(10)
    );
  gain1_Mmux_n014131 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => ac97_cont0_right_in_data(13),
      I2 => gain1_in_latch_17_GND_7_o_add_14_OUT_11_Q,
      O => gain1_n0141(11)
    );
  gain1_Mmux_n014141 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => ac97_cont0_right_in_data(14),
      I2 => gain1_in_latch_17_GND_7_o_add_14_OUT_12_Q,
      O => gain1_n0141(12)
    );
  gain1_Mmux_n014151 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => ac97_cont0_right_in_data(15),
      I2 => gain1_in_latch_17_GND_7_o_add_14_OUT_13_Q,
      O => gain1_n0141(13)
    );
  gain1_Mmux_n014161 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => ac97_cont0_right_in_data(16),
      I2 => gain1_in_latch_17_GND_7_o_add_14_OUT_14_Q,
      O => gain1_n0141(14)
    );
  gain1_Mmux_n014171 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => ac97_cont0_right_in_data(17),
      I2 => gain1_in_latch_17_GND_7_o_add_14_OUT_15_Q,
      O => gain1_n0141(15)
    );
  gain1_Mmux_n014181 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => ac97_cont0_right_in_data(18),
      I2 => gain1_in_latch_17_GND_7_o_add_14_OUT_16_Q,
      O => gain1_n0141(16)
    );
  gain1_Mmux_n014191 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => ac97_cont0_right_in_data(19),
      I2 => gain1_in_latch_17_GND_7_o_add_14_OUT_17_Q,
      O => gain1_n0141(17)
    );
  gain1_Mmux_n0141101 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => ac97_cont0_right_in_data(3),
      I2 => gain1_in_latch_17_GND_7_o_add_14_OUT_1_Q,
      O => gain1_n0141(1)
    );
  gain1_Mmux_n0141111 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => ac97_cont0_right_in_data(4),
      I2 => gain1_in_latch_17_GND_7_o_add_14_OUT_2_Q,
      O => gain1_n0141(2)
    );
  gain1_Mmux_n0141121 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => ac97_cont0_right_in_data(5),
      I2 => gain1_in_latch_17_GND_7_o_add_14_OUT_3_Q,
      O => gain1_n0141(3)
    );
  gain1_Mmux_n0141131 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => ac97_cont0_right_in_data(6),
      I2 => gain1_in_latch_17_GND_7_o_add_14_OUT_4_Q,
      O => gain1_n0141(4)
    );
  gain1_Mmux_n0141141 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => ac97_cont0_right_in_data(7),
      I2 => gain1_in_latch_17_GND_7_o_add_14_OUT_5_Q,
      O => gain1_n0141(5)
    );
  gain1_Mmux_n0141151 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => ac97_cont0_right_in_data(8),
      I2 => gain1_in_latch_17_GND_7_o_add_14_OUT_6_Q,
      O => gain1_n0141(6)
    );
  gain1_Mmux_n0141161 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => ac97_cont0_right_in_data(9),
      I2 => gain1_in_latch_17_GND_7_o_add_14_OUT_7_Q,
      O => gain1_n0141(7)
    );
  gain1_Mmux_n0141171 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => ac97_cont0_right_in_data(10),
      I2 => gain1_in_latch_17_GND_7_o_add_14_OUT_8_Q,
      O => gain1_n0141(8)
    );
  gain1_Mmux_n0141181 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => ac97_cont0_right_in_data(11),
      I2 => gain1_in_latch_17_GND_7_o_add_14_OUT_9_Q,
      O => gain1_n0141(9)
    );
  gain1_Madd_gain_pos_4_GND_7_o_add_17_OUT_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_gain_pos(1),
      I1 => gain1_gain_pos(0),
      O => gain1_gain_pos_4_GND_7_o_add_17_OUT_1_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_A21 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_quot(10),
      I1 => gain1_s_396,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_10_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_A31 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_quot(11),
      I1 => gain1_s_396,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_11_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_A41 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_quot(12),
      I1 => gain1_s_396,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_12_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_A51 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_quot(13),
      I1 => gain1_s_396,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_13_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_A61 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_quot(14),
      I1 => gain1_s_396,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_14_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_A71 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_quot(15),
      I1 => gain1_s_396,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_15_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_A81 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_quot(16),
      I1 => gain1_s_396,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_16_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_A91 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_quot(17),
      I1 => gain1_s_396,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_17_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_A101 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_quot(1),
      I1 => gain1_s_396,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_1_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_A111 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_quot(2),
      I1 => gain1_s_396,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_2_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_A121 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_quot(3),
      I1 => gain1_s_396,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_3_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_A131 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_quot(4),
      I1 => gain1_s_396,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_4_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_A141 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_quot(5),
      I1 => gain1_s_396,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_5_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_A151 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_quot(6),
      I1 => gain1_s_396,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_6_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_A161 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_quot(7),
      I1 => gain1_s_396,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_7_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_A171 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_quot(8),
      I1 => gain1_s_396,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_8_Q
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_A181 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain1_quot(9),
      I1 => gain1_s_396,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_9_Q
    );
  gain1_state_n0260_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => gain1_state_FSM_FFd3_445,
      I1 => gain1_state_FSM_FFd1_447,
      O => gain1_state_2_X_7_o_Mux_43_o
    );
  gain0_count_4_Decoder_26_OUT_16_4_11 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => gain0_count(3),
      I1 => gain0_count(2),
      I2 => gain0_count(1),
      I3 => gain0_count(4),
      O => gain0_count_4_Decoder_26_OUT_16_4_1
    );
  gain0_Mmux_quot_next91 : LUT6
    generic map(
      INIT => X"EEEAEAEA44404040"
    )
    port map (
      I0 => gain0_state_FSM_FFd1_766,
      I1 => gain0_state_FSM_FFd2_765,
      I2 => gain0_quot(17),
      I3 => gain0_count(0),
      I4 => gain0_count_4_Decoder_26_OUT_16_4_1,
      I5 => gain0_quot_17_quot_17_mux_33_OUT_17_Q,
      O => gain0_quot_next(17)
    );
  gain0_Mmux_quot_next81 : LUT6
    generic map(
      INIT => X"EAEEEAEA40444040"
    )
    port map (
      I0 => gain0_state_FSM_FFd1_766,
      I1 => gain0_state_FSM_FFd2_765,
      I2 => gain0_quot(16),
      I3 => gain0_count(0),
      I4 => gain0_count_4_Decoder_26_OUT_16_4_1,
      I5 => gain0_quot_17_quot_17_mux_33_OUT_16_Q,
      O => gain0_quot_next(16)
    );
  gain0_state_FSM_FFd1_In11 : LUT4
    generic map(
      INIT => X"5540"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => gain0_state_FSM_FFd2_765,
      I2 => gain0_n0176_inv_bdd4,
      I3 => gain0_state_FSM_FFd1_766,
      O => gain0_state_FSM_FFd1_In
    );
  gain0_state_FSM_FFd2_In11 : LUT4
    generic map(
      INIT => X"8ACE"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_n0176_inv_bdd4,
      I3 => gain0_state_FSM_FFd1_766,
      O => gain0_state_FSM_FFd2_In
    );
  gain0_n0176_inv51 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => gain0_count(0),
      I1 => gain0_count(1),
      I2 => gain0_count(2),
      I3 => gain0_count(3),
      I4 => gain0_count(4),
      O => gain0_n0176_inv_bdd4
    );
  gain0_state_FSM_FFd3_In11 : LUT5
    generic map(
      INIT => X"55551054"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => gain0_state_FSM_FFd2_765,
      I2 => ac97_cont0_ac97_ready_sig_105,
      I3 => gain0_n0176_inv_bdd4,
      I4 => gain0_state_FSM_FFd1_766,
      O => gain0_state_FSM_FFd3_In
    );
  gain0_n0155_inv21 : LUT5
    generic map(
      INIT => X"11011000"
    )
    port map (
      I0 => gain0_state_FSM_FFd1_766,
      I1 => gain0_state_FSM_FFd2_765,
      I2 => gain0_state_FSM_FFd3_764,
      I3 => gain0_s_715,
      I4 => ac97_cont0_ac97_ready_sig_105,
      O => gain0_n0155_inv
    );
  gain0_n0176_inv111 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => gain0_state_FSM_FFd1_766,
      I2 => gain0_state_FSM_FFd2_765,
      I3 => ac97_cont0_ac97_ready_sig_105,
      O => gain0_n0176_inv1
    );
  gain0_n0155_inv111 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => gain0_state_FSM_FFd1_766,
      I2 => gain0_state_FSM_FFd2_765,
      O => gain0_n0155_inv1
    );
  gain0_state_2_PWR_10_o_Mux_44_o1 : LUT3
    generic map(
      INIT => X"89"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => gain0_state_FSM_FFd1_766,
      I2 => gain0_state_FSM_FFd2_765,
      O => gain0_state_2_PWR_10_o_Mux_44_o
    );
  gain0_n0176_inv21 : LUT6
    generic map(
      INIT => X"4151405001110010"
    )
    port map (
      I0 => gain0_state_FSM_FFd1_766,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_state_FSM_FFd2_765,
      I3 => gain0_n0176_inv_bdd4,
      I4 => ac97_cont0_ac97_ready_sig_105,
      I5 => gain0_Mcompar_n0027_cy(4),
      O => gain0_n0176_inv
    );
  gain0_n0198_inv21 : LUT5
    generic map(
      INIT => X"55985510"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => gain0_state_FSM_FFd2_765,
      I2 => ac97_cont0_ac97_ready_sig_105,
      I3 => gain0_state_FSM_FFd1_766,
      I4 => gain0_Mcompar_n0027_cy(4),
      O => gain0_n0198_inv
    );
  gain0_gain_pos_4_GND_7_o_add_17_OUT_4_1 : LUT5
    generic map(
      INIT => X"55555556"
    )
    port map (
      I0 => gain0_gain_pos(4),
      I1 => gain0_gain_pos(2),
      I2 => gain0_gain_pos(3),
      I3 => gain0_gain_pos(0),
      I4 => gain0_gain_pos(1),
      O => gain0_gain_pos_4_GND_7_o_add_17_OUT_4_Q
    );
  gain0_gain_pos_4_GND_7_o_add_17_OUT_2_1 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => gain0_gain_pos(2),
      I1 => gain0_gain_pos(0),
      I2 => gain0_gain_pos(1),
      O => gain0_gain_pos_4_GND_7_o_add_17_OUT_2_Q
    );
  gain0_gain_pos_4_GND_7_o_add_17_OUT_3_1 : LUT4
    generic map(
      INIT => X"3336"
    )
    port map (
      I0 => gain0_gain_pos(2),
      I1 => gain0_gain_pos(3),
      I2 => gain0_gain_pos(0),
      I3 => gain0_gain_pos(1),
      O => gain0_gain_pos_4_GND_7_o_add_17_OUT_3_Q
    );
  gain0_Mmux_n015819 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_count_4_X_7_o_Mux_19_o,
      I3 => gain0_remainder_17_gain_4_add_25_OUT_0_Q,
      O => gain0_n0158(0)
    );
  gain0_Mmux_n015821 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_remainder(9),
      I3 => gain0_remainder_17_gain_4_add_25_OUT_10_Q,
      O => gain0_n0158(10)
    );
  gain0_Mmux_n015831 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_remainder(10),
      I3 => gain0_remainder_17_gain_4_add_25_OUT_11_Q,
      O => gain0_n0158(11)
    );
  gain0_Mmux_n015841 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_remainder(11),
      I3 => gain0_remainder_17_gain_4_add_25_OUT_12_Q,
      O => gain0_n0158(12)
    );
  gain0_Mmux_n015851 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_remainder(12),
      I3 => gain0_remainder_17_gain_4_add_25_OUT_13_Q,
      O => gain0_n0158(13)
    );
  gain0_Mmux_n015861 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_remainder(13),
      I3 => gain0_remainder_17_gain_4_add_25_OUT_14_Q,
      O => gain0_n0158(14)
    );
  gain0_Mmux_n015871 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_remainder(14),
      I3 => gain0_remainder_17_gain_4_add_25_OUT_15_Q,
      O => gain0_n0158(15)
    );
  gain0_Mmux_n015881 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_remainder(15),
      I3 => gain0_remainder_17_gain_4_add_25_OUT_16_Q,
      O => gain0_n0158(16)
    );
  gain0_Mmux_n015891 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_remainder(16),
      I3 => gain0_remainder_17_gain_4_add_25_OUT_17_Q,
      O => gain0_n0158(17)
    );
  gain0_Mmux_n0158101 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_remainder(0),
      I3 => gain0_remainder_17_gain_4_add_25_OUT_1_Q,
      O => gain0_n0158(1)
    );
  gain0_Mmux_n0158111 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_remainder(1),
      I3 => gain0_remainder_17_gain_4_add_25_OUT_2_Q,
      O => gain0_n0158(2)
    );
  gain0_Mmux_n0158121 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_remainder(2),
      I3 => gain0_remainder_17_gain_4_add_25_OUT_3_Q,
      O => gain0_n0158(3)
    );
  gain0_Mmux_n0158131 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_remainder(3),
      I3 => gain0_remainder_17_gain_4_add_25_OUT_4_Q,
      O => gain0_n0158(4)
    );
  gain0_Mmux_n0158141 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_remainder(4),
      I3 => gain0_remainder_17_gain_4_add_25_OUT_5_Q,
      O => gain0_n0158(5)
    );
  gain0_Mmux_n0158151 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_remainder(5),
      I3 => gain0_remainder_17_gain_4_add_25_OUT_6_Q,
      O => gain0_n0158(6)
    );
  gain0_Mmux_n0158161 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_remainder(6),
      I3 => gain0_remainder_17_gain_4_add_25_OUT_7_Q,
      O => gain0_n0158(7)
    );
  gain0_Mmux_n0158171 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_remainder(7),
      I3 => gain0_remainder_17_gain_4_add_25_OUT_8_Q,
      O => gain0_n0158(8)
    );
  gain0_Mmux_n0158181 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_remainder(8),
      I3 => gain0_remainder_17_gain_4_add_25_OUT_9_Q,
      O => gain0_n0158(9)
    );
  gain0_n0214_inv1 : LUT4
    generic map(
      INIT => X"4140"
    )
    port map (
      I0 => gain0_state_FSM_FFd1_766,
      I1 => gain0_state_FSM_FFd3_764,
      I2 => gain0_state_FSM_FFd2_765,
      I3 => ac97_cont0_ac97_ready_sig_105,
      O => gain0_n0214_inv
    );
  gain0_Mmux_n014119 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => ac97_cont0_left_in_data(2),
      I2 => gain0_in_latch_17_GND_7_o_add_14_OUT_0_Q,
      O => gain0_n0141(0)
    );
  gain0_Mmux_n014121 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => ac97_cont0_left_in_data(12),
      I2 => gain0_in_latch_17_GND_7_o_add_14_OUT_10_Q,
      O => gain0_n0141(10)
    );
  gain0_Mmux_n014131 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => ac97_cont0_left_in_data(13),
      I2 => gain0_in_latch_17_GND_7_o_add_14_OUT_11_Q,
      O => gain0_n0141(11)
    );
  gain0_Mmux_n014141 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => ac97_cont0_left_in_data(14),
      I2 => gain0_in_latch_17_GND_7_o_add_14_OUT_12_Q,
      O => gain0_n0141(12)
    );
  gain0_Mmux_n014151 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => ac97_cont0_left_in_data(15),
      I2 => gain0_in_latch_17_GND_7_o_add_14_OUT_13_Q,
      O => gain0_n0141(13)
    );
  gain0_Mmux_n014161 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => ac97_cont0_left_in_data(16),
      I2 => gain0_in_latch_17_GND_7_o_add_14_OUT_14_Q,
      O => gain0_n0141(14)
    );
  gain0_Mmux_n014171 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => ac97_cont0_left_in_data(17),
      I2 => gain0_in_latch_17_GND_7_o_add_14_OUT_15_Q,
      O => gain0_n0141(15)
    );
  gain0_Mmux_n014181 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => ac97_cont0_left_in_data(18),
      I2 => gain0_in_latch_17_GND_7_o_add_14_OUT_16_Q,
      O => gain0_n0141(16)
    );
  gain0_Mmux_n014191 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => ac97_cont0_left_in_data(19),
      I2 => gain0_in_latch_17_GND_7_o_add_14_OUT_17_Q,
      O => gain0_n0141(17)
    );
  gain0_Mmux_n0141101 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => ac97_cont0_left_in_data(3),
      I2 => gain0_in_latch_17_GND_7_o_add_14_OUT_1_Q,
      O => gain0_n0141(1)
    );
  gain0_Mmux_n0141111 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => ac97_cont0_left_in_data(4),
      I2 => gain0_in_latch_17_GND_7_o_add_14_OUT_2_Q,
      O => gain0_n0141(2)
    );
  gain0_Mmux_n0141121 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => ac97_cont0_left_in_data(5),
      I2 => gain0_in_latch_17_GND_7_o_add_14_OUT_3_Q,
      O => gain0_n0141(3)
    );
  gain0_Mmux_n0141131 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => ac97_cont0_left_in_data(6),
      I2 => gain0_in_latch_17_GND_7_o_add_14_OUT_4_Q,
      O => gain0_n0141(4)
    );
  gain0_Mmux_n0141141 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => ac97_cont0_left_in_data(7),
      I2 => gain0_in_latch_17_GND_7_o_add_14_OUT_5_Q,
      O => gain0_n0141(5)
    );
  gain0_Mmux_n0141151 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => ac97_cont0_left_in_data(8),
      I2 => gain0_in_latch_17_GND_7_o_add_14_OUT_6_Q,
      O => gain0_n0141(6)
    );
  gain0_Mmux_n0141161 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => ac97_cont0_left_in_data(9),
      I2 => gain0_in_latch_17_GND_7_o_add_14_OUT_7_Q,
      O => gain0_n0141(7)
    );
  gain0_Mmux_n0141171 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => ac97_cont0_left_in_data(10),
      I2 => gain0_in_latch_17_GND_7_o_add_14_OUT_8_Q,
      O => gain0_n0141(8)
    );
  gain0_Mmux_n0141181 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => ac97_cont0_left_in_data(11),
      I2 => gain0_in_latch_17_GND_7_o_add_14_OUT_9_Q,
      O => gain0_n0141(9)
    );
  gain0_Madd_gain_pos_4_GND_7_o_add_17_OUT_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_gain_pos(1),
      I1 => gain0_gain_pos(0),
      O => gain0_gain_pos_4_GND_7_o_add_17_OUT_1_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_A21 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_quot(10),
      I1 => gain0_s_715,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_10_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_A31 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_quot(11),
      I1 => gain0_s_715,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_11_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_A41 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_quot(12),
      I1 => gain0_s_715,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_12_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_A51 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_quot(13),
      I1 => gain0_s_715,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_13_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_A61 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_quot(14),
      I1 => gain0_s_715,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_14_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_A71 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_quot(15),
      I1 => gain0_s_715,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_15_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_A81 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_quot(16),
      I1 => gain0_s_715,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_16_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_A91 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_quot(17),
      I1 => gain0_s_715,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_17_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_A101 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_quot(1),
      I1 => gain0_s_715,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_1_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_A111 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_quot(2),
      I1 => gain0_s_715,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_2_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_A121 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_quot(3),
      I1 => gain0_s_715,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_3_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_A131 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_quot(4),
      I1 => gain0_s_715,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_4_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_A141 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_quot(5),
      I1 => gain0_s_715,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_5_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_A151 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_quot(6),
      I1 => gain0_s_715,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_6_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_A161 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_quot(7),
      I1 => gain0_s_715,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_7_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_A171 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_quot(8),
      I1 => gain0_s_715,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_8_Q
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_A181 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gain0_quot(9),
      I1 => gain0_s_715,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_A_9_Q
    );
  gain0_state_n0260_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => gain0_state_FSM_FFd3_764,
      I1 => gain0_state_FSM_FFd1_766,
      O => gain0_state_2_X_7_o_Mux_43_o
    );
  ac97_cont0_GND_6_o_bit_count_7_AND_7_o1 : LUT6
    generic map(
      INIT => X"0400041000100010"
    )
    port map (
      I0 => ac97_cont0_bit_count(7),
      I1 => ac97_cont0_bit_count(5),
      I2 => ac97_cont0_bit_count(6),
      I3 => ac97_cont0_bit_count(4),
      I4 => ac97_cont0_bit_count(2),
      I5 => ac97_cont0_bit_count(3),
      O => ac97_cont0_n0195_inv1
    );
  ac97_cont0_GND_6_o_bit_count_7_equal_21_o_7_1 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT101_789,
      I1 => ac97_cont0_bit_count(1),
      I2 => ac97_cont0_bit_count(2),
      I3 => ac97_cont0_bit_count(3),
      I4 => ac97_cont0_bit_count(0),
      O => ac97_cont0_GND_6_o_bit_count_7_equal_21_o
    );
  ac97_cont0_GND_6_o_bit_count_7_AND_5_o1 : LUT6
    generic map(
      INIT => X"0100010001000110"
    )
    port map (
      I0 => ac97_cont0_bit_count(6),
      I1 => ac97_cont0_bit_count(7),
      I2 => ac97_cont0_bit_count(5),
      I3 => ac97_cont0_bit_count(4),
      I4 => ac97_cont0_bit_count(2),
      I5 => ac97_cont0_bit_count(3),
      O => ac97_cont0_GND_6_o_bit_count_7_AND_5_o
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT1011 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ac97_cont0_bit_count(7),
      I1 => ac97_cont0_bit_count(4),
      I2 => ac97_cont0_bit_count(5),
      I3 => ac97_cont0_bit_count(6),
      O => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT101_789
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT110 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_latch_left_data(19),
      I1 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_0_Q
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_latch_left_data(0),
      I1 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_1_Q
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT101 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      I1 => ac97_cont0_latch_left_data(17),
      I2 => L_bus(16),
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_18_Q
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT111 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      I1 => ac97_cont0_latch_left_data(18),
      I2 => L_bus(17),
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_19_Q
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT131 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      I1 => ac97_cont0_latch_left_data(1),
      I2 => L_bus(0),
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_2_Q
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT141 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      I1 => ac97_cont0_latch_left_data(2),
      I2 => L_bus(1),
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_3_Q
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT151 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      I1 => ac97_cont0_latch_left_data(3),
      I2 => L_bus(2),
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_4_Q
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT161 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      I1 => ac97_cont0_latch_left_data(4),
      I2 => L_bus(3),
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_5_Q
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT171 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      I1 => ac97_cont0_latch_left_data(5),
      I2 => L_bus(4),
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_6_Q
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT181 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      I1 => ac97_cont0_latch_left_data(6),
      I2 => L_bus(5),
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_7_Q
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT191 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      I1 => ac97_cont0_latch_left_data(7),
      I2 => L_bus(6),
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_8_Q
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT21 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      I1 => ac97_cont0_latch_left_data(9),
      I2 => L_bus(8),
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_10_Q
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT201 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      I1 => ac97_cont0_latch_left_data(8),
      I2 => L_bus(7),
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_9_Q
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      I1 => ac97_cont0_latch_left_data(10),
      I2 => L_bus(9),
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_11_Q
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      I1 => ac97_cont0_latch_left_data(11),
      I2 => L_bus(10),
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_12_Q
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      I1 => ac97_cont0_latch_left_data(12),
      I2 => L_bus(11),
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_13_Q
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      I1 => ac97_cont0_latch_left_data(13),
      I2 => L_bus(12),
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_14_Q
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      I1 => ac97_cont0_latch_left_data(14),
      I2 => L_bus(13),
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_15_Q
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      I1 => ac97_cont0_latch_left_data(15),
      I2 => L_bus(14),
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_16_Q
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102,
      I1 => ac97_cont0_latch_left_data(16),
      I2 => L_bus(15),
      O => ac97_cont0_latch_left_data_19_latch_left_data_19_mux_45_OUT_17_Q
    );
  ac97_cont0_GND_6_o_bit_count_7_AND_6_o1 : LUT6
    generic map(
      INIT => X"0002000202020200"
    )
    port map (
      I0 => ac97_cont0_bit_count(5),
      I1 => ac97_cont0_bit_count(6),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(3),
      I4 => ac97_cont0_bit_count(2),
      I5 => ac97_cont0_bit_count(4),
      O => ac97_cont0_GND_6_o_bit_count_7_AND_6_o
    );
  ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o1211 : LUT4
    generic map(
      INIT => X"DC10"
    )
    port map (
      I0 => ac97_cont0_bit_count(0),
      I1 => ac97_cont0_bit_count(1),
      I2 => ac97_cont0_latch_cmd_data_19_Q,
      I3 => ac97_cont0_latch_cmd_data_17_Q,
      O => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o121
    );
  ac97_cont0_GND_6_o_bit_count_7_AND_9_o11 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => ac97_cont0_bit_count(2),
      I1 => ac97_cont0_bit_count(0),
      I2 => ac97_cont0_bit_count(1),
      O => ac97_cont0_GND_6_o_bit_count_7_AND_9_o1_794
    );
  ac97_cont0_n0013_inv1 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
    port map (
      I0 => ac97_cont0_bit_count(7),
      I1 => ac97_cont0_bit_count(3),
      I2 => ac97_cont0_bit_count(5),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o1_794,
      I5 => ac97_cont0_bit_count(4),
      O => ac97_cont0_n0013_inv
    );
  gain1_Mmux_quot_next5_SW0 : LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => gain1_count(4),
      I1 => gain1_count(0),
      I2 => gain1_count(3),
      I3 => gain1_count(2),
      O => N2
    );
  gain1_Mmux_quot_next5 : LUT6
    generic map(
      INIT => X"ECECECEE20202022"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd1_447,
      I2 => gain1_quot(13),
      I3 => gain1_count(1),
      I4 => N2,
      I5 => gain1_quot_17_quot_17_mux_33_OUT_13_Q,
      O => gain1_quot_next(13)
    );
  gain1_Mmux_quot_next10_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => gain1_count(2),
      I1 => gain1_count(4),
      I2 => gain1_count(3),
      I3 => gain1_count(0),
      O => N4
    );
  gain1_Mmux_quot_next10 : LUT6
    generic map(
      INIT => X"ECECECEE20202022"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd1_447,
      I2 => gain1_quot(1),
      I3 => gain1_count(1),
      I4 => N4,
      I5 => gain1_quot_17_quot_17_mux_33_OUT_1_Q,
      O => gain1_quot_next(1)
    );
  gain1_Mmux_quot_next14_SW0 : LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => gain1_count(3),
      I1 => gain1_count(4),
      I2 => gain1_count(0),
      I3 => gain1_count(2),
      O => N6
    );
  gain1_Mmux_quot_next14 : LUT6
    generic map(
      INIT => X"ECECECEE20202022"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd1_447,
      I2 => gain1_quot(5),
      I3 => gain1_count(1),
      I4 => N6,
      I5 => gain1_quot_17_quot_17_mux_33_OUT_5_Q,
      O => gain1_quot_next(5)
    );
  gain1_Mmux_quot_next18_SW0 : LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => gain1_count(4),
      I1 => gain1_count(2),
      I2 => gain1_count(0),
      I3 => gain1_count(3),
      O => N8
    );
  gain1_Mmux_quot_next18 : LUT6
    generic map(
      INIT => X"ECECECEE20202022"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd1_447,
      I2 => gain1_quot(9),
      I3 => gain1_count(1),
      I4 => N8,
      I5 => gain1_quot_17_quot_17_mux_33_OUT_9_Q,
      O => gain1_quot_next(9)
    );
  gain1_Mmux_quot_next3 : LUT6
    generic map(
      INIT => X"EAEEEAEA40444040"
    )
    port map (
      I0 => gain1_state_FSM_FFd1_447,
      I1 => gain1_state_FSM_FFd2_446,
      I2 => gain1_quot(11),
      I3 => N8,
      I4 => gain1_count(1),
      I5 => gain1_quot_17_quot_17_mux_33_OUT_11_Q,
      O => gain1_quot_next(11)
    );
  gain1_Mmux_quot_next7 : LUT6
    generic map(
      INIT => X"EAEEEAEA40444040"
    )
    port map (
      I0 => gain1_state_FSM_FFd1_447,
      I1 => gain1_state_FSM_FFd2_446,
      I2 => gain1_quot(15),
      I3 => N2,
      I4 => gain1_count(1),
      I5 => gain1_quot_17_quot_17_mux_33_OUT_15_Q,
      O => gain1_quot_next(15)
    );
  gain1_Mmux_quot_next12 : LUT6
    generic map(
      INIT => X"EAEEEAEA40444040"
    )
    port map (
      I0 => gain1_state_FSM_FFd1_447,
      I1 => gain1_state_FSM_FFd2_446,
      I2 => gain1_quot(3),
      I3 => N4,
      I4 => gain1_count(1),
      I5 => gain1_quot_17_quot_17_mux_33_OUT_3_Q,
      O => gain1_quot_next(3)
    );
  gain1_Mmux_quot_next16 : LUT6
    generic map(
      INIT => X"EAEEEAEA40444040"
    )
    port map (
      I0 => gain1_state_FSM_FFd1_447,
      I1 => gain1_state_FSM_FFd2_446,
      I2 => gain1_quot(7),
      I3 => N6,
      I4 => gain1_count(1),
      I5 => gain1_quot_17_quot_17_mux_33_OUT_7_Q,
      O => gain1_quot_next(7)
    );
  gain1_Mmux_quot_next2_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => gain1_count(2),
      I1 => gain1_count(4),
      I2 => gain1_count(0),
      I3 => gain1_count(3),
      O => N18
    );
  gain1_Mmux_quot_next2 : LUT6
    generic map(
      INIT => X"EAEEEAEA40444040"
    )
    port map (
      I0 => gain1_state_FSM_FFd1_447,
      I1 => gain1_state_FSM_FFd2_446,
      I2 => gain1_quot(10),
      I3 => N18,
      I4 => gain1_count(1),
      I5 => gain1_quot_17_quot_17_mux_33_OUT_10_Q,
      O => gain1_quot_next(10)
    );
  gain1_Mmux_quot_next6_SW0 : LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => gain1_count(0),
      I1 => gain1_count(4),
      I2 => gain1_count(3),
      I3 => gain1_count(2),
      O => N20
    );
  gain1_Mmux_quot_next6 : LUT6
    generic map(
      INIT => X"EAEEEAEA40444040"
    )
    port map (
      I0 => gain1_state_FSM_FFd1_447,
      I1 => gain1_state_FSM_FFd2_446,
      I2 => gain1_quot(14),
      I3 => N20,
      I4 => gain1_count(1),
      I5 => gain1_quot_17_quot_17_mux_33_OUT_14_Q,
      O => gain1_quot_next(14)
    );
  gain1_Mmux_quot_next11_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => gain1_count(0),
      I1 => gain1_count(4),
      I2 => gain1_count(3),
      I3 => gain1_count(2),
      O => N22
    );
  gain1_Mmux_quot_next11 : LUT6
    generic map(
      INIT => X"EAEEEAEA40444040"
    )
    port map (
      I0 => gain1_state_FSM_FFd1_447,
      I1 => gain1_state_FSM_FFd2_446,
      I2 => gain1_quot(2),
      I3 => N22,
      I4 => gain1_count(1),
      I5 => gain1_quot_17_quot_17_mux_33_OUT_2_Q,
      O => gain1_quot_next(2)
    );
  gain1_Mmux_quot_next15_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => gain1_count(0),
      I1 => gain1_count(4),
      I2 => gain1_count(3),
      I3 => gain1_count(2),
      O => N24
    );
  gain1_Mmux_quot_next15 : LUT6
    generic map(
      INIT => X"EAEEEAEA40444040"
    )
    port map (
      I0 => gain1_state_FSM_FFd1_447,
      I1 => gain1_state_FSM_FFd2_446,
      I2 => gain1_quot(6),
      I3 => N24,
      I4 => gain1_count(1),
      I5 => gain1_quot_17_quot_17_mux_33_OUT_6_Q,
      O => gain1_quot_next(6)
    );
  gain1_Mmux_quot_next1 : LUT6
    generic map(
      INIT => X"ECECECEE20202022"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd1_447,
      I2 => gain1_quot(0),
      I3 => gain1_count(1),
      I4 => N22,
      I5 => gain1_quot_17_quot_17_mux_33_OUT_0_Q,
      O => gain1_quot_next(0)
    );
  gain1_Mmux_quot_next4 : LUT6
    generic map(
      INIT => X"ECECECEE20202022"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd1_447,
      I2 => gain1_quot(12),
      I3 => gain1_count(1),
      I4 => N20,
      I5 => gain1_quot_17_quot_17_mux_33_OUT_12_Q,
      O => gain1_quot_next(12)
    );
  gain1_Mmux_quot_next13 : LUT6
    generic map(
      INIT => X"ECECECEE20202022"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd1_447,
      I2 => gain1_quot(4),
      I3 => gain1_count(1),
      I4 => N24,
      I5 => gain1_quot_17_quot_17_mux_33_OUT_4_Q,
      O => gain1_quot_next(4)
    );
  gain1_Mmux_quot_next17 : LUT6
    generic map(
      INIT => X"ECECECEE20202022"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_state_FSM_FFd1_447,
      I2 => gain1_quot(8),
      I3 => gain1_count(1),
      I4 => N18,
      I5 => gain1_quot_17_quot_17_mux_33_OUT_8_Q,
      O => gain1_quot_next(8)
    );
  gain0_Mmux_quot_next5_SW0 : LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => gain0_count(4),
      I1 => gain0_count(0),
      I2 => gain0_count(3),
      I3 => gain0_count(2),
      O => N34
    );
  gain0_Mmux_quot_next5 : LUT6
    generic map(
      INIT => X"ECECECEE20202022"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd1_766,
      I2 => gain0_quot(13),
      I3 => gain0_count(1),
      I4 => N34,
      I5 => gain0_quot_17_quot_17_mux_33_OUT_13_Q,
      O => gain0_quot_next(13)
    );
  gain0_Mmux_quot_next10_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => gain0_count(2),
      I1 => gain0_count(4),
      I2 => gain0_count(3),
      I3 => gain0_count(0),
      O => N36
    );
  gain0_Mmux_quot_next10 : LUT6
    generic map(
      INIT => X"ECECECEE20202022"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd1_766,
      I2 => gain0_quot(1),
      I3 => gain0_count(1),
      I4 => N36,
      I5 => gain0_quot_17_quot_17_mux_33_OUT_1_Q,
      O => gain0_quot_next(1)
    );
  gain0_Mmux_quot_next14_SW0 : LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => gain0_count(3),
      I1 => gain0_count(4),
      I2 => gain0_count(0),
      I3 => gain0_count(2),
      O => N38
    );
  gain0_Mmux_quot_next14 : LUT6
    generic map(
      INIT => X"ECECECEE20202022"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd1_766,
      I2 => gain0_quot(5),
      I3 => gain0_count(1),
      I4 => N38,
      I5 => gain0_quot_17_quot_17_mux_33_OUT_5_Q,
      O => gain0_quot_next(5)
    );
  gain0_Mmux_quot_next18_SW0 : LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => gain0_count(4),
      I1 => gain0_count(2),
      I2 => gain0_count(0),
      I3 => gain0_count(3),
      O => N40
    );
  gain0_Mmux_quot_next18 : LUT6
    generic map(
      INIT => X"ECECECEE20202022"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd1_766,
      I2 => gain0_quot(9),
      I3 => gain0_count(1),
      I4 => N40,
      I5 => gain0_quot_17_quot_17_mux_33_OUT_9_Q,
      O => gain0_quot_next(9)
    );
  gain0_Mmux_quot_next3 : LUT6
    generic map(
      INIT => X"EAEEEAEA40444040"
    )
    port map (
      I0 => gain0_state_FSM_FFd1_766,
      I1 => gain0_state_FSM_FFd2_765,
      I2 => gain0_quot(11),
      I3 => N40,
      I4 => gain0_count(1),
      I5 => gain0_quot_17_quot_17_mux_33_OUT_11_Q,
      O => gain0_quot_next(11)
    );
  gain0_Mmux_quot_next7 : LUT6
    generic map(
      INIT => X"EAEEEAEA40444040"
    )
    port map (
      I0 => gain0_state_FSM_FFd1_766,
      I1 => gain0_state_FSM_FFd2_765,
      I2 => gain0_quot(15),
      I3 => N34,
      I4 => gain0_count(1),
      I5 => gain0_quot_17_quot_17_mux_33_OUT_15_Q,
      O => gain0_quot_next(15)
    );
  gain0_Mmux_quot_next12 : LUT6
    generic map(
      INIT => X"EAEEEAEA40444040"
    )
    port map (
      I0 => gain0_state_FSM_FFd1_766,
      I1 => gain0_state_FSM_FFd2_765,
      I2 => gain0_quot(3),
      I3 => N36,
      I4 => gain0_count(1),
      I5 => gain0_quot_17_quot_17_mux_33_OUT_3_Q,
      O => gain0_quot_next(3)
    );
  gain0_Mmux_quot_next16 : LUT6
    generic map(
      INIT => X"EAEEEAEA40444040"
    )
    port map (
      I0 => gain0_state_FSM_FFd1_766,
      I1 => gain0_state_FSM_FFd2_765,
      I2 => gain0_quot(7),
      I3 => N38,
      I4 => gain0_count(1),
      I5 => gain0_quot_17_quot_17_mux_33_OUT_7_Q,
      O => gain0_quot_next(7)
    );
  gain0_Mmux_quot_next2_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => gain0_count(2),
      I1 => gain0_count(4),
      I2 => gain0_count(0),
      I3 => gain0_count(3),
      O => N50
    );
  gain0_Mmux_quot_next2 : LUT6
    generic map(
      INIT => X"EAEEEAEA40444040"
    )
    port map (
      I0 => gain0_state_FSM_FFd1_766,
      I1 => gain0_state_FSM_FFd2_765,
      I2 => gain0_quot(10),
      I3 => N50,
      I4 => gain0_count(1),
      I5 => gain0_quot_17_quot_17_mux_33_OUT_10_Q,
      O => gain0_quot_next(10)
    );
  gain0_Mmux_quot_next6_SW0 : LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => gain0_count(0),
      I1 => gain0_count(4),
      I2 => gain0_count(3),
      I3 => gain0_count(2),
      O => N52
    );
  gain0_Mmux_quot_next6 : LUT6
    generic map(
      INIT => X"EAEEEAEA40444040"
    )
    port map (
      I0 => gain0_state_FSM_FFd1_766,
      I1 => gain0_state_FSM_FFd2_765,
      I2 => gain0_quot(14),
      I3 => N52,
      I4 => gain0_count(1),
      I5 => gain0_quot_17_quot_17_mux_33_OUT_14_Q,
      O => gain0_quot_next(14)
    );
  gain0_Mmux_quot_next11_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => gain0_count(0),
      I1 => gain0_count(4),
      I2 => gain0_count(3),
      I3 => gain0_count(2),
      O => N54
    );
  gain0_Mmux_quot_next11 : LUT6
    generic map(
      INIT => X"EAEEEAEA40444040"
    )
    port map (
      I0 => gain0_state_FSM_FFd1_766,
      I1 => gain0_state_FSM_FFd2_765,
      I2 => gain0_quot(2),
      I3 => N54,
      I4 => gain0_count(1),
      I5 => gain0_quot_17_quot_17_mux_33_OUT_2_Q,
      O => gain0_quot_next(2)
    );
  gain0_Mmux_quot_next15_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => gain0_count(0),
      I1 => gain0_count(4),
      I2 => gain0_count(3),
      I3 => gain0_count(2),
      O => N56
    );
  gain0_Mmux_quot_next15 : LUT6
    generic map(
      INIT => X"EAEEEAEA40444040"
    )
    port map (
      I0 => gain0_state_FSM_FFd1_766,
      I1 => gain0_state_FSM_FFd2_765,
      I2 => gain0_quot(6),
      I3 => N56,
      I4 => gain0_count(1),
      I5 => gain0_quot_17_quot_17_mux_33_OUT_6_Q,
      O => gain0_quot_next(6)
    );
  gain0_Mmux_quot_next1 : LUT6
    generic map(
      INIT => X"ECECECEE20202022"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd1_766,
      I2 => gain0_quot(0),
      I3 => gain0_count(1),
      I4 => N54,
      I5 => gain0_quot_17_quot_17_mux_33_OUT_0_Q,
      O => gain0_quot_next(0)
    );
  gain0_Mmux_quot_next4 : LUT6
    generic map(
      INIT => X"ECECECEE20202022"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd1_766,
      I2 => gain0_quot(12),
      I3 => gain0_count(1),
      I4 => N52,
      I5 => gain0_quot_17_quot_17_mux_33_OUT_12_Q,
      O => gain0_quot_next(12)
    );
  gain0_Mmux_quot_next13 : LUT6
    generic map(
      INIT => X"ECECECEE20202022"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd1_766,
      I2 => gain0_quot(4),
      I3 => gain0_count(1),
      I4 => N56,
      I5 => gain0_quot_17_quot_17_mux_33_OUT_4_Q,
      O => gain0_quot_next(4)
    );
  gain0_Mmux_quot_next17 : LUT6
    generic map(
      INIT => X"ECECECEE20202022"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_state_FSM_FFd1_766,
      I2 => gain0_quot(8),
      I3 => gain0_count(1),
      I4 => N50,
      I5 => gain0_quot_17_quot_17_mux_33_OUT_8_Q,
      O => gain0_quot_next(8)
    );
  ac97_cont0_PWR_6_o_bit_count_7_equal_15_o_7_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => ac97_cont0_bit_count(6),
      I1 => ac97_cont0_bit_count(2),
      I2 => ac97_cont0_bit_count(7),
      O => N66
    );
  ac97_cont0_PWR_6_o_bit_count_7_equal_15_o_7_Q : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => ac97_cont0_bit_count(1),
      I1 => ac97_cont0_bit_count(0),
      I2 => ac97_cont0_bit_count(5),
      I3 => ac97_cont0_bit_count(3),
      I4 => ac97_cont0_bit_count(4),
      I5 => N66,
      O => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o
    );
  ac97_cont0_GND_6_o_bit_count_7_AND_9_o1 : LUT6
    generic map(
      INIT => X"0222022202222222"
    )
    port map (
      I0 => ac97_cont0_bit_count_6_1_1063,
      I1 => ac97_cont0_bit_count(4),
      I2 => ac97_cont0_bit_count(3),
      I3 => ac97_cont0_bit_count(2),
      I4 => ac97_cont0_bit_count(0),
      I5 => ac97_cont0_bit_count(1),
      O => ac97_cont0_GND_6_o_bit_count_7_AND_9_o2_963
    );
  ac97_cont0_GND_6_o_bit_count_7_AND_9_o2 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => ac97_cont0_bit_count_6_2_1064,
      I1 => ac97_cont0_bit_count(5),
      I2 => ac97_cont0_bit_count(4),
      O => ac97_cont0_GND_6_o_bit_count_7_AND_9_o3_964
    );
  ac97_cont0_GND_6_o_bit_count_7_AND_9_o3 : LUT6
    generic map(
      INIT => X"0D0505050C000000"
    )
    port map (
      I0 => ac97_cont0_bit_count(5),
      I1 => ac97_cont0_bit_count(3),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o3_964,
      I4 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o1_794,
      I5 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o2_963,
      O => ac97_cont0_GND_6_o_bit_count_7_AND_9_o
    );
  ac97_cont0_n0195_inv2 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      I1 => ac97_cont0_n0195_inv1,
      O => ac97_cont0_n0195_inv
    );
  ac97_cont0_n0201_inv1 : LUT6
    generic map(
      INIT => X"5444544454444446"
    )
    port map (
      I0 => ac97_cont0_bit_count(5),
      I1 => ac97_cont0_bit_count(4),
      I2 => ac97_cont0_bit_count(3),
      I3 => ac97_cont0_bit_count(2),
      I4 => ac97_cont0_bit_count(0),
      I5 => ac97_cont0_bit_count(1),
      O => ac97_cont0_n0201_inv1_966
    );
  ac97_cont0_Mcount_rst_counter_val11 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => ac97_cont0_rst_counter(7),
      I1 => ac97_cont0_rst_counter(3),
      I2 => ac97_cont0_rst_counter(9),
      I3 => ac97_cont0_rst_counter(6),
      I4 => ac97_cont0_rst_counter(11),
      I5 => ac97_cont0_rst_counter(10),
      O => ac97_cont0_Mcount_rst_counter_val11_967
    );
  ac97_cont0_Mcount_rst_counter_val12 : LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      I0 => ac97_cont0_rst_counter(1),
      I1 => ac97_cont0_rst_counter(4),
      I2 => ac97_cont0_rst_counter(5),
      I3 => ac97_cont0_rst_counter(8),
      I4 => ac97_cont0_rst_counter(2),
      I5 => ac97_cont0_rst_counter(0),
      O => ac97_cont0_Mcount_rst_counter_val12_968
    );
  ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o23 : LUT6
    generic map(
      INIT => X"22A800A822200020"
    )
    port map (
      I0 => ac97_cont0_bit_count(0),
      I1 => ac97_cont0_bit_count(2),
      I2 => ac97_cont0_latch_cmd_data_14_Q,
      I3 => ac97_cont0_bit_count(1),
      I4 => ac97_cont0_latch_cmd_data_12_Q,
      I5 => ac97_cont0_latch_cmd_data_10_Q,
      O => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o22_970
    );
  ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o24 : LUT5
    generic map(
      INIT => X"14100400"
    )
    port map (
      I0 => ac97_cont0_bit_count(0),
      I1 => ac97_cont0_bit_count(1),
      I2 => ac97_cont0_bit_count(2),
      I3 => ac97_cont0_latch_cmd_data_13_Q,
      I4 => ac97_cont0_latch_cmd_data_17_Q,
      O => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o23_971
    );
  ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o25 : LUT6
    generic map(
      INIT => X"BBBBBBB922222220"
    )
    port map (
      I0 => ac97_cont0_bit_count(3),
      I1 => ac97_cont0_bit_count(4),
      I2 => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o22_970,
      I3 => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o23_971,
      I4 => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o21,
      I5 => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o121,
      O => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o24_972
    );
  ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o211 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ac97_cont0_bit_count(1),
      I1 => ac97_cont0_latch_cmd_data_7_Q,
      I2 => ac97_cont0_latch_cmd_data_5_Q,
      O => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o210
    );
  ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o212 : LUT6
    generic map(
      INIT => X"FDDD7555A8882000"
    )
    port map (
      I0 => ac97_cont0_bit_count(0),
      I1 => ac97_cont0_bit_count(1),
      I2 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT101_789,
      I3 => ac97_cont0_latch_cmd_data_14_Q,
      I4 => ac97_cont0_latch_cmd_data_4_Q,
      I5 => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o210,
      O => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o211_975
    );
  ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o215 : LUT4
    generic map(
      INIT => X"1115"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT101_789,
      I1 => ac97_cont0_bit_count(2),
      I2 => ac97_cont0_bit_count(0),
      I3 => ac97_cont0_bit_count(1),
      O => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o214_977
    );
  ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o216 : LUT6
    generic map(
      INIT => X"A8FFA8FFA8FFA8A8"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT101_789,
      I1 => ac97_cont0_rst_counter(12),
      I2 => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o25_973,
      I3 => ac97_cont0_bit_count(3),
      I4 => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o214_977,
      I5 => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o213,
      O => ac97_cont0_GND_6_o_GND_6_o_MUX_94_o
    );
  SOURCE_2_IBUF : IBUF
    port map (
      I => SOURCE(2),
      O => SOURCE_2_IBUF_0
    );
  SOURCE_1_IBUF : IBUF
    port map (
      I => SOURCE(1),
      O => SOURCE_1_IBUF_1
    );
  SOURCE_0_IBUF : IBUF
    port map (
      I => SOURCE(0),
      O => SOURCE_0_IBUF_2
    );
  VOLUME_4_IBUF : IBUF
    port map (
      I => VOLUME(4),
      O => VOLUME_4_IBUF_3
    );
  VOLUME_3_IBUF : IBUF
    port map (
      I => VOLUME(3),
      O => VOLUME_3_IBUF_4
    );
  VOLUME_2_IBUF : IBUF
    port map (
      I => VOLUME(2),
      O => VOLUME_2_IBUF_5
    );
  VOLUME_1_IBUF : IBUF
    port map (
      I => VOLUME(1),
      O => VOLUME_1_IBUF_6
    );
  VOLUME_0_IBUF : IBUF
    port map (
      I => VOLUME(0),
      O => VOLUME_0_IBUF_7
    );
  n_reset_IBUF : IBUF
    port map (
      I => n_reset,
      O => n_reset_IBUF_9
    );
  SDATA_IN_IBUF : IBUF
    port map (
      I => SDATA_IN,
      O => SDATA_IN_IBUF_10
    );
  SYNC_OBUF : OBUF
    port map (
      I => ac97_cont0_ac97_sync_103,
      O => SYNC
    );
  SDATA_OUT_OBUF : OBUF
    port map (
      I => ac97_cont0_ac97_sdata_out_102,
      O => SDATA_OUT
    );
  AC97_n_RESET_OBUF : OBUF
    port map (
      I => ac97_cont0_ac97_n_reset_104,
      O => AC97_n_RESET
    );
  ac97_cont0_Q1 : FDR
    port map (
      C => clk_BUFGP_8,
      D => ac97_cont0_Q1_glue_set_993,
      R => ac97_cont0_GND_6_o_bit_count_7_equal_21_o,
      Q => ac97_cont0_Q1_931
    );
  ac97_cont0_Q1_glue_set : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => ac97_cont0_Q1_931,
      I1 => ac97_cont0_n0013_inv,
      O => ac97_cont0_Q1_glue_set_993
    );
  ac97_cont0_Mcount_rst_counter_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_rst_counter(10),
      O => ac97_cont0_Mcount_rst_counter_cy_10_rt_994
    );
  ac97_cont0_Mcount_rst_counter_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_rst_counter(9),
      O => ac97_cont0_Mcount_rst_counter_cy_9_rt_995
    );
  ac97_cont0_Mcount_rst_counter_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_rst_counter(8),
      O => ac97_cont0_Mcount_rst_counter_cy_8_rt_996
    );
  ac97_cont0_Mcount_rst_counter_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_rst_counter(7),
      O => ac97_cont0_Mcount_rst_counter_cy_7_rt_997
    );
  ac97_cont0_Mcount_rst_counter_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_rst_counter(6),
      O => ac97_cont0_Mcount_rst_counter_cy_6_rt_998
    );
  ac97_cont0_Mcount_rst_counter_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_rst_counter(5),
      O => ac97_cont0_Mcount_rst_counter_cy_5_rt_999
    );
  ac97_cont0_Mcount_rst_counter_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_rst_counter(4),
      O => ac97_cont0_Mcount_rst_counter_cy_4_rt_1000
    );
  ac97_cont0_Mcount_rst_counter_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_rst_counter(3),
      O => ac97_cont0_Mcount_rst_counter_cy_3_rt_1001
    );
  ac97_cont0_Mcount_rst_counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_rst_counter(2),
      O => ac97_cont0_Mcount_rst_counter_cy_2_rt_1002
    );
  ac97_cont0_Mcount_rst_counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_rst_counter(1),
      O => ac97_cont0_Mcount_rst_counter_cy_1_rt_1003
    );
  ac97_cont0_Mcount_bit_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_bit_count(6),
      O => ac97_cont0_Mcount_bit_count_cy_6_rt_1004
    );
  ac97_cont0_Mcount_bit_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_bit_count(5),
      O => ac97_cont0_Mcount_bit_count_cy_5_rt_1005
    );
  ac97_cont0_Mcount_bit_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_bit_count(4),
      O => ac97_cont0_Mcount_bit_count_cy_4_rt_1006
    );
  ac97_cont0_Mcount_bit_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_bit_count(3),
      O => ac97_cont0_Mcount_bit_count_cy_3_rt_1007
    );
  ac97_cont0_Mcount_bit_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_bit_count(2),
      O => ac97_cont0_Mcount_bit_count_cy_2_rt_1008
    );
  ac97_cont0_Mcount_bit_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_bit_count(1),
      O => ac97_cont0_Mcount_bit_count_cy_1_rt_1009
    );
  ac97_cont0_Mcount_rst_counter_xor_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_rst_counter(11),
      O => ac97_cont0_Mcount_rst_counter_xor_11_rt_1011
    );
  ac97_cont0_Mcount_bit_count_xor_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_bit_count(7),
      O => ac97_cont0_Mcount_bit_count_xor_7_rt_1012
    );
  ac97_cont0_ac97_ready_sig : FD
    port map (
      C => clk_BUFGP_8,
      D => ac97_cont0_ac97_ready_sig_rstpot_1013,
      Q => ac97_cont0_ac97_ready_sig_105
    );
  ac97_cont0_ac97_sync : FD
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_ac97_sync_rstpot_1014,
      Q => ac97_cont0_ac97_sync_103
    );
  ac97_cont0_ac97_n_reset : FD
    port map (
      C => clk_BUFGP_8,
      D => ac97_cont0_ac97_n_reset_rstpot_1015,
      Q => ac97_cont0_ac97_n_reset_104
    );
  ac97_cont0_Mmux_GND_6_o_X_6_o_Mux_41_o_9 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => ac97_cont0_bit_count(1),
      I1 => ac97_cont0_bit_count(0),
      I2 => ac97_cont0_latch_right_data(5),
      I3 => ac97_cont0_latch_right_data(4),
      I4 => ac97_cont0_latch_right_data(6),
      I5 => ac97_cont0_latch_right_data(7),
      O => ac97_cont0_Mmux_GND_6_o_X_6_o_Mux_41_o_9_795
    );
  ac97_cont0_Mmux_GND_6_o_X_6_o_Mux_41_o_91 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => ac97_cont0_bit_count(1),
      I1 => ac97_cont0_bit_count(0),
      I2 => ac97_cont0_latch_right_data(9),
      I3 => ac97_cont0_latch_right_data(8),
      I4 => ac97_cont0_latch_right_data(10),
      I5 => ac97_cont0_latch_right_data(11),
      O => ac97_cont0_Mmux_GND_6_o_X_6_o_Mux_41_o_91_796
    );
  ac97_cont0_Mmux_GND_6_o_X_6_o_Mux_41_o_10 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => ac97_cont0_bit_count(1),
      I1 => ac97_cont0_bit_count(0),
      I2 => ac97_cont0_latch_right_data(13),
      I3 => ac97_cont0_latch_right_data(12),
      I4 => ac97_cont0_latch_right_data(14),
      I5 => ac97_cont0_latch_right_data(15),
      O => ac97_cont0_Mmux_GND_6_o_X_6_o_Mux_41_o_10_797
    );
  ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o22 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => ac97_cont0_bit_count(2),
      I1 => ac97_cont0_bit_count(0),
      I2 => ac97_cont0_bit_count(1),
      I3 => ac97_cont0_latch_cmd_data_15_Q,
      O => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o21
    );
  ac97_cont0_right_in_data_19 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_19_rstpot_1016,
      Q => ac97_cont0_right_in_data(19)
    );
  ac97_cont0_right_in_data_18 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_18_rstpot_1017,
      Q => ac97_cont0_right_in_data(18)
    );
  ac97_cont0_right_in_data_17 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_17_rstpot_1018,
      Q => ac97_cont0_right_in_data(17)
    );
  ac97_cont0_right_in_data_16 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_16_rstpot_1019,
      Q => ac97_cont0_right_in_data(16)
    );
  ac97_cont0_right_in_data_15 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_15_rstpot_1020,
      Q => ac97_cont0_right_in_data(15)
    );
  ac97_cont0_right_in_data_14 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_14_rstpot_1021,
      Q => ac97_cont0_right_in_data(14)
    );
  ac97_cont0_right_in_data_13 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_13_rstpot_1022,
      Q => ac97_cont0_right_in_data(13)
    );
  ac97_cont0_right_in_data_12 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_12_rstpot_1023,
      Q => ac97_cont0_right_in_data(12)
    );
  ac97_cont0_right_in_data_11 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_11_rstpot_1024,
      Q => ac97_cont0_right_in_data(11)
    );
  ac97_cont0_right_in_data_10 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_10_rstpot_1025,
      Q => ac97_cont0_right_in_data(10)
    );
  ac97_cont0_right_in_data_9 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_9_rstpot_1026,
      Q => ac97_cont0_right_in_data(9)
    );
  ac97_cont0_right_in_data_8 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_8_rstpot_1027,
      Q => ac97_cont0_right_in_data(8)
    );
  ac97_cont0_right_in_data_7 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_7_rstpot_1028,
      Q => ac97_cont0_right_in_data(7)
    );
  ac97_cont0_right_in_data_6 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_6_rstpot_1029,
      Q => ac97_cont0_right_in_data(6)
    );
  ac97_cont0_right_in_data_5 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_5_rstpot_1030,
      Q => ac97_cont0_right_in_data(5)
    );
  ac97_cont0_right_in_data_4 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_4_rstpot_1031,
      Q => ac97_cont0_right_in_data(4)
    );
  ac97_cont0_right_in_data_3 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_3_rstpot_1032,
      Q => ac97_cont0_right_in_data(3)
    );
  ac97_cont0_right_in_data_2 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_2_rstpot_1033,
      Q => ac97_cont0_right_in_data(2)
    );
  ac97_cont0_right_in_data_1 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_1_rstpot_1034,
      Q => ac97_cont0_right_in_data(1)
    );
  ac97_cont0_right_in_data_0 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_right_in_data_0_rstpot_1035,
      Q => ac97_cont0_right_in_data(0)
    );
  ac97_cont0_left_in_data_19_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ac97_cont0_left_in_data(18),
      I1 => ac97_cont0_left_in_data(19),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o,
      O => ac97_cont0_left_in_data_19_rstpot_1036
    );
  ac97_cont0_left_in_data_19 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_19_rstpot_1036,
      Q => ac97_cont0_left_in_data(19)
    );
  ac97_cont0_left_in_data_18_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ac97_cont0_left_in_data(17),
      I1 => ac97_cont0_left_in_data(18),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o,
      O => ac97_cont0_left_in_data_18_rstpot_1037
    );
  ac97_cont0_left_in_data_18 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_18_rstpot_1037,
      Q => ac97_cont0_left_in_data(18)
    );
  ac97_cont0_left_in_data_17_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ac97_cont0_left_in_data(16),
      I1 => ac97_cont0_left_in_data(17),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o,
      O => ac97_cont0_left_in_data_17_rstpot_1038
    );
  ac97_cont0_left_in_data_17 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_17_rstpot_1038,
      Q => ac97_cont0_left_in_data(17)
    );
  ac97_cont0_left_in_data_16_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ac97_cont0_left_in_data(15),
      I1 => ac97_cont0_left_in_data(16),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o,
      O => ac97_cont0_left_in_data_16_rstpot_1039
    );
  ac97_cont0_left_in_data_16 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_16_rstpot_1039,
      Q => ac97_cont0_left_in_data(16)
    );
  ac97_cont0_left_in_data_15_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ac97_cont0_left_in_data(14),
      I1 => ac97_cont0_left_in_data(15),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o,
      O => ac97_cont0_left_in_data_15_rstpot_1040
    );
  ac97_cont0_left_in_data_15 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_15_rstpot_1040,
      Q => ac97_cont0_left_in_data(15)
    );
  ac97_cont0_left_in_data_14_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ac97_cont0_left_in_data(13),
      I1 => ac97_cont0_left_in_data(14),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o,
      O => ac97_cont0_left_in_data_14_rstpot_1041
    );
  ac97_cont0_left_in_data_14 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_14_rstpot_1041,
      Q => ac97_cont0_left_in_data(14)
    );
  ac97_cont0_left_in_data_13_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ac97_cont0_left_in_data(12),
      I1 => ac97_cont0_left_in_data(13),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o,
      O => ac97_cont0_left_in_data_13_rstpot_1042
    );
  ac97_cont0_left_in_data_13 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_13_rstpot_1042,
      Q => ac97_cont0_left_in_data(13)
    );
  ac97_cont0_left_in_data_12_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ac97_cont0_left_in_data(11),
      I1 => ac97_cont0_left_in_data(12),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o,
      O => ac97_cont0_left_in_data_12_rstpot_1043
    );
  ac97_cont0_left_in_data_12 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_12_rstpot_1043,
      Q => ac97_cont0_left_in_data(12)
    );
  ac97_cont0_left_in_data_11_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ac97_cont0_left_in_data(10),
      I1 => ac97_cont0_left_in_data(11),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o,
      O => ac97_cont0_left_in_data_11_rstpot_1044
    );
  ac97_cont0_left_in_data_11 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_11_rstpot_1044,
      Q => ac97_cont0_left_in_data(11)
    );
  ac97_cont0_left_in_data_10_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ac97_cont0_left_in_data(9),
      I1 => ac97_cont0_left_in_data(10),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o,
      O => ac97_cont0_left_in_data_10_rstpot_1045
    );
  ac97_cont0_left_in_data_10 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_10_rstpot_1045,
      Q => ac97_cont0_left_in_data(10)
    );
  ac97_cont0_left_in_data_9_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ac97_cont0_left_in_data(8),
      I1 => ac97_cont0_left_in_data(9),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o,
      O => ac97_cont0_left_in_data_9_rstpot_1046
    );
  ac97_cont0_left_in_data_9 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_9_rstpot_1046,
      Q => ac97_cont0_left_in_data(9)
    );
  ac97_cont0_left_in_data_8_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ac97_cont0_left_in_data(7),
      I1 => ac97_cont0_left_in_data(8),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o31,
      O => ac97_cont0_left_in_data_8_rstpot_1047
    );
  ac97_cont0_left_in_data_8 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_8_rstpot_1047,
      Q => ac97_cont0_left_in_data(8)
    );
  ac97_cont0_left_in_data_7_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ac97_cont0_left_in_data(6),
      I1 => ac97_cont0_left_in_data(7),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o31,
      O => ac97_cont0_left_in_data_7_rstpot_1048
    );
  ac97_cont0_left_in_data_7 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_7_rstpot_1048,
      Q => ac97_cont0_left_in_data(7)
    );
  ac97_cont0_left_in_data_6_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ac97_cont0_left_in_data(5),
      I1 => ac97_cont0_left_in_data(6),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o31,
      O => ac97_cont0_left_in_data_6_rstpot_1049
    );
  ac97_cont0_left_in_data_6 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_6_rstpot_1049,
      Q => ac97_cont0_left_in_data(6)
    );
  ac97_cont0_left_in_data_5_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ac97_cont0_left_in_data(4),
      I1 => ac97_cont0_left_in_data(5),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o31,
      O => ac97_cont0_left_in_data_5_rstpot_1050
    );
  ac97_cont0_left_in_data_5 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_5_rstpot_1050,
      Q => ac97_cont0_left_in_data(5)
    );
  ac97_cont0_left_in_data_4_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ac97_cont0_left_in_data(3),
      I1 => ac97_cont0_left_in_data(4),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o31,
      O => ac97_cont0_left_in_data_4_rstpot_1051
    );
  ac97_cont0_left_in_data_4 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_4_rstpot_1051,
      Q => ac97_cont0_left_in_data(4)
    );
  ac97_cont0_left_in_data_3_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ac97_cont0_left_in_data(2),
      I1 => ac97_cont0_left_in_data(3),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o31,
      O => ac97_cont0_left_in_data_3_rstpot_1052
    );
  ac97_cont0_left_in_data_3 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_3_rstpot_1052,
      Q => ac97_cont0_left_in_data(3)
    );
  ac97_cont0_left_in_data_2_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ac97_cont0_left_in_data(1),
      I1 => ac97_cont0_left_in_data(2),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o31,
      O => ac97_cont0_left_in_data_2_rstpot_1053
    );
  ac97_cont0_left_in_data_2 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_2_rstpot_1053,
      Q => ac97_cont0_left_in_data(2)
    );
  ac97_cont0_left_in_data_1_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ac97_cont0_left_in_data(0),
      I1 => ac97_cont0_left_in_data(1),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o31,
      O => ac97_cont0_left_in_data_1_rstpot_1054
    );
  ac97_cont0_left_in_data_1 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_1_rstpot_1054,
      Q => ac97_cont0_left_in_data(1)
    );
  ac97_cont0_left_in_data_0_rstpot : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => SDATA_IN_IBUF_10,
      I1 => ac97_cont0_left_in_data(0),
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o31,
      O => ac97_cont0_left_in_data_0_rstpot_1055
    );
  ac97_cont0_left_in_data_0 : FD_1
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_left_in_data_0_rstpot_1055,
      Q => ac97_cont0_left_in_data(0)
    );
  ac97_cont0_right_in_data_19_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => ac97_cont0_right_in_data(18),
      I1 => ac97_cont0_right_in_data(19),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_19_rstpot_1016
    );
  ac97_cont0_right_in_data_18_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => ac97_cont0_right_in_data(17),
      I1 => ac97_cont0_right_in_data(18),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_18_rstpot_1017
    );
  ac97_cont0_right_in_data_17_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => ac97_cont0_right_in_data(16),
      I1 => ac97_cont0_right_in_data(17),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_17_rstpot_1018
    );
  ac97_cont0_right_in_data_16_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => ac97_cont0_right_in_data(15),
      I1 => ac97_cont0_right_in_data(16),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_16_rstpot_1019
    );
  ac97_cont0_right_in_data_15_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => ac97_cont0_right_in_data(14),
      I1 => ac97_cont0_right_in_data(15),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_15_rstpot_1020
    );
  ac97_cont0_right_in_data_14_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => ac97_cont0_right_in_data(13),
      I1 => ac97_cont0_right_in_data(14),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_14_rstpot_1021
    );
  ac97_cont0_right_in_data_13_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => ac97_cont0_right_in_data(12),
      I1 => ac97_cont0_right_in_data(13),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_13_rstpot_1022
    );
  ac97_cont0_right_in_data_12_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => ac97_cont0_right_in_data(11),
      I1 => ac97_cont0_right_in_data(12),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_12_rstpot_1023
    );
  ac97_cont0_right_in_data_11_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => ac97_cont0_right_in_data(10),
      I1 => ac97_cont0_right_in_data(11),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_11_rstpot_1024
    );
  ac97_cont0_right_in_data_10_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => ac97_cont0_right_in_data(9),
      I1 => ac97_cont0_right_in_data(10),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_10_rstpot_1025
    );
  ac97_cont0_right_in_data_9_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => ac97_cont0_right_in_data(8),
      I1 => ac97_cont0_right_in_data(9),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_9_rstpot_1026
    );
  ac97_cont0_right_in_data_8_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => ac97_cont0_right_in_data(7),
      I1 => ac97_cont0_right_in_data(8),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_8_rstpot_1027
    );
  ac97_cont0_right_in_data_7_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => ac97_cont0_right_in_data(6),
      I1 => ac97_cont0_right_in_data(7),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_7_rstpot_1028
    );
  ac97_cont0_right_in_data_6_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => ac97_cont0_right_in_data(5),
      I1 => ac97_cont0_right_in_data(6),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_6_rstpot_1029
    );
  ac97_cont0_right_in_data_5_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => ac97_cont0_right_in_data(4),
      I1 => ac97_cont0_right_in_data(5),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_5_rstpot_1030
    );
  ac97_cont0_right_in_data_4_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => ac97_cont0_right_in_data(3),
      I1 => ac97_cont0_right_in_data(4),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_4_rstpot_1031
    );
  ac97_cont0_right_in_data_3_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => ac97_cont0_right_in_data(2),
      I1 => ac97_cont0_right_in_data(3),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_3_rstpot_1032
    );
  ac97_cont0_right_in_data_2_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => ac97_cont0_right_in_data(1),
      I1 => ac97_cont0_right_in_data(2),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_2_rstpot_1033
    );
  ac97_cont0_right_in_data_1_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => ac97_cont0_right_in_data(0),
      I1 => ac97_cont0_right_in_data(1),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_1_rstpot_1034
    );
  ac97_cont0_right_in_data_0_rstpot : LUT5
    generic map(
      INIT => X"CACCCCCC"
    )
    port map (
      I0 => SDATA_IN_IBUF_10,
      I1 => ac97_cont0_right_in_data(0),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_bit_count(6),
      I4 => ac97_cont0_n0201_inv1_966,
      O => ac97_cont0_right_in_data_0_rstpot_1035
    );
  ac97_cont0_ac97_sdata_out : FD
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_ac97_sdata_out_rstpot_1056,
      Q => ac97_cont0_ac97_sdata_out_102
    );
  ac97_cont0_ac97_ready_sig_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ac97_cont0_Q1_931,
      I1 => ac97_cont0_Q2_932,
      O => ac97_cont0_ac97_ready_sig_rstpot_1013
    );
  ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o214 : LUT6
    generic map(
      INIT => X"8888A88800002000"
    )
    port map (
      I0 => ac97_cont0_bit_count(4),
      I1 => ac97_cont0_GND_6_o_bit_count_7_AND_5_o,
      I2 => ac97_cont0_GND_6_o_bit_count_7_AND_6_o,
      I3 => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o211_975,
      I4 => ac97_cont0_bit_count(2),
      I5 => N71,
      O => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o213
    );
  ac97_cont0_ac97_sync_rstpot_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ac97_cont0_bit_count(2),
      I1 => ac97_cont0_bit_count(3),
      O => N73
    );
  ac97_cont0_ac97_sync_rstpot : LUT6
    generic map(
      INIT => X"FFFF3FFFAAAA2AAA"
    )
    port map (
      I0 => ac97_cont0_ac97_sync_103,
      I1 => ac97_cont0_bit_count(0),
      I2 => ac97_cont0_bit_count(1),
      I3 => N73,
      I4 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT101_789,
      I5 => ac97_cont0_PWR_6_o_bit_count_7_equal_15_o,
      O => ac97_cont0_ac97_sync_rstpot_1014
    );
  gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => gain1_quot(0),
      I1 => gain1_s_396,
      O => gain1_Mmux_quot_17_quot_17_mux_33_OUT_rs_lut_0_Q_172
    );
  gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => gain0_quot(0),
      I1 => gain0_s_715,
      O => gain0_Mmux_quot_17_quot_17_mux_33_OUT_rs_lut_0_Q_491
    );
  ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o26 : LUT6
    generic map(
      INIT => X"5444554510001101"
    )
    port map (
      I0 => ac97_cont0_GND_6_o_bit_count_7_AND_5_o,
      I1 => ac97_cont0_GND_6_o_bit_count_7_AND_6_o,
      I2 => ac97_cont0_n0195_inv1,
      I3 => ac97_cont0_latch_left_data(19),
      I4 => N75,
      I5 => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o24_972,
      O => ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o25_973
    );
  ac97_cont0_Mmux_GND_6_o_X_6_o_Mux_41_o_4_SW0 : LUT4
    generic map(
      INIT => X"FF27"
    )
    port map (
      I0 => ac97_cont0_bit_count(0),
      I1 => ac97_cont0_latch_right_data(2),
      I2 => ac97_cont0_latch_right_data(3),
      I3 => ac97_cont0_bit_count(1),
      O => N77
    );
  ac97_cont0_ac97_sdata_out_rstpot : LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => ac97_cont0_GND_6_o_GND_6_o_MUX_94_o,
      I1 => ac97_cont0_bit_count(7),
      I2 => ac97_cont0_bit_count(6),
      I3 => ac97_cont0_bit_count(5),
      O => ac97_cont0_ac97_sdata_out_rstpot_1056
    );
  gain1_Mcompar_n0027_cy_4_Q : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => gain1_remainder(13),
      I1 => gain1_remainder(14),
      I2 => gain1_remainder(15),
      I3 => gain1_remainder(16),
      I4 => gain1_remainder(17),
      I5 => gain1_Mcompar_n0027_cy(3),
      O => gain1_Mcompar_n0027_cy(4)
    );
  gain0_Mcompar_n0027_cy_4_Q : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => gain0_remainder(13),
      I1 => gain0_remainder(14),
      I2 => gain0_remainder(15),
      I3 => gain0_remainder(16),
      I4 => gain0_remainder(17),
      I5 => gain0_Mcompar_n0027_cy(3),
      O => gain0_Mcompar_n0027_cy(4)
    );
  gain1_Mcount_count_lut_0_Q : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_count(0),
      O => gain1_Mcount_count_lut(0)
    );
  gain0_Mcount_count_lut_0_Q : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_count(0),
      O => gain0_Mcount_count_lut(0)
    );
  gain1_Mcount_count_lut_1_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_count(1),
      O => gain1_Mcount_count_lut(1)
    );
  gain0_Mcount_count_lut_1_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_count(1),
      O => gain0_Mcount_count_lut(1)
    );
  gain1_Mcount_count_lut_2_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_count(2),
      O => gain1_Mcount_count_lut(2)
    );
  gain0_Mcount_count_lut_2_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_count(2),
      O => gain0_Mcount_count_lut(2)
    );
  gain1_Mcount_count_lut_3_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_count(3),
      O => gain1_Mcount_count_lut(3)
    );
  gain0_Mcount_count_lut_3_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_count(3),
      O => gain0_Mcount_count_lut(3)
    );
  gain1_Mcount_count_lut_4_Q : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gain1_state_FSM_FFd2_446,
      I1 => gain1_count(4),
      O => gain1_Mcount_count_lut(4)
    );
  gain0_Mcount_count_lut_4_Q : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gain0_state_FSM_FFd2_765,
      I1 => gain0_count(4),
      O => gain0_Mcount_count_lut(4)
    );
  ac97_cont0_Mcount_rst_counter_val2 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => n_reset_IBUF_9,
      I1 => ac97_cont0_Mcount_rst_counter_val12_968,
      I2 => ac97_cont0_Mcount_rst_counter_val11_967,
      O => ac97_cont0_Mcount_rst_counter_val
    );
  ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT1021 : LUT6
    generic map(
      INIT => X"FFBFFFBFFFFDFFF5"
    )
    port map (
      I0 => ac97_cont0_bit_count(6),
      I1 => ac97_cont0_bit_count(3),
      I2 => ac97_cont0_bit_count(4),
      I3 => ac97_cont0_bit_count(7),
      I4 => ac97_cont0_bit_count(2),
      I5 => ac97_cont0_bit_count(5),
      O => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT102
    );
  ac97_cont0_ac97_n_reset_rstpot : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => n_reset_IBUF_9,
      I1 => ac97_cont0_ac97_n_reset_104,
      I2 => ac97_cont0_Mcount_rst_counter_val11_967,
      I3 => ac97_cont0_Mcount_rst_counter_val12_968,
      O => ac97_cont0_ac97_n_reset_rstpot_1015
    );
  gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gain1_in_latch(0),
      O => gain1_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_rt_1061
    );
  gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gain0_in_latch(0),
      O => gain0_Madd_in_latch_17_GND_7_o_add_14_OUT_cy_0_rt_1062
    );
  ac97_cont0_bit_count_6_1 : FD
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_Result_6_1,
      Q => ac97_cont0_bit_count_6_1_1063
    );
  ac97_cont0_bit_count_6_2 : FD
    port map (
      C => BIT_CLK_BUFGP_11,
      D => ac97_cont0_Result_6_1,
      Q => ac97_cont0_bit_count_6_2_1064
    );
  ac97_cont0_GND_6_o_bit_count_7_AND_9_o3_1 : LUT6
    generic map(
      INIT => X"0D0505050C000000"
    )
    port map (
      I0 => ac97_cont0_bit_count(5),
      I1 => ac97_cont0_bit_count(3),
      I2 => ac97_cont0_bit_count(7),
      I3 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o3_964,
      I4 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o1_794,
      I5 => ac97_cont0_GND_6_o_bit_count_7_AND_9_o2_963,
      O => ac97_cont0_GND_6_o_bit_count_7_AND_9_o31
    );
  ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o214_SW0 : MUXF7
    port map (
      I0 => N79,
      I1 => N80,
      S => ac97_cont0_bit_count(1),
      O => N71
    );
  ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o214_SW0_F : LUT6
    generic map(
      INIT => X"8E8C0E0C82800200"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT101_789,
      I1 => ac97_cont0_bit_count(2),
      I2 => ac97_cont0_bit_count(0),
      I3 => ac97_cont0_latch_cmd_addr_19_Q,
      I4 => ac97_cont0_latch_cmd_addr_14_Q,
      I5 => ac97_cont0_latch_cmd_addr_15_Q,
      O => N79
    );
  ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o214_SW0_G : LUT6
    generic map(
      INIT => X"22A800A822200020"
    )
    port map (
      I0 => ac97_cont0_Mmux_latch_left_data_19_latch_left_data_19_mux_45_OUT101_789,
      I1 => ac97_cont0_bit_count(2),
      I2 => ac97_cont0_latch_cmd_addr_17_Q,
      I3 => ac97_cont0_bit_count(0),
      I4 => ac97_cont0_latch_cmd_addr_16_Q,
      I5 => ac97_cont0_latch_cmd_addr_13_Q,
      O => N80
    );
  ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o26_SW0 : MUXF7
    port map (
      I0 => N81,
      I1 => N82,
      S => ac97_cont0_bit_count(4),
      O => N75
    );
  ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o26_SW0_F : LUT6
    generic map(
      INIT => X"028A139B46CE57DF"
    )
    port map (
      I0 => ac97_cont0_bit_count(0),
      I1 => ac97_cont0_bit_count(1),
      I2 => ac97_cont0_latch_right_data(18),
      I3 => ac97_cont0_latch_right_data(16),
      I4 => ac97_cont0_latch_right_data(19),
      I5 => ac97_cont0_latch_right_data(17),
      O => N81
    );
  ac97_cont0_Mmux_GND_6_o_GND_6_o_MUX_94_o26_SW0_G : LUT6
    generic map(
      INIT => X"80A291B3C4E6D5F7"
    )
    port map (
      I0 => ac97_cont0_bit_count(3),
      I1 => ac97_cont0_bit_count(2),
      I2 => N77,
      I3 => ac97_cont0_Mmux_GND_6_o_X_6_o_Mux_41_o_9_795,
      I4 => ac97_cont0_Mmux_GND_6_o_X_6_o_Mux_41_o_10_797,
      I5 => ac97_cont0_Mmux_GND_6_o_X_6_o_Mux_41_o_91_796,
      O => N82
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_8
    );
  BIT_CLK_BUFGP : BUFGP
    port map (
      I => BIT_CLK,
      O => BIT_CLK_BUFGP_11
    );
  ac97_cont0_Mcount_rst_counter_lut_0_INV_0 : INV
    port map (
      I => ac97_cont0_rst_counter(0),
      O => ac97_cont0_Mcount_rst_counter_lut(0)
    );
  n_reset_inv1_INV_0 : INV
    port map (
      I => n_reset_IBUF_9,
      O => ac97_cont0_n_reset_inv
    );
  gain1_state_1_inv1_INV_0 : INV
    port map (
      I => gain1_state_FSM_FFd2_446,
      O => gain1_state_1_inv
    );
  gain1_n0124_1_1_INV_0 : INV
    port map (
      I => gain1_in_latch(1),
      O => gain1_n0124(1)
    );
  gain1_n0124_2_1_INV_0 : INV
    port map (
      I => gain1_in_latch(2),
      O => gain1_n0124(2)
    );
  gain1_n0124_3_1_INV_0 : INV
    port map (
      I => gain1_in_latch(3),
      O => gain1_n0124(3)
    );
  gain1_n0124_4_1_INV_0 : INV
    port map (
      I => gain1_in_latch(4),
      O => gain1_n0124(4)
    );
  gain1_n0124_5_1_INV_0 : INV
    port map (
      I => gain1_in_latch(5),
      O => gain1_n0124(5)
    );
  gain1_n0124_6_1_INV_0 : INV
    port map (
      I => gain1_in_latch(6),
      O => gain1_n0124(6)
    );
  gain1_n0124_7_1_INV_0 : INV
    port map (
      I => gain1_in_latch(7),
      O => gain1_n0124(7)
    );
  gain1_n0124_8_1_INV_0 : INV
    port map (
      I => gain1_in_latch(8),
      O => gain1_n0124(8)
    );
  gain1_n0124_9_1_INV_0 : INV
    port map (
      I => gain1_in_latch(9),
      O => gain1_n0124(9)
    );
  gain1_n0124_10_1_INV_0 : INV
    port map (
      I => gain1_in_latch(10),
      O => gain1_n0124(10)
    );
  gain1_n0124_11_1_INV_0 : INV
    port map (
      I => gain1_in_latch(11),
      O => gain1_n0124(11)
    );
  gain1_n0124_12_1_INV_0 : INV
    port map (
      I => gain1_in_latch(12),
      O => gain1_n0124(12)
    );
  gain1_n0124_13_1_INV_0 : INV
    port map (
      I => gain1_in_latch(13),
      O => gain1_n0124(13)
    );
  gain1_n0124_14_1_INV_0 : INV
    port map (
      I => gain1_in_latch(14),
      O => gain1_n0124(14)
    );
  gain1_n0124_15_1_INV_0 : INV
    port map (
      I => gain1_in_latch(15),
      O => gain1_n0124(15)
    );
  gain1_n0124_16_1_INV_0 : INV
    port map (
      I => gain1_in_latch(16),
      O => gain1_n0124(16)
    );
  gain1_n0124_17_1_INV_0 : INV
    port map (
      I => gain1_in_latch(17),
      O => gain1_n0124(17)
    );
  gain0_state_1_inv1_INV_0 : INV
    port map (
      I => gain0_state_FSM_FFd2_765,
      O => gain0_state_1_inv
    );
  gain0_n0124_1_1_INV_0 : INV
    port map (
      I => gain0_in_latch(1),
      O => gain0_n0124(1)
    );
  gain0_n0124_2_1_INV_0 : INV
    port map (
      I => gain0_in_latch(2),
      O => gain0_n0124(2)
    );
  gain0_n0124_3_1_INV_0 : INV
    port map (
      I => gain0_in_latch(3),
      O => gain0_n0124(3)
    );
  gain0_n0124_4_1_INV_0 : INV
    port map (
      I => gain0_in_latch(4),
      O => gain0_n0124(4)
    );
  gain0_n0124_5_1_INV_0 : INV
    port map (
      I => gain0_in_latch(5),
      O => gain0_n0124(5)
    );
  gain0_n0124_6_1_INV_0 : INV
    port map (
      I => gain0_in_latch(6),
      O => gain0_n0124(6)
    );
  gain0_n0124_7_1_INV_0 : INV
    port map (
      I => gain0_in_latch(7),
      O => gain0_n0124(7)
    );
  gain0_n0124_8_1_INV_0 : INV
    port map (
      I => gain0_in_latch(8),
      O => gain0_n0124(8)
    );
  gain0_n0124_9_1_INV_0 : INV
    port map (
      I => gain0_in_latch(9),
      O => gain0_n0124(9)
    );
  gain0_n0124_10_1_INV_0 : INV
    port map (
      I => gain0_in_latch(10),
      O => gain0_n0124(10)
    );
  gain0_n0124_11_1_INV_0 : INV
    port map (
      I => gain0_in_latch(11),
      O => gain0_n0124(11)
    );
  gain0_n0124_12_1_INV_0 : INV
    port map (
      I => gain0_in_latch(12),
      O => gain0_n0124(12)
    );
  gain0_n0124_13_1_INV_0 : INV
    port map (
      I => gain0_in_latch(13),
      O => gain0_n0124(13)
    );
  gain0_n0124_14_1_INV_0 : INV
    port map (
      I => gain0_in_latch(14),
      O => gain0_n0124(14)
    );
  gain0_n0124_15_1_INV_0 : INV
    port map (
      I => gain0_in_latch(15),
      O => gain0_n0124(15)
    );
  gain0_n0124_16_1_INV_0 : INV
    port map (
      I => gain0_in_latch(16),
      O => gain0_n0124(16)
    );
  gain0_n0124_17_1_INV_0 : INV
    port map (
      I => gain0_in_latch(17),
      O => gain0_n0124(17)
    );
  ac97_cont0_Mcount_bit_count_lut_0_1_INV_0 : INV
    port map (
      I => ac97_cont0_bit_count(0),
      O => ac97_cont0_Mcount_bit_count_lut_0_1
    );

end Structure;

