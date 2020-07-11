// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VRocket.h for the primary calling header

#include "VRocket.h"
#include "VRocket__Syms.h"

#include "verilated_dpi.h"

//==========

VL_CTOR_IMP(VRocket) {
    VRocket__Syms* __restrict vlSymsp = __VlSymsp = new VRocket__Syms(this, name());
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    VL_CELL(Rocket, VRocket_Rocket);
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void VRocket::__Vconfigure(VRocket__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

VRocket::~VRocket() {
    delete __VlSymsp; __VlSymsp=NULL;
}

void VRocket::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VRocket::eval\n"); );
    VRocket__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
#ifdef VL_DEBUG
    // Debug assertions
    _eval_debug_assertions();
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
#ifdef VM_TRACE
    // Tracing
#endif  // VM_TRACE
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        vlSymsp->__Vm_activity = true;
        _eval(vlSymsp);
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = _change_request(vlSymsp);
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("Rocket.v", 1, "",
                "Verilated model didn't converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void VRocket::_eval_initial_loop(VRocket__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    _eval_initial(vlSymsp);
    vlSymsp->__Vm_activity = true;
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        _eval_settle(vlSymsp);
        _eval(vlSymsp);
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = _change_request(vlSymsp);
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("Rocket.v", 1, "",
                "Verilated model didn't DC converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void VRocket::_initial__TOP__1(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VRocket::_initial__TOP__1\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->x0 = 0U;
    vlTOPp->io_fpu_valid = 0U;
    vlTOPp->io_dmem_req_bits_phys = 0U;
}

void VRocket::_settle__TOP__2(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VRocket::_settle__TOP__2\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->io_rocc_fpu_resp_bits_exc = vlSymsp->TOP__Rocket.__PVT__GEN_223;
    vlTOPp->io_rocc_fpu_resp_bits_data = vlSymsp->TOP__Rocket.__PVT__GEN_222;
    vlTOPp->io_rocc_fpu_resp_valid = vlSymsp->TOP__Rocket.__PVT__GEN_221;
    vlTOPp->io_rocc_fpu_req_ready = vlSymsp->TOP__Rocket.__PVT__GEN_220;
    vlTOPp->io_rocc_autl_grant_bits_data = vlSymsp->TOP__Rocket.__PVT__GEN_219;
    vlTOPp->io_rocc_autl_grant_bits_g_type = vlSymsp->TOP__Rocket.__PVT__GEN_218;
    vlTOPp->io_rocc_autl_grant_bits_is_builtin_type 
        = vlSymsp->TOP__Rocket.__PVT__GEN_217;
    vlTOPp->io_rocc_autl_grant_bits_manager_xact_id 
        = vlSymsp->TOP__Rocket.__PVT__GEN_216;
    vlTOPp->io_rocc_autl_grant_bits_client_xact_id 
        = vlSymsp->TOP__Rocket.__PVT__GEN_215;
    vlTOPp->io_rocc_autl_grant_bits_addr_beat = vlSymsp->TOP__Rocket.__PVT__GEN_214;
    vlTOPp->io_rocc_autl_grant_valid = vlSymsp->TOP__Rocket.__PVT__GEN_213;
    vlTOPp->io_rocc_autl_acquire_ready = vlSymsp->TOP__Rocket.__PVT__GEN_212;
    vlTOPp->io_rocc_mem_ordered = vlSymsp->TOP__Rocket.__PVT__GEN_211;
    vlTOPp->io_rocc_mem_xcpt_pf_st = vlSymsp->TOP__Rocket.__PVT__GEN_210;
    vlTOPp->io_rocc_mem_xcpt_pf_ld = vlSymsp->TOP__Rocket.__PVT__GEN_209;
    vlTOPp->io_rocc_mem_xcpt_ma_st = vlSymsp->TOP__Rocket.__PVT__GEN_208;
    vlTOPp->io_rocc_mem_xcpt_ma_ld = vlSymsp->TOP__Rocket.__PVT__GEN_207;
    vlTOPp->io_rocc_mem_replay_next = vlSymsp->TOP__Rocket.__PVT__GEN_206;
    vlTOPp->io_rocc_mem_resp_bits_store_data = vlSymsp->TOP__Rocket.__PVT__GEN_205;
    vlTOPp->io_rocc_mem_resp_bits_data_word_bypass 
        = vlSymsp->TOP__Rocket.__PVT__GEN_204;
    vlTOPp->io_rocc_mem_resp_bits_has_data = vlSymsp->TOP__Rocket.__PVT__GEN_203;
    vlTOPp->io_rocc_mem_resp_bits_replay = vlSymsp->TOP__Rocket.__PVT__GEN_202;
    vlTOPp->io_rocc_mem_resp_bits_data = vlSymsp->TOP__Rocket.__PVT__GEN_201;
    vlTOPp->io_rocc_mem_resp_bits_typ = vlSymsp->TOP__Rocket.__PVT__GEN_200;
    vlTOPp->io_rocc_mem_resp_bits_cmd = vlSymsp->TOP__Rocket.__PVT__GEN_199;
    vlTOPp->io_rocc_mem_resp_bits_tag = vlSymsp->TOP__Rocket.__PVT__GEN_198;
    vlTOPp->io_rocc_mem_resp_bits_addr = vlSymsp->TOP__Rocket.__PVT__GEN_197;
    vlTOPp->io_rocc_mem_resp_valid = vlSymsp->TOP__Rocket.__PVT__GEN_196;
    vlTOPp->io_rocc_mem_s2_nack = vlSymsp->TOP__Rocket.__PVT__GEN_195;
    vlTOPp->io_rocc_mem_req_ready = vlSymsp->TOP__Rocket.__PVT__GEN_194;
    vlTOPp->io_rocc_resp_ready = vlSymsp->TOP__Rocket.__PVT__GEN_193;
    vlTOPp->io_fpu_cp_resp_ready = vlSymsp->TOP__Rocket.__PVT__GEN_192;
    vlTOPp->io_fpu_cp_req_bits_in3 = vlSymsp->TOP__Rocket.__PVT__GEN_191;
    vlTOPp->io_fpu_cp_req_bits_in2 = vlSymsp->TOP__Rocket.__PVT__GEN_190;
    vlTOPp->io_fpu_cp_req_bits_in1 = vlSymsp->TOP__Rocket.__PVT__GEN_189;
    vlTOPp->io_fpu_cp_req_bits_typ = vlSymsp->TOP__Rocket.__PVT__GEN_188;
    vlTOPp->io_fpu_cp_req_bits_rm = vlSymsp->TOP__Rocket.__PVT__GEN_187;
    vlTOPp->io_fpu_cp_req_bits_wflags = vlSymsp->TOP__Rocket.__PVT__GEN_186;
    vlTOPp->io_fpu_cp_req_bits_round = vlSymsp->TOP__Rocket.__PVT__GEN_185;
    vlTOPp->io_fpu_cp_req_bits_sqrt = vlSymsp->TOP__Rocket.__PVT__GEN_184;
    vlTOPp->io_fpu_cp_req_bits_div = vlSymsp->TOP__Rocket.__PVT__GEN_183;
    vlTOPp->io_fpu_cp_req_bits_fma = vlSymsp->TOP__Rocket.__PVT__GEN_182;
    vlTOPp->io_fpu_cp_req_bits_fastpipe = vlSymsp->TOP__Rocket.__PVT__GEN_179;
    vlTOPp->io_fpu_cp_req_bits_toint = vlSymsp->TOP__Rocket.__PVT__GEN_178;
    vlTOPp->io_fpu_cp_req_bits_fromint = vlSymsp->TOP__Rocket.__PVT__GEN_177;
    vlTOPp->io_fpu_cp_req_bits_single = vlSymsp->TOP__Rocket.__PVT__GEN_176;
    vlTOPp->io_fpu_cp_req_bits_swap23 = vlSymsp->TOP__Rocket.__PVT__GEN_175;
    vlTOPp->io_fpu_cp_req_bits_swap12 = vlSymsp->TOP__Rocket.__PVT__GEN_174;
    vlTOPp->io_fpu_cp_req_bits_ren3 = vlSymsp->TOP__Rocket.__PVT__GEN_173;
    vlTOPp->io_fpu_cp_req_bits_ren2 = vlSymsp->TOP__Rocket.__PVT__GEN_172;
    vlTOPp->io_fpu_cp_req_bits_ren1 = vlSymsp->TOP__Rocket.__PVT__GEN_167;
    vlTOPp->io_fpu_cp_req_bits_wen = vlSymsp->TOP__Rocket.__PVT__GEN_165;
    vlTOPp->io_fpu_cp_req_bits_ldst = vlSymsp->TOP__Rocket.__PVT__GEN_164;
    vlTOPp->io_fpu_cp_req_bits_cmd = vlSymsp->TOP__Rocket.__PVT__GEN_161;
    vlTOPp->io_fpu_cp_req_valid = vlSymsp->TOP__Rocket.__PVT__GEN_160;
    vlTOPp->io_fpu_fcsr_rm = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_frm;
    vlTOPp->io_ptw_ptbr_ppn = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_sptbr_ppn;
    vlTOPp->io_dmem_req_bits_data = vlSymsp->TOP__Rocket.__PVT__GEN_159;
    vlTOPp->io_imem_btb_update_bits_taken = vlSymsp->TOP__Rocket.__PVT__GEN_158;
    vlSymsp->TOP__Rocket.io_fpu_cp_resp_bits_data = vlTOPp->io_fpu_cp_resp_bits_data;
    vlSymsp->TOP__Rocket.io_fpu_cp_resp_valid = vlTOPp->io_fpu_cp_resp_valid;
    vlSymsp->TOP__Rocket.io_fpu_fcsr_rdy = vlTOPp->io_fpu_fcsr_rdy;
    vlTOPp->io_fpu_dmem_resp_data = vlTOPp->io_dmem_resp_bits_data_word_bypass;
    vlTOPp->io_fpu_dmem_resp_tag = (0x1fU & ((IData)(vlTOPp->io_dmem_resp_bits_tag) 
                                             >> 1U));
    vlTOPp->io_fpu_dmem_resp_type = vlTOPp->io_dmem_resp_bits_typ;
    vlSymsp->TOP__Rocket.io_fpu_fcsr_flags_bits = vlTOPp->io_fpu_fcsr_flags_bits;
    vlSymsp->TOP__Rocket.io_fpu_illegal_rm = vlTOPp->io_fpu_illegal_rm;
    vlSymsp->TOP__Rocket.io_fpu_nack_mem = vlTOPp->io_fpu_nack_mem;
    vlSymsp->TOP__Rocket.clock = vlTOPp->clock;
    vlSymsp->TOP__Rocket.io_dmem_xcpt_pf_ld = vlTOPp->io_dmem_xcpt_pf_ld;
    vlSymsp->TOP__Rocket.io_dmem_xcpt_pf_st = vlTOPp->io_dmem_xcpt_pf_st;
    vlSymsp->TOP__Rocket.io_dmem_xcpt_ma_st = vlTOPp->io_dmem_xcpt_ma_st;
    vlSymsp->TOP__Rocket.io_dmem_xcpt_ma_ld = vlTOPp->io_dmem_xcpt_ma_ld;
    vlSymsp->TOP__Rocket.io_fpu_fcsr_flags_valid = vlTOPp->io_fpu_fcsr_flags_valid;
    vlTOPp->x9 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x16U];
    vlTOPp->x8 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x17U];
    vlTOPp->x7 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x18U];
    vlTOPp->x6 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x19U];
    vlTOPp->x5 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x1aU];
    vlTOPp->x4 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x1bU];
    vlTOPp->x31 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0U];
    vlTOPp->x30 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [1U];
    vlTOPp->x3 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x1cU];
    vlTOPp->x29 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [2U];
    vlTOPp->x28 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [3U];
    vlTOPp->x27 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [4U];
    vlTOPp->x26 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [5U];
    vlTOPp->x25 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [6U];
    vlTOPp->x24 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [7U];
    vlTOPp->x23 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [8U];
    vlTOPp->x22 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [9U];
    vlTOPp->x21 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0xaU];
    vlTOPp->x20 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0xbU];
    vlTOPp->x2 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x1dU];
    vlTOPp->x19 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0xcU];
    vlTOPp->x18 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0xdU];
    vlTOPp->x17 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0xeU];
    vlTOPp->x16 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0xfU];
    vlTOPp->x15 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x10U];
    vlTOPp->x14 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x11U];
    vlTOPp->x13 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x12U];
    vlTOPp->x12 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x13U];
    vlTOPp->x11 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x14U];
    vlTOPp->x10 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x15U];
    vlTOPp->x1 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x1eU];
    vlTOPp->wb_reg_valid_o = vlSymsp->TOP__Rocket.__PVT__wb_reg_valid;
    vlTOPp->ex_reg_valid_o = vlSymsp->TOP__Rocket.__PVT__ex_reg_valid;
    vlTOPp->io_rocc_cmd_bits_status_uie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_rocc_cmd_bits_status_sie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_rocc_cmd_bits_status_hie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_rocc_cmd_bits_status_mie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie;
    vlTOPp->io_rocc_cmd_bits_status_upie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_rocc_cmd_bits_status_spie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_rocc_cmd_bits_status_hpie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_rocc_cmd_bits_status_spp = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_spp;
    vlTOPp->io_rocc_cmd_bits_status_hpp = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs;
    vlTOPp->io_rocc_cmd_bits_status_fs = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs;
    vlTOPp->io_rocc_cmd_bits_status_xs = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs;
    vlTOPp->io_rocc_cmd_bits_status_mprv = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mprv;
    vlTOPp->io_rocc_cmd_bits_status_pum = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_rocc_cmd_bits_status_mxr = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_rocc_cmd_bits_status_zero1 = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero1;
    vlTOPp->io_rocc_cmd_bits_status_vm = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_vm;
    vlTOPp->io_rocc_cmd_bits_status_zero2 = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs;
    vlTOPp->io_rocc_cmd_bits_status_zero3 = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero3;
    vlTOPp->io_rocc_cmd_bits_status_isa = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa;
    vlTOPp->io_rocc_cmd_bits_status_debug = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug;
    vlTOPp->io_rocc_cmd_bits_rs2 = vlSymsp->TOP__Rocket.__PVT__wb_reg_rs2;
    vlTOPp->io_ptw_status_uie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_ptw_status_sie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_ptw_status_hie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_ptw_status_mie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie;
    vlTOPp->io_ptw_status_upie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_ptw_status_spie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_ptw_status_hpie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_ptw_status_spp = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_spp;
    vlTOPp->io_ptw_status_hpp = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs;
    vlTOPp->io_ptw_status_fs = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs;
    vlTOPp->io_ptw_status_xs = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs;
    vlTOPp->io_ptw_status_mprv = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mprv;
    vlTOPp->io_ptw_status_pum = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_ptw_status_mxr = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_ptw_status_zero1 = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero1;
    vlTOPp->io_ptw_status_vm = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_vm;
    vlTOPp->io_ptw_status_zero2 = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs;
    vlTOPp->io_ptw_status_zero3 = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero3;
    vlTOPp->io_ptw_status_isa = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa;
    vlTOPp->io_ptw_status_debug = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug;
    vlTOPp->io_ptw_ptbr_asid = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_sptbr_asid;
    vlTOPp->io_imem_ras_update_bits_prediction_bits_bht_value 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bht_value;
    vlTOPp->io_imem_ras_update_bits_prediction_bits_bht_history 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bht_history;
    vlTOPp->io_imem_ras_update_bits_prediction_bits_entry 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_entry;
    vlTOPp->io_imem_ras_update_bits_prediction_bits_target 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_target;
    vlTOPp->io_imem_ras_update_bits_prediction_bits_bridx 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bridx;
    vlTOPp->io_imem_ras_update_bits_prediction_bits_mask 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_mask;
    vlTOPp->io_imem_ras_update_bits_prediction_bits_taken 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_taken;
    vlTOPp->io_imem_ras_update_bits_prediction_valid 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_hit;
    vlTOPp->io_imem_bht_update_bits_taken = (1U & vlSymsp->TOP__Rocket.__PVT__mem_reg_wdata);
    vlTOPp->io_imem_bht_update_bits_prediction_bits_bht_value 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bht_value;
    vlTOPp->io_imem_bht_update_bits_prediction_bits_bht_history 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bht_history;
    vlTOPp->io_imem_bht_update_bits_prediction_bits_entry 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_entry;
    vlTOPp->io_imem_bht_update_bits_prediction_bits_target 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_target;
    vlTOPp->io_imem_bht_update_bits_prediction_bits_bridx 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bridx;
    vlTOPp->io_imem_bht_update_bits_prediction_bits_mask 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_mask;
    vlTOPp->io_imem_bht_update_bits_prediction_bits_taken 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_taken;
    vlTOPp->io_imem_bht_update_bits_prediction_valid 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_hit;
    vlTOPp->io_imem_btb_update_bits_prediction_bits_bht_value 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bht_value;
    vlTOPp->io_imem_btb_update_bits_prediction_bits_bht_history 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bht_history;
    vlTOPp->io_imem_btb_update_bits_prediction_bits_entry 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_entry;
    vlTOPp->io_imem_btb_update_bits_prediction_bits_target 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_target;
    vlTOPp->io_imem_btb_update_bits_prediction_bits_bridx 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bridx;
    vlTOPp->io_imem_btb_update_bits_prediction_bits_mask 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_mask;
    vlTOPp->io_imem_btb_update_bits_prediction_bits_taken 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_taken;
    vlTOPp->io_imem_btb_update_bits_prediction_valid 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_hit;
    vlTOPp->rf_idx_o = ((0U == (IData)(vlTOPp->rf_idx_i))
                         ? 0U : ((0x1eU >= (0x1fU & 
                                            (~ (IData)(vlTOPp->rf_idx_i))))
                                  ? vlSymsp->TOP__Rocket.__PVT__T_6545
                                 [(0x1fU & (~ (IData)(vlTOPp->rf_idx_i)))]
                                  : 0U));
    vlTOPp->io_imem_flush_icache = (((IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_valid) 
                                     & (IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_fence_i)) 
                                    & (~ (IData)(vlTOPp->io_dmem_s2_nack)));
    vlSymsp->TOP__Rocket.io_fpu_toint_data = vlTOPp->io_fpu_toint_data;
    vlSymsp->TOP__Rocket.reset = vlTOPp->reset;
    vlTOPp->wb_reg_pc_o = vlSymsp->TOP__Rocket.__PVT__wb_reg_pc;
    vlTOPp->mem_reg_valid_o = vlSymsp->TOP__Rocket.__PVT__mem_reg_valid;
    vlTOPp->io_rocc_cmd_bits_status_mpie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie;
    vlTOPp->io_rocc_cmd_bits_status_mpp = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp;
    vlTOPp->io_rocc_cmd_bits_status_prv = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv;
    vlTOPp->io_rocc_cmd_bits_rs1 = vlSymsp->TOP__Rocket.__PVT__wb_reg_wdata;
    vlTOPp->io_ptw_status_mpie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie;
    vlTOPp->io_ptw_status_mpp = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp;
    vlTOPp->io_ptw_status_prv = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv;
    vlTOPp->io_dmem_s1_data = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rocc)
                                ? vlTOPp->io_fpu_store_data
                                : vlSymsp->TOP__Rocket.__PVT__mem_reg_rs2);
    vlTOPp->wb_reg_inst_o = vlSymsp->TOP__Rocket.__PVT__wb_reg_inst;
    vlTOPp->io_rocc_cmd_bits_inst_opcode = (0x7fU & vlSymsp->TOP__Rocket.__PVT__wb_reg_inst);
    vlTOPp->io_rocc_cmd_bits_inst_rd = (0x1fU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                 >> 7U));
    vlTOPp->io_rocc_cmd_bits_inst_xs2 = (1U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0xcU));
    vlTOPp->io_rocc_cmd_bits_inst_xs1 = (1U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0xdU));
    vlTOPp->io_rocc_cmd_bits_inst_xd = (1U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0xeU));
    vlTOPp->io_rocc_cmd_bits_inst_rs1 = (0x1fU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                  >> 0xfU));
    vlTOPp->io_rocc_cmd_bits_inst_rs2 = (0x1fU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                  >> 0x14U));
    vlTOPp->io_rocc_cmd_bits_inst_funct = (0x7fU & 
                                           (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x19U));
    vlTOPp->io_dmem_req_bits_typ = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_type;
    vlTOPp->io_dmem_req_bits_cmd = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd;
    vlTOPp->mem_reg_inst_o = vlSymsp->TOP__Rocket.__PVT__mem_reg_inst;
    vlTOPp->ex_reg_inst_o = vlSymsp->TOP__Rocket.__PVT__ex_reg_inst;
    vlTOPp->io_dmem_req_bits_tag = ((0x3eU & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                              >> 6U)) 
                                    | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rocc));
}

void VRocket::_settle__TOP__3(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VRocket::_settle__TOP__3\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->io_fpu_dmem_resp_val = ((IData)(vlSymsp->TOP__Rocket.__PVT__dmem_resp_valid) 
                                    & (IData)(vlTOPp->io_dmem_resp_bits_tag));
    vlTOPp->io_rocc_cmd_bits_status_sd_rv32 = vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573;
    vlTOPp->io_rocc_cmd_bits_status_sd = vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573;
    vlTOPp->io_ptw_status_sd_rv32 = vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573;
    vlTOPp->io_ptw_status_sd = vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573;
    vlTOPp->io_imem_btb_update_bits_isJump = vlSymsp->TOP__Rocket.__PVT__T_7586;
    vlTOPp->io_imem_ras_update_bits_isCall = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7586) 
                                              & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                 >> 7U));
    vlTOPp->io_imem_btb_update_bits_isValid = ((~ (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_replay)) 
                                               & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_cfi));
    vlTOPp->io_imem_bht_update_bits_pc = (~ (3U | (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7596))));
    vlTOPp->io_imem_btb_update_bits_br_pc = (IData)(vlSymsp->TOP__Rocket.__PVT__T_7596);
    vlTOPp->io_imem_btb_update_bits_pc = (~ (3U | (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7596))));
    vlTOPp->io_dmem_req_valid = vlSymsp->TOP__Rocket.__PVT__T_7615;
    vlTOPp->ibuf_io_pc_o = vlSymsp->TOP__Rocket.__PVT__ibuf__DOT__T_488;
    vlTOPp->io_imem_ras_update_bits_isReturn = vlSymsp->TOP__Rocket.__PVT__T_7592;
    vlTOPp->io_imem_btb_update_bits_isReturn = vlSymsp->TOP__Rocket.__PVT__T_7592;
    vlTOPp->io_rocc_cmd_valid = vlSymsp->TOP__Rocket.__PVT__T_7634;
    vlTOPp->ex_rs_1_o = vlSymsp->TOP__Rocket.__PVT__ex_rs_1;
    vlTOPp->ex_rs_0_o = vlSymsp->TOP__Rocket.__PVT__ex_rs_0;
    vlTOPp->io_fpu_fromint_data = vlSymsp->TOP__Rocket.__PVT__ex_rs_0;
    vlTOPp->io_ptw_invalidate = vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_sfence_vm;
    vlTOPp->io_imem_flush_tlb = vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_sfence_vm;
    vlTOPp->ibuf_io_inst_0_valid_o = vlSymsp->TOP__Rocket.__PVT__ibuf__DOT__T_519;
    vlTOPp->io_imem_ras_update_bits_returnAddr = vlSymsp->TOP__Rocket.__PVT__T_7274;
    vlTOPp->io_dmem_req_bits_addr = (IData)(vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_20);
    vlTOPp->io_imem_bht_update_bits_mispredict = vlSymsp->TOP__Rocket.__PVT__mem_wrong_npc;
    vlTOPp->ibuf_io_inst_0_bits_inst_bits_o = vlSymsp->TOP__Rocket.__PVT__ibuf__DOT__RVCExpander_1__DOT__T_1940_bits;
    vlTOPp->io_fpu_inst = vlSymsp->TOP__Rocket.__PVT__ibuf__DOT__RVCExpander_1__DOT__T_1940_bits;
    vlTOPp->id_rs_1_in_use = vlSymsp->TOP__Rocket.__PVT__T_6172;
    vlTOPp->id_rs_0_in_use = vlSymsp->TOP__Rocket.__PVT__T_6193;
    vlTOPp->io_dmem_invalidate_lr = vlSymsp->TOP__Rocket.__PVT__wb_xcpt;
    vlTOPp->io_rocc_exception = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt) 
                                 & (0U != (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs)));
    vlTOPp->wb_valid_o = vlSymsp->TOP__Rocket.__PVT__wb_valid;
    vlTOPp->no_first_valid_pc = (1U & (~ (((IData)(vlSymsp->TOP__Rocket.__PVT__wb_valid) 
                                           | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid)) 
                                          | ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_valid) 
                                             & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_pc_valid)))));
    vlTOPp->first_valid_pc = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_valid)
                               ? vlSymsp->TOP__Rocket.__PVT__wb_reg_pc
                               : ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid)
                                   ? vlSymsp->TOP__Rocket.__PVT__mem_reg_pc
                                   : (((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_valid) 
                                       & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_pc_valid))
                                       ? vlSymsp->TOP__Rocket.__PVT__ex_reg_pc
                                       : 0U)));
    vlTOPp->io_imem_req_bits_speculative = (1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7371)));
    vlTOPp->io_imem_ras_update_valid = vlSymsp->TOP__Rocket.__PVT__T_7570;
    vlTOPp->io_imem_bht_update_valid = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7570) 
                                        & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_branch));
    vlTOPp->io_imem_btb_update_valid = (((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_replay) 
                                         & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_hit)) 
                                        | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7570) 
                                           & (((IData)(vlSymsp->TOP__Rocket.__PVT__mem_cfi_taken) 
                                               | (~ (IData)(vlSymsp->TOP__Rocket.__PVT__mem_cfi))) 
                                              & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_wrong_npc))));
    vlTOPp->io_fpu_killm = vlSymsp->TOP__Rocket.__PVT__killm_common;
    vlTOPp->io_imem_req_valid = vlSymsp->TOP__Rocket.__PVT__take_pc_mem_wb;
    vlTOPp->io_dmem_s1_kill = vlSymsp->TOP__Rocket.__PVT__T_7618;
    vlTOPp->ctrl_killm_o = vlSymsp->TOP__Rocket.__PVT__ctrl_killm;
    vlTOPp->ctrl_killx_o = vlSymsp->TOP__Rocket.__PVT__ctrl_killx;
    vlTOPp->io_fpu_killx = vlSymsp->TOP__Rocket.__PVT__ctrl_killx;
    vlTOPp->ctrl_killd_o = vlSymsp->TOP__Rocket.__PVT__T_7551;
    vlTOPp->io_imem_btb_update_bits_target = vlSymsp->TOP__Rocket.__PVT__T_7559;
    vlTOPp->io_imem_req_bits_pc = vlSymsp->TOP__Rocket.__PVT__T_7559;
    vlTOPp->io_imem_resp_ready = ((IData)(vlSymsp->TOP__Rocket.__PVT__ibuf__DOT__T_378) 
                                  & (((3U & (IData)(vlSymsp->TOP__Rocket.__PVT__ibuf__DOT__T_374)) 
                                      >= (3U & (IData)(vlSymsp->TOP__Rocket.__PVT__ibuf__DOT__T_373))) 
                                     | (1U >= (3U & (IData)(vlSymsp->TOP__Rocket.__PVT__ibuf__DOT__T_381)))));
}

VL_INLINE_OPT void VRocket::_combo__TOP__4(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VRocket::_combo__TOP__4\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__Rocket.io_fpu_cp_resp_bits_data = vlTOPp->io_fpu_cp_resp_bits_data;
    vlSymsp->TOP__Rocket.io_fpu_cp_resp_valid = vlTOPp->io_fpu_cp_resp_valid;
    vlSymsp->TOP__Rocket.io_fpu_fcsr_rdy = vlTOPp->io_fpu_fcsr_rdy;
    vlTOPp->io_fpu_dmem_resp_data = vlTOPp->io_dmem_resp_bits_data_word_bypass;
    vlTOPp->io_fpu_dmem_resp_tag = (0x1fU & ((IData)(vlTOPp->io_dmem_resp_bits_tag) 
                                             >> 1U));
    vlTOPp->io_fpu_dmem_resp_type = vlTOPp->io_dmem_resp_bits_typ;
    vlSymsp->TOP__Rocket.io_fpu_fcsr_flags_bits = vlTOPp->io_fpu_fcsr_flags_bits;
    vlSymsp->TOP__Rocket.io_fpu_illegal_rm = vlTOPp->io_fpu_illegal_rm;
    vlSymsp->TOP__Rocket.io_fpu_nack_mem = vlTOPp->io_fpu_nack_mem;
    vlSymsp->TOP__Rocket.clock = vlTOPp->clock;
}

VL_INLINE_OPT void VRocket::_combo__TOP__5(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VRocket::_combo__TOP__5\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->io_fpu_dmem_resp_val = ((IData)(vlSymsp->TOP__Rocket.__PVT__dmem_resp_valid) 
                                    & (IData)(vlTOPp->io_dmem_resp_bits_tag));
}

VL_INLINE_OPT void VRocket::_sequent__TOP__6(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VRocket::_sequent__TOP__6\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->io_ptw_ptbr_asid = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_sptbr_asid;
    vlTOPp->x9 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x16U];
    vlTOPp->x8 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x17U];
    vlTOPp->x7 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x18U];
    vlTOPp->x6 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x19U];
    vlTOPp->x5 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x1aU];
    vlTOPp->x4 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x1bU];
    vlTOPp->x31 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0U];
    vlTOPp->x30 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [1U];
    vlTOPp->x3 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x1cU];
    vlTOPp->x29 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [2U];
    vlTOPp->x28 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [3U];
    vlTOPp->x27 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [4U];
    vlTOPp->x26 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [5U];
    vlTOPp->x25 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [6U];
    vlTOPp->x24 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [7U];
    vlTOPp->x23 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [8U];
    vlTOPp->x22 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [9U];
    vlTOPp->x21 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0xaU];
    vlTOPp->x20 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0xbU];
    vlTOPp->x2 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x1dU];
    vlTOPp->x19 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0xcU];
    vlTOPp->x18 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0xdU];
    vlTOPp->x17 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0xeU];
    vlTOPp->x16 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0xfU];
    vlTOPp->x15 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x10U];
    vlTOPp->x14 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x11U];
    vlTOPp->x13 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x12U];
    vlTOPp->x12 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x13U];
    vlTOPp->x11 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x14U];
    vlTOPp->x10 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x15U];
    vlTOPp->x1 = vlSymsp->TOP__Rocket.__PVT__T_6545
        [0x1eU];
    vlTOPp->io_rocc_cmd_bits_status_zero3 = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero3;
    vlTOPp->io_ptw_status_zero3 = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero3;
    vlTOPp->io_rocc_cmd_bits_status_vm = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_vm;
    vlTOPp->io_ptw_status_vm = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_vm;
    vlTOPp->io_rocc_cmd_bits_status_zero1 = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero1;
    vlTOPp->io_ptw_status_zero1 = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero1;
    vlTOPp->io_rocc_cmd_bits_status_spp = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_spp;
    vlTOPp->io_ptw_status_spp = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_spp;
    vlTOPp->io_rocc_cmd_bits_status_uie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_rocc_cmd_bits_status_sie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_rocc_cmd_bits_status_hie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_rocc_cmd_bits_status_upie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_rocc_cmd_bits_status_spie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_rocc_cmd_bits_status_hpie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_rocc_cmd_bits_status_pum = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_rocc_cmd_bits_status_mxr = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_ptw_status_uie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_ptw_status_sie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_ptw_status_hie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_ptw_status_upie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_ptw_status_spie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_ptw_status_hpie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_ptw_status_pum = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_ptw_status_mxr = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh;
    vlTOPp->io_rocc_cmd_bits_status_hpp = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs;
    vlTOPp->io_rocc_cmd_bits_status_fs = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs;
    vlTOPp->io_rocc_cmd_bits_status_xs = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs;
    vlTOPp->io_rocc_cmd_bits_status_zero2 = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs;
    vlTOPp->io_ptw_status_hpp = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs;
    vlTOPp->io_ptw_status_fs = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs;
    vlTOPp->io_ptw_status_xs = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs;
    vlTOPp->io_ptw_status_zero2 = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs;
    vlTOPp->ex_reg_valid_o = vlSymsp->TOP__Rocket.__PVT__ex_reg_valid;
    vlTOPp->io_rocc_cmd_bits_rs2 = vlSymsp->TOP__Rocket.__PVT__wb_reg_rs2;
    vlTOPp->io_imem_ras_update_bits_prediction_bits_taken 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_taken;
    vlTOPp->io_imem_bht_update_bits_prediction_bits_taken 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_taken;
    vlTOPp->io_imem_btb_update_bits_prediction_bits_taken 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_taken;
    vlTOPp->io_imem_ras_update_bits_prediction_bits_mask 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_mask;
    vlTOPp->io_imem_bht_update_bits_prediction_bits_mask 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_mask;
    vlTOPp->io_imem_btb_update_bits_prediction_bits_mask 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_mask;
    vlTOPp->io_imem_ras_update_bits_prediction_bits_bridx 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bridx;
    vlTOPp->io_imem_bht_update_bits_prediction_bits_bridx 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bridx;
    vlTOPp->io_imem_btb_update_bits_prediction_bits_bridx 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bridx;
    vlTOPp->io_imem_ras_update_bits_prediction_bits_target 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_target;
    vlTOPp->io_imem_bht_update_bits_prediction_bits_target 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_target;
    vlTOPp->io_imem_btb_update_bits_prediction_bits_target 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_target;
    vlTOPp->io_imem_ras_update_bits_prediction_bits_entry 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_entry;
    vlTOPp->io_imem_bht_update_bits_prediction_bits_entry 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_entry;
    vlTOPp->io_imem_btb_update_bits_prediction_bits_entry 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_entry;
    vlTOPp->io_imem_ras_update_bits_prediction_bits_bht_history 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bht_history;
    vlTOPp->io_imem_bht_update_bits_prediction_bits_bht_history 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bht_history;
    vlTOPp->io_imem_btb_update_bits_prediction_bits_bht_history 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bht_history;
    vlTOPp->io_imem_ras_update_bits_prediction_bits_bht_value 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bht_value;
    vlTOPp->io_imem_bht_update_bits_prediction_bits_bht_value 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bht_value;
    vlTOPp->io_imem_btb_update_bits_prediction_bits_bht_value 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bht_value;
    vlTOPp->io_imem_ras_update_bits_prediction_valid 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_hit;
    vlTOPp->io_imem_bht_update_bits_prediction_valid 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_hit;
    vlTOPp->io_imem_btb_update_bits_prediction_valid 
        = vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_hit;
    vlTOPp->io_imem_bht_update_bits_taken = (1U & vlSymsp->TOP__Rocket.__PVT__mem_reg_wdata);
    vlTOPp->wb_reg_valid_o = vlSymsp->TOP__Rocket.__PVT__wb_reg_valid;
    vlTOPp->io_rocc_cmd_bits_status_mprv = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mprv;
    vlTOPp->io_ptw_status_mprv = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mprv;
    vlTOPp->io_rocc_cmd_bits_status_isa = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa;
    vlTOPp->io_ptw_status_isa = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa;
    vlTOPp->io_rocc_cmd_bits_status_debug = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug;
    vlTOPp->io_ptw_status_debug = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug;
    vlTOPp->io_rocc_cmd_bits_status_mie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie;
    vlTOPp->io_ptw_status_mie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie;
    vlTOPp->io_rocc_cmd_bits_status_sd_rv32 = vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573;
    vlTOPp->io_rocc_cmd_bits_status_sd = vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573;
    vlTOPp->io_ptw_status_sd_rv32 = vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573;
    vlTOPp->io_ptw_status_sd = vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573;
    vlTOPp->mem_reg_valid_o = vlSymsp->TOP__Rocket.__PVT__mem_reg_valid;
    vlTOPp->wb_reg_pc_o = vlSymsp->TOP__Rocket.__PVT__wb_reg_pc;
    vlTOPp->io_rocc_cmd_bits_rs1 = vlSymsp->TOP__Rocket.__PVT__wb_reg_wdata;
    vlTOPp->io_rocc_cmd_bits_status_mpie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie;
    vlTOPp->io_ptw_status_mpie = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie;
    vlTOPp->io_rocc_cmd_bits_status_mpp = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp;
    vlTOPp->io_ptw_status_mpp = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp;
    vlTOPp->io_rocc_cmd_bits_status_prv = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv;
    vlTOPp->io_ptw_status_prv = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv;
    vlTOPp->io_imem_btb_update_bits_isJump = vlSymsp->TOP__Rocket.__PVT__T_7586;
    vlTOPp->io_imem_btb_update_bits_isValid = ((~ (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_replay)) 
                                               & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_cfi));
    vlTOPp->io_dmem_req_bits_typ = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_type;
    vlTOPp->io_dmem_req_bits_cmd = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd;
    vlTOPp->wb_reg_inst_o = vlSymsp->TOP__Rocket.__PVT__wb_reg_inst;
    vlTOPp->io_rocc_cmd_bits_inst_opcode = (0x7fU & vlSymsp->TOP__Rocket.__PVT__wb_reg_inst);
    vlTOPp->io_rocc_cmd_bits_inst_rd = (0x1fU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                 >> 7U));
    vlTOPp->io_rocc_cmd_bits_inst_xs2 = (1U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0xcU));
    vlTOPp->io_rocc_cmd_bits_inst_xs1 = (1U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0xdU));
    vlTOPp->io_rocc_cmd_bits_inst_xd = (1U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0xeU));
    vlTOPp->io_rocc_cmd_bits_inst_rs1 = (0x1fU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                  >> 0xfU));
    vlTOPp->io_rocc_cmd_bits_inst_rs2 = (0x1fU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                  >> 0x14U));
    vlTOPp->io_rocc_cmd_bits_inst_funct = (0x7fU & 
                                           (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x19U));
    vlTOPp->io_dmem_req_valid = vlSymsp->TOP__Rocket.__PVT__T_7615;
    vlTOPp->io_imem_bht_update_bits_pc = (~ (3U | (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7596))));
    vlTOPp->io_imem_btb_update_bits_br_pc = (IData)(vlSymsp->TOP__Rocket.__PVT__T_7596);
    vlTOPp->io_imem_btb_update_bits_pc = (~ (3U | (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7596))));
    vlTOPp->mem_reg_inst_o = vlSymsp->TOP__Rocket.__PVT__mem_reg_inst;
    vlTOPp->io_imem_ras_update_bits_isCall = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7586) 
                                              & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                 >> 7U));
    vlTOPp->io_imem_ras_update_bits_isReturn = vlSymsp->TOP__Rocket.__PVT__T_7592;
    vlTOPp->io_imem_btb_update_bits_isReturn = vlSymsp->TOP__Rocket.__PVT__T_7592;
    vlTOPp->io_ptw_invalidate = vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_sfence_vm;
    vlTOPp->io_imem_flush_tlb = vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_sfence_vm;
    vlTOPp->ex_reg_inst_o = vlSymsp->TOP__Rocket.__PVT__ex_reg_inst;
    vlTOPp->io_dmem_req_bits_tag = ((0x3eU & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                              >> 6U)) 
                                    | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rocc));
    vlTOPp->io_imem_ras_update_bits_returnAddr = vlSymsp->TOP__Rocket.__PVT__T_7274;
    vlTOPp->io_dmem_invalidate_lr = vlSymsp->TOP__Rocket.__PVT__wb_xcpt;
    vlTOPp->io_rocc_exception = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt) 
                                 & (0U != (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs)));
}

VL_INLINE_OPT void VRocket::_combo__TOP__7(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VRocket::_combo__TOP__7\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__Rocket.io_dmem_xcpt_pf_ld = vlTOPp->io_dmem_xcpt_pf_ld;
    vlSymsp->TOP__Rocket.io_dmem_xcpt_ma_ld = vlTOPp->io_dmem_xcpt_ma_ld;
    vlSymsp->TOP__Rocket.io_dmem_xcpt_ma_st = vlTOPp->io_dmem_xcpt_ma_st;
    vlSymsp->TOP__Rocket.io_dmem_xcpt_pf_st = vlTOPp->io_dmem_xcpt_pf_st;
    vlSymsp->TOP__Rocket.io_fpu_fcsr_flags_valid = vlTOPp->io_fpu_fcsr_flags_valid;
    vlTOPp->rf_idx_o = ((0U == (IData)(vlTOPp->rf_idx_i))
                         ? 0U : ((0x1eU >= (0x1fU & 
                                            (~ (IData)(vlTOPp->rf_idx_i))))
                                  ? vlSymsp->TOP__Rocket.__PVT__T_6545
                                 [(0x1fU & (~ (IData)(vlTOPp->rf_idx_i)))]
                                  : 0U));
    vlTOPp->io_imem_flush_icache = (((IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_valid) 
                                     & (IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_fence_i)) 
                                    & (~ (IData)(vlTOPp->io_dmem_s2_nack)));
    vlSymsp->TOP__Rocket.io_fpu_toint_data = vlTOPp->io_fpu_toint_data;
    vlSymsp->TOP__Rocket.reset = vlTOPp->reset;
    vlTOPp->io_dmem_s1_data = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rocc)
                                ? vlTOPp->io_fpu_store_data
                                : vlSymsp->TOP__Rocket.__PVT__mem_reg_rs2);
}

VL_INLINE_OPT void VRocket::_combo__TOP__8(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VRocket::_combo__TOP__8\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->ibuf_io_pc_o = vlSymsp->TOP__Rocket.__PVT__ibuf__DOT__T_488;
    vlTOPp->io_rocc_cmd_valid = vlSymsp->TOP__Rocket.__PVT__T_7634;
    vlTOPp->ex_rs_1_o = vlSymsp->TOP__Rocket.__PVT__ex_rs_1;
    vlTOPp->ex_rs_0_o = vlSymsp->TOP__Rocket.__PVT__ex_rs_0;
    vlTOPp->io_fpu_fromint_data = vlSymsp->TOP__Rocket.__PVT__ex_rs_0;
    vlTOPp->wb_valid_o = vlSymsp->TOP__Rocket.__PVT__wb_valid;
    vlTOPp->no_first_valid_pc = (1U & (~ (((IData)(vlSymsp->TOP__Rocket.__PVT__wb_valid) 
                                           | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid)) 
                                          | ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_valid) 
                                             & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_pc_valid)))));
    vlTOPp->first_valid_pc = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_valid)
                               ? vlSymsp->TOP__Rocket.__PVT__wb_reg_pc
                               : ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid)
                                   ? vlSymsp->TOP__Rocket.__PVT__mem_reg_pc
                                   : (((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_valid) 
                                       & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_pc_valid))
                                       ? vlSymsp->TOP__Rocket.__PVT__ex_reg_pc
                                       : 0U)));
    vlTOPp->io_imem_req_bits_speculative = (1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7371)));
    vlTOPp->io_imem_btb_update_bits_target = vlSymsp->TOP__Rocket.__PVT__T_7559;
    vlTOPp->io_imem_req_bits_pc = vlSymsp->TOP__Rocket.__PVT__T_7559;
    vlTOPp->io_imem_ras_update_valid = vlSymsp->TOP__Rocket.__PVT__T_7570;
    vlTOPp->io_imem_bht_update_valid = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7570) 
                                        & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_branch));
    vlTOPp->io_fpu_killm = vlSymsp->TOP__Rocket.__PVT__killm_common;
    vlTOPp->io_imem_req_valid = vlSymsp->TOP__Rocket.__PVT__take_pc_mem_wb;
    vlTOPp->ibuf_io_inst_0_valid_o = vlSymsp->TOP__Rocket.__PVT__ibuf__DOT__T_519;
    vlTOPp->io_dmem_s1_kill = vlSymsp->TOP__Rocket.__PVT__T_7618;
    vlTOPp->ctrl_killm_o = vlSymsp->TOP__Rocket.__PVT__ctrl_killm;
    vlTOPp->ctrl_killx_o = vlSymsp->TOP__Rocket.__PVT__ctrl_killx;
    vlTOPp->io_fpu_killx = vlSymsp->TOP__Rocket.__PVT__ctrl_killx;
    vlTOPp->io_imem_bht_update_bits_mispredict = vlSymsp->TOP__Rocket.__PVT__mem_wrong_npc;
    vlTOPp->io_imem_btb_update_valid = (((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_replay) 
                                         & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_hit)) 
                                        | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7570) 
                                           & (((IData)(vlSymsp->TOP__Rocket.__PVT__mem_cfi_taken) 
                                               | (~ (IData)(vlSymsp->TOP__Rocket.__PVT__mem_cfi))) 
                                              & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_wrong_npc))));
    vlTOPp->io_dmem_req_bits_addr = (IData)(vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_20);
    vlTOPp->ibuf_io_inst_0_bits_inst_bits_o = vlSymsp->TOP__Rocket.__PVT__ibuf__DOT__RVCExpander_1__DOT__T_1940_bits;
    vlTOPp->io_fpu_inst = vlSymsp->TOP__Rocket.__PVT__ibuf__DOT__RVCExpander_1__DOT__T_1940_bits;
    vlTOPp->id_rs_1_in_use = vlSymsp->TOP__Rocket.__PVT__T_6172;
    vlTOPp->id_rs_0_in_use = vlSymsp->TOP__Rocket.__PVT__T_6193;
    vlTOPp->ctrl_killd_o = vlSymsp->TOP__Rocket.__PVT__T_7551;
    vlTOPp->io_imem_resp_ready = ((IData)(vlSymsp->TOP__Rocket.__PVT__ibuf__DOT__T_378) 
                                  & (((3U & (IData)(vlSymsp->TOP__Rocket.__PVT__ibuf__DOT__T_374)) 
                                      >= (3U & (IData)(vlSymsp->TOP__Rocket.__PVT__ibuf__DOT__T_373))) 
                                     | (1U >= (3U & (IData)(vlSymsp->TOP__Rocket.__PVT__ibuf__DOT__T_381)))));
}

void VRocket::_eval(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VRocket::_eval\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__4(vlSymsp);
    vlTOPp->__Vm_traceActivity = (2U | vlTOPp->__Vm_traceActivity);
    vlSymsp->TOP__Rocket._combo__TOP__Rocket__2(vlSymsp);
    vlTOPp->_combo__TOP__5(vlSymsp);
    if (((IData)(vlSymsp->TOP__Rocket.clock) & (~ (IData)(vlTOPp->__Vclklast__TOP__Rocket__clock)))) {
        vlSymsp->TOP__Rocket._sequent__TOP__Rocket__3(vlSymsp);
        vlTOPp->__Vm_traceActivity = (4U | vlTOPp->__Vm_traceActivity);
        vlTOPp->_sequent__TOP__6(vlSymsp);
    }
    vlTOPp->_combo__TOP__7(vlSymsp);
    vlSymsp->TOP__Rocket._combo__TOP__Rocket__4(vlSymsp);
    vlTOPp->_combo__TOP__8(vlSymsp);
    // Final
    vlTOPp->__Vclklast__TOP__Rocket__clock = vlSymsp->TOP__Rocket.clock;
}

void VRocket::_eval_initial(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VRocket::_eval_initial\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_initial__TOP__1(vlSymsp);
    vlTOPp->__Vclklast__TOP__Rocket__clock = vlSymsp->TOP__Rocket.clock;
}

void VRocket::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VRocket::final\n"); );
    // Variables
    VRocket__Syms* __restrict vlSymsp = this->__VlSymsp;
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VRocket::_eval_settle(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VRocket::_eval_settle\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__2(vlSymsp);
    vlTOPp->__Vm_traceActivity = (1U | vlTOPp->__Vm_traceActivity);
    vlSymsp->TOP__Rocket._settle__TOP__Rocket__1(vlSymsp);
    vlTOPp->_settle__TOP__3(vlSymsp);
}

VL_INLINE_OPT QData VRocket::_change_request(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VRocket::_change_request\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void VRocket::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VRocket::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((clock & 0xfeU))) {
        Verilated::overWidthError("clock");}
    if (VL_UNLIKELY((reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
    if (VL_UNLIKELY((io_interrupts_debug & 0xfeU))) {
        Verilated::overWidthError("io_interrupts_debug");}
    if (VL_UNLIKELY((io_interrupts_mtip & 0xfeU))) {
        Verilated::overWidthError("io_interrupts_mtip");}
    if (VL_UNLIKELY((io_interrupts_msip & 0xfeU))) {
        Verilated::overWidthError("io_interrupts_msip");}
    if (VL_UNLIKELY((io_interrupts_meip & 0xfeU))) {
        Verilated::overWidthError("io_interrupts_meip");}
    if (VL_UNLIKELY((io_imem_resp_valid & 0xfeU))) {
        Verilated::overWidthError("io_imem_resp_valid");}
    if (VL_UNLIKELY((io_imem_resp_bits_btb_valid & 0xfeU))) {
        Verilated::overWidthError("io_imem_resp_bits_btb_valid");}
    if (VL_UNLIKELY((io_imem_resp_bits_btb_bits_taken 
                     & 0xfeU))) {
        Verilated::overWidthError("io_imem_resp_bits_btb_bits_taken");}
    if (VL_UNLIKELY((io_imem_resp_bits_btb_bits_mask 
                     & 0xfcU))) {
        Verilated::overWidthError("io_imem_resp_bits_btb_bits_mask");}
    if (VL_UNLIKELY((io_imem_resp_bits_btb_bits_bridx 
                     & 0xfeU))) {
        Verilated::overWidthError("io_imem_resp_bits_btb_bits_bridx");}
    if (VL_UNLIKELY((io_imem_resp_bits_btb_bits_entry 
                     & 0xfeU))) {
        Verilated::overWidthError("io_imem_resp_bits_btb_bits_entry");}
    if (VL_UNLIKELY((io_imem_resp_bits_btb_bits_bht_history 
                     & 0xfeU))) {
        Verilated::overWidthError("io_imem_resp_bits_btb_bits_bht_history");}
    if (VL_UNLIKELY((io_imem_resp_bits_btb_bits_bht_value 
                     & 0xfcU))) {
        Verilated::overWidthError("io_imem_resp_bits_btb_bits_bht_value");}
    if (VL_UNLIKELY((io_imem_resp_bits_mask & 0xfcU))) {
        Verilated::overWidthError("io_imem_resp_bits_mask");}
    if (VL_UNLIKELY((io_imem_resp_bits_xcpt_if & 0xfeU))) {
        Verilated::overWidthError("io_imem_resp_bits_xcpt_if");}
    if (VL_UNLIKELY((io_imem_resp_bits_replay & 0xfeU))) {
        Verilated::overWidthError("io_imem_resp_bits_replay");}
    if (VL_UNLIKELY((io_dmem_req_ready & 0xfeU))) {
        Verilated::overWidthError("io_dmem_req_ready");}
    if (VL_UNLIKELY((io_dmem_s2_nack & 0xfeU))) {
        Verilated::overWidthError("io_dmem_s2_nack");}
    if (VL_UNLIKELY((io_dmem_resp_valid & 0xfeU))) {
        Verilated::overWidthError("io_dmem_resp_valid");}
    if (VL_UNLIKELY((io_dmem_resp_bits_tag & 0x80U))) {
        Verilated::overWidthError("io_dmem_resp_bits_tag");}
    if (VL_UNLIKELY((io_dmem_resp_bits_cmd & 0xe0U))) {
        Verilated::overWidthError("io_dmem_resp_bits_cmd");}
    if (VL_UNLIKELY((io_dmem_resp_bits_typ & 0xf8U))) {
        Verilated::overWidthError("io_dmem_resp_bits_typ");}
    if (VL_UNLIKELY((io_dmem_resp_bits_replay & 0xfeU))) {
        Verilated::overWidthError("io_dmem_resp_bits_replay");}
    if (VL_UNLIKELY((io_dmem_resp_bits_has_data & 0xfeU))) {
        Verilated::overWidthError("io_dmem_resp_bits_has_data");}
    if (VL_UNLIKELY((io_dmem_replay_next & 0xfeU))) {
        Verilated::overWidthError("io_dmem_replay_next");}
    if (VL_UNLIKELY((io_dmem_xcpt_ma_ld & 0xfeU))) {
        Verilated::overWidthError("io_dmem_xcpt_ma_ld");}
    if (VL_UNLIKELY((io_dmem_xcpt_ma_st & 0xfeU))) {
        Verilated::overWidthError("io_dmem_xcpt_ma_st");}
    if (VL_UNLIKELY((io_dmem_xcpt_pf_ld & 0xfeU))) {
        Verilated::overWidthError("io_dmem_xcpt_pf_ld");}
    if (VL_UNLIKELY((io_dmem_xcpt_pf_st & 0xfeU))) {
        Verilated::overWidthError("io_dmem_xcpt_pf_st");}
    if (VL_UNLIKELY((io_dmem_ordered & 0xfeU))) {
        Verilated::overWidthError("io_dmem_ordered");}
    if (VL_UNLIKELY((io_fpu_fcsr_flags_valid & 0xfeU))) {
        Verilated::overWidthError("io_fpu_fcsr_flags_valid");}
    if (VL_UNLIKELY((io_fpu_fcsr_flags_bits & 0xe0U))) {
        Verilated::overWidthError("io_fpu_fcsr_flags_bits");}
    if (VL_UNLIKELY((io_fpu_fcsr_rdy & 0xfeU))) {
        Verilated::overWidthError("io_fpu_fcsr_rdy");}
    if (VL_UNLIKELY((io_fpu_nack_mem & 0xfeU))) {
        Verilated::overWidthError("io_fpu_nack_mem");}
    if (VL_UNLIKELY((io_fpu_illegal_rm & 0xfeU))) {
        Verilated::overWidthError("io_fpu_illegal_rm");}
    if (VL_UNLIKELY((io_fpu_dec_cmd & 0xe0U))) {
        Verilated::overWidthError("io_fpu_dec_cmd");}
    if (VL_UNLIKELY((io_fpu_dec_ldst & 0xfeU))) {
        Verilated::overWidthError("io_fpu_dec_ldst");}
    if (VL_UNLIKELY((io_fpu_dec_wen & 0xfeU))) {
        Verilated::overWidthError("io_fpu_dec_wen");}
    if (VL_UNLIKELY((io_fpu_dec_ren1 & 0xfeU))) {
        Verilated::overWidthError("io_fpu_dec_ren1");}
    if (VL_UNLIKELY((io_fpu_dec_ren2 & 0xfeU))) {
        Verilated::overWidthError("io_fpu_dec_ren2");}
    if (VL_UNLIKELY((io_fpu_dec_ren3 & 0xfeU))) {
        Verilated::overWidthError("io_fpu_dec_ren3");}
    if (VL_UNLIKELY((io_fpu_dec_swap12 & 0xfeU))) {
        Verilated::overWidthError("io_fpu_dec_swap12");}
    if (VL_UNLIKELY((io_fpu_dec_swap23 & 0xfeU))) {
        Verilated::overWidthError("io_fpu_dec_swap23");}
    if (VL_UNLIKELY((io_fpu_dec_single & 0xfeU))) {
        Verilated::overWidthError("io_fpu_dec_single");}
    if (VL_UNLIKELY((io_fpu_dec_fromint & 0xfeU))) {
        Verilated::overWidthError("io_fpu_dec_fromint");}
    if (VL_UNLIKELY((io_fpu_dec_toint & 0xfeU))) {
        Verilated::overWidthError("io_fpu_dec_toint");}
    if (VL_UNLIKELY((io_fpu_dec_fastpipe & 0xfeU))) {
        Verilated::overWidthError("io_fpu_dec_fastpipe");}
    if (VL_UNLIKELY((io_fpu_dec_fma & 0xfeU))) {
        Verilated::overWidthError("io_fpu_dec_fma");}
    if (VL_UNLIKELY((io_fpu_dec_div & 0xfeU))) {
        Verilated::overWidthError("io_fpu_dec_div");}
    if (VL_UNLIKELY((io_fpu_dec_sqrt & 0xfeU))) {
        Verilated::overWidthError("io_fpu_dec_sqrt");}
    if (VL_UNLIKELY((io_fpu_dec_round & 0xfeU))) {
        Verilated::overWidthError("io_fpu_dec_round");}
    if (VL_UNLIKELY((io_fpu_dec_wflags & 0xfeU))) {
        Verilated::overWidthError("io_fpu_dec_wflags");}
    if (VL_UNLIKELY((io_fpu_sboard_set & 0xfeU))) {
        Verilated::overWidthError("io_fpu_sboard_set");}
    if (VL_UNLIKELY((io_fpu_sboard_clr & 0xfeU))) {
        Verilated::overWidthError("io_fpu_sboard_clr");}
    if (VL_UNLIKELY((io_fpu_sboard_clra & 0xe0U))) {
        Verilated::overWidthError("io_fpu_sboard_clra");}
    if (VL_UNLIKELY((io_fpu_cp_req_ready & 0xfeU))) {
        Verilated::overWidthError("io_fpu_cp_req_ready");}
    if (VL_UNLIKELY((io_fpu_cp_resp_valid & 0xfeU))) {
        Verilated::overWidthError("io_fpu_cp_resp_valid");}
    if (VL_UNLIKELY((io_fpu_cp_resp_bits_data & VL_ULL(0)))) {
        Verilated::overWidthError("io_fpu_cp_resp_bits_data");}
    if (VL_UNLIKELY((io_fpu_cp_resp_bits_exc & 0xe0U))) {
        Verilated::overWidthError("io_fpu_cp_resp_bits_exc");}
    if (VL_UNLIKELY((io_rocc_cmd_ready & 0xfeU))) {
        Verilated::overWidthError("io_rocc_cmd_ready");}
    if (VL_UNLIKELY((io_rocc_resp_valid & 0xfeU))) {
        Verilated::overWidthError("io_rocc_resp_valid");}
    if (VL_UNLIKELY((io_rocc_resp_bits_rd & 0xe0U))) {
        Verilated::overWidthError("io_rocc_resp_bits_rd");}
    if (VL_UNLIKELY((io_rocc_mem_req_valid & 0xfeU))) {
        Verilated::overWidthError("io_rocc_mem_req_valid");}
    if (VL_UNLIKELY((io_rocc_mem_req_bits_tag & 0x80U))) {
        Verilated::overWidthError("io_rocc_mem_req_bits_tag");}
    if (VL_UNLIKELY((io_rocc_mem_req_bits_cmd & 0xe0U))) {
        Verilated::overWidthError("io_rocc_mem_req_bits_cmd");}
    if (VL_UNLIKELY((io_rocc_mem_req_bits_typ & 0xf8U))) {
        Verilated::overWidthError("io_rocc_mem_req_bits_typ");}
    if (VL_UNLIKELY((io_rocc_mem_req_bits_phys & 0xfeU))) {
        Verilated::overWidthError("io_rocc_mem_req_bits_phys");}
    if (VL_UNLIKELY((io_rocc_mem_s1_kill & 0xfeU))) {
        Verilated::overWidthError("io_rocc_mem_s1_kill");}
    if (VL_UNLIKELY((io_rocc_mem_invalidate_lr & 0xfeU))) {
        Verilated::overWidthError("io_rocc_mem_invalidate_lr");}
    if (VL_UNLIKELY((io_rocc_busy & 0xfeU))) {
        Verilated::overWidthError("io_rocc_busy");}
    if (VL_UNLIKELY((io_rocc_interrupt & 0xfeU))) {
        Verilated::overWidthError("io_rocc_interrupt");}
    if (VL_UNLIKELY((io_rocc_autl_acquire_valid & 0xfeU))) {
        Verilated::overWidthError("io_rocc_autl_acquire_valid");}
    if (VL_UNLIKELY((io_rocc_autl_acquire_bits_addr_block 
                     & 0xfc000000U))) {
        Verilated::overWidthError("io_rocc_autl_acquire_bits_addr_block");}
    if (VL_UNLIKELY((io_rocc_autl_acquire_bits_client_xact_id 
                     & 0xfeU))) {
        Verilated::overWidthError("io_rocc_autl_acquire_bits_client_xact_id");}
    if (VL_UNLIKELY((io_rocc_autl_acquire_bits_addr_beat 
                     & 0xf0U))) {
        Verilated::overWidthError("io_rocc_autl_acquire_bits_addr_beat");}
    if (VL_UNLIKELY((io_rocc_autl_acquire_bits_is_builtin_type 
                     & 0xfeU))) {
        Verilated::overWidthError("io_rocc_autl_acquire_bits_is_builtin_type");}
    if (VL_UNLIKELY((io_rocc_autl_acquire_bits_a_type 
                     & 0xf8U))) {
        Verilated::overWidthError("io_rocc_autl_acquire_bits_a_type");}
    if (VL_UNLIKELY((io_rocc_autl_acquire_bits_union 
                     & 0xfc00U))) {
        Verilated::overWidthError("io_rocc_autl_acquire_bits_union");}
    if (VL_UNLIKELY((io_rocc_autl_grant_ready & 0xfeU))) {
        Verilated::overWidthError("io_rocc_autl_grant_ready");}
    if (VL_UNLIKELY((io_rocc_fpu_req_valid & 0xfeU))) {
        Verilated::overWidthError("io_rocc_fpu_req_valid");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_cmd & 0xe0U))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_cmd");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_ldst & 0xfeU))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_ldst");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_wen & 0xfeU))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_wen");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_ren1 & 0xfeU))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_ren1");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_ren2 & 0xfeU))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_ren2");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_ren3 & 0xfeU))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_ren3");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_swap12 & 0xfeU))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_swap12");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_swap23 & 0xfeU))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_swap23");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_single & 0xfeU))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_single");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_fromint & 0xfeU))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_fromint");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_toint & 0xfeU))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_toint");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_fastpipe 
                     & 0xfeU))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_fastpipe");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_fma & 0xfeU))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_fma");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_div & 0xfeU))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_div");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_sqrt & 0xfeU))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_sqrt");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_round & 0xfeU))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_round");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_wflags & 0xfeU))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_wflags");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_rm & 0xf8U))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_rm");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_typ & 0xfcU))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_typ");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_in1 & VL_ULL(0)))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_in1");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_in2 & VL_ULL(0)))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_in2");}
    if (VL_UNLIKELY((io_rocc_fpu_req_bits_in3 & VL_ULL(0)))) {
        Verilated::overWidthError("io_rocc_fpu_req_bits_in3");}
    if (VL_UNLIKELY((io_rocc_fpu_resp_ready & 0xfeU))) {
        Verilated::overWidthError("io_rocc_fpu_resp_ready");}
    if (VL_UNLIKELY((rf_idx_i & 0xe0U))) {
        Verilated::overWidthError("rf_idx_i");}
}
#endif  // VL_DEBUG

void VRocket::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VRocket::_ctor_var_reset\n"); );
    // Body
    clock = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    io_interrupts_debug = VL_RAND_RESET_I(1);
    io_interrupts_mtip = VL_RAND_RESET_I(1);
    io_interrupts_msip = VL_RAND_RESET_I(1);
    io_interrupts_meip = VL_RAND_RESET_I(1);
    io_hartid = VL_RAND_RESET_I(32);
    io_imem_req_valid = VL_RAND_RESET_I(1);
    io_imem_req_bits_pc = VL_RAND_RESET_I(32);
    io_imem_req_bits_speculative = VL_RAND_RESET_I(1);
    io_imem_resp_ready = VL_RAND_RESET_I(1);
    io_imem_resp_valid = VL_RAND_RESET_I(1);
    io_imem_resp_bits_btb_valid = VL_RAND_RESET_I(1);
    io_imem_resp_bits_btb_bits_taken = VL_RAND_RESET_I(1);
    io_imem_resp_bits_btb_bits_mask = VL_RAND_RESET_I(2);
    io_imem_resp_bits_btb_bits_bridx = VL_RAND_RESET_I(1);
    io_imem_resp_bits_btb_bits_target = VL_RAND_RESET_I(32);
    io_imem_resp_bits_btb_bits_entry = VL_RAND_RESET_I(1);
    io_imem_resp_bits_btb_bits_bht_history = VL_RAND_RESET_I(1);
    io_imem_resp_bits_btb_bits_bht_value = VL_RAND_RESET_I(2);
    io_imem_resp_bits_pc = VL_RAND_RESET_I(32);
    io_imem_resp_bits_data = VL_RAND_RESET_I(32);
    io_imem_resp_bits_mask = VL_RAND_RESET_I(2);
    io_imem_resp_bits_xcpt_if = VL_RAND_RESET_I(1);
    io_imem_resp_bits_replay = VL_RAND_RESET_I(1);
    io_imem_btb_update_valid = VL_RAND_RESET_I(1);
    io_imem_btb_update_bits_prediction_valid = VL_RAND_RESET_I(1);
    io_imem_btb_update_bits_prediction_bits_taken = VL_RAND_RESET_I(1);
    io_imem_btb_update_bits_prediction_bits_mask = VL_RAND_RESET_I(2);
    io_imem_btb_update_bits_prediction_bits_bridx = VL_RAND_RESET_I(1);
    io_imem_btb_update_bits_prediction_bits_target = VL_RAND_RESET_I(32);
    io_imem_btb_update_bits_prediction_bits_entry = VL_RAND_RESET_I(1);
    io_imem_btb_update_bits_prediction_bits_bht_history = VL_RAND_RESET_I(1);
    io_imem_btb_update_bits_prediction_bits_bht_value = VL_RAND_RESET_I(2);
    io_imem_btb_update_bits_pc = VL_RAND_RESET_I(32);
    io_imem_btb_update_bits_target = VL_RAND_RESET_I(32);
    io_imem_btb_update_bits_taken = VL_RAND_RESET_I(1);
    io_imem_btb_update_bits_isValid = VL_RAND_RESET_I(1);
    io_imem_btb_update_bits_isJump = VL_RAND_RESET_I(1);
    io_imem_btb_update_bits_isReturn = VL_RAND_RESET_I(1);
    io_imem_btb_update_bits_br_pc = VL_RAND_RESET_I(32);
    io_imem_bht_update_valid = VL_RAND_RESET_I(1);
    io_imem_bht_update_bits_prediction_valid = VL_RAND_RESET_I(1);
    io_imem_bht_update_bits_prediction_bits_taken = VL_RAND_RESET_I(1);
    io_imem_bht_update_bits_prediction_bits_mask = VL_RAND_RESET_I(2);
    io_imem_bht_update_bits_prediction_bits_bridx = VL_RAND_RESET_I(1);
    io_imem_bht_update_bits_prediction_bits_target = VL_RAND_RESET_I(32);
    io_imem_bht_update_bits_prediction_bits_entry = VL_RAND_RESET_I(1);
    io_imem_bht_update_bits_prediction_bits_bht_history = VL_RAND_RESET_I(1);
    io_imem_bht_update_bits_prediction_bits_bht_value = VL_RAND_RESET_I(2);
    io_imem_bht_update_bits_pc = VL_RAND_RESET_I(32);
    io_imem_bht_update_bits_taken = VL_RAND_RESET_I(1);
    io_imem_bht_update_bits_mispredict = VL_RAND_RESET_I(1);
    io_imem_ras_update_valid = VL_RAND_RESET_I(1);
    io_imem_ras_update_bits_isCall = VL_RAND_RESET_I(1);
    io_imem_ras_update_bits_isReturn = VL_RAND_RESET_I(1);
    io_imem_ras_update_bits_returnAddr = VL_RAND_RESET_I(32);
    io_imem_ras_update_bits_prediction_valid = VL_RAND_RESET_I(1);
    io_imem_ras_update_bits_prediction_bits_taken = VL_RAND_RESET_I(1);
    io_imem_ras_update_bits_prediction_bits_mask = VL_RAND_RESET_I(2);
    io_imem_ras_update_bits_prediction_bits_bridx = VL_RAND_RESET_I(1);
    io_imem_ras_update_bits_prediction_bits_target = VL_RAND_RESET_I(32);
    io_imem_ras_update_bits_prediction_bits_entry = VL_RAND_RESET_I(1);
    io_imem_ras_update_bits_prediction_bits_bht_history = VL_RAND_RESET_I(1);
    io_imem_ras_update_bits_prediction_bits_bht_value = VL_RAND_RESET_I(2);
    io_imem_flush_icache = VL_RAND_RESET_I(1);
    io_imem_flush_tlb = VL_RAND_RESET_I(1);
    io_imem_npc = VL_RAND_RESET_I(32);
    io_dmem_req_ready = VL_RAND_RESET_I(1);
    io_dmem_req_valid = VL_RAND_RESET_I(1);
    io_dmem_req_bits_addr = VL_RAND_RESET_I(32);
    io_dmem_req_bits_tag = VL_RAND_RESET_I(7);
    io_dmem_req_bits_cmd = VL_RAND_RESET_I(5);
    io_dmem_req_bits_typ = VL_RAND_RESET_I(3);
    io_dmem_req_bits_phys = VL_RAND_RESET_I(1);
    io_dmem_req_bits_data = VL_RAND_RESET_I(32);
    io_dmem_s1_kill = VL_RAND_RESET_I(1);
    io_dmem_s1_data = VL_RAND_RESET_I(32);
    io_dmem_s2_nack = VL_RAND_RESET_I(1);
    io_dmem_resp_valid = VL_RAND_RESET_I(1);
    io_dmem_resp_bits_addr = VL_RAND_RESET_I(32);
    io_dmem_resp_bits_tag = VL_RAND_RESET_I(7);
    io_dmem_resp_bits_cmd = VL_RAND_RESET_I(5);
    io_dmem_resp_bits_typ = VL_RAND_RESET_I(3);
    io_dmem_resp_bits_data = VL_RAND_RESET_I(32);
    io_dmem_resp_bits_replay = VL_RAND_RESET_I(1);
    io_dmem_resp_bits_has_data = VL_RAND_RESET_I(1);
    io_dmem_resp_bits_data_word_bypass = VL_RAND_RESET_I(32);
    io_dmem_resp_bits_store_data = VL_RAND_RESET_I(32);
    io_dmem_replay_next = VL_RAND_RESET_I(1);
    io_dmem_xcpt_ma_ld = VL_RAND_RESET_I(1);
    io_dmem_xcpt_ma_st = VL_RAND_RESET_I(1);
    io_dmem_xcpt_pf_ld = VL_RAND_RESET_I(1);
    io_dmem_xcpt_pf_st = VL_RAND_RESET_I(1);
    io_dmem_invalidate_lr = VL_RAND_RESET_I(1);
    io_dmem_ordered = VL_RAND_RESET_I(1);
    io_ptw_ptbr_asid = VL_RAND_RESET_I(7);
    io_ptw_ptbr_ppn = VL_RAND_RESET_I(22);
    io_ptw_invalidate = VL_RAND_RESET_I(1);
    io_ptw_status_debug = VL_RAND_RESET_I(1);
    io_ptw_status_isa = VL_RAND_RESET_I(32);
    io_ptw_status_prv = VL_RAND_RESET_I(2);
    io_ptw_status_sd = VL_RAND_RESET_I(1);
    io_ptw_status_zero3 = VL_RAND_RESET_I(31);
    io_ptw_status_sd_rv32 = VL_RAND_RESET_I(1);
    io_ptw_status_zero2 = VL_RAND_RESET_I(2);
    io_ptw_status_vm = VL_RAND_RESET_I(5);
    io_ptw_status_zero1 = VL_RAND_RESET_I(4);
    io_ptw_status_mxr = VL_RAND_RESET_I(1);
    io_ptw_status_pum = VL_RAND_RESET_I(1);
    io_ptw_status_mprv = VL_RAND_RESET_I(1);
    io_ptw_status_xs = VL_RAND_RESET_I(2);
    io_ptw_status_fs = VL_RAND_RESET_I(2);
    io_ptw_status_mpp = VL_RAND_RESET_I(2);
    io_ptw_status_hpp = VL_RAND_RESET_I(2);
    io_ptw_status_spp = VL_RAND_RESET_I(1);
    io_ptw_status_mpie = VL_RAND_RESET_I(1);
    io_ptw_status_hpie = VL_RAND_RESET_I(1);
    io_ptw_status_spie = VL_RAND_RESET_I(1);
    io_ptw_status_upie = VL_RAND_RESET_I(1);
    io_ptw_status_mie = VL_RAND_RESET_I(1);
    io_ptw_status_hie = VL_RAND_RESET_I(1);
    io_ptw_status_sie = VL_RAND_RESET_I(1);
    io_ptw_status_uie = VL_RAND_RESET_I(1);
    io_fpu_inst = VL_RAND_RESET_I(32);
    io_fpu_fromint_data = VL_RAND_RESET_I(32);
    io_fpu_fcsr_rm = VL_RAND_RESET_I(3);
    io_fpu_fcsr_flags_valid = VL_RAND_RESET_I(1);
    io_fpu_fcsr_flags_bits = VL_RAND_RESET_I(5);
    io_fpu_store_data = VL_RAND_RESET_I(32);
    io_fpu_toint_data = VL_RAND_RESET_I(32);
    io_fpu_dmem_resp_val = VL_RAND_RESET_I(1);
    io_fpu_dmem_resp_type = VL_RAND_RESET_I(3);
    io_fpu_dmem_resp_tag = VL_RAND_RESET_I(5);
    io_fpu_dmem_resp_data = VL_RAND_RESET_I(32);
    io_fpu_valid = VL_RAND_RESET_I(1);
    io_fpu_fcsr_rdy = VL_RAND_RESET_I(1);
    io_fpu_nack_mem = VL_RAND_RESET_I(1);
    io_fpu_illegal_rm = VL_RAND_RESET_I(1);
    io_fpu_killx = VL_RAND_RESET_I(1);
    io_fpu_killm = VL_RAND_RESET_I(1);
    io_fpu_dec_cmd = VL_RAND_RESET_I(5);
    io_fpu_dec_ldst = VL_RAND_RESET_I(1);
    io_fpu_dec_wen = VL_RAND_RESET_I(1);
    io_fpu_dec_ren1 = VL_RAND_RESET_I(1);
    io_fpu_dec_ren2 = VL_RAND_RESET_I(1);
    io_fpu_dec_ren3 = VL_RAND_RESET_I(1);
    io_fpu_dec_swap12 = VL_RAND_RESET_I(1);
    io_fpu_dec_swap23 = VL_RAND_RESET_I(1);
    io_fpu_dec_single = VL_RAND_RESET_I(1);
    io_fpu_dec_fromint = VL_RAND_RESET_I(1);
    io_fpu_dec_toint = VL_RAND_RESET_I(1);
    io_fpu_dec_fastpipe = VL_RAND_RESET_I(1);
    io_fpu_dec_fma = VL_RAND_RESET_I(1);
    io_fpu_dec_div = VL_RAND_RESET_I(1);
    io_fpu_dec_sqrt = VL_RAND_RESET_I(1);
    io_fpu_dec_round = VL_RAND_RESET_I(1);
    io_fpu_dec_wflags = VL_RAND_RESET_I(1);
    io_fpu_sboard_set = VL_RAND_RESET_I(1);
    io_fpu_sboard_clr = VL_RAND_RESET_I(1);
    io_fpu_sboard_clra = VL_RAND_RESET_I(5);
    io_fpu_cp_req_ready = VL_RAND_RESET_I(1);
    io_fpu_cp_req_valid = VL_RAND_RESET_I(1);
    io_fpu_cp_req_bits_cmd = VL_RAND_RESET_I(5);
    io_fpu_cp_req_bits_ldst = VL_RAND_RESET_I(1);
    io_fpu_cp_req_bits_wen = VL_RAND_RESET_I(1);
    io_fpu_cp_req_bits_ren1 = VL_RAND_RESET_I(1);
    io_fpu_cp_req_bits_ren2 = VL_RAND_RESET_I(1);
    io_fpu_cp_req_bits_ren3 = VL_RAND_RESET_I(1);
    io_fpu_cp_req_bits_swap12 = VL_RAND_RESET_I(1);
    io_fpu_cp_req_bits_swap23 = VL_RAND_RESET_I(1);
    io_fpu_cp_req_bits_single = VL_RAND_RESET_I(1);
    io_fpu_cp_req_bits_fromint = VL_RAND_RESET_I(1);
    io_fpu_cp_req_bits_toint = VL_RAND_RESET_I(1);
    io_fpu_cp_req_bits_fastpipe = VL_RAND_RESET_I(1);
    io_fpu_cp_req_bits_fma = VL_RAND_RESET_I(1);
    io_fpu_cp_req_bits_div = VL_RAND_RESET_I(1);
    io_fpu_cp_req_bits_sqrt = VL_RAND_RESET_I(1);
    io_fpu_cp_req_bits_round = VL_RAND_RESET_I(1);
    io_fpu_cp_req_bits_wflags = VL_RAND_RESET_I(1);
    io_fpu_cp_req_bits_rm = VL_RAND_RESET_I(3);
    io_fpu_cp_req_bits_typ = VL_RAND_RESET_I(2);
    io_fpu_cp_req_bits_in1 = VL_RAND_RESET_Q(33);
    io_fpu_cp_req_bits_in2 = VL_RAND_RESET_Q(33);
    io_fpu_cp_req_bits_in3 = VL_RAND_RESET_Q(33);
    io_fpu_cp_resp_ready = VL_RAND_RESET_I(1);
    io_fpu_cp_resp_valid = VL_RAND_RESET_I(1);
    io_fpu_cp_resp_bits_data = VL_RAND_RESET_Q(33);
    io_fpu_cp_resp_bits_exc = VL_RAND_RESET_I(5);
    io_rocc_cmd_ready = VL_RAND_RESET_I(1);
    io_rocc_cmd_valid = VL_RAND_RESET_I(1);
    io_rocc_cmd_bits_inst_funct = VL_RAND_RESET_I(7);
    io_rocc_cmd_bits_inst_rs2 = VL_RAND_RESET_I(5);
    io_rocc_cmd_bits_inst_rs1 = VL_RAND_RESET_I(5);
    io_rocc_cmd_bits_inst_xd = VL_RAND_RESET_I(1);
    io_rocc_cmd_bits_inst_xs1 = VL_RAND_RESET_I(1);
    io_rocc_cmd_bits_inst_xs2 = VL_RAND_RESET_I(1);
    io_rocc_cmd_bits_inst_rd = VL_RAND_RESET_I(5);
    io_rocc_cmd_bits_inst_opcode = VL_RAND_RESET_I(7);
    io_rocc_cmd_bits_rs1 = VL_RAND_RESET_I(32);
    io_rocc_cmd_bits_rs2 = VL_RAND_RESET_I(32);
    io_rocc_cmd_bits_status_debug = VL_RAND_RESET_I(1);
    io_rocc_cmd_bits_status_isa = VL_RAND_RESET_I(32);
    io_rocc_cmd_bits_status_prv = VL_RAND_RESET_I(2);
    io_rocc_cmd_bits_status_sd = VL_RAND_RESET_I(1);
    io_rocc_cmd_bits_status_zero3 = VL_RAND_RESET_I(31);
    io_rocc_cmd_bits_status_sd_rv32 = VL_RAND_RESET_I(1);
    io_rocc_cmd_bits_status_zero2 = VL_RAND_RESET_I(2);
    io_rocc_cmd_bits_status_vm = VL_RAND_RESET_I(5);
    io_rocc_cmd_bits_status_zero1 = VL_RAND_RESET_I(4);
    io_rocc_cmd_bits_status_mxr = VL_RAND_RESET_I(1);
    io_rocc_cmd_bits_status_pum = VL_RAND_RESET_I(1);
    io_rocc_cmd_bits_status_mprv = VL_RAND_RESET_I(1);
    io_rocc_cmd_bits_status_xs = VL_RAND_RESET_I(2);
    io_rocc_cmd_bits_status_fs = VL_RAND_RESET_I(2);
    io_rocc_cmd_bits_status_mpp = VL_RAND_RESET_I(2);
    io_rocc_cmd_bits_status_hpp = VL_RAND_RESET_I(2);
    io_rocc_cmd_bits_status_spp = VL_RAND_RESET_I(1);
    io_rocc_cmd_bits_status_mpie = VL_RAND_RESET_I(1);
    io_rocc_cmd_bits_status_hpie = VL_RAND_RESET_I(1);
    io_rocc_cmd_bits_status_spie = VL_RAND_RESET_I(1);
    io_rocc_cmd_bits_status_upie = VL_RAND_RESET_I(1);
    io_rocc_cmd_bits_status_mie = VL_RAND_RESET_I(1);
    io_rocc_cmd_bits_status_hie = VL_RAND_RESET_I(1);
    io_rocc_cmd_bits_status_sie = VL_RAND_RESET_I(1);
    io_rocc_cmd_bits_status_uie = VL_RAND_RESET_I(1);
    io_rocc_resp_ready = VL_RAND_RESET_I(1);
    io_rocc_resp_valid = VL_RAND_RESET_I(1);
    io_rocc_resp_bits_rd = VL_RAND_RESET_I(5);
    io_rocc_resp_bits_data = VL_RAND_RESET_I(32);
    io_rocc_mem_req_ready = VL_RAND_RESET_I(1);
    io_rocc_mem_req_valid = VL_RAND_RESET_I(1);
    io_rocc_mem_req_bits_addr = VL_RAND_RESET_I(32);
    io_rocc_mem_req_bits_tag = VL_RAND_RESET_I(7);
    io_rocc_mem_req_bits_cmd = VL_RAND_RESET_I(5);
    io_rocc_mem_req_bits_typ = VL_RAND_RESET_I(3);
    io_rocc_mem_req_bits_phys = VL_RAND_RESET_I(1);
    io_rocc_mem_req_bits_data = VL_RAND_RESET_I(32);
    io_rocc_mem_s1_kill = VL_RAND_RESET_I(1);
    io_rocc_mem_s1_data = VL_RAND_RESET_I(32);
    io_rocc_mem_s2_nack = VL_RAND_RESET_I(1);
    io_rocc_mem_resp_valid = VL_RAND_RESET_I(1);
    io_rocc_mem_resp_bits_addr = VL_RAND_RESET_I(32);
    io_rocc_mem_resp_bits_tag = VL_RAND_RESET_I(7);
    io_rocc_mem_resp_bits_cmd = VL_RAND_RESET_I(5);
    io_rocc_mem_resp_bits_typ = VL_RAND_RESET_I(3);
    io_rocc_mem_resp_bits_data = VL_RAND_RESET_I(32);
    io_rocc_mem_resp_bits_replay = VL_RAND_RESET_I(1);
    io_rocc_mem_resp_bits_has_data = VL_RAND_RESET_I(1);
    io_rocc_mem_resp_bits_data_word_bypass = VL_RAND_RESET_I(32);
    io_rocc_mem_resp_bits_store_data = VL_RAND_RESET_I(32);
    io_rocc_mem_replay_next = VL_RAND_RESET_I(1);
    io_rocc_mem_xcpt_ma_ld = VL_RAND_RESET_I(1);
    io_rocc_mem_xcpt_ma_st = VL_RAND_RESET_I(1);
    io_rocc_mem_xcpt_pf_ld = VL_RAND_RESET_I(1);
    io_rocc_mem_xcpt_pf_st = VL_RAND_RESET_I(1);
    io_rocc_mem_invalidate_lr = VL_RAND_RESET_I(1);
    io_rocc_mem_ordered = VL_RAND_RESET_I(1);
    io_rocc_busy = VL_RAND_RESET_I(1);
    io_rocc_interrupt = VL_RAND_RESET_I(1);
    io_rocc_autl_acquire_ready = VL_RAND_RESET_I(1);
    io_rocc_autl_acquire_valid = VL_RAND_RESET_I(1);
    io_rocc_autl_acquire_bits_addr_block = VL_RAND_RESET_I(26);
    io_rocc_autl_acquire_bits_client_xact_id = VL_RAND_RESET_I(1);
    io_rocc_autl_acquire_bits_addr_beat = VL_RAND_RESET_I(4);
    io_rocc_autl_acquire_bits_is_builtin_type = VL_RAND_RESET_I(1);
    io_rocc_autl_acquire_bits_a_type = VL_RAND_RESET_I(3);
    io_rocc_autl_acquire_bits_union = VL_RAND_RESET_I(10);
    io_rocc_autl_acquire_bits_data = VL_RAND_RESET_I(32);
    io_rocc_autl_grant_ready = VL_RAND_RESET_I(1);
    io_rocc_autl_grant_valid = VL_RAND_RESET_I(1);
    io_rocc_autl_grant_bits_addr_beat = VL_RAND_RESET_I(4);
    io_rocc_autl_grant_bits_client_xact_id = VL_RAND_RESET_I(1);
    io_rocc_autl_grant_bits_manager_xact_id = VL_RAND_RESET_I(2);
    io_rocc_autl_grant_bits_is_builtin_type = VL_RAND_RESET_I(1);
    io_rocc_autl_grant_bits_g_type = VL_RAND_RESET_I(4);
    io_rocc_autl_grant_bits_data = VL_RAND_RESET_I(32);
    io_rocc_fpu_req_ready = VL_RAND_RESET_I(1);
    io_rocc_fpu_req_valid = VL_RAND_RESET_I(1);
    io_rocc_fpu_req_bits_cmd = VL_RAND_RESET_I(5);
    io_rocc_fpu_req_bits_ldst = VL_RAND_RESET_I(1);
    io_rocc_fpu_req_bits_wen = VL_RAND_RESET_I(1);
    io_rocc_fpu_req_bits_ren1 = VL_RAND_RESET_I(1);
    io_rocc_fpu_req_bits_ren2 = VL_RAND_RESET_I(1);
    io_rocc_fpu_req_bits_ren3 = VL_RAND_RESET_I(1);
    io_rocc_fpu_req_bits_swap12 = VL_RAND_RESET_I(1);
    io_rocc_fpu_req_bits_swap23 = VL_RAND_RESET_I(1);
    io_rocc_fpu_req_bits_single = VL_RAND_RESET_I(1);
    io_rocc_fpu_req_bits_fromint = VL_RAND_RESET_I(1);
    io_rocc_fpu_req_bits_toint = VL_RAND_RESET_I(1);
    io_rocc_fpu_req_bits_fastpipe = VL_RAND_RESET_I(1);
    io_rocc_fpu_req_bits_fma = VL_RAND_RESET_I(1);
    io_rocc_fpu_req_bits_div = VL_RAND_RESET_I(1);
    io_rocc_fpu_req_bits_sqrt = VL_RAND_RESET_I(1);
    io_rocc_fpu_req_bits_round = VL_RAND_RESET_I(1);
    io_rocc_fpu_req_bits_wflags = VL_RAND_RESET_I(1);
    io_rocc_fpu_req_bits_rm = VL_RAND_RESET_I(3);
    io_rocc_fpu_req_bits_typ = VL_RAND_RESET_I(2);
    io_rocc_fpu_req_bits_in1 = VL_RAND_RESET_Q(33);
    io_rocc_fpu_req_bits_in2 = VL_RAND_RESET_Q(33);
    io_rocc_fpu_req_bits_in3 = VL_RAND_RESET_Q(33);
    io_rocc_fpu_resp_ready = VL_RAND_RESET_I(1);
    io_rocc_fpu_resp_valid = VL_RAND_RESET_I(1);
    io_rocc_fpu_resp_bits_data = VL_RAND_RESET_Q(33);
    io_rocc_fpu_resp_bits_exc = VL_RAND_RESET_I(5);
    io_rocc_exception = VL_RAND_RESET_I(1);
    ibuf_io_inst_0_bits_inst_bits_o = VL_RAND_RESET_I(32);
    ibuf_io_inst_0_valid_o = VL_RAND_RESET_I(1);
    ex_reg_valid_o = VL_RAND_RESET_I(1);
    mem_reg_valid_o = VL_RAND_RESET_I(1);
    wb_valid_o = VL_RAND_RESET_I(1);
    wb_reg_valid_o = VL_RAND_RESET_I(1);
    wb_reg_inst_o = VL_RAND_RESET_I(32);
    ex_reg_inst_o = VL_RAND_RESET_I(32);
    mem_reg_inst_o = VL_RAND_RESET_I(32);
    ctrl_killd_o = VL_RAND_RESET_I(1);
    ctrl_killx_o = VL_RAND_RESET_I(1);
    ctrl_killm_o = VL_RAND_RESET_I(1);
    ibuf_io_pc_o = VL_RAND_RESET_I(32);
    wb_reg_pc_o = VL_RAND_RESET_I(32);
    first_valid_pc = VL_RAND_RESET_I(32);
    no_first_valid_pc = VL_RAND_RESET_I(1);
    rf_idx_i = VL_RAND_RESET_I(5);
    rf_idx_o = VL_RAND_RESET_I(32);
    ex_rs_0_o = VL_RAND_RESET_I(32);
    ex_rs_1_o = VL_RAND_RESET_I(32);
    id_rs_0_in_use = VL_RAND_RESET_I(1);
    id_rs_1_in_use = VL_RAND_RESET_I(1);
    x0 = VL_RAND_RESET_I(32);
    x1 = VL_RAND_RESET_I(32);
    x10 = VL_RAND_RESET_I(32);
    x11 = VL_RAND_RESET_I(32);
    x12 = VL_RAND_RESET_I(32);
    x13 = VL_RAND_RESET_I(32);
    x14 = VL_RAND_RESET_I(32);
    x15 = VL_RAND_RESET_I(32);
    x16 = VL_RAND_RESET_I(32);
    x17 = VL_RAND_RESET_I(32);
    x18 = VL_RAND_RESET_I(32);
    x19 = VL_RAND_RESET_I(32);
    x2 = VL_RAND_RESET_I(32);
    x20 = VL_RAND_RESET_I(32);
    x21 = VL_RAND_RESET_I(32);
    x22 = VL_RAND_RESET_I(32);
    x23 = VL_RAND_RESET_I(32);
    x24 = VL_RAND_RESET_I(32);
    x25 = VL_RAND_RESET_I(32);
    x26 = VL_RAND_RESET_I(32);
    x27 = VL_RAND_RESET_I(32);
    x28 = VL_RAND_RESET_I(32);
    x29 = VL_RAND_RESET_I(32);
    x3 = VL_RAND_RESET_I(32);
    x30 = VL_RAND_RESET_I(32);
    x31 = VL_RAND_RESET_I(32);
    x4 = VL_RAND_RESET_I(32);
    x5 = VL_RAND_RESET_I(32);
    x6 = VL_RAND_RESET_I(32);
    x7 = VL_RAND_RESET_I(32);
    x8 = VL_RAND_RESET_I(32);
    x9 = VL_RAND_RESET_I(32);
    __Vm_traceActivity = 0;
}
