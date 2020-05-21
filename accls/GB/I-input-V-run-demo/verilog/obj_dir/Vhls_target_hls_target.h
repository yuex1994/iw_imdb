// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vhls_target.h for the primary calling header

#ifndef _VHLS_TARGET_HLS_TARGET_H_
#define _VHLS_TARGET_HLS_TARGET_H_  // guard

#include "verilated.h"
#include "Vhls_target__Dpi.h"

//==========

class Vhls_target__Syms;

//----------

VL_MODULE(Vhls_target_hls_target) {
  public:
    
    // PORTS
    VL_IN8(ap_clk,0,0);
    VL_IN8(s_axi_config_AWVALID,0,0);
    VL_OUT8(s_axi_config_AWREADY,0,0);
    VL_IN8(s_axi_config_AWADDR,4,0);
    VL_IN8(s_axi_config_WVALID,0,0);
    VL_OUT8(s_axi_config_WREADY,0,0);
    VL_IN8(s_axi_config_WSTRB,3,0);
    VL_IN8(s_axi_config_ARVALID,0,0);
    VL_OUT8(s_axi_config_ARREADY,0,0);
    VL_IN8(s_axi_config_ARADDR,4,0);
    VL_OUT8(s_axi_config_RVALID,0,0);
    VL_IN8(s_axi_config_RREADY,0,0);
    VL_OUT8(s_axi_config_RRESP,1,0);
    VL_OUT8(s_axi_config_BVALID,0,0);
    VL_IN8(s_axi_config_BREADY,0,0);
    VL_OUT8(s_axi_config_BRESP,1,0);
    VL_IN8(ap_rst_n,0,0);
    VL_OUT8(v_interrupt,0,0);
    VL_OUT8(arg_0_TDATA,7,0);
    VL_OUT8(arg_0_TLAST,0,0);
    VL_IN8(arg_1_TDATA,7,0);
    VL_IN8(arg_1_TLAST,0,0);
    VL_IN8(arg_1_TVALID,0,0);
    VL_OUT8(arg_1_TREADY,0,0);
    VL_OUT8(arg_0_TVALID,0,0);
    VL_IN8(arg_0_TREADY,0,0);
    VL_IN(s_axi_config_WDATA,31,0);
    VL_OUT(s_axi_config_RDATA,31,0);
    
    // LOCAL SIGNALS
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        CData/*0:0*/ __PVT__ap_start;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0_ap_start;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0_in_stream_V_value_V_write;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0_ap_start;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__ap_done_reg;
        CData/*2:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__ap_CS_fsm;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__in_axi_stream_V_value_V_0_ack_out;
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__in_axi_stream_V_value_V_0_data_reg;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__in_axi_stream_V_value_V_0_areset_d;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__in_axi_stream_V_value_V_0_in_rdy;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__in_axi_stream_V_value_V_0_has_vld_data_reg_i;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__in_axi_stream_V_value_V_0_has_vld_data_reg;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__in_axi_stream_V_last_V_0_ack_out;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__in_axi_stream_V_last_V_0_in_rdy;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__in_axi_stream_V_last_V_0_has_vld_data_reg_i;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__in_axi_stream_V_last_V_0_has_vld_data_reg;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__exitcond_flatten_fu_72_p2;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__exitcond_flatten_reg_88;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__ap_sig_bdd_114;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__ap_reg_ppiten_pp0_it0;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__ap_sig_bdd_121;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__ap_reg_ppiten_pp0_it1;
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__empty_18_reg_97_0;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__ap_sig_bdd_142;
        CData/*2:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__ap_NS_fsm;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0_slice_stream_V_value_V_write;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0_ap_start;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0_out_stream_V_value_V_write;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__ap_done_reg;
        CData/*3:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__ap_CS_fsm;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__icmp_reg_698;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__exitcond3_fu_388_p2;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__exitcond3_reg_702;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__ap_reg_ppiten_pp0_it0;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__ap_sig_bdd_76;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__ap_reg_ppiten_pp0_it1;
        CData/*2:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__tmp_12_reg_728;
        CData/*2:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__tmp_13_reg_780;
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_0_value_V_q0;
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_1_value_V_q0;
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_2_value_V_q0;
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_3_value_V_q0;
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_4_value_V_q0;
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_5_value_V_q0;
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_6_value_V_q0;
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_7_value_V_q0;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__ap_sig_bdd_222;
        CData/*3:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__ap_NS_fsm;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__ap_done_reg;
        CData/*3:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__ap_CS_fsm;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__exitcond21_i_i_fu_175_p2;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__exitcond21_i_i_reg_1251;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__ap_reg_ppiten_pp0_it0;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__icmp_reg_1260;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__ap_sig_bdd_72;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__ap_reg_ppiten_pp0_it1;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__ap_sig_bdd_102;
        CData/*3:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__ap_NS_fsm;
        CData/*1:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__slice_stream_V_value_V_U__DOT__mOutPtr;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__slice_stream_V_value_V_U__DOT__internal_empty_n;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__slice_stream_V_value_V_U__DOT__internal_full_n;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__slice_stream_V_value_V_U__DOT__shiftReg_ce;
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__in_stream_V_value_V_U__DOT__shiftReg_q;
        CData/*1:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__in_stream_V_value_V_U__DOT__mOutPtr;
    };
    struct {
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__in_stream_V_value_V_U__DOT__internal_empty_n;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__in_stream_V_value_V_U__DOT__internal_full_n;
        CData/*0:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__in_stream_V_value_V_U__DOT__shiftReg_ce;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_done_reg;
        CData/*2:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_CS_fsm;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__arg_0_V_value_V_1_ack_in;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__arg_0_V_value_V_1_data_reg;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__arg_0_V_value_V_1_mVld;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__arg_0_V_value_V_1_areset_d;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__arg_0_V_last_V_1_vld_in;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__arg_0_V_last_V_1_data_reg;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__arg_0_V_last_V_1_sRdy;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__arg_0_V_last_V_1_mVld;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__exitcond_flatten_fu_467_p2;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__exitcond_flatten_reg_2790;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppiten_pp0_it0;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_sig_bdd_98;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppiten_pp0_it1;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppiten_pp0_it2;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppiten_pp0_it3;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppiten_pp0_it4;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppiten_pp0_it5;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppiten_pp0_it6;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppiten_pp0_it7;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_exitcond_flatten_reg_2790_pp0_it7;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppiten_pp0_it8;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_exitcond_flatten_reg_2790_pp0_it8;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppiten_pp0_it9;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_exitcond_flatten_reg_2790_pp0_it1;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_exitcond_flatten_reg_2790_pp0_it2;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_exitcond_flatten_reg_2790_pp0_it3;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_exitcond_flatten_reg_2790_pp0_it4;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_exitcond_flatten_reg_2790_pp0_it5;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_exitcond_flatten_reg_2790_pp0_it6;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp_last_V_reg_2804;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp_last_V_reg_2804_pp0_it1;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp_last_V_reg_2804_pp0_it2;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp_last_V_reg_2804_pp0_it3;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp_last_V_reg_2804_pp0_it4;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp_last_V_reg_2804_pp0_it5;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp_last_V_reg_2804_pp0_it6;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp_last_V_reg_2804_pp0_it7;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_210_reg_2814;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_216_reg_2819;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_222_reg_2824;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_228_reg_2829;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_234_reg_2834;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_250_reg_2839;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_256_reg_2845;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_262_reg_2850;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_262_reg_2850_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_268_reg_2855;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_268_reg_2855_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_274_reg_2860;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_274_reg_2860_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_280_reg_2865;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_280_reg_2865_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_286_reg_2870;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_286_reg_2870_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_292_reg_2875;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_298_reg_2880;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_304_reg_2886;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_310_reg_2891;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_316_reg_2896;
    };
    struct {
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_316_reg_2896_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_322_reg_2901;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_322_reg_2901_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_322_reg_2901_pp0_it3;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_322_reg_2901_pp0_it4;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_328_reg_2906;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_328_reg_2906_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_328_reg_2906_pp0_it3;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_328_reg_2906_pp0_it4;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_334_reg_2911;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_334_reg_2911_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_334_reg_2911_pp0_it3;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_340_reg_2916;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_340_reg_2916_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_340_reg_2916_pp0_it3;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_340_reg_2916_pp0_it4;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_346_reg_2921;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_352_reg_2926;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_358_reg_2931;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_364_reg_2936;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_370_reg_2941;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_370_reg_2941_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_370_reg_2941_pp0_it3;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_370_reg_2941_pp0_it4;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_376_reg_2946;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_376_reg_2946_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_376_reg_2946_pp0_it3;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_376_reg_2946_pp0_it4;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_382_reg_2951;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_382_reg_2951_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_382_reg_2951_pp0_it3;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_382_reg_2951_pp0_it4;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_382_reg_2951_pp0_it5;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_388_reg_2956;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_388_reg_2956_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_394_reg_2961;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_394_reg_2961_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_400_reg_2966;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_406_reg_2971;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_412_reg_2976;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_418_reg_2981;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_418_reg_2981_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_424_reg_2986;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_430_reg_2991;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_436_reg_2996;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_436_reg_2996_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_436_reg_2996_pp0_it3;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_436_reg_2996_pp0_it4;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_436_reg_2996_pp0_it5;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_436_reg_2996_pp0_it6;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_442_reg_3001;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_442_reg_3001_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_448_reg_3006;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_448_reg_3006_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_454_reg_3011;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_460_reg_3016;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_466_reg_3021;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp_15_reg_3026;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_478_reg_3031;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_484_reg_3036;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_484_reg_3036_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_490_reg_3041;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_496_reg_3046;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp_16_reg_3051;
    };
    struct {
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp_16_reg_3051_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp_17_reg_3056;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp_18_reg_3061;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_520_reg_3066;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_526_reg_3071;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp_19_reg_3076;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp_20_reg_3081;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp_20_reg_3081_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_544_reg_3086;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_p_544_reg_3086_pp0_it2;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_550_reg_3091;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp_21_reg_3096;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp_22_reg_3101;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_568_reg_3106;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_574_reg_3111;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_580_reg_3117;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp_23_reg_3122;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_592_reg_3127;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_598_reg_3132;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_604_reg_3137;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_610_reg_3142;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_616_reg_3147;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_622_reg_3152;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_632_reg_3158;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp_24_reg_3164;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp_25_reg_3169;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_650_reg_3174;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_656_reg_3179;
        CData/*7:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp_26_reg_3184;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_sig_bdd_527;
        CData/*0:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_sig_bdd_2187;
        CData/*2:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_NS_fsm;
        CData/*1:0*/ __PVT__p_p2_in_bounded_stencil_stream_s_U__DOT__mOutPtr;
        CData/*0:0*/ __PVT__p_p2_in_bounded_stencil_stream_s_U__DOT__internal_empty_n;
        CData/*0:0*/ __PVT__p_p2_in_bounded_stencil_stream_s_U__DOT__internal_full_n;
        CData/*0:0*/ __PVT__p_p2_in_bounded_stencil_stream_s_U__DOT__shiftReg_ce;
        SData/*8:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__col_reg_349;
        SData/*9:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__row_1_reg_693;
        SData/*8:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__col_1_fu_394_p2;
        SData/*9:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__row_reg_327;
        SData/*8:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__i_0_i_i_reg_152;
        SData/*9:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__n1_1_reg_1246;
        SData/*8:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__i_fu_181_p2;
        SData/*9:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__n1_reg_141;
        SData/*9:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_hw_output_1_y_scan_dim_1_reg_445;
        SData/*8:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_hw_output_1_x_scan_dim_0_reg_456;
        SData/*9:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_hw_output_1_y_scan_dim_1_mi_fu_499_p3;
        SData/*9:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_hw_output_1_y_scan_dim_1_mi_reg_2799;
        SData/*11:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_208_reg_3189;
        SData/*11:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp5_reg_3194;
        SData/*11:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp68_reg_3199;
        SData/*14:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_220_reg_3204;
        SData/*15:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_225_reg_3209;
        SData/*14:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_231_reg_3214;
        SData/*13:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp4_reg_3219;
        SData/*14:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp6_reg_3224;
        SData/*14:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp29_reg_3254;
        SData/*15:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp55_reg_3309;
        SData/*15:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp57_reg_3314;
        SData/*15:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp58_reg_3319;
        SData/*14:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp62_reg_3324;
        SData/*14:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp63_reg_3329;
        SData/*13:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp65_reg_3334;
        SData/*9:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_hw_output_1_y_scan_dim_1_phi_fu_449_p4;
    };
    struct {
        SData/*8:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_hw_output_1_x_scan_dim_0_mi_fu_491_p3;
        IData/*31:0*/ GB_pc;
        IData/*18:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__indvar_flatten_reg_61;
        IData/*18:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__indvar_flatten_next_fu_78_p2;
        WData/*647:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0_out_stream_V_value_V_din[21];
        WData/*71:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__buffer_7_value_V_fu_96[3];
        WData/*71:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__buffer_0_value_V_fu_100[3];
        WData/*71:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__buffer_1_value_V_fu_104[3];
        WData/*71:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__buffer_2_value_V_fu_108[3];
        WData/*71:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__buffer_3_value_V_fu_112[3];
        WData/*71:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__buffer_4_value_V_fu_116[3];
        WData/*71:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__buffer_5_value_V_fu_120[3];
        WData/*71:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__buffer_6_value_V_fu_124[3];
        WData/*71:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__slice_stream_V_value_V_U__DOT__shiftReg_q[3];
        IData/*18:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__indvar_flatten_reg_434;
        IData/*18:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__indvar_flatten_next_fu_473_p2;
        IData/*16:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp11_reg_3229;
        IData/*16:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp11_reg_3229_pp0_it3;
        IData/*17:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp19_reg_3234;
        IData/*17:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp19_reg_3234_pp0_it3;
        IData/*17:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp19_reg_3234_pp0_it4;
        IData/*17:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp19_reg_3234_pp0_it5;
        IData/*17:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_403_reg_3239;
        IData/*19:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_427_reg_3244;
        IData/*20:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_433_reg_3249;
        IData/*19:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_481_reg_3259;
        IData/*20:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_493_reg_3264;
        IData/*20:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_499_reg_3269;
        IData/*19:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_553_reg_3274;
        IData/*17:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_595_reg_3279;
        IData/*16:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_613_reg_3284;
        IData/*19:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp43_reg_3289;
        IData/*18:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp46_reg_3294;
        IData/*17:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp49_reg_3299;
        IData/*16:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp53_reg_3304;
        IData/*17:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_266_reg_3339;
        IData/*17:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_271_reg_3344;
        IData/*18:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_277_reg_3349;
        IData/*18:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_319_reg_3354;
        IData/*17:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp10_reg_3359;
        IData/*20:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp24_reg_3364;
        IData/*20:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp24_reg_3364_pp0_it4;
        IData/*20:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp24_reg_3364_pp0_it5;
        IData/*20:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp24_reg_3364_pp0_it6;
        IData/*19:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp26_reg_3369;
        IData/*19:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp26_reg_3369_pp0_it4;
        IData/*19:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp26_reg_3369_pp0_it5;
        IData/*19:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp26_reg_3369_pp0_it6;
        IData/*21:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp34_reg_3374;
        IData/*21:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp34_reg_3374_pp0_it4;
        IData/*21:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp34_reg_3374_pp0_it5;
        IData/*21:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp34_reg_3374_pp0_it6;
        IData/*21:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp34_reg_3374_pp0_it7;
        IData/*21:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp36_reg_3379;
        IData/*21:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp36_reg_3379_pp0_it4;
        IData/*21:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp36_reg_3379_pp0_it5;
        IData/*21:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp36_reg_3379_pp0_it6;
        IData/*21:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp36_reg_3379_pp0_it7;
        IData/*20:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp40_reg_3384;
        IData/*20:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp40_reg_3384_pp0_it4;
        IData/*20:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp40_reg_3384_pp0_it5;
        IData/*20:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp40_reg_3384_pp0_it6;
        IData/*20:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp40_reg_3384_pp0_it7;
        IData/*18:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp50_reg_3389;
    };
    struct {
        IData/*18:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp50_reg_3389_pp0_it4;
        IData/*18:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp50_reg_3389_pp0_it5;
        IData/*18:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp50_reg_3389_pp0_it6;
        IData/*18:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__ap_reg_ppstg_tmp50_reg_3389_pp0_it7;
        IData/*19:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_320_reg_3394;
        IData/*19:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__p_337_reg_3399;
        IData/*21:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp17_reg_3404;
        IData/*19:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp18_reg_3409;
        IData/*22:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp23_reg_3414;
        IData/*23:0*/ __PVT__hls_target_Loop_1_proc_U0__DOT__tmp33_reg_3419;
        WData/*647:0*/ __PVT__p_p2_in_bounded_stencil_stream_s_U__DOT__shiftReg_q[21];
        QData/*63:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__write_idx_1_1_reg_338;
        QData/*63:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__col_cast_reg_711;
        QData/*63:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__p_write_idx_1_1_fu_434_p3;
        QData/*63:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__p_write_idx_1_1_reg_723;
        QData/*63:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__write_idx_1_reg_315;
        QData/*63:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__write_idx_1_1_phi_fu_341_p4;
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_0_value_V_U__DOT__hls_target_call_Loop_LB2D_buf_proc_buffer_0_value_V_ram_U__DOT__ram[488];
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_1_value_V_U__DOT__hls_target_call_Loop_LB2D_buf_proc_buffer_0_value_V_ram_U__DOT__ram[488];
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_2_value_V_U__DOT__hls_target_call_Loop_LB2D_buf_proc_buffer_0_value_V_ram_U__DOT__ram[488];
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_3_value_V_U__DOT__hls_target_call_Loop_LB2D_buf_proc_buffer_0_value_V_ram_U__DOT__ram[488];
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_4_value_V_U__DOT__hls_target_call_Loop_LB2D_buf_proc_buffer_0_value_V_ram_U__DOT__ram[488];
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_5_value_V_U__DOT__hls_target_call_Loop_LB2D_buf_proc_buffer_0_value_V_ram_U__DOT__ram[488];
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_6_value_V_U__DOT__hls_target_call_Loop_LB2D_buf_proc_buffer_0_value_V_ram_U__DOT__ram[488];
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_7_value_V_U__DOT__hls_target_call_Loop_LB2D_buf_proc_buffer_0_value_V_ram_U__DOT__ram[488];
        WData/*71:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__slice_stream_V_value_V_U__DOT__U_FIFO_hls_target_call_slice_stream_V_value_V_ram__DOT__SRL_SIG[2][3];
        CData/*7:0*/ __PVT__hls_target_linebuffer_1_U0__DOT__in_stream_V_value_V_U__DOT__U_FIFO_hls_target_linebuffer_1_in_stream_V_value_V_ram__DOT__SRL_SIG[2];
        WData/*647:0*/ __PVT__p_p2_in_bounded_stencil_stream_s_U__DOT__U_FIFO_hls_target_p_p2_in_bounded_stencil_stream_s_ram__DOT__SRL_SIG[2][21];
    };
    
    // LOCAL VARIABLES
    CData/*7:0*/ hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_0_value_V_U__DOT__hls_target_call_Loop_LB2D_buf_proc_buffer_0_value_V_ram_U__DOT____Vlvbound1;
    CData/*7:0*/ hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_1_value_V_U__DOT__hls_target_call_Loop_LB2D_buf_proc_buffer_0_value_V_ram_U__DOT____Vlvbound1;
    CData/*7:0*/ hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_2_value_V_U__DOT__hls_target_call_Loop_LB2D_buf_proc_buffer_0_value_V_ram_U__DOT____Vlvbound1;
    CData/*7:0*/ hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_3_value_V_U__DOT__hls_target_call_Loop_LB2D_buf_proc_buffer_0_value_V_ram_U__DOT____Vlvbound1;
    CData/*7:0*/ hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_4_value_V_U__DOT__hls_target_call_Loop_LB2D_buf_proc_buffer_0_value_V_ram_U__DOT____Vlvbound1;
    CData/*7:0*/ hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_5_value_V_U__DOT__hls_target_call_Loop_LB2D_buf_proc_buffer_0_value_V_ram_U__DOT____Vlvbound1;
    CData/*7:0*/ hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_6_value_V_U__DOT__hls_target_call_Loop_LB2D_buf_proc_buffer_0_value_V_ram_U__DOT____Vlvbound1;
    CData/*7:0*/ hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__buffer_7_value_V_U__DOT__hls_target_call_Loop_LB2D_buf_proc_buffer_0_value_V_ram_U__DOT____Vlvbound1;
    SData/*9:0*/ __Vtableidx1;
    SData/*9:0*/ __Vtableidx2;
    CData/*2:0*/ __Vtablechg3[128];
    CData/*2:0*/ __Vtablechg4[128];
    CData/*2:0*/ __Vtablechg5[128];
    static CData/*3:0*/ __Vtable1___PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_buf_proc_U0__DOT__ap_NS_fsm[1024];
    static CData/*3:0*/ __Vtable2___PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__hls_target_call_Loop_LB2D_shift_proc_U0__DOT__ap_NS_fsm[1024];
    static CData/*1:0*/ __Vtable3___PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__slice_stream_V_value_V_U__DOT__mOutPtr[128];
    static CData/*0:0*/ __Vtable3___PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__slice_stream_V_value_V_U__DOT__internal_empty_n[128];
    static CData/*0:0*/ __Vtable3___PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_U0__DOT__hls_target_call_U0__DOT__slice_stream_V_value_V_U__DOT__internal_full_n[128];
    static CData/*1:0*/ __Vtable4___PVT__hls_target_linebuffer_1_U0__DOT__in_stream_V_value_V_U__DOT__mOutPtr[128];
    static CData/*0:0*/ __Vtable4___PVT__hls_target_linebuffer_1_U0__DOT__in_stream_V_value_V_U__DOT__internal_empty_n[128];
    static CData/*0:0*/ __Vtable4___PVT__hls_target_linebuffer_1_U0__DOT__in_stream_V_value_V_U__DOT__internal_full_n[128];
    static CData/*1:0*/ __Vtable5___PVT__p_p2_in_bounded_stencil_stream_s_U__DOT__mOutPtr[128];
    static CData/*0:0*/ __Vtable5___PVT__p_p2_in_bounded_stencil_stream_s_U__DOT__internal_empty_n[128];
    static CData/*0:0*/ __Vtable5___PVT__p_p2_in_bounded_stencil_stream_s_U__DOT__internal_full_n[128];
    
    // INTERNAL VARIABLES
  private:
    Vhls_target__Syms* __VlSymsp;  // Symbol table
  public:
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vhls_target_hls_target);  ///< Copying not allowed
  public:
    Vhls_target_hls_target(const char* name = "TOP");
    ~Vhls_target_hls_target();
    
    // INTERNAL METHODS
    void __Vconfigure(Vhls_target__Syms* symsp, bool first);
    static void _combo__TOP__hls_target__5(Vhls_target__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _initial__TOP__hls_target__2(Vhls_target__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__hls_target__3(Vhls_target__Syms* __restrict vlSymsp);
    static void _settle__TOP__hls_target__1(Vhls_target__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _settle__TOP__hls_target__4(Vhls_target__Syms* __restrict vlSymsp) VL_ATTR_COLD;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
