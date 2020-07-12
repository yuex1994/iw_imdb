// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VROCKET_H_
#define _VROCKET_H_  // guard

#include "verilated_heavy.h"
#include "VRocket__Dpi.h"

//==========

class VRocket__Syms;
class VRocket_VerilatedVcd;
class VRocket_Rocket;


//----------

VL_MODULE(VRocket) {
  public:
    // CELLS
    // Public to allow access to /*verilator_public*/ items;
    // otherwise the application code can consider these internals.
    VRocket_Rocket* Rocket;
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clock,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(io_interrupts_debug,0,0);
    VL_IN8(io_interrupts_mtip,0,0);
    VL_IN8(io_interrupts_msip,0,0);
    VL_IN8(io_interrupts_meip,0,0);
    VL_OUT8(io_imem_req_valid,0,0);
    VL_OUT8(io_imem_req_bits_speculative,0,0);
    VL_OUT8(io_imem_resp_ready,0,0);
    VL_IN8(io_imem_resp_valid,0,0);
    VL_IN8(io_imem_resp_bits_btb_valid,0,0);
    VL_IN8(io_imem_resp_bits_btb_bits_taken,0,0);
    VL_IN8(io_imem_resp_bits_btb_bits_mask,1,0);
    VL_IN8(io_imem_resp_bits_btb_bits_bridx,0,0);
    VL_IN8(io_imem_resp_bits_btb_bits_entry,0,0);
    VL_IN8(io_imem_resp_bits_btb_bits_bht_history,0,0);
    VL_IN8(io_imem_resp_bits_btb_bits_bht_value,1,0);
    VL_IN8(io_imem_resp_bits_mask,1,0);
    VL_IN8(io_imem_resp_bits_xcpt_if,0,0);
    VL_IN8(io_imem_resp_bits_replay,0,0);
    VL_OUT8(io_imem_btb_update_valid,0,0);
    VL_OUT8(io_imem_btb_update_bits_prediction_valid,0,0);
    VL_OUT8(io_imem_btb_update_bits_prediction_bits_taken,0,0);
    VL_OUT8(io_imem_btb_update_bits_prediction_bits_mask,1,0);
    VL_OUT8(io_imem_btb_update_bits_prediction_bits_bridx,0,0);
    VL_OUT8(io_imem_btb_update_bits_prediction_bits_entry,0,0);
    VL_OUT8(io_imem_btb_update_bits_prediction_bits_bht_history,0,0);
    VL_OUT8(io_imem_btb_update_bits_prediction_bits_bht_value,1,0);
    VL_OUT8(io_imem_btb_update_bits_taken,0,0);
    VL_OUT8(io_imem_btb_update_bits_isValid,0,0);
    VL_OUT8(io_imem_btb_update_bits_isJump,0,0);
    VL_OUT8(io_imem_btb_update_bits_isReturn,0,0);
    VL_OUT8(io_imem_bht_update_valid,0,0);
    VL_OUT8(io_imem_bht_update_bits_prediction_valid,0,0);
    VL_OUT8(io_imem_bht_update_bits_prediction_bits_taken,0,0);
    VL_OUT8(io_imem_bht_update_bits_prediction_bits_mask,1,0);
    VL_OUT8(io_imem_bht_update_bits_prediction_bits_bridx,0,0);
    VL_OUT8(io_imem_bht_update_bits_prediction_bits_entry,0,0);
    VL_OUT8(io_imem_bht_update_bits_prediction_bits_bht_history,0,0);
    VL_OUT8(io_imem_bht_update_bits_prediction_bits_bht_value,1,0);
    VL_OUT8(io_imem_bht_update_bits_taken,0,0);
    VL_OUT8(io_imem_bht_update_bits_mispredict,0,0);
    VL_OUT8(io_imem_ras_update_valid,0,0);
    VL_OUT8(io_imem_ras_update_bits_isCall,0,0);
    VL_OUT8(io_imem_ras_update_bits_isReturn,0,0);
    VL_OUT8(io_imem_ras_update_bits_prediction_valid,0,0);
    VL_OUT8(io_imem_ras_update_bits_prediction_bits_taken,0,0);
    VL_OUT8(io_imem_ras_update_bits_prediction_bits_mask,1,0);
    VL_OUT8(io_imem_ras_update_bits_prediction_bits_bridx,0,0);
    VL_OUT8(io_imem_ras_update_bits_prediction_bits_entry,0,0);
    VL_OUT8(io_imem_ras_update_bits_prediction_bits_bht_history,0,0);
    VL_OUT8(io_imem_ras_update_bits_prediction_bits_bht_value,1,0);
    VL_OUT8(io_imem_flush_icache,0,0);
    VL_OUT8(io_imem_flush_tlb,0,0);
    VL_IN8(io_dmem_req_ready,0,0);
    VL_OUT8(io_dmem_req_valid,0,0);
    VL_OUT8(io_dmem_req_bits_tag,6,0);
    VL_OUT8(io_dmem_req_bits_cmd,4,0);
    VL_OUT8(io_dmem_req_bits_typ,2,0);
    VL_OUT8(io_dmem_req_bits_phys,0,0);
    VL_OUT8(io_dmem_s1_kill,0,0);
    VL_IN8(io_dmem_s2_nack,0,0);
    VL_IN8(io_dmem_resp_valid,0,0);
    VL_IN8(io_dmem_resp_bits_tag,6,0);
    VL_IN8(io_dmem_resp_bits_cmd,4,0);
    VL_IN8(io_dmem_resp_bits_typ,2,0);
    VL_IN8(io_dmem_resp_bits_replay,0,0);
    VL_IN8(io_dmem_resp_bits_has_data,0,0);
    VL_IN8(io_dmem_replay_next,0,0);
    VL_IN8(io_dmem_xcpt_ma_ld,0,0);
    VL_IN8(io_dmem_xcpt_ma_st,0,0);
    VL_IN8(io_dmem_xcpt_pf_ld,0,0);
    VL_IN8(io_dmem_xcpt_pf_st,0,0);
    VL_OUT8(io_dmem_invalidate_lr,0,0);
    VL_IN8(io_dmem_ordered,0,0);
    VL_OUT8(io_ptw_ptbr_asid,6,0);
    VL_OUT8(io_ptw_invalidate,0,0);
    VL_OUT8(io_ptw_status_debug,0,0);
    VL_OUT8(io_ptw_status_prv,1,0);
    VL_OUT8(io_ptw_status_sd,0,0);
    VL_OUT8(io_ptw_status_sd_rv32,0,0);
    VL_OUT8(io_ptw_status_zero2,1,0);
    VL_OUT8(io_ptw_status_vm,4,0);
    VL_OUT8(io_ptw_status_zero1,3,0);
    VL_OUT8(io_ptw_status_mxr,0,0);
    VL_OUT8(io_ptw_status_pum,0,0);
    VL_OUT8(io_ptw_status_mprv,0,0);
    VL_OUT8(io_ptw_status_xs,1,0);
    VL_OUT8(io_ptw_status_fs,1,0);
    VL_OUT8(io_ptw_status_mpp,1,0);
    VL_OUT8(io_ptw_status_hpp,1,0);
    VL_OUT8(io_ptw_status_spp,0,0);
    VL_OUT8(io_ptw_status_mpie,0,0);
    VL_OUT8(io_ptw_status_hpie,0,0);
    VL_OUT8(io_ptw_status_spie,0,0);
    VL_OUT8(io_ptw_status_upie,0,0);
    VL_OUT8(io_ptw_status_mie,0,0);
    VL_OUT8(io_ptw_status_hie,0,0);
    VL_OUT8(io_ptw_status_sie,0,0);
    VL_OUT8(io_ptw_status_uie,0,0);
    VL_OUT8(io_fpu_fcsr_rm,2,0);
    VL_IN8(io_fpu_fcsr_flags_valid,0,0);
    VL_IN8(io_fpu_fcsr_flags_bits,4,0);
    VL_OUT8(io_fpu_dmem_resp_val,0,0);
    VL_OUT8(io_fpu_dmem_resp_type,2,0);
    VL_OUT8(io_fpu_dmem_resp_tag,4,0);
    VL_OUT8(io_fpu_valid,0,0);
    VL_IN8(io_fpu_fcsr_rdy,0,0);
    VL_IN8(io_fpu_nack_mem,0,0);
    VL_IN8(io_fpu_illegal_rm,0,0);
    VL_OUT8(io_fpu_killx,0,0);
    VL_OUT8(io_fpu_killm,0,0);
    VL_IN8(io_fpu_dec_cmd,4,0);
    VL_IN8(io_fpu_dec_ldst,0,0);
    VL_IN8(io_fpu_dec_wen,0,0);
    VL_IN8(io_fpu_dec_ren1,0,0);
    VL_IN8(io_fpu_dec_ren2,0,0);
    VL_IN8(io_fpu_dec_ren3,0,0);
    VL_IN8(io_fpu_dec_swap12,0,0);
    VL_IN8(io_fpu_dec_swap23,0,0);
    VL_IN8(io_fpu_dec_single,0,0);
    VL_IN8(io_fpu_dec_fromint,0,0);
    VL_IN8(io_fpu_dec_toint,0,0);
    VL_IN8(io_fpu_dec_fastpipe,0,0);
    VL_IN8(io_fpu_dec_fma,0,0);
    VL_IN8(io_fpu_dec_div,0,0);
    VL_IN8(io_fpu_dec_sqrt,0,0);
    VL_IN8(io_fpu_dec_round,0,0);
    VL_IN8(io_fpu_dec_wflags,0,0);
    VL_IN8(io_fpu_sboard_set,0,0);
    VL_IN8(io_fpu_sboard_clr,0,0);
    VL_IN8(io_fpu_sboard_clra,4,0);
    VL_IN8(io_fpu_cp_req_ready,0,0);
    VL_OUT8(io_fpu_cp_req_valid,0,0);
    VL_OUT8(io_fpu_cp_req_bits_cmd,4,0);
    VL_OUT8(io_fpu_cp_req_bits_ldst,0,0);
    VL_OUT8(io_fpu_cp_req_bits_wen,0,0);
    VL_OUT8(io_fpu_cp_req_bits_ren1,0,0);
    VL_OUT8(io_fpu_cp_req_bits_ren2,0,0);
    VL_OUT8(io_fpu_cp_req_bits_ren3,0,0);
    VL_OUT8(io_fpu_cp_req_bits_swap12,0,0);
    VL_OUT8(io_fpu_cp_req_bits_swap23,0,0);
    VL_OUT8(io_fpu_cp_req_bits_single,0,0);
    VL_OUT8(io_fpu_cp_req_bits_fromint,0,0);
    VL_OUT8(io_fpu_cp_req_bits_toint,0,0);
    VL_OUT8(io_fpu_cp_req_bits_fastpipe,0,0);
    VL_OUT8(io_fpu_cp_req_bits_fma,0,0);
    VL_OUT8(io_fpu_cp_req_bits_div,0,0);
    VL_OUT8(io_fpu_cp_req_bits_sqrt,0,0);
    VL_OUT8(io_fpu_cp_req_bits_round,0,0);
    VL_OUT8(io_fpu_cp_req_bits_wflags,0,0);
    VL_OUT8(io_fpu_cp_req_bits_rm,2,0);
    VL_OUT8(io_fpu_cp_req_bits_typ,1,0);
    VL_OUT8(io_fpu_cp_resp_ready,0,0);
    VL_IN8(io_fpu_cp_resp_valid,0,0);
    VL_IN8(io_fpu_cp_resp_bits_exc,4,0);
    VL_IN8(io_rocc_cmd_ready,0,0);
    VL_OUT8(io_rocc_cmd_valid,0,0);
    VL_OUT8(io_rocc_cmd_bits_inst_funct,6,0);
    VL_OUT8(io_rocc_cmd_bits_inst_rs2,4,0);
    VL_OUT8(io_rocc_cmd_bits_inst_rs1,4,0);
    VL_OUT8(io_rocc_cmd_bits_inst_xd,0,0);
    VL_OUT8(io_rocc_cmd_bits_inst_xs1,0,0);
    VL_OUT8(io_rocc_cmd_bits_inst_xs2,0,0);
    VL_OUT8(io_rocc_cmd_bits_inst_rd,4,0);
    VL_OUT8(io_rocc_cmd_bits_inst_opcode,6,0);
    VL_OUT8(io_rocc_cmd_bits_status_debug,0,0);
    VL_OUT8(io_rocc_cmd_bits_status_prv,1,0);
    VL_OUT8(io_rocc_cmd_bits_status_sd,0,0);
    VL_OUT8(io_rocc_cmd_bits_status_sd_rv32,0,0);
    VL_OUT8(io_rocc_cmd_bits_status_zero2,1,0);
    VL_OUT8(io_rocc_cmd_bits_status_vm,4,0);
    VL_OUT8(io_rocc_cmd_bits_status_zero1,3,0);
    VL_OUT8(io_rocc_cmd_bits_status_mxr,0,0);
    VL_OUT8(io_rocc_cmd_bits_status_pum,0,0);
    VL_OUT8(io_rocc_cmd_bits_status_mprv,0,0);
    VL_OUT8(io_rocc_cmd_bits_status_xs,1,0);
    VL_OUT8(io_rocc_cmd_bits_status_fs,1,0);
    VL_OUT8(io_rocc_cmd_bits_status_mpp,1,0);
    VL_OUT8(io_rocc_cmd_bits_status_hpp,1,0);
    VL_OUT8(io_rocc_cmd_bits_status_spp,0,0);
    VL_OUT8(io_rocc_cmd_bits_status_mpie,0,0);
    VL_OUT8(io_rocc_cmd_bits_status_hpie,0,0);
    VL_OUT8(io_rocc_cmd_bits_status_spie,0,0);
    VL_OUT8(io_rocc_cmd_bits_status_upie,0,0);
    VL_OUT8(io_rocc_cmd_bits_status_mie,0,0);
    VL_OUT8(io_rocc_cmd_bits_status_hie,0,0);
    VL_OUT8(io_rocc_cmd_bits_status_sie,0,0);
    VL_OUT8(io_rocc_cmd_bits_status_uie,0,0);
    VL_OUT8(io_rocc_resp_ready,0,0);
    VL_IN8(io_rocc_resp_valid,0,0);
    VL_IN8(io_rocc_resp_bits_rd,4,0);
    VL_OUT8(io_rocc_mem_req_ready,0,0);
    VL_IN8(io_rocc_mem_req_valid,0,0);
    VL_IN8(io_rocc_mem_req_bits_tag,6,0);
    VL_IN8(io_rocc_mem_req_bits_cmd,4,0);
    VL_IN8(io_rocc_mem_req_bits_typ,2,0);
    VL_IN8(io_rocc_mem_req_bits_phys,0,0);
    VL_IN8(io_rocc_mem_s1_kill,0,0);
    VL_OUT8(io_rocc_mem_s2_nack,0,0);
    VL_OUT8(io_rocc_mem_resp_valid,0,0);
    VL_OUT8(io_rocc_mem_resp_bits_tag,6,0);
    VL_OUT8(io_rocc_mem_resp_bits_cmd,4,0);
    VL_OUT8(io_rocc_mem_resp_bits_typ,2,0);
    VL_OUT8(io_rocc_mem_resp_bits_replay,0,0);
    VL_OUT8(io_rocc_mem_resp_bits_has_data,0,0);
    VL_OUT8(io_rocc_mem_replay_next,0,0);
    VL_OUT8(io_rocc_mem_xcpt_ma_ld,0,0);
    VL_OUT8(io_rocc_mem_xcpt_ma_st,0,0);
    VL_OUT8(io_rocc_mem_xcpt_pf_ld,0,0);
    VL_OUT8(io_rocc_mem_xcpt_pf_st,0,0);
    VL_IN8(io_rocc_mem_invalidate_lr,0,0);
    VL_OUT8(io_rocc_mem_ordered,0,0);
    VL_IN8(io_rocc_busy,0,0);
    VL_IN8(io_rocc_interrupt,0,0);
    VL_OUT8(io_rocc_autl_acquire_ready,0,0);
    VL_IN8(io_rocc_autl_acquire_valid,0,0);
    VL_IN8(io_rocc_autl_acquire_bits_client_xact_id,0,0);
    VL_IN8(io_rocc_autl_acquire_bits_addr_beat,3,0);
    VL_IN8(io_rocc_autl_acquire_bits_is_builtin_type,0,0);
    VL_IN8(io_rocc_autl_acquire_bits_a_type,2,0);
    VL_IN8(io_rocc_autl_grant_ready,0,0);
    VL_OUT8(io_rocc_autl_grant_valid,0,0);
    VL_OUT8(io_rocc_autl_grant_bits_addr_beat,3,0);
    VL_OUT8(io_rocc_autl_grant_bits_client_xact_id,0,0);
    VL_OUT8(io_rocc_autl_grant_bits_manager_xact_id,1,0);
    VL_OUT8(io_rocc_autl_grant_bits_is_builtin_type,0,0);
    VL_OUT8(io_rocc_autl_grant_bits_g_type,3,0);
    VL_OUT8(io_rocc_fpu_req_ready,0,0);
    VL_IN8(io_rocc_fpu_req_valid,0,0);
    VL_IN8(io_rocc_fpu_req_bits_cmd,4,0);
    VL_IN8(io_rocc_fpu_req_bits_ldst,0,0);
    VL_IN8(io_rocc_fpu_req_bits_wen,0,0);
    VL_IN8(io_rocc_fpu_req_bits_ren1,0,0);
    VL_IN8(io_rocc_fpu_req_bits_ren2,0,0);
    VL_IN8(io_rocc_fpu_req_bits_ren3,0,0);
    VL_IN8(io_rocc_fpu_req_bits_swap12,0,0);
    VL_IN8(io_rocc_fpu_req_bits_swap23,0,0);
    VL_IN8(io_rocc_fpu_req_bits_single,0,0);
    VL_IN8(io_rocc_fpu_req_bits_fromint,0,0);
    VL_IN8(io_rocc_fpu_req_bits_toint,0,0);
    VL_IN8(io_rocc_fpu_req_bits_fastpipe,0,0);
    VL_IN8(io_rocc_fpu_req_bits_fma,0,0);
    VL_IN8(io_rocc_fpu_req_bits_div,0,0);
    VL_IN8(io_rocc_fpu_req_bits_sqrt,0,0);
    VL_IN8(io_rocc_fpu_req_bits_round,0,0);
    VL_IN8(io_rocc_fpu_req_bits_wflags,0,0);
    VL_IN8(io_rocc_fpu_req_bits_rm,2,0);
    VL_IN8(io_rocc_fpu_req_bits_typ,1,0);
    VL_IN8(io_rocc_fpu_resp_ready,0,0);
    VL_OUT8(io_rocc_fpu_resp_valid,0,0);
    VL_OUT8(io_rocc_fpu_resp_bits_exc,4,0);
    VL_OUT8(io_rocc_exception,0,0);
    VL_OUT8(ibuf_io_inst_0_valid_o,0,0);
    VL_OUT8(ex_reg_valid_o,0,0);
    VL_OUT8(mem_reg_valid_o,0,0);
    VL_OUT8(wb_valid_o,0,0);
    VL_OUT8(wb_reg_valid_o,0,0);
    VL_OUT8(ctrl_killd_o,0,0);
    VL_OUT8(ctrl_killx_o,0,0);
    VL_OUT8(ctrl_killm_o,0,0);
    VL_OUT8(no_first_valid_pc,0,0);
    VL_IN8(rf_idx_i,4,0);
    VL_OUT8(id_rs_0_in_use,0,0);
    VL_OUT8(id_rs_1_in_use,0,0);
    VL_IN16(io_rocc_autl_acquire_bits_union,9,0);
    VL_IN(io_hartid,31,0);
    VL_OUT(io_imem_req_bits_pc,31,0);
    VL_IN(io_imem_resp_bits_btb_bits_target,31,0);
    VL_IN(io_imem_resp_bits_pc,31,0);
    VL_IN(io_imem_resp_bits_data,31,0);
    VL_OUT(io_imem_btb_update_bits_prediction_bits_target,31,0);
    VL_OUT(io_imem_btb_update_bits_pc,31,0);
    VL_OUT(io_imem_btb_update_bits_target,31,0);
    VL_OUT(io_imem_btb_update_bits_br_pc,31,0);
    VL_OUT(io_imem_bht_update_bits_prediction_bits_target,31,0);
    VL_OUT(io_imem_bht_update_bits_pc,31,0);
    VL_OUT(io_imem_ras_update_bits_returnAddr,31,0);
    VL_OUT(io_imem_ras_update_bits_prediction_bits_target,31,0);
    VL_IN(io_imem_npc,31,0);
    VL_OUT(io_dmem_req_bits_addr,31,0);
    VL_OUT(io_dmem_req_bits_data,31,0);
    VL_OUT(io_dmem_s1_data,31,0);
    VL_IN(io_dmem_resp_bits_addr,31,0);
    VL_IN(io_dmem_resp_bits_data,31,0);
    VL_IN(io_dmem_resp_bits_data_word_bypass,31,0);
    VL_IN(io_dmem_resp_bits_store_data,31,0);
    VL_OUT(io_ptw_ptbr_ppn,21,0);
    VL_OUT(io_ptw_status_isa,31,0);
    VL_OUT(io_ptw_status_zero3,30,0);
    VL_OUT(io_fpu_inst,31,0);
    VL_OUT(io_fpu_fromint_data,31,0);
    VL_IN(io_fpu_store_data,31,0);
    VL_IN(io_fpu_toint_data,31,0);
    VL_OUT(io_fpu_dmem_resp_data,31,0);
    VL_OUT(io_rocc_cmd_bits_rs1,31,0);
    VL_OUT(io_rocc_cmd_bits_rs2,31,0);
    VL_OUT(io_rocc_cmd_bits_status_isa,31,0);
    VL_OUT(io_rocc_cmd_bits_status_zero3,30,0);
    VL_IN(io_rocc_resp_bits_data,31,0);
    VL_IN(io_rocc_mem_req_bits_addr,31,0);
    VL_IN(io_rocc_mem_req_bits_data,31,0);
    VL_IN(io_rocc_mem_s1_data,31,0);
    VL_OUT(io_rocc_mem_resp_bits_addr,31,0);
    VL_OUT(io_rocc_mem_resp_bits_data,31,0);
    VL_OUT(io_rocc_mem_resp_bits_data_word_bypass,31,0);
    VL_OUT(io_rocc_mem_resp_bits_store_data,31,0);
    VL_IN(io_rocc_autl_acquire_bits_addr_block,25,0);
    VL_IN(io_rocc_autl_acquire_bits_data,31,0);
    VL_OUT(io_rocc_autl_grant_bits_data,31,0);
    VL_OUT(ibuf_io_inst_0_bits_inst_bits_o,31,0);
    VL_OUT(wb_reg_inst_o,31,0);
    VL_OUT(ex_reg_inst_o,31,0);
    VL_OUT(mem_reg_inst_o,31,0);
    VL_OUT(ibuf_io_pc_o,31,0);
    VL_OUT(wb_reg_pc_o,31,0);
    VL_OUT(first_valid_pc,31,0);
    VL_OUT(rf_idx_o,31,0);
    VL_OUT(ex_rs_0_o,31,0);
    VL_OUT(ex_rs_1_o,31,0);
    VL_OUT(x0,31,0);
    VL_OUT(x1,31,0);
    VL_OUT(x10,31,0);
    VL_OUT(x11,31,0);
    VL_OUT(x12,31,0);
    VL_OUT(x13,31,0);
    VL_OUT(x14,31,0);
    VL_OUT(x15,31,0);
    VL_OUT(x16,31,0);
    VL_OUT(x17,31,0);
    VL_OUT(x18,31,0);
    VL_OUT(x19,31,0);
    VL_OUT(x2,31,0);
    VL_OUT(x20,31,0);
    VL_OUT(x21,31,0);
    VL_OUT(x22,31,0);
    VL_OUT(x23,31,0);
    VL_OUT(x24,31,0);
    VL_OUT(x25,31,0);
    VL_OUT(x26,31,0);
    VL_OUT(x27,31,0);
    VL_OUT(x28,31,0);
    VL_OUT(x29,31,0);
    VL_OUT(x3,31,0);
    VL_OUT(x30,31,0);
    VL_OUT(x31,31,0);
    VL_OUT(x4,31,0);
    VL_OUT(x5,31,0);
    VL_OUT(x6,31,0);
    VL_OUT(x7,31,0);
    VL_OUT(x8,31,0);
    VL_OUT(x9,31,0);
    VL_OUT64(io_fpu_cp_req_bits_in1,32,0);
    VL_OUT64(io_fpu_cp_req_bits_in2,32,0);
    VL_OUT64(io_fpu_cp_req_bits_in3,32,0);
    VL_IN64(io_fpu_cp_resp_bits_data,32,0);
    VL_IN64(io_rocc_fpu_req_bits_in1,32,0);
    VL_IN64(io_rocc_fpu_req_bits_in2,32,0);
    VL_IN64(io_rocc_fpu_req_bits_in3,32,0);
    VL_OUT64(io_rocc_fpu_resp_bits_data,32,0);
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*0:0*/ __Vclklast__TOP__Rocket__clock;
    IData/*31:0*/ __Vm_traceActivity;
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    VRocket__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VRocket);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    VRocket(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~VRocket();
    /// Trace signals in the model; called by application code
    void trace(VerilatedVcdC* tfp, int levels, int options = 0);
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval() { eval_step(); }
    /// Evaluate when calling multiple units/models per time step.
    void eval_step();
    /// Evaluate at end of a timestep for tracing, when using eval_step().
    /// Application must call after all eval() and before time changes.
    void eval_end_step() {}
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(VRocket__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(VRocket__Syms* symsp, bool first);
  private:
    static QData _change_request(VRocket__Syms* __restrict vlSymsp);
  public:
    static void _combo__TOP__4(VRocket__Syms* __restrict vlSymsp);
    static void _combo__TOP__5(VRocket__Syms* __restrict vlSymsp);
    static void _combo__TOP__7(VRocket__Syms* __restrict vlSymsp);
    static void _combo__TOP__8(VRocket__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(VRocket__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(VRocket__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(VRocket__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _initial__TOP__1(VRocket__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__6(VRocket__Syms* __restrict vlSymsp);
    static void _settle__TOP__2(VRocket__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _settle__TOP__3(VRocket__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void traceChgThis(VRocket__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__2(VRocket__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__3(VRocket__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__4(VRocket__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__5(VRocket__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__6(VRocket__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceFullThis(VRocket__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceFullThis__1(VRocket__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis(VRocket__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis__1(VRocket__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
