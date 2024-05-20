// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module kalman_filter_top_kalman_filter_top_Pipeline_VITIS_LOOP_151_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_hostmem_AWVALID,
        m_axi_hostmem_AWREADY,
        m_axi_hostmem_AWADDR,
        m_axi_hostmem_AWID,
        m_axi_hostmem_AWLEN,
        m_axi_hostmem_AWSIZE,
        m_axi_hostmem_AWBURST,
        m_axi_hostmem_AWLOCK,
        m_axi_hostmem_AWCACHE,
        m_axi_hostmem_AWPROT,
        m_axi_hostmem_AWQOS,
        m_axi_hostmem_AWREGION,
        m_axi_hostmem_AWUSER,
        m_axi_hostmem_WVALID,
        m_axi_hostmem_WREADY,
        m_axi_hostmem_WDATA,
        m_axi_hostmem_WSTRB,
        m_axi_hostmem_WLAST,
        m_axi_hostmem_WID,
        m_axi_hostmem_WUSER,
        m_axi_hostmem_ARVALID,
        m_axi_hostmem_ARREADY,
        m_axi_hostmem_ARADDR,
        m_axi_hostmem_ARID,
        m_axi_hostmem_ARLEN,
        m_axi_hostmem_ARSIZE,
        m_axi_hostmem_ARBURST,
        m_axi_hostmem_ARLOCK,
        m_axi_hostmem_ARCACHE,
        m_axi_hostmem_ARPROT,
        m_axi_hostmem_ARQOS,
        m_axi_hostmem_ARREGION,
        m_axi_hostmem_ARUSER,
        m_axi_hostmem_RVALID,
        m_axi_hostmem_RREADY,
        m_axi_hostmem_RDATA,
        m_axi_hostmem_RLAST,
        m_axi_hostmem_RID,
        m_axi_hostmem_RFIFONUM,
        m_axi_hostmem_RUSER,
        m_axi_hostmem_RRESP,
        m_axi_hostmem_BVALID,
        m_axi_hostmem_BREADY,
        m_axi_hostmem_BRESP,
        m_axi_hostmem_BID,
        m_axi_hostmem_BUSER,
        x_init_V_0_load_2_reload,
        x_init_V_1_load_2_reload,
        x_init_V_2_load_2_reload,
        x_init_V_3_load_2_reload,
        sext_ln151_1,
        sext_ln151,
        P_init_V_address0,
        P_init_V_ce0,
        P_init_V_q0,
        P_init_V_address1,
        P_init_V_ce1,
        P_init_V_q1
);

parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_hostmem_AWVALID;
input   m_axi_hostmem_AWREADY;
output  [63:0] m_axi_hostmem_AWADDR;
output  [0:0] m_axi_hostmem_AWID;
output  [31:0] m_axi_hostmem_AWLEN;
output  [2:0] m_axi_hostmem_AWSIZE;
output  [1:0] m_axi_hostmem_AWBURST;
output  [1:0] m_axi_hostmem_AWLOCK;
output  [3:0] m_axi_hostmem_AWCACHE;
output  [2:0] m_axi_hostmem_AWPROT;
output  [3:0] m_axi_hostmem_AWQOS;
output  [3:0] m_axi_hostmem_AWREGION;
output  [0:0] m_axi_hostmem_AWUSER;
output   m_axi_hostmem_WVALID;
input   m_axi_hostmem_WREADY;
output  [31:0] m_axi_hostmem_WDATA;
output  [3:0] m_axi_hostmem_WSTRB;
output   m_axi_hostmem_WLAST;
output  [0:0] m_axi_hostmem_WID;
output  [0:0] m_axi_hostmem_WUSER;
output   m_axi_hostmem_ARVALID;
input   m_axi_hostmem_ARREADY;
output  [63:0] m_axi_hostmem_ARADDR;
output  [0:0] m_axi_hostmem_ARID;
output  [31:0] m_axi_hostmem_ARLEN;
output  [2:0] m_axi_hostmem_ARSIZE;
output  [1:0] m_axi_hostmem_ARBURST;
output  [1:0] m_axi_hostmem_ARLOCK;
output  [3:0] m_axi_hostmem_ARCACHE;
output  [2:0] m_axi_hostmem_ARPROT;
output  [3:0] m_axi_hostmem_ARQOS;
output  [3:0] m_axi_hostmem_ARREGION;
output  [0:0] m_axi_hostmem_ARUSER;
input   m_axi_hostmem_RVALID;
output   m_axi_hostmem_RREADY;
input  [31:0] m_axi_hostmem_RDATA;
input   m_axi_hostmem_RLAST;
input  [0:0] m_axi_hostmem_RID;
input  [8:0] m_axi_hostmem_RFIFONUM;
input  [0:0] m_axi_hostmem_RUSER;
input  [1:0] m_axi_hostmem_RRESP;
input   m_axi_hostmem_BVALID;
output   m_axi_hostmem_BREADY;
input  [1:0] m_axi_hostmem_BRESP;
input  [0:0] m_axi_hostmem_BID;
input  [0:0] m_axi_hostmem_BUSER;
input  [31:0] x_init_V_0_load_2_reload;
input  [31:0] x_init_V_1_load_2_reload;
input  [31:0] x_init_V_2_load_2_reload;
input  [31:0] x_init_V_3_load_2_reload;
input  [61:0] sext_ln151_1;
input  [61:0] sext_ln151;
output  [3:0] P_init_V_address0;
output   P_init_V_ce0;
input  [31:0] P_init_V_q0;
output  [3:0] P_init_V_address1;
output   P_init_V_ce1;
input  [31:0] P_init_V_q1;

reg ap_idle;
reg m_axi_hostmem_AWVALID;
reg[63:0] m_axi_hostmem_AWADDR;
reg m_axi_hostmem_WVALID;
reg[31:0] m_axi_hostmem_WDATA;
reg m_axi_hostmem_BREADY;
reg[3:0] P_init_V_address0;
reg P_init_V_ce0;
reg[3:0] P_init_V_address1;
reg P_init_V_ce1;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_state5_pp0_stage4_iter0;
reg   [0:0] icmp_ln151_reg_439;
reg    ap_block_state5_io;
reg    ap_block_state10_pp0_stage4_iter1;
reg    ap_block_pp0_stage4_subdone;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    hostmem_blk_n_AW;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1;
reg    hostmem_blk_n_W;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
reg    hostmem_blk_n_B;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage0;
wire  signed [62:0] sext_ln151_cast_fu_249_p1;
reg  signed [62:0] sext_ln151_cast_reg_434;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state6_pp0_stage0_iter1;
reg    ap_block_state6_io;
reg    ap_block_state11_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln151_fu_269_p2;
reg   [0:0] icmp_ln151_reg_439_pp0_iter1_reg;
wire   [3:0] tmp_s_fu_281_p3;
reg   [3:0] tmp_s_reg_443;
wire   [31:0] tmp_9_fu_309_p6;
reg   [31:0] tmp_9_reg_460;
reg   [63:0] hostmem_addr_reg_465;
wire    ap_block_state2_pp0_stage1_iter0;
reg    ap_block_state2_io;
wire    ap_block_state7_pp0_stage1_iter1;
reg    ap_block_state12_pp0_stage1_iter2;
reg    ap_block_pp0_stage1_11001;
reg   [31:0] P_init_V_load_reg_481;
wire  signed [62:0] add_ln156_fu_367_p2;
reg  signed [62:0] add_ln156_reg_486;
reg   [31:0] P_init_V_load_4_reg_494;
wire    ap_block_state3_pp0_stage2_iter0;
reg    ap_block_state3_io;
reg    ap_block_state8_pp0_stage2_iter1;
reg    ap_block_pp0_stage2_11001;
reg   [63:0] hostmem_addr_2_reg_505;
reg   [31:0] P_init_V_load_5_reg_511;
reg   [63:0] hostmem_addr_3_reg_516;
reg   [31:0] P_init_V_load_6_reg_522;
reg   [63:0] hostmem_addr_4_reg_527;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln156_fu_289_p1;
wire   [63:0] zext_ln156_1_fu_300_p1;
wire   [63:0] zext_ln156_2_fu_349_p1;
wire   [63:0] zext_ln156_3_fu_359_p1;
wire  signed [63:0] sext_ln153_fu_329_p1;
wire  signed [63:0] sext_ln156_fu_372_p1;
wire  signed [63:0] sext_ln156_1_fu_387_p1;
wire  signed [63:0] sext_ln156_2_fu_402_p1;
wire  signed [63:0] sext_ln156_3_fu_417_p1;
reg    ap_block_pp0_stage2_01001;
wire    ap_block_state4_pp0_stage3_iter0;
reg    ap_block_state4_io;
reg    ap_block_state9_pp0_stage3_iter1;
reg    ap_block_pp0_stage3_11001;
reg    ap_block_pp0_stage3_01001;
reg    ap_block_pp0_stage4_11001;
reg    ap_block_pp0_stage4_01001;
reg    ap_block_pp0_stage0_01001;
reg    ap_block_pp0_stage1_01001;
reg   [2:0] i_fu_88;
wire   [2:0] add_ln151_fu_275_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i_6;
wire   [1:0] empty_fu_265_p1;
wire   [3:0] or_ln156_fu_294_p2;
wire   [62:0] i_9_cast10_fu_305_p1;
wire  signed [62:0] sext_ln151_1_cast_fu_253_p1;
wire   [62:0] add_ln153_fu_323_p2;
wire   [3:0] or_ln156_1_fu_344_p2;
wire   [3:0] or_ln156_2_fu_354_p2;
wire   [62:0] zext_ln153_fu_364_p1;
wire   [62:0] add_ln156_1_fu_382_p2;
wire   [62:0] add_ln156_2_fu_397_p2;
wire   [62:0] add_ln156_3_fu_412_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage1;
reg    ap_idle_pp0_0to0;
reg   [4:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
reg    ap_block_pp0_stage2_subdone;
reg    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
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
mux_42_32_1_1_U89(
    .din0(x_init_V_0_load_2_reload),
    .din1(x_init_V_1_load_2_reload),
    .din2(x_init_V_2_load_2_reload),
    .din3(x_init_V_3_load_2_reload),
    .din4(empty_fu_265_p1),
    .dout(tmp_9_fu_309_p6)
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
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage4),
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage4)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln151_fu_269_p2 == 1'd0))) begin
            i_fu_88 <= add_ln151_fu_275_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_88 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        P_init_V_load_4_reg_494 <= P_init_V_q0;
        P_init_V_load_reg_481 <= P_init_V_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        P_init_V_load_5_reg_511 <= P_init_V_q1;
        P_init_V_load_6_reg_522 <= P_init_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln151_reg_439 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        add_ln156_reg_486 <= add_ln156_fu_367_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln151_reg_439 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        hostmem_addr_2_reg_505 <= sext_ln156_1_fu_387_p1;
        hostmem_addr_3_reg_516 <= sext_ln156_2_fu_402_p1;
        hostmem_addr_4_reg_527 <= sext_ln156_3_fu_417_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln151_fu_269_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        hostmem_addr_reg_465 <= sext_ln153_fu_329_p1;
        tmp_9_reg_460 <= tmp_9_fu_309_p6;
        tmp_s_reg_443[3 : 2] <= tmp_s_fu_281_p3[3 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln151_reg_439 <= icmp_ln151_fu_269_p2;
        icmp_ln151_reg_439_pp0_iter1_reg <= icmp_ln151_reg_439;
        sext_ln151_cast_reg_434 <= sext_ln151_cast_fu_249_p1;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            P_init_V_address0 = zext_ln156_3_fu_359_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            P_init_V_address0 = zext_ln156_1_fu_300_p1;
        end else begin
            P_init_V_address0 = 'bx;
        end
    end else begin
        P_init_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            P_init_V_address1 = zext_ln156_2_fu_349_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            P_init_V_address1 = zext_ln156_fu_289_p1;
        end else begin
            P_init_V_address1 = 'bx;
        end
    end else begin
        P_init_V_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        P_init_V_ce0 = 1'b1;
    end else begin
        P_init_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        P_init_V_ce1 = 1'b1;
    end else begin
        P_init_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln151_reg_439 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_subdone))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln151_reg_439_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_i_6 = 3'd0;
    end else begin
        ap_sig_allocacmp_i_6 = i_fu_88;
    end
end

always @ (*) begin
    if ((((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)) | ((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)) | ((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        hostmem_blk_n_AW = m_axi_hostmem_AWREADY;
    end else begin
        hostmem_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)))) begin
        hostmem_blk_n_B = m_axi_hostmem_BVALID;
    end else begin
        hostmem_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if ((((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)) | ((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)))) begin
        hostmem_blk_n_W = m_axi_hostmem_WREADY;
    end else begin
        hostmem_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axi_hostmem_AWADDR = hostmem_addr_4_reg_527;
    end else if (((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        m_axi_hostmem_AWADDR = hostmem_addr_3_reg_516;
    end else if (((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        m_axi_hostmem_AWADDR = hostmem_addr_2_reg_505;
    end else if (((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        m_axi_hostmem_AWADDR = sext_ln156_fu_372_p1;
    end else if (((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        m_axi_hostmem_AWADDR = hostmem_addr_reg_465;
    end else begin
        m_axi_hostmem_AWADDR = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        m_axi_hostmem_AWVALID = 1'b1;
    end else begin
        m_axi_hostmem_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        m_axi_hostmem_BREADY = 1'b1;
    end else begin
        m_axi_hostmem_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_01001))) begin
        m_axi_hostmem_WDATA = P_init_V_load_6_reg_522;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        m_axi_hostmem_WDATA = P_init_V_load_5_reg_511;
    end else if (((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_01001))) begin
        m_axi_hostmem_WDATA = P_init_V_load_4_reg_494;
    end else if (((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_01001))) begin
        m_axi_hostmem_WDATA = P_init_V_load_reg_481;
    end else if (((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_01001))) begin
        m_axi_hostmem_WDATA = tmp_9_reg_460;
    end else begin
        m_axi_hostmem_WDATA = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((icmp_ln151_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        m_axi_hostmem_WVALID = 1'b1;
    end else begin
        m_axi_hostmem_WVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln151_fu_275_p2 = (ap_sig_allocacmp_i_6 + 3'd1);

assign add_ln153_fu_323_p2 = ($signed(i_9_cast10_fu_305_p1) + $signed(sext_ln151_1_cast_fu_253_p1));

assign add_ln156_1_fu_382_p2 = ($signed(add_ln156_reg_486) + $signed(63'd1));

assign add_ln156_2_fu_397_p2 = ($signed(add_ln156_reg_486) + $signed(63'd2));

assign add_ln156_3_fu_412_p2 = ($signed(add_ln156_reg_486) + $signed(63'd3));

assign add_ln156_fu_367_p2 = ($signed(zext_ln153_fu_364_p1) + $signed(sext_ln151_cast_reg_434));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((m_axi_hostmem_BVALID == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state6_io)) | ((m_axi_hostmem_BVALID == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state6_io)) | ((m_axi_hostmem_BVALID == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_01001 = ((m_axi_hostmem_BVALID == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage1_11001 = (((m_axi_hostmem_WREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((m_axi_hostmem_BVALID == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state2_io)));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = (((m_axi_hostmem_WREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((m_axi_hostmem_BVALID == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state2_io)));
end

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage2_01001 = ((m_axi_hostmem_BVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage2_11001 = (((m_axi_hostmem_BVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state3_io)));
end

always @ (*) begin
    ap_block_pp0_stage2_subdone = (((m_axi_hostmem_BVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state3_io)));
end

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage3_01001 = ((m_axi_hostmem_BVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage3_11001 = (((m_axi_hostmem_BVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state4_io)));
end

always @ (*) begin
    ap_block_pp0_stage3_subdone = (((m_axi_hostmem_BVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state4_io)));
end

assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage4_01001 = ((m_axi_hostmem_BVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage4_11001 = (((m_axi_hostmem_BVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state5_io)));
end

always @ (*) begin
    ap_block_pp0_stage4_subdone = (((m_axi_hostmem_BVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state5_io)));
end

always @ (*) begin
    ap_block_state10_pp0_stage4_iter1 = (m_axi_hostmem_BVALID == 1'b0);
end

always @ (*) begin
    ap_block_state11_pp0_stage0_iter2 = (m_axi_hostmem_BVALID == 1'b0);
end

always @ (*) begin
    ap_block_state12_pp0_stage1_iter2 = (m_axi_hostmem_BVALID == 1'b0);
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_io = ((icmp_ln151_reg_439 == 1'd0) & (m_axi_hostmem_AWREADY == 1'b0));
end

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = (((icmp_ln151_reg_439 == 1'd0) & (m_axi_hostmem_AWREADY == 1'b0)) | ((icmp_ln151_reg_439 == 1'd0) & (m_axi_hostmem_WREADY == 1'b0)));
end

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_io = (((icmp_ln151_reg_439 == 1'd0) & (m_axi_hostmem_AWREADY == 1'b0)) | ((icmp_ln151_reg_439 == 1'd0) & (m_axi_hostmem_WREADY == 1'b0)));
end

assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5_io = (((icmp_ln151_reg_439 == 1'd0) & (m_axi_hostmem_AWREADY == 1'b0)) | ((icmp_ln151_reg_439 == 1'd0) & (m_axi_hostmem_WREADY == 1'b0)));
end

assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_io = ((m_axi_hostmem_WREADY == 1'b0) | (m_axi_hostmem_AWREADY == 1'b0));
end

assign ap_block_state6_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state8_pp0_stage2_iter1 = (m_axi_hostmem_BVALID == 1'b0);
end

always @ (*) begin
    ap_block_state9_pp0_stage3_iter1 = (m_axi_hostmem_BVALID == 1'b0);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;

assign empty_fu_265_p1 = ap_sig_allocacmp_i_6[1:0];

assign i_9_cast10_fu_305_p1 = ap_sig_allocacmp_i_6;

assign icmp_ln151_fu_269_p2 = ((ap_sig_allocacmp_i_6 == 3'd4) ? 1'b1 : 1'b0);

assign m_axi_hostmem_ARADDR = 64'd0;

assign m_axi_hostmem_ARBURST = 2'd0;

assign m_axi_hostmem_ARCACHE = 4'd0;

assign m_axi_hostmem_ARID = 1'd0;

assign m_axi_hostmem_ARLEN = 32'd0;

assign m_axi_hostmem_ARLOCK = 2'd0;

assign m_axi_hostmem_ARPROT = 3'd0;

assign m_axi_hostmem_ARQOS = 4'd0;

assign m_axi_hostmem_ARREGION = 4'd0;

assign m_axi_hostmem_ARSIZE = 3'd0;

assign m_axi_hostmem_ARUSER = 1'd0;

assign m_axi_hostmem_ARVALID = 1'b0;

assign m_axi_hostmem_AWBURST = 2'd0;

assign m_axi_hostmem_AWCACHE = 4'd0;

assign m_axi_hostmem_AWID = 1'd0;

assign m_axi_hostmem_AWLEN = 32'd1;

assign m_axi_hostmem_AWLOCK = 2'd0;

assign m_axi_hostmem_AWPROT = 3'd0;

assign m_axi_hostmem_AWQOS = 4'd0;

assign m_axi_hostmem_AWREGION = 4'd0;

assign m_axi_hostmem_AWSIZE = 3'd0;

assign m_axi_hostmem_AWUSER = 1'd0;

assign m_axi_hostmem_RREADY = 1'b0;

assign m_axi_hostmem_WID = 1'd0;

assign m_axi_hostmem_WLAST = 1'b0;

assign m_axi_hostmem_WSTRB = 4'd15;

assign m_axi_hostmem_WUSER = 1'd0;

assign or_ln156_1_fu_344_p2 = (tmp_s_reg_443 | 4'd2);

assign or_ln156_2_fu_354_p2 = (tmp_s_reg_443 | 4'd3);

assign or_ln156_fu_294_p2 = (tmp_s_fu_281_p3 | 4'd1);

assign sext_ln151_1_cast_fu_253_p1 = $signed(sext_ln151_1);

assign sext_ln151_cast_fu_249_p1 = $signed(sext_ln151);

assign sext_ln153_fu_329_p1 = $signed(add_ln153_fu_323_p2);

assign sext_ln156_1_fu_387_p1 = $signed(add_ln156_1_fu_382_p2);

assign sext_ln156_2_fu_402_p1 = $signed(add_ln156_2_fu_397_p2);

assign sext_ln156_3_fu_417_p1 = $signed(add_ln156_3_fu_412_p2);

assign sext_ln156_fu_372_p1 = add_ln156_reg_486;

assign tmp_s_fu_281_p3 = {{empty_fu_265_p1}, {2'd0}};

assign zext_ln153_fu_364_p1 = tmp_s_reg_443;

assign zext_ln156_1_fu_300_p1 = or_ln156_fu_294_p2;

assign zext_ln156_2_fu_349_p1 = or_ln156_1_fu_344_p2;

assign zext_ln156_3_fu_359_p1 = or_ln156_2_fu_354_p2;

assign zext_ln156_fu_289_p1 = tmp_s_fu_281_p3;

always @ (posedge ap_clk) begin
    tmp_s_reg_443[1:0] <= 2'b00;
end

endmodule //kalman_filter_top_kalman_filter_top_Pipeline_VITIS_LOOP_151_1
