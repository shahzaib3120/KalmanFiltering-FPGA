-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity kalman_filter_top_kalman_filter_top_Pipeline_VITIS_LOOP_71_13_VITIS_LOOP_72_14 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    P_prior_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    P_prior_V_ce0 : OUT STD_LOGIC;
    P_prior_V_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    P_prior_V_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    P_prior_V_ce1 : OUT STD_LOGIC;
    P_prior_V_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    K_V_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    K_V_ce0 : OUT STD_LOGIC;
    K_V_we0 : OUT STD_LOGIC;
    K_V_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    S_inv_V_0_1 : IN STD_LOGIC_VECTOR (31 downto 0);
    S_inv_V_0_0 : IN STD_LOGIC_VECTOR (31 downto 0);
    S_inv_V_1_1 : IN STD_LOGIC_VECTOR (31 downto 0);
    S_inv_V_1_0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of kalman_filter_top_kalman_filter_top_Pipeline_VITIS_LOOP_71_13_VITIS_LOOP_72_14 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter5 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter6 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter7 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter5 : BOOLEAN;
    signal ap_block_state7_pp0_stage0_iter6 : BOOLEAN;
    signal ap_block_state8_pp0_stage0_iter7 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln71_fu_173_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal select_ln71_fu_204_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln71_reg_434 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln71_reg_434_pp0_iter1_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln71_reg_434_pp0_iter2_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln71_reg_434_pp0_iter3_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln71_reg_434_pp0_iter4_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln71_reg_434_pp0_iter5_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln71_reg_434_pp0_iter6_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln71_1_fu_220_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln71_1_reg_439 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln71_1_reg_439_pp0_iter1_reg : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln71_1_reg_439_pp0_iter2_reg : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln71_1_reg_439_pp0_iter3_reg : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln71_1_reg_439_pp0_iter4_reg : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln71_1_reg_439_pp0_iter5_reg : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln71_1_reg_439_pp0_iter6_reg : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln1273_fu_260_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln1273_reg_454 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln1273_reg_454_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal P_prior_V_load_reg_460 : STD_LOGIC_VECTOR (31 downto 0);
    signal P_prior_V_load_1_reg_465 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_331_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal mul_ln1273_2_reg_490 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_reg_495 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln71_fu_236_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal select_ln71_3_cast_fu_255_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln73_1_fu_361_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_fu_66 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln72_fu_264_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_j_load : STD_LOGIC_VECTOR (1 downto 0);
    signal i_fu_70 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_allocacmp_i_3 : STD_LOGIC_VECTOR (2 downto 0);
    signal indvar_flatten36_fu_74 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln71_1_fu_179_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_indvar_flatten36_load : STD_LOGIC_VECTOR (3 downto 0);
    signal empty_fu_161_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln71_fu_188_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal icmp_ln72_fu_198_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln71_fu_194_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_42_cast_fu_212_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_40_cast_fu_165_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln71_2_fu_228_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln71_4_fu_241_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal or_ln71_fu_249_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln1273_cast_mid2_v_fu_285_p3 : STD_LOGIC_VECTOR (47 downto 0);
    signal sext_ln72_mid2_v_fu_296_p3 : STD_LOGIC_VECTOR (47 downto 0);
    signal select_ln1273_fu_307_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln1273_1_fu_322_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_316_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal shl_ln73_fu_347_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln73_fu_352_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln73_fu_355_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal shl_ln838_s_fu_366_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln1347_fu_373_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter5_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter6_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component kalman_filter_top_mul_48s_32s_64_5_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (47 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component kalman_filter_top_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    mul_48s_32s_64_5_1_U53 : component kalman_filter_top_mul_48s_32s_64_5_1
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 48,
        din1_WIDTH => 32,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => shl_ln1273_cast_mid2_v_fu_285_p3,
        din1 => select_ln1273_fu_307_p3,
        ce => ap_const_logic_1,
        dout => grp_fu_316_p2);

    mul_48s_32s_64_5_1_U54 : component kalman_filter_top_mul_48s_32s_64_5_1
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 48,
        din1_WIDTH => 32,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => sext_ln72_mid2_v_fu_296_p3,
        din1 => select_ln1273_1_fu_322_p3,
        ce => ap_const_logic_1,
        dout => grp_fu_331_p2);

    flow_control_loop_pipe_sequential_init_U : component kalman_filter_top_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter6_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter5_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter5 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter6_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter6 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter7_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter7 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
                end if; 
            end if;
        end if;
    end process;


    i_fu_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln71_fu_173_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_70 <= select_ln71_1_fu_220_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_70 <= ap_const_lv3_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten36_fu_74_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln71_fu_173_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten36_fu_74 <= add_ln71_1_fu_179_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten36_fu_74 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;

    j_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln71_fu_173_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    j_fu_66 <= add_ln72_fu_264_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_66 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                P_prior_V_load_1_reg_465 <= P_prior_V_q0;
                P_prior_V_load_reg_460 <= P_prior_V_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                select_ln71_1_reg_439_pp0_iter1_reg <= select_ln71_1_reg_439;
                select_ln71_reg_434_pp0_iter1_reg <= select_ln71_reg_434;
                trunc_ln1273_reg_454_pp0_iter1_reg <= trunc_ln1273_reg_454;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
                ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
                ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
                mul_ln1273_2_reg_490 <= grp_fu_331_p2;
                select_ln71_1_reg_439_pp0_iter2_reg <= select_ln71_1_reg_439_pp0_iter1_reg;
                select_ln71_1_reg_439_pp0_iter3_reg <= select_ln71_1_reg_439_pp0_iter2_reg;
                select_ln71_1_reg_439_pp0_iter4_reg <= select_ln71_1_reg_439_pp0_iter3_reg;
                select_ln71_1_reg_439_pp0_iter5_reg <= select_ln71_1_reg_439_pp0_iter4_reg;
                select_ln71_1_reg_439_pp0_iter6_reg <= select_ln71_1_reg_439_pp0_iter5_reg;
                select_ln71_reg_434_pp0_iter2_reg <= select_ln71_reg_434_pp0_iter1_reg;
                select_ln71_reg_434_pp0_iter3_reg <= select_ln71_reg_434_pp0_iter2_reg;
                select_ln71_reg_434_pp0_iter4_reg <= select_ln71_reg_434_pp0_iter3_reg;
                select_ln71_reg_434_pp0_iter5_reg <= select_ln71_reg_434_pp0_iter4_reg;
                select_ln71_reg_434_pp0_iter6_reg <= select_ln71_reg_434_pp0_iter5_reg;
                tmp_s_reg_495 <= grp_fu_316_p2(63 downto 32);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln71_fu_173_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                select_ln71_1_reg_439 <= select_ln71_1_fu_220_p3;
                select_ln71_reg_434 <= select_ln71_fu_204_p3;
                trunc_ln1273_reg_454 <= trunc_ln1273_fu_260_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    K_V_address0 <= zext_ln73_1_fu_361_p1(3 - 1 downto 0);

    K_V_ce0_assign_proc : process(ap_enable_reg_pp0_iter7, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter7 = ap_const_logic_1))) then 
            K_V_ce0 <= ap_const_logic_1;
        else 
            K_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    K_V_d0 <= add_ln1347_fu_373_p2(63 downto 32);

    K_V_we0_assign_proc : process(ap_enable_reg_pp0_iter7, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter7 = ap_const_logic_1))) then 
            K_V_we0 <= ap_const_logic_1;
        else 
            K_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    P_prior_V_address0 <= select_ln71_3_cast_fu_255_p1(4 - 1 downto 0);
    P_prior_V_address1 <= zext_ln71_fu_236_p1(4 - 1 downto 0);

    P_prior_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            P_prior_V_ce0 <= ap_const_logic_1;
        else 
            P_prior_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    P_prior_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            P_prior_V_ce1 <= ap_const_logic_1;
        else 
            P_prior_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln1347_fu_373_p2 <= std_logic_vector(unsigned(shl_ln838_s_fu_366_p3) + unsigned(mul_ln1273_2_reg_490));
    add_ln71_1_fu_179_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten36_load) + unsigned(ap_const_lv4_1));
    add_ln71_fu_188_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_3) + unsigned(ap_const_lv3_1));
    add_ln72_fu_264_p2 <= std_logic_vector(unsigned(select_ln71_fu_204_p3) + unsigned(ap_const_lv2_1));
    add_ln73_fu_355_p2 <= std_logic_vector(unsigned(shl_ln73_fu_347_p2) + unsigned(zext_ln73_fu_352_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage0_iter6 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state8_pp0_stage0_iter7 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln71_fu_173_p2)
    begin
        if (((icmp_ln71_fu_173_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter6_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter6_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5, ap_enable_reg_pp0_iter6, ap_enable_reg_pp0_iter7)
    begin
        if (((ap_enable_reg_pp0_iter7 = ap_const_logic_0) and (ap_enable_reg_pp0_iter6 = ap_const_logic_0) and (ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_3_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, i_fu_70)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_i_3 <= ap_const_lv3_0;
        else 
            ap_sig_allocacmp_i_3 <= i_fu_70;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten36_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten36_fu_74)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_indvar_flatten36_load <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_indvar_flatten36_load <= indvar_flatten36_fu_74;
        end if; 
    end process;


    ap_sig_allocacmp_j_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, j_fu_66, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_j_load <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_j_load <= j_fu_66;
        end if; 
    end process;

    empty_fu_161_p1 <= ap_sig_allocacmp_i_3(2 - 1 downto 0);
    icmp_ln71_fu_173_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten36_load = ap_const_lv4_8) else "0";
    icmp_ln72_fu_198_p2 <= "1" when (ap_sig_allocacmp_j_load = ap_const_lv2_2) else "0";
    or_ln71_fu_249_p2 <= (select_ln71_4_fu_241_p3 or ap_const_lv4_1);
    select_ln1273_1_fu_322_p3 <= 
        S_inv_V_1_1 when (trunc_ln1273_reg_454_pp0_iter1_reg(0) = '1') else 
        S_inv_V_1_0;
    select_ln1273_fu_307_p3 <= 
        S_inv_V_0_1 when (trunc_ln1273_reg_454_pp0_iter1_reg(0) = '1') else 
        S_inv_V_0_0;
    select_ln71_1_fu_220_p3 <= 
        add_ln71_fu_188_p2 when (icmp_ln72_fu_198_p2(0) = '1') else 
        ap_sig_allocacmp_i_3;
    select_ln71_2_fu_228_p3 <= 
        tmp_42_cast_fu_212_p3 when (icmp_ln72_fu_198_p2(0) = '1') else 
        tmp_40_cast_fu_165_p3;
    select_ln71_3_cast_fu_255_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln71_fu_249_p2),64));
    select_ln71_4_fu_241_p3 <= 
        tmp_42_cast_fu_212_p3 when (icmp_ln72_fu_198_p2(0) = '1') else 
        tmp_40_cast_fu_165_p3;
    select_ln71_fu_204_p3 <= 
        ap_const_lv2_0 when (icmp_ln72_fu_198_p2(0) = '1') else 
        ap_sig_allocacmp_j_load;
    sext_ln72_mid2_v_fu_296_p3 <= (P_prior_V_load_1_reg_465 & ap_const_lv16_0);
    shl_ln1273_cast_mid2_v_fu_285_p3 <= (P_prior_V_load_reg_460 & ap_const_lv16_0);
    shl_ln73_fu_347_p2 <= std_logic_vector(shift_left(unsigned(select_ln71_1_reg_439_pp0_iter6_reg),to_integer(unsigned('0' & ap_const_lv3_1(3-1 downto 0)))));
    shl_ln838_s_fu_366_p3 <= (tmp_s_reg_495 & ap_const_lv32_0);
    tmp_40_cast_fu_165_p3 <= (empty_fu_161_p1 & ap_const_lv2_0);
    tmp_42_cast_fu_212_p3 <= (trunc_ln71_fu_194_p1 & ap_const_lv2_0);
    trunc_ln1273_fu_260_p1 <= select_ln71_fu_204_p3(1 - 1 downto 0);
    trunc_ln71_fu_194_p1 <= add_ln71_fu_188_p2(2 - 1 downto 0);
    zext_ln71_fu_236_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln71_2_fu_228_p3),64));
    zext_ln73_1_fu_361_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln73_fu_355_p2),64));
    zext_ln73_fu_352_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln71_reg_434_pp0_iter6_reg),3));
end behav;
