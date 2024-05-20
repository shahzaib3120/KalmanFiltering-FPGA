set SynModuleInfo {
  {SRCNAME kalman_filter_top_Pipeline_VITIS_LOOP_20_1 MODELNAME kalman_filter_top_Pipeline_VITIS_LOOP_20_1 RTLNAME kalman_filter_top_kalman_filter_top_Pipeline_VITIS_LOOP_20_1
    SUBMODULES {
      {MODELNAME kalman_filter_top_mux_42_32_1_1 RTLNAME kalman_filter_top_mux_42_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME kalman_filter_top_mul_32s_32ns_48_2_1 RTLNAME kalman_filter_top_mul_32s_32ns_48_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME kalman_filter_top_flow_control_loop_pipe_sequential_init RTLNAME kalman_filter_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME kalman_filter_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME kalman_filter_top_Pipeline_VITIS_LOOP_27_3_VITIS_LOOP_28_4 MODELNAME kalman_filter_top_Pipeline_VITIS_LOOP_27_3_VITIS_LOOP_28_4 RTLNAME kalman_filter_top_kalman_filter_top_Pipeline_VITIS_LOOP_27_3_VITIS_LOOP_28_4}
  {SRCNAME kalman_filter_top_Pipeline_VITIS_LOOP_36_6_VITIS_LOOP_37_7 MODELNAME kalman_filter_top_Pipeline_VITIS_LOOP_36_6_VITIS_LOOP_37_7 RTLNAME kalman_filter_top_kalman_filter_top_Pipeline_VITIS_LOOP_36_6_VITIS_LOOP_37_7
    SUBMODULES {
      {MODELNAME kalman_filter_top_kalman_filter_top_Pipeline_VITIS_LOOP_36_6_VITIS_LOOP_37_7_Q_ROM_AUTO_1R RTLNAME kalman_filter_top_kalman_filter_top_Pipeline_VITIS_LOOP_36_6_VITIS_LOOP_37_7_Q_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME kalman_filter_top_Pipeline_VITIS_LOOP_44_8 MODELNAME kalman_filter_top_Pipeline_VITIS_LOOP_44_8 RTLNAME kalman_filter_top_kalman_filter_top_Pipeline_VITIS_LOOP_44_8}
  {SRCNAME kalman_filter_top_Pipeline_VITIS_LOOP_52_10_VITIS_LOOP_53_11 MODELNAME kalman_filter_top_Pipeline_VITIS_LOOP_52_10_VITIS_LOOP_53_11 RTLNAME kalman_filter_top_kalman_filter_top_Pipeline_VITIS_LOOP_52_10_VITIS_LOOP_53_11}
  {SRCNAME kalman_filter_top_Pipeline_VITIS_LOOP_71_13_VITIS_LOOP_72_14 MODELNAME kalman_filter_top_Pipeline_VITIS_LOOP_71_13_VITIS_LOOP_72_14 RTLNAME kalman_filter_top_kalman_filter_top_Pipeline_VITIS_LOOP_71_13_VITIS_LOOP_72_14
    SUBMODULES {
      {MODELNAME kalman_filter_top_mul_48s_32s_64_5_1 RTLNAME kalman_filter_top_mul_48s_32s_64_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME kalman_filter_top_Pipeline_VITIS_LOOP_82_17 MODELNAME kalman_filter_top_Pipeline_VITIS_LOOP_82_17 RTLNAME kalman_filter_top_kalman_filter_top_Pipeline_VITIS_LOOP_82_17}
  {SRCNAME kalman_filter_top_Pipeline_VITIS_LOOP_89_19_VITIS_LOOP_90_20 MODELNAME kalman_filter_top_Pipeline_VITIS_LOOP_89_19_VITIS_LOOP_90_20 RTLNAME kalman_filter_top_kalman_filter_top_Pipeline_VITIS_LOOP_89_19_VITIS_LOOP_90_20
    SUBMODULES {
      {MODELNAME kalman_filter_top_mul_17ns_32s_48_2_1 RTLNAME kalman_filter_top_mul_17ns_32s_48_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME kalman_filter_top_Pipeline_VITIS_LOOP_98_22_VITIS_LOOP_99_23 MODELNAME kalman_filter_top_Pipeline_VITIS_LOOP_98_22_VITIS_LOOP_99_23 RTLNAME kalman_filter_top_kalman_filter_top_Pipeline_VITIS_LOOP_98_22_VITIS_LOOP_99_23}
  {SRCNAME kalman_filter_top_Pipeline_VITIS_LOOP_151_1 MODELNAME kalman_filter_top_Pipeline_VITIS_LOOP_151_1 RTLNAME kalman_filter_top_kalman_filter_top_Pipeline_VITIS_LOOP_151_1}
  {SRCNAME kalman_filter_top MODELNAME kalman_filter_top RTLNAME kalman_filter_top IS_TOP 1
    SUBMODULES {
      {MODELNAME kalman_filter_top_mul_32s_32s_48_2_1 RTLNAME kalman_filter_top_mul_32s_32s_48_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME kalman_filter_top_sdiv_48ns_32s_32_52_seq_1 RTLNAME kalman_filter_top_sdiv_48ns_32s_32_52_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 51 ALLOW_PRAGMA 1}
      {MODELNAME kalman_filter_top_sdiv_49ns_32s_32_53_seq_1 RTLNAME kalman_filter_top_sdiv_49ns_32s_32_53_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 52 ALLOW_PRAGMA 1}
      {MODELNAME kalman_filter_top_mul_32s_17ns_48_2_1 RTLNAME kalman_filter_top_mul_32s_17ns_48_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME kalman_filter_top_P_init_V_RAM_AUTO_1R1W RTLNAME kalman_filter_top_P_init_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kalman_filter_top_H_ROM_AUTO_1R RTLNAME kalman_filter_top_H_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kalman_filter_top_P_prior_V_RAM_1WNR_AUTO_1R1W RTLNAME kalman_filter_top_P_prior_V_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kalman_filter_top_K_V_RAM_AUTO_1R1W RTLNAME kalman_filter_top_K_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kalman_filter_top_temp_V_RAM_AUTO_1R1W RTLNAME kalman_filter_top_temp_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kalman_filter_top_hostmem_m_axi RTLNAME kalman_filter_top_hostmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME kalman_filter_top_CONTROL_BUS_s_axi RTLNAME kalman_filter_top_CONTROL_BUS_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
