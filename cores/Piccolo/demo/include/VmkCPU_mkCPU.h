// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VmkCPU.h for the primary calling header

#ifndef _VMKCPU_MKCPU_H_
#define _VMKCPU_MKCPU_H_  // guard

#include "verilated_heavy.h"
#include "VmkCPU__Dpi.h"

//==========

class VmkCPU__Syms;
class VmkCPU_VerilatedVcd;
class VmkCPU_mkGPR_RegFile;
class VmkCPU_mkNear_Mem;


//----------

VL_MODULE(VmkCPU_mkCPU) {
  public:
    // CELLS
    VmkCPU_mkGPR_RegFile* gpr_regfile;
    VmkCPU_mkNear_Mem* near_mem;
    
    // PORTS
    VL_IN8(CLK,0,0);
    VL_IN8(RST_N,0,0);
    VL_IN8(hart0_server_reset_request_put,0,0);
    VL_IN8(EN_hart0_server_reset_request_put,0,0);
    VL_OUT8(RDY_hart0_server_reset_request_put,0,0);
    VL_IN8(EN_hart0_server_reset_response_get,0,0);
    VL_OUT8(hart0_server_reset_response_get,0,0);
    VL_OUT8(RDY_hart0_server_reset_response_get,0,0);
    VL_OUT8(imem_master_awvalid,0,0);
    VL_OUT8(imem_master_awid,3,0);
    VL_OUT8(imem_master_awlen,7,0);
    VL_OUT8(imem_master_awsize,2,0);
    VL_OUT8(imem_master_awburst,1,0);
    VL_OUT8(imem_master_awlock,0,0);
    VL_OUT8(imem_master_awcache,3,0);
    VL_OUT8(imem_master_awprot,2,0);
    VL_OUT8(imem_master_awqos,3,0);
    VL_OUT8(imem_master_awregion,3,0);
    VL_IN8(imem_master_awready,0,0);
    VL_OUT8(imem_master_wvalid,0,0);
    VL_OUT8(imem_master_wstrb,7,0);
    VL_OUT8(imem_master_wlast,0,0);
    VL_IN8(imem_master_wready,0,0);
    VL_IN8(imem_master_bvalid,0,0);
    VL_IN8(imem_master_bid,3,0);
    VL_IN8(imem_master_bresp,1,0);
    VL_OUT8(imem_master_bready,0,0);
    VL_OUT8(imem_master_arvalid,0,0);
    VL_OUT8(imem_master_arid,3,0);
    VL_OUT8(imem_master_arlen,7,0);
    VL_OUT8(imem_master_arsize,2,0);
    VL_OUT8(imem_master_arburst,1,0);
    VL_OUT8(imem_master_arlock,0,0);
    VL_OUT8(imem_master_arcache,3,0);
    VL_OUT8(imem_master_arprot,2,0);
    VL_OUT8(imem_master_arqos,3,0);
    VL_OUT8(imem_master_arregion,3,0);
    VL_IN8(imem_master_arready,0,0);
    VL_IN8(imem_master_rvalid,0,0);
    VL_IN8(imem_master_rid,3,0);
    VL_IN8(imem_master_rresp,1,0);
    VL_IN8(imem_master_rlast,0,0);
    VL_OUT8(imem_master_rready,0,0);
    VL_OUT8(dmem_master_awvalid,0,0);
    VL_OUT8(dmem_master_awid,3,0);
    VL_OUT8(dmem_master_awlen,7,0);
    VL_OUT8(dmem_master_awsize,2,0);
    VL_OUT8(dmem_master_awburst,1,0);
    VL_OUT8(dmem_master_awlock,0,0);
    VL_OUT8(dmem_master_awcache,3,0);
    VL_OUT8(dmem_master_awprot,2,0);
    VL_OUT8(dmem_master_awqos,3,0);
    VL_OUT8(dmem_master_awregion,3,0);
    VL_IN8(dmem_master_awready,0,0);
    VL_OUT8(dmem_master_wvalid,0,0);
    VL_OUT8(dmem_master_wstrb,7,0);
    VL_OUT8(dmem_master_wlast,0,0);
    VL_IN8(dmem_master_wready,0,0);
    VL_IN8(dmem_master_bvalid,0,0);
    VL_IN8(dmem_master_bid,3,0);
    VL_IN8(dmem_master_bresp,1,0);
    VL_OUT8(dmem_master_bready,0,0);
    VL_OUT8(dmem_master_arvalid,0,0);
    VL_OUT8(dmem_master_arid,3,0);
    VL_OUT8(dmem_master_arlen,7,0);
    VL_OUT8(dmem_master_arsize,2,0);
    VL_OUT8(dmem_master_arburst,1,0);
    VL_OUT8(dmem_master_arlock,0,0);
    VL_OUT8(dmem_master_arcache,3,0);
    VL_OUT8(dmem_master_arprot,2,0);
    VL_OUT8(dmem_master_arqos,3,0);
    VL_OUT8(dmem_master_arregion,3,0);
    VL_IN8(dmem_master_arready,0,0);
    VL_IN8(dmem_master_rvalid,0,0);
    VL_IN8(dmem_master_rid,3,0);
    VL_IN8(dmem_master_rresp,1,0);
    VL_IN8(dmem_master_rlast,0,0);
    VL_OUT8(dmem_master_rready,0,0);
    VL_IN8(m_external_interrupt_req_set_not_clear,0,0);
    VL_IN8(s_external_interrupt_req_set_not_clear,0,0);
    VL_IN8(software_interrupt_req_set_not_clear,0,0);
    VL_IN8(timer_interrupt_req_set_not_clear,0,0);
    VL_IN8(nmi_req_set_not_clear,0,0);
    VL_IN8(set_verbosity_verbosity,3,0);
    VL_IN8(EN_set_verbosity,0,0);
    VL_OUT8(__PVT__RDY_set_verbosity,0,0);
    VL_IN(prob_imem_instr,31,0);
    VL_OUT64(imem_master_awaddr,63,0);
    VL_OUT64(imem_master_wdata,63,0);
    VL_OUT64(imem_master_araddr,63,0);
    VL_IN64(imem_master_rdata,63,0);
    VL_OUT64(dmem_master_awaddr,63,0);
    VL_OUT64(dmem_master_wdata,63,0);
    VL_OUT64(dmem_master_araddr,63,0);
    VL_IN64(dmem_master_rdata,63,0);
    VL_IN64(set_verbosity_logdelay,63,0);
    
    // LOCAL SIGNALS
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        CData/*3:0*/ __PVT__cfg_verbosity;
        CData/*1:0*/ __PVT__rg_cur_priv;
        CData/*0:0*/ __PVT__rg_mstatus_MXR;
        CData/*0:0*/ __PVT__rg_retiring;
        CData/*0:0*/ rg_retiring__024EN;
        CData/*0:0*/ __PVT__rg_run_on_reset;
        CData/*0:0*/ __PVT__rg_sstatus_SUM;
        CData/*3:0*/ __PVT__rg_state;
        CData/*3:0*/ __PVT__rg_state__024D_IN;
        CData/*0:0*/ __PVT__rg_state__024EN;
        CData/*0:0*/ __PVT__rg_trap_interrupt;
        CData/*0:0*/ __PVT__s1_to_s2;
        CData/*0:0*/ __PVT__s1_to_s2__024D_IN;
        CData/*0:0*/ __PVT__s1_to_s2__024EN;
        CData/*0:0*/ __PVT__s2_to_s3;
        CData/*0:0*/ __PVT__s2_to_s3__024EN;
        CData/*0:0*/ __PVT__s3_deq;
        CData/*0:0*/ __PVT__s3_deq__024D_IN;
        CData/*0:0*/ __PVT__s3_deq__024EN;
        CData/*0:0*/ __PVT__stage1_rg_full;
        CData/*0:0*/ __PVT__stage2_rg_full;
        CData/*0:0*/ __PVT__stage2_rg_resetting;
        CData/*0:0*/ __PVT__stage3_rg_full;
        CData/*1:0*/ __PVT__csr_regfile__024csr_ret_actions_from_priv;
        CData/*4:0*/ __PVT__csr_regfile__024interrupt_pending;
        CData/*0:0*/ __PVT__csr_regfile__024EN_mav_csr_write;
        CData/*0:0*/ __PVT__csr_regfile__024access_permitted_1;
        CData/*0:0*/ __PVT__csr_regfile__024access_permitted_2;
        CData/*0:0*/ __PVT__csr_regfile__024csr_trap_actions_interrupt;
        CData/*0:0*/ __PVT__csr_regfile__024csr_trap_actions_nmi;
        CData/*4:0*/ __PVT__gpr_regfile__024write_rd_rd;
        CData/*0:0*/ __PVT__near_mem__024EN_dmem_req;
        CData/*0:0*/ __PVT__near_mem__024EN_imem_req;
        CData/*0:0*/ __PVT__stage2_f_reset_reqs__024EMPTY_N;
        CData/*0:0*/ __PVT__CAN_FIRE_RL_rl_WFI_resume;
        CData/*0:0*/ __PVT__CAN_FIRE_RL_rl_finish_FENCE;
        CData/*0:0*/ __PVT__CAN_FIRE_RL_rl_finish_FENCE_I;
        CData/*0:0*/ __PVT__CAN_FIRE_RL_rl_pipe;
        CData/*0:0*/ __PVT__CAN_FIRE_RL_rl_reset_start;
        CData/*0:0*/ __PVT__CAN_FIRE_RL_rl_stage1_FENCE;
        CData/*0:0*/ __PVT__CAN_FIRE_RL_rl_stage1_FENCE_I;
        CData/*0:0*/ __PVT__CAN_FIRE_RL_rl_stage1_SFENCE_VMA;
        CData/*0:0*/ __PVT__CAN_FIRE_RL_rl_stage1_WFI;
        CData/*0:0*/ __PVT__CAN_FIRE_RL_rl_stage1_interrupt;
        CData/*0:0*/ __PVT__CAN_FIRE_RL_rl_stage1_trap;
        CData/*0:0*/ __PVT__CAN_FIRE_RL_rl_stage1_xRET;
        CData/*0:0*/ __PVT__CAN_FIRE_RL_rl_stage2_nonpipe;
        CData/*0:0*/ __PVT__CAN_FIRE_RL_rl_trap;
        CData/*0:0*/ __PVT__CAN_FIRE_RL_stage1_rl_reset;
        CData/*0:0*/ __PVT__CAN_FIRE_RL_stage2_rl_reset_end;
        CData/*0:0*/ __PVT__CAN_FIRE_RL_stage3_rl_reset;
        CData/*0:0*/ __PVT__MUX_csr_regfile__024mav_csr_write_1___05FSEL_1;
        CData/*0:0*/ __PVT__MUX_gpr_regfile__024write_rd_1___05FSEL_3;
        CData/*0:0*/ __PVT__MUX_near_mem__024imem_req_1___05FSEL_1;
        CData/*0:0*/ __PVT__MUX_near_mem__024imem_req_1___05FSEL_2;
        CData/*0:0*/ __PVT__MUX_near_mem__024imem_req_1___05FSEL_5;
        CData/*0:0*/ __PVT__MUX_rg_retiring__024write_1___05FSEL_1;
        CData/*0:0*/ __PVT__MUX_rg_state__024write_1___05FSEL_1;
        CData/*0:0*/ __PVT__MUX_rg_state__024write_1___05FSEL_10;
        CData/*0:0*/ __PVT__MUX_rg_state__024write_1___05FSEL_4;
        CData/*0:0*/ __PVT__MUX_rg_state__024write_1___05FSEL_6;
        CData/*0:0*/ __PVT__MUX_rg_state__024write_1___05FSEL_7;
        CData/*0:0*/ __PVT__MUX_rg_state__024write_1___05FSEL_8;
        CData/*0:0*/ __PVT__MUX_rg_state__024write_1___05FSEL_9;
    };
    struct {
        CData/*0:0*/ __PVT__MUX_rg_trap_info__024write_1___05FSEL_1;
        CData/*0:0*/ __PVT__MUX_stage1_rg_full__024write_1___05FVAL_10;
        CData/*3:0*/ __PVT__IF_near_mem_imem_instr___05F59_BITS_6_TO_0_79_EQ_0_ETC___05F_d409;
        CData/*3:0*/ __PVT__alu_outputs_exc_code___05Fh5862;
        CData/*1:0*/ __PVT__IF_NOT_stage1_rg_full_55_56_OR_NOT_near_mem_im_ETC___05F_d491;
        CData/*0:0*/ __PVT__IF_near_mem_imem_instr___05F59_BITS_14_TO_12_81_EQ_ETC___05F_d227;
        CData/*0:0*/ __PVT__IF_near_mem_imem_instr___05F59_BITS_14_TO_12_81_EQ_ETC___05F_d291;
        CData/*0:0*/ __PVT__IF_near_mem_imem_instr___05F59_BITS_6_TO_0_79_EQ_0_ETC___05F_d308;
        CData/*0:0*/ __PVT__IF_near_mem_imem_instr___05F59_BITS_6_TO_0_79_EQ_0_ETC___05F_d352;
        CData/*4:0*/ __PVT__shamt___05Fh5467;
        CData/*3:0*/ __PVT__IF_NOT_stage1_rg_full_55_56_OR_NOT_near_mem_im_ETC___05F_d415;
        CData/*1:0*/ __PVT__IF_stage2_rg_full_3_THEN_IF_stage2_rg_stage2_4_ETC___05F_d142;
        CData/*1:0*/ __PVT__IF_stage2_rg_full_3_THEN_IF_stage2_rg_stage2_4_ETC___05F_d86;
        CData/*0:0*/ __PVT__IF_near_mem_imem_instr___05F59_BITS_14_TO_12_81_EQ_ETC___05F_d285;
        CData/*0:0*/ __PVT__IF_near_mem_imem_instr___05F59_BITS_19_TO_15_60_EQ_ETC___05F_d216;
        CData/*0:0*/ __PVT__IF_near_mem_imem_instr___05F59_BITS_19_TO_15_60_EQ_ETC___05F_d218;
        CData/*0:0*/ __PVT__IF_near_mem_imem_instr___05F59_BITS_19_TO_15_60_EQ_ETC___05F_d220;
        CData/*0:0*/ __PVT__IF_near_mem_imem_instr___05F59_BITS_6_TO_0_79_EQ_0_ETC___05F_d274;
        CData/*0:0*/ __PVT__IF_near_mem_imem_instr___05F59_BITS_6_TO_0_79_EQ_0_ETC___05F_d343;
        CData/*0:0*/ __PVT__IF_near_mem_imem_instr___05F59_BITS_6_TO_0_79_EQ_0_ETC___05F_d649;
        CData/*0:0*/ __PVT__IF_stage2_rg_full_3_THEN_IF_stage2_rg_stage2_4_ETC___05F_d161;
        CData/*0:0*/ __PVT__IF_stage2_rg_full_3_THEN_IF_stage2_rg_stage2_4_ETC___05F_d163;
        CData/*0:0*/ __PVT__NOT_csr_regfile_interrupt_pending_rg_cur_priv___05FETC___05F_d716;
        CData/*0:0*/ __PVT__NOT_csr_regfile_interrupt_pending_rg_cur_priv___05FETC___05F_d734;
        CData/*0:0*/ __PVT__NOT_csr_regfile_interrupt_pending_rg_cur_priv___05FETC___05F_d737;
        CData/*0:0*/ __PVT__NOT_csr_regfile_interrupt_pending_rg_cur_priv___05FETC___05F_d756;
        CData/*0:0*/ __PVT__NOT_csr_regfile_interrupt_pending_rg_cur_priv___05FETC___05F_d773;
        CData/*0:0*/ __PVT__NOT_near_mem_imem_instr___05F59_BITS_14_TO_12_81_E_ETC___05F_d252;
        CData/*0:0*/ __PVT__NOT_near_mem_imem_valid___05F57_58_OR_IF_stage2_rg_ETC___05F_d166;
        CData/*0:0*/ __PVT__NOT_near_mem_imem_valid___05F57_58_OR_IF_stage2_rg_ETC___05F_d702;
        CData/*0:0*/ __PVT__NOT_near_mem_imem_valid___05F57_58_OR_IF_stage2_rg_ETC___05F_d713;
        CData/*0:0*/ __PVT___0_OR_0_OR_near_mem_imem_exc___05F78_OR_IF_near_mem_ETC___05F_d767;
        CData/*0:0*/ __PVT__gpr_regfile_RDY_server_reset_request_put___05F59_A_ETC___05F_d671;
        CData/*0:0*/ __PVT__near_mem_imem_instr___05F59_BITS_14_TO_12_81_EQ_0b_ETC___05F_d616;
        CData/*0:0*/ __PVT__near_mem_imem_valid___05F57_AND_NOT_IF_stage2_rg_f_ETC___05F_d177;
        CData/*0:0*/ __PVT__near_mem_imem_valid___05F57_AND_NOT_IF_stage2_rg_f_ETC___05F_d311;
        CData/*0:0*/ __PVT__near_mem_imem_valid___05F57_AND_NOT_IF_stage2_rg_f_ETC___05F_d355;
        CData/*0:0*/ __PVT__rg_state_8_EQ_3_97_AND_NOT_csr_regfile_interru_ETC___05F_d793;
        CData/*0:0*/ __PVT__monitor_s1_already;
        CData/*0:0*/ __PVT__monitor_s1;
        CData/*0:0*/ end_of_pipeline;
        CData/*0:0*/ __PVT__monitor_s1_delay;
        CData/*0:0*/ __PVT__monitor_s2;
        CData/*0:0*/ __PVT__monitor_s2_nxt;
        CData/*0:0*/ __PVT__monitor_s2_already;
        CData/*0:0*/ __PVT__monitor_s3;
        CData/*0:0*/ __PVT__monitor_s3_nxt;
        CData/*0:0*/ __PVT__monitor_s3_delay;
        CData/*0:0*/ __PVT__monitor_s4_nxt;
        CData/*0:0*/ __PVT__monitor_s4;
        CData/*0:0*/ __PVT__monitor_s4_delay;
        CData/*3:0*/ __PVT__csr_regfile__DOT__cfg_verbosity;
        CData/*4:0*/ __PVT__csr_regfile__DOT__rg_mcause;
        CData/*2:0*/ __PVT__csr_regfile__DOT__rg_mcounteren;
        CData/*0:0*/ __PVT__csr_regfile__DOT__rg_nmi;
        CData/*0:0*/ __PVT__csr_regfile__DOT__rg_state;
        CData/*0:0*/ __PVT__csr_regfile__DOT__csr_mie__024EN_fav_write;
        CData/*0:0*/ __PVT__csr_regfile__DOT__csr_mip__024EN_fav_write;
        CData/*0:0*/ __PVT__csr_regfile__DOT__CAN_FIRE_RL_rl_upd_minstret_csrrx;
        CData/*0:0*/ __PVT__csr_regfile__DOT__MUX_rg_state__024write_1___05FSEL_2;
        CData/*0:0*/ __PVT__csr_regfile__DOT__MUX_rw_minstret__024wset_1___05FSEL_1;
        CData/*3:0*/ __PVT__csr_regfile__DOT__exc_code___05Fh7909;
        CData/*0:0*/ __PVT__csr_regfile__DOT__NOT_access_permitted_1_csr_addr_ULT_0xC03_069___05FETC___05F_d1155;
        CData/*0:0*/ __PVT__csr_regfile__DOT__NOT_access_permitted_2_csr_addr_ULT_0xC03_160___05FETC___05F_d1245;
    };
    struct {
        CData/*0:0*/ __PVT__csr_regfile__DOT__NOT_csr_mip_fv_read___05F94_BIT_11_277_324_OR_NOT___05FETC___05F_d1334;
        CData/*0:0*/ __PVT__csr_regfile__DOT__NOT_csr_mip_fv_read___05F94_BIT_11_277_324_OR_NOT___05FETC___05F_d1339;
        CData/*0:0*/ __PVT__csr_regfile__DOT__NOT_csr_mip_fv_read___05F94_BIT_11_277_324_OR_NOT___05FETC___05F_d1344;
        CData/*0:0*/ __PVT__csr_regfile__DOT__NOT_csr_mip_fv_read___05F94_BIT_11_277_324_OR_NOT___05FETC___05F_d1349;
        CData/*0:0*/ __PVT__csr_regfile__DOT__NOT_csr_mip_fv_read___05F94_BIT_11_277_324_OR_NOT___05FETC___05F_d1354;
        CData/*0:0*/ __PVT__csr_regfile__DOT__NOT_csr_mip_fv_read___05F94_BIT_11_277_324_OR_NOT___05FETC___05F_d1359;
        CData/*0:0*/ __PVT__csr_regfile__DOT__csr_mip_fv_read___05F94_BIT_11_277_AND_csr_mie_fv___05FETC___05F_d1303;
        CData/*0:0*/ __PVT__csr_regfile__DOT__mav_csr_write_csr_addr_ULT_0x323_85_OR_NOT_mav_ETC___05F_d728;
        CData/*0:0*/ __PVT__csr_regfile__DOT__mav_csr_write_csr_addr_ULT_0xB03_77_OR_NOT_mav_ETC___05F_d590;
        CData/*0:0*/ __PVT__csr_regfile__DOT__csr_mip__DOT__rg_meip;
        CData/*0:0*/ __PVT__csr_regfile__DOT__csr_mip__DOT__rg_msip;
        CData/*0:0*/ __PVT__csr_regfile__DOT__csr_mip__DOT__rg_mtip;
        CData/*0:0*/ __PVT__csr_regfile__DOT__csr_mip__DOT__rg_seip;
        CData/*0:0*/ __PVT__csr_regfile__DOT__csr_mip__DOT__rg_ssip;
        CData/*0:0*/ __PVT__csr_regfile__DOT__csr_mip__DOT__rg_stip;
        CData/*0:0*/ __PVT__csr_regfile__DOT__csr_mip__DOT__rg_ueip;
        CData/*0:0*/ __PVT__csr_regfile__DOT__csr_mip__DOT__rg_usip;
        CData/*0:0*/ __PVT__csr_regfile__DOT__csr_mip__DOT__rg_utip;
        CData/*0:0*/ __PVT__csr_regfile__DOT__f_reset_rsps__DOT__empty_reg;
        CData/*0:0*/ __PVT__csr_regfile__DOT__f_reset_rsps__DOT__full_reg;
        CData/*0:0*/ __PVT__csr_regfile__DOT__f_reset_rsps__DOT__error_checks__DOT__deqerror;
        CData/*0:0*/ __PVT__csr_regfile__DOT__f_reset_rsps__DOT__error_checks__DOT__enqerror;
        CData/*0:0*/ __PVT__f_reset_reqs__DOT__full_reg;
        CData/*0:0*/ __PVT__f_reset_reqs__DOT__empty_reg;
        CData/*0:0*/ __PVT__f_reset_reqs__DOT__data0_reg;
        CData/*0:0*/ __PVT__f_reset_reqs__DOT__data1_reg;
        CData/*0:0*/ __PVT__f_reset_reqs__DOT__error_checks__DOT__deqerror;
        CData/*0:0*/ __PVT__f_reset_reqs__DOT__error_checks__DOT__enqerror;
        CData/*0:0*/ __PVT__f_reset_rsps__DOT__full_reg;
        CData/*0:0*/ __PVT__f_reset_rsps__DOT__empty_reg;
        CData/*0:0*/ __PVT__f_reset_rsps__DOT__data0_reg;
        CData/*0:0*/ __PVT__f_reset_rsps__DOT__data1_reg;
        CData/*0:0*/ __PVT__f_reset_rsps__DOT__error_checks__DOT__deqerror;
        CData/*0:0*/ __PVT__f_reset_rsps__DOT__error_checks__DOT__enqerror;
        CData/*0:0*/ __PVT__stage1_f_reset_reqs__DOT__empty_reg;
        CData/*0:0*/ __PVT__stage1_f_reset_reqs__DOT__full_reg;
        CData/*0:0*/ __PVT__stage1_f_reset_reqs__DOT__error_checks__DOT__deqerror;
        CData/*0:0*/ __PVT__stage1_f_reset_reqs__DOT__error_checks__DOT__enqerror;
        CData/*0:0*/ __PVT__stage1_f_reset_rsps__DOT__empty_reg;
        CData/*0:0*/ __PVT__stage1_f_reset_rsps__DOT__full_reg;
        CData/*0:0*/ __PVT__stage1_f_reset_rsps__DOT__error_checks__DOT__deqerror;
        CData/*0:0*/ __PVT__stage1_f_reset_rsps__DOT__error_checks__DOT__enqerror;
        CData/*0:0*/ __PVT__stage2_f_reset_reqs__DOT__empty_reg;
        CData/*0:0*/ __PVT__stage2_f_reset_reqs__DOT__full_reg;
        CData/*0:0*/ __PVT__stage2_f_reset_reqs__DOT__error_checks__DOT__deqerror;
        CData/*0:0*/ __PVT__stage2_f_reset_reqs__DOT__error_checks__DOT__enqerror;
        CData/*0:0*/ __PVT__stage2_f_reset_rsps__DOT__empty_reg;
        CData/*0:0*/ __PVT__stage2_f_reset_rsps__DOT__full_reg;
        CData/*0:0*/ __PVT__stage2_f_reset_rsps__DOT__error_checks__DOT__deqerror;
        CData/*0:0*/ __PVT__stage2_f_reset_rsps__DOT__error_checks__DOT__enqerror;
        CData/*0:0*/ __PVT__stage3_f_reset_reqs__DOT__empty_reg;
        CData/*0:0*/ __PVT__stage3_f_reset_reqs__DOT__full_reg;
        CData/*0:0*/ __PVT__stage3_f_reset_reqs__DOT__error_checks__DOT__deqerror;
        CData/*0:0*/ __PVT__stage3_f_reset_reqs__DOT__error_checks__DOT__enqerror;
        CData/*0:0*/ __PVT__stage3_f_reset_rsps__DOT__empty_reg;
        CData/*0:0*/ __PVT__stage3_f_reset_rsps__DOT__full_reg;
        CData/*0:0*/ __PVT__stage3_f_reset_rsps__DOT__error_checks__DOT__deqerror;
        CData/*0:0*/ __PVT__stage3_f_reset_rsps__DOT__error_checks__DOT__enqerror;
        SData/*12:0*/ __PVT__near_memimem_instr_BIT_31_CONCAT_near_memime_ETC___05Fq1;
        SData/*11:0*/ __PVT__near_memimem_instr_BITS_31_TO_25_CONCAT_near___05FETC___05Fq6;
        SData/*11:0*/ __PVT__csr_regfile__DOT__csr_mie__DOT__rg_mie;
        SData/*11:0*/ __PVT__csr_regfile__DOT__csr_mie__DOT__mie___05Fh88;
        SData/*11:0*/ __PVT__csr_regfile__DOT__csr_mip__DOT__new_mip___05Fh524;
        IData/*31:0*/ __PVT__rg_csr_pc;
    };
    struct {
        IData/*31:0*/ __PVT__rg_csr_val1;
        IData/*31:0*/ __PVT__rg_next_pc;
        WData/*67:0*/ __PVT__rg_trap_info[3];
        IData/*31:0*/ __PVT__rg_trap_instr;
        WData/*168:0*/ __PVT__stage2_rg_stage2[6];
        WData/*103:0*/ __PVT__stage3_rg_stage3[4];
        WData/*97:0*/ __PVT__csr_regfile__024csr_trap_actions[4];
        WData/*65:0*/ __PVT__csr_regfile__024csr_ret_actions[3];
        IData/*31:0*/ __PVT__csr_regfile__024mav_csr_write_word;
        IData/*31:0*/ __PVT__near_mem__024imem_req_addr;
        IData/*31:0*/ __PVT__rs1_val___05Fh11920;
        IData/*31:0*/ __PVT__x_out_data_to_stage2_addr___05Fh5223;
        IData/*31:0*/ __PVT__x_out_data_to_stage2_val1___05Fh5224;
        IData/*31:0*/ __PVT__IF_near_mem_imem_instr___05F59_BITS_6_TO_0_79_EQ_0_ETC___05F_d571;
        IData/*31:0*/ __PVT__SEXT_near_mem_imem_instr___05F59_BITS_31_TO_20_02___05F_d303;
        IData/*31:0*/ __PVT___theResult___05F___05F_1_fst___05Fh6597;
        IData/*31:0*/ __PVT___theResult___05F_snd___05Fh7382;
        IData/*31:0*/ __PVT__alu_outputs___05F_1_addr___05Fh5385;
        IData/*31:0*/ __PVT__alu_outputs___05F_1_addr___05Fh5583;
        IData/*31:0*/ __PVT__alu_outputs___05F_1_val1___05Fh5516;
        IData/*31:0*/ __PVT__alu_outputs___05F_1_val1___05Fh5847;
        IData/*31:0*/ __PVT__alu_outputs___05F_1_val2___05Fh5367;
        IData/*31:0*/ __PVT__eaddr___05Fh5553;
        IData/*31:0*/ __PVT__rs1_val_bypassed___05Fh3337;
        IData/*31:0*/ __PVT__rs2_val___05Fh5339;
        IData/*31:0*/ __PVT__trap_info_tval___05Fh6925;
        IData/*31:0*/ __PVT__x_out_bypass_rd_val___05Fh4969;
        IData/*31:0*/ __PVT__x_out_data_to_stage2_val2___05Fh5225;
        IData/*31:0*/ __PVT__x_out_next_pc___05Fh5189;
        IData/*20:0*/ __PVT__near_memimem_instr_BIT_31_CONCAT_near_memime_ETC___05Fq2;
        IData/*31:0*/ __PVT__csr_regfile__DOT__csr_mstatus_rg_mstatus;
        IData/*31:0*/ __PVT__csr_regfile__DOT__rg_dcsr;
        IData/*31:0*/ __PVT__csr_regfile__DOT__rg_dpc;
        IData/*31:0*/ __PVT__csr_regfile__DOT__rg_dscratch0;
        IData/*31:0*/ __PVT__csr_regfile__DOT__rg_dscratch1;
        IData/*31:0*/ __PVT__csr_regfile__DOT__rg_mepc;
        IData/*31:0*/ __PVT__csr_regfile__DOT__rg_mscratch;
        IData/*31:0*/ __PVT__csr_regfile__DOT__rg_mtval;
        IData/*30:0*/ __PVT__csr_regfile__DOT__rg_mtvec;
        IData/*31:0*/ __PVT__csr_regfile__DOT__rg_nmi_vector;
        IData/*31:0*/ __PVT__csr_regfile__DOT__rg_tdata1;
        IData/*31:0*/ __PVT__csr_regfile__DOT__rg_tdata2;
        IData/*31:0*/ __PVT__csr_regfile__DOT__rg_tdata3;
        IData/*31:0*/ __PVT__csr_regfile__DOT__rg_tselect;
        IData/*31:0*/ __PVT__csr_regfile__DOT__IF_mav_csr_write_csr_addr_EQ_0x300_91_THEN_0_C_ETC___05F_d769;
        IData/*31:0*/ __PVT__csr_regfile__DOT__IF_read_csr_csr_addr_EQ_0xC00_9_THEN_rg_mcycle_ETC___05F_d220;
        IData/*31:0*/ __PVT__csr_regfile__DOT__IF_csr_ret_actions_from_priv_EQ_0b11_029_THEN___05FETC___05F_d1050;
        IData/*31:0*/ __PVT__csr_regfile__DOT___theResult___05F_fst___05Fh8211;
        IData/*31:0*/ __PVT__csr_regfile__DOT___theResult___05F_fst___05Fh8412;
        IData/*31:0*/ __PVT__csr_regfile__DOT__csr_mstatus_rg_mstatus_76_AND_INV_1_SL_0_CONCA_ETC___05F_d1043;
        IData/*31:0*/ __PVT__csr_regfile__DOT__exc_pc___05Fh7243;
        IData/*31:0*/ __PVT__csr_regfile__DOT__x___05Fh8085;
        IData/*22:0*/ __PVT__csr_regfile__DOT__fixed_up_val_23___05Fh4079;
        IData/*22:0*/ __PVT__csr_regfile__DOT__fixed_up_val_23___05Fh6471;
        QData/*63:0*/ __PVT__cfg_logdelay;
        QData/*63:0*/ __PVT__rg_start_CPI_cycles;
        QData/*63:0*/ __PVT__rg_start_CPI_instrs;
        QData/*32:0*/ __PVT__csr_regfile__024read_csr;
        QData/*63:0*/ __PVT__delta_CPI_instrs___05Fh10742;
        QData/*63:0*/ __PVT__csr_regfile__DOT__rg_mcycle;
        QData/*63:0*/ __PVT__csr_regfile__DOT__rg_mcycle__024D_IN;
        QData/*63:0*/ __PVT__csr_regfile__DOT__rg_minstret;
        QData/*63:0*/ __PVT__csr_regfile__DOT__rg_minstret__024D_IN;
    };
    
    // LOCAL VARIABLES
    CData/*0:0*/ __Vdly__f_reset_reqs__DOT__data0_reg;
    
    // INTERNAL VARIABLES
  private:
    VmkCPU__Syms* __VlSymsp;  // Symbol table
  public:
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VmkCPU_mkCPU);  ///< Copying not allowed
  public:
    VmkCPU_mkCPU(const char* name = "TOP");
    ~VmkCPU_mkCPU();
    
    // INTERNAL METHODS
    void __Vconfigure(VmkCPU__Syms* symsp, bool first);
    static void _combo__TOP__mkCPU__5(VmkCPU__Syms* __restrict vlSymsp);
    static void _combo__TOP__mkCPU__7(VmkCPU__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _sequent__TOP__mkCPU__2(VmkCPU__Syms* __restrict vlSymsp);
    static void _sequent__TOP__mkCPU__3(VmkCPU__Syms* __restrict vlSymsp);
    static void _sequent__TOP__mkCPU__4(VmkCPU__Syms* __restrict vlSymsp);
    static void _sequent__TOP__mkCPU__6(VmkCPU__Syms* __restrict vlSymsp);
    static void _settle__TOP__mkCPU__1(VmkCPU__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
