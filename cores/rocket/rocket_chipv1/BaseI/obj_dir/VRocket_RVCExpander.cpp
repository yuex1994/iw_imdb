// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VRocket.h for the primary calling header

#include "VRocket_RVCExpander.h"
#include "VRocket__Syms.h"

#include "verilated_dpi.h"

//==========

VL_CTOR_IMP(VRocket_RVCExpander) {
    // Reset internal values
    // Reset structure values
    _ctor_var_reset();
}

void VRocket_RVCExpander::__Vconfigure(VRocket__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

VRocket_RVCExpander::~VRocket_RVCExpander() {
}

VL_INLINE_OPT void VRocket_RVCExpander::_settle__TOP__Rocket__ibuf__RVCExpander_1__1(VRocket__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VRocket_RVCExpander::_settle__TOP__Rocket__ibuf__RVCExpander_1__1\n"); );
    VRocket* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1197 
        = (((0xc0U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                      << 4U)) | (0x20U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                          >> 7U))) 
           | (0x1cU & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                       >> 2U)));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1284 
        = ((0x3e0U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                      << 3U)) | (0x1fU & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                          >> 7U)));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1397 
        = ((0x38U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                     >> 4U)) | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                      >> 0xaU)));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_728 
        = ((4U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                  >> 0xaU)) | (3U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                     >> 5U)));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1434 
        = ((0x30U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                     >> 3U)) | (0xfU & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                        >> 9U)));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_669 
        = ((0x20U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                     >> 7U)) | (0x1fU & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                         >> 2U)));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_955 
        = (((((0x1000U & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)
               ? 0x1fU : 0U) << 8U) | ((0xc0U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                 << 1U)) 
                                       | (0x20U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                   << 3U)))) 
           | ((0x18U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                        >> 7U)) | (6U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                         >> 2U))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_62 
        = ((0x18U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                     >> 2U)) | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                      >> 0xaU)));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_608 
        = ((0U == (0x1fU & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                            >> 7U))) | (2U == (0x1fU 
                                               & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                  >> 7U))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_386 
        = ((((0x1000U & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)
              ? 0x7fU : 0U) << 5U) | (0x1fU & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                               >> 2U)));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_104 
        = (((0x40U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                      << 1U)) | (0x38U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                          >> 7U))) 
           | (4U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                    >> 4U)));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_433 
        = ((((((0x1000U & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)
                ? 0x3ffU : 0U) << 0xbU) | ((0x400U 
                                            & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                               << 2U)) 
                                           | (0x300U 
                                              & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                 >> 1U)))) 
            | ((0x80U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                         << 1U)) | (0x40U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                             >> 1U)))) 
           | (((0x20U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                         << 3U)) | (0x10U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                             >> 7U))) 
              | (0xeU & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                         >> 2U))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635 
        = ((0x18U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                     << 3U)) | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                      >> 0xdU)));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1449 
        = ((0xe0U & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1434) 
                     << 2U)) | (0x1fU & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                         >> 2U)));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_681 
        = (0x45413U | ((((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_669) 
                         << 0x14U) | (0x38000U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                  << 8U))) 
                       | (0x380U & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1016 
        = (8U | ((0x10000U & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_955) 
                              << 4U)) | ((0xfc00U & 
                                          ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_955) 
                                           << 5U)) 
                                         | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                  >> 7U)))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_797 
        = ((1U <= (1U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                         >> 0xaU))) ? (0x840400U | 
                                       ((((0x700000U 
                                           & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                              << 0x12U)) 
                                          | ((0x38000U 
                                              & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                 << 8U)) 
                                             | (((4U 
                                                  <= (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_728))
                                                  ? 
                                                 ((2U 
                                                   <= 
                                                   (3U 
                                                    & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_728)))
                                                   ? 
                                                  ((1U 
                                                    <= 
                                                    (1U 
                                                     & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_728)))
                                                    ? 3U
                                                    : 2U)
                                                   : 0U)
                                                  : 
                                                 ((2U 
                                                   <= 
                                                   (3U 
                                                    & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_728)))
                                                   ? 
                                                  ((1U 
                                                    <= 
                                                    (1U 
                                                     & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_728)))
                                                    ? 7U
                                                    : 6U)
                                                   : 
                                                  ((1U 
                                                    <= 
                                                    (1U 
                                                     & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_728)))
                                                    ? 4U
                                                    : 0U))) 
                                                << 0xcU))) 
                                         | ((0x380U 
                                             & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in) 
                                            | ((0x1000U 
                                                & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)
                                                ? 0x3bU
                                                : 0x33U))) 
                                        | ((0U == (3U 
                                                   & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                      >> 5U)))
                                            ? 0x40000000U
                                            : 0U)))
            : (0x47413U | ((((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_386) 
                             << 0x14U) | (0x38000U 
                                          & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                             << 8U))) 
                           | (0x380U & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_207 
        = (0x108U | (((0xc00U & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_104) 
                                 << 5U)) | (0xe0U & 
                                            (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                             << 3U))) 
                     | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                              >> 7U))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_114 
        = (8U | (((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_104) 
                  << 5U) | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                  >> 7U))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_506 
        = ((0x800U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_433 
                      >> 9U)) | ((0x7feU & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_433) 
                                 | (1U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_433 
                                          >> 0xbU))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1778_rs3 
        = (0x1fU & ((4U <= (7U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                     ? ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                         ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                >> 0x1bU) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                             >> 0x1bU))
                         : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                >> 0x1bU) : ((0x1000U 
                                              & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)
                                              ? ((0U 
                                                  != 
                                                  (0x1fU 
                                                   & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                      >> 2U)))
                                                  ? 
                                                 (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                  >> 0x1bU)
                                                  : 
                                                 (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                  >> 0x1bU))
                                              : ((0U 
                                                  != 
                                                  (0x1fU 
                                                   & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                      >> 2U)))
                                                  ? 
                                                 (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                  >> 0x1bU)
                                                  : 
                                                 (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                  >> 0x1bU)))))
                     : ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                         ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                >> 0x1bU) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                             >> 0x1bU))
                         : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                >> 0x1bU) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                             >> 0x1bU)))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1934_rs3 
        = (0x1fU & ((8U <= (0xfU & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                     ? ((4U <= (7U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                         ? ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 0x1bU) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                 >> 0x1bU))
                             : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 0x1bU) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                 >> 0x1bU)))
                         : ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_608)
                                     ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                        >> 0x1bU) : 
                                    (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                     >> 0x1bU)) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                   >> 0x1bU))
                             : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 0x1bU) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                 >> 0x1bU))))
                     : ((4U <= (7U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                         ? ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 0x1bU) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                 >> 0x1bU))
                             : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 0x1bU) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                 >> 0x1bU)))
                         : ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 0x1bU) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                 >> 0x1bU))
                             : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 0x1bU) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                 >> 0x1bU))))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1784_rd 
        = (0x1fU & ((8U <= (0xfU & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                     ? ((4U <= (7U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                         ? ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 7U) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                              >> 7U))
                             : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 7U) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                              >> 7U)))
                         : ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 7U) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                              >> 7U))
                             : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 7U) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                              >> 7U))))
                     : ((4U <= (7U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                         ? ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 7U) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                              >> 7U))
                             : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 7U) : ((0x1000U 
                                               & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)
                                               ? ((0U 
                                                   != 
                                                   (0x1fU 
                                                    & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                       >> 2U)))
                                                   ? 
                                                  (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                   >> 7U)
                                                   : 1U)
                                               : ((0U 
                                                   != 
                                                   (0x1fU 
                                                    & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                       >> 2U)))
                                                   ? 
                                                  (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                   >> 7U)
                                                   : 0U))))
                         : ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 7U) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                              >> 7U))
                             : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 7U) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                              >> 7U))))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1934_rd 
        = (0x1fU & ((8U <= (0xfU & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                     ? ((4U <= (7U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                         ? ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? 0U : (8U | (7U & 
                                               (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 7U))))
                             : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? 0U : (8U | (7U & 
                                               (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 7U)))))
                         : ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_608)
                                     ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                        >> 7U) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                  >> 7U))
                                 : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 7U)) : ((1U 
                                                <= 
                                                (1U 
                                                 & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                                ? 1U
                                                : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                   >> 7U))))
                     : ((4U <= (7U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                         ? ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 2U)))
                                 : (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 2U))))
                             : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 2U)))
                                 : (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 2U)))))
                         : ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 2U)))
                                 : (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 2U))))
                             : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 2U)))
                                 : (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 2U))))))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1778_rs2 
        = (0x1fU & ((4U <= (7U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                     ? ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                         ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                >> 2U) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                          >> 2U)) : 
                        ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                          ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                             >> 2U) : ((0x1000U & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)
                                        ? ((0U != (0x1fU 
                                                   & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                      >> 2U)))
                                            ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                               >> 2U)
                                            : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                               >> 2U))
                                        : ((0U != (0x1fU 
                                                   & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                      >> 2U)))
                                            ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                               >> 2U)
                                            : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                               >> 2U)))))
                     : ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                         ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                >> 2U) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                          >> 2U)) : 
                        ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                          ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                             >> 2U) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                       >> 2U)))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1934_rs2 
        = ((8U <= (0xfU & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
            ? ((4U <= (7U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                ? ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                    ? 0U : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                            >> 2U)))
                             : (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                            >> 2U)))))
                : ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                    ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                        ? ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_608)
                            ? (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                           >> 2U)))
                            : (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                           >> 2U))))
                        : (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                       >> 2U)))) : 
                   ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                     ? (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 2U))) : (8U 
                                                | (7U 
                                                   & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                      >> 2U))))))
            : ((4U <= (7U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                ? ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                    ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                        ? (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                       >> 2U))) : (8U 
                                                   | (7U 
                                                      & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                         >> 2U))))
                    : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                        ? (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                       >> 2U))) : (8U 
                                                   | (7U 
                                                      & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                         >> 2U)))))
                : ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                    ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                        ? (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                       >> 2U))) : (8U 
                                                   | (7U 
                                                      & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                         >> 2U))))
                    : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                        ? (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                       >> 2U))) : (8U 
                                                   | (7U 
                                                      & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                         >> 2U)))))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1784_rs1 
        = (0x1fU & ((8U <= (0xfU & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                     ? ((4U <= (7U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                         ? ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 0xfU) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 0xfU))
                             : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 0xfU) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 0xfU)))
                         : ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 0xfU) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 0xfU))
                             : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 0xfU) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 0xfU))))
                     : ((4U <= (7U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                         ? ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? 2U : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                      ? 2U : ((0x1000U 
                                               & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)
                                               ? ((0U 
                                                   != 
                                                   (0x1fU 
                                                    & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                       >> 2U)))
                                                   ? 
                                                  (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                   >> 7U)
                                                   : 
                                                  (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                   >> 7U))
                                               : ((0U 
                                                   != 
                                                   (0x1fU 
                                                    & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                       >> 2U)))
                                                   ? 0U
                                                   : 
                                                  (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                   >> 7U)))))
                         : ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? 2U : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                      ? 2U : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                              >> 7U))))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1934_rs1 
        = (0x1fU & ((8U <= (0xfU & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                     ? ((4U <= (7U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                         ? ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 7U)))
                                 : (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 7U))))
                             : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 7U)))
                                 : (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 7U)))))
                         : ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_608)
                                     ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                        >> 7U) : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                  >> 7U))
                                 : 0U) : ((1U <= (1U 
                                                  & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                           ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                              >> 7U)
                                           : (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                              >> 7U))))
                     : ((4U <= (7U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                         ? ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 7U)))
                                 : (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 7U))))
                             : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 7U)))
                                 : (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 7U)))))
                         : ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 7U)))
                                 : (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 7U))))
                             : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? (8U | (7U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 7U)))
                                 : 2U)))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1736_bits 
        = ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
            ? (0x13027U | (((0x1e000000U & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1397) 
                                            << 0x17U)) 
                            | (0x1f00000U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                             << 0x12U))) 
                           | (0xc00U & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1397) 
                                        << 0xaU))))
            : ((0x1000U & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)
                ? ((0U != (0x1fU & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 2U))) ? (0x33U 
                                                | (((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1284) 
                                                    << 0xfU) 
                                                   | (0xf80U 
                                                      & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)))
                    : ((0U != (0x1fU & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                        >> 7U))) ? 
                       (0xe7U | ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1284) 
                                 << 0xfU)) : (0x100073U 
                                              | ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1284) 
                                                 << 0xfU))))
                : ((0U != (0x1fU & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                    >> 2U))) ? (0x33U 
                                                | ((0x1f00000U 
                                                    & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                       << 0x12U)) 
                                                   | (0xf80U 
                                                      & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)))
                    : ((0U != (0x1fU & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                        >> 7U))) ? 
                       (0x67U | ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1284) 
                                 << 0xfU)) : (0x1fU 
                                              | ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1284) 
                                                 << 0xfU))))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1922_bits 
        = ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
            ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                ? (0x2407U | (((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_114) 
                               << 0xfU) | (0x380U & 
                                           (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                            << 5U))))
                : (0x2403U | (((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_114) 
                               << 0xfU) | (0x380U & 
                                           (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                            << 5U)))))
            : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                ? (0x43407U | ((((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_62) 
                                 << 0x17U) | (0x38000U 
                                              & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                 << 8U))) 
                               | (0x380U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                            << 5U))))
                : (0x10400U | ((((0x3c000000U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                 << 0x13U)) 
                                 | ((0x3000000U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                   << 0xdU)) 
                                    | (0x800000U & 
                                       (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                        << 0x12U)))) 
                                | (0x400000U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                << 0x10U))) 
                               | ((0x380U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                             << 5U)) 
                                  | ((0U != (0xffU 
                                             & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                >> 5U)))
                                      ? 0x13U : 0x1fU))))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1852_bits 
        = ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
            ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                ? ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_608)
                    ? (((((0x1000U & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)
                           ? 7U : 0U) << 0x1dU) | (
                                                   (0x18000000U 
                                                    & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                       << 0x18U)) 
                                                   | (0x4000000U 
                                                      & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                         << 0x15U)))) 
                       | ((0x2000000U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                         << 0x17U)) 
                          | ((0x1000000U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                            << 0x12U)) 
                             | ((0xf8000U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                             << 8U)) 
                                | ((0xf80U & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in) 
                                   | ((0U != (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_386))
                                       ? 0x13U : 0x1fU))))))
                    : ((((0x1000U & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)
                          ? 0x7fffU : 0U) << 0x11U) 
                       | ((0x1f000U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                       << 0xaU)) | 
                          ((0xf80U & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in) 
                           | ((0U != (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_386))
                               ? 0x37U : 0x3fU)))))
                : (0x13U | (((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_386) 
                             << 0x14U) | (0xf80U & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in))))
            : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                ? (0xefU | (((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_506) 
                             << 0x14U) | (0xff000U 
                                          & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_433)))
                : (0x13U | ((((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_386) 
                              << 0x14U) | (0xf8000U 
                                           & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                              << 8U))) 
                            | (0xf80U & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs3 
        = (0x1fU & ((0x10U <= (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635))
                     ? ((8U <= (0xfU & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                         ? ((4U <= (7U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                     ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                        >> 0x1bU) : 
                                    (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                     >> 0x1bU)) : (
                                                   (1U 
                                                    <= 
                                                    (1U 
                                                     & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                                    ? 
                                                   (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                    >> 0x1bU)
                                                    : 
                                                   (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                    >> 0x1bU)))
                             : ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                     ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                        >> 0x1bU) : 
                                    (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                     >> 0x1bU)) : (
                                                   (1U 
                                                    <= 
                                                    (1U 
                                                     & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                                    ? 
                                                   (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                    >> 0x1bU)
                                                    : 
                                                   (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                    >> 0x1bU))))
                         : (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1778_rs3))
                     : (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1934_rs3)));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rd 
        = ((0x10U <= (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635))
            ? (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1784_rd)
            : (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1934_rd));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs2 
        = (0x1fU & ((0x10U <= (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635))
                     ? ((8U <= (0xfU & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                         ? ((4U <= (7U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                             ? ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                     ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                        >> 0x14U) : 
                                    (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                     >> 0x14U)) : (
                                                   (1U 
                                                    <= 
                                                    (1U 
                                                     & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                                    ? 
                                                   (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                    >> 0x14U)
                                                    : 
                                                   (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                    >> 0x14U)))
                             : ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                 ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                     ? (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                        >> 0x14U) : 
                                    (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                     >> 0x14U)) : (
                                                   (1U 
                                                    <= 
                                                    (1U 
                                                     & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                                                    ? 
                                                   (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                    >> 0x14U)
                                                    : 
                                                   (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                    >> 0x14U))))
                         : (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1778_rs2))
                     : (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1934_rs2)));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1940_rs1 
        = ((0x10U <= (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635))
            ? (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1784_rs1)
            : (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1934_rs1));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1778_bits 
        = ((4U <= (7U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
            ? ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                    ? (0x12027U | (((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1449) 
                                    << 0x14U) | (0xe00U 
                                                 & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1434) 
                                                    << 9U))))
                    : (0x12023U | (((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1449) 
                                    << 0x14U) | (0xe00U 
                                                 & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1434) 
                                                    << 9U)))))
                : vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1736_bits)
            : ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                    ? (0x12007U | (((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1197) 
                                    << 0x14U) | (0xf80U 
                                                 & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)))
                    : (0x12003U | (((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1197) 
                                    << 0x14U) | (0xf80U 
                                                 & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in))))
                : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                    ? (0x13007U | ((((0x1c000000U & 
                                      (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                       << 0x18U)) | 
                                     (0x2000000U & 
                                      (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                       << 0xdU))) | 
                                    (0x1800000U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                   << 0x12U))) 
                                   | (0xf80U & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in)))
                    : (0x1013U | ((((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_669) 
                                    << 0x14U) | (0xf8000U 
                                                 & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                    << 8U))) 
                                  | (0xf80U & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in))))));
    vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1934_bits 
        = ((8U <= (0xfU & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
            ? ((4U <= (7U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                ? ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                    ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                        ? (0x1063U | ((vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1016 
                                       << 0xfU) | (
                                                   (0xf00U 
                                                    & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_955) 
                                                       << 7U)) 
                                                   | (0x80U 
                                                      & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_955) 
                                                         >> 4U)))))
                        : (0x63U | ((vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1016 
                                     << 0xfU) | ((0xf00U 
                                                  & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_955) 
                                                     << 7U)) 
                                                 | (0x80U 
                                                    & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_955) 
                                                       >> 4U))))))
                    : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                        ? (0x6fU | (((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_506) 
                                     << 0x14U) | (0xff000U 
                                                  & vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_433)))
                        : ((2U <= (3U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                         >> 0xaU)))
                            ? vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_797
                            : ((1U <= (1U & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                             >> 0xaU)))
                                ? (0x40000000U | vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_681)
                                : vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_681))))
                : vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1852_bits)
            : ((4U <= (7U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                ? ((2U <= (3U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                    ? ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                        ? (0x2027U | (((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_207) 
                                       << 0xfU) | (0xf80U 
                                                   & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_104) 
                                                      << 7U))))
                        : (0x2023U | (((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_207) 
                                       << 0xfU) | (0xf80U 
                                                   & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_104) 
                                                      << 7U)))))
                    : ((1U <= (1U & (IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1635)))
                        ? (0x843027U | ((((0xe000000U 
                                           & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_62) 
                                              << 0x17U)) 
                                          | (0x700000U 
                                             & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                                << 0x12U))) 
                                         | (0x38000U 
                                            & (vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.io_in 
                                               << 8U))) 
                                        | (0xc00U & 
                                           ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_62) 
                                            << 0xaU))))
                        : (0x202fU | (((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_207) 
                                       << 0xfU) | (0xf80U 
                                                   & ((IData)(vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_104) 
                                                      << 7U))))))
                : vlSymsp->TOP__Rocket__ibuf__RVCExpander_1.__PVT__T_1922_bits));
}

void VRocket_RVCExpander::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+          VRocket_RVCExpander::_ctor_var_reset\n"); );
    // Body
    __PVT__clock = VL_RAND_RESET_I(1);
    __PVT__reset = VL_RAND_RESET_I(1);
    io_in = VL_RAND_RESET_I(32);
    __PVT__io_out_bits = VL_RAND_RESET_I(32);
    __PVT__io_out_rd = VL_RAND_RESET_I(5);
    __PVT__io_out_rs1 = VL_RAND_RESET_I(5);
    __PVT__io_out_rs2 = VL_RAND_RESET_I(5);
    __PVT__io_out_rs3 = VL_RAND_RESET_I(5);
    __PVT__io_rvc = VL_RAND_RESET_I(1);
    __PVT__T_62 = VL_RAND_RESET_I(5);
    __PVT__T_104 = VL_RAND_RESET_I(7);
    __PVT__T_114 = VL_RAND_RESET_I(12);
    __PVT__T_207 = VL_RAND_RESET_I(12);
    __PVT__T_386 = VL_RAND_RESET_I(12);
    __PVT__T_433 = VL_RAND_RESET_I(21);
    __PVT__T_506 = VL_RAND_RESET_I(12);
    __PVT__T_608 = VL_RAND_RESET_I(1);
    __PVT__T_669 = VL_RAND_RESET_I(6);
    __PVT__T_681 = VL_RAND_RESET_I(26);
    __PVT__T_728 = VL_RAND_RESET_I(3);
    __PVT__T_797 = VL_RAND_RESET_I(32);
    __PVT__T_955 = VL_RAND_RESET_I(13);
    __PVT__T_1016 = VL_RAND_RESET_I(17);
    __PVT__T_1197 = VL_RAND_RESET_I(8);
    __PVT__T_1284 = VL_RAND_RESET_I(10);
    __PVT__T_1397 = VL_RAND_RESET_I(6);
    __PVT__T_1434 = VL_RAND_RESET_I(6);
    __PVT__T_1449 = VL_RAND_RESET_I(8);
    __PVT__T_1635 = VL_RAND_RESET_I(5);
    __PVT__T_1736_bits = VL_RAND_RESET_I(32);
    __PVT__T_1778_bits = VL_RAND_RESET_I(32);
    __PVT__T_1778_rs2 = VL_RAND_RESET_I(5);
    __PVT__T_1778_rs3 = VL_RAND_RESET_I(5);
    __PVT__T_1784_rd = VL_RAND_RESET_I(5);
    __PVT__T_1784_rs1 = VL_RAND_RESET_I(5);
    __PVT__T_1852_bits = VL_RAND_RESET_I(32);
    __PVT__T_1922_bits = VL_RAND_RESET_I(32);
    __PVT__T_1934_bits = VL_RAND_RESET_I(32);
    __PVT__T_1934_rd = VL_RAND_RESET_I(5);
    __PVT__T_1934_rs1 = VL_RAND_RESET_I(5);
    __PVT__T_1934_rs2 = VL_RAND_RESET_I(5);
    __PVT__T_1934_rs3 = VL_RAND_RESET_I(5);
    __PVT__T_1940_rd = VL_RAND_RESET_I(5);
    __PVT__T_1940_rs1 = VL_RAND_RESET_I(5);
    __PVT__T_1940_rs2 = VL_RAND_RESET_I(5);
    __PVT__T_1940_rs3 = VL_RAND_RESET_I(5);
}
