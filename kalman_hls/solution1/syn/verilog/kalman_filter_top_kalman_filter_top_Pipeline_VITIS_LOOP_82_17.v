// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module kalman_filter_top_kalman_filter_top_Pipeline_VITIS_LOOP_82_17 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x_init_V_3_load,
        x_init_V_2_load,
        x_init_V_1_load,
        x_init_V_0_load,
        K_V_address0,
        K_V_ce0,
        K_V_q0,
        K_V_address1,
        K_V_ce1,
        K_V_q1,
        sext_ln1273_9,
        y_V_1_0257_cast,
        x_init_V_3_load_2_out,
        x_init_V_3_load_2_out_ap_vld,
        x_init_V_2_load_2_out,
        x_init_V_2_load_2_out_ap_vld,
        x_init_V_1_load_2_out,
        x_init_V_1_load_2_out_ap_vld,
        x_init_V_0_load_2_out,
        x_init_V_0_load_2_out_ap_vld,
        x_init_V_0_i,
        x_init_V_0_o,
        x_init_V_0_o_ap_vld,
        x_init_V_1_i,
        x_init_V_1_o,
        x_init_V_1_o_ap_vld,
        x_init_V_2_i,
        x_init_V_2_o,
        x_init_V_2_o_ap_vld,
        x_init_V_3_i,
        x_init_V_3_o,
        x_init_V_3_o_ap_vld,
        grp_fu_363_p_din0,
        grp_fu_363_p_din1,
        grp_fu_363_p_dout0,
        grp_fu_363_p_ce,
        grp_fu_377_p_din0,
        grp_fu_377_p_din1,
        grp_fu_377_p_dout0,
        grp_fu_377_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] x_init_V_3_load;
input  [31:0] x_init_V_2_load;
input  [31:0] x_init_V_1_load;
input  [31:0] x_init_V_0_load;
output  [2:0] K_V_address0;
output   K_V_ce0;
input  [31:0] K_V_q0;
output  [2:0] K_V_address1;
output   K_V_ce1;
input  [31:0] K_V_q1;
input  [31:0] sext_ln1273_9;
input  [31:0] y_V_1_0257_cast;
output  [31:0] x_init_V_3_load_2_out;
output   x_init_V_3_load_2_out_ap_vld;
output  [31:0] x_init_V_2_load_2_out;
output   x_init_V_2_load_2_out_ap_vld;
output  [31:0] x_init_V_1_load_2_out;
output   x_init_V_1_load_2_out_ap_vld;
output  [31:0] x_init_V_0_load_2_out;
output   x_init_V_0_load_2_out_ap_vld;
input  [31:0] x_init_V_0_i;
output  [31:0] x_init_V_0_o;
output   x_init_V_0_o_ap_vld;
input  [31:0] x_init_V_1_i;
output  [31:0] x_init_V_1_o;
output   x_init_V_1_o_ap_vld;
input  [31:0] x_init_V_2_i;
output  [31:0] x_init_V_2_o;
output   x_init_V_2_o_ap_vld;
input  [31:0] x_init_V_3_i;
output  [31:0] x_init_V_3_o;
output   x_init_V_3_o_ap_vld;
output  [31:0] grp_fu_363_p_din0;
output  [32:0] grp_fu_363_p_din1;
input  [47:0] grp_fu_363_p_dout0;
output   grp_fu_363_p_ce;
output  [31:0] grp_fu_377_p_din0;
output  [32:0] grp_fu_377_p_din1;
input  [47:0] grp_fu_377_p_dout0;
output   grp_fu_377_p_ce;

reg ap_idle;
reg K_V_ce0;
reg K_V_ce1;
reg x_init_V_3_load_2_out_ap_vld;
reg x_init_V_2_load_2_out_ap_vld;
reg x_init_V_1_load_2_out_ap_vld;
reg x_init_V_0_load_2_out_ap_vld;
reg[31:0] x_init_V_0_o;
reg x_init_V_0_o_ap_vld;
reg[31:0] x_init_V_1_o;
reg x_init_V_1_o_ap_vld;
reg[31:0] x_init_V_2_o;
reg x_init_V_2_o_ap_vld;
reg[31:0] x_init_V_3_o;
reg x_init_V_3_o_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln82_fu_279_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire  signed [47:0] y_V_1_0257_cast_cast_fu_239_p1;
reg  signed [47:0] y_V_1_0257_cast_cast_reg_506;
wire  signed [47:0] sext_ln1273_9_cast_fu_243_p1;
reg  signed [47:0] sext_ln1273_9_cast_reg_511;
wire   [1:0] empty_fu_275_p1;
reg   [1:0] empty_reg_516;
reg   [1:0] empty_reg_516_pp0_iter1_reg;
reg   [1:0] empty_reg_516_pp0_iter2_reg;
reg   [1:0] empty_reg_516_pp0_iter3_reg;
reg   [1:0] empty_reg_516_pp0_iter4_reg;
reg   [0:0] icmp_ln82_reg_521;
reg   [0:0] icmp_ln82_reg_521_pp0_iter1_reg;
reg   [0:0] icmp_ln82_reg_521_pp0_iter2_reg;
reg   [0:0] icmp_ln82_reg_521_pp0_iter3_reg;
reg   [0:0] icmp_ln82_reg_521_pp0_iter4_reg;
wire   [2:0] shl_ln1271_fu_291_p2;
reg   [2:0] shl_ln1271_reg_525;
reg   [31:0] K_V_load_reg_540;
wire  signed [47:0] sext_ln1273_fu_317_p1;
reg   [31:0] K_V_load_1_reg_550;
reg   [47:0] mul_ln1273_reg_555;
wire  signed [47:0] sext_ln1273_1_fu_325_p1;
reg   [31:0] x_init_V_0_load_1_reg_565;
reg   [31:0] x_init_V_1_load_1_reg_572;
reg   [31:0] x_init_V_2_load_1_reg_579;
reg   [31:0] x_init_V_3_load_1_reg_586;
reg   [47:0] mul_ln1273_1_reg_593;
reg   [31:0] tmp_s_reg_598;
reg   [31:0] ap_phi_mux_x_init_V_3_load_262_phi_fu_190_p8;
wire   [31:0] ap_phi_reg_pp0_iter5_x_init_V_3_load_262_reg_187;
reg   [31:0] ap_phi_mux_x_init_V_2_load_260_phi_fu_203_p8;
wire   [31:0] ap_phi_reg_pp0_iter5_x_init_V_2_load_260_reg_200;
reg   [31:0] ap_phi_mux_x_init_V_1_load_258_phi_fu_216_p8;
wire   [31:0] ap_phi_reg_pp0_iter5_x_init_V_1_load_258_reg_213;
reg   [31:0] ap_phi_mux_x_init_V_0_load_256_phi_fu_229_p8;
wire   [31:0] ap_phi_reg_pp0_iter5_x_init_V_0_load_256_reg_226;
wire   [63:0] zext_ln1271_fu_297_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1271_1_fu_312_p1;
reg   [31:0] ap_sig_allocacmp_x_init_V_0_load_1;
reg   [31:0] ap_sig_allocacmp_x_init_V_1_load_1;
reg   [31:0] ap_sig_allocacmp_x_init_V_2_load_1;
reg   [31:0] ap_sig_allocacmp_x_init_V_3_load_1;
reg   [2:0] i_fu_78;
wire   [2:0] add_ln82_fu_285_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i_2;
reg   [31:0] x_init_V_0_load_2_fu_82;
reg   [31:0] x_init_V_1_load_2_fu_86;
reg   [31:0] x_init_V_2_load_2_fu_90;
reg   [31:0] x_init_V_3_load_2_fu_94;
wire    ap_block_pp0_stage0_01001;
wire   [2:0] or_ln1271_fu_307_p2;
wire   [31:0] tmp_8_fu_349_p6;
wire   [47:0] shl_ln838_s_fu_362_p3;
wire   [47:0] add_ln1347_fu_370_p2;
wire   [47:0] shl_ln838_1_fu_385_p3;
wire   [47:0] add_ln1347_1_fu_392_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_done_reg = 1'b0;
end

kalman_filter_top_mux_42_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_U64(
    .din0(ap_sig_allocacmp_x_init_V_0_load_1),
    .din1(ap_sig_allocacmp_x_init_V_1_load_1),
    .din2(ap_sig_allocacmp_x_init_V_2_load_1),
    .din3(ap_sig_allocacmp_x_init_V_3_load_1),
    .din4(empty_reg_516_pp0_iter3_reg),
    .dout(tmp_8_fu_349_p6)
);

kalman_filter_top_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln82_fu_279_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_78 <= add_ln82_fu_285_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_78 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_init_V_0_load_2_fu_82 <= x_init_V_0_load;
        end else if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
            x_init_V_0_load_2_fu_82 <= ap_phi_mux_x_init_V_0_load_256_phi_fu_229_p8;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_init_V_1_load_2_fu_86 <= x_init_V_1_load;
        end else if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
            x_init_V_1_load_2_fu_86 <= ap_phi_mux_x_init_V_1_load_258_phi_fu_216_p8;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_init_V_2_load_2_fu_90 <= x_init_V_2_load;
        end else if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
            x_init_V_2_load_2_fu_90 <= ap_phi_mux_x_init_V_2_load_260_phi_fu_203_p8;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_init_V_3_load_2_fu_94 <= x_init_V_3_load;
        end else if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
            x_init_V_3_load_2_fu_94 <= ap_phi_mux_x_init_V_3_load_262_phi_fu_190_p8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln82_reg_521_pp0_iter1_reg == 1'd0))) begin
        K_V_load_1_reg_550 <= K_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln82_reg_521 == 1'd0))) begin
        K_V_load_reg_540 <= K_V_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_516 <= empty_fu_275_p1;
        empty_reg_516_pp0_iter1_reg <= empty_reg_516;
        icmp_ln82_reg_521 <= icmp_ln82_fu_279_p2;
        icmp_ln82_reg_521_pp0_iter1_reg <= icmp_ln82_reg_521;
        sext_ln1273_9_cast_reg_511 <= sext_ln1273_9_cast_fu_243_p1;
        y_V_1_0257_cast_cast_reg_506 <= y_V_1_0257_cast_cast_fu_239_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        empty_reg_516_pp0_iter2_reg <= empty_reg_516_pp0_iter1_reg;
        empty_reg_516_pp0_iter3_reg <= empty_reg_516_pp0_iter2_reg;
        empty_reg_516_pp0_iter4_reg <= empty_reg_516_pp0_iter3_reg;
        icmp_ln82_reg_521_pp0_iter2_reg <= icmp_ln82_reg_521_pp0_iter1_reg;
        icmp_ln82_reg_521_pp0_iter3_reg <= icmp_ln82_reg_521_pp0_iter2_reg;
        icmp_ln82_reg_521_pp0_iter4_reg <= icmp_ln82_reg_521_pp0_iter3_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln82_reg_521_pp0_iter3_reg == 1'd0))) begin
        mul_ln1273_1_reg_593 <= grp_fu_377_p_dout0;
        tmp_s_reg_598 <= {{add_ln1347_fu_370_p2[47:16]}};
        x_init_V_0_load_1_reg_565 <= ap_sig_allocacmp_x_init_V_0_load_1;
        x_init_V_1_load_1_reg_572 <= ap_sig_allocacmp_x_init_V_1_load_1;
        x_init_V_2_load_1_reg_579 <= ap_sig_allocacmp_x_init_V_2_load_1;
        x_init_V_3_load_1_reg_586 <= ap_sig_allocacmp_x_init_V_3_load_1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln82_reg_521_pp0_iter2_reg == 1'd0))) begin
        mul_ln1273_reg_555 <= grp_fu_363_p_dout0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln82_fu_279_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        shl_ln1271_reg_525[2 : 1] <= shl_ln1271_fu_291_p2[2 : 1];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        K_V_ce0 = 1'b1;
    end else begin
        K_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        K_V_ce1 = 1'b1;
    end else begin
        K_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln82_fu_279_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd0))) begin
        ap_phi_mux_x_init_V_0_load_256_phi_fu_229_p8 = {{add_ln1347_1_fu_392_p2[47:16]}};
    end else if ((((icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd1)) | ((icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd2)) | ((icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd3)))) begin
        ap_phi_mux_x_init_V_0_load_256_phi_fu_229_p8 = x_init_V_0_load_1_reg_565;
    end else begin
        ap_phi_mux_x_init_V_0_load_256_phi_fu_229_p8 = ap_phi_reg_pp0_iter5_x_init_V_0_load_256_reg_226;
    end
end

always @ (*) begin
    if (((icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd1))) begin
        ap_phi_mux_x_init_V_1_load_258_phi_fu_216_p8 = {{add_ln1347_1_fu_392_p2[47:16]}};
    end else if ((((icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd0)) | ((icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd2)) | ((icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd3)))) begin
        ap_phi_mux_x_init_V_1_load_258_phi_fu_216_p8 = x_init_V_1_load_1_reg_572;
    end else begin
        ap_phi_mux_x_init_V_1_load_258_phi_fu_216_p8 = ap_phi_reg_pp0_iter5_x_init_V_1_load_258_reg_213;
    end
end

always @ (*) begin
    if (((icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd2))) begin
        ap_phi_mux_x_init_V_2_load_260_phi_fu_203_p8 = {{add_ln1347_1_fu_392_p2[47:16]}};
    end else if ((((icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd0)) | ((icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd1)) | ((icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd3)))) begin
        ap_phi_mux_x_init_V_2_load_260_phi_fu_203_p8 = x_init_V_2_load_1_reg_579;
    end else begin
        ap_phi_mux_x_init_V_2_load_260_phi_fu_203_p8 = ap_phi_reg_pp0_iter5_x_init_V_2_load_260_reg_200;
    end
end

always @ (*) begin
    if ((((icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd0)) | ((icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd1)) | ((icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd2)))) begin
        ap_phi_mux_x_init_V_3_load_262_phi_fu_190_p8 = x_init_V_3_load_1_reg_586;
    end else if (((icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd3))) begin
        ap_phi_mux_x_init_V_3_load_262_phi_fu_190_p8 = {{add_ln1347_1_fu_392_p2[47:16]}};
    end else begin
        ap_phi_mux_x_init_V_3_load_262_phi_fu_190_p8 = ap_phi_reg_pp0_iter5_x_init_V_3_load_262_reg_187;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_2 = 3'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_78;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd0))) begin
        ap_sig_allocacmp_x_init_V_0_load_1 = {{add_ln1347_1_fu_392_p2[47:16]}};
    end else begin
        ap_sig_allocacmp_x_init_V_0_load_1 = x_init_V_0_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd1))) begin
        ap_sig_allocacmp_x_init_V_1_load_1 = {{add_ln1347_1_fu_392_p2[47:16]}};
    end else begin
        ap_sig_allocacmp_x_init_V_1_load_1 = x_init_V_1_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd2))) begin
        ap_sig_allocacmp_x_init_V_2_load_1 = {{add_ln1347_1_fu_392_p2[47:16]}};
    end else begin
        ap_sig_allocacmp_x_init_V_2_load_1 = x_init_V_2_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd3))) begin
        ap_sig_allocacmp_x_init_V_3_load_1 = {{add_ln1347_1_fu_392_p2[47:16]}};
    end else begin
        ap_sig_allocacmp_x_init_V_3_load_1 = x_init_V_3_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln82_reg_521_pp0_iter3_reg == 1'd1))) begin
        x_init_V_0_load_2_out_ap_vld = 1'b1;
    end else begin
        x_init_V_0_load_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd0))) begin
        x_init_V_0_o = {{add_ln1347_1_fu_392_p2[47:16]}};
    end else begin
        x_init_V_0_o = x_init_V_0_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd0))) begin
        x_init_V_0_o_ap_vld = 1'b1;
    end else begin
        x_init_V_0_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln82_reg_521_pp0_iter3_reg == 1'd1))) begin
        x_init_V_1_load_2_out_ap_vld = 1'b1;
    end else begin
        x_init_V_1_load_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd1))) begin
        x_init_V_1_o = {{add_ln1347_1_fu_392_p2[47:16]}};
    end else begin
        x_init_V_1_o = x_init_V_1_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd1))) begin
        x_init_V_1_o_ap_vld = 1'b1;
    end else begin
        x_init_V_1_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln82_reg_521_pp0_iter3_reg == 1'd1))) begin
        x_init_V_2_load_2_out_ap_vld = 1'b1;
    end else begin
        x_init_V_2_load_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd2))) begin
        x_init_V_2_o = {{add_ln1347_1_fu_392_p2[47:16]}};
    end else begin
        x_init_V_2_o = x_init_V_2_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd2))) begin
        x_init_V_2_o_ap_vld = 1'b1;
    end else begin
        x_init_V_2_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln82_reg_521_pp0_iter3_reg == 1'd1))) begin
        x_init_V_3_load_2_out_ap_vld = 1'b1;
    end else begin
        x_init_V_3_load_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd3))) begin
        x_init_V_3_o = {{add_ln1347_1_fu_392_p2[47:16]}};
    end else begin
        x_init_V_3_o = x_init_V_3_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln82_reg_521_pp0_iter4_reg == 1'd0) & (empty_reg_516_pp0_iter4_reg == 2'd3))) begin
        x_init_V_3_o_ap_vld = 1'b1;
    end else begin
        x_init_V_3_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign K_V_address0 = zext_ln1271_1_fu_312_p1;

assign K_V_address1 = zext_ln1271_fu_297_p1;

assign add_ln1347_1_fu_392_p2 = (shl_ln838_1_fu_385_p3 + mul_ln1273_1_reg_593);

assign add_ln1347_fu_370_p2 = (shl_ln838_s_fu_362_p3 + mul_ln1273_reg_555);

assign add_ln82_fu_285_p2 = (ap_sig_allocacmp_i_2 + 3'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_phi_reg_pp0_iter5_x_init_V_0_load_256_reg_226 = 'bx;

assign ap_phi_reg_pp0_iter5_x_init_V_1_load_258_reg_213 = 'bx;

assign ap_phi_reg_pp0_iter5_x_init_V_2_load_260_reg_200 = 'bx;

assign ap_phi_reg_pp0_iter5_x_init_V_3_load_262_reg_187 = 'bx;

assign empty_fu_275_p1 = ap_sig_allocacmp_i_2[1:0];

assign grp_fu_363_p_ce = 1'b1;

assign grp_fu_363_p_din0 = sext_ln1273_9_cast_reg_511;

assign grp_fu_363_p_din1 = sext_ln1273_fu_317_p1;

assign grp_fu_377_p_ce = 1'b1;

assign grp_fu_377_p_din0 = y_V_1_0257_cast_cast_reg_506;

assign grp_fu_377_p_din1 = sext_ln1273_1_fu_325_p1;

assign icmp_ln82_fu_279_p2 = ((ap_sig_allocacmp_i_2 == 3'd4) ? 1'b1 : 1'b0);

assign or_ln1271_fu_307_p2 = (shl_ln1271_reg_525 | 3'd1);

assign sext_ln1273_1_fu_325_p1 = $signed(K_V_load_1_reg_550);

assign sext_ln1273_9_cast_fu_243_p1 = $signed(sext_ln1273_9);

assign sext_ln1273_fu_317_p1 = $signed(K_V_load_reg_540);

assign shl_ln1271_fu_291_p2 = ap_sig_allocacmp_i_2 << 3'd1;

assign shl_ln838_1_fu_385_p3 = {{tmp_s_reg_598}, {16'd0}};

assign shl_ln838_s_fu_362_p3 = {{tmp_8_fu_349_p6}, {16'd0}};

assign x_init_V_0_load_2_out = x_init_V_0_load_2_fu_82;

assign x_init_V_1_load_2_out = x_init_V_1_load_2_fu_86;

assign x_init_V_2_load_2_out = x_init_V_2_load_2_fu_90;

assign x_init_V_3_load_2_out = x_init_V_3_load_2_fu_94;

assign y_V_1_0257_cast_cast_fu_239_p1 = $signed(y_V_1_0257_cast);

assign zext_ln1271_1_fu_312_p1 = or_ln1271_fu_307_p2;

assign zext_ln1271_fu_297_p1 = shl_ln1271_fu_291_p2;

always @ (posedge ap_clk) begin
    shl_ln1271_reg_525[0] <= 1'b0;
end

endmodule //kalman_filter_top_kalman_filter_top_Pipeline_VITIS_LOOP_82_17