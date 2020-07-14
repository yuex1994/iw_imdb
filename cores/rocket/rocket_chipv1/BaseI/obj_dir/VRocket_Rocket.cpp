// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VRocket.h for the primary calling header

#include "VRocket_Rocket.h"
#include "VRocket__Syms.h"

#include "verilated_dpi.h"

//==========

VL_CTOR_IMP(VRocket_Rocket) {
    VL_CELL(ibuf, VRocket_IBuf);
    // Reset internal values
    // Reset structure values
    _ctor_var_reset();
}

void VRocket_Rocket::__Vconfigure(VRocket__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

VRocket_Rocket::~VRocket_Rocket() {
}

void VRocket_Rocket::_settle__TOP__Rocket__1(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      VRocket_Rocket::_settle__TOP__Rocket__1\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    WData/*95:0*/ __Vtemp4[3];
    WData/*95:0*/ __Vtemp6[3];
    WData/*127:0*/ __Vtemp7[4];
    // Body
    vlSymsp->TOP__Rocket.csr_io_rocc_cmd_ready = vlSymsp->TOP__Rocket.__PVT__GEN_224;
    vlSymsp->TOP__Rocket.csr_io_rocc_resp_valid = vlSymsp->TOP__Rocket.__PVT__GEN_225;
    vlSymsp->TOP__Rocket.csr_io_rocc_mem_req_valid 
        = vlSymsp->TOP__Rocket.__PVT__GEN_228;
    vlSymsp->TOP__Rocket.csr_io_rocc_mem_s1_kill = vlSymsp->TOP__Rocket.__PVT__GEN_235;
    vlSymsp->TOP__Rocket.csr_io_rocc_mem_invalidate_lr 
        = vlSymsp->TOP__Rocket.__PVT__GEN_237;
    vlSymsp->TOP__Rocket.csr_io_rocc_busy = vlSymsp->TOP__Rocket.__PVT__GEN_238;
    vlSymsp->TOP__Rocket.csr_io_rocc_autl_acquire_valid 
        = vlSymsp->TOP__Rocket.__PVT__GEN_239;
    vlSymsp->TOP__Rocket.csr_io_rocc_autl_acquire_bits_client_xact_id 
        = vlSymsp->TOP__Rocket.__PVT__GEN_241;
    vlSymsp->TOP__Rocket.csr_io_rocc_autl_acquire_bits_is_builtin_type 
        = vlSymsp->TOP__Rocket.__PVT__GEN_243;
    vlSymsp->TOP__Rocket.csr_io_rocc_autl_grant_ready 
        = vlSymsp->TOP__Rocket.__PVT__GEN_247;
    vlSymsp->TOP__Rocket.csr_io_rocc_fpu_req_valid 
        = vlSymsp->TOP__Rocket.__PVT__GEN_248;
    vlSymsp->TOP__Rocket.csr_io_rocc_fpu_resp_ready 
        = vlSymsp->TOP__Rocket.__PVT__GEN_271;
    vlSymsp->TOP__Rocket.csr_io_hartid = vlTOPp->io_hartid;
    vlSymsp->TOP__Rocket.__PVT__dmem_resp_valid = ((IData)(vlTOPp->io_dmem_resp_valid) 
                                                   & (IData)(vlTOPp->io_dmem_resp_bits_has_data));
    vlSymsp->TOP__Rocket.csr_io_rocc_interrupt = vlTOPp->io_rocc_interrupt;
    vlSymsp->TOP__Rocket.ibuf_io_imem_bits_mask = vlTOPp->io_imem_resp_bits_mask;
    vlSymsp->TOP__Rocket.ibuf_io_imem_bits_xcpt_if 
        = vlTOPp->io_imem_resp_bits_xcpt_if;
    vlSymsp->TOP__Rocket.__PVT__div__DOT__negated_remainder 
        = (IData)((VL_ULL(0x1ffffffff) & VL_NEGATE_Q((QData)((IData)(
                                                                     vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U])))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_147 = (
                                                   (vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[2U] 
                                                    << 0x1fU) 
                                                   | (vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U] 
                                                      >> 1U));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_38 = 
        (VL_ULL(0x7ffffffffffffff) & ((0x40U & ((IData)(1U) 
                                                + (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4807)))
                                       ? (VL_ULL(1) 
                                          + vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4810)
                                       : vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4810));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_142 = (1U 
                                                   & ((vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U] 
                                                       >> 0x1fU) 
                                                      | (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__isMul)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_144 = (1U 
                                                   & ((IData)(
                                                              (vlSymsp->TOP__Rocket.__PVT__div__DOT__divisor 
                                                               >> 0x1fU)) 
                                                      | (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__isMul)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136 = (VL_ULL(0x3ffffffff) 
                                                   & ((VL_ULL(0x1ffffffff) 
                                                       & (((QData)((IData)(
                                                                           vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[2U])) 
                                                           << 0x20U) 
                                                          | (QData)((IData)(
                                                                            vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U])))) 
                                                      - vlSymsp->TOP__Rocket.__PVT__div__DOT__divisor));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[0U] 
        = vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U];
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[1U] 
        = (IData)((VL_ULL(0x1ffffffff) & (((QData)((IData)(
                                                           vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[2U])) 
                                           << 0x1fU) 
                                          | ((QData)((IData)(
                                                             vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U])) 
                                             >> 1U))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[2U] 
        = (IData)(((VL_ULL(0x1ffffffff) & (((QData)((IData)(
                                                            vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[2U])) 
                                            << 0x1fU) 
                                           | ((QData)((IData)(
                                                              vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U])) 
                                              >> 1U))) 
                   >> 0x20U));
    vlSymsp->TOP__Rocket.__PVT__T_6842 = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_valid) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_rocc));
    vlSymsp->TOP__Rocket.__PVT__replay_wb_common = 
        ((IData)(vlTOPp->io_dmem_s2_nack) | (IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_replay));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4804 = 
        ((vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4800 
          << 6U) | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4797)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4814 = 
        ((vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4810 
          << 6U) | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4807)));
    vlSymsp->TOP__Rocket.__PVT__wb_wxd = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_valid) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_wxd));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573 = 
        ((0U == (3U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs)))) 
         | (0U == (3U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs)))));
    vlSymsp->TOP__Rocket.__PVT__wb_dcache_miss = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_mem) 
                                                  & (~ (IData)(vlTOPp->io_dmem_resp_valid)));
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_186 = (1U 
                                                   & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_tmatch) 
                                                      & vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_address));
    vlSymsp->TOP__Rocket.__PVT__T_7399 = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_valid)
                                           ? (IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_csr)
                                           : 0U);
    vlSymsp->TOP__Rocket.__PVT__T_7338 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_xcpt_interrupt) 
                                          | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_xcpt));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5566 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_step) 
         & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_140 = (1U 
                                                   == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_145 = (4U 
                                                   == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_146 = (3U 
                                                   == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state));
    vlSymsp->TOP__Rocket.__PVT__T_7364 = (((~ (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_xcpt)) 
                                           & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rocc)) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_wxd));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5622 = 
        (1U | ((~ vlSymsp->TOP__Rocket.__PVT__wb_reg_pc) 
               | (2U & ((~ (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa 
                            >> 2U)) << 1U))));
    vlSymsp->TOP__Rocket.__PVT__T_7586 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jal) 
                                          | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jalr));
    vlSymsp->TOP__Rocket.__PVT__mem_cfi = (((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_branch) 
                                            | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jalr)) 
                                           | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jal));
    vlSymsp->TOP__Rocket.__PVT__T_6867 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_wxd));
    vlSymsp->TOP__Rocket.__PVT__T_7106 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_branch) 
                                          & vlSymsp->TOP__Rocket.__PVT__mem_reg_wdata);
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_176 = (1U 
                                                   & ((~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)) 
                                                      & (((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_m) 
                                                            << 3U) 
                                                           | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain) 
                                                              << 2U)) 
                                                          | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain) 
                                                              << 1U) 
                                                             | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_u))) 
                                                         >> (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv))));
    vlSymsp->TOP__Rocket.__PVT__T_6914 = ((vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_msb_1 
                                           << 2U) | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_lsb_1));
    vlSymsp->TOP__Rocket.__PVT__GEN_7 = ((3U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_lsb_1))
                                          ? vlTOPp->io_dmem_resp_bits_data_word_bypass
                                          : ((2U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_lsb_1))
                                              ? vlSymsp->TOP__Rocket.__PVT__wb_reg_wdata
                                              : ((1U 
                                                  == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_lsb_1))
                                                  ? vlSymsp->TOP__Rocket.__PVT__mem_reg_wdata
                                                  : 0U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_42 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
          ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_dmode)
          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_dmode));
    vlSymsp->TOP__Rocket.__PVT__T_6909 = ((vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_msb_0 
                                           << 2U) | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_lsb_0));
    vlSymsp->TOP__Rocket.__PVT__GEN_4 = ((3U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_lsb_0))
                                          ? vlTOPp->io_dmem_resp_bits_data_word_bypass
                                          : ((2U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_lsb_0))
                                              ? vlSymsp->TOP__Rocket.__PVT__wb_reg_wdata
                                              : ((1U 
                                                  == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_lsb_0))
                                                  ? vlSymsp->TOP__Rocket.__PVT__mem_reg_wdata
                                                  : 0U)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_213 = (
                                                   (2U 
                                                    == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state)) 
                                                   & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__isMul)));
    vlSymsp->TOP__Rocket.__PVT__T_7360 = (((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid) 
                                           | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_replay)) 
                                          | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_xcpt_interrupt));
    vlSymsp->TOP__Rocket.__PVT__T_7102 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_xcpt_interrupt) 
                                          | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_xcpt));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_150 = (
                                                   (2U 
                                                    == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state)) 
                                                   & (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__isMul));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_205 = (0x3fU 
                                                   & ((IData)(1U) 
                                                      + (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__count)));
    vlSymsp->TOP__Rocket.__PVT__ex_slow_bypass = ((7U 
                                                   == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd)) 
                                                  | ((((0U 
                                                        == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_type)) 
                                                       | (4U 
                                                          == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_type))) 
                                                      | (1U 
                                                         == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_type))) 
                                                     | (5U 
                                                        == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_type))));
    vlSymsp->TOP__Rocket.__PVT__T_7312 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rxs2) 
                                          & ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem) 
                                             | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rocc)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_92 = ((
                                                   (1U 
                                                    == 
                                                    (5U 
                                                     & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))) 
                                                   | (2U 
                                                      == 
                                                      (2U 
                                                       & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)))) 
                                                  | (8U 
                                                     == 
                                                     (8U 
                                                      & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__GEN_8 = (
                                                   (3U 
                                                    == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state))
                                                    ? 
                                                   ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__neg_out)
                                                     ? 4U
                                                     : 5U)
                                                    : 
                                                   ((4U 
                                                     == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state))
                                                     ? 5U
                                                     : 
                                                    ((1U 
                                                      == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state))
                                                      ? 2U
                                                      : (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state))));
    vlSymsp->TOP__Rocket.__PVT__T_7300 = (1U & (((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd) 
                                                 >> 3U) 
                                                | (4U 
                                                   == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd))));
    vlSymsp->TOP__Rocket.__PVT__T_7596 = (VL_ULL(0x1ffffffff) 
                                          & ((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_pc)) 
                                             + (QData)((IData)(
                                                               ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_rvc)
                                                                 ? 0U
                                                                 : 2U)))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_80 = ((0U 
                                                   == 
                                                   (4U 
                                                    & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))) 
                                                  | (8U 
                                                     == 
                                                     (8U 
                                                      & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_103 = (
                                                   (0U 
                                                    == 
                                                    (9U 
                                                     & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))) 
                                                   | (0U 
                                                      == 
                                                      (4U 
                                                       & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))));
    vlSymsp->TOP__Rocket.__PVT__T_6866 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_valid) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_wxd));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_41 = ((5U 
                                                   == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)) 
                                                  | (0xbU 
                                                     == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)));
    vlSymsp->TOP__Rocket.__PVT__T_6996 = ((1U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_alu2))
                                           ? ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rvc)
                                               ? 2U
                                               : 4U)
                                           : 0U);
    vlSymsp->TOP__Rocket.__PVT__T_7002 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_valid) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_div));
    vlSymsp->TOP__Rocket.__PVT__T_6932 = ((2U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm)) 
                                          | (5U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm)));
    vlSymsp->TOP__Rocket.__PVT__T_7615 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_valid) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__priv_sufficient 
        = ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug) 
           | ((0x90U != (0x90U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U))) & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv) 
                                                 >= 
                                                 (3U 
                                                  & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                     >> 0x1cU)))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5326 = 
        (((((((((((((((0x7a0U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U))) 
                      | (0x7a1U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U)))) 
                     | (0x7a2U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                             >> 0x14U)))) 
                    | (0xf13U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))) 
                   | (0xf12U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))) 
                  | (0xf11U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) 
                 | (0xb00U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                         >> 0x14U)))) 
                | (0xb02U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                        >> 0x14U)))) 
               | (0x301U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                       >> 0x14U)))) 
              | (0x300U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) 
             | (0x305U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                     >> 0x14U)))) | 
            (0x344U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0x304U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U)))) 
          | (0x303U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0x302U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U))));
    vlSymsp->TOP__Rocket.__PVT__ex_pc_valid = (((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_valid) 
                                                | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_replay)) 
                                               | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_xcpt_interrupt));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4970 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_debugint) 
         & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)));
    vlSymsp->TOP__Rocket.__PVT__T_7592 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jalr) 
                                          & (1U == 
                                             (0x19U 
                                              & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                 >> 0xfU))));
    vlSymsp->TOP__Rocket.__PVT__T_7173 = ((0x800U & 
                                           (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                            >> 0x14U)) 
                                          | (0x7ffU 
                                             & VL_NEGATE_I((IData)(
                                                                   (1U 
                                                                    & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                                       >> 0x1fU))))));
    vlSymsp->TOP__Rocket.__PVT__T_6919 = ((5U != (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm)) 
                                          & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                             >> 0x1fU));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6036 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_fflags) 
         | (IData)(vlSymsp->TOP__Rocket.io_fpu_fcsr_flags_bits));
    vlSymsp->TOP__Rocket.__PVT__fpu_kill_mem = (((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid) 
                                                 & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rocc)) 
                                                & (IData)(vlSymsp->TOP__Rocket.io_fpu_nack_mem));
    vlSymsp->TOP__Rocket.__PVT__T_7324 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem) 
                                          & (IData)(vlSymsp->TOP__Rocket.io_dmem_xcpt_pf_st));
    vlSymsp->TOP__Rocket.__PVT__T_7320 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem) 
                                          & (IData)(vlSymsp->TOP__Rocket.io_dmem_xcpt_ma_st));
    vlSymsp->TOP__Rocket.__PVT__T_7322 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem) 
                                          & (IData)(vlSymsp->TOP__Rocket.io_dmem_xcpt_ma_ld));
    vlSymsp->TOP__Rocket.__PVT__T_7379 = (((IData)(vlSymsp->TOP__Rocket.__PVT__dmem_resp_valid) 
                                           & (IData)(vlTOPp->io_dmem_resp_bits_replay)) 
                                          & (~ (IData)(vlTOPp->io_dmem_resp_bits_tag)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4839 = 
        ((((((IData)(vlSymsp->TOP__Rocket.csr_io_rocc_interrupt) 
             << 0xcU) | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_meip) 
                         << 0xbU)) | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_heip) 
                                       << 0xaU) | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_seip) 
                                                   << 9U))) 
          | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_ueip) 
              << 8U) | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_mtip) 
                         << 7U) | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_htip) 
                                   << 6U)))) | ((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_stip) 
                                                  << 5U) 
                                                 | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_utip) 
                                                     << 4U) 
                                                    | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_msip) 
                                                       << 3U))) 
                                                | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_hsip) 
                                                    << 2U) 
                                                   | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_ssip) 
                                                       << 1U) 
                                                      | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_usip)))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_228[0U] 
        = ((0xfffffffeU & ((IData)((((QData)((IData)(
                                                     ((1U 
                                                       & (IData)(
                                                                 (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136 
                                                                  >> 0x20U)))
                                                       ? 
                                                      vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U]
                                                       : (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136)))) 
                                     << 0x20U) | (QData)((IData)(
                                                                 vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U])))) 
                           << 1U)) | (1U & (~ (IData)(
                                                      (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136 
                                                       >> 0x20U)))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_228[1U] 
        = ((1U & ((IData)((((QData)((IData)(((1U & (IData)(
                                                           (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136 
                                                            >> 0x20U)))
                                              ? vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U]
                                              : (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136)))) 
                            << 0x20U) | (QData)((IData)(
                                                        vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U])))) 
                  >> 0x1fU)) | (0xfffffffeU & ((IData)(
                                                       ((((QData)((IData)(
                                                                          ((1U 
                                                                            & (IData)(
                                                                                (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136 
                                                                                >> 0x20U)))
                                                                            ? 
                                                                           vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U]
                                                                            : (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136)))) 
                                                          << 0x20U) 
                                                         | (QData)((IData)(
                                                                           vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U]))) 
                                                        >> 0x20U)) 
                                               << 1U)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_228[2U] 
        = (1U & ((IData)(((((QData)((IData)(((1U & (IData)(
                                                           (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136 
                                                            >> 0x20U)))
                                              ? vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U]
                                              : (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136)))) 
                            << 0x20U) | (QData)((IData)(
                                                        vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U]))) 
                          >> 0x20U)) >> 0x1fU));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_470 = (
                                                   ((0U 
                                                     == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__count)) 
                                                    & (~ (IData)(
                                                                 (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136 
                                                                  >> 0x20U)))) 
                                                   & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__isHi)));
    __Vtemp4[1U] = ((0x7fffffffU & ((IData)((VL_ULL(0x3ffffffff) 
                                             & ((VL_ULL(0x7ffffffff) 
                                                 & VL_EXTENDS_QQ(35,34, 
                                                                 (VL_ULL(0x3ffffffff) 
                                                                  & VL_MULS_QQQ(34,34,34, 
                                                                                (VL_ULL(0x3ffffffff) 
                                                                                & VL_EXTENDS_QQ(34,33, vlSymsp->TOP__Rocket.__PVT__div__DOT__divisor)), (QData)((IData)(
                                                                                (1U 
                                                                                & vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[0U]))))))) 
                                                + (VL_ULL(0x7ffffffff) 
                                                   & VL_EXTENDS_QQ(35,34, 
                                                                   (((QData)((IData)(
                                                                                (1U 
                                                                                & vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[2U]))) 
                                                                     << 0x21U) 
                                                                    | (VL_ULL(0x1ffffffff) 
                                                                       & (((QData)((IData)(
                                                                                vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[2U])) 
                                                                           << 0x20U) 
                                                                          | (QData)((IData)(
                                                                                vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[1U])))))))))) 
                                    >> 1U)) | (0x80000000U 
                                               & ((IData)(
                                                          ((VL_ULL(0x3ffffffff) 
                                                            & ((VL_ULL(0x7ffffffff) 
                                                                & VL_EXTENDS_QQ(35,34, 
                                                                                (VL_ULL(0x3ffffffff) 
                                                                                & VL_MULS_QQQ(34,34,34, 
                                                                                (VL_ULL(0x3ffffffff) 
                                                                                & VL_EXTENDS_QQ(34,33, vlSymsp->TOP__Rocket.__PVT__div__DOT__divisor)), (QData)((IData)(
                                                                                (1U 
                                                                                & vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[0U]))))))) 
                                                               + 
                                                               (VL_ULL(0x7ffffffff) 
                                                                & VL_EXTENDS_QQ(35,34, 
                                                                                (((QData)((IData)(
                                                                                (1U 
                                                                                & vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[2U]))) 
                                                                                << 0x21U) 
                                                                                | (VL_ULL(0x1ffffffff) 
                                                                                & (((QData)((IData)(
                                                                                vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[2U])) 
                                                                                << 0x20U) 
                                                                                | (QData)((IData)(
                                                                                vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[1U]))))))))) 
                                                           >> 0x20U)) 
                                                  << 0x1fU)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[0U] 
        = ((0x80000000U & ((IData)((VL_ULL(0x3ffffffff) 
                                    & ((VL_ULL(0x7ffffffff) 
                                        & VL_EXTENDS_QQ(35,34, 
                                                        (VL_ULL(0x3ffffffff) 
                                                         & VL_MULS_QQQ(34,34,34, 
                                                                       (VL_ULL(0x3ffffffff) 
                                                                        & VL_EXTENDS_QQ(34,33, vlSymsp->TOP__Rocket.__PVT__div__DOT__divisor)), (QData)((IData)(
                                                                                (1U 
                                                                                & vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[0U]))))))) 
                                       + (VL_ULL(0x7ffffffff) 
                                          & VL_EXTENDS_QQ(35,34, 
                                                          (((QData)((IData)(
                                                                            (1U 
                                                                             & vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[2U]))) 
                                                            << 0x21U) 
                                                           | (VL_ULL(0x1ffffffff) 
                                                              & (((QData)((IData)(
                                                                                vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[2U])) 
                                                                  << 0x20U) 
                                                                 | (QData)((IData)(
                                                                                vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[1U])))))))))) 
                           << 0x1fU)) | (0x7fffffffU 
                                         & ((vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[1U] 
                                             << 0x1fU) 
                                            | (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[0U] 
                                               >> 1U))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[1U] 
        = __Vtemp4[1U];
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[2U] 
        = (0x7fffffffU & ((IData)(((VL_ULL(0x3ffffffff) 
                                    & ((VL_ULL(0x7ffffffff) 
                                        & VL_EXTENDS_QQ(35,34, 
                                                        (VL_ULL(0x3ffffffff) 
                                                         & VL_MULS_QQQ(34,34,34, 
                                                                       (VL_ULL(0x3ffffffff) 
                                                                        & VL_EXTENDS_QQ(34,33, vlSymsp->TOP__Rocket.__PVT__div__DOT__divisor)), (QData)((IData)(
                                                                                (1U 
                                                                                & vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[0U]))))))) 
                                       + (VL_ULL(0x7ffffffff) 
                                          & VL_EXTENDS_QQ(35,34, 
                                                          (((QData)((IData)(
                                                                            (1U 
                                                                             & vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[2U]))) 
                                                            << 0x21U) 
                                                           | (VL_ULL(0x1ffffffff) 
                                                              & (((QData)((IData)(
                                                                                vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[2U])) 
                                                                  << 0x20U) 
                                                                 | (QData)((IData)(
                                                                                vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[1U]))))))))) 
                                   >> 0x20U)) >> 1U));
    vlSymsp->TOP__Rocket.__PVT__T_7634 = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6842) 
                                          & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__replay_wb_common)));
    vlSymsp->TOP__Rocket.__PVT__replay_wb = ((IData)(vlSymsp->TOP__Rocket.__PVT__replay_wb_common) 
                                             | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6842) 
                                                & (~ (IData)(vlTOPp->io_rocc_cmd_ready))));
    __Vtemp6[1U] = ((0x3fffU & ((IData)((((QData)((IData)(
                                                          ((vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero3 
                                                            << 1U) 
                                                           | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573)))) 
                                          << 2U) | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs)))) 
                                >> 0x12U)) | (0xffffc000U 
                                              & ((0xffff0000U 
                                                  & ((IData)(
                                                             ((((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)) 
                                                                << 0x23U) 
                                                               | ((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa)) 
                                                                  << 3U)) 
                                                              | (QData)((IData)(
                                                                                (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv) 
                                                                                << 1U) 
                                                                                | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573)))))) 
                                                     << 0x10U)) 
                                                 | ((IData)(
                                                            ((((QData)((IData)(
                                                                               ((vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero3 
                                                                                << 1U) 
                                                                                | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573)))) 
                                                               << 2U) 
                                                              | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs))) 
                                                             >> 0x20U)) 
                                                    << 0xeU))));
    __Vtemp6[2U] = ((0x3fffU & ((0x3fffU & ((IData)(
                                                    ((((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)) 
                                                       << 0x23U) 
                                                      | ((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa)) 
                                                         << 3U)) 
                                                     | (QData)((IData)(
                                                                       (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv) 
                                                                         << 1U) 
                                                                        | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573)))))) 
                                            >> 0x10U)) 
                                | ((IData)(((((QData)((IData)(
                                                              ((vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero3 
                                                                << 1U) 
                                                               | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573)))) 
                                              << 2U) 
                                             | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs))) 
                                            >> 0x20U)) 
                                   >> 0x12U))) | (0xffffc000U 
                                                  & ((0xc000U 
                                                      & ((IData)(
                                                                 ((((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)) 
                                                                    << 0x23U) 
                                                                   | ((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa)) 
                                                                      << 3U)) 
                                                                  | (QData)((IData)(
                                                                                (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv) 
                                                                                << 1U) 
                                                                                | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573)))))) 
                                                         >> 0x10U)) 
                                                     | (0xffff0000U 
                                                        & ((IData)(
                                                                   (((((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)) 
                                                                       << 0x23U) 
                                                                      | ((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa)) 
                                                                         << 3U)) 
                                                                     | (QData)((IData)(
                                                                                (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv) 
                                                                                << 1U) 
                                                                                | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573))))) 
                                                                    >> 0x20U)) 
                                                           << 0x10U)))));
    __Vtemp7[0U] = ((0xffff8000U & ((0xe0000000U & 
                                     ((IData)((((QData)((IData)(
                                                                ((vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero3 
                                                                  << 1U) 
                                                                 | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573)))) 
                                                << 2U) 
                                               | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs)))) 
                                      << 0x1dU)) | 
                                    ((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_vm) 
                                       << 0x18U) | 
                                      (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero1) 
                                        << 0x14U) | 
                                       ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh) 
                                        << 0x13U))) 
                                     | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh) 
                                         << 0x12U) 
                                        | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mprv) 
                                            << 0x11U) 
                                           | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs) 
                                              << 0xfU)))))) 
                    | (((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs) 
                          << 0xdU) | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp) 
                                       << 0xbU) | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs) 
                                                   << 9U))) 
                        | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_spp) 
                            << 8U) | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie) 
                                       << 7U) | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh) 
                                                 << 6U)))) 
                       | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh) 
                           << 5U) | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh) 
                                      << 4U) | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie) 
                                                 << 3U) 
                                                | (7U 
                                                   & VL_NEGATE_I((IData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh)))))))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5004[0U] 
        = __Vtemp7[0U];
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5004[1U] 
        = ((0x7fffU & ((0x7fffU & ((IData)((((QData)((IData)(
                                                             ((vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero3 
                                                               << 1U) 
                                                              | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573)))) 
                                             << 2U) 
                                            | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs)))) 
                                   >> 3U)) | ((0x7fffU 
                                               & (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_vm) 
                                                   >> 8U) 
                                                  | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero1) 
                                                      >> 0xcU) 
                                                     | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh) 
                                                        >> 0xdU)))) 
                                              | ((0x7fffU 
                                                  & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh) 
                                                     >> 0xeU)) 
                                                 | ((0x7fffU 
                                                     & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mprv) 
                                                        >> 0xfU)) 
                                                    | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs) 
                                                       >> 0x11U)))))) 
           | (0xffff8000U & (__Vtemp6[1U] << 0xfU)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5004[2U] 
        = ((0x7fffU & (__Vtemp6[1U] >> 0x11U)) | (0xffff8000U 
                                                  & (__Vtemp6[2U] 
                                                     << 0xfU)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5004[3U] 
        = (0x7fffU & (__Vtemp6[2U] >> 0x11U));
    vlSymsp->TOP__Rocket.__PVT__wb_set_sboard = (((IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_div) 
                                                  | (IData)(vlSymsp->TOP__Rocket.__PVT__wb_dcache_miss)) 
                                                 | (IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_rocc));
    vlSymsp->TOP__Rocket.__PVT__replay_ex = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_replay) 
                                             | ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_valid) 
                                                & ((((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem) 
                                                     & (~ (IData)(vlTOPp->io_dmem_req_ready))) 
                                                    | ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_div) 
                                                       & (0U 
                                                          != (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state)))) 
                                                   | ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_dcache_miss) 
                                                      & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_load_use)))));
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_188 = ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_186) 
                                                   & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_address 
                                                      >> 1U));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__cpu_ren = 
        ((0U != (IData)(vlSymsp->TOP__Rocket.__PVT__T_7399)) 
         & (4U != (IData)(vlSymsp->TOP__Rocket.__PVT__T_7399)));
    vlSymsp->TOP__Rocket.__PVT__T_6870 = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6867) 
                                          & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem)));
    vlSymsp->TOP__Rocket.__PVT__dcache_kill_mem = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6867) 
                                                   & (IData)(vlTOPp->io_dmem_replay_next));
    vlSymsp->TOP__Rocket.__PVT__mem_cfi_taken = (((IData)(vlSymsp->TOP__Rocket.__PVT__T_7106) 
                                                  | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jalr)) 
                                                 | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jal));
    vlSymsp->TOP__Rocket.__PVT__ex_rs_1 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_bypass_1)
                                            ? vlSymsp->TOP__Rocket.__PVT__GEN_7
                                            : vlSymsp->TOP__Rocket.__PVT__T_6914);
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6341 = 
        (1U & ((~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_42)) 
               | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5920 = 
        ((((0x7a0U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                 >> 0x14U))) & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)) 
          | ((0x7a1U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                   >> 0x14U))) ? ((
                                                   (((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                        ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_ttype)
                                                        : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_ttype)) 
                                                      << 0x1cU) 
                                                     | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_42) 
                                                        << 0x1bU)) 
                                                    | ((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                          ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_maskmax)
                                                          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_maskmax)) 
                                                        << 0x15U) 
                                                       | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                            ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_reserved)
                                                            : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_reserved)) 
                                                          << 0xdU))) 
                                                   | (((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                          ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_action)
                                                          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_action)) 
                                                        << 0xcU) 
                                                       | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                            ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_chain)
                                                            : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)) 
                                                          << 0xbU)) 
                                                      | ((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                            ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_zero)
                                                            : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_zero)) 
                                                          << 9U) 
                                                         | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                              ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_tmatch)
                                                              : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_tmatch)) 
                                                            << 7U)))) 
                                                  | ((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                          ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_m)
                                                          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_m)) 
                                                        << 6U) 
                                                       | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                            ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_h)
                                                            : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)) 
                                                          << 5U)) 
                                                      | ((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                            ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_s)
                                                            : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)) 
                                                          << 4U) 
                                                         | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                              ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_u)
                                                              : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_u)) 
                                                            << 3U))) 
                                                     | ((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                           ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_x)
                                                           : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_x)) 
                                                         << 2U) 
                                                        | ((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                              ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_w)
                                                              : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_w)) 
                                                            << 1U) 
                                                           | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                               ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_r)
                                                               : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_r))))))
              : 0U)) | ((0x7a2U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U)))
                         ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                             ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_address
                             : vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_address)
                         : 0U));
    vlSymsp->TOP__Rocket.__PVT__ex_rs_0 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_bypass_0)
                                            ? vlSymsp->TOP__Rocket.__PVT__GEN_4
                                            : vlSymsp->TOP__Rocket.__PVT__T_6909);
    vlSymsp->TOP__Rocket.__PVT__ex_xcpt = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7102) 
                                           | ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rocc) 
                                              & (IData)(vlSymsp->TOP__Rocket.io_fpu_illegal_rm)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__GEN_12 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_150)
          ? ((0x1fU == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__count))
              ? ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__isHi)
                  ? 3U : 5U) : (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__GEN_8))
          : (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__GEN_8));
    vlSymsp->TOP__Rocket.__PVT__T_7302 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem) 
                                          & ((((0U 
                                                == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd)) 
                                               | (6U 
                                                  == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd))) 
                                              | (7U 
                                                 == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd))) 
                                             | (IData)(vlSymsp->TOP__Rocket.__PVT__T_7300)));
    vlSymsp->TOP__Rocket.__PVT__T_7310 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem) 
                                          & (((1U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd)) 
                                              | (7U 
                                                 == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd))) 
                                             | (IData)(vlSymsp->TOP__Rocket.__PVT__T_7300)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_474 = (
                                                   (0U 
                                                    == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state)) 
                                                   & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7002));
    vlSymsp->TOP__Rocket.__PVT__T_7518 = ((~ (IData)(vlTOPp->io_dmem_req_ready)) 
                                          & ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7615) 
                                             | (IData)(vlSymsp->TOP__Rocket.__PVT__dcache_blocked)));
    vlSymsp->TOP__Rocket.__PVT__id_mem_busy = (1U & 
                                               ((~ (IData)(vlTOPp->io_dmem_ordered)) 
                                                | (IData)(vlSymsp->TOP__Rocket.__PVT__T_7615)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__do_system_insn 
        = ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__priv_sufficient) 
           & (4U == (IData)(vlSymsp->TOP__Rocket.__PVT__T_7399)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5341 = 
        ((((((((((((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5326) 
                       | (0x340U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))) 
                      | (0x341U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U)))) 
                     | (0x343U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                             >> 0x14U)))) 
                    | (0x342U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))) 
                   | (0xf14U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))) 
                  | (0x7b0U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) 
                 | (0x7b1U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                         >> 0x14U)))) 
                | (0x7b2U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                        >> 0x14U)))) 
               | (0x323U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                       >> 0x14U)))) 
              | (0xb03U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) 
             | (0xc03U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                     >> 0x14U)))) | 
            (0x324U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0xb04U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U)))) 
          | (0xc04U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0x325U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U))));
    vlSymsp->TOP__Rocket.__PVT__T_7254 = (VL_ULL(0x1ffffffff) 
                                          & (VL_EXTENDS_QI(33,32, vlSymsp->TOP__Rocket.__PVT__mem_reg_pc) 
                                             + VL_EXTENDS_QI(33,32, 
                                                             ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7106)
                                                               ? 
                                                              ((((IData)(vlSymsp->TOP__Rocket.__PVT__T_7173) 
                                                                 << 0x14U) 
                                                                | ((0xff000U 
                                                                    & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                                                >> 0x1fU)))) 
                                                                       << 0xcU)) 
                                                                   | (0x800U 
                                                                      & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                                         << 4U)))) 
                                                               | ((0x7e0U 
                                                                   & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                                      >> 0x14U)) 
                                                                  | (0x1eU 
                                                                     & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                                        >> 7U))))
                                                               : 
                                                              ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jal)
                                                                ? 
                                                               ((((IData)(vlSymsp->TOP__Rocket.__PVT__T_7173) 
                                                                  << 0x14U) 
                                                                 | ((0xff000U 
                                                                     & vlSymsp->TOP__Rocket.__PVT__mem_reg_inst) 
                                                                    | (0x800U 
                                                                       & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                                          >> 9U)))) 
                                                                | (0x7feU 
                                                                   & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                                      >> 0x14U)))
                                                                : 
                                                               ((0xfffffff0U 
                                                                 & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_rvc)
                                                                                 ? 2U
                                                                                 : 4U) 
                                                                                >> 3U)))) 
                                                                    << 4U)) 
                                                                | ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_rvc)
                                                                    ? 2U
                                                                    : 4U)))))));
    vlSymsp->TOP__Rocket.__PVT__T_6983 = (((((IData)(vlSymsp->TOP__Rocket.__PVT__T_6919) 
                                             << 0x1fU) 
                                            | (0x7ff00000U 
                                               & (((2U 
                                                    == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm))
                                                    ? 
                                                   (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                    >> 0x14U)
                                                    : 
                                                   VL_NEGATE_I((IData)((IData)(vlSymsp->TOP__Rocket.__PVT__T_6919)))) 
                                                  << 0x14U))) 
                                           | ((0xff000U 
                                               & ((((2U 
                                                     != (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm)) 
                                                    & (3U 
                                                       != (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm)))
                                                    ? 
                                                   VL_NEGATE_I((IData)((IData)(vlSymsp->TOP__Rocket.__PVT__T_6919)))
                                                    : 
                                                   (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                    >> 0xcU)) 
                                                  << 0xcU)) 
                                              | (0x800U 
                                                 & (((~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_6932)) 
                                                     & ((3U 
                                                         == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm))
                                                         ? 
                                                        (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                         >> 0x14U)
                                                         : 
                                                        ((1U 
                                                          == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm))
                                                          ? 
                                                         (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                          >> 7U)
                                                          : (IData)(vlSymsp->TOP__Rocket.__PVT__T_6919)))) 
                                                    << 0xbU)))) 
                                          | ((((IData)(vlSymsp->TOP__Rocket.__PVT__T_6932)
                                                ? 0U
                                                : (0x3fU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                      >> 0x19U))) 
                                              << 5U) 
                                             | ((((2U 
                                                   == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm))
                                                   ? 0U
                                                   : 
                                                  (0xfU 
                                                   & (((0U 
                                                        == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm)) 
                                                       | (1U 
                                                          == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm)))
                                                       ? 
                                                      (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                       >> 8U)
                                                       : 
                                                      ((5U 
                                                        == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm))
                                                        ? 
                                                       (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                        >> 0x10U)
                                                        : 
                                                       (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                        >> 0x15U))))) 
                                                 << 1U) 
                                                | (1U 
                                                   & ((0U 
                                                       == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm))
                                                       ? 
                                                      (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                       >> 7U)
                                                       : 
                                                      ((4U 
                                                        == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm))
                                                        ? 
                                                       (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                        >> 0x14U)
                                                        : 
                                                       ((5U 
                                                         == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm)) 
                                                        & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                           >> 0xfU))))))));
    vlSymsp->TOP__Rocket.__PVT__GEN_154 = (0x1fU & 
                                           ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7379)
                                             ? ((IData)(vlTOPp->io_dmem_resp_bits_tag) 
                                                >> 1U)
                                             : (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__req_tag)));
    vlSymsp->TOP__Rocket.__PVT__GEN_153 = (1U & ((~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7379)) 
                                                 & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__wb_wxd))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__pending_interrupts 
        = (0x888U & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4839) 
                     & vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mie));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_202[0U] 
        = (IData)((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[0U])));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_202[1U] 
        = ((0xfffffffeU & ((IData)((VL_ULL(0x1ffffffff) 
                                    & (((QData)((IData)(
                                                        vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[2U])) 
                                        << 0x20U) | (QData)((IData)(
                                                                    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[1U]))))) 
                           << 1U)) | (IData)(((QData)((IData)(
                                                              vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[0U])) 
                                              >> 0x20U)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_202[2U] 
        = ((1U & ((IData)((VL_ULL(0x1ffffffff) & (((QData)((IData)(
                                                                   vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[2U])) 
                                                   << 0x20U) 
                                                  | (QData)((IData)(
                                                                    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[1U]))))) 
                  >> 0x1fU)) | (0xfffffffeU & ((IData)(
                                                       ((VL_ULL(0x1ffffffff) 
                                                         & (((QData)((IData)(
                                                                             vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[2U])) 
                                                             << 0x20U) 
                                                            | (QData)((IData)(
                                                                              vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[1U])))) 
                                                        >> 0x20U)) 
                                               << 1U)));
    vlSymsp->TOP__Rocket.__PVT__T_7526 = (((~ (IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_xcpt)) 
                                           & (~ (IData)(vlTOPp->io_rocc_cmd_ready))) 
                                          & ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7634) 
                                             | (IData)(vlSymsp->TOP__Rocket.__PVT__rocc_blocked)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5578 = 
        (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5004[0U] 
         >> (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv));
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_193 = (
                                                   ((0xfffffff8U 
                                                     & (((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_188) 
                                                         << 3U) 
                                                        & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_address 
                                                           << 1U))) 
                                                    | ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_188) 
                                                       << 2U)) 
                                                   | (((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_186) 
                                                       << 1U) 
                                                      | (1U 
                                                         & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_tmatch))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__cpu_wen = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__cpu_ren) 
         & (5U != (IData)(vlSymsp->TOP__Rocket.__PVT__T_7399)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__rhs_sign 
        = ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_103) 
           & (vlSymsp->TOP__Rocket.__PVT__ex_rs_1 >> 0x1fU));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5932 = 
        ((((((((((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5920)) 
                 | ((0xb00U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))
                     ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4814
                     : VL_ULL(0))) | ((0xb02U == (0xfffU 
                                                  & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                     >> 0x14U)))
                                       ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4804
                                       : VL_ULL(0))) 
               | (QData)((IData)(((0x301U == (0xfffU 
                                              & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                 >> 0x14U)))
                                   ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa
                                   : 0U)))) | (QData)((IData)(
                                                              ((0x300U 
                                                                == 
                                                                (0xfffU 
                                                                 & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                    >> 0x14U)))
                                                                ? 
                                                               vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5004[0U]
                                                                : 0U)))) 
             | (QData)((IData)(((0x305U == (0xfffU 
                                            & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))
                                 ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mtvec
                                 : 0U)))) | (QData)((IData)(
                                                            ((0x344U 
                                                              == 
                                                              (0xfffU 
                                                               & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                  >> 0x14U)))
                                                              ? 
                                                             (0x888U 
                                                              & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4839))
                                                              : 0U)))) 
           | (QData)((IData)(((0x304U == (0xfffU & 
                                          (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))
                               ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mie
                               : 0U)))) | (QData)((IData)(
                                                          ((0x303U 
                                                            == 
                                                            (0xfffU 
                                                             & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                >> 0x14U)))
                                                            ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mscounteren
                                                            : 0U)))) 
         | (QData)((IData)(((0x302U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                  >> 0x14U)))
                             ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_medeleg
                             : 0U))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__lhs_sign 
        = (((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_103) 
            | (0U == (3U & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)))) 
           & (vlSymsp->TOP__Rocket.__PVT__ex_rs_0 >> 0x1fU));
    vlSymsp->TOP__Rocket.__PVT__ex_op1 = ((1U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_alu1))
                                           ? vlSymsp->TOP__Rocket.__PVT__ex_rs_0
                                           : ((2U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_alu1))
                                               ? vlSymsp->TOP__Rocket.__PVT__ex_reg_pc
                                               : 0U));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_wfi 
        = (7U & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__do_system_insn) 
                 & (((IData)(1U) << (7U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U))) 
                    >> 5U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_sfence_vm 
        = (0xfU & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__do_system_insn) 
                   & (((IData)(1U) << (7U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                             >> 0x14U))) 
                      >> 4U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret 
        = (0x3fU & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__do_system_insn) 
                    & (((IData)(1U) << (7U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U))) 
                       >> 2U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_call 
        = (0xffU & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__do_system_insn) 
                    & ((IData)(1U) << (7U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                             >> 0x14U)))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_break 
        = (0x7fU & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__do_system_insn) 
                    & (((IData)(1U) << (7U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U))) 
                       >> 1U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5356 = 
        ((((((((((((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5341) 
                       | (0xb05U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))) 
                      | (0xc05U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U)))) 
                     | (0x326U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                             >> 0x14U)))) 
                    | (0xb06U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))) 
                   | (0xc06U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))) 
                  | (0x327U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) 
                 | (0xb07U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                         >> 0x14U)))) 
                | (0xc07U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                        >> 0x14U)))) 
               | (0x328U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                       >> 0x14U)))) 
              | (0xb08U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) 
             | (0xc08U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                     >> 0x14U)))) | 
            (0x329U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0xb09U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U)))) 
          | (0xc09U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0x32aU 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U))));
    vlSymsp->TOP__Rocket.__PVT__T_7257 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jalr)
                                           ? vlSymsp->TOP__Rocket.__PVT__mem_reg_wdata
                                           : (IData)(vlSymsp->TOP__Rocket.__PVT__T_7254));
    vlSymsp->TOP__Rocket.__PVT__ex_op2 = ((2U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_alu2))
                                           ? vlSymsp->TOP__Rocket.__PVT__ex_rs_1
                                           : ((3U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_alu2))
                                               ? vlSymsp->TOP__Rocket.__PVT__T_6983
                                               : ((0xfffffff0U 
                                                   & (VL_NEGATE_I((IData)(
                                                                          (1U 
                                                                           & ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6996) 
                                                                              >> 3U)))) 
                                                      << 4U)) 
                                                  | (IData)(vlSymsp->TOP__Rocket.__PVT__T_6996))));
    vlSymsp->TOP__Rocket.__PVT__GEN_155 = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7379) 
                                           | ((IData)(vlSymsp->TOP__Rocket.__PVT__GEN_153) 
                                              & (5U 
                                                 == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts 
        = ((((~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)) 
             & ((3U > (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv)) 
                | ((3U == (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv)) 
                   & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie))))
             ? (vlSymsp->TOP__Rocket.__PVT__csr__DOT__pending_interrupts 
                & (~ vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mscounteren))
             : 0U) | (((~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)) 
                       & ((1U > (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv)) 
                          | ((1U == (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv)) 
                             & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh))))
                       ? (vlSymsp->TOP__Rocket.__PVT__csr__DOT__pending_interrupts 
                          & vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mscounteren)
                       : 0U));
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_206 = (
                                                   (~ vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_address) 
                                                   | (IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_193));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen = (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__cpu_wen) 
                                                  & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__priv_sufficient)) 
                                                 & (0U 
                                                    != 
                                                    (3U 
                                                     & (~ 
                                                        (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                         >> 0x1eU)))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_486 = (
                                                   ((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__rhs_sign)) 
                                                    << 0x20U) 
                                                   | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__ex_rs_1)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5939 = 
        (((((((vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5932 
               | (QData)((IData)(((0x340U == (0xfffU 
                                              & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                 >> 0x14U)))
                                   ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mscratch
                                   : 0U)))) | (QData)((IData)(
                                                              ((0x341U 
                                                                == 
                                                                (0xfffU 
                                                                 & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                    >> 0x14U)))
                                                                ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mepc
                                                                : 0U)))) 
             | (QData)((IData)(((0x343U == (0xfffU 
                                            & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))
                                 ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mbadaddr
                                 : 0U)))) | (QData)((IData)(
                                                            ((0x342U 
                                                              == 
                                                              (0xfffU 
                                                               & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                  >> 0x14U)))
                                                              ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mcause
                                                              : 0U)))) 
           | (QData)((IData)(((0xf14U == (0xfffU & 
                                          (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))
                               ? vlSymsp->TOP__Rocket.csr_io_hartid
                               : 0U)))) | (QData)((IData)(
                                                          ((0x7b0U 
                                                            == 
                                                            (0xfffU 
                                                             & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                >> 0x14U)))
                                                            ? 
                                                           ((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_xdebugver) 
                                                                << 0x1eU) 
                                                               | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ndreset) 
                                                                   << 0x1dU) 
                                                                  | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_fullreset) 
                                                                     << 0x1cU))) 
                                                              | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_zero3) 
                                                                  << 0x10U) 
                                                                 | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakm) 
                                                                    << 0xfU))) 
                                                             | ((0x6000U 
                                                                 & (VL_NEGATE_I((IData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh))) 
                                                                    << 0xdU)) 
                                                                | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreaku) 
                                                                    << 0xcU) 
                                                                   | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_zero2) 
                                                                      << 0xbU)))) 
                                                            | (((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_stopcycle) 
                                                                  << 0xaU) 
                                                                 | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_stoptime) 
                                                                    << 9U)) 
                                                                | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_cause) 
                                                                    << 6U) 
                                                                   | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_debugint) 
                                                                      << 5U))) 
                                                               | ((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_zero1) 
                                                                    << 4U) 
                                                                   | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_halt) 
                                                                      << 3U)) 
                                                                  | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_step) 
                                                                      << 2U) 
                                                                     | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_prv)))))
                                                            : 0U)))) 
         | (QData)((IData)(((0x7b1U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                  >> 0x14U)))
                             ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dpc
                             : 0U))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_478 = ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__lhs_sign) 
                                                   | ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__rhs_sign) 
                                                      & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_80))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_485 = (
                                                   (~ (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_80)) 
                                                   & ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_92)
                                                       ? (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__lhs_sign)
                                                       : 
                                                      ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__lhs_sign) 
                                                       != (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__rhs_sign))));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_52 = ((0xffffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__ex_op1 
                                                      >> 0x10U)) 
                                                  | (0xffff0000U 
                                                     & (vlSymsp->TOP__Rocket.__PVT__ex_op1 
                                                        << 0x10U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5521 = 
        (0xfU & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_call)
                  ? ((IData)(8U) + (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv))
                  : ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_break)
                      ? 3U : 2U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5371 = 
        ((((((((((((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5356) 
                       | (0xb0aU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))) 
                      | (0xc0aU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U)))) 
                     | (0x32bU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                             >> 0x14U)))) 
                    | (0xb0bU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))) 
                   | (0xc0bU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))) 
                  | (0x32cU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) 
                 | (0xb0cU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                         >> 0x14U)))) 
                | (0xc0cU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                        >> 0x14U)))) 
               | (0x32dU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                       >> 0x14U)))) 
              | (0xb0dU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) 
             | (0xc0dU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                     >> 0x14U)))) | 
            (0x32eU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0xb0eU 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U)))) 
          | (0xc0eU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0x32fU 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U))));
    vlSymsp->TOP__Rocket.__PVT__mem_npc_misaligned 
        = (1U & ((~ (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa 
                     >> 2U)) & (vlSymsp->TOP__Rocket.__PVT__T_7257 
                                >> 1U)));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__in2_inv = 
        ((8U & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))
          ? (~ vlSymsp->TOP__Rocket.__PVT__ex_op2) : vlSymsp->TOP__Rocket.__PVT__ex_op2);
    vlSymsp->TOP__Rocket.__PVT__T_7419 = (0xfffffffeU 
                                          & (vlSymsp->TOP__Rocket.__PVT__T_7410 
                                             & (~ ((IData)(vlSymsp->TOP__Rocket.__PVT__GEN_155)
                                                    ? 
                                                   ((IData)(1U) 
                                                    << (IData)(vlSymsp->TOP__Rocket.__PVT__GEN_154))
                                                    : 0U))));
    vlSymsp->TOP__Rocket.__PVT__rf_waddr = (0x1fU & 
                                            ((IData)(vlSymsp->TOP__Rocket.__PVT__GEN_155)
                                              ? (IData)(vlSymsp->TOP__Rocket.__PVT__GEN_154)
                                              : (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4944 = 
        ((0x4000U & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
          ? 0xeU : ((0x8000U & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                     ? 0xfU : ((0x10000U & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                ? 0x10U : ((0x20000U 
                                            & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                            ? 0x11U
                                            : ((0x40000U 
                                                & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                ? 0x12U
                                                : (
                                                   (0x80000U 
                                                    & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                    ? 0x13U
                                                    : 
                                                   ((0x100000U 
                                                     & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                     ? 0x14U
                                                     : 
                                                    ((0x200000U 
                                                      & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                      ? 0x15U
                                                      : 
                                                     ((0x400000U 
                                                       & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                       ? 0x16U
                                                       : 
                                                      ((0x800000U 
                                                        & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                        ? 0x17U
                                                        : 
                                                       ((0x1000000U 
                                                         & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                         ? 0x18U
                                                         : 
                                                        ((0x2000000U 
                                                          & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                          ? 0x19U
                                                          : 
                                                         ((0x4000000U 
                                                           & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                           ? 0x1aU
                                                           : 
                                                          ((0x8000000U 
                                                            & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                            ? 0x1bU
                                                            : 
                                                           ((0x10000000U 
                                                             & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                             ? 0x1cU
                                                             : 
                                                            ((0x20000000U 
                                                              & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                              ? 0x1dU
                                                              : 
                                                             ((0x40000000U 
                                                               & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                               ? 0x1eU
                                                               : 0x1fU)))))))))))))))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_39 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4970) 
         | (((0U != vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts) 
             & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5566))) 
            | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_singleStepped)));
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_208 = (1U 
                                                   & ((2U 
                                                       & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_tmatch))
                                                       ? 
                                                      ((vlSymsp->TOP__Rocket.__PVT__mem_reg_wdata 
                                                        >= vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_address) 
                                                       ^ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_tmatch))
                                                       : 
                                                      (((~ vlSymsp->TOP__Rocket.__PVT__mem_reg_wdata) 
                                                        | (IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_193)) 
                                                       == vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_206)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6034 = 
        ((((((((vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5939 
                | (QData)((IData)(((0x7b2U == (0xfffU 
                                               & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                  >> 0x14U)))
                                    ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dscratch
                                    : 0U)))) | (QData)((IData)(
                                                               ((0x320U 
                                                                 == 
                                                                 (0xfffU 
                                                                  & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                     >> 0x14U)))
                                                                 ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mucounteren
                                                                 : 0U)))) 
              | ((0xc00U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                       >> 0x14U))) ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4814
                  : VL_ULL(0))) | ((0xc02U == (0xfffU 
                                               & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                  >> 0x14U)))
                                    ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4804
                                    : VL_ULL(0))) | (QData)((IData)(
                                                                    ((0xb80U 
                                                                      == 
                                                                      (0xfffU 
                                                                       & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                          >> 0x14U)))
                                                                      ? (IData)(
                                                                                (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4814 
                                                                                >> 0x20U))
                                                                      : 0U)))) 
           | (QData)((IData)(((0xb82U == (0xfffU & 
                                          (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))
                               ? (IData)((vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4804 
                                          >> 0x20U))
                               : 0U)))) | (QData)((IData)(
                                                          ((0xc80U 
                                                            == 
                                                            (0xfffU 
                                                             & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                >> 0x14U)))
                                                            ? (IData)(
                                                                      (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4814 
                                                                       >> 0x20U))
                                                            : 0U)))) 
         | (QData)((IData)(((0xc82U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                  >> 0x14U)))
                             ? (IData)((vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4804 
                                        >> 0x20U)) : 0U))));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_62 = ((0xff00ffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_52 
                                                      >> 8U)) 
                                                  | (0xff00ff00U 
                                                     & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_52 
                                                        << 8U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5386 = 
        ((((((((((((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5371) 
                       | (0xb0fU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))) 
                      | (0xc0fU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U)))) 
                     | (0x330U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                             >> 0x14U)))) 
                    | (0xb10U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))) 
                   | (0xc10U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))) 
                  | (0x331U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) 
                 | (0xb11U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                         >> 0x14U)))) 
                | (0xc11U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                        >> 0x14U)))) 
               | (0x332U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                       >> 0x14U)))) 
              | (0xb12U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) 
             | (0xc12U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                     >> 0x14U)))) | 
            (0x333U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0xb13U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U)))) 
          | (0xc13U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0x334U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U))));
    vlSymsp->TOP__Rocket.__PVT__T_7274 = (((~ (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_xcpt)) 
                                           & ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jalr) 
                                              ^ (IData)(vlSymsp->TOP__Rocket.__PVT__mem_npc_misaligned)))
                                           ? (IData)(vlSymsp->TOP__Rocket.__PVT__T_7254)
                                           : vlSymsp->TOP__Rocket.__PVT__mem_reg_wdata);
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__in1_xor_in2 
        = (vlSymsp->TOP__Rocket.__PVT__ex_op1 ^ vlSymsp->TOP__Rocket.__PVT__alu__DOT__in2_inv);
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_20 = (VL_ULL(0x1ffffffff) 
                                                  & ((QData)((IData)(
                                                                     (vlSymsp->TOP__Rocket.__PVT__ex_op1 
                                                                      + vlSymsp->TOP__Rocket.__PVT__alu__DOT__in2_inv))) 
                                                     + (QData)((IData)(
                                                                       (1U 
                                                                        & ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn) 
                                                                           >> 3U))))));
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_278 = (
                                                   (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)) 
                                                   & (((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_176) 
                                                       & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_r)) 
                                                      & (IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_208)));
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_281 = (
                                                   (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)) 
                                                   & (((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_176) 
                                                       & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_w)) 
                                                      & (IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_208)));
    vlSymsp->TOP__Rocket.__PVT__rf_wdata = (((IData)(vlSymsp->TOP__Rocket.__PVT__dmem_resp_valid) 
                                             & (~ (IData)(vlTOPp->io_dmem_resp_bits_tag)))
                                             ? vlTOPp->io_dmem_resp_bits_data
                                             : ((IData)(vlSymsp->TOP__Rocket.__PVT__GEN_155)
                                                 ? 
                                                vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U]
                                                 : 
                                                ((0U 
                                                  != (IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_csr))
                                                  ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6034)
                                                  : vlSymsp->TOP__Rocket.__PVT__wb_reg_wdata)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata = (
                                                   ((((2U 
                                                       == (IData)(vlSymsp->TOP__Rocket.__PVT__T_7399)) 
                                                      | (3U 
                                                         == (IData)(vlSymsp->TOP__Rocket.__PVT__T_7399)))
                                                      ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6034)
                                                      : 0U) 
                                                    | ((3U 
                                                        != (IData)(vlSymsp->TOP__Rocket.__PVT__T_7399))
                                                        ? vlSymsp->TOP__Rocket.__PVT__wb_reg_wdata
                                                        : 0U)) 
                                                   & (~ 
                                                      ((3U 
                                                        == (IData)(vlSymsp->TOP__Rocket.__PVT__T_7399))
                                                        ? vlSymsp->TOP__Rocket.__PVT__wb_reg_wdata
                                                        : 0U)));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_72 = ((0xf0f0f0fU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_62 
                                                      >> 4U)) 
                                                  | (0xf0f0f0f0U 
                                                     & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_62 
                                                        << 4U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5401 = 
        ((((((((((((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5386) 
                       | (0xb14U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))) 
                      | (0xc14U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U)))) 
                     | (0x335U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                             >> 0x14U)))) 
                    | (0xb15U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))) 
                   | (0xc15U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))) 
                  | (0x336U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) 
                 | (0xb16U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                         >> 0x14U)))) 
                | (0xc16U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                        >> 0x14U)))) 
               | (0x337U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                       >> 0x14U)))) 
              | (0xb17U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) 
             | (0xc17U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                     >> 0x14U)))) | 
            (0x338U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0xb18U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U)))) 
          | (0xc18U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0x339U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U))));
    vlSymsp->TOP__Rocket.__PVT__mem_debug_breakpoint 
        = (((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_load) 
            & ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_278) 
               & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_action))) 
           | ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_store) 
              & ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_281) 
                 & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_action))));
    vlSymsp->TOP__Rocket.__PVT__mem_breakpoint = (((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_load) 
                                                   & ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_278) 
                                                      & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_action)))) 
                                                  | ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_store) 
                                                     & ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_281) 
                                                        & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_action)))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6158 = 
        ((0x1005U & (~ ((~ vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata) 
                        | (8U & ((~ (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata 
                                     >> 5U)) << 3U))))) 
         | (0xffaU & vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6221 = 
        (1U | ((~ vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata) 
               | (2U & ((~ (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa 
                            >> 2U)) << 1U))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6235 = 
        (((QData)((IData)((vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4804 
                           >> 0x20U))) << 0x20U) | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6238 = 
        (((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata)) 
          << 0x20U) | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4804)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6405 = 
        ((vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata 
          >> 0x1bU) & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6229 = 
        (((QData)((IData)((vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4814 
                           >> 0x20U))) << 0x20U) | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6232 = 
        (((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata)) 
          << 0x20U) | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4814)));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_82 = ((0x33333333U 
                                                   & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_72 
                                                      >> 2U)) 
                                                  | (0xccccccccU 
                                                     & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_72 
                                                        << 2U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5416 = 
        ((((((((((((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5401) 
                       | (0xb19U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))) 
                      | (0xc19U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U)))) 
                     | (0x33aU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                             >> 0x14U)))) 
                    | (0xb1aU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))) 
                   | (0xc1aU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))) 
                  | (0x33bU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) 
                 | (0xb1bU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                         >> 0x14U)))) 
                | (0xc1bU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                        >> 0x14U)))) 
               | (0x33cU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                       >> 0x14U)))) 
              | (0xb1cU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) 
             | (0xc1cU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                     >> 0x14U)))) | 
            (0x33dU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0xb1dU 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U)))) 
          | (0xc1dU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0x33eU 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U))));
    vlSymsp->TOP__Rocket.__PVT__mem_new_cause = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_debug_breakpoint)
                                                  ? 0xdU
                                                  : 
                                                 ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_breakpoint)
                                                   ? 3U
                                                   : 
                                                  ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_npc_misaligned)
                                                    ? 0U
                                                    : 
                                                   ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7320)
                                                     ? 6U
                                                     : 
                                                    ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7322)
                                                      ? 4U
                                                      : 
                                                     ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7324)
                                                       ? 7U
                                                       : 5U))))));
    vlSymsp->TOP__Rocket.__PVT__mem_xcpt = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7338) 
                                            | ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid) 
                                               & (((((((IData)(vlSymsp->TOP__Rocket.__PVT__mem_debug_breakpoint) 
                                                       | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_breakpoint)) 
                                                      | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_npc_misaligned)) 
                                                     | (IData)(vlSymsp->TOP__Rocket.__PVT__T_7320)) 
                                                    | (IData)(vlSymsp->TOP__Rocket.__PVT__T_7322)) 
                                                   | (IData)(vlSymsp->TOP__Rocket.__PVT__T_7324)) 
                                                  | ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem) 
                                                     & (IData)(vlSymsp->TOP__Rocket.io_dmem_xcpt_pf_ld)))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6406 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6405) 
         & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata 
            >> 0xcU));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_258 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen)
          ? ((0xb80U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                   >> 0x14U))) ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6232
              : ((0xb00U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                       >> 0x14U))) ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6229
                  : (QData)((IData)((0x7fU & ((IData)(1U) 
                                              + (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4807)))))))
          : (QData)((IData)((0x7fU & ((IData)(1U) + (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4807))))));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__shin = ((IData)(vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_41)
                                                   ? vlSymsp->TOP__Rocket.__PVT__ex_op1
                                                   : 
                                                  ((0x55555555U 
                                                    & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_82 
                                                       >> 1U)) 
                                                   | (0xaaaaaaaaU 
                                                      & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_82 
                                                         << 1U))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5492 = 
        (1U & (((~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__priv_sufficient)) 
                | (~ (((((((((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5416) 
                                 | (0xb1eU == (0xfffU 
                                               & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                  >> 0x14U)))) 
                                | (0xc1eU == (0xfffU 
                                              & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                 >> 0x14U)))) 
                               | (0x33fU == (0xfffU 
                                             & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                >> 0x14U)))) 
                              | (0xb1fU == (0xfffU 
                                            & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))) 
                             | (0xc1fU == (0xfffU & 
                                           (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))) 
                            | (0x320U == (0xfffU & 
                                          (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))) 
                           | (0xc00U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                   >> 0x14U)))) 
                          | (0xc02U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                  >> 0x14U)))) 
                         | (0xb80U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                 >> 0x14U)))) 
                        | (0xb82U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                >> 0x14U)))) 
                       | (0xc80U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))) 
                      | (0xc82U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U)))))) 
               | (((0xc00U <= (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                         >> 0x14U))) 
                   & (0xc20U > (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) 
                  & (~ ((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug) 
                          | (3U == (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv))) 
                         | ((1U == (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv)) 
                            & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mscounteren 
                               >> (0x1fU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U))))) 
                        | ((0U == (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv)) 
                           & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mucounteren 
                              >> (0x1fU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))))))));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_98 = (VL_ULL(0x1ffffffff) 
                                                  & VL_SHIFTRS_QQI(33,33,5, 
                                                                   (((QData)((IData)(
                                                                                (1U 
                                                                                & (((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn) 
                                                                                >> 3U) 
                                                                                & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__shin 
                                                                                >> 0x1fU))))) 
                                                                     << 0x20U) 
                                                                    | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__alu__DOT__shin))), 
                                                                   (0x1fU 
                                                                    & vlSymsp->TOP__Rocket.__PVT__ex_op2)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5508 = 
        ((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__cpu_wen) 
             & (0U == (3U & (~ (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                >> 0x1eU))))) | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__cpu_ren) 
                                                 & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5492))) 
           | ((4U == (IData)(vlSymsp->TOP__Rocket.__PVT__T_7399)) 
              & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__priv_sufficient)))) 
          | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_call)) 
         | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_break));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_109 = (
                                                   (0xffffU 
                                                    & (IData)(
                                                              (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_98 
                                                               >> 0x10U))) 
                                                   | (0xffff0000U 
                                                      & ((IData)(vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_98) 
                                                         << 0x10U)));
    vlSymsp->TOP__Rocket.__PVT__wb_xcpt = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_xcpt) 
                                           | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5508));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause = ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5508)
                                                    ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5521)
                                                    : vlSymsp->TOP__Rocket.__PVT__wb_reg_cause);
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_119 = (
                                                   (0xff00ffU 
                                                    & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_109 
                                                       >> 8U)) 
                                                   | (0xff00ff00U 
                                                      & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_109 
                                                         << 8U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_87 = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_spp;
    vlSymsp->TOP__Rocket.__PVT__wb_valid = (((IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_valid) 
                                             & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__replay_wb))) 
                                            & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)));
    vlSymsp->TOP__Rocket.__PVT__T_7371 = (((IData)(vlSymsp->TOP__Rocket.__PVT__replay_wb) 
                                           | (IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)) 
                                          | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5599 = 
        (((((((3U == vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause) 
              | (4U == vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause)) 
             | (6U == vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause)) 
            | (0U == vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause)) 
           | (5U == vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause)) 
          | (7U == vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause)) 
         | (1U == vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__causeIsDebugInt 
        = ((vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause 
            >> 0x1fU) & (0xdU == (0x1fU & vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__causeIsDebugTrigger 
        = ((~ (vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause 
               >> 0x1fU)) & (0xdU == (0x1fU & vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause)));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_129 = (
                                                   (0xf0f0f0fU 
                                                    & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_119 
                                                       >> 4U)) 
                                                   | (0xf0f0f0f0U 
                                                      & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_119 
                                                         << 4U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4601 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_valid) 
         | (IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4798 = 
        (0x7fU & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4797) 
                  + (IData)(vlSymsp->TOP__Rocket.__PVT__wb_valid)));
    vlSymsp->TOP__Rocket.__PVT__wb_wen = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_valid) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_wxd));
    vlSymsp->TOP__Rocket.__PVT__T_7570 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid) 
                                          & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7371)));
    vlSymsp->TOP__Rocket.__PVT__killm_common = (1U 
                                                & ((((IData)(vlSymsp->TOP__Rocket.__PVT__dcache_kill_mem) 
                                                     | (IData)(vlSymsp->TOP__Rocket.__PVT__T_7371)) 
                                                    | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_xcpt)) 
                                                   | (~ (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid))));
    vlSymsp->TOP__Rocket.__PVT__take_pc_mem_wb = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7371) 
                                                  | ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid) 
                                                     & ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_cfi_taken) 
                                                        | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_flush_pipe))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5606 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__causeIsDebugInt)
          ? 3U : ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__causeIsDebugTrigger)
                   ? 2U : 1U));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543 = 
        (((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_singleStepped) 
            | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__causeIsDebugInt)) 
           | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__causeIsDebugTrigger)) 
          | (0xfU & (((~ (vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause 
                          >> 0x1fU)) & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_break)) 
                     & (((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakm) 
                           << 3U) | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh) 
                                     << 2U)) | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh) 
                                                 << 1U) 
                                                | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreaku))) 
                        >> (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv))))) 
         | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_139 = (
                                                   (0x33333333U 
                                                    & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_129 
                                                       >> 2U)) 
                                                   | (0xccccccccU 
                                                      & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_129 
                                                         << 2U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_37 = 
        (VL_ULL(0x7ffffffffffffff) & ((0x40U & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4798))
                                       ? (VL_ULL(1) 
                                          + vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4800)
                                       : vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4800));
    vlSymsp->TOP__Rocket.__PVT__T_7431 = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_set_sboard) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__wb_wen));
    vlSymsp->TOP__Rocket.__PVT__rf_wen = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_wen) 
                                          | (IData)(vlSymsp->TOP__Rocket.__PVT__GEN_155));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_473 = (
                                                   ((IData)(vlSymsp->TOP__Rocket.__PVT__GEN_153) 
                                                    & (5U 
                                                       == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state))) 
                                                   | ((IData)(vlSymsp->TOP__Rocket.__PVT__killm_common) 
                                                      & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7348)));
    vlSymsp->TOP__Rocket.__PVT__T_7618 = ((IData)(vlSymsp->TOP__Rocket.__PVT__killm_common) 
                                          | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_breakpoint));
    vlSymsp->TOP__Rocket.__PVT__ctrl_killm = (((IData)(vlSymsp->TOP__Rocket.__PVT__killm_common) 
                                               | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_xcpt)) 
                                              | (IData)(vlSymsp->TOP__Rocket.__PVT__fpu_kill_mem));
    vlSymsp->TOP__Rocket.__PVT__ctrl_killx = (1U & 
                                              (((IData)(vlSymsp->TOP__Rocket.__PVT__take_pc_mem_wb) 
                                                | (IData)(vlSymsp->TOP__Rocket.__PVT__replay_ex)) 
                                               | (~ (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_valid))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_79 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
          ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543) 
             | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug))
          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_89 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
          ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)
              ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv)
              : 3U) : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_80 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
          ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)
              ? (~ (1U | (~ vlSymsp->TOP__Rocket.__PVT__wb_reg_pc)))
              : vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dpc)
          : vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dpc);
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_82 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
          ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)
              ? ((1U & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv))
                  ? 3U : 0U) : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_prv))
          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_prv));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_90 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
          ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)
              ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mepc
              : (~ vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5622))
          : vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mepc);
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_91 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
          ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)
              ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mcause
              : vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause)
          : vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mcause);
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_92 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
          ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)
              ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mbadaddr
              : ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5599)
                  ? vlSymsp->TOP__Rocket.__PVT__wb_reg_wdata
                  : vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mbadaddr))
          : vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mbadaddr);
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_93 = 
        (1U & ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
                ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)
                    ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie)
                    : vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5578)
                : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_94 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
          ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)
              ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp)
              : ((1U & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv))
                  ? 3U : 0U)) : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_95 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
          ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543) 
             & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie))
          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie));
    vlSymsp->TOP__Rocket.__PVT__T_7559 = (((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt) 
                                           | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret))
                                           ? ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
                                               ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)
                                                   ? 
                                                  ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)
                                                    ? 0x808U
                                                    : 0x800U)
                                                   : vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mtvec)
                                               : ((0x90U 
                                                   == 
                                                   (0x90U 
                                                    & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                       >> 0x14U)))
                                                   ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dpc
                                                   : vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mepc))
                                           : ((IData)(vlSymsp->TOP__Rocket.__PVT__replay_wb)
                                               ? vlSymsp->TOP__Rocket.__PVT__wb_reg_pc
                                               : (0xfffffffeU 
                                                  & vlSymsp->TOP__Rocket.__PVT__T_7257)));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__shift_logic 
        = ((((((2U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)) 
               | (3U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))) 
              | (0xcU <= (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))) 
             & ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn) 
                ^ ((8U & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))
                    ? (((1U & (vlSymsp->TOP__Rocket.__PVT__ex_op1 
                               >> 0x1fU)) == (1U & 
                                              (vlSymsp->TOP__Rocket.__PVT__ex_op2 
                                               >> 0x1fU)))
                        ? (IData)((vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_20 
                                   >> 0x1fU)) : ((2U 
                                                  & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))
                                                  ? 
                                                 (vlSymsp->TOP__Rocket.__PVT__ex_op2 
                                                  >> 0x1fU)
                                                  : 
                                                 (vlSymsp->TOP__Rocket.__PVT__ex_op1 
                                                  >> 0x1fU)))
                    : (0U == vlSymsp->TOP__Rocket.__PVT__alu__DOT__in1_xor_in2)))) 
            | ((((4U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)) 
                 | (6U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)))
                 ? vlSymsp->TOP__Rocket.__PVT__alu__DOT__in1_xor_in2
                 : 0U) | (((6U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)) 
                           | (7U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)))
                           ? (vlSymsp->TOP__Rocket.__PVT__ex_op1 
                              & vlSymsp->TOP__Rocket.__PVT__ex_op2)
                           : 0U))) | (((IData)(vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_41)
                                        ? (IData)(vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_98)
                                        : 0U) | ((1U 
                                                  == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))
                                                  ? 
                                                 ((0x55555555U 
                                                   & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_139 
                                                      >> 1U)) 
                                                  | (0xaaaaaaaaU 
                                                     & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_139 
                                                        << 1U)))
                                                  : 0U)));
    vlSymsp->TOP__Rocket.__PVT__T_7437 = ((IData)(vlSymsp->TOP__Rocket.__PVT__GEN_155) 
                                          | (IData)(vlSymsp->TOP__Rocket.__PVT__T_7431));
    vlSymsp->TOP__Rocket.__PVT__T_7436 = (vlSymsp->TOP__Rocket.__PVT__T_7419 
                                          | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7431)
                                              ? ((IData)(1U) 
                                                 << 
                                                 (0x1fU 
                                                  & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                     >> 7U)))
                                              : 0U));
    vlSymsp->TOP__Rocket.__PVT__GEN_166 = ((IData)(vlSymsp->TOP__Rocket.__PVT__rf_wen) 
                                           & (0U != (IData)(vlSymsp->TOP__Rocket.__PVT__rf_waddr)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_116 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret)
          ? ((0x90U == (0x90U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                 >> 0x14U))) & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_93))
          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_93));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_117 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret)
          ? ((0x90U != (0x90U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                 >> 0x14U))) ? 0U : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_94))
          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_94));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_115 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret)
          ? ((0x90U != (0x90U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                 >> 0x14U))) ? ((2U 
                                                 & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp))
                                                 ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie)
                                                 : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_95))
              : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_95))
          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_95));
}

void VRocket_Rocket::_settle__TOP__Rocket__2(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      VRocket_Rocket::_settle__TOP__Rocket__2\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_284 = (
                                                   (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)) 
                                                   & (((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_176) 
                                                       & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_x)) 
                                                      & ((2U 
                                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_tmatch))
                                                          ? 
                                                         ((vlSymsp->TOP__Rocket__ibuf.__PVT__T_488 
                                                           >= vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_address) 
                                                          ^ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_tmatch))
                                                          : 
                                                         (((~ vlSymsp->TOP__Rocket__ibuf.__PVT__T_488) 
                                                           | (IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_193)) 
                                                          == vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_206))));
    vlSymsp->TOP__Rocket.__PVT__id_xcpt_if = (1U & 
                                              ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__xcpt_if) 
                                               | (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_529)));
    vlSymsp->TOP__Rocket.__PVT__mem_wrong_npc = (1U 
                                                 & ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_pc_valid)
                                                     ? 
                                                    ((0xfffffffeU 
                                                      & vlSymsp->TOP__Rocket.__PVT__T_7257) 
                                                     != vlSymsp->TOP__Rocket.__PVT__ex_reg_pc)
                                                     : 
                                                    ((~ (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_519)) 
                                                     | ((0xfffffffeU 
                                                         & vlSymsp->TOP__Rocket.__PVT__T_7257) 
                                                        != vlSymsp->TOP__Rocket__ibuf.__PVT__T_488))));
    vlSymsp->TOP__Rocket.__PVT__T_7007 = ((~ (IData)(vlSymsp->TOP__Rocket.__PVT__take_pc_mem_wb)) 
                                          & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_519));
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__GEN_5 = ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_284) 
                                                   & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_action));
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__GEN_4 = ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_284) 
                                                   & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_action)));
    vlSymsp->TOP__Rocket.__PVT__T_6862 = ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__GEN_5)
                                           ? 0xdU : 
                                          ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__GEN_4)
                                            ? 3U : 
                                           ((IData)(vlSymsp->TOP__Rocket.__PVT__id_xcpt_if)
                                             ? 1U : 2U)));
    vlSymsp->TOP__Rocket.__PVT__T_7023 = (((~ (IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__GEN_4)) 
                                           & (~ (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__xcpt_if))) 
                                          & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_529));
}

void VRocket_Rocket::_settle__TOP__Rocket__3(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      VRocket_Rocket::_settle__TOP__Rocket__3\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__Rocket.__PVT__T_7497 = ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rd) 
                                          == (0x1fU 
                                              & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.__PVT__T_7474 = ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rd) 
                                          == (0x1fU 
                                              & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.__PVT__T_7447 = ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rd) 
                                          == (0x1fU 
                                              & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.__PVT__T_6545_T_6564_data 
        = ((0x1eU >= (0x1fU & (~ (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2))))
            ? vlSymsp->TOP__Rocket.__PVT__T_6545[(0x1fU 
                                                  & (~ (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2)))]
            : 0U);
    vlSymsp->TOP__Rocket.__PVT__T_6878 = ((0x1fU & 
                                           (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                            >> 7U)) 
                                          == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2));
    vlSymsp->TOP__Rocket.__PVT__T_7495 = ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2) 
                                          == (0x1fU 
                                              & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.__PVT__T_7472 = ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2) 
                                          == (0x1fU 
                                              & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.__PVT__id_bypass_src_1_1 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6866) 
         & ((0x1fU & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                      >> 7U)) == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2)));
    vlSymsp->TOP__Rocket.__PVT__T_7445 = ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2) 
                                          == (0x1fU 
                                              & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.__PVT__T_6545_T_6554_data 
        = ((0x1eU >= (0x1fU & (~ (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1))))
            ? vlSymsp->TOP__Rocket.__PVT__T_6545[(0x1fU 
                                                  & (~ (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1)))]
            : 0U);
    vlSymsp->TOP__Rocket.__PVT__T_6874 = ((0x1fU & 
                                           (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                            >> 7U)) 
                                          == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1));
    vlSymsp->TOP__Rocket.__PVT__T_7493 = ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1) 
                                          == (0x1fU 
                                              & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.__PVT__T_7470 = ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1) 
                                          == (0x1fU 
                                              & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.__PVT__id_bypass_src_0_1 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6866) 
         & ((0x1fU & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                      >> 7U)) == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1)));
    vlSymsp->TOP__Rocket.__PVT__T_7443 = ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1) 
                                          == (0x1fU 
                                              & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits 
        = ((0x10U <= (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635))
            ? ((8U <= (0xfU & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                ? vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in
                : vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1778_bits)
            : vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1934_bits);
    vlSymsp->TOP__Rocket.__PVT__GEN_169 = ((IData)(vlSymsp->TOP__Rocket.__PVT__rf_wen)
                                            ? ((0U 
                                                != (IData)(vlSymsp->TOP__Rocket.__PVT__rf_waddr))
                                                ? (
                                                   ((IData)(vlSymsp->TOP__Rocket.__PVT__rf_waddr) 
                                                    == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2))
                                                    ? vlSymsp->TOP__Rocket.__PVT__rf_wdata
                                                    : vlSymsp->TOP__Rocket.__PVT__T_6545_T_6564_data)
                                                : vlSymsp->TOP__Rocket.__PVT__T_6545_T_6564_data)
                                            : vlSymsp->TOP__Rocket.__PVT__T_6545_T_6564_data);
    vlSymsp->TOP__Rocket.__PVT__id_bypass_src_1_2 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6870) 
         & (IData)(vlSymsp->TOP__Rocket.__PVT__T_6878));
    vlSymsp->TOP__Rocket.__PVT__GEN_168 = ((IData)(vlSymsp->TOP__Rocket.__PVT__rf_wen)
                                            ? ((0U 
                                                != (IData)(vlSymsp->TOP__Rocket.__PVT__rf_waddr))
                                                ? (
                                                   ((IData)(vlSymsp->TOP__Rocket.__PVT__rf_waddr) 
                                                    == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1))
                                                    ? vlSymsp->TOP__Rocket.__PVT__rf_wdata
                                                    : vlSymsp->TOP__Rocket.__PVT__T_6545_T_6554_data)
                                                : vlSymsp->TOP__Rocket.__PVT__T_6545_T_6554_data)
                                            : vlSymsp->TOP__Rocket.__PVT__T_6545_T_6554_data);
    vlSymsp->TOP__Rocket.__PVT__id_bypass_src_0_2 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6870) 
         & (IData)(vlSymsp->TOP__Rocket.__PVT__T_6874));
    vlSymsp->TOP__Rocket.__PVT__T_6228 = (((((0U == 
                                              (0x48U 
                                               & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                             | (0U 
                                                == 
                                                (0x18U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            | (0x4000U 
                                               == (0x4008U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           << 1U) | 
                                          (((((0U == 
                                               (0x58U 
                                                & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                              | (0U 
                                                 == 
                                                 (0x20U 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                             | (4U 
                                                == 
                                                (0xcU 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            | (0x48U 
                                               == (0x48U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           | (0x4050U 
                                              == (0x4050U 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))));
    vlSymsp->TOP__Rocket.__PVT__T_6245 = ((((4U == 
                                             (0x24U 
                                              & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                            | (0x48U 
                                               == (0x48U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           << 1U) | 
                                          ((((0U == 
                                              (0x4004U 
                                               & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                             | (0U 
                                                == 
                                                (0x50U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            | (0U == 
                                               (0x44U 
                                                & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           | (0U == 
                                              (0x18U 
                                               & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))));
    vlSymsp->TOP__Rocket.__PVT__T_6277 = (((((0U == 
                                              (0x24U 
                                               & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                             | (4U 
                                                == 
                                                (0x1cU 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            | (0x10U 
                                               == (0x14U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           << 2U) | 
                                          ((((4U == 
                                              (0x44U 
                                               & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                             | (8U 
                                                == 
                                                (8U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            << 1U) 
                                           | ((8U == 
                                               (8U 
                                                & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                              | (0x40U 
                                                 == 
                                                 (0x44U 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)))));
    vlSymsp->TOP__Rocket.__PVT__T_6367 = (((((((0x2010U 
                                                == 
                                                (0x6054U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                               | (0x4040U 
                                                  == 
                                                  (0x4058U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                              | (0x40000030U 
                                                 == 
                                                 (0x40003034U 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                             | (0x40001010U 
                                                == 
                                                (0x40003054U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            << 3U) 
                                           | (((((0x2010U 
                                                  == 
                                                  (0x2054U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                 | (0x4010U 
                                                    == 
                                                    (0x40004054U 
                                                     & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                | (0x4010U 
                                                   == 
                                                   (0x5054U 
                                                    & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                               | (0x4040U 
                                                  == 
                                                  (0x4058U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                              << 2U)) 
                                          | ((((((((0x40U 
                                                    == 
                                                    (0x4054U 
                                                     & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                   | (0x3000U 
                                                      == 
                                                      (0x3044U 
                                                       & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                  | (0x6000U 
                                                     == 
                                                     (0x6044U 
                                                      & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                 | (0x6000U 
                                                    == 
                                                    (0x6018U 
                                                     & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                | (0x40000030U 
                                                   == 
                                                   (0x40003034U 
                                                    & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                               | (0x40001010U 
                                                  == 
                                                  (0x40001054U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                              << 1U) 
                                             | (((0x1010U 
                                                  == 
                                                  (0x3054U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                 | (0x1040U 
                                                    == 
                                                    (0x1058U 
                                                     & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                | (0x7000U 
                                                   == 
                                                   (0x7044U 
                                                    & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)))));
    vlSymsp->TOP__Rocket.__PVT__T_6443 = ((((8U == 
                                             (0x18001008U 
                                              & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                            << 3U) 
                                           | (((((8U 
                                                  == 
                                                  (0x2008U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                 | (0x8000008U 
                                                    == 
                                                    (0x8000008U 
                                                     & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                | (0x10000008U 
                                                   == 
                                                   (0x10000008U 
                                                    & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                               | (0x80000008U 
                                                  == 
                                                  (0x80000008U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                              << 2U)) 
                                          | ((((0x10000008U 
                                                == 
                                                (0x10001008U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                               | (0x40000008U 
                                                  == 
                                                  (0x40001008U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                              << 1U) 
                                             | ((((8U 
                                                   == 
                                                   (0x2008U 
                                                    & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                  | (0x20U 
                                                     == 
                                                     (0x28U 
                                                      & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                 | (0x18000020U 
                                                    == 
                                                    (0x18000020U 
                                                     & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                | (0x20000020U 
                                                   == 
                                                   (0x20000020U 
                                                    & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)))));
    vlSymsp->TOP__Rocket.__PVT__T_6463 = (((0x4000U 
                                            == (0x4000U 
                                                & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                           << 2U) | 
                                          (((0x2000U 
                                             == (0x2000U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                            << 1U) 
                                           | (0x1000U 
                                              == (0x1000U 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))));
    vlSymsp->TOP__Rocket.__PVT__T_7027 = ((4U == (0x1cU 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug));
    vlSymsp->TOP__Rocket.__PVT__T_6845 = (((8U == (0x3048U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                           | ((0x2008U 
                                               == (0x2048U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                              & (vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits 
                                                 >> 0x19U))) 
                                          | ((IData)(vlSymsp->TOP__Rocket.__PVT__id_reg_fence) 
                                             & (IData)(vlSymsp->TOP__Rocket.__PVT__id_mem_busy)));
    vlSymsp->TOP__Rocket.__PVT__T_6521 = (((0x50U == 
                                            (0x3050U 
                                             & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                           << 2U) | 
                                          (((0x2050U 
                                             == (0x2050U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                            << 1U) 
                                           | (0x1050U 
                                              == (0x1050U 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))));
    vlSymsp->TOP__Rocket.__PVT__T_6130 = ((((((((((
                                                   ((((((((3U 
                                                           == 
                                                           (0x505fU 
                                                            & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                          | (3U 
                                                             == 
                                                             (0x207fU 
                                                              & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                         | (0xfU 
                                                            == 
                                                            (0x607fU 
                                                             & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                        | (0x17U 
                                                           == 
                                                           (0x5fU 
                                                            & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                       | (0x33U 
                                                          == 
                                                          (0xfc00007fU 
                                                           & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                      | (0x33U 
                                                         == 
                                                         (0xbe00707fU 
                                                          & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                     | (0x63U 
                                                        == 
                                                        (0x707bU 
                                                         & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                    | (0x6fU 
                                                       == 
                                                       (0x7fU 
                                                        & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                   | (0x73U 
                                                      == 
                                                      (0xffefffffU 
                                                       & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                  | (0x1013U 
                                                     == 
                                                     (0xfc00305fU 
                                                      & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                 | (0x2013U 
                                                    == 
                                                    (0x207fU 
                                                     & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                | (0x202fU 
                                                   == 
                                                   (0x1800707fU 
                                                    & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                               | (0x2073U 
                                                  == 
                                                  (0x207fU 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                              | (0x5013U 
                                                 == 
                                                 (0xbc00707fU 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                             | (0x5033U 
                                                == 
                                                (0xbe00707fU 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            | (0x800202fU 
                                               == (0xe800707fU 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           | (0x1000202fU 
                                              == (0xf9f0707fU 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                          | (0x10500073U 
                                             == vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits));
    vlSymsp->TOP__Rocket.__PVT__T_6383 = (((((((3U 
                                                == 
                                                (0x605fU 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                               | (3U 
                                                  == 
                                                  (0x505fU 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                              | (3U 
                                                 == 
                                                 (0x207fU 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                             | (0x100fU 
                                                == 
                                                (0x707fU 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            | (0x202fU 
                                               == (0x1800707fU 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           | (0x800202fU 
                                              == (0xe800707fU 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                          | (0x1000202fU 
                                             == (0xf9f0707fU 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)));
    vlSymsp->TOP__Rocket.__PVT__T_6501 = (((((((0U 
                                                == 
                                                (0x28U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                               | (4U 
                                                  == 
                                                  (0xcU 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                              | (0x10U 
                                                 == 
                                                 (0x50U 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                             | (0x48U 
                                                == 
                                                (0x48U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            | (0x1010U 
                                               == (0x1010U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           | (0x2008U 
                                              == (0x2008U 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                          | (0x2010U 
                                             == (0x2010U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)));
    vlSymsp->TOP__Rocket.__PVT__T_6172 = (((0x20U == 
                                            (0x70U 
                                             & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                           | (0x20U 
                                              == (0x64U 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                          | (0x20U 
                                             == (0x34U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)));
    vlSymsp->TOP__Rocket.__PVT__T_6193 = ((((0U == 
                                             (0x4004U 
                                              & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                            | (0U == 
                                               (0x44U 
                                                & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           | (0U == 
                                              (0x18U 
                                               & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                          | (0x2000U 
                                             == (0x2050U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)));
    vlSymsp->TOP__Rocket.__PVT__T_7047 = ((((0U == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2)) 
                                            | (IData)(vlSymsp->TOP__Rocket.__PVT__id_bypass_src_1_1)) 
                                           | (IData)(vlSymsp->TOP__Rocket.__PVT__id_bypass_src_1_2)) 
                                          | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6867) 
                                             & (IData)(vlSymsp->TOP__Rocket.__PVT__T_6878)));
    vlSymsp->TOP__Rocket.__PVT__T_7032 = ((((0U == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1)) 
                                            | (IData)(vlSymsp->TOP__Rocket.__PVT__id_bypass_src_0_1)) 
                                           | (IData)(vlSymsp->TOP__Rocket.__PVT__id_bypass_src_0_2)) 
                                          | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6867) 
                                             & (IData)(vlSymsp->TOP__Rocket.__PVT__T_6874)));
    vlSymsp->TOP__Rocket.__PVT__id_csr_ren = (((2U 
                                                == (IData)(vlSymsp->TOP__Rocket.__PVT__T_6521)) 
                                               | (3U 
                                                  == (IData)(vlSymsp->TOP__Rocket.__PVT__T_6521))) 
                                              & (0U 
                                                 == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1)));
    vlSymsp->TOP__Rocket.__PVT__T_6136 = (((((((IData)(vlSymsp->TOP__Rocket.__PVT__T_6130) 
                                               | (0x30200073U 
                                                  == vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                              | (0x7b200073U 
                                                 == vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                             | (0x23U 
                                                == 
                                                (0x603fU 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            | (0x1063U 
                                               == (0x306fU 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           | (0x4063U 
                                              == (0x407fU 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                          | (3U == 
                                             (0x306fU 
                                              & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)));
    vlSymsp->TOP__Rocket.__PVT__T_7408 = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6501) 
                                          & (0U != (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rd)));
    vlSymsp->TOP__Rocket.__PVT__T_7405 = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6172) 
                                          & (0U != (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2)));
    vlSymsp->TOP__Rocket.__PVT__T_7402 = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6193) 
                                          & (0U != (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1)));
    vlSymsp->TOP__Rocket.__PVT__T_7057 = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6172) 
                                          & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7047)));
    vlSymsp->TOP__Rocket.__PVT__T_7042 = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6193) 
                                          & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7032)));
    vlSymsp->TOP__Rocket.__PVT__T_7026 = (((0x1008U 
                                            == (0x1048U 
                                                & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                           | ((4U == (IData)(vlSymsp->TOP__Rocket.__PVT__T_6521)) 
                                              | (((0U 
                                                   != (IData)(vlSymsp->TOP__Rocket.__PVT__T_6521)) 
                                                  & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__id_csr_ren))) 
                                                 & (~ 
                                                    ((0x40U 
                                                      == 
                                                      (0x46U 
                                                       & (vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits 
                                                          >> 0x14U))) 
                                                     | (0x240U 
                                                        == 
                                                        (0x244U 
                                                         & (vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits 
                                                            >> 0x14U)))))))) 
                                          | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5566));
    vlSymsp->TOP__Rocket.__PVT__id_xcpt = (1U & (((
                                                   ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_39) 
                                                    | (IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__GEN_5)) 
                                                   | (IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__GEN_4)) 
                                                  | (IData)(vlSymsp->TOP__Rocket.__PVT__id_xcpt_if)) 
                                                 | ((((~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_6136)) 
                                                      | ((0x2000030U 
                                                          == 
                                                          (0x2000074U 
                                                           & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                         & (~ 
                                                            (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa 
                                                             >> 0xcU)))) 
                                                     | ((0x2008U 
                                                         == 
                                                         (0x2048U 
                                                          & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                        & (~ vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa))) 
                                                    | ((3U 
                                                        != 
                                                        (3U 
                                                         & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)) 
                                                       & (~ 
                                                          (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa 
                                                           >> 2U))))));
    vlSymsp->TOP__Rocket.__PVT__data_hazard_mem = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_wxd) 
                                                   & ((((IData)(vlSymsp->TOP__Rocket.__PVT__T_7402) 
                                                        & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7470)) 
                                                       | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7405) 
                                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7472))) 
                                                      | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7408) 
                                                         & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7474))));
    vlSymsp->TOP__Rocket.__PVT__T_7528 = ((((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_valid) 
                                            & ((((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_wxd) 
                                                 & ((((IData)(vlSymsp->TOP__Rocket.__PVT__T_7402) 
                                                      & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7443)) 
                                                     | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7405) 
                                                        & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7445))) 
                                                    | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7408) 
                                                       & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7447)))) 
                                                & ((((((0U 
                                                        != (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_csr)) 
                                                       | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_jalr)) 
                                                      | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem)) 
                                                     | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_div)) 
                                                    | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rocc)) 
                                                   | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rocc))) 
                                               | ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rocc) 
                                                  & (((((IData)(vlTOPp->io_fpu_dec_ren1) 
                                                        & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7443)) 
                                                       | ((IData)(vlTOPp->io_fpu_dec_ren2) 
                                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7445))) 
                                                      | ((IData)(vlTOPp->io_fpu_dec_ren3) 
                                                         & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs3) 
                                                            == 
                                                            (0x1fU 
                                                             & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                                >> 7U))))) 
                                                     | ((IData)(vlTOPp->io_fpu_dec_wen) 
                                                        & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7447)))))) 
                                           | ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid) 
                                              & (((IData)(vlSymsp->TOP__Rocket.__PVT__data_hazard_mem) 
                                                  & (((((0U 
                                                         != (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_csr)) 
                                                        | ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem) 
                                                           & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_slow_bypass))) 
                                                       | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_div)) 
                                                      | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rocc)) 
                                                     | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rocc))) 
                                                 | ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rocc) 
                                                    & (((((IData)(vlTOPp->io_fpu_dec_ren1) 
                                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7470)) 
                                                         | ((IData)(vlTOPp->io_fpu_dec_ren2) 
                                                            & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7472))) 
                                                        | ((IData)(vlTOPp->io_fpu_dec_ren3) 
                                                           & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs3) 
                                                              == 
                                                              (0x1fU 
                                                               & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                                  >> 7U))))) 
                                                       | ((IData)(vlTOPp->io_fpu_dec_wen) 
                                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7474))))))) 
                                          | ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_valid) 
                                             & ((((IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_wxd) 
                                                  & ((((IData)(vlSymsp->TOP__Rocket.__PVT__T_7402) 
                                                       & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7493)) 
                                                      | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7405) 
                                                         & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7495))) 
                                                     | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7408) 
                                                        & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7497)))) 
                                                 & (IData)(vlSymsp->TOP__Rocket.__PVT__wb_set_sboard)) 
                                                | ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_wfd) 
                                                   & (((((IData)(vlTOPp->io_fpu_dec_ren1) 
                                                         & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7493)) 
                                                        | ((IData)(vlTOPp->io_fpu_dec_ren2) 
                                                           & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7495))) 
                                                       | ((IData)(vlTOPp->io_fpu_dec_ren3) 
                                                          & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs3) 
                                                             == 
                                                             (0x1fU 
                                                              & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                 >> 7U))))) 
                                                      | ((IData)(vlTOPp->io_fpu_dec_wen) 
                                                         & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7497)))))));
    vlSymsp->TOP__Rocket.__PVT__ctrl_stalld = ((((((IData)(vlSymsp->TOP__Rocket.__PVT__T_7528) 
                                                   | ((((IData)(vlSymsp->TOP__Rocket.__PVT__T_7402) 
                                                        & ((0xfffffffeU 
                                                            & vlSymsp->TOP__Rocket.__PVT__T_7410) 
                                                           >> (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1))) 
                                                       | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7405) 
                                                          & ((0xfffffffeU 
                                                              & vlSymsp->TOP__Rocket.__PVT__T_7410) 
                                                             >> (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2)))) 
                                                      | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7408) 
                                                         & ((0xfffffffeU 
                                                             & vlSymsp->TOP__Rocket.__PVT__T_7410) 
                                                            >> (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rd))))) 
                                                  | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6383) 
                                                     & (IData)(vlSymsp->TOP__Rocket.__PVT__dcache_blocked))) 
                                                 | ((0x2000030U 
                                                     == 
                                                     (0x2000074U 
                                                      & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                    & ((~ 
                                                        ((0U 
                                                          == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state)) 
                                                         | ((5U 
                                                             == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state)) 
                                                            & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__wb_wxd))))) 
                                                       | (IData)(vlSymsp->TOP__Rocket.__PVT__T_7002)))) 
                                                | ((IData)(vlSymsp->TOP__Rocket.__PVT__id_mem_busy) 
                                                   & ((((0x2008U 
                                                         == 
                                                         (0x2048U 
                                                          & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                        & (vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits 
                                                           >> 0x1aU)) 
                                                       | (0x1008U 
                                                          == 
                                                          (0x1048U 
                                                           & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                      | ((IData)(vlSymsp->TOP__Rocket.__PVT__id_reg_fence) 
                                                         & (IData)(vlSymsp->TOP__Rocket.__PVT__T_6383))))) 
                                               | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_wfi));
    vlSymsp->TOP__Rocket.__PVT__T_7551 = (1U & ((((
                                                   (~ (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_519)) 
                                                   | (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_503)) 
                                                  | (IData)(vlSymsp->TOP__Rocket.__PVT__take_pc_mem_wb)) 
                                                 | (IData)(vlSymsp->TOP__Rocket.__PVT__ctrl_stalld)) 
                                                | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_39)));
    vlSymsp->TOP__Rocket.__PVT__T_7063 = (1U & (((~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)) 
                                                 | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_39)) 
                                                | (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_503)));
}

VL_INLINE_OPT void VRocket_Rocket::_combo__TOP__Rocket__4(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      VRocket_Rocket::_combo__TOP__Rocket__4\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__Rocket.csr_io_hartid = vlTOPp->io_hartid;
    vlSymsp->TOP__Rocket.__PVT__dmem_resp_valid = ((IData)(vlTOPp->io_dmem_resp_valid) 
                                                   & (IData)(vlTOPp->io_dmem_resp_bits_has_data));
    vlSymsp->TOP__Rocket.csr_io_rocc_interrupt = vlTOPp->io_rocc_interrupt;
    vlSymsp->TOP__Rocket.__PVT__T_7379 = (((IData)(vlSymsp->TOP__Rocket.__PVT__dmem_resp_valid) 
                                           & (IData)(vlTOPp->io_dmem_resp_bits_replay)) 
                                          & (~ (IData)(vlTOPp->io_dmem_resp_bits_tag)));
}

VL_INLINE_OPT void VRocket_Rocket::_sequent__TOP__Rocket__5(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      VRocket_Rocket::_sequent__TOP__Rocket__5\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    CData/*4:0*/ __Vdlyvdim0__T_6545__v0;
    CData/*0:0*/ __Vdlyvset__T_6545__v0;
    CData/*1:0*/ __Vdly__csr__DOT__reg_mstatus_prv;
    IData/*31:0*/ __Vdlyvval__T_6545__v0;
    WData/*95:0*/ __Vtemp9[3];
    WData/*95:0*/ __Vtemp10[3];
    WData/*95:0*/ __Vtemp11[3];
    WData/*95:0*/ __Vtemp12[3];
    WData/*95:0*/ __Vtemp13[3];
    WData/*127:0*/ __Vtemp14[4];
    WData/*127:0*/ __Vtemp15[4];
    WData/*127:0*/ __Vtemp17[4];
    WData/*127:0*/ __Vtemp18[4];
    WData/*95:0*/ __Vtemp20[3];
    WData/*95:0*/ __Vtemp23[3];
    WData/*127:0*/ __Vtemp24[4];
    // Body
    __Vdlyvset__T_6545__v0 = 0U;
    __Vdly__csr__DOT__reg_mstatus_prv = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv;
    if (VL_UNLIKELY((1U & (~ (((~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_singleStepped)) 
                               | (~ (IData)(vlSymsp->TOP__Rocket.__PVT__wb_valid))) 
                              | (IData)(vlSymsp->TOP__Rocket.reset)))))) {
        VL_FWRITEF(0x80000002U,"Assertion failed\n    at csr.scala:216 assert(!reg_singleStepped || io.retire === UInt(0))\n");
    }
    if (VL_UNLIKELY((1U & (~ (((~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_singleStepped)) 
                               | (~ (IData)(vlSymsp->TOP__Rocket.__PVT__wb_valid))) 
                              | (IData)(vlSymsp->TOP__Rocket.reset)))))) {
        VL_WRITEF("[%0t] %%Error: CSRFile.v:5112: Assertion failed in %NRocket.csr\n",
                  64,VL_TIME_Q(),vlSymsp->name());
        VL_STOP_MT("CSRFile.v", 5112, "");
    }
    if (VL_UNLIKELY((1U & (~ ((1U >= (7U & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret) 
                                            + (3U & 
                                               ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_xcpt) 
                                                + (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5508)))))) 
                              | (IData)(vlSymsp->TOP__Rocket.reset)))))) {
        VL_FWRITEF(0x80000002U,"Assertion failed: these conditions must be mutually exclusive\n    at csr.scala:496 assert(PopCount(insn_ret :: io.exception :: io.csr_xcpt :: Nil) <= 1, \"these conditions must be mutually exclusive\")\n");
    }
    if (VL_UNLIKELY((1U & (~ ((1U >= (7U & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret) 
                                            + (3U & 
                                               ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_xcpt) 
                                                + (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5508)))))) 
                              | (IData)(vlSymsp->TOP__Rocket.reset)))))) {
        VL_WRITEF("[%0t] %%Error: CSRFile.v:5134: Assertion failed in %NRocket.csr\n",
                  64,VL_TIME_Q(),vlSymsp->name());
        VL_STOP_MT("CSRFile.v", 5134, "");
    }
    if (VL_UNLIKELY(((((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem) 
                       & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_xcpt)) 
                      & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7618))) 
                     & (~ ((0U != ((((IData)(vlSymsp->TOP__Rocket.io_dmem_xcpt_ma_ld) 
                                     << 3U) | ((IData)(vlSymsp->TOP__Rocket.io_dmem_xcpt_ma_st) 
                                               << 2U)) 
                                   | (((IData)(vlSymsp->TOP__Rocket.io_dmem_xcpt_pf_ld) 
                                       << 1U) | (IData)(vlSymsp->TOP__Rocket.io_dmem_xcpt_pf_st)))) 
                           | (IData)(vlSymsp->TOP__Rocket.reset)))))) {
        VL_FWRITEF(0x80000002U,"Assertion failed\n    at rocket.scala:646 assert(io.dmem.xcpt.asUInt.orR) // make sure s1_kill is exhaustive\n");
    }
    if (VL_UNLIKELY(((((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem) 
                       & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_xcpt)) 
                      & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7618))) 
                     & (~ ((0U != ((((IData)(vlSymsp->TOP__Rocket.io_dmem_xcpt_ma_ld) 
                                     << 3U) | ((IData)(vlSymsp->TOP__Rocket.io_dmem_xcpt_ma_st) 
                                               << 2U)) 
                                   | (((IData)(vlSymsp->TOP__Rocket.io_dmem_xcpt_pf_ld) 
                                       << 1U) | (IData)(vlSymsp->TOP__Rocket.io_dmem_xcpt_pf_st)))) 
                           | (IData)(vlSymsp->TOP__Rocket.reset)))))) {
        VL_WRITEF("[%0t] %%Error: Rocket.v:5549: Assertion failed in %NRocket\n",
                  64,VL_TIME_Q(),vlSymsp->name());
        VL_STOP_MT("Rocket.v", 5549, "");
    }
    if (VL_UNLIKELY((1U & (~ (IData)(vlSymsp->TOP__Rocket.reset))))) {
        VL_FWRITEF(0x80000002U,"C%10#: %10# [%1#] pc=[%x] W[r%2#=%x][%1#] R[r%2#=%x] R[r%2#=%x] inst=[%x] DASM(%x)\n",
                   32,vlTOPp->io_hartid,32,(IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4814),
                   1,vlSymsp->TOP__Rocket.__PVT__wb_valid,
                   32,vlSymsp->TOP__Rocket.__PVT__wb_reg_pc,
                   5,((IData)(vlSymsp->TOP__Rocket.__PVT__rf_wen)
                       ? (IData)(vlSymsp->TOP__Rocket.__PVT__rf_waddr)
                       : 0U),32,vlSymsp->TOP__Rocket.__PVT__rf_wdata,
                   1,(IData)(vlSymsp->TOP__Rocket.__PVT__rf_wen),
                   5,(0x1fU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                               >> 0xfU)),32,vlSymsp->TOP__Rocket.__PVT__T_7680,
                   5,(0x1fU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                               >> 0x14U)),32,vlSymsp->TOP__Rocket.__PVT__T_7683,
                   32,vlSymsp->TOP__Rocket.__PVT__wb_reg_inst,
                   32,vlSymsp->TOP__Rocket.__PVT__wb_reg_inst);
    }
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_sptbr_asid = 0U;
    if (vlSymsp->TOP__Rocket.io_fpu_fcsr_flags_valid) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_fflags 
            = vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6036;
    }
    vlSymsp->TOP__Rocket.__PVT__rocc_blocked = vlSymsp->TOP__Rocket.__PVT__T_7526;
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_sd = 0U;
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_debug = 0U;
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_sd_rv32 = 0U;
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_isa = 0U;
    }
    if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_474) {
        vlSymsp->TOP__Rocket.__PVT__div__DOT__req_dw 
            = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_dw;
    }
    vlSymsp->TOP__Rocket.__PVT__ex_reg_xcpt = ((~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)) 
                                               & (IData)(vlSymsp->TOP__Rocket.__PVT__id_xcpt));
    if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_474) {
        vlSymsp->TOP__Rocket.__PVT__div__DOT__isMul 
            = vlSymsp->TOP__Rocket.__PVT__div__DOT__T_80;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_rfs1 = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rfs1;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_rfs3 = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rfs3;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_rfs2 = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rfs2;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_dp = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_dp;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_alu_dw 
            = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_alu_dw;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_legal = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_legal;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_mem_type 
            = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem_type;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_mem_cmd 
            = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem_cmd;
    }
    vlSymsp->TOP__Rocket.__PVT__mem_reg_xcpt = ((~ (IData)(vlSymsp->TOP__Rocket.__PVT__ctrl_killx)) 
                                                & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_xcpt));
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_reg_flush_pipe 
            = vlSymsp->TOP__Rocket.__PVT__ex_reg_flush_pipe;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_reg_load = vlSymsp->TOP__Rocket.__PVT__T_7302;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_reg_store = vlSymsp->TOP__Rocket.__PVT__T_7310;
    }
    if (vlSymsp->TOP__Rocket.__PVT__GEN_166) {
        vlSymsp->TOP__Rocket.__Vlvbound1 = vlSymsp->TOP__Rocket.__PVT__rf_wdata;
        if ((0x1eU >= (0x1fU & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__rf_waddr))))) {
            __Vdlyvval__T_6545__v0 = vlSymsp->TOP__Rocket.__Vlvbound1;
            __Vdlyvset__T_6545__v0 = 1U;
            __Vdlyvdim0__T_6545__v0 = (0x1fU & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__rf_waddr)));
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_474) {
        vlSymsp->TOP__Rocket.__PVT__div__DOT__req_in2 
            = vlSymsp->TOP__Rocket.__PVT__ex_rs_1;
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_zero1 = 0U;
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_zero2 = 0U;
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_stopcycle = 0U;
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_stoptime = 0U;
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_xdebugver = 1U;
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ndreset = 0U;
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_fullreset = 0U;
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_zero3 = 0U;
    }
    vlSymsp->TOP__Rocket.__PVT__mem_reg_xcpt_interrupt 
        = ((~ (IData)(vlSymsp->TOP__Rocket.__PVT__take_pc_mem_wb)) 
           & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_xcpt_interrupt));
    vlSymsp->TOP__Rocket.__PVT__ex_reg_replay = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7007) 
                                                 & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_503));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_medeleg = 0U;
    vlSymsp->TOP__Rocket.__PVT__dcache_blocked = vlSymsp->TOP__Rocket.__PVT__T_7518;
    vlSymsp->TOP__Rocket.__PVT__id_reg_fence = ((~ (IData)(vlSymsp->TOP__Rocket.reset)) 
                                                & (IData)(vlSymsp->TOP__Rocket.__PVT__T_6845));
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__T_7410 = 0U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__T_7437) {
            vlSymsp->TOP__Rocket.__PVT__T_7410 = vlSymsp->TOP__Rocket.__PVT__T_7436;
        } else {
            if (vlSymsp->TOP__Rocket.__PVT__GEN_155) {
                vlSymsp->TOP__Rocket.__PVT__T_7410 
                    = vlSymsp->TOP__Rocket.__PVT__T_7419;
            }
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_474) {
        vlSymsp->TOP__Rocket.__PVT__div__DOT__divisor 
            = vlSymsp->TOP__Rocket.__PVT__div__DOT__T_486;
    } else {
        if ((1U == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state))) {
            if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_144) {
                vlSymsp->TOP__Rocket.__PVT__div__DOT__divisor 
                    = (VL_ULL(0x1ffffffff) & vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136);
            }
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_474) {
        vlSymsp->TOP__Rocket.__PVT__div__DOT__req_fn 
            = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_alu_fn 
            = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_alu_fn;
    }
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_r = 0U;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_x = 0U;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_u = 0U;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_s = 0U;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_reserved = 0U;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_maskmax = 0U;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_reserved = 0U;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_maskmax = 4U;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_address = 0U;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_w = 0U;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_h = 0U;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_tmatch = 0U;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_action = 0U;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_ttype = 0U;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_m = 0U;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_chain = 0U;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_zero = 0U;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_zero = 0U;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_ttype = 2U;
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero3 = 0U;
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_vm = 0U;
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero1 = 0U;
    }
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_spp 
        = (1U & ((~ (IData)(vlSymsp->TOP__Rocket.reset)) 
                 & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_87)));
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_sel_alu2 
            = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_sel_alu2;
    }
    vlSymsp->TOP__Rocket.__PVT__T_7348 = ((0U == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state)) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7002));
    vlSymsp->TOP__Rocket.__PVT__wb_reg_replay = ((((IData)(vlSymsp->TOP__Rocket.__PVT__dcache_kill_mem) 
                                                   | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_replay)) 
                                                  | (IData)(vlSymsp->TOP__Rocket.__PVT__fpu_kill_mem)) 
                                                 & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7371)));
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_reg_slow_bypass 
            = vlSymsp->TOP__Rocket.__PVT__ex_slow_bypass;
    }
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4807 = 
        ((IData)(vlSymsp->TOP__Rocket.reset) ? 0U : 
         (0x3fU & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_258)));
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_wfi = 0U;
    } else {
        if ((0U != vlSymsp->TOP__Rocket.__PVT__csr__DOT__pending_interrupts)) {
            vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_wfi = 0U;
        } else {
            if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_wfi) {
                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_wfi = 1U;
            }
        }
    }
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_debugint 
        = ((~ (IData)(vlSymsp->TOP__Rocket.reset)) 
           & (IData)(vlTOPp->io_interrupts_debug));
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        if (vlSymsp->TOP__Rocket.__PVT__T_7057) {
            vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_msb_1 
                = (0x3fffffffU & (vlSymsp->TOP__Rocket.__PVT__GEN_169 
                                  >> 2U));
        }
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_cause = 0U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
            if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543) {
                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_cause 
                    = ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_singleStepped)
                        ? 4U : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5606));
            }
        }
    }
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_dmode = 0U;
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_fp = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rocc;
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh = 0U;
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs = 0U;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_sel_imm 
            = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_sel_imm;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_wfd = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rocc;
    }
    vlSymsp->TOP__Rocket.__PVT__ex_reg_valid = (1U 
                                                & ((~ (IData)(vlSymsp->TOP__Rocket.reset)) 
                                                   & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551))));
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_rxs1 = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rxs1;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_rxs2 = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rxs2;
    }
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_msip 
        = vlTOPp->io_interrupts_msip;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_mtip 
        = vlTOPp->io_interrupts_mtip;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_meip 
        = vlTOPp->io_interrupts_meip;
    if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_474) {
        vlSymsp->TOP__Rocket.__PVT__div__DOT__req_in1 
            = vlSymsp->TOP__Rocket.__PVT__ex_rs_0;
    }
    if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_474) {
        VL_EXTEND_WI(66,32, __Vtemp9, vlSymsp->TOP__Rocket.__PVT__ex_rs_0);
        vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U] 
            = __Vtemp9[0U];
        vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U] 
            = __Vtemp9[1U];
        vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[2U] 
            = __Vtemp9[2U];
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_213) {
            VL_EXTEND_WW(66,65, __Vtemp10, vlSymsp->TOP__Rocket.__PVT__div__DOT__T_228);
            vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U] 
                = __Vtemp10[0U];
            vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U] 
                = __Vtemp10[1U];
            vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[2U] 
                = __Vtemp10[2U];
        } else {
            if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_150) {
                vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U] 
                    = vlSymsp->TOP__Rocket.__PVT__div__DOT__T_202[0U];
                vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U] 
                    = vlSymsp->TOP__Rocket.__PVT__div__DOT__T_202[1U];
                vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[2U] 
                    = vlSymsp->TOP__Rocket.__PVT__div__DOT__T_202[2U];
            } else {
                if ((3U == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state))) {
                    VL_EXTEND_WI(66,32, __Vtemp11, vlSymsp->TOP__Rocket.__PVT__div__DOT__T_147);
                    vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U] 
                        = __Vtemp11[0U];
                    vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U] 
                        = __Vtemp11[1U];
                    vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[2U] 
                        = __Vtemp11[2U];
                } else {
                    if ((4U == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state))) {
                        VL_EXTEND_WI(66,32, __Vtemp12, vlSymsp->TOP__Rocket.__PVT__div__DOT__negated_remainder);
                        vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U] 
                            = __Vtemp12[0U];
                        vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U] 
                            = __Vtemp12[1U];
                        vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[2U] 
                            = __Vtemp12[2U];
                    } else {
                        if ((1U == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state))) {
                            if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_142) {
                                VL_EXTEND_WI(66,32, __Vtemp13, vlSymsp->TOP__Rocket.__PVT__div__DOT__negated_remainder);
                                vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U] 
                                    = __Vtemp13[0U];
                                vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U] 
                                    = __Vtemp13[1U];
                                vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[2U] 
                                    = __Vtemp13[2U];
                            }
                        }
                    }
                }
            }
        }
    }
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mscounteren = 0U;
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_reg_load_use 
            = (((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid) 
                & (IData)(vlSymsp->TOP__Rocket.__PVT__data_hazard_mem)) 
               & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem));
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_rocc = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rocc;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        if (vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rocc) {
            vlSymsp->TOP__Rocket.__PVT__wb_reg_rs2 
                = vlSymsp->TOP__Rocket.__PVT__mem_reg_rs2;
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_sel_alu1 
            = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_sel_alu1;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_mem = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_wxd = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_wxd;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_hit 
            = vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_hit;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        if (vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_hit) {
            vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_taken 
                = vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_resp_taken;
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        if (vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_hit) {
            vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_mask 
                = vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_resp_mask;
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        if (vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_hit) {
            vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bridx 
                = vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_resp_bridx;
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        if (vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_hit) {
            vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_target 
                = vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_resp_target;
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        if (vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_hit) {
            vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_entry 
                = vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_resp_entry;
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        if (vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_hit) {
            vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bht_history 
                = vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_resp_bht_history;
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        if (vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_hit) {
            vlSymsp->TOP__Rocket.__PVT__mem_reg_btb_resp_bht_value 
                = vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_resp_bht_value;
        }
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_lsb_1 
            = (3U & ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7057)
                      ? vlSymsp->TOP__Rocket.__PVT__GEN_169
                      : ((0U == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2))
                          ? 0U : ((IData)(vlSymsp->TOP__Rocket.__PVT__id_bypass_src_1_1)
                                   ? 1U : ((IData)(vlSymsp->TOP__Rocket.__PVT__id_bypass_src_1_2)
                                            ? 2U : 3U)))));
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_amo = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_amo;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_fence = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_fence;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_fence_i 
            = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_fence_i;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_jal = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jal;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_branch 
            = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_branch;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_jalr = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jalr;
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        if (vlSymsp->TOP__Rocket.__PVT__T_7042) {
            vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_msb_0 
                = (0x3fffffffU & (vlSymsp->TOP__Rocket.__PVT__GEN_168 
                                  >> 2U));
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_div = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_div;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_reg_wdata = 
            (((0U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)) 
              | (0xaU == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)))
              ? (IData)(vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_20)
              : vlSymsp->TOP__Rocket.__PVT__alu__DOT__shift_logic);
    }
    if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_474) {
        vlSymsp->TOP__Rocket.__PVT__div__DOT__req_tag 
            = (0x1fU & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                        >> 7U));
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_lsb_0 
            = (3U & ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7042)
                      ? vlSymsp->TOP__Rocket.__PVT__GEN_168
                      : ((0U == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1))
                          ? 0U : ((IData)(vlSymsp->TOP__Rocket.__PVT__id_bypass_src_0_1)
                                   ? 1U : ((IData)(vlSymsp->TOP__Rocket.__PVT__id_bypass_src_0_2)
                                            ? 2U : 3U)))));
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_ctrl_csr = vlSymsp->TOP__Rocket.__PVT__mem_ctrl_csr;
    }
    vlSymsp->TOP__Rocket.__PVT__wb_reg_valid = (1U 
                                                & ((~ (IData)(vlSymsp->TOP__Rocket.reset)) 
                                                   & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__ctrl_killm))));
    if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
        if ((0x7b2U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) {
            vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dscratch 
                = vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata;
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
        if ((0x340U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) {
            vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mscratch 
                = vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata;
        }
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_halt = 0U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
            if ((0x7b0U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) {
                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_halt 
                    = (1U & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata 
                             >> 3U));
            }
        }
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakm = 0U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
            if ((0x7b0U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) {
                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakm 
                    = (1U & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata 
                             >> 0xfU));
            }
        }
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreaku = 0U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
            if ((0x7b0U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) {
                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreaku 
                    = (1U & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata 
                             >> 0xcU));
            }
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
        if ((0x341U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) {
            vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mepc 
                = (~ vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6221);
        } else {
            if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)))) {
                    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mepc 
                        = (~ vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5622);
                }
            }
        }
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
            if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)))) {
                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mepc 
                    = (~ vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5622);
            }
        }
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mtvec = 0U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
            if ((0x305U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) {
                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mtvec 
                    = (0xfffffffcU & vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata);
            }
        }
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mprv = 0U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
            if ((0x300U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) {
                VL_EXTEND_WI(99,32, __Vtemp14, vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata);
                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mprv 
                    = (1U & (__Vtemp14[0U] >> 0x11U));
            }
        }
    }
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4800 = 
        ((IData)(vlSymsp->TOP__Rocket.reset) ? VL_ULL(0)
          : (VL_ULL(0x3ffffffffffffff) & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen)
                                           ? ((0xb82U 
                                               == (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U)))
                                               ? (VL_ULL(0x3ffffffffffffff) 
                                                  & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6238 
                                                     >> 6U))
                                               : ((0xb02U 
                                                   == 
                                                   (0xfffU 
                                                    & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                       >> 0x14U)))
                                                   ? 
                                                  (VL_ULL(0x3ffffffffffffff) 
                                                   & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6235 
                                                      >> 6U))
                                                   : vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_37))
                                           : vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_37)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4797 = 
        ((IData)(vlSymsp->TOP__Rocket.reset) ? 0U : 
         (0x3fU & (IData)(((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen)
                            ? ((0xb82U == (0xfffU & 
                                           (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))
                                ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6238
                                : ((0xb02U == (0xfffU 
                                               & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                  >> 0x14U)))
                                    ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6235
                                    : (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4798))))
                            : (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4798))))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4810 = 
        ((IData)(vlSymsp->TOP__Rocket.reset) ? VL_ULL(0)
          : (VL_ULL(0x3ffffffffffffff) & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen)
                                           ? ((0xb80U 
                                               == (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U)))
                                               ? (VL_ULL(0x3ffffffffffffff) 
                                                  & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6232 
                                                     >> 6U))
                                               : ((0xb00U 
                                                   == 
                                                   (0xfffU 
                                                    & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                       >> 0x14U)))
                                                   ? 
                                                  (VL_ULL(0x3ffffffffffffff) 
                                                   & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6229 
                                                      >> 6U))
                                                   : vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_38))
                                           : vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_38)));
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_step = 0U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
            if ((0x7b0U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) {
                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_step 
                    = (1U & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata 
                             >> 2U));
            }
        }
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa = 0x40101105U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
            if ((0x301U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) {
                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa 
                    = vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6158;
            }
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
        if ((0x304U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) {
            vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mie 
                = (0x888U & vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata);
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
        if ((0x342U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) {
            vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mcause 
                = (0x8000001fU & vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata);
        } else {
            if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)))) {
                    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mcause 
                        = ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5508)
                            ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5521)
                            : vlSymsp->TOP__Rocket.__PVT__wb_reg_cause);
                }
            }
        }
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
            if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)))) {
                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mcause 
                    = ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5508)
                        ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5521)
                        : vlSymsp->TOP__Rocket.__PVT__wb_reg_cause);
            }
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
        if ((0x320U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) {
            vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mucounteren 
                = (7U & vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata);
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
        if ((0x7b1U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) {
            vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dpc 
                = (~ (1U | (~ vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata)));
        } else {
            if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543) {
                    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dpc 
                        = (~ (1U | (~ vlSymsp->TOP__Rocket.__PVT__wb_reg_pc)));
                }
            }
        }
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
            if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543) {
                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dpc 
                    = (~ (1U | (~ vlSymsp->TOP__Rocket.__PVT__wb_reg_pc)));
            }
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
        if ((0x343U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) {
            vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mbadaddr 
                = vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata;
        } else {
            if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)))) {
                    if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5599) {
                        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mbadaddr 
                            = vlSymsp->TOP__Rocket.__PVT__wb_reg_wdata;
                    }
                }
            }
        }
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
            if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)))) {
                if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5599) {
                    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mbadaddr 
                        = vlSymsp->TOP__Rocket.__PVT__wb_reg_wdata;
                }
            }
        }
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_dmode = 0U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
            if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6341) {
                if ((0x7a1U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) {
                    if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain) {
                        if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)))) {
                            vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_dmode 
                                = (1U & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata 
                                         >> 0x1bU));
                        }
                    } else {
                        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_dmode 
                            = vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6405;
                    }
                }
            }
        }
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_action = 0U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
            if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6341) {
                if ((0x7a1U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) {
                    if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain) {
                        if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)))) {
                            vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_action 
                                = (1U & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata 
                                         >> 0xcU));
                        }
                    } else {
                        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_action 
                            = vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6406;
                    }
                }
            }
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6341) {
            if ((0x7a1U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) {
                if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)))) {
                    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_tmatch 
                        = (3U & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata 
                                 >> 7U));
                }
            }
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6341) {
            if ((0x7a1U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) {
                if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)))) {
                    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_m 
                        = (1U & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata 
                                 >> 6U));
                }
            }
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6341) {
            if ((0x7a1U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) {
                if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)))) {
                    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_u 
                        = (1U & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata 
                                 >> 3U));
                }
            }
        }
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_x = 0U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
            if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6341) {
                if ((0x7a1U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) {
                    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)))) {
                        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_x 
                            = (1U & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata 
                                     >> 2U));
                    }
                }
            }
        }
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_w = 0U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
            if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6341) {
                if ((0x7a1U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) {
                    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)))) {
                        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_w 
                            = (1U & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata 
                                     >> 1U));
                    }
                }
            }
        }
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_r = 0U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
            if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6341) {
                if ((0x7a1U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) {
                    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)))) {
                        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_r 
                            = (1U & vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata);
                    }
                }
            }
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6341) {
            if ((0x7a2U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) {
                if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)))) {
                    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_address 
                        = vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata;
                }
            }
        }
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug = 0U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret) {
            if ((0x90U == (0x90U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                    >> 0x14U)))) {
                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug = 0U;
            } else {
                if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                    if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543) {
                        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug = 1U;
                    }
                }
            }
        } else {
            if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543) {
                    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug = 1U;
                }
            }
        }
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie = 0U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
            if ((0x300U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) {
                VL_EXTEND_WI(99,32, __Vtemp15, vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata);
                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie 
                    = (1U & (__Vtemp15[0U] >> 3U));
            } else {
                if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret) {
                    if ((0x90U != (0x90U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))) {
                        if ((2U & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp))) {
                            vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie 
                                = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie;
                        } else {
                            if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                                if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)))) {
                                    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie = 0U;
                                }
                            }
                        }
                    } else {
                        if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                            if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)))) {
                                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie = 0U;
                            }
                        }
                    }
                } else {
                    if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                        if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)))) {
                            vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie = 0U;
                        }
                    }
                }
            }
        } else {
            if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret) {
                if ((0x90U != (0x90U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                        >> 0x14U)))) {
                    if ((2U & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp))) {
                        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie 
                            = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie;
                    } else {
                        if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                            if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)))) {
                                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie = 0U;
                            }
                        }
                    }
                } else {
                    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie 
                        = vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_95;
                }
            } else {
                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie 
                    = vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_95;
            }
        }
    }
    __Vdly__csr__DOT__reg_mstatus_prv = ((IData)(vlSymsp->TOP__Rocket.reset)
                                          ? 3U : ((1U 
                                                   & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret)
                                                       ? 
                                                      ((0x90U 
                                                        != 
                                                        (0x90U 
                                                         & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                            >> 0x14U)))
                                                        ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp)
                                                        : 
                                                       ((0x90U 
                                                         == 
                                                         (0x90U 
                                                          & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                             >> 0x14U)))
                                                         ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_prv)
                                                         : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_89)))
                                                       : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_89)))
                                                   ? 3U
                                                   : 0U));
    vlSymsp->TOP__Rocket.__PVT__error = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_rvc) 
                                         & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__ctrl_killm)));
    if (__Vdlyvset__T_6545__v0) {
        vlSymsp->TOP__Rocket.__PVT__T_6545[__Vdlyvdim0__T_6545__v0] 
            = __Vdlyvval__T_6545__v0;
    }
    vlSymsp->TOP__Rocket.__PVT__wb_reg_xcpt = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_xcpt) 
                                               & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7371)));
    vlSymsp->TOP__Rocket.__PVT__T_7683 = vlSymsp->TOP__Rocket.__PVT__T_7682;
    vlSymsp->TOP__Rocket.__PVT__T_7680 = vlSymsp->TOP__Rocket.__PVT__T_7679;
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rfs1 = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rfs1;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rfs3 = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rfs3;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rfs2 = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rfs2;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_dp = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_dp;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_alu_dw 
            = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_dw;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_legal 
            = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_legal;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem_type 
            = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_type;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem_cmd 
            = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd;
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_reg_flush_pipe 
            = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7027) 
               | (IData)(vlSymsp->TOP__Rocket.__PVT__T_7026));
    }
    vlSymsp->TOP__Rocket.__PVT__ex_reg_xcpt_interrupt 
        = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7007) 
           & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_39));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_144 = (1U 
                                                   & ((IData)(
                                                              (vlSymsp->TOP__Rocket.__PVT__div__DOT__divisor 
                                                               >> 0x1fU)) 
                                                      | (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__isMul)));
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_alu_fn 
            = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_sel_alu2 
            = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_alu2;
    }
    vlSymsp->TOP__Rocket.__PVT__mem_reg_replay = ((~ (IData)(vlSymsp->TOP__Rocket.__PVT__take_pc_mem_wb)) 
                                                  & (IData)(vlSymsp->TOP__Rocket.__PVT__replay_ex));
    if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5566) {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4601) {
            vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_singleStepped = 1U;
        }
    } else {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_singleStepped = 0U;
    }
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573 = 
        ((0U == (3U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs)))) 
         | (0U == (3U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs)))));
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_sel_imm 
            = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rxs1 = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rxs1;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rxs2 = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rxs2;
    }
    vlSymsp->TOP__Rocket.__PVT__div__DOT__negated_remainder 
        = (IData)((VL_ULL(0x1ffffffff) & VL_NEGATE_Q((QData)((IData)(
                                                                     vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U])))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_147 = (
                                                   (vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[2U] 
                                                    << 0x1fU) 
                                                   | (vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U] 
                                                      >> 1U));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_142 = (1U 
                                                   & ((vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U] 
                                                       >> 0x1fU) 
                                                      | (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__isMul)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136 = (VL_ULL(0x3ffffffff) 
                                                   & ((VL_ULL(0x1ffffffff) 
                                                       & (((QData)((IData)(
                                                                           vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[2U])) 
                                                           << 0x20U) 
                                                          | (QData)((IData)(
                                                                            vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U])))) 
                                                      - vlSymsp->TOP__Rocket.__PVT__div__DOT__divisor));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[0U] 
        = vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U];
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[1U] 
        = (IData)((VL_ULL(0x1ffffffff) & (((QData)((IData)(
                                                           vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[2U])) 
                                           << 0x1fU) 
                                          | ((QData)((IData)(
                                                             vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U])) 
                                             >> 1U))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[2U] 
        = (IData)(((VL_ULL(0x1ffffffff) & (((QData)((IData)(
                                                            vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[2U])) 
                                            << 0x1fU) 
                                           | ((QData)((IData)(
                                                              vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U])) 
                                              >> 1U))) 
                   >> 0x20U));
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__div__DOT__state = 0U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_474) {
            vlSymsp->TOP__Rocket.__PVT__div__DOT__state 
                = ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_478)
                    ? 1U : 2U);
        } else {
            if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_473) {
                vlSymsp->TOP__Rocket.__PVT__div__DOT__state = 0U;
            } else {
                if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_213) {
                    if ((0x20U == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__count))) {
                        vlSymsp->TOP__Rocket.__PVT__div__DOT__state 
                            = ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__isHi)
                                ? 3U : ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__neg_out)
                                         ? 4U : 5U));
                    } else {
                        if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_150) {
                            if ((0x1fU == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__count))) {
                                vlSymsp->TOP__Rocket.__PVT__div__DOT__state 
                                    = ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__isHi)
                                        ? 3U : 5U);
                            } else {
                                if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_146) {
                                    vlSymsp->TOP__Rocket.__PVT__div__DOT__state 
                                        = ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__neg_out)
                                            ? 4U : 5U);
                                } else {
                                    if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_145) {
                                        vlSymsp->TOP__Rocket.__PVT__div__DOT__state = 5U;
                                    } else {
                                        if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_140) {
                                            vlSymsp->TOP__Rocket.__PVT__div__DOT__state = 2U;
                                        }
                                    }
                                }
                            }
                        } else {
                            if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_146) {
                                vlSymsp->TOP__Rocket.__PVT__div__DOT__state 
                                    = ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__neg_out)
                                        ? 4U : 5U);
                            } else {
                                if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_145) {
                                    vlSymsp->TOP__Rocket.__PVT__div__DOT__state = 5U;
                                } else {
                                    if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_140) {
                                        vlSymsp->TOP__Rocket.__PVT__div__DOT__state = 2U;
                                    }
                                }
                            }
                        }
                    }
                } else {
                    if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_150) {
                        if ((0x1fU == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__count))) {
                            vlSymsp->TOP__Rocket.__PVT__div__DOT__state 
                                = ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__isHi)
                                    ? 3U : 5U);
                        } else {
                            if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_146) {
                                vlSymsp->TOP__Rocket.__PVT__div__DOT__state 
                                    = ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__neg_out)
                                        ? 4U : 5U);
                            } else {
                                if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_145) {
                                    vlSymsp->TOP__Rocket.__PVT__div__DOT__state = 5U;
                                } else {
                                    if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_140) {
                                        vlSymsp->TOP__Rocket.__PVT__div__DOT__state = 2U;
                                    }
                                }
                            }
                        }
                    } else {
                        if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_146) {
                            vlSymsp->TOP__Rocket.__PVT__div__DOT__state 
                                = ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__neg_out)
                                    ? 4U : 5U);
                        } else {
                            if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_145) {
                                vlSymsp->TOP__Rocket.__PVT__div__DOT__state = 5U;
                            } else {
                                if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_140) {
                                    vlSymsp->TOP__Rocket.__PVT__div__DOT__state = 2U;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    vlSymsp->TOP__Rocket.__PVT__mem_reg_valid = (1U 
                                                 & ((~ (IData)(vlSymsp->TOP__Rocket.reset)) 
                                                    & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__ctrl_killx))));
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rocc = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rocc;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_sel_alu1 
            = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_alu1;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_wxd = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_wxd;
    }
    vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_hit = vlSymsp->TOP__Rocket__ibuf.__PVT__T_540;
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_540) {
        vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_resp_taken 
            = ((0U != (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_471))
                ? (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBResp_taken)
                : (IData)(vlTOPp->io_imem_resp_bits_btb_bits_taken));
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_540) {
        vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_resp_mask 
            = ((0U != (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_471))
                ? (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBResp_mask)
                : (IData)(vlTOPp->io_imem_resp_bits_btb_bits_mask));
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_540) {
        vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_resp_target 
            = ((0U != (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_471))
                ? vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBResp_target
                : vlTOPp->io_imem_resp_bits_btb_bits_target);
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_540) {
        vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_resp_entry 
            = ((0U != (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_471))
                ? (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBResp_entry)
                : (IData)(vlTOPp->io_imem_resp_bits_btb_bits_entry));
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_540) {
        vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_resp_bht_history 
            = ((0U != (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_471))
                ? (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBResp_bht_history)
                : (IData)(vlTOPp->io_imem_resp_bits_btb_bits_bht_history));
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_540) {
        vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_resp_bht_value 
            = ((0U != (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_471))
                ? (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBResp_bht_value)
                : (IData)(vlTOPp->io_imem_resp_bits_btb_bits_bht_value));
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_540) {
        vlSymsp->TOP__Rocket.__PVT__ex_reg_btb_resp_bridx 
            = ((0U != (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_471))
                ? (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBResp_bridx)
                : (IData)(vlTOPp->io_imem_resp_bits_btb_bits_bridx));
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_amo = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_amo;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_fence 
            = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_fence;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_fence_i 
            = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_fence_i;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jal = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_jal;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_branch 
            = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_branch;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jalr = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_jalr;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_div = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_div;
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_ctrl_csr = vlSymsp->TOP__Rocket.__PVT__ex_ctrl_csr;
    }
    vlSymsp->TOP__Rocket.__PVT__T_6842 = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_valid) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_rocc));
    vlSymsp->TOP__Rocket.__PVT__wb_wxd = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_valid) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_wxd));
    vlSymsp->TOP__Rocket.__PVT__T_7399 = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_valid)
                                           ? (IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_csr)
                                           : 0U);
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4804 = 
        ((vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4800 
          << 6U) | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4797)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_38 = 
        (VL_ULL(0x7ffffffffffffff) & ((0x40U & ((IData)(1U) 
                                                + (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4807)))
                                       ? (VL_ULL(1) 
                                          + vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4810)
                                       : vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4810));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4814 = 
        ((vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4810 
          << 6U) | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4807)));
    if (vlSymsp->TOP__Rocket.__PVT__mem_xcpt) {
        vlSymsp->TOP__Rocket.__PVT__wb_reg_cause = 
            ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7338)
              ? vlSymsp->TOP__Rocket.__PVT__mem_reg_cause
              : (IData)(vlSymsp->TOP__Rocket.__PVT__mem_new_cause));
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_reg_pc = vlSymsp->TOP__Rocket.__PVT__mem_reg_pc;
    }
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_reg_wdata = 
            ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7364)
              ? vlSymsp->TOP__Rocket.io_fpu_toint_data
              : vlSymsp->TOP__Rocket.__PVT__T_7274);
    }
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain = 0U;
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_186 = (1U 
                                                   & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_tmatch) 
                                                      & vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_address));
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie = 0U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
            if ((0x300U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) {
                VL_EXTEND_WI(99,32, __Vtemp17, vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata);
                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie 
                    = (1U & (__Vtemp17[0U] >> 7U));
            } else {
                if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret) {
                    if ((0x90U != (0x90U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))) {
                        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie = 0U;
                    } else {
                        if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                            if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)))) {
                                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie 
                                    = (1U & vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5578);
                            }
                        }
                    }
                } else {
                    if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                        if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)))) {
                            vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie 
                                = (1U & vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5578);
                        }
                    }
                }
            }
        } else {
            if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret) {
                if ((0x90U != (0x90U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                        >> 0x14U)))) {
                    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie = 0U;
                } else {
                    if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                        if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)))) {
                            vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie 
                                = (1U & vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5578);
                        }
                    }
                }
            } else {
                if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)))) {
                        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie 
                            = (1U & vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5578);
                    }
                }
            }
        }
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_prv = 3U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
            if ((0x7b0U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) {
                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_prv 
                    = ((1U & vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata)
                        ? 3U : 0U);
            } else {
                if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                    if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543) {
                        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_prv 
                            = ((1U & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv))
                                ? 3U : 0U);
                    }
                }
            }
        } else {
            if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543) {
                    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_prv 
                        = ((1U & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv))
                            ? 3U : 0U);
                }
            }
        }
    }
    if (vlSymsp->TOP__Rocket.reset) {
        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp = 3U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen) {
            if ((0x300U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) {
                VL_EXTEND_WI(99,32, __Vtemp18, vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata);
                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp 
                    = ((0x800U & __Vtemp18[0U]) ? 3U
                        : 0U);
            } else {
                if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret) {
                    if ((0x90U != (0x90U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))) {
                        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp = 0U;
                    } else {
                        if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                            if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)))) {
                                vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp 
                                    = ((1U & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv))
                                        ? 3U : 0U);
                            }
                        }
                    }
                } else {
                    if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                        if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)))) {
                            vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp 
                                = ((1U & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv))
                                    ? 3U : 0U);
                        }
                    }
                }
            }
        } else {
            if (vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret) {
                if ((0x90U != (0x90U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                        >> 0x14U)))) {
                    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp = 0U;
                } else {
                    if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                        if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)))) {
                            vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp 
                                = ((1U & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv))
                                    ? 3U : 0U);
                        }
                    }
                }
            } else {
                if (vlSymsp->TOP__Rocket.__PVT__wb_xcpt) {
                    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)))) {
                        vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp 
                            = ((1U & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv))
                                ? 3U : 0U);
                    }
                }
            }
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_reg_rvc = vlSymsp->TOP__Rocket.__PVT__ex_reg_rvc;
    }
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5566 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_step) 
         & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_228[0U] 
        = ((0xfffffffeU & ((IData)((((QData)((IData)(
                                                     ((1U 
                                                       & (IData)(
                                                                 (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136 
                                                                  >> 0x20U)))
                                                       ? 
                                                      vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U]
                                                       : (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136)))) 
                                     << 0x20U) | (QData)((IData)(
                                                                 vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U])))) 
                           << 1U)) | (1U & (~ (IData)(
                                                      (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136 
                                                       >> 0x20U)))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_228[1U] 
        = ((1U & ((IData)((((QData)((IData)(((1U & (IData)(
                                                           (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136 
                                                            >> 0x20U)))
                                              ? vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U]
                                              : (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136)))) 
                            << 0x20U) | (QData)((IData)(
                                                        vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U])))) 
                  >> 0x1fU)) | (0xfffffffeU & ((IData)(
                                                       ((((QData)((IData)(
                                                                          ((1U 
                                                                            & (IData)(
                                                                                (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136 
                                                                                >> 0x20U)))
                                                                            ? 
                                                                           vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U]
                                                                            : (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136)))) 
                                                          << 0x20U) 
                                                         | (QData)((IData)(
                                                                           vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U]))) 
                                                        >> 0x20U)) 
                                               << 1U)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_228[2U] 
        = (1U & ((IData)(((((QData)((IData)(((1U & (IData)(
                                                           (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136 
                                                            >> 0x20U)))
                                              ? vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[1U]
                                              : (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136)))) 
                            << 0x20U) | (QData)((IData)(
                                                        vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U]))) 
                          >> 0x20U)) >> 0x1fU));
    __Vtemp20[1U] = ((0x7fffffffU & ((IData)((VL_ULL(0x3ffffffff) 
                                              & ((VL_ULL(0x7ffffffff) 
                                                  & VL_EXTENDS_QQ(35,34, 
                                                                  (VL_ULL(0x3ffffffff) 
                                                                   & VL_MULS_QQQ(34,34,34, 
                                                                                (VL_ULL(0x3ffffffff) 
                                                                                & VL_EXTENDS_QQ(34,33, vlSymsp->TOP__Rocket.__PVT__div__DOT__divisor)), (QData)((IData)(
                                                                                (1U 
                                                                                & vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[0U]))))))) 
                                                 + 
                                                 (VL_ULL(0x7ffffffff) 
                                                  & VL_EXTENDS_QQ(35,34, 
                                                                  (((QData)((IData)(
                                                                                (1U 
                                                                                & vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[2U]))) 
                                                                    << 0x21U) 
                                                                   | (VL_ULL(0x1ffffffff) 
                                                                      & (((QData)((IData)(
                                                                                vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[2U])) 
                                                                          << 0x20U) 
                                                                         | (QData)((IData)(
                                                                                vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[1U])))))))))) 
                                     >> 1U)) | (0x80000000U 
                                                & ((IData)(
                                                           ((VL_ULL(0x3ffffffff) 
                                                             & ((VL_ULL(0x7ffffffff) 
                                                                 & VL_EXTENDS_QQ(35,34, 
                                                                                (VL_ULL(0x3ffffffff) 
                                                                                & VL_MULS_QQQ(34,34,34, 
                                                                                (VL_ULL(0x3ffffffff) 
                                                                                & VL_EXTENDS_QQ(34,33, vlSymsp->TOP__Rocket.__PVT__div__DOT__divisor)), (QData)((IData)(
                                                                                (1U 
                                                                                & vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[0U]))))))) 
                                                                + 
                                                                (VL_ULL(0x7ffffffff) 
                                                                 & VL_EXTENDS_QQ(35,34, 
                                                                                (((QData)((IData)(
                                                                                (1U 
                                                                                & vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[2U]))) 
                                                                                << 0x21U) 
                                                                                | (VL_ULL(0x1ffffffff) 
                                                                                & (((QData)((IData)(
                                                                                vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[2U])) 
                                                                                << 0x20U) 
                                                                                | (QData)((IData)(
                                                                                vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[1U]))))))))) 
                                                            >> 0x20U)) 
                                                   << 0x1fU)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[0U] 
        = ((0x80000000U & ((IData)((VL_ULL(0x3ffffffff) 
                                    & ((VL_ULL(0x7ffffffff) 
                                        & VL_EXTENDS_QQ(35,34, 
                                                        (VL_ULL(0x3ffffffff) 
                                                         & VL_MULS_QQQ(34,34,34, 
                                                                       (VL_ULL(0x3ffffffff) 
                                                                        & VL_EXTENDS_QQ(34,33, vlSymsp->TOP__Rocket.__PVT__div__DOT__divisor)), (QData)((IData)(
                                                                                (1U 
                                                                                & vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[0U]))))))) 
                                       + (VL_ULL(0x7ffffffff) 
                                          & VL_EXTENDS_QQ(35,34, 
                                                          (((QData)((IData)(
                                                                            (1U 
                                                                             & vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[2U]))) 
                                                            << 0x21U) 
                                                           | (VL_ULL(0x1ffffffff) 
                                                              & (((QData)((IData)(
                                                                                vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[2U])) 
                                                                  << 0x20U) 
                                                                 | (QData)((IData)(
                                                                                vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[1U])))))))))) 
                           << 0x1fU)) | (0x7fffffffU 
                                         & ((vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[1U] 
                                             << 0x1fU) 
                                            | (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[0U] 
                                               >> 1U))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[1U] 
        = __Vtemp20[1U];
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[2U] 
        = (0x7fffffffU & ((IData)(((VL_ULL(0x3ffffffff) 
                                    & ((VL_ULL(0x7ffffffff) 
                                        & VL_EXTENDS_QQ(35,34, 
                                                        (VL_ULL(0x3ffffffff) 
                                                         & VL_MULS_QQQ(34,34,34, 
                                                                       (VL_ULL(0x3ffffffff) 
                                                                        & VL_EXTENDS_QQ(34,33, vlSymsp->TOP__Rocket.__PVT__div__DOT__divisor)), (QData)((IData)(
                                                                                (1U 
                                                                                & vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[0U]))))))) 
                                       + (VL_ULL(0x7ffffffff) 
                                          & VL_EXTENDS_QQ(35,34, 
                                                          (((QData)((IData)(
                                                                            (1U 
                                                                             & vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[2U]))) 
                                                            << 0x21U) 
                                                           | (VL_ULL(0x1ffffffff) 
                                                              & (((QData)((IData)(
                                                                                vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[2U])) 
                                                                  << 0x20U) 
                                                                 | (QData)((IData)(
                                                                                vlSymsp->TOP__Rocket.__PVT__div__DOT__T_153[1U]))))))))) 
                                   >> 0x20U)) >> 1U));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__cpu_ren = 
        ((0U != (IData)(vlSymsp->TOP__Rocket.__PVT__T_7399)) 
         & (4U != (IData)(vlSymsp->TOP__Rocket.__PVT__T_7399)));
    vlSymsp->TOP__Rocket.__PVT__T_7338 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_xcpt_interrupt) 
                                          | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_xcpt));
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_188 = ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_186) 
                                                   & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_address 
                                                      >> 1U));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv 
        = __Vdly__csr__DOT__reg_mstatus_prv;
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        if (vlSymsp->TOP__Rocket.__PVT__T_7312) {
            vlSymsp->TOP__Rocket.__PVT__mem_reg_rs2 
                = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_bypass_1)
                    ? vlSymsp->TOP__Rocket.__PVT__GEN_7
                    : vlSymsp->TOP__Rocket.__PVT__T_6914);
        }
    }
    vlSymsp->TOP__Rocket.__PVT__T_7682 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_bypass_1)
                                           ? vlSymsp->TOP__Rocket.__PVT__GEN_7
                                           : vlSymsp->TOP__Rocket.__PVT__T_6914);
    vlSymsp->TOP__Rocket.__PVT__T_7679 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_bypass_0)
                                           ? vlSymsp->TOP__Rocket.__PVT__GEN_4
                                           : vlSymsp->TOP__Rocket.__PVT__T_6909);
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rfs1 = 0U;
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rfs3 = 0U;
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rfs2 = 0U;
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_dp = 0U;
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_dw = 1U;
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_legal = vlSymsp->TOP__Rocket.__PVT__T_6136;
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_type 
            = vlSymsp->TOP__Rocket.__PVT__T_6463;
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd 
            = vlSymsp->TOP__Rocket.__PVT__T_6443;
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn 
            = ((IData)(vlSymsp->TOP__Rocket.__PVT__id_xcpt)
                ? 0U : (IData)(vlSymsp->TOP__Rocket.__PVT__T_6367));
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_alu2 
            = ((IData)(vlSymsp->TOP__Rocket.__PVT__id_xcpt)
                ? ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7023)
                    ? 1U : 0U) : (IData)(vlSymsp->TOP__Rocket.__PVT__T_6228));
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm 
            = vlSymsp->TOP__Rocket.__PVT__T_6277;
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rxs1 = vlSymsp->TOP__Rocket.__PVT__T_6193;
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rxs2 = vlSymsp->TOP__Rocket.__PVT__T_6172;
    }
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_202[0U] 
        = (IData)((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[0U])));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_202[1U] 
        = ((0xfffffffeU & ((IData)((VL_ULL(0x1ffffffff) 
                                    & (((QData)((IData)(
                                                        vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[2U])) 
                                        << 0x20U) | (QData)((IData)(
                                                                    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[1U]))))) 
                           << 1U)) | (IData)(((QData)((IData)(
                                                              vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[0U])) 
                                              >> 0x20U)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_202[2U] 
        = ((1U & ((IData)((VL_ULL(0x1ffffffff) & (((QData)((IData)(
                                                                   vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[2U])) 
                                                   << 0x20U) 
                                                  | (QData)((IData)(
                                                                    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[1U]))))) 
                  >> 0x1fU)) | (0xfffffffeU & ((IData)(
                                                       ((VL_ULL(0x1ffffffff) 
                                                         & (((QData)((IData)(
                                                                             vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[2U])) 
                                                             << 0x20U) 
                                                            | (QData)((IData)(
                                                                              vlSymsp->TOP__Rocket.__PVT__div__DOT__T_165[1U])))) 
                                                        >> 0x20U)) 
                                               << 1U)));
    if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_474) {
        vlSymsp->TOP__Rocket.__PVT__div__DOT__isHi 
            = vlSymsp->TOP__Rocket.__PVT__div__DOT__T_92;
    }
    if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_474) {
        vlSymsp->TOP__Rocket.__PVT__div__DOT__neg_out 
            = vlSymsp->TOP__Rocket.__PVT__div__DOT__T_485;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_213) {
            if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_470) {
                vlSymsp->TOP__Rocket.__PVT__div__DOT__neg_out = 0U;
            }
        }
    }
    if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_474) {
        vlSymsp->TOP__Rocket.__PVT__div__DOT__count = 0U;
    } else {
        if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_213) {
            vlSymsp->TOP__Rocket.__PVT__div__DOT__count 
                = vlSymsp->TOP__Rocket.__PVT__div__DOT__T_205;
        } else {
            if (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_150) {
                vlSymsp->TOP__Rocket.__PVT__div__DOT__count 
                    = vlSymsp->TOP__Rocket.__PVT__div__DOT__T_205;
            }
        }
    }
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_140 = (1U 
                                                   == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_145 = (4U 
                                                   == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_146 = (3U 
                                                   == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state));
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rocc = 0U;
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_alu1 
            = ((IData)(vlSymsp->TOP__Rocket.__PVT__id_xcpt)
                ? 2U : (IData)(vlSymsp->TOP__Rocket.__PVT__T_6245));
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem = vlSymsp->TOP__Rocket.__PVT__T_6383;
    }
    vlSymsp->TOP__Rocket.__PVT__T_7364 = (((~ (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_xcpt)) 
                                           & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rocc)) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_wxd));
    vlSymsp->TOP__Rocket.__PVT__T_6867 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_wxd));
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_wxd = vlSymsp->TOP__Rocket.__PVT__T_6501;
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_amo = (0x2008U 
                                                   == 
                                                   (0x2048U 
                                                    & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits));
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_fence = 
            (8U == (0x3048U & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits));
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_fence_i 
            = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7027) 
               | (0x1008U == (0x1048U & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)));
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_jal = (0x48U 
                                                   == 
                                                   (0x48U 
                                                    & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits));
    }
    vlSymsp->TOP__Rocket.__PVT__T_7106 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_branch) 
                                          & vlSymsp->TOP__Rocket.__PVT__mem_reg_wdata);
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_branch 
            = (0x40U == (0x54U & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits));
    }
    vlSymsp->TOP__Rocket.__PVT__T_7586 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jal) 
                                          | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jalr));
    vlSymsp->TOP__Rocket.__PVT__mem_cfi = (((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_branch) 
                                            | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jalr)) 
                                           | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jal));
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_jalr = 
            (4U == (0x1cU & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits));
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_div = (0x2000030U 
                                                   == 
                                                   (0x2000074U 
                                                    & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits));
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_ctrl_csr = ((IData)(vlSymsp->TOP__Rocket.__PVT__id_csr_ren)
                                                    ? 5U
                                                    : (IData)(vlSymsp->TOP__Rocket.__PVT__T_6521));
    }
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__cpu_wen = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__cpu_ren) 
         & (5U != (IData)(vlSymsp->TOP__Rocket.__PVT__T_7399)));
    if (vlSymsp->TOP__Rocket.__PVT__ex_xcpt) {
        vlSymsp->TOP__Rocket.__PVT__mem_reg_cause = 
            ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7102)
              ? vlSymsp->TOP__Rocket.__PVT__ex_reg_cause
              : 2U);
    }
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5622 = 
        (1U | ((~ vlSymsp->TOP__Rocket.__PVT__wb_reg_pc) 
               | (2U & ((~ (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa 
                            >> 2U)) << 1U))));
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_reg_pc = vlSymsp->TOP__Rocket.__PVT__ex_reg_pc;
    }
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_42 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
          ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_dmode)
          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_dmode));
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_193 = (
                                                   ((0xfffffff8U 
                                                     & (((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_188) 
                                                         << 3U) 
                                                        & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_address 
                                                           << 1U))) 
                                                    | ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_188) 
                                                       << 2U)) 
                                                   | (((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_186) 
                                                       << 1U) 
                                                      | (1U 
                                                         & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_tmatch))));
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_176 = (1U 
                                                   & ((~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)) 
                                                      & (((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_m) 
                                                            << 3U) 
                                                           | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain) 
                                                              << 2U)) 
                                                          | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain) 
                                                              << 1U) 
                                                             | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_u))) 
                                                         >> (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv))));
    __Vtemp23[1U] = ((0x3fffU & ((IData)((((QData)((IData)(
                                                           ((vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero3 
                                                             << 1U) 
                                                            | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573)))) 
                                           << 2U) | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs)))) 
                                 >> 0x12U)) | (0xffffc000U 
                                               & ((0xffff0000U 
                                                   & ((IData)(
                                                              ((((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)) 
                                                                 << 0x23U) 
                                                                | ((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa)) 
                                                                   << 3U)) 
                                                               | (QData)((IData)(
                                                                                (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv) 
                                                                                << 1U) 
                                                                                | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573)))))) 
                                                      << 0x10U)) 
                                                  | ((IData)(
                                                             ((((QData)((IData)(
                                                                                ((vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero3 
                                                                                << 1U) 
                                                                                | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573)))) 
                                                                << 2U) 
                                                               | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs))) 
                                                              >> 0x20U)) 
                                                     << 0xeU))));
    __Vtemp23[2U] = ((0x3fffU & ((0x3fffU & ((IData)(
                                                     ((((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)) 
                                                        << 0x23U) 
                                                       | ((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa)) 
                                                          << 3U)) 
                                                      | (QData)((IData)(
                                                                        (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv) 
                                                                          << 1U) 
                                                                         | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573)))))) 
                                             >> 0x10U)) 
                                 | ((IData)(((((QData)((IData)(
                                                               ((vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero3 
                                                                 << 1U) 
                                                                | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573)))) 
                                               << 2U) 
                                              | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs))) 
                                             >> 0x20U)) 
                                    >> 0x12U))) | (0xffffc000U 
                                                   & ((0xc000U 
                                                       & ((IData)(
                                                                  ((((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)) 
                                                                     << 0x23U) 
                                                                    | ((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa)) 
                                                                       << 3U)) 
                                                                   | (QData)((IData)(
                                                                                (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv) 
                                                                                << 1U) 
                                                                                | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573)))))) 
                                                          >> 0x10U)) 
                                                      | (0xffff0000U 
                                                         & ((IData)(
                                                                    (((((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)) 
                                                                        << 0x23U) 
                                                                       | ((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa)) 
                                                                          << 3U)) 
                                                                      | (QData)((IData)(
                                                                                (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv) 
                                                                                << 1U) 
                                                                                | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573))))) 
                                                                     >> 0x20U)) 
                                                            << 0x10U)))));
    __Vtemp24[0U] = ((0xffff8000U & ((0xe0000000U & 
                                      ((IData)((((QData)((IData)(
                                                                 ((vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero3 
                                                                   << 1U) 
                                                                  | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573)))) 
                                                 << 2U) 
                                                | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs)))) 
                                       << 0x1dU)) | 
                                     ((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_vm) 
                                        << 0x18U) | 
                                       (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero1) 
                                         << 0x14U) 
                                        | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh) 
                                           << 0x13U))) 
                                      | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh) 
                                          << 0x12U) 
                                         | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mprv) 
                                             << 0x11U) 
                                            | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs) 
                                               << 0xfU)))))) 
                     | (((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs) 
                           << 0xdU) | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp) 
                                        << 0xbU) | 
                                       ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs) 
                                        << 9U))) | 
                         (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_spp) 
                           << 8U) | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie) 
                                      << 7U) | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh) 
                                                << 6U)))) 
                        | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh) 
                            << 5U) | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh) 
                                       << 4U) | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie) 
                                                  << 3U) 
                                                 | (7U 
                                                    & VL_NEGATE_I((IData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh)))))))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5004[0U] 
        = __Vtemp24[0U];
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5004[1U] 
        = ((0x7fffU & ((0x7fffU & ((IData)((((QData)((IData)(
                                                             ((vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero3 
                                                               << 1U) 
                                                              | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5573)))) 
                                             << 2U) 
                                            | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs)))) 
                                   >> 3U)) | ((0x7fffU 
                                               & (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_vm) 
                                                   >> 8U) 
                                                  | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_zero1) 
                                                      >> 0xcU) 
                                                     | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh) 
                                                        >> 0xdU)))) 
                                              | ((0x7fffU 
                                                  & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh) 
                                                     >> 0xeU)) 
                                                 | ((0x7fffU 
                                                     & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mprv) 
                                                        >> 0xfU)) 
                                                    | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_fs) 
                                                       >> 0x11U)))))) 
           | (0xffff8000U & (__Vtemp23[1U] << 0xfU)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5004[2U] 
        = ((0x7fffU & (__Vtemp23[1U] >> 0x11U)) | (0xffff8000U 
                                                   & (__Vtemp23[2U] 
                                                      << 0xfU)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5004[3U] 
        = (0x7fffU & (__Vtemp23[2U] >> 0x11U));
    if (vlSymsp->TOP__Rocket.__PVT__T_7360) {
        vlSymsp->TOP__Rocket.__PVT__wb_reg_inst = vlSymsp->TOP__Rocket.__PVT__mem_reg_inst;
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_reg_rvc = ((IData)(vlSymsp->TOP__Rocket.__PVT__id_xcpt)
                                                   ? 
                                                  ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7023) 
                                                   | (3U 
                                                      != 
                                                      (3U 
                                                       & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)))
                                                   : 
                                                  (3U 
                                                   != 
                                                   (3U 
                                                    & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)));
    }
    vlSymsp->TOP__Rocket.__PVT__T_6914 = ((vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_msb_1 
                                           << 2U) | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_lsb_1));
    vlSymsp->TOP__Rocket.__PVT__T_6909 = ((vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_msb_0 
                                           << 2U) | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_lsb_0));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_213 = (
                                                   (2U 
                                                    == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state)) 
                                                   & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__isMul)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_150 = (
                                                   (2U 
                                                    == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state)) 
                                                   & (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__isMul));
    vlSymsp->TOP__Rocket.__PVT__T_6870 = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6867) 
                                          & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem)));
    vlSymsp->TOP__Rocket.__PVT__mem_cfi_taken = (((IData)(vlSymsp->TOP__Rocket.__PVT__T_7106) 
                                                  | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jalr)) 
                                                 | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jal));
    vlSymsp->TOP__Rocket.__PVT__T_7102 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_xcpt_interrupt) 
                                          | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_xcpt));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6341 = 
        (1U & ((~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_42)) 
               | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)));
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_206 = (
                                                   (~ vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_address) 
                                                   | (IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_193));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5578 = 
        (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5004[0U] 
         >> (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv));
    vlSymsp->TOP__Rocket.__PVT__T_7360 = (((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid) 
                                           | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_replay)) 
                                          | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_xcpt_interrupt));
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_bypass_1 
            = vlSymsp->TOP__Rocket.__PVT__T_7047;
    }
    if ((1U & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)))) {
        vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_bypass_0 
            = vlSymsp->TOP__Rocket.__PVT__T_7032;
    }
    vlSymsp->TOP__Rocket.__PVT__ex_slow_bypass = ((7U 
                                                   == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd)) 
                                                  | ((((0U 
                                                        == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_type)) 
                                                       | (4U 
                                                          == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_type))) 
                                                      | (1U 
                                                         == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_type))) 
                                                     | (5U 
                                                        == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_type))));
    vlSymsp->TOP__Rocket.__PVT__T_7300 = (1U & (((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd) 
                                                 >> 3U) 
                                                | (4U 
                                                   == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_92 = ((
                                                   (1U 
                                                    == 
                                                    (5U 
                                                     & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))) 
                                                   | (2U 
                                                      == 
                                                      (2U 
                                                       & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)))) 
                                                  | (8U 
                                                     == 
                                                     (8U 
                                                      & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_80 = ((0U 
                                                   == 
                                                   (4U 
                                                    & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))) 
                                                  | (8U 
                                                     == 
                                                     (8U 
                                                      & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_103 = (
                                                   (0U 
                                                    == 
                                                    (9U 
                                                     & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))) 
                                                   | (0U 
                                                      == 
                                                      (4U 
                                                       & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_41 = ((5U 
                                                   == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)) 
                                                  | (0xbU 
                                                     == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)));
    vlSymsp->TOP__Rocket.__PVT__T_6932 = ((2U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm)) 
                                          | (5U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__GEN_8 = (
                                                   (3U 
                                                    == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state))
                                                    ? 
                                                   ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__neg_out)
                                                     ? 4U
                                                     : 5U)
                                                    : 
                                                   ((4U 
                                                     == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state))
                                                     ? 5U
                                                     : 
                                                    ((1U 
                                                      == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state))
                                                      ? 2U
                                                      : (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_205 = (0x3fU 
                                                   & ((IData)(1U) 
                                                      + (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__count)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_470 = (
                                                   ((0U 
                                                     == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__count)) 
                                                    & (~ (IData)(
                                                                 (vlSymsp->TOP__Rocket.__PVT__div__DOT__T_136 
                                                                  >> 0x20U)))) 
                                                   & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__isHi)));
    vlSymsp->TOP__Rocket.__PVT__T_7312 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rxs2) 
                                          & ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem) 
                                             | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rocc)));
    vlSymsp->TOP__Rocket.__PVT__T_7615 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_valid) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem));
    vlSymsp->TOP__Rocket.__PVT__T_6866 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_valid) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_wxd));
    vlSymsp->TOP__Rocket.__PVT__T_7002 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_valid) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_div));
    if (vlSymsp->TOP__Rocket.__PVT__id_xcpt) {
        vlSymsp->TOP__Rocket.__PVT__ex_reg_cause = 
            ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_39)
              ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4970)
                  ? 0x8000000dU : ((IData)(0x80000000U) 
                                   + (IData)((QData)((IData)(
                                                             ((1U 
                                                               & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                               ? 0U
                                                               : 
                                                              ((2U 
                                                                & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                                ? 1U
                                                                : 
                                                               ((4U 
                                                                 & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                                 ? 2U
                                                                 : 
                                                                ((8U 
                                                                  & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                                  ? 3U
                                                                  : 
                                                                 ((0x10U 
                                                                   & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                                   ? 4U
                                                                   : 
                                                                  ((0x20U 
                                                                    & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                                    ? 5U
                                                                    : 
                                                                   ((0x40U 
                                                                     & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                                     ? 6U
                                                                     : 
                                                                    ((0x80U 
                                                                      & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                                      ? 7U
                                                                      : 
                                                                     ((0x100U 
                                                                       & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                                       ? 8U
                                                                       : 
                                                                      ((0x200U 
                                                                        & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                                        ? 9U
                                                                        : 
                                                                       ((0x400U 
                                                                         & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                                         ? 0xaU
                                                                         : 
                                                                        ((0x800U 
                                                                          & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                                          ? 0xbU
                                                                          : 
                                                                         ((0x1000U 
                                                                           & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                                           ? 0xcU
                                                                           : 
                                                                          ((0x2000U 
                                                                            & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                                            ? 0xdU
                                                                            : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4944))))))))))))))))))))
              : (IData)(vlSymsp->TOP__Rocket.__PVT__T_6862));
    }
    vlSymsp->TOP__Rocket.__PVT__T_7596 = (VL_ULL(0x1ffffffff) 
                                          & ((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_pc)) 
                                             + (QData)((IData)(
                                                               ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_rvc)
                                                                 ? 0U
                                                                 : 2U)))));
    if (vlSymsp->TOP__Rocket.__PVT__T_7063) {
        vlSymsp->TOP__Rocket.__PVT__ex_reg_pc = vlSymsp->TOP__Rocket__ibuf.__PVT__T_488;
    }
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_208 = (1U 
                                                   & ((2U 
                                                       & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_tmatch))
                                                       ? 
                                                      ((vlSymsp->TOP__Rocket.__PVT__mem_reg_wdata 
                                                        >= vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_address) 
                                                       ^ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_tmatch))
                                                       : 
                                                      (((~ vlSymsp->TOP__Rocket.__PVT__mem_reg_wdata) 
                                                        | (IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_193)) 
                                                       == vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_206)));
    if (vlSymsp->TOP__Rocket.__PVT__ex_pc_valid) {
        vlSymsp->TOP__Rocket.__PVT__mem_reg_inst = vlSymsp->TOP__Rocket.__PVT__ex_reg_inst;
    }
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5920 = 
        ((((0x7a0U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                 >> 0x14U))) & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)) 
          | ((0x7a1U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                   >> 0x14U))) ? ((
                                                   (((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                        ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_ttype)
                                                        : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_ttype)) 
                                                      << 0x1cU) 
                                                     | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_42) 
                                                        << 0x1bU)) 
                                                    | ((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                          ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_maskmax)
                                                          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_maskmax)) 
                                                        << 0x15U) 
                                                       | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                            ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_reserved)
                                                            : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_reserved)) 
                                                          << 0xdU))) 
                                                   | (((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                          ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_action)
                                                          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_action)) 
                                                        << 0xcU) 
                                                       | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                            ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_chain)
                                                            : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)) 
                                                          << 0xbU)) 
                                                      | ((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                            ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_zero)
                                                            : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_zero)) 
                                                          << 9U) 
                                                         | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                              ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_tmatch)
                                                              : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_tmatch)) 
                                                            << 7U)))) 
                                                  | ((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                          ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_m)
                                                          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_m)) 
                                                        << 6U) 
                                                       | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                            ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_h)
                                                            : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)) 
                                                          << 5U)) 
                                                      | ((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                            ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_s)
                                                            : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)) 
                                                          << 4U) 
                                                         | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                              ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_u)
                                                              : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_u)) 
                                                            << 3U))) 
                                                     | ((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                           ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_x)
                                                           : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_x)) 
                                                         << 2U) 
                                                        | ((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                              ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_w)
                                                              : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_w)) 
                                                            << 1U) 
                                                           | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                                                               ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_control_r)
                                                               : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_r))))))
              : 0U)) | ((0x7a2U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U)))
                         ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)
                             ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_1_address
                             : vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_address)
                         : 0U));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__priv_sufficient 
        = ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug) 
           | ((0x90U != (0x90U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U))) & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv) 
                                                 >= 
                                                 (3U 
                                                  & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                     >> 0x1cU)))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5326 = 
        (((((((((((((((0x7a0U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U))) 
                      | (0x7a1U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U)))) 
                     | (0x7a2U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                             >> 0x14U)))) 
                    | (0xf13U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))) 
                   | (0xf12U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))) 
                  | (0xf11U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) 
                 | (0xb00U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                         >> 0x14U)))) 
                | (0xb02U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                        >> 0x14U)))) 
               | (0x301U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                       >> 0x14U)))) 
              | (0x300U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) 
             | (0x305U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                     >> 0x14U)))) | 
            (0x344U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0x304U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U)))) 
          | (0x303U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0x302U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U))));
    vlSymsp->TOP__Rocket.__PVT__T_6996 = ((1U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_alu2))
                                           ? ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rvc)
                                               ? 2U
                                               : 4U)
                                           : 0U);
    vlSymsp->TOP__Rocket.__PVT__T_7302 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem) 
                                          & ((((0U 
                                                == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd)) 
                                               | (6U 
                                                  == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd))) 
                                              | (7U 
                                                 == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd))) 
                                             | (IData)(vlSymsp->TOP__Rocket.__PVT__T_7300)));
    vlSymsp->TOP__Rocket.__PVT__T_7310 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem) 
                                          & (((1U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd)) 
                                              | (7U 
                                                 == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem_cmd))) 
                                             | (IData)(vlSymsp->TOP__Rocket.__PVT__T_7300)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__GEN_12 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_150)
          ? ((0x1fU == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__count))
              ? ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__isHi)
                  ? 3U : 5U) : (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__GEN_8))
          : (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__GEN_8));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_474 = (
                                                   (0U 
                                                    == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state)) 
                                                   & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7002));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4970 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_debugint) 
         & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)));
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_278 = (
                                                   (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)) 
                                                   & (((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_176) 
                                                       & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_r)) 
                                                      & (IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_208)));
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_281 = (
                                                   (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)) 
                                                   & (((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_176) 
                                                       & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_w)) 
                                                      & (IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_208)));
    vlSymsp->TOP__Rocket.__PVT__ex_pc_valid = (((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_valid) 
                                                | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_replay)) 
                                               | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_xcpt_interrupt));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen = (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__cpu_wen) 
                                                  & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__priv_sufficient)) 
                                                 & (0U 
                                                    != 
                                                    (3U 
                                                     & (~ 
                                                        (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                         >> 0x1eU)))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__do_system_insn 
        = ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__priv_sufficient) 
           & (4U == (IData)(vlSymsp->TOP__Rocket.__PVT__T_7399)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5341 = 
        ((((((((((((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5326) 
                       | (0x340U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))) 
                      | (0x341U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U)))) 
                     | (0x343U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                             >> 0x14U)))) 
                    | (0x342U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))) 
                   | (0xf14U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))) 
                  | (0x7b0U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) 
                 | (0x7b1U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                         >> 0x14U)))) 
                | (0x7b2U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                        >> 0x14U)))) 
               | (0x323U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                       >> 0x14U)))) 
              | (0xb03U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) 
             | (0xc03U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                     >> 0x14U)))) | 
            (0x324U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0xb04U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U)))) 
          | (0xc04U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0x325U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U))));
    vlSymsp->TOP__Rocket.__PVT__mem_debug_breakpoint 
        = (((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_load) 
            & ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_278) 
               & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_action))) 
           | ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_store) 
              & ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_281) 
                 & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_action))));
    vlSymsp->TOP__Rocket.__PVT__mem_breakpoint = (((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_load) 
                                                   & ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_278) 
                                                      & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_action)))) 
                                                  | ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_store) 
                                                     & ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_281) 
                                                        & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_action)))));
    vlSymsp->TOP__Rocket.__PVT__T_7592 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jalr) 
                                          & (1U == 
                                             (0x19U 
                                              & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                 >> 0xfU))));
    vlSymsp->TOP__Rocket.__PVT__T_7173 = ((0x800U & 
                                           (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                            >> 0x14U)) 
                                          | (0x7ffU 
                                             & VL_NEGATE_I((IData)(
                                                                   (1U 
                                                                    & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                                       >> 0x1fU))))));
    if (vlSymsp->TOP__Rocket.__PVT__T_7063) {
        vlSymsp->TOP__Rocket.__PVT__ex_reg_inst = vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits;
    }
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_wfi 
        = (7U & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__do_system_insn) 
                 & (((IData)(1U) << (7U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U))) 
                    >> 5U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_sfence_vm 
        = (0xfU & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__do_system_insn) 
                   & (((IData)(1U) << (7U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                             >> 0x14U))) 
                      >> 4U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret 
        = (0x3fU & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__do_system_insn) 
                    & (((IData)(1U) << (7U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U))) 
                       >> 2U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_call 
        = (0xffU & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__do_system_insn) 
                    & ((IData)(1U) << (7U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                             >> 0x14U)))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_break 
        = (0x7fU & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__do_system_insn) 
                    & (((IData)(1U) << (7U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U))) 
                       >> 1U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5356 = 
        ((((((((((((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5341) 
                       | (0xb05U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))) 
                      | (0xc05U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U)))) 
                     | (0x326U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                             >> 0x14U)))) 
                    | (0xb06U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))) 
                   | (0xc06U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))) 
                  | (0x327U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) 
                 | (0xb07U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                         >> 0x14U)))) 
                | (0xc07U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                        >> 0x14U)))) 
               | (0x328U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                       >> 0x14U)))) 
              | (0xb08U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) 
             | (0xc08U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                     >> 0x14U)))) | 
            (0x329U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0xb09U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U)))) 
          | (0xc09U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0x32aU 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U))));
    vlSymsp->TOP__Rocket.__PVT__T_7254 = (VL_ULL(0x1ffffffff) 
                                          & (VL_EXTENDS_QI(33,32, vlSymsp->TOP__Rocket.__PVT__mem_reg_pc) 
                                             + VL_EXTENDS_QI(33,32, 
                                                             ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7106)
                                                               ? 
                                                              ((((IData)(vlSymsp->TOP__Rocket.__PVT__T_7173) 
                                                                 << 0x14U) 
                                                                | ((0xff000U 
                                                                    & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                                                >> 0x1fU)))) 
                                                                       << 0xcU)) 
                                                                   | (0x800U 
                                                                      & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                                         << 4U)))) 
                                                               | ((0x7e0U 
                                                                   & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                                      >> 0x14U)) 
                                                                  | (0x1eU 
                                                                     & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                                        >> 7U))))
                                                               : 
                                                              ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jal)
                                                                ? 
                                                               ((((IData)(vlSymsp->TOP__Rocket.__PVT__T_7173) 
                                                                  << 0x14U) 
                                                                 | ((0xff000U 
                                                                     & vlSymsp->TOP__Rocket.__PVT__mem_reg_inst) 
                                                                    | (0x800U 
                                                                       & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                                          >> 9U)))) 
                                                                | (0x7feU 
                                                                   & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                                      >> 0x14U)))
                                                                : 
                                                               ((0xfffffff0U 
                                                                 & (VL_NEGATE_I((IData)(
                                                                                (1U 
                                                                                & (((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_rvc)
                                                                                 ? 2U
                                                                                 : 4U) 
                                                                                >> 3U)))) 
                                                                    << 4U)) 
                                                                | ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_rvc)
                                                                    ? 2U
                                                                    : 4U)))))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5521 = 
        (0xfU & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_call)
                  ? ((IData)(8U) + (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv))
                  : ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_break)
                      ? 3U : 2U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5371 = 
        ((((((((((((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5356) 
                       | (0xb0aU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))) 
                      | (0xc0aU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U)))) 
                     | (0x32bU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                             >> 0x14U)))) 
                    | (0xb0bU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))) 
                   | (0xc0bU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))) 
                  | (0x32cU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) 
                 | (0xb0cU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                         >> 0x14U)))) 
                | (0xc0cU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                        >> 0x14U)))) 
               | (0x32dU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                       >> 0x14U)))) 
              | (0xb0dU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) 
             | (0xc0dU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                     >> 0x14U)))) | 
            (0x32eU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0xb0eU 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U)))) 
          | (0xc0eU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0x32fU 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U))));
    vlSymsp->TOP__Rocket.__PVT__T_7257 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jalr)
                                           ? vlSymsp->TOP__Rocket.__PVT__mem_reg_wdata
                                           : (IData)(vlSymsp->TOP__Rocket.__PVT__T_7254));
    vlSymsp->TOP__Rocket.__PVT__T_6919 = ((5U != (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm)) 
                                          & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                             >> 0x1fU));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5386 = 
        ((((((((((((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5371) 
                       | (0xb0fU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))) 
                      | (0xc0fU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U)))) 
                     | (0x330U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                             >> 0x14U)))) 
                    | (0xb10U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))) 
                   | (0xc10U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))) 
                  | (0x331U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) 
                 | (0xb11U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                         >> 0x14U)))) 
                | (0xc11U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                        >> 0x14U)))) 
               | (0x332U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                       >> 0x14U)))) 
              | (0xb12U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) 
             | (0xc12U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                     >> 0x14U)))) | 
            (0x333U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0xb13U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U)))) 
          | (0xc13U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0x334U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U))));
    vlSymsp->TOP__Rocket.__PVT__mem_npc_misaligned 
        = (1U & ((~ (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa 
                     >> 2U)) & (vlSymsp->TOP__Rocket.__PVT__T_7257 
                                >> 1U)));
    vlSymsp->TOP__Rocket.__PVT__T_6983 = (((((IData)(vlSymsp->TOP__Rocket.__PVT__T_6919) 
                                             << 0x1fU) 
                                            | (0x7ff00000U 
                                               & (((2U 
                                                    == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm))
                                                    ? 
                                                   (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                    >> 0x14U)
                                                    : 
                                                   VL_NEGATE_I((IData)((IData)(vlSymsp->TOP__Rocket.__PVT__T_6919)))) 
                                                  << 0x14U))) 
                                           | ((0xff000U 
                                               & ((((2U 
                                                     != (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm)) 
                                                    & (3U 
                                                       != (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm)))
                                                    ? 
                                                   VL_NEGATE_I((IData)((IData)(vlSymsp->TOP__Rocket.__PVT__T_6919)))
                                                    : 
                                                   (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                    >> 0xcU)) 
                                                  << 0xcU)) 
                                              | (0x800U 
                                                 & (((~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_6932)) 
                                                     & ((3U 
                                                         == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm))
                                                         ? 
                                                        (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                         >> 0x14U)
                                                         : 
                                                        ((1U 
                                                          == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm))
                                                          ? 
                                                         (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                          >> 7U)
                                                          : (IData)(vlSymsp->TOP__Rocket.__PVT__T_6919)))) 
                                                    << 0xbU)))) 
                                          | ((((IData)(vlSymsp->TOP__Rocket.__PVT__T_6932)
                                                ? 0U
                                                : (0x3fU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                      >> 0x19U))) 
                                              << 5U) 
                                             | ((((2U 
                                                   == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm))
                                                   ? 0U
                                                   : 
                                                  (0xfU 
                                                   & (((0U 
                                                        == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm)) 
                                                       | (1U 
                                                          == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm)))
                                                       ? 
                                                      (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                       >> 8U)
                                                       : 
                                                      ((5U 
                                                        == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm))
                                                        ? 
                                                       (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                        >> 0x10U)
                                                        : 
                                                       (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                        >> 0x15U))))) 
                                                 << 1U) 
                                                | (1U 
                                                   & ((0U 
                                                       == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm))
                                                       ? 
                                                      (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                       >> 7U)
                                                       : 
                                                      ((4U 
                                                        == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm))
                                                        ? 
                                                       (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                        >> 0x14U)
                                                        : 
                                                       ((5U 
                                                         == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_imm)) 
                                                        & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                           >> 0xfU))))))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5401 = 
        ((((((((((((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5386) 
                       | (0xb14U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))) 
                      | (0xc14U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U)))) 
                     | (0x335U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                             >> 0x14U)))) 
                    | (0xb15U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))) 
                   | (0xc15U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))) 
                  | (0x336U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) 
                 | (0xb16U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                         >> 0x14U)))) 
                | (0xc16U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                        >> 0x14U)))) 
               | (0x337U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                       >> 0x14U)))) 
              | (0xb17U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) 
             | (0xc17U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                     >> 0x14U)))) | 
            (0x338U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0xb18U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U)))) 
          | (0xc18U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0x339U 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U))));
    vlSymsp->TOP__Rocket.__PVT__T_7274 = (((~ (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_xcpt)) 
                                           & ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_jalr) 
                                              ^ (IData)(vlSymsp->TOP__Rocket.__PVT__mem_npc_misaligned)))
                                           ? (IData)(vlSymsp->TOP__Rocket.__PVT__T_7254)
                                           : vlSymsp->TOP__Rocket.__PVT__mem_reg_wdata);
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5416 = 
        ((((((((((((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5401) 
                       | (0xb19U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))) 
                      | (0xc19U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U)))) 
                     | (0x33aU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                             >> 0x14U)))) 
                    | (0xb1aU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))) 
                   | (0xc1aU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))) 
                  | (0x33bU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) 
                 | (0xb1bU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                         >> 0x14U)))) 
                | (0xc1bU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                        >> 0x14U)))) 
               | (0x33cU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                       >> 0x14U)))) 
              | (0xb1cU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                      >> 0x14U)))) 
             | (0xc1cU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                     >> 0x14U)))) | 
            (0x33dU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0xb1dU 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U)))) 
          | (0xc1dU == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                  >> 0x14U)))) | (0x33eU 
                                                  == 
                                                  (0xfffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                      >> 0x14U))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5492 = 
        (1U & (((~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__priv_sufficient)) 
                | (~ (((((((((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5416) 
                                 | (0xb1eU == (0xfffU 
                                               & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                  >> 0x14U)))) 
                                | (0xc1eU == (0xfffU 
                                              & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                 >> 0x14U)))) 
                               | (0x33fU == (0xfffU 
                                             & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                >> 0x14U)))) 
                              | (0xb1fU == (0xfffU 
                                            & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))) 
                             | (0xc1fU == (0xfffU & 
                                           (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U)))) 
                            | (0x320U == (0xfffU & 
                                          (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))) 
                           | (0xc00U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                   >> 0x14U)))) 
                          | (0xc02U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                  >> 0x14U)))) 
                         | (0xb80U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                 >> 0x14U)))) 
                        | (0xb82U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                >> 0x14U)))) 
                       | (0xc80U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))) 
                      | (0xc82U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                              >> 0x14U)))))) 
               | (((0xc00U <= (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                         >> 0x14U))) 
                   & (0xc20U > (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))) 
                  & (~ ((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug) 
                          | (3U == (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv))) 
                         | ((1U == (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv)) 
                            & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mscounteren 
                               >> (0x1fU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                            >> 0x14U))))) 
                        | ((0U == (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv)) 
                           & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mucounteren 
                              >> (0x1fU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))))))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5508 = 
        ((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__cpu_wen) 
             & (0U == (3U & (~ (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                >> 0x1eU))))) | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__cpu_ren) 
                                                 & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5492))) 
           | ((4U == (IData)(vlSymsp->TOP__Rocket.__PVT__T_7399)) 
              & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__priv_sufficient)))) 
          | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_call)) 
         | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_break));
    vlSymsp->TOP__Rocket.__PVT__wb_xcpt = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_xcpt) 
                                           | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5508));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause = ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5508)
                                                    ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5521)
                                                    : vlSymsp->TOP__Rocket.__PVT__wb_reg_cause);
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_87 = vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_spp;
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5599 = 
        (((((((3U == vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause) 
              | (4U == vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause)) 
             | (6U == vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause)) 
            | (0U == vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause)) 
           | (5U == vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause)) 
          | (7U == vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause)) 
         | (1U == vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__causeIsDebugInt 
        = ((vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause 
            >> 0x1fU) & (0xdU == (0x1fU & vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__causeIsDebugTrigger 
        = ((~ (vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause 
               >> 0x1fU)) & (0xdU == (0x1fU & vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5606 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__causeIsDebugInt)
          ? 3U : ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__causeIsDebugTrigger)
                   ? 2U : 1U));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543 = 
        (((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_singleStepped) 
            | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__causeIsDebugInt)) 
           | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__causeIsDebugTrigger)) 
          | (0xfU & (((~ (vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause 
                          >> 0x1fU)) & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_break)) 
                     & (((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakm) 
                           << 3U) | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh) 
                                     << 2U)) | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh) 
                                                 << 1U) 
                                                | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreaku))) 
                        >> (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv))))) 
         | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_79 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
          ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543) 
             | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug))
          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_89 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
          ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)
              ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv)
              : 3U) : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_80 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
          ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)
              ? (~ (1U | (~ vlSymsp->TOP__Rocket.__PVT__wb_reg_pc)))
              : vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dpc)
          : vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dpc);
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_82 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
          ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)
              ? ((1U & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv))
                  ? 3U : 0U) : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_prv))
          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_prv));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_90 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
          ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)
              ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mepc
              : (~ vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5622))
          : vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mepc);
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_91 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
          ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)
              ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mcause
              : vlSymsp->TOP__Rocket.__PVT__csr__DOT__cause)
          : vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mcause);
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_92 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
          ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)
              ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mbadaddr
              : ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5599)
                  ? vlSymsp->TOP__Rocket.__PVT__wb_reg_wdata
                  : vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mbadaddr))
          : vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mbadaddr);
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_93 = 
        (1U & ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
                ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)
                    ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie)
                    : vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5578)
                : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_94 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
          ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)
              ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp)
              : ((1U & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv))
                  ? 3U : 0U)) : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_95 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
          ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543) 
             & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie))
          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_116 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret)
          ? ((0x90U == (0x90U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                 >> 0x14U))) & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_93))
          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_93));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_117 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret)
          ? ((0x90U != (0x90U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                 >> 0x14U))) ? 0U : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_94))
          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_94));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_115 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret)
          ? ((0x90U != (0x90U & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                 >> 0x14U))) ? ((2U 
                                                 & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpp))
                                                 ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mpie)
                                                 : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_95))
              : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_95))
          : (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_95));
}

VL_INLINE_OPT void VRocket_Rocket::_combo__TOP__Rocket__6(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      VRocket_Rocket::_combo__TOP__Rocket__6\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6036 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_fflags) 
         | (IData)(vlSymsp->TOP__Rocket.io_fpu_fcsr_flags_bits));
    vlSymsp->TOP__Rocket.__PVT__replay_wb_common = 
        ((IData)(vlTOPp->io_dmem_s2_nack) | (IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_replay));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4839 = 
        ((((((IData)(vlSymsp->TOP__Rocket.csr_io_rocc_interrupt) 
             << 0xcU) | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_meip) 
                         << 0xbU)) | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_heip) 
                                       << 0xaU) | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_seip) 
                                                   << 9U))) 
          | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_ueip) 
              << 8U) | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_mtip) 
                         << 7U) | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_htip) 
                                   << 6U)))) | ((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_stip) 
                                                  << 5U) 
                                                 | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_utip) 
                                                     << 4U) 
                                                    | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_msip) 
                                                       << 3U))) 
                                                | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_hsip) 
                                                    << 2U) 
                                                   | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_ssip) 
                                                       << 1U) 
                                                      | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mip_usip)))));
    vlSymsp->TOP__Rocket.__PVT__wb_dcache_miss = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_mem) 
                                                  & (~ (IData)(vlTOPp->io_dmem_resp_valid)));
    vlSymsp->TOP__Rocket.__PVT__GEN_154 = (0x1fU & 
                                           ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7379)
                                             ? ((IData)(vlTOPp->io_dmem_resp_bits_tag) 
                                                >> 1U)
                                             : (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__req_tag)));
    vlSymsp->TOP__Rocket.__PVT__GEN_153 = (1U & ((~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7379)) 
                                                 & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__wb_wxd))));
    vlSymsp->TOP__Rocket.__PVT__fpu_kill_mem = (((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid) 
                                                 & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rocc)) 
                                                & (IData)(vlSymsp->TOP__Rocket.io_fpu_nack_mem));
    vlSymsp->TOP__Rocket.__PVT__GEN_7 = ((3U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_lsb_1))
                                          ? vlTOPp->io_dmem_resp_bits_data_word_bypass
                                          : ((2U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_lsb_1))
                                              ? vlSymsp->TOP__Rocket.__PVT__wb_reg_wdata
                                              : ((1U 
                                                  == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_lsb_1))
                                                  ? vlSymsp->TOP__Rocket.__PVT__mem_reg_wdata
                                                  : 0U)));
    vlSymsp->TOP__Rocket.__PVT__GEN_4 = ((3U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_lsb_0))
                                          ? vlTOPp->io_dmem_resp_bits_data_word_bypass
                                          : ((2U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_lsb_0))
                                              ? vlSymsp->TOP__Rocket.__PVT__wb_reg_wdata
                                              : ((1U 
                                                  == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_lsb_0))
                                                  ? vlSymsp->TOP__Rocket.__PVT__mem_reg_wdata
                                                  : 0U)));
    vlSymsp->TOP__Rocket.__PVT__dcache_kill_mem = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6867) 
                                                   & (IData)(vlTOPp->io_dmem_replay_next));
    vlSymsp->TOP__Rocket.__PVT__ex_xcpt = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7102) 
                                           | ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rocc) 
                                              & (IData)(vlSymsp->TOP__Rocket.io_fpu_illegal_rm)));
    vlSymsp->TOP__Rocket.__PVT__T_7518 = ((~ (IData)(vlTOPp->io_dmem_req_ready)) 
                                          & ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7615) 
                                             | (IData)(vlSymsp->TOP__Rocket.__PVT__dcache_blocked)));
    vlSymsp->TOP__Rocket.__PVT__id_mem_busy = (1U & 
                                               ((~ (IData)(vlTOPp->io_dmem_ordered)) 
                                                | (IData)(vlSymsp->TOP__Rocket.__PVT__T_7615)));
    vlSymsp->TOP__Rocket.ibuf_io_imem_bits_mask = vlTOPp->io_imem_resp_bits_mask;
    vlSymsp->TOP__Rocket.ibuf_io_imem_bits_xcpt_if 
        = vlTOPp->io_imem_resp_bits_xcpt_if;
    vlSymsp->TOP__Rocket.__PVT__T_7322 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem) 
                                          & (IData)(vlSymsp->TOP__Rocket.io_dmem_xcpt_ma_ld));
    vlSymsp->TOP__Rocket.__PVT__T_7320 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem) 
                                          & (IData)(vlSymsp->TOP__Rocket.io_dmem_xcpt_ma_st));
    vlSymsp->TOP__Rocket.__PVT__T_7324 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem) 
                                          & (IData)(vlSymsp->TOP__Rocket.io_dmem_xcpt_pf_st));
    vlSymsp->TOP__Rocket.__PVT__T_7634 = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6842) 
                                          & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__replay_wb_common)));
    vlSymsp->TOP__Rocket.__PVT__replay_wb = ((IData)(vlSymsp->TOP__Rocket.__PVT__replay_wb_common) 
                                             | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6842) 
                                                & (~ (IData)(vlTOPp->io_rocc_cmd_ready))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__pending_interrupts 
        = (0x888U & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4839) 
                     & vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mie));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5932 = 
        ((((((((((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5920)) 
                 | ((0xb00U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                          >> 0x14U)))
                     ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4814
                     : VL_ULL(0))) | ((0xb02U == (0xfffU 
                                                  & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                     >> 0x14U)))
                                       ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4804
                                       : VL_ULL(0))) 
               | (QData)((IData)(((0x301U == (0xfffU 
                                              & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                 >> 0x14U)))
                                   ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa
                                   : 0U)))) | (QData)((IData)(
                                                              ((0x300U 
                                                                == 
                                                                (0xfffU 
                                                                 & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                    >> 0x14U)))
                                                                ? 
                                                               vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5004[0U]
                                                                : 0U)))) 
             | (QData)((IData)(((0x305U == (0xfffU 
                                            & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))
                                 ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mtvec
                                 : 0U)))) | (QData)((IData)(
                                                            ((0x344U 
                                                              == 
                                                              (0xfffU 
                                                               & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                  >> 0x14U)))
                                                              ? 
                                                             (0x888U 
                                                              & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4839))
                                                              : 0U)))) 
           | (QData)((IData)(((0x304U == (0xfffU & 
                                          (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))
                               ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mie
                               : 0U)))) | (QData)((IData)(
                                                          ((0x303U 
                                                            == 
                                                            (0xfffU 
                                                             & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                >> 0x14U)))
                                                            ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mscounteren
                                                            : 0U)))) 
         | (QData)((IData)(((0x302U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                  >> 0x14U)))
                             ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_medeleg
                             : 0U))));
    vlSymsp->TOP__Rocket.__PVT__wb_set_sboard = (((IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_div) 
                                                  | (IData)(vlSymsp->TOP__Rocket.__PVT__wb_dcache_miss)) 
                                                 | (IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_rocc));
    vlSymsp->TOP__Rocket.__PVT__replay_ex = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_replay) 
                                             | ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_valid) 
                                                & ((((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem) 
                                                     & (~ (IData)(vlTOPp->io_dmem_req_ready))) 
                                                    | ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_div) 
                                                       & (0U 
                                                          != (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state)))) 
                                                   | ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_dcache_miss) 
                                                      & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_load_use)))));
    vlSymsp->TOP__Rocket.__PVT__GEN_155 = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7379) 
                                           | ((IData)(vlSymsp->TOP__Rocket.__PVT__GEN_153) 
                                              & (5U 
                                                 == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state))));
    vlSymsp->TOP__Rocket.__PVT__ex_rs_1 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_bypass_1)
                                            ? vlSymsp->TOP__Rocket.__PVT__GEN_7
                                            : vlSymsp->TOP__Rocket.__PVT__T_6914);
    vlSymsp->TOP__Rocket.__PVT__ex_rs_0 = ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_rs_bypass_0)
                                            ? vlSymsp->TOP__Rocket.__PVT__GEN_4
                                            : vlSymsp->TOP__Rocket.__PVT__T_6909);
    vlSymsp->TOP__Rocket.__PVT__mem_new_cause = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_debug_breakpoint)
                                                  ? 0xdU
                                                  : 
                                                 ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_breakpoint)
                                                   ? 3U
                                                   : 
                                                  ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_npc_misaligned)
                                                    ? 0U
                                                    : 
                                                   ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7320)
                                                     ? 6U
                                                     : 
                                                    ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7322)
                                                      ? 4U
                                                      : 
                                                     ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7324)
                                                       ? 7U
                                                       : 5U))))));
    vlSymsp->TOP__Rocket.__PVT__mem_xcpt = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7338) 
                                            | ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid) 
                                               & (((((((IData)(vlSymsp->TOP__Rocket.__PVT__mem_debug_breakpoint) 
                                                       | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_breakpoint)) 
                                                      | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_npc_misaligned)) 
                                                     | (IData)(vlSymsp->TOP__Rocket.__PVT__T_7320)) 
                                                    | (IData)(vlSymsp->TOP__Rocket.__PVT__T_7322)) 
                                                   | (IData)(vlSymsp->TOP__Rocket.__PVT__T_7324)) 
                                                  | ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem) 
                                                     & (IData)(vlSymsp->TOP__Rocket.io_dmem_xcpt_pf_ld)))));
    vlSymsp->TOP__Rocket.__PVT__T_7526 = (((~ (IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_xcpt)) 
                                           & (~ (IData)(vlTOPp->io_rocc_cmd_ready))) 
                                          & ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7634) 
                                             | (IData)(vlSymsp->TOP__Rocket.__PVT__rocc_blocked)));
    vlSymsp->TOP__Rocket.__PVT__wb_valid = (((IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_valid) 
                                             & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__replay_wb))) 
                                            & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)));
    vlSymsp->TOP__Rocket.__PVT__T_7371 = (((IData)(vlSymsp->TOP__Rocket.__PVT__replay_wb) 
                                           | (IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)) 
                                          | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret));
    vlSymsp->TOP__Rocket.__PVT__T_7559 = (((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt) 
                                           | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__insn_ret))
                                           ? ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt)
                                               ? ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5543)
                                                   ? 
                                                  ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)
                                                    ? 0x808U
                                                    : 0x800U)
                                                   : vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mtvec)
                                               : ((0x90U 
                                                   == 
                                                   (0x90U 
                                                    & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                       >> 0x14U)))
                                                   ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dpc
                                                   : vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mepc))
                                           : ((IData)(vlSymsp->TOP__Rocket.__PVT__replay_wb)
                                               ? vlSymsp->TOP__Rocket.__PVT__wb_reg_pc
                                               : (0xfffffffeU 
                                                  & vlSymsp->TOP__Rocket.__PVT__T_7257)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts 
        = ((((~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)) 
             & ((3U > (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv)) 
                | ((3U == (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv)) 
                   & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_mie))))
             ? (vlSymsp->TOP__Rocket.__PVT__csr__DOT__pending_interrupts 
                & (~ vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mscounteren))
             : 0U) | (((~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug)) 
                       & ((1U > (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv)) 
                          | ((1U == (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mstatus_prv)) 
                             & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh))))
                       ? (vlSymsp->TOP__Rocket.__PVT__csr__DOT__pending_interrupts 
                          & vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mscounteren)
                       : 0U));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5939 = 
        (((((((vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5932 
               | (QData)((IData)(((0x340U == (0xfffU 
                                              & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                 >> 0x14U)))
                                   ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mscratch
                                   : 0U)))) | (QData)((IData)(
                                                              ((0x341U 
                                                                == 
                                                                (0xfffU 
                                                                 & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                    >> 0x14U)))
                                                                ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mepc
                                                                : 0U)))) 
             | (QData)((IData)(((0x343U == (0xfffU 
                                            & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                               >> 0x14U)))
                                 ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mbadaddr
                                 : 0U)))) | (QData)((IData)(
                                                            ((0x342U 
                                                              == 
                                                              (0xfffU 
                                                               & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                  >> 0x14U)))
                                                              ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mcause
                                                              : 0U)))) 
           | (QData)((IData)(((0xf14U == (0xfffU & 
                                          (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))
                               ? vlSymsp->TOP__Rocket.csr_io_hartid
                               : 0U)))) | (QData)((IData)(
                                                          ((0x7b0U 
                                                            == 
                                                            (0xfffU 
                                                             & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                >> 0x14U)))
                                                            ? 
                                                           ((((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_xdebugver) 
                                                                << 0x1eU) 
                                                               | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ndreset) 
                                                                   << 0x1dU) 
                                                                  | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_fullreset) 
                                                                     << 0x1cU))) 
                                                              | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_zero3) 
                                                                  << 0x10U) 
                                                                 | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakm) 
                                                                    << 0xfU))) 
                                                             | ((0x6000U 
                                                                 & (VL_NEGATE_I((IData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreakh))) 
                                                                    << 0xdU)) 
                                                                | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_ebreaku) 
                                                                    << 0xcU) 
                                                                   | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_zero2) 
                                                                      << 0xbU)))) 
                                                            | (((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_stopcycle) 
                                                                  << 0xaU) 
                                                                 | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_stoptime) 
                                                                    << 9U)) 
                                                                | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_cause) 
                                                                    << 6U) 
                                                                   | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_debugint) 
                                                                      << 5U))) 
                                                               | ((((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_zero1) 
                                                                    << 4U) 
                                                                   | ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_halt) 
                                                                      << 3U)) 
                                                                  | (((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_step) 
                                                                      << 2U) 
                                                                     | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dcsr_prv)))))
                                                            : 0U)))) 
         | (QData)((IData)(((0x7b1U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                  >> 0x14U)))
                             ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dpc
                             : 0U))));
    vlSymsp->TOP__Rocket.__PVT__T_7419 = (0xfffffffeU 
                                          & (vlSymsp->TOP__Rocket.__PVT__T_7410 
                                             & (~ ((IData)(vlSymsp->TOP__Rocket.__PVT__GEN_155)
                                                    ? 
                                                   ((IData)(1U) 
                                                    << (IData)(vlSymsp->TOP__Rocket.__PVT__GEN_154))
                                                    : 0U))));
    vlSymsp->TOP__Rocket.__PVT__rf_waddr = (0x1fU & 
                                            ((IData)(vlSymsp->TOP__Rocket.__PVT__GEN_155)
                                              ? (IData)(vlSymsp->TOP__Rocket.__PVT__GEN_154)
                                              : (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__rhs_sign 
        = ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_103) 
           & (vlSymsp->TOP__Rocket.__PVT__ex_rs_1 >> 0x1fU));
    vlSymsp->TOP__Rocket.__PVT__ex_op2 = ((2U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_alu2))
                                           ? vlSymsp->TOP__Rocket.__PVT__ex_rs_1
                                           : ((3U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_alu2))
                                               ? vlSymsp->TOP__Rocket.__PVT__T_6983
                                               : ((0xfffffff0U 
                                                   & (VL_NEGATE_I((IData)(
                                                                          (1U 
                                                                           & ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6996) 
                                                                              >> 3U)))) 
                                                      << 4U)) 
                                                  | (IData)(vlSymsp->TOP__Rocket.__PVT__T_6996))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__lhs_sign 
        = (((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_103) 
            | (0U == (3U & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)))) 
           & (vlSymsp->TOP__Rocket.__PVT__ex_rs_0 >> 0x1fU));
    vlSymsp->TOP__Rocket.__PVT__ex_op1 = ((1U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_alu1))
                                           ? vlSymsp->TOP__Rocket.__PVT__ex_rs_0
                                           : ((2U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_sel_alu1))
                                               ? vlSymsp->TOP__Rocket.__PVT__ex_reg_pc
                                               : 0U));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4601 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_valid) 
         | (IData)(vlSymsp->TOP__Rocket.__PVT__wb_xcpt));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4798 = 
        (0x7fU & ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4797) 
                  + (IData)(vlSymsp->TOP__Rocket.__PVT__wb_valid)));
    vlSymsp->TOP__Rocket.__PVT__wb_wen = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_valid) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_wxd));
    vlSymsp->TOP__Rocket.__PVT__T_7570 = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid) 
                                          & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7371)));
    vlSymsp->TOP__Rocket.__PVT__killm_common = (1U 
                                                & ((((IData)(vlSymsp->TOP__Rocket.__PVT__dcache_kill_mem) 
                                                     | (IData)(vlSymsp->TOP__Rocket.__PVT__T_7371)) 
                                                    | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_xcpt)) 
                                                   | (~ (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid))));
    vlSymsp->TOP__Rocket.__PVT__take_pc_mem_wb = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7371) 
                                                  | ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid) 
                                                     & ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_cfi_taken) 
                                                        | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_flush_pipe))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4944 = 
        ((0x4000U & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
          ? 0xeU : ((0x8000U & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                     ? 0xfU : ((0x10000U & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                ? 0x10U : ((0x20000U 
                                            & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                            ? 0x11U
                                            : ((0x40000U 
                                                & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                ? 0x12U
                                                : (
                                                   (0x80000U 
                                                    & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                    ? 0x13U
                                                    : 
                                                   ((0x100000U 
                                                     & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                     ? 0x14U
                                                     : 
                                                    ((0x200000U 
                                                      & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                      ? 0x15U
                                                      : 
                                                     ((0x400000U 
                                                       & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                       ? 0x16U
                                                       : 
                                                      ((0x800000U 
                                                        & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                        ? 0x17U
                                                        : 
                                                       ((0x1000000U 
                                                         & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                         ? 0x18U
                                                         : 
                                                        ((0x2000000U 
                                                          & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                          ? 0x19U
                                                          : 
                                                         ((0x4000000U 
                                                           & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                           ? 0x1aU
                                                           : 
                                                          ((0x8000000U 
                                                            & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                            ? 0x1bU
                                                            : 
                                                           ((0x10000000U 
                                                             & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                             ? 0x1cU
                                                             : 
                                                            ((0x20000000U 
                                                              & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                              ? 0x1dU
                                                              : 
                                                             ((0x40000000U 
                                                               & vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts)
                                                               ? 0x1eU
                                                               : 0x1fU)))))))))))))))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_39 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4970) 
         | (((0U != vlSymsp->TOP__Rocket.__PVT__csr__DOT__all_interrupts) 
             & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5566))) 
            | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_singleStepped)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6034 = 
        ((((((((vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5939 
                | (QData)((IData)(((0x7b2U == (0xfffU 
                                               & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                  >> 0x14U)))
                                    ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_dscratch
                                    : 0U)))) | (QData)((IData)(
                                                               ((0x320U 
                                                                 == 
                                                                 (0xfffU 
                                                                  & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                     >> 0x14U)))
                                                                 ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_mucounteren
                                                                 : 0U)))) 
              | ((0xc00U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                       >> 0x14U))) ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4814
                  : VL_ULL(0))) | ((0xc02U == (0xfffU 
                                               & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                  >> 0x14U)))
                                    ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4804
                                    : VL_ULL(0))) | (QData)((IData)(
                                                                    ((0xb80U 
                                                                      == 
                                                                      (0xfffU 
                                                                       & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                          >> 0x14U)))
                                                                      ? (IData)(
                                                                                (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4814 
                                                                                >> 0x20U))
                                                                      : 0U)))) 
           | (QData)((IData)(((0xb82U == (0xfffU & 
                                          (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                           >> 0x14U)))
                               ? (IData)((vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4804 
                                          >> 0x20U))
                               : 0U)))) | (QData)((IData)(
                                                          ((0xc80U 
                                                            == 
                                                            (0xfffU 
                                                             & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                >> 0x14U)))
                                                            ? (IData)(
                                                                      (vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4814 
                                                                       >> 0x20U))
                                                            : 0U)))) 
         | (QData)((IData)(((0xc82U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                  >> 0x14U)))
                             ? (IData)((vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4804 
                                        >> 0x20U)) : 0U))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_486 = (
                                                   ((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__rhs_sign)) 
                                                    << 0x20U) 
                                                   | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__ex_rs_1)));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__in2_inv = 
        ((8U & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))
          ? (~ vlSymsp->TOP__Rocket.__PVT__ex_op2) : vlSymsp->TOP__Rocket.__PVT__ex_op2);
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_478 = ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__lhs_sign) 
                                                   | ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__rhs_sign) 
                                                      & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_80))));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_485 = (
                                                   (~ (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_80)) 
                                                   & ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__T_92)
                                                       ? (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__lhs_sign)
                                                       : 
                                                      ((IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__lhs_sign) 
                                                       != (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__rhs_sign))));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_52 = ((0xffffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__ex_op1 
                                                      >> 0x10U)) 
                                                  | (0xffff0000U 
                                                     & (vlSymsp->TOP__Rocket.__PVT__ex_op1 
                                                        << 0x10U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_37 = 
        (VL_ULL(0x7ffffffffffffff) & ((0x40U & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4798))
                                       ? (VL_ULL(1) 
                                          + vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4800)
                                       : vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4800));
    vlSymsp->TOP__Rocket.__PVT__T_7431 = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_set_sboard) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__wb_wen));
    vlSymsp->TOP__Rocket.__PVT__rf_wen = ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_wen) 
                                          | (IData)(vlSymsp->TOP__Rocket.__PVT__GEN_155));
    vlSymsp->TOP__Rocket.__PVT__div__DOT__T_473 = (
                                                   ((IData)(vlSymsp->TOP__Rocket.__PVT__GEN_153) 
                                                    & (5U 
                                                       == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state))) 
                                                   | ((IData)(vlSymsp->TOP__Rocket.__PVT__killm_common) 
                                                      & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7348)));
    vlSymsp->TOP__Rocket.__PVT__T_7618 = ((IData)(vlSymsp->TOP__Rocket.__PVT__killm_common) 
                                          | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_breakpoint));
    vlSymsp->TOP__Rocket.__PVT__ctrl_killm = (((IData)(vlSymsp->TOP__Rocket.__PVT__killm_common) 
                                               | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_xcpt)) 
                                              | (IData)(vlSymsp->TOP__Rocket.__PVT__fpu_kill_mem));
    vlSymsp->TOP__Rocket.__PVT__ctrl_killx = (1U & 
                                              (((IData)(vlSymsp->TOP__Rocket.__PVT__take_pc_mem_wb) 
                                                | (IData)(vlSymsp->TOP__Rocket.__PVT__replay_ex)) 
                                               | (~ (IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_valid))));
    vlSymsp->TOP__Rocket.__PVT__rf_wdata = (((IData)(vlSymsp->TOP__Rocket.__PVT__dmem_resp_valid) 
                                             & (~ (IData)(vlTOPp->io_dmem_resp_bits_tag)))
                                             ? vlTOPp->io_dmem_resp_bits_data
                                             : ((IData)(vlSymsp->TOP__Rocket.__PVT__GEN_155)
                                                 ? 
                                                vlSymsp->TOP__Rocket.__PVT__div__DOT__remainder[0U]
                                                 : 
                                                ((0U 
                                                  != (IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_csr))
                                                  ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6034)
                                                  : vlSymsp->TOP__Rocket.__PVT__wb_reg_wdata)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata = (
                                                   ((((2U 
                                                       == (IData)(vlSymsp->TOP__Rocket.__PVT__T_7399)) 
                                                      | (3U 
                                                         == (IData)(vlSymsp->TOP__Rocket.__PVT__T_7399)))
                                                      ? (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6034)
                                                      : 0U) 
                                                    | ((3U 
                                                        != (IData)(vlSymsp->TOP__Rocket.__PVT__T_7399))
                                                        ? vlSymsp->TOP__Rocket.__PVT__wb_reg_wdata
                                                        : 0U)) 
                                                   & (~ 
                                                      ((3U 
                                                        == (IData)(vlSymsp->TOP__Rocket.__PVT__T_7399))
                                                        ? vlSymsp->TOP__Rocket.__PVT__wb_reg_wdata
                                                        : 0U)));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__in1_xor_in2 
        = (vlSymsp->TOP__Rocket.__PVT__ex_op1 ^ vlSymsp->TOP__Rocket.__PVT__alu__DOT__in2_inv);
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_20 = (VL_ULL(0x1ffffffff) 
                                                  & ((QData)((IData)(
                                                                     (vlSymsp->TOP__Rocket.__PVT__ex_op1 
                                                                      + vlSymsp->TOP__Rocket.__PVT__alu__DOT__in2_inv))) 
                                                     + (QData)((IData)(
                                                                       (1U 
                                                                        & ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn) 
                                                                           >> 3U))))));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_62 = ((0xff00ffU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_52 
                                                      >> 8U)) 
                                                  | (0xff00ff00U 
                                                     & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_52 
                                                        << 8U)));
    vlSymsp->TOP__Rocket.__PVT__T_7437 = ((IData)(vlSymsp->TOP__Rocket.__PVT__GEN_155) 
                                          | (IData)(vlSymsp->TOP__Rocket.__PVT__T_7431));
    vlSymsp->TOP__Rocket.__PVT__T_7436 = (vlSymsp->TOP__Rocket.__PVT__T_7419 
                                          | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7431)
                                              ? ((IData)(1U) 
                                                 << 
                                                 (0x1fU 
                                                  & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                     >> 7U)))
                                              : 0U));
    vlSymsp->TOP__Rocket.__PVT__GEN_166 = ((IData)(vlSymsp->TOP__Rocket.__PVT__rf_wen) 
                                           & (0U != (IData)(vlSymsp->TOP__Rocket.__PVT__rf_waddr)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6158 = 
        ((0x1005U & (~ ((~ vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata) 
                        | (8U & ((~ (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata 
                                     >> 5U)) << 3U))))) 
         | (0xffaU & vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6221 = 
        (1U | ((~ vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata) 
               | (2U & ((~ (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa 
                            >> 2U)) << 1U))));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6235 = 
        (((QData)((IData)((vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4804 
                           >> 0x20U))) << 0x20U) | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6238 = 
        (((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata)) 
          << 0x20U) | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4804)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6405 = 
        ((vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata 
          >> 0x1bU) & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6229 = 
        (((QData)((IData)((vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4814 
                           >> 0x20U))) << 0x20U) | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6232 = 
        (((QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata)) 
          << 0x20U) | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4814)));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_72 = ((0xf0f0f0fU 
                                                   & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_62 
                                                      >> 4U)) 
                                                  | (0xf0f0f0f0U 
                                                     & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_62 
                                                        << 4U)));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6406 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6405) 
         & (vlSymsp->TOP__Rocket.__PVT__csr__DOT__wdata 
            >> 0xcU));
    vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_258 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__wen)
          ? ((0xb80U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                   >> 0x14U))) ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6232
              : ((0xb00U == (0xfffU & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                       >> 0x14U))) ? vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_6229
                  : (QData)((IData)((0x7fU & ((IData)(1U) 
                                              + (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4807)))))))
          : (QData)((IData)((0x7fU & ((IData)(1U) + (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_4807))))));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_82 = ((0x33333333U 
                                                   & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_72 
                                                      >> 2U)) 
                                                  | (0xccccccccU 
                                                     & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_72 
                                                        << 2U)));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__shin = ((IData)(vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_41)
                                                   ? vlSymsp->TOP__Rocket.__PVT__ex_op1
                                                   : 
                                                  ((0x55555555U 
                                                    & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_82 
                                                       >> 1U)) 
                                                   | (0xaaaaaaaaU 
                                                      & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_82 
                                                         << 1U))));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_98 = (VL_ULL(0x1ffffffff) 
                                                  & VL_SHIFTRS_QQI(33,33,5, 
                                                                   (((QData)((IData)(
                                                                                (1U 
                                                                                & (((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn) 
                                                                                >> 3U) 
                                                                                & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__shin 
                                                                                >> 0x1fU))))) 
                                                                     << 0x20U) 
                                                                    | (QData)((IData)(vlSymsp->TOP__Rocket.__PVT__alu__DOT__shin))), 
                                                                   (0x1fU 
                                                                    & vlSymsp->TOP__Rocket.__PVT__ex_op2)));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_109 = (
                                                   (0xffffU 
                                                    & (IData)(
                                                              (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_98 
                                                               >> 0x10U))) 
                                                   | (0xffff0000U 
                                                      & ((IData)(vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_98) 
                                                         << 0x10U)));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_119 = (
                                                   (0xff00ffU 
                                                    & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_109 
                                                       >> 8U)) 
                                                   | (0xff00ff00U 
                                                      & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_109 
                                                         << 8U)));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_129 = (
                                                   (0xf0f0f0fU 
                                                    & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_119 
                                                       >> 4U)) 
                                                   | (0xf0f0f0f0U 
                                                      & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_119 
                                                         << 4U)));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_139 = (
                                                   (0x33333333U 
                                                    & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_129 
                                                       >> 2U)) 
                                                   | (0xccccccccU 
                                                      & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_129 
                                                         << 2U)));
    vlSymsp->TOP__Rocket.__PVT__alu__DOT__shift_logic 
        = ((((((2U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)) 
               | (3U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))) 
              | (0xcU <= (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))) 
             & ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn) 
                ^ ((8U & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))
                    ? (((1U & (vlSymsp->TOP__Rocket.__PVT__ex_op1 
                               >> 0x1fU)) == (1U & 
                                              (vlSymsp->TOP__Rocket.__PVT__ex_op2 
                                               >> 0x1fU)))
                        ? (IData)((vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_20 
                                   >> 0x1fU)) : ((2U 
                                                  & (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))
                                                  ? 
                                                 (vlSymsp->TOP__Rocket.__PVT__ex_op2 
                                                  >> 0x1fU)
                                                  : 
                                                 (vlSymsp->TOP__Rocket.__PVT__ex_op1 
                                                  >> 0x1fU)))
                    : (0U == vlSymsp->TOP__Rocket.__PVT__alu__DOT__in1_xor_in2)))) 
            | ((((4U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)) 
                 | (6U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)))
                 ? vlSymsp->TOP__Rocket.__PVT__alu__DOT__in1_xor_in2
                 : 0U) | (((6U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)) 
                           | (7U == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn)))
                           ? (vlSymsp->TOP__Rocket.__PVT__ex_op1 
                              & vlSymsp->TOP__Rocket.__PVT__ex_op2)
                           : 0U))) | (((IData)(vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_41)
                                        ? (IData)(vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_98)
                                        : 0U) | ((1U 
                                                  == (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_alu_fn))
                                                  ? 
                                                 ((0x55555555U 
                                                   & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_139 
                                                      >> 1U)) 
                                                  | (0xaaaaaaaaU 
                                                     & (vlSymsp->TOP__Rocket.__PVT__alu__DOT__T_139 
                                                        << 1U)))
                                                  : 0U)));
}

VL_INLINE_OPT void VRocket_Rocket::_combo__TOP__Rocket__7(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      VRocket_Rocket::_combo__TOP__Rocket__7\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_284 = (
                                                   (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_chain)) 
                                                   & (((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_176) 
                                                       & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_x)) 
                                                      & ((2U 
                                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_tmatch))
                                                          ? 
                                                         ((vlSymsp->TOP__Rocket__ibuf.__PVT__T_488 
                                                           >= vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_address) 
                                                          ^ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_tmatch))
                                                          : 
                                                         (((~ vlSymsp->TOP__Rocket__ibuf.__PVT__T_488) 
                                                           | (IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_193)) 
                                                          == vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_206))));
    vlSymsp->TOP__Rocket.__PVT__id_xcpt_if = (1U & 
                                              ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__xcpt_if) 
                                               | (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_529)));
    vlSymsp->TOP__Rocket.__PVT__mem_wrong_npc = (1U 
                                                 & ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_pc_valid)
                                                     ? 
                                                    ((0xfffffffeU 
                                                      & vlSymsp->TOP__Rocket.__PVT__T_7257) 
                                                     != vlSymsp->TOP__Rocket.__PVT__ex_reg_pc)
                                                     : 
                                                    ((~ (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_519)) 
                                                     | ((0xfffffffeU 
                                                         & vlSymsp->TOP__Rocket.__PVT__T_7257) 
                                                        != vlSymsp->TOP__Rocket__ibuf.__PVT__T_488))));
    vlSymsp->TOP__Rocket.__PVT__T_7007 = ((~ (IData)(vlSymsp->TOP__Rocket.__PVT__take_pc_mem_wb)) 
                                          & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_519));
    vlSymsp->TOP__Rocket.__PVT__T_7497 = ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rd) 
                                          == (0x1fU 
                                              & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.__PVT__T_7474 = ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rd) 
                                          == (0x1fU 
                                              & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.__PVT__T_7447 = ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rd) 
                                          == (0x1fU 
                                              & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.__PVT__T_6545_T_6564_data 
        = ((0x1eU >= (0x1fU & (~ (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2))))
            ? vlSymsp->TOP__Rocket.__PVT__T_6545[(0x1fU 
                                                  & (~ (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2)))]
            : 0U);
    vlSymsp->TOP__Rocket.__PVT__T_6878 = ((0x1fU & 
                                           (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                            >> 7U)) 
                                          == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2));
    vlSymsp->TOP__Rocket.__PVT__T_7495 = ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2) 
                                          == (0x1fU 
                                              & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.__PVT__T_7472 = ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2) 
                                          == (0x1fU 
                                              & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.__PVT__id_bypass_src_1_1 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6866) 
         & ((0x1fU & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                      >> 7U)) == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2)));
    vlSymsp->TOP__Rocket.__PVT__T_7445 = ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2) 
                                          == (0x1fU 
                                              & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.__PVT__T_6545_T_6554_data 
        = ((0x1eU >= (0x1fU & (~ (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1))))
            ? vlSymsp->TOP__Rocket.__PVT__T_6545[(0x1fU 
                                                  & (~ (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1)))]
            : 0U);
    vlSymsp->TOP__Rocket.__PVT__T_6874 = ((0x1fU & 
                                           (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                            >> 7U)) 
                                          == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1));
    vlSymsp->TOP__Rocket.__PVT__T_7493 = ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1) 
                                          == (0x1fU 
                                              & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.__PVT__T_7470 = ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1) 
                                          == (0x1fU 
                                              & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.__PVT__id_bypass_src_0_1 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6866) 
         & ((0x1fU & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                      >> 7U)) == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1)));
    vlSymsp->TOP__Rocket.__PVT__T_7443 = ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1) 
                                          == (0x1fU 
                                              & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                 >> 7U)));
    vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits 
        = ((0x10U <= (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635))
            ? ((8U <= (0xfU & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                ? vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in
                : vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1778_bits)
            : vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1934_bits);
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__GEN_5 = ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_284) 
                                                   & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_action));
    vlSymsp->TOP__Rocket.__PVT__bpu__DOT__GEN_4 = ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__T_284) 
                                                   & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_bp_0_control_action)));
    vlSymsp->TOP__Rocket.__PVT__GEN_169 = ((IData)(vlSymsp->TOP__Rocket.__PVT__rf_wen)
                                            ? ((0U 
                                                != (IData)(vlSymsp->TOP__Rocket.__PVT__rf_waddr))
                                                ? (
                                                   ((IData)(vlSymsp->TOP__Rocket.__PVT__rf_waddr) 
                                                    == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2))
                                                    ? vlSymsp->TOP__Rocket.__PVT__rf_wdata
                                                    : vlSymsp->TOP__Rocket.__PVT__T_6545_T_6564_data)
                                                : vlSymsp->TOP__Rocket.__PVT__T_6545_T_6564_data)
                                            : vlSymsp->TOP__Rocket.__PVT__T_6545_T_6564_data);
    vlSymsp->TOP__Rocket.__PVT__id_bypass_src_1_2 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6870) 
         & (IData)(vlSymsp->TOP__Rocket.__PVT__T_6878));
    vlSymsp->TOP__Rocket.__PVT__GEN_168 = ((IData)(vlSymsp->TOP__Rocket.__PVT__rf_wen)
                                            ? ((0U 
                                                != (IData)(vlSymsp->TOP__Rocket.__PVT__rf_waddr))
                                                ? (
                                                   ((IData)(vlSymsp->TOP__Rocket.__PVT__rf_waddr) 
                                                    == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1))
                                                    ? vlSymsp->TOP__Rocket.__PVT__rf_wdata
                                                    : vlSymsp->TOP__Rocket.__PVT__T_6545_T_6554_data)
                                                : vlSymsp->TOP__Rocket.__PVT__T_6545_T_6554_data)
                                            : vlSymsp->TOP__Rocket.__PVT__T_6545_T_6554_data);
    vlSymsp->TOP__Rocket.__PVT__id_bypass_src_0_2 = 
        ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6870) 
         & (IData)(vlSymsp->TOP__Rocket.__PVT__T_6874));
    vlSymsp->TOP__Rocket.__PVT__T_6228 = (((((0U == 
                                              (0x48U 
                                               & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                             | (0U 
                                                == 
                                                (0x18U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            | (0x4000U 
                                               == (0x4008U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           << 1U) | 
                                          (((((0U == 
                                               (0x58U 
                                                & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                              | (0U 
                                                 == 
                                                 (0x20U 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                             | (4U 
                                                == 
                                                (0xcU 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            | (0x48U 
                                               == (0x48U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           | (0x4050U 
                                              == (0x4050U 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))));
    vlSymsp->TOP__Rocket.__PVT__T_6245 = ((((4U == 
                                             (0x24U 
                                              & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                            | (0x48U 
                                               == (0x48U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           << 1U) | 
                                          ((((0U == 
                                              (0x4004U 
                                               & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                             | (0U 
                                                == 
                                                (0x50U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            | (0U == 
                                               (0x44U 
                                                & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           | (0U == 
                                              (0x18U 
                                               & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))));
    vlSymsp->TOP__Rocket.__PVT__T_6277 = (((((0U == 
                                              (0x24U 
                                               & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                             | (4U 
                                                == 
                                                (0x1cU 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            | (0x10U 
                                               == (0x14U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           << 2U) | 
                                          ((((4U == 
                                              (0x44U 
                                               & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                             | (8U 
                                                == 
                                                (8U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            << 1U) 
                                           | ((8U == 
                                               (8U 
                                                & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                              | (0x40U 
                                                 == 
                                                 (0x44U 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)))));
    vlSymsp->TOP__Rocket.__PVT__T_6367 = (((((((0x2010U 
                                                == 
                                                (0x6054U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                               | (0x4040U 
                                                  == 
                                                  (0x4058U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                              | (0x40000030U 
                                                 == 
                                                 (0x40003034U 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                             | (0x40001010U 
                                                == 
                                                (0x40003054U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            << 3U) 
                                           | (((((0x2010U 
                                                  == 
                                                  (0x2054U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                 | (0x4010U 
                                                    == 
                                                    (0x40004054U 
                                                     & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                | (0x4010U 
                                                   == 
                                                   (0x5054U 
                                                    & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                               | (0x4040U 
                                                  == 
                                                  (0x4058U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                              << 2U)) 
                                          | ((((((((0x40U 
                                                    == 
                                                    (0x4054U 
                                                     & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                   | (0x3000U 
                                                      == 
                                                      (0x3044U 
                                                       & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                  | (0x6000U 
                                                     == 
                                                     (0x6044U 
                                                      & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                 | (0x6000U 
                                                    == 
                                                    (0x6018U 
                                                     & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                | (0x40000030U 
                                                   == 
                                                   (0x40003034U 
                                                    & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                               | (0x40001010U 
                                                  == 
                                                  (0x40001054U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                              << 1U) 
                                             | (((0x1010U 
                                                  == 
                                                  (0x3054U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                 | (0x1040U 
                                                    == 
                                                    (0x1058U 
                                                     & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                | (0x7000U 
                                                   == 
                                                   (0x7044U 
                                                    & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)))));
    vlSymsp->TOP__Rocket.__PVT__T_6443 = ((((8U == 
                                             (0x18001008U 
                                              & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                            << 3U) 
                                           | (((((8U 
                                                  == 
                                                  (0x2008U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                 | (0x8000008U 
                                                    == 
                                                    (0x8000008U 
                                                     & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                | (0x10000008U 
                                                   == 
                                                   (0x10000008U 
                                                    & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                               | (0x80000008U 
                                                  == 
                                                  (0x80000008U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                              << 2U)) 
                                          | ((((0x10000008U 
                                                == 
                                                (0x10001008U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                               | (0x40000008U 
                                                  == 
                                                  (0x40001008U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                              << 1U) 
                                             | ((((8U 
                                                   == 
                                                   (0x2008U 
                                                    & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                  | (0x20U 
                                                     == 
                                                     (0x28U 
                                                      & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                 | (0x18000020U 
                                                    == 
                                                    (0x18000020U 
                                                     & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                | (0x20000020U 
                                                   == 
                                                   (0x20000020U 
                                                    & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)))));
    vlSymsp->TOP__Rocket.__PVT__T_6463 = (((0x4000U 
                                            == (0x4000U 
                                                & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                           << 2U) | 
                                          (((0x2000U 
                                             == (0x2000U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                            << 1U) 
                                           | (0x1000U 
                                              == (0x1000U 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))));
    vlSymsp->TOP__Rocket.__PVT__T_7027 = ((4U == (0x1cU 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_debug));
    vlSymsp->TOP__Rocket.__PVT__T_6845 = (((8U == (0x3048U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                           | ((0x2008U 
                                               == (0x2048U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                              & (vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits 
                                                 >> 0x19U))) 
                                          | ((IData)(vlSymsp->TOP__Rocket.__PVT__id_reg_fence) 
                                             & (IData)(vlSymsp->TOP__Rocket.__PVT__id_mem_busy)));
    vlSymsp->TOP__Rocket.__PVT__T_6521 = (((0x50U == 
                                            (0x3050U 
                                             & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                           << 2U) | 
                                          (((0x2050U 
                                             == (0x2050U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                            << 1U) 
                                           | (0x1050U 
                                              == (0x1050U 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))));
    vlSymsp->TOP__Rocket.__PVT__T_6130 = ((((((((((
                                                   ((((((((3U 
                                                           == 
                                                           (0x505fU 
                                                            & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                          | (3U 
                                                             == 
                                                             (0x207fU 
                                                              & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                         | (0xfU 
                                                            == 
                                                            (0x607fU 
                                                             & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                        | (0x17U 
                                                           == 
                                                           (0x5fU 
                                                            & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                       | (0x33U 
                                                          == 
                                                          (0xfc00007fU 
                                                           & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                      | (0x33U 
                                                         == 
                                                         (0xbe00707fU 
                                                          & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                     | (0x63U 
                                                        == 
                                                        (0x707bU 
                                                         & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                    | (0x6fU 
                                                       == 
                                                       (0x7fU 
                                                        & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                   | (0x73U 
                                                      == 
                                                      (0xffefffffU 
                                                       & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                  | (0x1013U 
                                                     == 
                                                     (0xfc00305fU 
                                                      & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                 | (0x2013U 
                                                    == 
                                                    (0x207fU 
                                                     & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                | (0x202fU 
                                                   == 
                                                   (0x1800707fU 
                                                    & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                               | (0x2073U 
                                                  == 
                                                  (0x207fU 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                              | (0x5013U 
                                                 == 
                                                 (0xbc00707fU 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                             | (0x5033U 
                                                == 
                                                (0xbe00707fU 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            | (0x800202fU 
                                               == (0xe800707fU 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           | (0x1000202fU 
                                              == (0xf9f0707fU 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                          | (0x10500073U 
                                             == vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits));
    vlSymsp->TOP__Rocket.__PVT__T_6383 = (((((((3U 
                                                == 
                                                (0x605fU 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                               | (3U 
                                                  == 
                                                  (0x505fU 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                              | (3U 
                                                 == 
                                                 (0x207fU 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                             | (0x100fU 
                                                == 
                                                (0x707fU 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            | (0x202fU 
                                               == (0x1800707fU 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           | (0x800202fU 
                                              == (0xe800707fU 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                          | (0x1000202fU 
                                             == (0xf9f0707fU 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)));
    vlSymsp->TOP__Rocket.__PVT__T_6501 = (((((((0U 
                                                == 
                                                (0x28U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                               | (4U 
                                                  == 
                                                  (0xcU 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                              | (0x10U 
                                                 == 
                                                 (0x50U 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                             | (0x48U 
                                                == 
                                                (0x48U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            | (0x1010U 
                                               == (0x1010U 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           | (0x2008U 
                                              == (0x2008U 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                          | (0x2010U 
                                             == (0x2010U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)));
    vlSymsp->TOP__Rocket.__PVT__T_6172 = (((0x20U == 
                                            (0x70U 
                                             & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                           | (0x20U 
                                              == (0x64U 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                          | (0x20U 
                                             == (0x34U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)));
    vlSymsp->TOP__Rocket.__PVT__T_6193 = ((((0U == 
                                             (0x4004U 
                                              & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                            | (0U == 
                                               (0x44U 
                                                & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           | (0U == 
                                              (0x18U 
                                               & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                          | (0x2000U 
                                             == (0x2050U 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)));
    vlSymsp->TOP__Rocket.__PVT__T_6862 = ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__GEN_5)
                                           ? 0xdU : 
                                          ((IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__GEN_4)
                                            ? 3U : 
                                           ((IData)(vlSymsp->TOP__Rocket.__PVT__id_xcpt_if)
                                             ? 1U : 2U)));
    vlSymsp->TOP__Rocket.__PVT__T_7023 = (((~ (IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__GEN_4)) 
                                           & (~ (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__xcpt_if))) 
                                          & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_529));
    vlSymsp->TOP__Rocket.__PVT__T_7047 = ((((0U == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2)) 
                                            | (IData)(vlSymsp->TOP__Rocket.__PVT__id_bypass_src_1_1)) 
                                           | (IData)(vlSymsp->TOP__Rocket.__PVT__id_bypass_src_1_2)) 
                                          | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6867) 
                                             & (IData)(vlSymsp->TOP__Rocket.__PVT__T_6878)));
    vlSymsp->TOP__Rocket.__PVT__T_7032 = ((((0U == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1)) 
                                            | (IData)(vlSymsp->TOP__Rocket.__PVT__id_bypass_src_0_1)) 
                                           | (IData)(vlSymsp->TOP__Rocket.__PVT__id_bypass_src_0_2)) 
                                          | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6867) 
                                             & (IData)(vlSymsp->TOP__Rocket.__PVT__T_6874)));
    vlSymsp->TOP__Rocket.__PVT__id_csr_ren = (((2U 
                                                == (IData)(vlSymsp->TOP__Rocket.__PVT__T_6521)) 
                                               | (3U 
                                                  == (IData)(vlSymsp->TOP__Rocket.__PVT__T_6521))) 
                                              & (0U 
                                                 == (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1)));
    vlSymsp->TOP__Rocket.__PVT__T_6136 = (((((((IData)(vlSymsp->TOP__Rocket.__PVT__T_6130) 
                                               | (0x30200073U 
                                                  == vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                              | (0x7b200073U 
                                                 == vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                             | (0x23U 
                                                == 
                                                (0x603fU 
                                                 & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                            | (0x1063U 
                                               == (0x306fU 
                                                   & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                           | (0x4063U 
                                              == (0x407fU 
                                                  & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                          | (3U == 
                                             (0x306fU 
                                              & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)));
    vlSymsp->TOP__Rocket.__PVT__T_7408 = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6501) 
                                          & (0U != (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rd)));
    vlSymsp->TOP__Rocket.__PVT__T_7405 = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6172) 
                                          & (0U != (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2)));
    vlSymsp->TOP__Rocket.__PVT__T_7402 = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6193) 
                                          & (0U != (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1)));
    vlSymsp->TOP__Rocket.__PVT__T_7057 = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6172) 
                                          & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7047)));
    vlSymsp->TOP__Rocket.__PVT__T_7042 = ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6193) 
                                          & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7032)));
    vlSymsp->TOP__Rocket.__PVT__T_7026 = (((0x1008U 
                                            == (0x1048U 
                                                & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                           | ((4U == (IData)(vlSymsp->TOP__Rocket.__PVT__T_6521)) 
                                              | (((0U 
                                                   != (IData)(vlSymsp->TOP__Rocket.__PVT__T_6521)) 
                                                  & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__id_csr_ren))) 
                                                 & (~ 
                                                    ((0x40U 
                                                      == 
                                                      (0x46U 
                                                       & (vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits 
                                                          >> 0x14U))) 
                                                     | (0x240U 
                                                        == 
                                                        (0x244U 
                                                         & (vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits 
                                                            >> 0x14U)))))))) 
                                          | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__T_5566));
    vlSymsp->TOP__Rocket.__PVT__id_xcpt = (1U & (((
                                                   ((IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_39) 
                                                    | (IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__GEN_5)) 
                                                   | (IData)(vlSymsp->TOP__Rocket.__PVT__bpu__DOT__GEN_4)) 
                                                  | (IData)(vlSymsp->TOP__Rocket.__PVT__id_xcpt_if)) 
                                                 | ((((~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_6136)) 
                                                      | ((0x2000030U 
                                                          == 
                                                          (0x2000074U 
                                                           & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                         & (~ 
                                                            (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa 
                                                             >> 0xcU)))) 
                                                     | ((0x2008U 
                                                         == 
                                                         (0x2048U 
                                                          & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                        & (~ vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa))) 
                                                    | ((3U 
                                                        != 
                                                        (3U 
                                                         & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)) 
                                                       & (~ 
                                                          (vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_misa 
                                                           >> 2U))))));
    vlSymsp->TOP__Rocket.__PVT__data_hazard_mem = ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_wxd) 
                                                   & ((((IData)(vlSymsp->TOP__Rocket.__PVT__T_7402) 
                                                        & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7470)) 
                                                       | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7405) 
                                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7472))) 
                                                      | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7408) 
                                                         & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7474))));
    vlSymsp->TOP__Rocket.__PVT__T_7528 = ((((IData)(vlSymsp->TOP__Rocket.__PVT__ex_reg_valid) 
                                            & ((((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_wxd) 
                                                 & ((((IData)(vlSymsp->TOP__Rocket.__PVT__T_7402) 
                                                      & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7443)) 
                                                     | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7405) 
                                                        & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7445))) 
                                                    | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7408) 
                                                       & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7447)))) 
                                                & ((((((0U 
                                                        != (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_csr)) 
                                                       | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_jalr)) 
                                                      | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_mem)) 
                                                     | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_div)) 
                                                    | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rocc)) 
                                                   | (IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rocc))) 
                                               | ((IData)(vlSymsp->TOP__Rocket.__PVT__ex_ctrl_rocc) 
                                                  & (((((IData)(vlTOPp->io_fpu_dec_ren1) 
                                                        & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7443)) 
                                                       | ((IData)(vlTOPp->io_fpu_dec_ren2) 
                                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7445))) 
                                                      | ((IData)(vlTOPp->io_fpu_dec_ren3) 
                                                         & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs3) 
                                                            == 
                                                            (0x1fU 
                                                             & (vlSymsp->TOP__Rocket.__PVT__ex_reg_inst 
                                                                >> 7U))))) 
                                                     | ((IData)(vlTOPp->io_fpu_dec_wen) 
                                                        & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7447)))))) 
                                           | ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_valid) 
                                              & (((IData)(vlSymsp->TOP__Rocket.__PVT__data_hazard_mem) 
                                                  & (((((0U 
                                                         != (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_csr)) 
                                                        | ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_mem) 
                                                           & (IData)(vlSymsp->TOP__Rocket.__PVT__mem_reg_slow_bypass))) 
                                                       | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_div)) 
                                                      | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rocc)) 
                                                     | (IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rocc))) 
                                                 | ((IData)(vlSymsp->TOP__Rocket.__PVT__mem_ctrl_rocc) 
                                                    & (((((IData)(vlTOPp->io_fpu_dec_ren1) 
                                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7470)) 
                                                         | ((IData)(vlTOPp->io_fpu_dec_ren2) 
                                                            & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7472))) 
                                                        | ((IData)(vlTOPp->io_fpu_dec_ren3) 
                                                           & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs3) 
                                                              == 
                                                              (0x1fU 
                                                               & (vlSymsp->TOP__Rocket.__PVT__mem_reg_inst 
                                                                  >> 7U))))) 
                                                       | ((IData)(vlTOPp->io_fpu_dec_wen) 
                                                          & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7474))))))) 
                                          | ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_reg_valid) 
                                             & ((((IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_wxd) 
                                                  & ((((IData)(vlSymsp->TOP__Rocket.__PVT__T_7402) 
                                                       & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7493)) 
                                                      | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7405) 
                                                         & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7495))) 
                                                     | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7408) 
                                                        & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7497)))) 
                                                 & (IData)(vlSymsp->TOP__Rocket.__PVT__wb_set_sboard)) 
                                                | ((IData)(vlSymsp->TOP__Rocket.__PVT__wb_ctrl_wfd) 
                                                   & (((((IData)(vlTOPp->io_fpu_dec_ren1) 
                                                         & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7493)) 
                                                        | ((IData)(vlTOPp->io_fpu_dec_ren2) 
                                                           & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7495))) 
                                                       | ((IData)(vlTOPp->io_fpu_dec_ren3) 
                                                          & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs3) 
                                                             == 
                                                             (0x1fU 
                                                              & (vlSymsp->TOP__Rocket.__PVT__wb_reg_inst 
                                                                 >> 7U))))) 
                                                      | ((IData)(vlTOPp->io_fpu_dec_wen) 
                                                         & (IData)(vlSymsp->TOP__Rocket.__PVT__T_7497)))))));
    vlSymsp->TOP__Rocket.__PVT__ctrl_stalld = ((((((IData)(vlSymsp->TOP__Rocket.__PVT__T_7528) 
                                                   | ((((IData)(vlSymsp->TOP__Rocket.__PVT__T_7402) 
                                                        & ((0xfffffffeU 
                                                            & vlSymsp->TOP__Rocket.__PVT__T_7410) 
                                                           >> (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1))) 
                                                       | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7405) 
                                                          & ((0xfffffffeU 
                                                              & vlSymsp->TOP__Rocket.__PVT__T_7410) 
                                                             >> (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2)))) 
                                                      | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_7408) 
                                                         & ((0xfffffffeU 
                                                             & vlSymsp->TOP__Rocket.__PVT__T_7410) 
                                                            >> (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rd))))) 
                                                  | ((IData)(vlSymsp->TOP__Rocket.__PVT__T_6383) 
                                                     & (IData)(vlSymsp->TOP__Rocket.__PVT__dcache_blocked))) 
                                                 | ((0x2000030U 
                                                     == 
                                                     (0x2000074U 
                                                      & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                    & ((~ 
                                                        ((0U 
                                                          == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state)) 
                                                         | ((5U 
                                                             == (IData)(vlSymsp->TOP__Rocket.__PVT__div__DOT__state)) 
                                                            & (~ (IData)(vlSymsp->TOP__Rocket.__PVT__wb_wxd))))) 
                                                       | (IData)(vlSymsp->TOP__Rocket.__PVT__T_7002)))) 
                                                | ((IData)(vlSymsp->TOP__Rocket.__PVT__id_mem_busy) 
                                                   & ((((0x2008U 
                                                         == 
                                                         (0x2048U 
                                                          & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits)) 
                                                        & (vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits 
                                                           >> 0x1aU)) 
                                                       | (0x1008U 
                                                          == 
                                                          (0x1048U 
                                                           & vlSymsp->TOP__Rocket.ibuf_io_inst_0_bits_inst_bits))) 
                                                      | ((IData)(vlSymsp->TOP__Rocket.__PVT__id_reg_fence) 
                                                         & (IData)(vlSymsp->TOP__Rocket.__PVT__T_6383))))) 
                                               | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__reg_wfi));
    vlSymsp->TOP__Rocket.__PVT__T_7551 = (1U & ((((
                                                   (~ (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_519)) 
                                                   | (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_503)) 
                                                  | (IData)(vlSymsp->TOP__Rocket.__PVT__take_pc_mem_wb)) 
                                                 | (IData)(vlSymsp->TOP__Rocket.__PVT__ctrl_stalld)) 
                                                | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_39)));
    vlSymsp->TOP__Rocket.__PVT__T_7063 = (1U & (((~ (IData)(vlSymsp->TOP__Rocket.__PVT__T_7551)) 
                                                 | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_39)) 
                                                | (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_503)));
}

void VRocket_Rocket::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+      VRocket_Rocket::_ctor_var_reset\n"); );
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
    __PVT__io_dmem_req_bits_phys = VL_RAND_RESET_I(1);
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
    __PVT__io_fpu_valid = VL_RAND_RESET_I(1);
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
    __PVT__x0 = VL_RAND_RESET_I(32);
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
    __PVT__ex_ctrl_legal = VL_RAND_RESET_I(1);
    __PVT__GEN_272 = VL_RAND_RESET_I(32);
    __PVT__GEN_273 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_rocc = VL_RAND_RESET_I(1);
    __PVT__GEN_274 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_branch = VL_RAND_RESET_I(1);
    __PVT__GEN_275 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_jal = VL_RAND_RESET_I(1);
    __PVT__GEN_276 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_jalr = VL_RAND_RESET_I(1);
    __PVT__GEN_277 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_rxs2 = VL_RAND_RESET_I(1);
    __PVT__GEN_278 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_rxs1 = VL_RAND_RESET_I(1);
    __PVT__GEN_279 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_sel_alu2 = VL_RAND_RESET_I(2);
    __PVT__GEN_280 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_sel_alu1 = VL_RAND_RESET_I(2);
    __PVT__GEN_281 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_sel_imm = VL_RAND_RESET_I(3);
    __PVT__GEN_282 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_alu_dw = VL_RAND_RESET_I(1);
    __PVT__GEN_283 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_alu_fn = VL_RAND_RESET_I(4);
    __PVT__GEN_284 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_mem = VL_RAND_RESET_I(1);
    __PVT__GEN_285 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_mem_cmd = VL_RAND_RESET_I(5);
    __PVT__GEN_286 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_mem_type = VL_RAND_RESET_I(3);
    __PVT__GEN_287 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_rfs1 = VL_RAND_RESET_I(1);
    __PVT__GEN_288 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_rfs2 = VL_RAND_RESET_I(1);
    __PVT__GEN_289 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_rfs3 = VL_RAND_RESET_I(1);
    __PVT__GEN_290 = VL_RAND_RESET_I(32);
    __PVT__GEN_291 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_div = VL_RAND_RESET_I(1);
    __PVT__GEN_292 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_wxd = VL_RAND_RESET_I(1);
    __PVT__GEN_293 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_csr = VL_RAND_RESET_I(3);
    __PVT__GEN_294 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_fence_i = VL_RAND_RESET_I(1);
    __PVT__GEN_295 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_fence = VL_RAND_RESET_I(1);
    __PVT__GEN_296 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_amo = VL_RAND_RESET_I(1);
    __PVT__GEN_297 = VL_RAND_RESET_I(32);
    __PVT__ex_ctrl_dp = VL_RAND_RESET_I(1);
    __PVT__GEN_298 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_legal = VL_RAND_RESET_I(1);
    __PVT__GEN_299 = VL_RAND_RESET_I(32);
    __PVT__GEN_300 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_rocc = VL_RAND_RESET_I(1);
    __PVT__GEN_301 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_branch = VL_RAND_RESET_I(1);
    __PVT__GEN_302 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_jal = VL_RAND_RESET_I(1);
    __PVT__GEN_303 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_jalr = VL_RAND_RESET_I(1);
    __PVT__GEN_304 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_rxs2 = VL_RAND_RESET_I(1);
    __PVT__GEN_305 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_rxs1 = VL_RAND_RESET_I(1);
    __PVT__GEN_306 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_sel_alu2 = VL_RAND_RESET_I(2);
    __PVT__GEN_307 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_sel_alu1 = VL_RAND_RESET_I(2);
    __PVT__GEN_308 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_sel_imm = VL_RAND_RESET_I(3);
    __PVT__GEN_309 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_alu_dw = VL_RAND_RESET_I(1);
    __PVT__GEN_310 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_alu_fn = VL_RAND_RESET_I(4);
    __PVT__GEN_311 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_mem = VL_RAND_RESET_I(1);
    __PVT__GEN_312 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_mem_cmd = VL_RAND_RESET_I(5);
    __PVT__GEN_313 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_mem_type = VL_RAND_RESET_I(3);
    __PVT__GEN_314 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_rfs1 = VL_RAND_RESET_I(1);
    __PVT__GEN_315 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_rfs2 = VL_RAND_RESET_I(1);
    __PVT__GEN_316 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_rfs3 = VL_RAND_RESET_I(1);
    __PVT__GEN_317 = VL_RAND_RESET_I(32);
    __PVT__GEN_318 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_div = VL_RAND_RESET_I(1);
    __PVT__GEN_319 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_wxd = VL_RAND_RESET_I(1);
    __PVT__GEN_320 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_csr = VL_RAND_RESET_I(3);
    __PVT__GEN_321 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_fence_i = VL_RAND_RESET_I(1);
    __PVT__GEN_322 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_fence = VL_RAND_RESET_I(1);
    __PVT__GEN_323 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_amo = VL_RAND_RESET_I(1);
    __PVT__GEN_324 = VL_RAND_RESET_I(32);
    __PVT__mem_ctrl_dp = VL_RAND_RESET_I(1);
    __PVT__GEN_325 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_legal = VL_RAND_RESET_I(1);
    __PVT__GEN_326 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_fp = VL_RAND_RESET_I(1);
    __PVT__GEN_327 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_rocc = VL_RAND_RESET_I(1);
    __PVT__GEN_328 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_branch = VL_RAND_RESET_I(1);
    __PVT__GEN_329 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_jal = VL_RAND_RESET_I(1);
    __PVT__GEN_330 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_jalr = VL_RAND_RESET_I(1);
    __PVT__GEN_331 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_rxs2 = VL_RAND_RESET_I(1);
    __PVT__GEN_332 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_rxs1 = VL_RAND_RESET_I(1);
    __PVT__GEN_333 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_sel_alu2 = VL_RAND_RESET_I(2);
    __PVT__GEN_334 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_sel_alu1 = VL_RAND_RESET_I(2);
    __PVT__GEN_335 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_sel_imm = VL_RAND_RESET_I(3);
    __PVT__GEN_336 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_alu_dw = VL_RAND_RESET_I(1);
    __PVT__GEN_337 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_alu_fn = VL_RAND_RESET_I(4);
    __PVT__GEN_338 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_mem = VL_RAND_RESET_I(1);
    __PVT__GEN_339 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_mem_cmd = VL_RAND_RESET_I(5);
    __PVT__GEN_340 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_mem_type = VL_RAND_RESET_I(3);
    __PVT__GEN_341 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_rfs1 = VL_RAND_RESET_I(1);
    __PVT__GEN_342 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_rfs2 = VL_RAND_RESET_I(1);
    __PVT__GEN_343 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_rfs3 = VL_RAND_RESET_I(1);
    __PVT__GEN_344 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_wfd = VL_RAND_RESET_I(1);
    __PVT__GEN_345 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_div = VL_RAND_RESET_I(1);
    __PVT__GEN_346 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_wxd = VL_RAND_RESET_I(1);
    __PVT__GEN_347 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_csr = VL_RAND_RESET_I(3);
    __PVT__GEN_348 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_fence_i = VL_RAND_RESET_I(1);
    __PVT__GEN_349 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_fence = VL_RAND_RESET_I(1);
    __PVT__GEN_350 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_amo = VL_RAND_RESET_I(1);
    __PVT__GEN_351 = VL_RAND_RESET_I(32);
    __PVT__wb_ctrl_dp = VL_RAND_RESET_I(1);
    __PVT__GEN_352 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_xcpt_interrupt = VL_RAND_RESET_I(1);
    __PVT__GEN_353 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_valid = VL_RAND_RESET_I(1);
    __PVT__GEN_354 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_rvc = VL_RAND_RESET_I(1);
    __PVT__GEN_355 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_btb_hit = VL_RAND_RESET_I(1);
    __PVT__GEN_356 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_btb_resp_taken = VL_RAND_RESET_I(1);
    __PVT__GEN_357 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_btb_resp_mask = VL_RAND_RESET_I(2);
    __PVT__GEN_358 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_btb_resp_bridx = VL_RAND_RESET_I(1);
    __PVT__GEN_359 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_btb_resp_target = VL_RAND_RESET_I(32);
    __PVT__GEN_360 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_btb_resp_entry = VL_RAND_RESET_I(1);
    __PVT__GEN_361 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_btb_resp_bht_history = VL_RAND_RESET_I(1);
    __PVT__GEN_362 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_btb_resp_bht_value = VL_RAND_RESET_I(2);
    __PVT__GEN_363 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_xcpt = VL_RAND_RESET_I(1);
    __PVT__GEN_364 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_flush_pipe = VL_RAND_RESET_I(1);
    __PVT__GEN_365 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_load_use = VL_RAND_RESET_I(1);
    __PVT__GEN_366 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_cause = VL_RAND_RESET_I(32);
    __PVT__GEN_367 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_replay = VL_RAND_RESET_I(1);
    __PVT__GEN_368 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_pc = VL_RAND_RESET_I(32);
    __PVT__GEN_369 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_inst = VL_RAND_RESET_I(32);
    __PVT__GEN_370 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_xcpt_interrupt = VL_RAND_RESET_I(1);
    __PVT__GEN_371 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_valid = VL_RAND_RESET_I(1);
    __PVT__GEN_372 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_rvc = VL_RAND_RESET_I(1);
    __PVT__GEN_373 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_btb_hit = VL_RAND_RESET_I(1);
    __PVT__GEN_374 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_btb_resp_taken = VL_RAND_RESET_I(1);
    __PVT__GEN_375 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_btb_resp_mask = VL_RAND_RESET_I(2);
    __PVT__GEN_376 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_btb_resp_bridx = VL_RAND_RESET_I(1);
    __PVT__GEN_377 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_btb_resp_target = VL_RAND_RESET_I(32);
    __PVT__GEN_378 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_btb_resp_entry = VL_RAND_RESET_I(1);
    __PVT__GEN_379 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_btb_resp_bht_history = VL_RAND_RESET_I(1);
    __PVT__GEN_380 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_btb_resp_bht_value = VL_RAND_RESET_I(2);
    __PVT__GEN_381 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_xcpt = VL_RAND_RESET_I(1);
    __PVT__GEN_382 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_replay = VL_RAND_RESET_I(1);
    __PVT__GEN_383 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_flush_pipe = VL_RAND_RESET_I(1);
    __PVT__GEN_384 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_cause = VL_RAND_RESET_I(32);
    __PVT__GEN_385 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_slow_bypass = VL_RAND_RESET_I(1);
    __PVT__GEN_386 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_load = VL_RAND_RESET_I(1);
    __PVT__GEN_387 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_store = VL_RAND_RESET_I(1);
    __PVT__GEN_388 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_pc = VL_RAND_RESET_I(32);
    __PVT__GEN_389 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_inst = VL_RAND_RESET_I(32);
    __PVT__GEN_390 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_wdata = VL_RAND_RESET_I(32);
    __PVT__GEN_391 = VL_RAND_RESET_I(32);
    __PVT__mem_reg_rs2 = VL_RAND_RESET_I(32);
    __PVT__GEN_392 = VL_RAND_RESET_I(32);
    __PVT__wb_reg_valid = VL_RAND_RESET_I(1);
    __PVT__GEN_393 = VL_RAND_RESET_I(32);
    __PVT__wb_reg_xcpt = VL_RAND_RESET_I(1);
    __PVT__GEN_394 = VL_RAND_RESET_I(32);
    __PVT__wb_reg_replay = VL_RAND_RESET_I(1);
    __PVT__GEN_395 = VL_RAND_RESET_I(32);
    __PVT__wb_reg_cause = VL_RAND_RESET_I(32);
    __PVT__GEN_396 = VL_RAND_RESET_I(32);
    __PVT__wb_reg_pc = VL_RAND_RESET_I(32);
    __PVT__GEN_397 = VL_RAND_RESET_I(32);
    __PVT__wb_reg_inst = VL_RAND_RESET_I(32);
    __PVT__GEN_398 = VL_RAND_RESET_I(32);
    __PVT__wb_reg_wdata = VL_RAND_RESET_I(32);
    __PVT__GEN_399 = VL_RAND_RESET_I(32);
    __PVT__wb_reg_rs2 = VL_RAND_RESET_I(32);
    __PVT__GEN_400 = VL_RAND_RESET_I(32);
    __PVT__take_pc_mem_wb = VL_RAND_RESET_I(1);
    ibuf_io_imem_bits_mask = VL_RAND_RESET_I(2);
    ibuf_io_imem_bits_xcpt_if = VL_RAND_RESET_I(1);
    ibuf_io_inst_0_bits_inst_bits = VL_RAND_RESET_I(32);
    __PVT__T_6130 = VL_RAND_RESET_I(1);
    __PVT__T_6136 = VL_RAND_RESET_I(1);
    __PVT__T_6172 = VL_RAND_RESET_I(1);
    __PVT__T_6193 = VL_RAND_RESET_I(1);
    __PVT__T_6228 = VL_RAND_RESET_I(2);
    __PVT__T_6245 = VL_RAND_RESET_I(2);
    __PVT__T_6277 = VL_RAND_RESET_I(3);
    __PVT__T_6367 = VL_RAND_RESET_I(4);
    __PVT__T_6383 = VL_RAND_RESET_I(1);
    __PVT__T_6443 = VL_RAND_RESET_I(5);
    __PVT__T_6463 = VL_RAND_RESET_I(3);
    __PVT__T_6501 = VL_RAND_RESET_I(1);
    __PVT__T_6521 = VL_RAND_RESET_I(3);
    __PVT__id_reg_fence = VL_RAND_RESET_I(1);
    __PVT__GEN_401 = VL_RAND_RESET_I(32);
    { int __Vi0=0; for (; __Vi0<31; ++__Vi0) {
            __PVT__T_6545[__Vi0] = VL_RAND_RESET_I(32);
    }}
    __PVT__GEN_402 = VL_RAND_RESET_I(32);
    __PVT__T_6545_T_6554_data = VL_RAND_RESET_I(32);
    __PVT__GEN_403 = VL_RAND_RESET_I(32);
    __PVT__T_6545_T_6564_data = VL_RAND_RESET_I(32);
    __PVT__GEN_404 = VL_RAND_RESET_I(32);
    csr_io_hartid = VL_RAND_RESET_I(32);
    csr_io_rocc_cmd_ready = VL_RAND_RESET_I(1);
    csr_io_rocc_resp_valid = VL_RAND_RESET_I(1);
    csr_io_rocc_mem_req_valid = VL_RAND_RESET_I(1);
    csr_io_rocc_mem_s1_kill = VL_RAND_RESET_I(1);
    csr_io_rocc_mem_invalidate_lr = VL_RAND_RESET_I(1);
    csr_io_rocc_busy = VL_RAND_RESET_I(1);
    csr_io_rocc_interrupt = VL_RAND_RESET_I(1);
    csr_io_rocc_autl_acquire_valid = VL_RAND_RESET_I(1);
    csr_io_rocc_autl_acquire_bits_client_xact_id = VL_RAND_RESET_I(1);
    csr_io_rocc_autl_acquire_bits_is_builtin_type = VL_RAND_RESET_I(1);
    csr_io_rocc_autl_grant_ready = VL_RAND_RESET_I(1);
    csr_io_rocc_fpu_req_valid = VL_RAND_RESET_I(1);
    csr_io_rocc_fpu_resp_ready = VL_RAND_RESET_I(1);
    __PVT__id_csr_ren = VL_RAND_RESET_I(1);
    __PVT__id_mem_busy = VL_RAND_RESET_I(1);
    __PVT__T_6842 = VL_RAND_RESET_I(1);
    __PVT__T_6845 = VL_RAND_RESET_I(1);
    __PVT__id_xcpt_if = VL_RAND_RESET_I(1);
    __PVT__id_xcpt = VL_RAND_RESET_I(1);
    __PVT__T_6862 = VL_RAND_RESET_I(4);
    __PVT__T_6866 = VL_RAND_RESET_I(1);
    __PVT__T_6867 = VL_RAND_RESET_I(1);
    __PVT__T_6870 = VL_RAND_RESET_I(1);
    __PVT__id_bypass_src_0_1 = VL_RAND_RESET_I(1);
    __PVT__T_6874 = VL_RAND_RESET_I(1);
    __PVT__id_bypass_src_0_2 = VL_RAND_RESET_I(1);
    __PVT__id_bypass_src_1_1 = VL_RAND_RESET_I(1);
    __PVT__T_6878 = VL_RAND_RESET_I(1);
    __PVT__id_bypass_src_1_2 = VL_RAND_RESET_I(1);
    __PVT__ex_reg_rs_bypass_0 = VL_RAND_RESET_I(1);
    __PVT__GEN_405 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_rs_bypass_1 = VL_RAND_RESET_I(1);
    __PVT__GEN_406 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_rs_lsb_0 = VL_RAND_RESET_I(2);
    __PVT__GEN_407 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_rs_lsb_1 = VL_RAND_RESET_I(2);
    __PVT__GEN_408 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_rs_msb_0 = VL_RAND_RESET_I(30);
    __PVT__GEN_409 = VL_RAND_RESET_I(32);
    __PVT__ex_reg_rs_msb_1 = VL_RAND_RESET_I(30);
    __PVT__GEN_410 = VL_RAND_RESET_I(32);
    __PVT__T_6909 = VL_RAND_RESET_I(32);
    __PVT__GEN_4 = VL_RAND_RESET_I(32);
    __PVT__ex_rs_0 = VL_RAND_RESET_I(32);
    __PVT__T_6914 = VL_RAND_RESET_I(32);
    __PVT__GEN_7 = VL_RAND_RESET_I(32);
    __PVT__ex_rs_1 = VL_RAND_RESET_I(32);
    __PVT__T_6919 = VL_RAND_RESET_I(1);
    __PVT__T_6932 = VL_RAND_RESET_I(1);
    __PVT__T_6983 = VL_RAND_RESET_I(32);
    __PVT__ex_op1 = VL_RAND_RESET_I(32);
    __PVT__T_6996 = VL_RAND_RESET_I(4);
    __PVT__ex_op2 = VL_RAND_RESET_I(32);
    __PVT__T_7002 = VL_RAND_RESET_I(1);
    __PVT__T_7007 = VL_RAND_RESET_I(1);
    __PVT__T_7023 = VL_RAND_RESET_I(1);
    __PVT__T_7026 = VL_RAND_RESET_I(1);
    __PVT__T_7027 = VL_RAND_RESET_I(1);
    __PVT__T_7032 = VL_RAND_RESET_I(1);
    __PVT__T_7042 = VL_RAND_RESET_I(1);
    __PVT__T_7047 = VL_RAND_RESET_I(1);
    __PVT__T_7057 = VL_RAND_RESET_I(1);
    __PVT__T_7063 = VL_RAND_RESET_I(1);
    __PVT__ex_pc_valid = VL_RAND_RESET_I(1);
    __PVT__wb_dcache_miss = VL_RAND_RESET_I(1);
    __PVT__replay_ex = VL_RAND_RESET_I(1);
    __PVT__ctrl_killx = VL_RAND_RESET_I(1);
    __PVT__ex_slow_bypass = VL_RAND_RESET_I(1);
    __PVT__T_7102 = VL_RAND_RESET_I(1);
    __PVT__ex_xcpt = VL_RAND_RESET_I(1);
    __PVT__T_7106 = VL_RAND_RESET_I(1);
    __PVT__T_7173 = VL_RAND_RESET_I(12);
    __PVT__T_7254 = VL_RAND_RESET_Q(33);
    __PVT__T_7257 = VL_RAND_RESET_I(32);
    __PVT__mem_wrong_npc = VL_RAND_RESET_I(1);
    __PVT__mem_npc_misaligned = VL_RAND_RESET_I(1);
    __PVT__T_7274 = VL_RAND_RESET_I(32);
    __PVT__mem_cfi = VL_RAND_RESET_I(1);
    __PVT__mem_cfi_taken = VL_RAND_RESET_I(1);
    __PVT__T_7300 = VL_RAND_RESET_I(1);
    __PVT__T_7302 = VL_RAND_RESET_I(1);
    __PVT__T_7310 = VL_RAND_RESET_I(1);
    __PVT__T_7312 = VL_RAND_RESET_I(1);
    __PVT__mem_breakpoint = VL_RAND_RESET_I(1);
    __PVT__mem_debug_breakpoint = VL_RAND_RESET_I(1);
    __PVT__T_7320 = VL_RAND_RESET_I(1);
    __PVT__T_7322 = VL_RAND_RESET_I(1);
    __PVT__T_7324 = VL_RAND_RESET_I(1);
    __PVT__mem_new_cause = VL_RAND_RESET_I(4);
    __PVT__T_7338 = VL_RAND_RESET_I(1);
    __PVT__mem_xcpt = VL_RAND_RESET_I(1);
    __PVT__dcache_kill_mem = VL_RAND_RESET_I(1);
    __PVT__fpu_kill_mem = VL_RAND_RESET_I(1);
    __PVT__killm_common = VL_RAND_RESET_I(1);
    __PVT__T_7348 = VL_RAND_RESET_I(1);
    __PVT__GEN_411 = VL_RAND_RESET_I(32);
    __PVT__ctrl_killm = VL_RAND_RESET_I(1);
    __PVT__T_7360 = VL_RAND_RESET_I(1);
    __PVT__T_7364 = VL_RAND_RESET_I(1);
    __PVT__wb_wxd = VL_RAND_RESET_I(1);
    __PVT__wb_set_sboard = VL_RAND_RESET_I(1);
    __PVT__replay_wb_common = VL_RAND_RESET_I(1);
    __PVT__replay_wb = VL_RAND_RESET_I(1);
    __PVT__wb_xcpt = VL_RAND_RESET_I(1);
    __PVT__T_7371 = VL_RAND_RESET_I(1);
    __PVT__dmem_resp_valid = VL_RAND_RESET_I(1);
    __PVT__T_7379 = VL_RAND_RESET_I(1);
    __PVT__GEN_153 = VL_RAND_RESET_I(1);
    __PVT__GEN_154 = VL_RAND_RESET_I(5);
    __PVT__GEN_155 = VL_RAND_RESET_I(1);
    __PVT__wb_valid = VL_RAND_RESET_I(1);
    __PVT__wb_wen = VL_RAND_RESET_I(1);
    __PVT__rf_wen = VL_RAND_RESET_I(1);
    __PVT__rf_waddr = VL_RAND_RESET_I(5);
    __PVT__rf_wdata = VL_RAND_RESET_I(32);
    __PVT__GEN_166 = VL_RAND_RESET_I(1);
    __PVT__GEN_168 = VL_RAND_RESET_I(32);
    __PVT__GEN_169 = VL_RAND_RESET_I(32);
    __PVT__T_7399 = VL_RAND_RESET_I(3);
    __PVT__T_7402 = VL_RAND_RESET_I(1);
    __PVT__T_7405 = VL_RAND_RESET_I(1);
    __PVT__T_7408 = VL_RAND_RESET_I(1);
    __PVT__T_7410 = VL_RAND_RESET_I(32);
    __PVT__GEN_412 = VL_RAND_RESET_I(32);
    __PVT__T_7419 = VL_RAND_RESET_I(32);
    __PVT__T_7431 = VL_RAND_RESET_I(1);
    __PVT__T_7436 = VL_RAND_RESET_I(32);
    __PVT__T_7437 = VL_RAND_RESET_I(1);
    __PVT__T_7443 = VL_RAND_RESET_I(1);
    __PVT__T_7445 = VL_RAND_RESET_I(1);
    __PVT__T_7447 = VL_RAND_RESET_I(1);
    __PVT__T_7470 = VL_RAND_RESET_I(1);
    __PVT__T_7472 = VL_RAND_RESET_I(1);
    __PVT__T_7474 = VL_RAND_RESET_I(1);
    __PVT__data_hazard_mem = VL_RAND_RESET_I(1);
    __PVT__T_7493 = VL_RAND_RESET_I(1);
    __PVT__T_7495 = VL_RAND_RESET_I(1);
    __PVT__T_7497 = VL_RAND_RESET_I(1);
    __PVT__dcache_blocked = VL_RAND_RESET_I(1);
    __PVT__GEN_413 = VL_RAND_RESET_I(32);
    __PVT__T_7518 = VL_RAND_RESET_I(1);
    __PVT__rocc_blocked = VL_RAND_RESET_I(1);
    __PVT__GEN_414 = VL_RAND_RESET_I(32);
    __PVT__T_7526 = VL_RAND_RESET_I(1);
    __PVT__T_7528 = VL_RAND_RESET_I(1);
    __PVT__ctrl_stalld = VL_RAND_RESET_I(1);
    __PVT__T_7551 = VL_RAND_RESET_I(1);
    __PVT__T_7559 = VL_RAND_RESET_I(32);
    __PVT__T_7570 = VL_RAND_RESET_I(1);
    __PVT__T_7586 = VL_RAND_RESET_I(1);
    __PVT__T_7592 = VL_RAND_RESET_I(1);
    __PVT__T_7596 = VL_RAND_RESET_Q(33);
    __PVT__T_7615 = VL_RAND_RESET_I(1);
    __PVT__T_7618 = VL_RAND_RESET_I(1);
    __PVT__T_7634 = VL_RAND_RESET_I(1);
    __PVT__T_7679 = VL_RAND_RESET_I(32);
    __PVT__GEN_415 = VL_RAND_RESET_I(32);
    __PVT__T_7680 = VL_RAND_RESET_I(32);
    __PVT__GEN_416 = VL_RAND_RESET_I(32);
    __PVT__T_7682 = VL_RAND_RESET_I(32);
    __PVT__GEN_417 = VL_RAND_RESET_I(32);
    __PVT__T_7683 = VL_RAND_RESET_I(32);
    __PVT__GEN_418 = VL_RAND_RESET_I(32);
    __PVT__GEN_158 = VL_RAND_RESET_I(1);
    __PVT__GEN_419 = VL_RAND_RESET_I(32);
    __PVT__GEN_159 = VL_RAND_RESET_I(32);
    __PVT__GEN_420 = VL_RAND_RESET_I(32);
    __PVT__GEN_160 = VL_RAND_RESET_I(1);
    __PVT__GEN_421 = VL_RAND_RESET_I(32);
    __PVT__GEN_161 = VL_RAND_RESET_I(5);
    __PVT__GEN_422 = VL_RAND_RESET_I(32);
    __PVT__GEN_164 = VL_RAND_RESET_I(1);
    __PVT__GEN_423 = VL_RAND_RESET_I(32);
    __PVT__GEN_165 = VL_RAND_RESET_I(1);
    __PVT__GEN_424 = VL_RAND_RESET_I(32);
    __PVT__GEN_167 = VL_RAND_RESET_I(1);
    __PVT__GEN_425 = VL_RAND_RESET_I(32);
    __PVT__GEN_172 = VL_RAND_RESET_I(1);
    __PVT__GEN_426 = VL_RAND_RESET_I(32);
    __PVT__GEN_173 = VL_RAND_RESET_I(1);
    __PVT__GEN_427 = VL_RAND_RESET_I(32);
    __PVT__GEN_174 = VL_RAND_RESET_I(1);
    __PVT__GEN_428 = VL_RAND_RESET_I(32);
    __PVT__GEN_175 = VL_RAND_RESET_I(1);
    __PVT__GEN_429 = VL_RAND_RESET_I(32);
    __PVT__GEN_176 = VL_RAND_RESET_I(1);
    __PVT__GEN_430 = VL_RAND_RESET_I(32);
    __PVT__GEN_177 = VL_RAND_RESET_I(1);
    __PVT__GEN_431 = VL_RAND_RESET_I(32);
    __PVT__GEN_178 = VL_RAND_RESET_I(1);
    __PVT__GEN_432 = VL_RAND_RESET_I(32);
    __PVT__GEN_179 = VL_RAND_RESET_I(1);
    __PVT__GEN_433 = VL_RAND_RESET_I(32);
    __PVT__GEN_182 = VL_RAND_RESET_I(1);
    __PVT__GEN_434 = VL_RAND_RESET_I(32);
    __PVT__GEN_183 = VL_RAND_RESET_I(1);
    __PVT__GEN_435 = VL_RAND_RESET_I(32);
    __PVT__GEN_184 = VL_RAND_RESET_I(1);
    __PVT__GEN_436 = VL_RAND_RESET_I(32);
    __PVT__GEN_185 = VL_RAND_RESET_I(1);
    __PVT__GEN_437 = VL_RAND_RESET_I(32);
    __PVT__GEN_186 = VL_RAND_RESET_I(1);
    __PVT__GEN_438 = VL_RAND_RESET_I(32);
    __PVT__GEN_187 = VL_RAND_RESET_I(3);
    __PVT__GEN_439 = VL_RAND_RESET_I(32);
    __PVT__GEN_188 = VL_RAND_RESET_I(2);
    __PVT__GEN_440 = VL_RAND_RESET_I(32);
    __PVT__GEN_189 = VL_RAND_RESET_Q(33);
    __PVT__GEN_441 = VL_RAND_RESET_Q(64);
    __PVT__GEN_190 = VL_RAND_RESET_Q(33);
    __PVT__GEN_442 = VL_RAND_RESET_Q(64);
    __PVT__GEN_191 = VL_RAND_RESET_Q(33);
    __PVT__GEN_443 = VL_RAND_RESET_Q(64);
    __PVT__GEN_192 = VL_RAND_RESET_I(1);
    __PVT__GEN_444 = VL_RAND_RESET_I(32);
    __PVT__GEN_193 = VL_RAND_RESET_I(1);
    __PVT__GEN_445 = VL_RAND_RESET_I(32);
    __PVT__GEN_194 = VL_RAND_RESET_I(1);
    __PVT__GEN_446 = VL_RAND_RESET_I(32);
    __PVT__GEN_195 = VL_RAND_RESET_I(1);
    __PVT__GEN_447 = VL_RAND_RESET_I(32);
    __PVT__GEN_196 = VL_RAND_RESET_I(1);
    __PVT__GEN_448 = VL_RAND_RESET_I(32);
    __PVT__GEN_197 = VL_RAND_RESET_I(32);
    __PVT__GEN_449 = VL_RAND_RESET_I(32);
    __PVT__GEN_198 = VL_RAND_RESET_I(7);
    __PVT__GEN_450 = VL_RAND_RESET_I(32);
    __PVT__GEN_199 = VL_RAND_RESET_I(5);
    __PVT__GEN_451 = VL_RAND_RESET_I(32);
    __PVT__GEN_200 = VL_RAND_RESET_I(3);
    __PVT__GEN_452 = VL_RAND_RESET_I(32);
    __PVT__GEN_201 = VL_RAND_RESET_I(32);
    __PVT__GEN_453 = VL_RAND_RESET_I(32);
    __PVT__GEN_202 = VL_RAND_RESET_I(1);
    __PVT__GEN_454 = VL_RAND_RESET_I(32);
    __PVT__GEN_203 = VL_RAND_RESET_I(1);
    __PVT__GEN_455 = VL_RAND_RESET_I(32);
    __PVT__GEN_204 = VL_RAND_RESET_I(32);
    __PVT__GEN_456 = VL_RAND_RESET_I(32);
    __PVT__GEN_205 = VL_RAND_RESET_I(32);
    __PVT__GEN_457 = VL_RAND_RESET_I(32);
    __PVT__GEN_206 = VL_RAND_RESET_I(1);
    __PVT__GEN_458 = VL_RAND_RESET_I(32);
    __PVT__GEN_207 = VL_RAND_RESET_I(1);
    __PVT__GEN_459 = VL_RAND_RESET_I(32);
    __PVT__GEN_208 = VL_RAND_RESET_I(1);
    __PVT__GEN_460 = VL_RAND_RESET_I(32);
    __PVT__GEN_209 = VL_RAND_RESET_I(1);
    __PVT__GEN_461 = VL_RAND_RESET_I(32);
    __PVT__GEN_210 = VL_RAND_RESET_I(1);
    __PVT__GEN_462 = VL_RAND_RESET_I(32);
    __PVT__GEN_211 = VL_RAND_RESET_I(1);
    __PVT__GEN_463 = VL_RAND_RESET_I(32);
    __PVT__GEN_212 = VL_RAND_RESET_I(1);
    __PVT__GEN_464 = VL_RAND_RESET_I(32);
    __PVT__GEN_213 = VL_RAND_RESET_I(1);
    __PVT__GEN_465 = VL_RAND_RESET_I(32);
    __PVT__GEN_214 = VL_RAND_RESET_I(4);
    __PVT__GEN_466 = VL_RAND_RESET_I(32);
    __PVT__GEN_215 = VL_RAND_RESET_I(1);
    __PVT__GEN_467 = VL_RAND_RESET_I(32);
    __PVT__GEN_216 = VL_RAND_RESET_I(2);
    __PVT__GEN_468 = VL_RAND_RESET_I(32);
    __PVT__GEN_217 = VL_RAND_RESET_I(1);
    __PVT__GEN_469 = VL_RAND_RESET_I(32);
    __PVT__GEN_218 = VL_RAND_RESET_I(4);
    __PVT__GEN_470 = VL_RAND_RESET_I(32);
    __PVT__GEN_219 = VL_RAND_RESET_I(32);
    __PVT__GEN_471 = VL_RAND_RESET_I(32);
    __PVT__GEN_220 = VL_RAND_RESET_I(1);
    __PVT__GEN_472 = VL_RAND_RESET_I(32);
    __PVT__GEN_221 = VL_RAND_RESET_I(1);
    __PVT__GEN_473 = VL_RAND_RESET_I(32);
    __PVT__GEN_222 = VL_RAND_RESET_Q(33);
    __PVT__GEN_474 = VL_RAND_RESET_Q(64);
    __PVT__GEN_223 = VL_RAND_RESET_I(5);
    __PVT__GEN_475 = VL_RAND_RESET_I(32);
    __PVT__GEN_224 = VL_RAND_RESET_I(1);
    __PVT__GEN_476 = VL_RAND_RESET_I(32);
    __PVT__GEN_225 = VL_RAND_RESET_I(1);
    __PVT__GEN_477 = VL_RAND_RESET_I(32);
    __PVT__GEN_226 = VL_RAND_RESET_I(5);
    __PVT__GEN_478 = VL_RAND_RESET_I(32);
    __PVT__GEN_227 = VL_RAND_RESET_I(32);
    __PVT__GEN_479 = VL_RAND_RESET_I(32);
    __PVT__GEN_228 = VL_RAND_RESET_I(1);
    __PVT__GEN_480 = VL_RAND_RESET_I(32);
    __PVT__GEN_229 = VL_RAND_RESET_I(32);
    __PVT__GEN_481 = VL_RAND_RESET_I(32);
    __PVT__GEN_230 = VL_RAND_RESET_I(7);
    __PVT__GEN_482 = VL_RAND_RESET_I(32);
    __PVT__GEN_231 = VL_RAND_RESET_I(5);
    __PVT__GEN_483 = VL_RAND_RESET_I(32);
    __PVT__GEN_232 = VL_RAND_RESET_I(3);
    __PVT__GEN_484 = VL_RAND_RESET_I(32);
    __PVT__GEN_233 = VL_RAND_RESET_I(1);
    __PVT__GEN_485 = VL_RAND_RESET_I(32);
    __PVT__GEN_234 = VL_RAND_RESET_I(32);
    __PVT__GEN_486 = VL_RAND_RESET_I(32);
    __PVT__GEN_235 = VL_RAND_RESET_I(1);
    __PVT__GEN_487 = VL_RAND_RESET_I(32);
    __PVT__GEN_236 = VL_RAND_RESET_I(32);
    __PVT__GEN_488 = VL_RAND_RESET_I(32);
    __PVT__GEN_237 = VL_RAND_RESET_I(1);
    __PVT__GEN_489 = VL_RAND_RESET_I(32);
    __PVT__GEN_238 = VL_RAND_RESET_I(1);
    __PVT__GEN_490 = VL_RAND_RESET_I(32);
    __PVT__GEN_239 = VL_RAND_RESET_I(1);
    __PVT__GEN_491 = VL_RAND_RESET_I(32);
    __PVT__GEN_240 = VL_RAND_RESET_I(26);
    __PVT__GEN_492 = VL_RAND_RESET_I(32);
    __PVT__GEN_241 = VL_RAND_RESET_I(1);
    __PVT__GEN_493 = VL_RAND_RESET_I(32);
    __PVT__GEN_242 = VL_RAND_RESET_I(4);
    __PVT__GEN_494 = VL_RAND_RESET_I(32);
    __PVT__GEN_243 = VL_RAND_RESET_I(1);
    __PVT__GEN_495 = VL_RAND_RESET_I(32);
    __PVT__GEN_244 = VL_RAND_RESET_I(3);
    __PVT__GEN_496 = VL_RAND_RESET_I(32);
    __PVT__GEN_245 = VL_RAND_RESET_I(10);
    __PVT__GEN_497 = VL_RAND_RESET_I(32);
    __PVT__GEN_246 = VL_RAND_RESET_I(32);
    __PVT__GEN_498 = VL_RAND_RESET_I(32);
    __PVT__GEN_247 = VL_RAND_RESET_I(1);
    __PVT__GEN_499 = VL_RAND_RESET_I(32);
    __PVT__GEN_248 = VL_RAND_RESET_I(1);
    __PVT__GEN_500 = VL_RAND_RESET_I(32);
    __PVT__GEN_249 = VL_RAND_RESET_I(5);
    __PVT__GEN_501 = VL_RAND_RESET_I(32);
    __PVT__GEN_250 = VL_RAND_RESET_I(1);
    __PVT__GEN_502 = VL_RAND_RESET_I(32);
    __PVT__GEN_251 = VL_RAND_RESET_I(1);
    __PVT__GEN_503 = VL_RAND_RESET_I(32);
    __PVT__GEN_252 = VL_RAND_RESET_I(1);
    __PVT__GEN_504 = VL_RAND_RESET_I(32);
    __PVT__GEN_253 = VL_RAND_RESET_I(1);
    __PVT__GEN_505 = VL_RAND_RESET_I(32);
    __PVT__GEN_254 = VL_RAND_RESET_I(1);
    __PVT__GEN_506 = VL_RAND_RESET_I(32);
    __PVT__GEN_255 = VL_RAND_RESET_I(1);
    __PVT__GEN_507 = VL_RAND_RESET_I(32);
    __PVT__GEN_256 = VL_RAND_RESET_I(1);
    __PVT__GEN_508 = VL_RAND_RESET_I(32);
    __PVT__GEN_257 = VL_RAND_RESET_I(1);
    __PVT__GEN_509 = VL_RAND_RESET_I(32);
    __PVT__GEN_258 = VL_RAND_RESET_I(1);
    __PVT__GEN_510 = VL_RAND_RESET_I(32);
    __PVT__GEN_259 = VL_RAND_RESET_I(1);
    __PVT__GEN_511 = VL_RAND_RESET_I(32);
    __PVT__GEN_260 = VL_RAND_RESET_I(1);
    __PVT__GEN_512 = VL_RAND_RESET_I(32);
    __PVT__GEN_261 = VL_RAND_RESET_I(1);
    __PVT__GEN_513 = VL_RAND_RESET_I(32);
    __PVT__GEN_262 = VL_RAND_RESET_I(1);
    __PVT__GEN_514 = VL_RAND_RESET_I(32);
    __PVT__GEN_263 = VL_RAND_RESET_I(1);
    __PVT__GEN_515 = VL_RAND_RESET_I(32);
    __PVT__GEN_264 = VL_RAND_RESET_I(1);
    __PVT__GEN_516 = VL_RAND_RESET_I(32);
    __PVT__GEN_265 = VL_RAND_RESET_I(1);
    __PVT__GEN_517 = VL_RAND_RESET_I(32);
    __PVT__GEN_266 = VL_RAND_RESET_I(3);
    __PVT__GEN_518 = VL_RAND_RESET_I(32);
    __PVT__GEN_267 = VL_RAND_RESET_I(2);
    __PVT__GEN_519 = VL_RAND_RESET_I(32);
    __PVT__GEN_268 = VL_RAND_RESET_Q(33);
    __PVT__GEN_520 = VL_RAND_RESET_Q(64);
    __PVT__GEN_269 = VL_RAND_RESET_Q(33);
    __PVT__GEN_521 = VL_RAND_RESET_Q(64);
    __PVT__GEN_270 = VL_RAND_RESET_Q(33);
    __PVT__GEN_522 = VL_RAND_RESET_Q(64);
    __PVT__GEN_271 = VL_RAND_RESET_I(1);
    __PVT__GEN_523 = VL_RAND_RESET_I(32);
    __PVT__error = VL_RAND_RESET_I(1);
    __Vlvbound1 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mstatus_debug = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_208 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mstatus_isa = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_210 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mstatus_prv = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_212 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mstatus_sd = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_214 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mstatus_zero3 = VL_RAND_RESET_I(31);
    __PVT__csr__DOT__GEN_215 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mstatus_sd_rv32 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_216 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_218 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mstatus_vm = VL_RAND_RESET_I(5);
    __PVT__csr__DOT__GEN_219 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mstatus_zero1 = VL_RAND_RESET_I(4);
    __PVT__csr__DOT__GEN_220 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_221 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_222 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mstatus_mprv = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_224 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_225 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mstatus_fs = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_226 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mstatus_mpp = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_227 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_228 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mstatus_spp = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_230 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mstatus_mpie = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_232 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_233 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_234 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_235 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mstatus_mie = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_236 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_238 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_240 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_242 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_dcsr_xdebugver = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_244 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_dcsr_ndreset = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_246 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_dcsr_fullreset = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_270 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_dcsr_zero3 = VL_RAND_RESET_I(12);
    __PVT__csr__DOT__GEN_271 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_dcsr_ebreakm = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_272 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_dcsr_ebreakh = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_274 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_275 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_dcsr_ebreaku = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_276 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_dcsr_zero2 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_277 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_dcsr_stopcycle = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_278 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_dcsr_stoptime = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_280 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_dcsr_cause = VL_RAND_RESET_I(3);
    __PVT__csr__DOT__GEN_281 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_dcsr_debugint = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_282 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_dcsr_zero1 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_283 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_dcsr_halt = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_284 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_dcsr_step = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_286 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_dcsr_prv = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_288 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_debug = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_289 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_dpc = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_290 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_dscratch = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_291 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_singleStepped = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_292 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__T_4601 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_294 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_0_control_ttype = VL_RAND_RESET_I(4);
    __PVT__csr__DOT__GEN_296 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_0_control_dmode = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_298 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_0_control_maskmax = VL_RAND_RESET_I(6);
    __PVT__csr__DOT__GEN_300 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_0_control_reserved = VL_RAND_RESET_I(8);
    __PVT__csr__DOT__GEN_302 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_0_control_action = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_308 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_0_control_chain = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_309 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_0_control_zero = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_310 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_0_control_tmatch = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_311 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_0_control_m = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_312 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_328 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_330 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_0_control_u = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_331 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_0_control_x = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_332 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_0_control_w = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_333 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_0_control_r = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_334 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_0_address = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_335 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_1_control_ttype = VL_RAND_RESET_I(4);
    __PVT__csr__DOT__GEN_336 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_1_control_dmode = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_337 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_1_control_maskmax = VL_RAND_RESET_I(6);
    __PVT__csr__DOT__GEN_338 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_1_control_reserved = VL_RAND_RESET_I(8);
    __PVT__csr__DOT__GEN_339 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_1_control_action = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_340 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_1_control_chain = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_341 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_1_control_zero = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_342 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_1_control_tmatch = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_343 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_1_control_m = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_344 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_1_control_h = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_345 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_1_control_s = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_346 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_1_control_u = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_347 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_1_control_x = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_348 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_1_control_w = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_349 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_1_control_r = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_350 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_bp_1_address = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_351 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mie = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_352 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_353 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_medeleg = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_354 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mip_rocc = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_355 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mip_meip = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_356 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mip_heip = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_357 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mip_seip = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_358 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mip_ueip = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_359 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mip_mtip = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_360 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mip_htip = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_361 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mip_stip = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_362 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mip_utip = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_363 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mip_msip = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_364 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mip_hsip = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_365 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mip_ssip = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_366 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mip_usip = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_367 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mepc = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_368 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mcause = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_369 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mbadaddr = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_370 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mscratch = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_371 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mtvec = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_372 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mucounteren = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_373 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_mscounteren = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_374 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_sepc = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_375 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_scause = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_376 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_sbadaddr = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_377 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_sscratch = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_378 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_stvec = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_379 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_sptbr_asid = VL_RAND_RESET_I(7);
    __PVT__csr__DOT__GEN_380 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_sptbr_ppn = VL_RAND_RESET_I(22);
    __PVT__csr__DOT__GEN_381 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_wfi = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_382 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_fflags = VL_RAND_RESET_I(5);
    __PVT__csr__DOT__GEN_383 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__reg_frm = VL_RAND_RESET_I(3);
    __PVT__csr__DOT__GEN_384 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__T_4797 = VL_RAND_RESET_I(6);
    __PVT__csr__DOT__GEN_385 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__T_4798 = VL_RAND_RESET_I(7);
    __PVT__csr__DOT__T_4800 = VL_RAND_RESET_Q(58);
    __PVT__csr__DOT__GEN_386 = VL_RAND_RESET_Q(64);
    __PVT__csr__DOT__GEN_37 = VL_RAND_RESET_Q(59);
    __PVT__csr__DOT__T_4804 = VL_RAND_RESET_Q(64);
    __PVT__csr__DOT__T_4807 = VL_RAND_RESET_I(6);
    __PVT__csr__DOT__GEN_387 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__T_4810 = VL_RAND_RESET_Q(58);
    __PVT__csr__DOT__GEN_388 = VL_RAND_RESET_Q(64);
    __PVT__csr__DOT__GEN_38 = VL_RAND_RESET_Q(59);
    __PVT__csr__DOT__T_4814 = VL_RAND_RESET_Q(64);
    __PVT__csr__DOT__T_4839 = VL_RAND_RESET_I(13);
    __PVT__csr__DOT__pending_interrupts = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__all_interrupts = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__T_4944 = VL_RAND_RESET_I(5);
    __PVT__csr__DOT__T_4970 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_39 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__cpu_ren = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__cpu_wen = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__reg_misa = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_389 = VL_RAND_RESET_I(32);
    VL_RAND_RESET_W(99, __PVT__csr__DOT__T_5004);
    __PVT__csr__DOT__GEN_42 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__T_5326 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__T_5341 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__T_5356 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__T_5371 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__T_5386 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__T_5401 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__T_5416 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__priv_sufficient = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__wen = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__wdata = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__do_system_insn = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__insn_call = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__insn_break = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__insn_ret = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__insn_sfence_vm = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__insn_wfi = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__T_5492 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__T_5508 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__T_5521 = VL_RAND_RESET_I(4);
    __PVT__csr__DOT__cause = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__causeIsDebugInt = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__causeIsDebugTrigger = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__T_5543 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__T_5566 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__T_5573 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__T_5578 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__T_5599 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__T_5606 = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__T_5622 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_79 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_80 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_82 = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_87 = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_89 = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_90 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_91 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_92 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_93 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_94 = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_95 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_115 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_116 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_117 = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__T_5920 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__T_5932 = VL_RAND_RESET_Q(64);
    __PVT__csr__DOT__T_5939 = VL_RAND_RESET_Q(64);
    __PVT__csr__DOT__T_6034 = VL_RAND_RESET_Q(64);
    __PVT__csr__DOT__T_6036 = VL_RAND_RESET_I(5);
    __PVT__csr__DOT__T_6158 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__T_6221 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__T_6229 = VL_RAND_RESET_Q(64);
    __PVT__csr__DOT__T_6232 = VL_RAND_RESET_Q(64);
    __PVT__csr__DOT__T_6235 = VL_RAND_RESET_Q(64);
    __PVT__csr__DOT__T_6238 = VL_RAND_RESET_Q(64);
    __PVT__csr__DOT__T_6341 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__T_6405 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__T_6406 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_258 = VL_RAND_RESET_Q(64);
    __PVT__csr__DOT__GEN_5 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_390 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_63 = VL_RAND_RESET_I(7);
    __PVT__csr__DOT__GEN_391 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_64 = VL_RAND_RESET_I(5);
    __PVT__csr__DOT__GEN_392 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_65 = VL_RAND_RESET_I(5);
    __PVT__csr__DOT__GEN_393 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_66 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_394 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_67 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_395 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_69 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_396 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_70 = VL_RAND_RESET_I(5);
    __PVT__csr__DOT__GEN_397 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_83 = VL_RAND_RESET_I(7);
    __PVT__csr__DOT__GEN_398 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_84 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_399 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_85 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_400 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_86 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_401 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_88 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_402 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_96 = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_403 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_97 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_404 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_98 = VL_RAND_RESET_I(31);
    __PVT__csr__DOT__GEN_405 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_99 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_406 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_100 = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_407 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_104 = VL_RAND_RESET_I(5);
    __PVT__csr__DOT__GEN_408 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_106 = VL_RAND_RESET_I(4);
    __PVT__csr__DOT__GEN_409 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_110 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_410 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_111 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_411 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_112 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_412 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_146 = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_413 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_147 = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_414 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_148 = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_415 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_150 = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_416 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_151 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_417 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_152 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_418 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_153 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_419 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_154 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_420 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_156 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_421 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_157 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_422 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_158 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_423 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_159 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_424 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_160 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_425 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_162 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_426 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_164 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_427 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_165 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_428 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_166 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_429 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_167 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_430 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_168 = VL_RAND_RESET_I(7);
    __PVT__csr__DOT__GEN_431 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_170 = VL_RAND_RESET_I(5);
    __PVT__csr__DOT__GEN_432 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_172 = VL_RAND_RESET_I(3);
    __PVT__csr__DOT__GEN_433 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_174 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_434 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_176 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_435 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_178 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_436 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_180 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_437 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_181 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_438 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_182 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_439 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_184 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_440 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_185 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_441 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_186 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_442 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_187 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_443 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_188 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_444 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_190 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_445 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_191 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_446 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_192 = VL_RAND_RESET_I(4);
    __PVT__csr__DOT__GEN_447 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_193 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_448 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_194 = VL_RAND_RESET_I(2);
    __PVT__csr__DOT__GEN_449 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_196 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_450 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_198 = VL_RAND_RESET_I(4);
    __PVT__csr__DOT__GEN_451 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_199 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_452 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_200 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_453 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_201 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_454 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_202 = VL_RAND_RESET_Q(33);
    __PVT__csr__DOT__GEN_455 = VL_RAND_RESET_Q(64);
    __PVT__csr__DOT__GEN_204 = VL_RAND_RESET_I(5);
    __PVT__csr__DOT__GEN_456 = VL_RAND_RESET_I(32);
    __PVT__csr__DOT__GEN_206 = VL_RAND_RESET_I(1);
    __PVT__csr__DOT__GEN_457 = VL_RAND_RESET_I(32);
    __PVT__bpu__DOT__T_176 = VL_RAND_RESET_I(1);
    __PVT__bpu__DOT__T_186 = VL_RAND_RESET_I(1);
    __PVT__bpu__DOT__T_188 = VL_RAND_RESET_I(1);
    __PVT__bpu__DOT__T_193 = VL_RAND_RESET_I(4);
    __PVT__bpu__DOT__T_206 = VL_RAND_RESET_I(32);
    __PVT__bpu__DOT__T_208 = VL_RAND_RESET_I(1);
    __PVT__bpu__DOT__T_278 = VL_RAND_RESET_I(1);
    __PVT__bpu__DOT__T_281 = VL_RAND_RESET_I(1);
    __PVT__bpu__DOT__T_284 = VL_RAND_RESET_I(1);
    __PVT__bpu__DOT__GEN_4 = VL_RAND_RESET_I(1);
    __PVT__bpu__DOT__GEN_5 = VL_RAND_RESET_I(1);
    __PVT__alu__DOT__in2_inv = VL_RAND_RESET_I(32);
    __PVT__alu__DOT__in1_xor_in2 = VL_RAND_RESET_I(32);
    __PVT__alu__DOT__T_20 = VL_RAND_RESET_Q(33);
    __PVT__alu__DOT__T_41 = VL_RAND_RESET_I(1);
    __PVT__alu__DOT__T_52 = VL_RAND_RESET_I(32);
    __PVT__alu__DOT__T_62 = VL_RAND_RESET_I(32);
    __PVT__alu__DOT__T_72 = VL_RAND_RESET_I(32);
    __PVT__alu__DOT__T_82 = VL_RAND_RESET_I(32);
    __PVT__alu__DOT__shin = VL_RAND_RESET_I(32);
    __PVT__alu__DOT__T_98 = VL_RAND_RESET_Q(33);
    __PVT__alu__DOT__T_109 = VL_RAND_RESET_I(32);
    __PVT__alu__DOT__T_119 = VL_RAND_RESET_I(32);
    __PVT__alu__DOT__T_129 = VL_RAND_RESET_I(32);
    __PVT__alu__DOT__T_139 = VL_RAND_RESET_I(32);
    __PVT__alu__DOT__shift_logic = VL_RAND_RESET_I(32);
    __PVT__div__DOT__state = VL_RAND_RESET_I(3);
    __PVT__div__DOT__GEN_14 = VL_RAND_RESET_I(32);
    __PVT__div__DOT__req_fn = VL_RAND_RESET_I(4);
    __PVT__div__DOT__GEN_15 = VL_RAND_RESET_I(32);
    __PVT__div__DOT__req_dw = VL_RAND_RESET_I(1);
    __PVT__div__DOT__GEN_36 = VL_RAND_RESET_I(32);
    __PVT__div__DOT__req_in1 = VL_RAND_RESET_I(32);
    __PVT__div__DOT__GEN_37 = VL_RAND_RESET_I(32);
    __PVT__div__DOT__req_in2 = VL_RAND_RESET_I(32);
    __PVT__div__DOT__GEN_38 = VL_RAND_RESET_I(32);
    __PVT__div__DOT__req_tag = VL_RAND_RESET_I(5);
    __PVT__div__DOT__GEN_39 = VL_RAND_RESET_I(32);
    __PVT__div__DOT__count = VL_RAND_RESET_I(6);
    __PVT__div__DOT__GEN_40 = VL_RAND_RESET_I(32);
    __PVT__div__DOT__neg_out = VL_RAND_RESET_I(1);
    __PVT__div__DOT__GEN_41 = VL_RAND_RESET_I(32);
    __PVT__div__DOT__isMul = VL_RAND_RESET_I(1);
    __PVT__div__DOT__GEN_42 = VL_RAND_RESET_I(32);
    __PVT__div__DOT__isHi = VL_RAND_RESET_I(1);
    __PVT__div__DOT__GEN_43 = VL_RAND_RESET_I(32);
    __PVT__div__DOT__divisor = VL_RAND_RESET_Q(33);
    __PVT__div__DOT__GEN_44 = VL_RAND_RESET_Q(64);
    VL_RAND_RESET_W(66, __PVT__div__DOT__remainder);
    VL_RAND_RESET_W(96, __PVT__div__DOT__GEN_45);
    __PVT__div__DOT__T_80 = VL_RAND_RESET_I(1);
    __PVT__div__DOT__T_92 = VL_RAND_RESET_I(1);
    __PVT__div__DOT__T_103 = VL_RAND_RESET_I(1);
    __PVT__div__DOT__lhs_sign = VL_RAND_RESET_I(1);
    __PVT__div__DOT__rhs_sign = VL_RAND_RESET_I(1);
    __PVT__div__DOT__T_136 = VL_RAND_RESET_Q(34);
    __PVT__div__DOT__negated_remainder = VL_RAND_RESET_I(32);
    __PVT__div__DOT__T_140 = VL_RAND_RESET_I(1);
    __PVT__div__DOT__T_142 = VL_RAND_RESET_I(1);
    __PVT__div__DOT__T_144 = VL_RAND_RESET_I(1);
    __PVT__div__DOT__T_145 = VL_RAND_RESET_I(1);
    __PVT__div__DOT__T_146 = VL_RAND_RESET_I(1);
    __PVT__div__DOT__T_147 = VL_RAND_RESET_I(32);
    __PVT__div__DOT__GEN_8 = VL_RAND_RESET_I(3);
    __PVT__div__DOT__T_150 = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(65, __PVT__div__DOT__T_153);
    VL_RAND_RESET_W(65, __PVT__div__DOT__T_165);
    VL_RAND_RESET_W(66, __PVT__div__DOT__T_202);
    __PVT__div__DOT__T_205 = VL_RAND_RESET_I(6);
    __PVT__div__DOT__GEN_12 = VL_RAND_RESET_I(3);
    __PVT__div__DOT__T_213 = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(65, __PVT__div__DOT__T_228);
    __PVT__div__DOT__T_470 = VL_RAND_RESET_I(1);
    __PVT__div__DOT__T_473 = VL_RAND_RESET_I(1);
    __PVT__div__DOT__T_474 = VL_RAND_RESET_I(1);
    __PVT__div__DOT__T_478 = VL_RAND_RESET_I(1);
    __PVT__div__DOT__T_485 = VL_RAND_RESET_I(1);
    __PVT__div__DOT__T_486 = VL_RAND_RESET_Q(33);
}
