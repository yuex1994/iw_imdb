// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.3
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hls_target_call_Loop_LB2D_shift_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        slice_stream_V_value_V_dout,
        slice_stream_V_value_V_empty_n,
        slice_stream_V_value_V_read,
        out_stream_V_value_V_din,
        out_stream_V_value_V_full_n,
        out_stream_V_value_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 4'b1;
parameter    ap_ST_st2_fsm_1 = 4'b10;
parameter    ap_ST_pp0_stg0_fsm_2 = 4'b100;
parameter    ap_ST_st5_fsm_3 = 4'b1000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv10_0 = 10'b0000000000;
parameter    ap_const_lv9_0 = 9'b000000000;
parameter    ap_const_lv10_280 = 10'b1010000000;
parameter    ap_const_lv10_1 = 10'b1;
parameter    ap_const_lv9_1E8 = 9'b111101000;
parameter    ap_const_lv9_1 = 9'b1;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv6_0 = 6'b000000;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv32_17 = 32'b10111;
parameter    ap_const_lv32_18 = 32'b11000;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv32_27 = 32'b100111;
parameter    ap_const_lv32_28 = 32'b101000;
parameter    ap_const_lv32_2F = 32'b101111;
parameter    ap_const_lv32_30 = 32'b110000;
parameter    ap_const_lv32_37 = 32'b110111;
parameter    ap_const_lv32_38 = 32'b111000;
parameter    ap_const_lv32_3F = 32'b111111;
parameter    ap_const_lv32_40 = 32'b1000000;
parameter    ap_const_lv32_47 = 32'b1000111;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [71:0] slice_stream_V_value_V_dout;
input   slice_stream_V_value_V_empty_n;
output   slice_stream_V_value_V_read;
output  [647:0] out_stream_V_value_V_din;
input   out_stream_V_value_V_full_n;
output   out_stream_V_value_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg slice_stream_V_value_V_read;
reg out_stream_V_value_V_write;
reg    ap_done_reg = 1'b0;
//(* fsm_encoding = "none" *) 
reg   [3:0] ap_CS_fsm = 4'b1; // XXX
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_23;
reg   [8:0] i_0_i_i_reg_152;
wire   [0:0] exitcond_fu_163_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_47;
wire   [9:0] n1_1_fu_169_p2;
reg   [9:0] n1_1_reg_1246;
wire   [0:0] exitcond21_i_i_fu_175_p2;
reg   [0:0] exitcond21_i_i_reg_1251;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_2;
reg    ap_sig_bdd_58;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg   [0:0] icmp_reg_1260;
reg    ap_sig_bdd_72;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [8:0] i_fu_181_p2;
wire   [0:0] icmp_fu_197_p2;
reg   [9:0] n1_reg_141;
reg    ap_sig_cseq_ST_st5_fsm_3;
reg    ap_sig_bdd_96;
reg    ap_sig_bdd_102;
reg   [71:0] buffer_7_value_V_fu_96/*verilator public*/;;
reg   [71:0] buffer_0_value_V_fu_100 /*verilator public*/;
reg   [71:0] buffer_1_value_V_fu_104/*verilator public*/;
reg   [71:0] buffer_2_value_V_fu_108/*verilator public*/;
reg   [71:0] buffer_3_value_V_fu_112/*verilator public*/;
reg   [71:0] buffer_4_value_V_fu_116/*verilator public*/;
reg   [71:0] buffer_5_value_V_fu_120/*verilator public*/;
reg   [71:0] buffer_6_value_V_fu_124/*verilator public*/;
wire   [5:0] tmp_fu_187_p4;
wire   [7:0] p_Result_5_8_8_fu_973_p4;
wire   [7:0] p_Result_5_8_7_fu_963_p4;
wire   [7:0] p_Result_5_8_6_fu_953_p4;
wire   [7:0] p_Result_5_8_5_fu_943_p4;
wire   [7:0] p_Result_5_8_4_fu_933_p4;
wire   [7:0] p_Result_5_8_3_fu_923_p4;
wire   [7:0] p_Result_5_8_2_fu_913_p4;
wire   [7:0] p_Result_5_8_1_fu_903_p4;
wire   [7:0] p_Result_5_8_fu_893_p4;
wire   [7:0] p_Result_5_7_8_fu_883_p4;
wire   [7:0] p_Result_5_7_7_fu_873_p4;
wire   [7:0] p_Result_5_7_6_fu_863_p4;
wire   [7:0] p_Result_5_7_5_fu_853_p4;
wire   [7:0] p_Result_5_7_4_fu_843_p4;
wire   [7:0] p_Result_5_7_3_fu_833_p4;
wire   [7:0] p_Result_5_7_2_fu_823_p4;
wire   [7:0] p_Result_5_7_1_fu_813_p4;
wire   [7:0] p_Result_5_7_fu_803_p4;
wire   [7:0] p_Result_5_6_8_fu_793_p4;
wire   [7:0] p_Result_5_6_7_fu_783_p4;
wire   [7:0] p_Result_5_6_6_fu_773_p4;
wire   [7:0] p_Result_5_6_5_fu_763_p4;
wire   [7:0] p_Result_5_6_4_fu_753_p4;
wire   [7:0] p_Result_5_6_3_fu_743_p4;
wire   [7:0] p_Result_5_6_2_fu_733_p4;
wire   [7:0] p_Result_5_6_1_fu_723_p4;
wire   [7:0] p_Result_5_6_fu_713_p4;
wire   [7:0] p_Result_5_5_8_fu_703_p4;
wire   [7:0] p_Result_5_5_7_fu_693_p4;
wire   [7:0] p_Result_5_5_6_fu_683_p4;
wire   [7:0] p_Result_5_5_5_fu_673_p4;
wire   [7:0] p_Result_5_5_4_fu_663_p4;
wire   [7:0] p_Result_5_5_3_fu_653_p4;
wire   [7:0] p_Result_5_5_2_fu_643_p4;
wire   [7:0] p_Result_5_5_1_fu_633_p4;
wire   [7:0] p_Result_5_5_fu_623_p4;
wire   [7:0] p_Result_5_4_8_fu_613_p4;
wire   [7:0] p_Result_5_4_7_fu_603_p4;
wire   [7:0] p_Result_5_4_6_fu_593_p4;
wire   [7:0] p_Result_5_4_5_fu_583_p4;
wire   [7:0] p_Result_5_4_4_fu_573_p4;
wire   [7:0] p_Result_5_4_3_fu_563_p4;
wire   [7:0] p_Result_5_4_2_fu_553_p4;
wire   [7:0] p_Result_5_4_1_fu_543_p4;
wire   [7:0] p_Result_5_4_fu_533_p4;
wire   [7:0] p_Result_5_3_8_fu_523_p4;
wire   [7:0] p_Result_5_3_7_fu_513_p4;
wire   [7:0] p_Result_5_3_6_fu_503_p4;
wire   [7:0] p_Result_5_3_5_fu_493_p4;
wire   [7:0] p_Result_5_3_4_fu_483_p4;
wire   [7:0] p_Result_5_3_3_fu_473_p4;
wire   [7:0] p_Result_5_3_2_fu_463_p4;
wire   [7:0] p_Result_5_3_1_fu_453_p4;
wire   [7:0] p_Result_5_3_fu_443_p4;
wire   [7:0] p_Result_5_2_8_fu_433_p4;
wire   [7:0] p_Result_5_2_7_fu_423_p4;
wire   [7:0] p_Result_5_2_6_fu_413_p4;
wire   [7:0] p_Result_5_2_5_fu_403_p4;
wire   [7:0] p_Result_5_2_4_fu_393_p4;
wire   [7:0] p_Result_5_2_3_fu_383_p4;
wire   [7:0] p_Result_5_2_2_fu_373_p4;
wire   [7:0] p_Result_5_2_1_fu_363_p4;
wire   [7:0] p_Result_5_2_fu_353_p4;
wire   [7:0] p_Result_5_1_8_fu_343_p4;
wire   [7:0] p_Result_5_1_7_fu_333_p4;
wire   [7:0] p_Result_5_1_6_fu_323_p4;
wire   [7:0] p_Result_5_1_5_fu_313_p4;
wire   [7:0] p_Result_5_1_4_fu_303_p4;
wire   [7:0] p_Result_5_1_3_fu_293_p4;
wire   [7:0] p_Result_5_1_2_fu_283_p4;
wire   [7:0] p_Result_5_1_1_fu_273_p4;
wire   [7:0] p_Result_5_1_fu_263_p4;
wire   [7:0] tmp_10_fu_259_p1;
wire   [7:0] tmp_9_fu_255_p1;
wire   [7:0] tmp_8_fu_251_p1;
wire   [7:0] tmp_7_fu_247_p1;
wire   [7:0] tmp_6_fu_243_p1;
wire   [7:0] tmp_5_fu_239_p1;
wire   [7:0] tmp_4_fu_235_p1;
wire   [7:0] tmp_3_fu_231_p1;
wire   [7:0] tmp_2_fu_227_p1;
reg   [3:0] ap_NS_fsm;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk) begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk) begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond_fu_163_p2 == ap_const_lv1_0))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it0 assign process. ///
always @ (posedge ap_clk) begin : ap_ret_ap_reg_ppiten_pp0_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_72 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond21_i_i_fu_175_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_fu_163_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk) begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_72 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_fu_163_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_72 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & (exitcond21_i_i_fu_175_p2 == ap_const_lv1_0))) begin
        i_0_i_i_reg_152 <= i_fu_181_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_fu_163_p2 == ap_const_lv1_0))) begin
        i_0_i_i_reg_152 <= ap_const_lv9_0;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_102)) begin
        n1_reg_141 <= ap_const_lv10_0;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_3)) begin
        n1_reg_141 <= n1_1_reg_1246;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond21_i_i_reg_1251 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_72 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        buffer_0_value_V_fu_100 <= buffer_1_value_V_fu_104;
        buffer_1_value_V_fu_104 <= buffer_2_value_V_fu_108;
        buffer_2_value_V_fu_108 <= buffer_3_value_V_fu_112;
        buffer_3_value_V_fu_112 <= buffer_4_value_V_fu_116;
        buffer_4_value_V_fu_116 <= buffer_5_value_V_fu_120;
        buffer_5_value_V_fu_120 <= buffer_6_value_V_fu_124;
        buffer_6_value_V_fu_124 <= buffer_7_value_V_fu_96;
        buffer_7_value_V_fu_96 <= slice_stream_V_value_V_dout;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_72 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        exitcond21_i_i_reg_1251 <= exitcond21_i_i_fu_175_p2;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_72 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & (exitcond21_i_i_fu_175_p2 == ap_const_lv1_0))) begin
        icmp_reg_1260 <= icmp_fu_197_p2;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        n1_1_reg_1246 <= n1_1_fu_169_p2;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or exitcond_fu_163_p2 or ap_sig_cseq_ST_st2_fsm_1) begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond_fu_163_p2 == ap_const_lv1_0)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0) begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (exitcond_fu_163_p2 or ap_sig_cseq_ST_st2_fsm_1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond_fu_163_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_2 assign process. ///
always @ (ap_sig_bdd_58) begin
    if (ap_sig_bdd_58) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_23) begin
    if (ap_sig_bdd_23) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_47) begin
    if (ap_sig_bdd_47) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st5_fsm_3 assign process. ///
always @ (ap_sig_bdd_96) begin
    if (ap_sig_bdd_96) begin
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_0;
    end
end

/// out_stream_V_value_V_write assign process. ///
always @ (exitcond21_i_i_reg_1251 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or icmp_reg_1260 or ap_sig_bdd_72 or ap_reg_ppiten_pp0_it1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond21_i_i_reg_1251 == ap_const_lv1_0) & (ap_const_lv1_0 == icmp_reg_1260) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_72 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        out_stream_V_value_V_write = ap_const_logic_1;
    end else begin
        out_stream_V_value_V_write = ap_const_logic_0;
    end
end

/// slice_stream_V_value_V_read assign process. ///
always @ (exitcond21_i_i_reg_1251 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_72 or ap_reg_ppiten_pp0_it1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond21_i_i_reg_1251 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_72 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        slice_stream_V_value_V_read = ap_const_logic_1;
    end else begin
        slice_stream_V_value_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or exitcond_fu_163_p2 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_72 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_102) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~ap_sig_bdd_102) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~(exitcond_fu_163_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_pp0_stg0_fsm_2 : 
        begin
            if (~((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_72 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_72 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
                ap_NS_fsm = ap_ST_st5_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_st5_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_102 assign process. ///
always @ (ap_start or ap_done_reg) begin
    ap_sig_bdd_102 = ((ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_23 assign process. ///
always @ (ap_CS_fsm) begin
    ap_sig_bdd_23 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_47 assign process. ///
always @ (ap_CS_fsm) begin
    ap_sig_bdd_47 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_58 assign process. ///
always @ (ap_CS_fsm) begin
    ap_sig_bdd_58 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_72 assign process. ///
always @ (slice_stream_V_value_V_empty_n or out_stream_V_value_V_full_n or exitcond21_i_i_reg_1251 or icmp_reg_1260) begin
    ap_sig_bdd_72 = (((slice_stream_V_value_V_empty_n == ap_const_logic_0) & (exitcond21_i_i_reg_1251 == ap_const_lv1_0)) | ((exitcond21_i_i_reg_1251 == ap_const_lv1_0) & (out_stream_V_value_V_full_n == ap_const_logic_0) & (ap_const_lv1_0 == icmp_reg_1260)));
end

/// ap_sig_bdd_96 assign process. ///
always @ (ap_CS_fsm) begin
    ap_sig_bdd_96 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end
assign exitcond21_i_i_fu_175_p2 = (i_0_i_i_reg_152 == ap_const_lv9_1E8? 1'b1: 1'b0);
assign exitcond_fu_163_p2 = (n1_reg_141 == ap_const_lv10_280? 1'b1: 1'b0);
assign i_fu_181_p2 = (i_0_i_i_reg_152 + ap_const_lv9_1);
assign icmp_fu_197_p2 = (tmp_fu_187_p4 == ap_const_lv6_0? 1'b1: 1'b0);
assign n1_1_fu_169_p2 = (n1_reg_141 + ap_const_lv10_1);
assign out_stream_V_value_V_din = {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{p_Result_5_8_8_fu_973_p4}, {p_Result_5_8_7_fu_963_p4}}, {p_Result_5_8_6_fu_953_p4}}, {p_Result_5_8_5_fu_943_p4}}, {p_Result_5_8_4_fu_933_p4}}, {p_Result_5_8_3_fu_923_p4}}, {p_Result_5_8_2_fu_913_p4}}, {p_Result_5_8_1_fu_903_p4}}, {p_Result_5_8_fu_893_p4}}, {p_Result_5_7_8_fu_883_p4}}, {p_Result_5_7_7_fu_873_p4}}, {p_Result_5_7_6_fu_863_p4}}, {p_Result_5_7_5_fu_853_p4}}, {p_Result_5_7_4_fu_843_p4}}, {p_Result_5_7_3_fu_833_p4}}, {p_Result_5_7_2_fu_823_p4}}, {p_Result_5_7_1_fu_813_p4}}, {p_Result_5_7_fu_803_p4}}, {p_Result_5_6_8_fu_793_p4}}, {p_Result_5_6_7_fu_783_p4}}, {p_Result_5_6_6_fu_773_p4}}, {p_Result_5_6_5_fu_763_p4}}, {p_Result_5_6_4_fu_753_p4}}, {p_Result_5_6_3_fu_743_p4}}, {p_Result_5_6_2_fu_733_p4}}, {p_Result_5_6_1_fu_723_p4}}, {p_Result_5_6_fu_713_p4}}, {p_Result_5_5_8_fu_703_p4}}, {p_Result_5_5_7_fu_693_p4}}, {p_Result_5_5_6_fu_683_p4}}, {p_Result_5_5_5_fu_673_p4}}, {p_Result_5_5_4_fu_663_p4}}, {p_Result_5_5_3_fu_653_p4}}, {p_Result_5_5_2_fu_643_p4}}, {p_Result_5_5_1_fu_633_p4}}, {p_Result_5_5_fu_623_p4}}, {p_Result_5_4_8_fu_613_p4}}, {p_Result_5_4_7_fu_603_p4}}, {p_Result_5_4_6_fu_593_p4}}, {p_Result_5_4_5_fu_583_p4}}, {p_Result_5_4_4_fu_573_p4}}, {p_Result_5_4_3_fu_563_p4}}, {p_Result_5_4_2_fu_553_p4}}, {p_Result_5_4_1_fu_543_p4}}, {p_Result_5_4_fu_533_p4}}, {p_Result_5_3_8_fu_523_p4}}, {p_Result_5_3_7_fu_513_p4}}, {p_Result_5_3_6_fu_503_p4}}, {p_Result_5_3_5_fu_493_p4}}, {p_Result_5_3_4_fu_483_p4}}, {p_Result_5_3_3_fu_473_p4}}, {p_Result_5_3_2_fu_463_p4}}, {p_Result_5_3_1_fu_453_p4}}, {p_Result_5_3_fu_443_p4}}, {p_Result_5_2_8_fu_433_p4}}, {p_Result_5_2_7_fu_423_p4}}, {p_Result_5_2_6_fu_413_p4}}, {p_Result_5_2_5_fu_403_p4}}, {p_Result_5_2_4_fu_393_p4}}, {p_Result_5_2_3_fu_383_p4}}, {p_Result_5_2_2_fu_373_p4}}, {p_Result_5_2_1_fu_363_p4}}, {p_Result_5_2_fu_353_p4}}, {p_Result_5_1_8_fu_343_p4}}, {p_Result_5_1_7_fu_333_p4}}, {p_Result_5_1_6_fu_323_p4}}, {p_Result_5_1_5_fu_313_p4}}, {p_Result_5_1_4_fu_303_p4}}, {p_Result_5_1_3_fu_293_p4}}, {p_Result_5_1_2_fu_283_p4}}, {p_Result_5_1_1_fu_273_p4}}, {p_Result_5_1_fu_263_p4}}, {tmp_10_fu_259_p1}}, {tmp_9_fu_255_p1}}, {tmp_8_fu_251_p1}}, {tmp_7_fu_247_p1}}, {tmp_6_fu_243_p1}}, {tmp_5_fu_239_p1}}, {tmp_4_fu_235_p1}}, {tmp_3_fu_231_p1}}, {tmp_2_fu_227_p1}};
assign p_Result_5_1_1_fu_273_p4 = {{buffer_1_value_V_fu_104[ap_const_lv32_F : ap_const_lv32_8]}};
assign p_Result_5_1_2_fu_283_p4 = {{buffer_2_value_V_fu_108[ap_const_lv32_F : ap_const_lv32_8]}};
assign p_Result_5_1_3_fu_293_p4 = {{buffer_3_value_V_fu_112[ap_const_lv32_F : ap_const_lv32_8]}};
assign p_Result_5_1_4_fu_303_p4 = {{buffer_4_value_V_fu_116[ap_const_lv32_F : ap_const_lv32_8]}};
assign p_Result_5_1_5_fu_313_p4 = {{buffer_5_value_V_fu_120[ap_const_lv32_F : ap_const_lv32_8]}};
assign p_Result_5_1_6_fu_323_p4 = {{buffer_6_value_V_fu_124[ap_const_lv32_F : ap_const_lv32_8]}};
assign p_Result_5_1_7_fu_333_p4 = {{buffer_7_value_V_fu_96[ap_const_lv32_F : ap_const_lv32_8]}};
assign p_Result_5_1_8_fu_343_p4 = {{slice_stream_V_value_V_dout[ap_const_lv32_F : ap_const_lv32_8]}};
assign p_Result_5_1_fu_263_p4 = {{buffer_0_value_V_fu_100[ap_const_lv32_F : ap_const_lv32_8]}};
assign p_Result_5_2_1_fu_363_p4 = {{buffer_1_value_V_fu_104[ap_const_lv32_17 : ap_const_lv32_10]}};
assign p_Result_5_2_2_fu_373_p4 = {{buffer_2_value_V_fu_108[ap_const_lv32_17 : ap_const_lv32_10]}};
assign p_Result_5_2_3_fu_383_p4 = {{buffer_3_value_V_fu_112[ap_const_lv32_17 : ap_const_lv32_10]}};
assign p_Result_5_2_4_fu_393_p4 = {{buffer_4_value_V_fu_116[ap_const_lv32_17 : ap_const_lv32_10]}};
assign p_Result_5_2_5_fu_403_p4 = {{buffer_5_value_V_fu_120[ap_const_lv32_17 : ap_const_lv32_10]}};
assign p_Result_5_2_6_fu_413_p4 = {{buffer_6_value_V_fu_124[ap_const_lv32_17 : ap_const_lv32_10]}};
assign p_Result_5_2_7_fu_423_p4 = {{buffer_7_value_V_fu_96[ap_const_lv32_17 : ap_const_lv32_10]}};
assign p_Result_5_2_8_fu_433_p4 = {{slice_stream_V_value_V_dout[ap_const_lv32_17 : ap_const_lv32_10]}};
assign p_Result_5_2_fu_353_p4 = {{buffer_0_value_V_fu_100[ap_const_lv32_17 : ap_const_lv32_10]}};
assign p_Result_5_3_1_fu_453_p4 = {{buffer_1_value_V_fu_104[ap_const_lv32_1F : ap_const_lv32_18]}};
assign p_Result_5_3_2_fu_463_p4 = {{buffer_2_value_V_fu_108[ap_const_lv32_1F : ap_const_lv32_18]}};
assign p_Result_5_3_3_fu_473_p4 = {{buffer_3_value_V_fu_112[ap_const_lv32_1F : ap_const_lv32_18]}};
assign p_Result_5_3_4_fu_483_p4 = {{buffer_4_value_V_fu_116[ap_const_lv32_1F : ap_const_lv32_18]}};
assign p_Result_5_3_5_fu_493_p4 = {{buffer_5_value_V_fu_120[ap_const_lv32_1F : ap_const_lv32_18]}};
assign p_Result_5_3_6_fu_503_p4 = {{buffer_6_value_V_fu_124[ap_const_lv32_1F : ap_const_lv32_18]}};
assign p_Result_5_3_7_fu_513_p4 = {{buffer_7_value_V_fu_96[ap_const_lv32_1F : ap_const_lv32_18]}};
assign p_Result_5_3_8_fu_523_p4 = {{slice_stream_V_value_V_dout[ap_const_lv32_1F : ap_const_lv32_18]}};
assign p_Result_5_3_fu_443_p4 = {{buffer_0_value_V_fu_100[ap_const_lv32_1F : ap_const_lv32_18]}};
assign p_Result_5_4_1_fu_543_p4 = {{buffer_1_value_V_fu_104[ap_const_lv32_27 : ap_const_lv32_20]}};
assign p_Result_5_4_2_fu_553_p4 = {{buffer_2_value_V_fu_108[ap_const_lv32_27 : ap_const_lv32_20]}};
assign p_Result_5_4_3_fu_563_p4 = {{buffer_3_value_V_fu_112[ap_const_lv32_27 : ap_const_lv32_20]}};
assign p_Result_5_4_4_fu_573_p4 = {{buffer_4_value_V_fu_116[ap_const_lv32_27 : ap_const_lv32_20]}};
assign p_Result_5_4_5_fu_583_p4 = {{buffer_5_value_V_fu_120[ap_const_lv32_27 : ap_const_lv32_20]}};
assign p_Result_5_4_6_fu_593_p4 = {{buffer_6_value_V_fu_124[ap_const_lv32_27 : ap_const_lv32_20]}};
assign p_Result_5_4_7_fu_603_p4 = {{buffer_7_value_V_fu_96[ap_const_lv32_27 : ap_const_lv32_20]}};
assign p_Result_5_4_8_fu_613_p4 = {{slice_stream_V_value_V_dout[ap_const_lv32_27 : ap_const_lv32_20]}};
assign p_Result_5_4_fu_533_p4 = {{buffer_0_value_V_fu_100[ap_const_lv32_27 : ap_const_lv32_20]}};
assign p_Result_5_5_1_fu_633_p4 = {{buffer_1_value_V_fu_104[ap_const_lv32_2F : ap_const_lv32_28]}};
assign p_Result_5_5_2_fu_643_p4 = {{buffer_2_value_V_fu_108[ap_const_lv32_2F : ap_const_lv32_28]}};
assign p_Result_5_5_3_fu_653_p4 = {{buffer_3_value_V_fu_112[ap_const_lv32_2F : ap_const_lv32_28]}};
assign p_Result_5_5_4_fu_663_p4 = {{buffer_4_value_V_fu_116[ap_const_lv32_2F : ap_const_lv32_28]}};
assign p_Result_5_5_5_fu_673_p4 = {{buffer_5_value_V_fu_120[ap_const_lv32_2F : ap_const_lv32_28]}};
assign p_Result_5_5_6_fu_683_p4 = {{buffer_6_value_V_fu_124[ap_const_lv32_2F : ap_const_lv32_28]}};
assign p_Result_5_5_7_fu_693_p4 = {{buffer_7_value_V_fu_96[ap_const_lv32_2F : ap_const_lv32_28]}};
assign p_Result_5_5_8_fu_703_p4 = {{slice_stream_V_value_V_dout[ap_const_lv32_2F : ap_const_lv32_28]}};
assign p_Result_5_5_fu_623_p4 = {{buffer_0_value_V_fu_100[ap_const_lv32_2F : ap_const_lv32_28]}};
assign p_Result_5_6_1_fu_723_p4 = {{buffer_1_value_V_fu_104[ap_const_lv32_37 : ap_const_lv32_30]}};
assign p_Result_5_6_2_fu_733_p4 = {{buffer_2_value_V_fu_108[ap_const_lv32_37 : ap_const_lv32_30]}};
assign p_Result_5_6_3_fu_743_p4 = {{buffer_3_value_V_fu_112[ap_const_lv32_37 : ap_const_lv32_30]}};
assign p_Result_5_6_4_fu_753_p4 = {{buffer_4_value_V_fu_116[ap_const_lv32_37 : ap_const_lv32_30]}};
assign p_Result_5_6_5_fu_763_p4 = {{buffer_5_value_V_fu_120[ap_const_lv32_37 : ap_const_lv32_30]}};
assign p_Result_5_6_6_fu_773_p4 = {{buffer_6_value_V_fu_124[ap_const_lv32_37 : ap_const_lv32_30]}};
assign p_Result_5_6_7_fu_783_p4 = {{buffer_7_value_V_fu_96[ap_const_lv32_37 : ap_const_lv32_30]}};
assign p_Result_5_6_8_fu_793_p4 = {{slice_stream_V_value_V_dout[ap_const_lv32_37 : ap_const_lv32_30]}};
assign p_Result_5_6_fu_713_p4 = {{buffer_0_value_V_fu_100[ap_const_lv32_37 : ap_const_lv32_30]}};
assign p_Result_5_7_1_fu_813_p4 = {{buffer_1_value_V_fu_104[ap_const_lv32_3F : ap_const_lv32_38]}};
assign p_Result_5_7_2_fu_823_p4 = {{buffer_2_value_V_fu_108[ap_const_lv32_3F : ap_const_lv32_38]}};
assign p_Result_5_7_3_fu_833_p4 = {{buffer_3_value_V_fu_112[ap_const_lv32_3F : ap_const_lv32_38]}};
assign p_Result_5_7_4_fu_843_p4 = {{buffer_4_value_V_fu_116[ap_const_lv32_3F : ap_const_lv32_38]}};
assign p_Result_5_7_5_fu_853_p4 = {{buffer_5_value_V_fu_120[ap_const_lv32_3F : ap_const_lv32_38]}};
assign p_Result_5_7_6_fu_863_p4 = {{buffer_6_value_V_fu_124[ap_const_lv32_3F : ap_const_lv32_38]}};
assign p_Result_5_7_7_fu_873_p4 = {{buffer_7_value_V_fu_96[ap_const_lv32_3F : ap_const_lv32_38]}};
assign p_Result_5_7_8_fu_883_p4 = {{slice_stream_V_value_V_dout[ap_const_lv32_3F : ap_const_lv32_38]}};
assign p_Result_5_7_fu_803_p4 = {{buffer_0_value_V_fu_100[ap_const_lv32_3F : ap_const_lv32_38]}};
assign p_Result_5_8_1_fu_903_p4 = {{buffer_1_value_V_fu_104[ap_const_lv32_47 : ap_const_lv32_40]}};
assign p_Result_5_8_2_fu_913_p4 = {{buffer_2_value_V_fu_108[ap_const_lv32_47 : ap_const_lv32_40]}};
assign p_Result_5_8_3_fu_923_p4 = {{buffer_3_value_V_fu_112[ap_const_lv32_47 : ap_const_lv32_40]}};
assign p_Result_5_8_4_fu_933_p4 = {{buffer_4_value_V_fu_116[ap_const_lv32_47 : ap_const_lv32_40]}};
assign p_Result_5_8_5_fu_943_p4 = {{buffer_5_value_V_fu_120[ap_const_lv32_47 : ap_const_lv32_40]}};
assign p_Result_5_8_6_fu_953_p4 = {{buffer_6_value_V_fu_124[ap_const_lv32_47 : ap_const_lv32_40]}};
assign p_Result_5_8_7_fu_963_p4 = {{buffer_7_value_V_fu_96[ap_const_lv32_47 : ap_const_lv32_40]}};
assign p_Result_5_8_8_fu_973_p4 = {{slice_stream_V_value_V_dout[ap_const_lv32_47 : ap_const_lv32_40]}};
assign p_Result_5_8_fu_893_p4 = {{buffer_0_value_V_fu_100[ap_const_lv32_47 : ap_const_lv32_40]}};
assign tmp_10_fu_259_p1 = slice_stream_V_value_V_dout[7:0];
assign tmp_2_fu_227_p1 = buffer_0_value_V_fu_100[7:0];
assign tmp_3_fu_231_p1 = buffer_1_value_V_fu_104[7:0];
assign tmp_4_fu_235_p1 = buffer_2_value_V_fu_108[7:0];
assign tmp_5_fu_239_p1 = buffer_3_value_V_fu_112[7:0];
assign tmp_6_fu_243_p1 = buffer_4_value_V_fu_116[7:0];
assign tmp_7_fu_247_p1 = buffer_5_value_V_fu_120[7:0];
assign tmp_8_fu_251_p1 = buffer_6_value_V_fu_124[7:0];
assign tmp_9_fu_255_p1 = buffer_7_value_V_fu_96[7:0];
assign tmp_fu_187_p4 = {{i_0_i_i_reg_152[ap_const_lv32_8 : ap_const_lv32_3]}};


endmodule //hls_target_call_Loop_LB2D_shift_proc

