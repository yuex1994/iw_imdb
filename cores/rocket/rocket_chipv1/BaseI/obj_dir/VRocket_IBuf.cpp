// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VRocket.h for the primary calling header

#include "VRocket_IBuf.h"
#include "VRocket__Syms.h"

#include "verilated_dpi.h"

//==========

VL_CTOR_IMP(VRocket_IBuf) {
    VL_CELL(RVCExpander_1, VRocket_RVCExpander);
    // Reset internal values
    // Reset structure values
    _ctor_var_reset();
}

void VRocket_IBuf::__Vconfigure(VRocket__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

VRocket_IBuf::~VRocket_IBuf() {
}

void VRocket_IBuf::_settle__TOP__Rocket__ibuf__1(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+        VRocket_IBuf::_settle__TOP__Rocket__ibuf__1\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    WData/*127:0*/ __Vtemp2[4];
    WData/*191:0*/ __Vtemp3[6];
    WData/*191:0*/ __Vtemp4[6];
    // Body
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_373 = (7U & 
                                               ((((IData)(vlTOPp->io_imem_resp_bits_btb_valid) 
                                                  & (IData)(vlTOPp->io_imem_resp_bits_btb_bits_taken))
                                                  ? 
                                                 (3U 
                                                  & ((IData)(1U) 
                                                     + (IData)(vlTOPp->io_imem_resp_bits_btb_bits_bridx)))
                                                  : 2U) 
                                                - (1U 
                                                   & (vlTOPp->io_imem_resp_bits_pc 
                                                      >> 1U))));
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 = (((QData)((IData)(vlTOPp->io_imem_resp_bits_data)) 
                                                << 0x20U) 
                                               | (QData)((IData)(
                                                                 ((0xffff0000U 
                                                                   & (vlTOPp->io_imem_resp_bits_data 
                                                                      << 0x10U)) 
                                                                  | (0xffffU 
                                                                     & vlTOPp->io_imem_resp_bits_data)))));
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_471 = (3U & 
                                               (((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBHit)
                                                  ? 
                                                 ((IData)(1U) 
                                                  << (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBResp_bridx))
                                                  : 0U) 
                                                & (((IData)(1U) 
                                                    << (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)) 
                                                   - (IData)(1U))));
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_488 = ((IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)
                                                ? vlSymsp->TOP__Rocket__ibuf.__PVT__buf_pc
                                                : vlTOPp->io_imem_resp_bits_pc);
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_377 = (7U & 
                                               (((IData)(vlTOPp->io_imem_resp_valid)
                                                  ? 
                                                 (3U 
                                                  & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_373))
                                                  : 0U) 
                                                + (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)));
    __Vtemp2[0U] = (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_427);
    __Vtemp2[1U] = (IData)((vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 
                            >> 0x20U));
    __Vtemp2[2U] = (IData)((((QData)((IData)((0xffffU 
                                              & (IData)(
                                                        (vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 
                                                         >> 0x30U))))) 
                             << 0x30U) | (((QData)((IData)(
                                                           (0xffffU 
                                                            & (IData)(
                                                                      (vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 
                                                                       >> 0x30U))))) 
                                           << 0x20U) 
                                          | (((QData)((IData)(
                                                              (0xffffU 
                                                               & (IData)(
                                                                         (vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 
                                                                          >> 0x30U))))) 
                                              << 0x10U) 
                                             | (QData)((IData)(
                                                               (0xffffU 
                                                                & (IData)(
                                                                          (vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 
                                                                           >> 0x30U)))))))));
    __Vtemp2[3U] = (IData)(((((QData)((IData)((0xffffU 
                                               & (IData)(
                                                         (vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 
                                                          >> 0x30U))))) 
                              << 0x30U) | (((QData)((IData)(
                                                            (0xffffU 
                                                             & (IData)(
                                                                       (vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 
                                                                        >> 0x30U))))) 
                                            << 0x20U) 
                                           | (((QData)((IData)(
                                                               (0xffffU 
                                                                & (IData)(
                                                                          (vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 
                                                                           >> 0x30U))))) 
                                               << 0x10U) 
                                              | (QData)((IData)(
                                                                (0xffffU 
                                                                 & (IData)(
                                                                           (vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 
                                                                            >> 0x30U)))))))) 
                            >> 0x20U));
    VL_EXTEND_WW(191,128, __Vtemp3, __Vtemp2);
    VL_SHIFTL_WWI(191,191,6, __Vtemp4, __Vtemp3, (0x30U 
                                                  & ((((IData)(2U) 
                                                       + (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)) 
                                                      - 
                                                      (1U 
                                                       & (vlTOPp->io_imem_resp_bits_pc 
                                                          >> 1U))) 
                                                     << 4U)));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
        = ((__Vtemp4[2U] & (IData)((VL_ULL(0x7fffffffffffffff) 
                                    & (VL_ULL(0xffffffff) 
                                       << (0x1fU & 
                                           ((IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid) 
                                            << 4U)))))) 
           | (vlSymsp->TOP__Rocket__ibuf.__PVT__buf_data 
              & (~ (IData)((VL_ULL(0x7fffffffffffffff) 
                            & (VL_ULL(0xffffffff) << 
                               (0x1fU & ((IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid) 
                                         << 4U))))))));
    vlSymsp->TOP__Rocket__ibuf.__PVT__btbHitMask = 
        ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_471) 
         | (3U & (((IData)(vlTOPp->io_imem_resp_bits_btb_valid)
                    ? ((IData)(1U) << (3U & (((IData)(vlTOPp->io_imem_resp_bits_btb_bits_bridx) 
                                              + (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)) 
                                             - (1U 
                                                & (vlTOPp->io_imem_resp_bits_pc 
                                                   >> 1U)))))
                    : 0U) & (~ (((IData)(1U) << (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)) 
                                - (IData)(1U))))));
    vlSymsp->TOP__Rocket__ibuf.__PVT__xcpt_if = (3U 
                                                 & (((0xfU 
                                                      & ((IData)(1U) 
                                                         << 
                                                         (3U 
                                                          & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_377)))) 
                                                     - (IData)(1U)) 
                                                    & (((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__buf_xcpt_if)
                                                         ? 
                                                        (((IData)(1U) 
                                                          << (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)) 
                                                         - (IData)(1U))
                                                         : 0U) 
                                                       | ((IData)(vlSymsp->TOP__Rocket.ibuf_io_imem_bits_xcpt_if)
                                                           ? 
                                                          (~ 
                                                           (((IData)(1U) 
                                                             << (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)) 
                                                            - (IData)(1U)))
                                                           : 0U))));
    vlSymsp->TOP__Rocket__ibuf.__PVT__ic_replay = (3U 
                                                   & (((0xfU 
                                                        & ((IData)(1U) 
                                                           << 
                                                           (3U 
                                                            & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_377)))) 
                                                       - (IData)(1U)) 
                                                      & (((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__buf_replay)
                                                           ? 
                                                          (((IData)(1U) 
                                                            << (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)) 
                                                           - (IData)(1U))
                                                           : 0U) 
                                                         | ((IData)(vlTOPp->io_imem_resp_bits_replay)
                                                             ? 
                                                            (~ 
                                                             (((IData)(1U) 
                                                               << (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)) 
                                                              - (IData)(1U)))
                                                             : 0U))));
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_540 = (1U & 
                                               ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__btbHitMask) 
                                                | (0xfU 
                                                   & ((3U 
                                                       == 
                                                       (3U 
                                                        & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)) 
                                                      & ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__btbHitMask) 
                                                         >> 1U)))));
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_529 = (3U & 
                                               ((3U 
                                                 == 
                                                 (3U 
                                                  & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)) 
                                                & ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__xcpt_if) 
                                                   >> 1U)));
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_503 = (1U & 
                                               ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__ic_replay) 
                                                | ((3U 
                                                    == 
                                                    (3U 
                                                     & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)) 
                                                   & ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__btbHitMask) 
                                                      | (3U 
                                                         & ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__ic_replay) 
                                                            >> 1U))))));
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_519 = (1U & 
                                               (((0xfU 
                                                  & ((IData)(1U) 
                                                     << 
                                                     (3U 
                                                      & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_377)))) 
                                                 - (IData)(1U)) 
                                                & ((((3U 
                                                      != 
                                                      (3U 
                                                       & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)) 
                                                     | (1U 
                                                        & (((0xfU 
                                                             & ((IData)(1U) 
                                                                << 
                                                                (3U 
                                                                 & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_377)))) 
                                                            - (IData)(1U)) 
                                                           >> 1U))) 
                                                    | (3U 
                                                       & ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__xcpt_if) 
                                                          >> 1U))) 
                                                   | (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_503))));
}

VL_INLINE_OPT void VRocket_IBuf::_settle__TOP__Rocket__ibuf__2(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+        VRocket_IBuf::_settle__TOP__Rocket__ibuf__2\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__Rocket__ibuf.__PVT__GEN_30 = ((((~ (IData)(vlSymsp->TOP__Rocket.__PVT__ctrl_stalld)) 
                                                  | (IData)(vlSymsp->TOP__Rocket.__PVT__csr__DOT__GEN_39)) 
                                                 & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_519))
                                                 ? 
                                                ((3U 
                                                  != 
                                                  (3U 
                                                   & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in))
                                                  ? 1U
                                                  : 2U)
                                                 : 0U);
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_378 = ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__GEN_30) 
                                               >= (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid));
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_374 = (7U & 
                                               ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__GEN_30) 
                                                - (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)));
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_416 = ((0xfffffffcU 
                                                & vlTOPp->io_imem_resp_bits_pc) 
                                               | (3U 
                                                  & (vlTOPp->io_imem_resp_bits_pc 
                                                     + (IData)((QData)((IData)(
                                                                               (6U 
                                                                                & ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_374) 
                                                                                << 1U))))))));
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_408 = ((((QData)((IData)(
                                                                 ((0xffff0000U 
                                                                   & vlTOPp->io_imem_resp_bits_data) 
                                                                  | (0xffffU 
                                                                     & (vlTOPp->io_imem_resp_bits_data 
                                                                        >> 0x10U))))) 
                                                 << 0x20U) 
                                                | (QData)((IData)(vlTOPp->io_imem_resp_bits_data))) 
                                               >> (0x30U 
                                                   & (((1U 
                                                        & (vlTOPp->io_imem_resp_bits_pc 
                                                           >> 1U)) 
                                                       + (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_374)) 
                                                      << 4U)));
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_381 = (7U & 
                                               ((3U 
                                                 & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_373)) 
                                                - (3U 
                                                   & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_374))));
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_399 = ((((IData)(vlTOPp->io_imem_resp_valid) 
                                                 & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_378)) 
                                                & ((3U 
                                                    & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_374)) 
                                                   < 
                                                   (3U 
                                                    & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_373)))) 
                                               & (1U 
                                                  >= 
                                                  (3U 
                                                   & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_381))));
    vlSymsp->TOP__Rocket__ibuf.__PVT__GEN_24 = (3U 
                                                & ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_399)
                                                    ? 
                                                   ((IData)(vlTOPp->io_imem_resp_bits_btb_valid)
                                                     ? 
                                                    ((IData)(vlTOPp->io_imem_resp_bits_btb_bits_bridx) 
                                                     + (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_374))
                                                     : (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBResp_bridx))
                                                    : (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBResp_bridx)));
    vlSymsp->TOP__Rocket__ibuf.__PVT__GEN_29 = ((IData)(vlSymsp->TOP__Rocket.__PVT__take_pc_mem_wb)
                                                 ? 0U
                                                 : 
                                                (3U 
                                                 & ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_399)
                                                     ? (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_381)
                                                     : 
                                                    ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_378)
                                                      ? 0U
                                                      : 
                                                     ((IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid) 
                                                      - (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__GEN_30))))));
}

VL_INLINE_OPT void VRocket_IBuf::_combo__TOP__Rocket__ibuf__3(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+        VRocket_IBuf::_combo__TOP__Rocket__ibuf__3\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_373 = (7U & 
                                               ((((IData)(vlTOPp->io_imem_resp_bits_btb_valid) 
                                                  & (IData)(vlTOPp->io_imem_resp_bits_btb_bits_taken))
                                                  ? 
                                                 (3U 
                                                  & ((IData)(1U) 
                                                     + (IData)(vlTOPp->io_imem_resp_bits_btb_bits_bridx)))
                                                  : 2U) 
                                                - (1U 
                                                   & (vlTOPp->io_imem_resp_bits_pc 
                                                      >> 1U))));
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 = (((QData)((IData)(vlTOPp->io_imem_resp_bits_data)) 
                                                << 0x20U) 
                                               | (QData)((IData)(
                                                                 ((0xffff0000U 
                                                                   & (vlTOPp->io_imem_resp_bits_data 
                                                                      << 0x10U)) 
                                                                  | (0xffffU 
                                                                     & vlTOPp->io_imem_resp_bits_data)))));
}

VL_INLINE_OPT void VRocket_IBuf::_sequent__TOP__Rocket__ibuf__4(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+        VRocket_IBuf::_sequent__TOP__Rocket__ibuf__4\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        vlSymsp->TOP__Rocket__ibuf.__PVT__buf_btb_bits_bridx 
            = vlTOPp->io_imem_resp_bits_btb_bits_bridx;
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        vlSymsp->TOP__Rocket__ibuf.__PVT__buf_btb_bits_bht_history 
            = vlTOPp->io_imem_resp_bits_btb_bits_bht_history;
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        vlSymsp->TOP__Rocket__ibuf.__PVT__buf_btb_bits_entry 
            = vlTOPp->io_imem_resp_bits_btb_bits_entry;
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        vlSymsp->TOP__Rocket__ibuf.__PVT__buf_btb_bits_target 
            = vlTOPp->io_imem_resp_bits_btb_bits_target;
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        vlSymsp->TOP__Rocket__ibuf.__PVT__buf_btb_bits_bht_value 
            = vlTOPp->io_imem_resp_bits_btb_bits_bht_value;
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        vlSymsp->TOP__Rocket__ibuf.__PVT__buf_btb_bits_taken 
            = vlTOPp->io_imem_resp_bits_btb_bits_taken;
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        vlSymsp->TOP__Rocket__ibuf.__PVT__buf_btb_bits_mask 
            = vlTOPp->io_imem_resp_bits_btb_bits_mask;
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        vlSymsp->TOP__Rocket__ibuf.__PVT__buf_mask 
            = vlSymsp->TOP__Rocket.ibuf_io_imem_bits_mask;
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        vlSymsp->TOP__Rocket__ibuf.__PVT__buf_btb_valid 
            = vlTOPp->io_imem_resp_bits_btb_valid;
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        if (vlTOPp->io_imem_resp_bits_btb_valid) {
            vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBResp_bht_value 
                = vlTOPp->io_imem_resp_bits_btb_bits_bht_value;
        }
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        if (vlTOPp->io_imem_resp_bits_btb_valid) {
            vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBResp_bht_history 
                = vlTOPp->io_imem_resp_bits_btb_bits_bht_history;
        }
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        if (vlTOPp->io_imem_resp_bits_btb_valid) {
            vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBResp_target 
                = vlTOPp->io_imem_resp_bits_btb_bits_target;
        }
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        if (vlTOPp->io_imem_resp_bits_btb_valid) {
            vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBResp_entry 
                = vlTOPp->io_imem_resp_bits_btb_bits_entry;
        }
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        if (vlTOPp->io_imem_resp_bits_btb_valid) {
            vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBResp_taken 
                = vlTOPp->io_imem_resp_bits_btb_bits_taken;
        }
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        if (vlTOPp->io_imem_resp_bits_btb_valid) {
            vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBResp_mask 
                = vlTOPp->io_imem_resp_bits_btb_bits_mask;
        }
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        vlSymsp->TOP__Rocket__ibuf.__PVT__buf_pc = vlSymsp->TOP__Rocket__ibuf.__PVT__T_416;
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        vlSymsp->TOP__Rocket__ibuf.__PVT__buf_xcpt_if 
            = vlSymsp->TOP__Rocket.ibuf_io_imem_bits_xcpt_if;
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        vlSymsp->TOP__Rocket__ibuf.__PVT__buf_replay 
            = vlTOPp->io_imem_resp_bits_replay;
    }
    vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBResp_bridx 
        = (1U & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__GEN_24));
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBHit 
            = vlTOPp->io_imem_resp_bits_btb_valid;
    }
    if (vlSymsp->TOP__Rocket__ibuf.__PVT__T_399) {
        vlSymsp->TOP__Rocket__ibuf.__PVT__buf_data 
            = (0xffffU & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_408));
    }
    vlSymsp->TOP__Rocket__ibuf.nBufValid = (1U & ((~ (IData)(vlSymsp->TOP__Rocket.reset)) 
                                                  & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__GEN_29)));
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_471 = (3U & 
                                               (((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBHit)
                                                  ? 
                                                 ((IData)(1U) 
                                                  << (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__ibufBTBResp_bridx))
                                                  : 0U) 
                                                & (((IData)(1U) 
                                                    << (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)) 
                                                   - (IData)(1U))));
}

VL_INLINE_OPT void VRocket_IBuf::_combo__TOP__Rocket__ibuf__5(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+        VRocket_IBuf::_combo__TOP__Rocket__ibuf__5\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    WData/*127:0*/ __Vtemp7[4];
    WData/*191:0*/ __Vtemp8[6];
    WData/*191:0*/ __Vtemp9[6];
    // Body
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_377 = (7U & 
                                               (((IData)(vlTOPp->io_imem_resp_valid)
                                                  ? 
                                                 (3U 
                                                  & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_373))
                                                  : 0U) 
                                                + (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)));
    __Vtemp7[0U] = (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_427);
    __Vtemp7[1U] = (IData)((vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 
                            >> 0x20U));
    __Vtemp7[2U] = (IData)((((QData)((IData)((0xffffU 
                                              & (IData)(
                                                        (vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 
                                                         >> 0x30U))))) 
                             << 0x30U) | (((QData)((IData)(
                                                           (0xffffU 
                                                            & (IData)(
                                                                      (vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 
                                                                       >> 0x30U))))) 
                                           << 0x20U) 
                                          | (((QData)((IData)(
                                                              (0xffffU 
                                                               & (IData)(
                                                                         (vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 
                                                                          >> 0x30U))))) 
                                              << 0x10U) 
                                             | (QData)((IData)(
                                                               (0xffffU 
                                                                & (IData)(
                                                                          (vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 
                                                                           >> 0x30U)))))))));
    __Vtemp7[3U] = (IData)(((((QData)((IData)((0xffffU 
                                               & (IData)(
                                                         (vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 
                                                          >> 0x30U))))) 
                              << 0x30U) | (((QData)((IData)(
                                                            (0xffffU 
                                                             & (IData)(
                                                                       (vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 
                                                                        >> 0x30U))))) 
                                            << 0x20U) 
                                           | (((QData)((IData)(
                                                               (0xffffU 
                                                                & (IData)(
                                                                          (vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 
                                                                           >> 0x30U))))) 
                                               << 0x10U) 
                                              | (QData)((IData)(
                                                                (0xffffU 
                                                                 & (IData)(
                                                                           (vlSymsp->TOP__Rocket__ibuf.__PVT__T_427 
                                                                            >> 0x30U)))))))) 
                            >> 0x20U));
    VL_EXTEND_WW(191,128, __Vtemp8, __Vtemp7);
    VL_SHIFTL_WWI(191,191,6, __Vtemp9, __Vtemp8, (0x30U 
                                                  & ((((IData)(2U) 
                                                       + (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)) 
                                                      - 
                                                      (1U 
                                                       & (vlTOPp->io_imem_resp_bits_pc 
                                                          >> 1U))) 
                                                     << 4U)));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
        = ((__Vtemp9[2U] & (IData)((VL_ULL(0x7fffffffffffffff) 
                                    & (VL_ULL(0xffffffff) 
                                       << (0x1fU & 
                                           ((IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid) 
                                            << 4U)))))) 
           | (vlSymsp->TOP__Rocket__ibuf.__PVT__buf_data 
              & (~ (IData)((VL_ULL(0x7fffffffffffffff) 
                            & (VL_ULL(0xffffffff) << 
                               (0x1fU & ((IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid) 
                                         << 4U))))))));
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_488 = ((IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)
                                                ? vlSymsp->TOP__Rocket__ibuf.__PVT__buf_pc
                                                : vlTOPp->io_imem_resp_bits_pc);
    vlSymsp->TOP__Rocket__ibuf.__PVT__btbHitMask = 
        ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_471) 
         | (3U & (((IData)(vlTOPp->io_imem_resp_bits_btb_valid)
                    ? ((IData)(1U) << (3U & (((IData)(vlTOPp->io_imem_resp_bits_btb_bits_bridx) 
                                              + (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)) 
                                             - (1U 
                                                & (vlTOPp->io_imem_resp_bits_pc 
                                                   >> 1U)))))
                    : 0U) & (~ (((IData)(1U) << (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)) 
                                - (IData)(1U))))));
    vlSymsp->TOP__Rocket__ibuf.__PVT__xcpt_if = (3U 
                                                 & (((0xfU 
                                                      & ((IData)(1U) 
                                                         << 
                                                         (3U 
                                                          & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_377)))) 
                                                     - (IData)(1U)) 
                                                    & (((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__buf_xcpt_if)
                                                         ? 
                                                        (((IData)(1U) 
                                                          << (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)) 
                                                         - (IData)(1U))
                                                         : 0U) 
                                                       | ((IData)(vlSymsp->TOP__Rocket.ibuf_io_imem_bits_xcpt_if)
                                                           ? 
                                                          (~ 
                                                           (((IData)(1U) 
                                                             << (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)) 
                                                            - (IData)(1U)))
                                                           : 0U))));
    vlSymsp->TOP__Rocket__ibuf.__PVT__ic_replay = (3U 
                                                   & (((0xfU 
                                                        & ((IData)(1U) 
                                                           << 
                                                           (3U 
                                                            & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_377)))) 
                                                       - (IData)(1U)) 
                                                      & (((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__buf_replay)
                                                           ? 
                                                          (((IData)(1U) 
                                                            << (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)) 
                                                           - (IData)(1U))
                                                           : 0U) 
                                                         | ((IData)(vlTOPp->io_imem_resp_bits_replay)
                                                             ? 
                                                            (~ 
                                                             (((IData)(1U) 
                                                               << (IData)(vlSymsp->TOP__Rocket__ibuf.nBufValid)) 
                                                              - (IData)(1U)))
                                                             : 0U))));
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_540 = (1U & 
                                               ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__btbHitMask) 
                                                | (0xfU 
                                                   & ((3U 
                                                       == 
                                                       (3U 
                                                        & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)) 
                                                      & ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__btbHitMask) 
                                                         >> 1U)))));
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_529 = (3U & 
                                               ((3U 
                                                 == 
                                                 (3U 
                                                  & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)) 
                                                & ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__xcpt_if) 
                                                   >> 1U)));
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_503 = (1U & 
                                               ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__ic_replay) 
                                                | ((3U 
                                                    == 
                                                    (3U 
                                                     & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)) 
                                                   & ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__btbHitMask) 
                                                      | (3U 
                                                         & ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__ic_replay) 
                                                            >> 1U))))));
    vlSymsp->TOP__Rocket__ibuf.__PVT__T_519 = (1U & 
                                               (((0xfU 
                                                  & ((IData)(1U) 
                                                     << 
                                                     (3U 
                                                      & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_377)))) 
                                                 - (IData)(1U)) 
                                                & ((((3U 
                                                      != 
                                                      (3U 
                                                       & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)) 
                                                     | (1U 
                                                        & (((0xfU 
                                                             & ((IData)(1U) 
                                                                << 
                                                                (3U 
                                                                 & (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_377)))) 
                                                            - (IData)(1U)) 
                                                           >> 1U))) 
                                                    | (3U 
                                                       & ((IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__xcpt_if) 
                                                          >> 1U))) 
                                                   | (IData)(vlSymsp->TOP__Rocket__ibuf.__PVT__T_503))));
}

void VRocket_IBuf::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+        VRocket_IBuf::_ctor_var_reset\n"); );
    // Body
    __PVT__clock = VL_RAND_RESET_I(1);
    __PVT__reset = VL_RAND_RESET_I(1);
    __PVT__io_imem_ready = VL_RAND_RESET_I(1);
    __PVT__io_imem_valid = VL_RAND_RESET_I(1);
    __PVT__io_imem_bits_btb_valid = VL_RAND_RESET_I(1);
    __PVT__io_imem_bits_btb_bits_taken = VL_RAND_RESET_I(1);
    __PVT__io_imem_bits_btb_bits_mask = VL_RAND_RESET_I(2);
    __PVT__io_imem_bits_btb_bits_bridx = VL_RAND_RESET_I(1);
    __PVT__io_imem_bits_btb_bits_target = VL_RAND_RESET_I(32);
    __PVT__io_imem_bits_btb_bits_entry = VL_RAND_RESET_I(1);
    __PVT__io_imem_bits_btb_bits_bht_history = VL_RAND_RESET_I(1);
    __PVT__io_imem_bits_btb_bits_bht_value = VL_RAND_RESET_I(2);
    __PVT__io_imem_bits_pc = VL_RAND_RESET_I(32);
    __PVT__io_imem_bits_data = VL_RAND_RESET_I(32);
    __PVT__io_imem_bits_mask = VL_RAND_RESET_I(2);
    __PVT__io_imem_bits_xcpt_if = VL_RAND_RESET_I(1);
    __PVT__io_imem_bits_replay = VL_RAND_RESET_I(1);
    __PVT__io_kill = VL_RAND_RESET_I(1);
    __PVT__io_pc = VL_RAND_RESET_I(32);
    __PVT__io_btb_resp_taken = VL_RAND_RESET_I(1);
    __PVT__io_btb_resp_mask = VL_RAND_RESET_I(2);
    __PVT__io_btb_resp_bridx = VL_RAND_RESET_I(1);
    __PVT__io_btb_resp_target = VL_RAND_RESET_I(32);
    __PVT__io_btb_resp_entry = VL_RAND_RESET_I(1);
    __PVT__io_btb_resp_bht_history = VL_RAND_RESET_I(1);
    __PVT__io_btb_resp_bht_value = VL_RAND_RESET_I(2);
    __PVT__io_inst_0_ready = VL_RAND_RESET_I(1);
    __PVT__io_inst_0_valid = VL_RAND_RESET_I(1);
    __PVT__io_inst_0_bits_pf0 = VL_RAND_RESET_I(1);
    __PVT__io_inst_0_bits_pf1 = VL_RAND_RESET_I(1);
    __PVT__io_inst_0_bits_replay = VL_RAND_RESET_I(1);
    __PVT__io_inst_0_bits_btb_hit = VL_RAND_RESET_I(1);
    __PVT__io_inst_0_bits_rvc = VL_RAND_RESET_I(1);
    __PVT__io_inst_0_bits_inst_bits = VL_RAND_RESET_I(32);
    __PVT__io_inst_0_bits_inst_rd = VL_RAND_RESET_I(5);
    __PVT__io_inst_0_bits_inst_rs1 = VL_RAND_RESET_I(5);
    __PVT__io_inst_0_bits_inst_rs2 = VL_RAND_RESET_I(5);
    __PVT__io_inst_0_bits_inst_rs3 = VL_RAND_RESET_I(5);
    nBufValid = VL_RAND_RESET_I(1);
    __PVT__GEN_33 = VL_RAND_RESET_I(32);
    __PVT__buf_btb_valid = VL_RAND_RESET_I(1);
    __PVT__GEN_34 = VL_RAND_RESET_I(32);
    __PVT__buf_btb_bits_taken = VL_RAND_RESET_I(1);
    __PVT__GEN_35 = VL_RAND_RESET_I(32);
    __PVT__buf_btb_bits_mask = VL_RAND_RESET_I(2);
    __PVT__GEN_36 = VL_RAND_RESET_I(32);
    __PVT__buf_btb_bits_bridx = VL_RAND_RESET_I(1);
    __PVT__GEN_37 = VL_RAND_RESET_I(32);
    __PVT__buf_btb_bits_target = VL_RAND_RESET_I(32);
    __PVT__GEN_38 = VL_RAND_RESET_I(32);
    __PVT__buf_btb_bits_entry = VL_RAND_RESET_I(1);
    __PVT__GEN_43 = VL_RAND_RESET_I(32);
    __PVT__buf_btb_bits_bht_history = VL_RAND_RESET_I(1);
    __PVT__GEN_44 = VL_RAND_RESET_I(32);
    __PVT__buf_btb_bits_bht_value = VL_RAND_RESET_I(2);
    __PVT__GEN_48 = VL_RAND_RESET_I(32);
    __PVT__buf_pc = VL_RAND_RESET_I(32);
    __PVT__GEN_51 = VL_RAND_RESET_I(32);
    __PVT__buf_data = VL_RAND_RESET_I(32);
    __PVT__GEN_52 = VL_RAND_RESET_I(32);
    __PVT__buf_mask = VL_RAND_RESET_I(2);
    __PVT__GEN_53 = VL_RAND_RESET_I(32);
    __PVT__buf_xcpt_if = VL_RAND_RESET_I(1);
    __PVT__GEN_54 = VL_RAND_RESET_I(32);
    __PVT__buf_replay = VL_RAND_RESET_I(1);
    __PVT__GEN_55 = VL_RAND_RESET_I(32);
    __PVT__ibufBTBHit = VL_RAND_RESET_I(1);
    __PVT__GEN_56 = VL_RAND_RESET_I(32);
    __PVT__ibufBTBResp_taken = VL_RAND_RESET_I(1);
    __PVT__GEN_57 = VL_RAND_RESET_I(32);
    __PVT__ibufBTBResp_mask = VL_RAND_RESET_I(2);
    __PVT__GEN_58 = VL_RAND_RESET_I(32);
    __PVT__ibufBTBResp_bridx = VL_RAND_RESET_I(1);
    __PVT__GEN_59 = VL_RAND_RESET_I(32);
    __PVT__ibufBTBResp_target = VL_RAND_RESET_I(32);
    __PVT__GEN_60 = VL_RAND_RESET_I(32);
    __PVT__ibufBTBResp_entry = VL_RAND_RESET_I(1);
    __PVT__GEN_61 = VL_RAND_RESET_I(32);
    __PVT__ibufBTBResp_bht_history = VL_RAND_RESET_I(1);
    __PVT__GEN_62 = VL_RAND_RESET_I(32);
    __PVT__ibufBTBResp_bht_value = VL_RAND_RESET_I(2);
    __PVT__GEN_63 = VL_RAND_RESET_I(32);
    __PVT__T_373 = VL_RAND_RESET_I(3);
    __PVT__T_374 = VL_RAND_RESET_I(3);
    __PVT__T_377 = VL_RAND_RESET_I(3);
    __PVT__T_378 = VL_RAND_RESET_I(1);
    __PVT__T_381 = VL_RAND_RESET_I(3);
    __PVT__T_399 = VL_RAND_RESET_I(1);
    __PVT__T_408 = VL_RAND_RESET_Q(64);
    __PVT__T_416 = VL_RAND_RESET_I(32);
    __PVT__GEN_24 = VL_RAND_RESET_I(2);
    __PVT__GEN_29 = VL_RAND_RESET_I(2);
    __PVT__T_427 = VL_RAND_RESET_Q(64);
    __PVT__xcpt_if = VL_RAND_RESET_I(2);
    __PVT__ic_replay = VL_RAND_RESET_I(2);
    __PVT__T_471 = VL_RAND_RESET_I(2);
    __PVT__btbHitMask = VL_RAND_RESET_I(4);
    __PVT__T_488 = VL_RAND_RESET_I(32);
    __PVT__T_503 = VL_RAND_RESET_I(1);
    __PVT__T_519 = VL_RAND_RESET_I(1);
    __PVT__T_529 = VL_RAND_RESET_I(1);
    __PVT__T_540 = VL_RAND_RESET_I(1);
    __PVT__GEN_30 = VL_RAND_RESET_I(2);
}
