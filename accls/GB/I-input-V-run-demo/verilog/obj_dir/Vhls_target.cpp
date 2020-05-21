// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vhls_target.h for the primary calling header

#include "Vhls_target.h"
#include "Vhls_target__Syms.h"

#include "verilated_dpi.h"

//==========

VL_CTOR_IMP(Vhls_target) {
    Vhls_target__Syms* __restrict vlSymsp = __VlSymsp = new Vhls_target__Syms(this, name());
    Vhls_target* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    VL_CELL(hls_target, Vhls_target_hls_target);
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void Vhls_target::__Vconfigure(Vhls_target__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

Vhls_target::~Vhls_target() {
    delete __VlSymsp; __VlSymsp=NULL;
}

void Vhls_target::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vhls_target::eval\n"); );
    Vhls_target__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    Vhls_target* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
#ifdef VL_DEBUG
    // Debug assertions
    _eval_debug_assertions();
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        _eval(vlSymsp);
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = _change_request(vlSymsp);
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("hls_target.v", 12, "",
                "Verilated model didn't converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vhls_target::_eval_initial_loop(Vhls_target__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    _eval_initial(vlSymsp);
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
            VL_FATAL_MT("hls_target.v", 12, "",
                "Verilated model didn't DC converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vhls_target::_settle__TOP__1(Vhls_target__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhls_target::_settle__TOP__1\n"); );
    Vhls_target* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v_interrupt = vlSymsp->TOP__hls_target.v_interrupt;
    vlTOPp->s_axi_config_BRESP = vlSymsp->TOP__hls_target.s_axi_config_BRESP;
    vlTOPp->s_axi_config_BVALID = vlSymsp->TOP__hls_target.s_axi_config_BVALID;
    vlTOPp->s_axi_config_RRESP = vlSymsp->TOP__hls_target.s_axi_config_RRESP;
    vlTOPp->s_axi_config_RDATA = vlSymsp->TOP__hls_target.s_axi_config_RDATA;
    vlTOPp->s_axi_config_RVALID = vlSymsp->TOP__hls_target.s_axi_config_RVALID;
    vlTOPp->s_axi_config_ARREADY = vlSymsp->TOP__hls_target.s_axi_config_ARREADY;
    vlTOPp->s_axi_config_WREADY = vlSymsp->TOP__hls_target.s_axi_config_WREADY;
    vlTOPp->s_axi_config_AWREADY = vlSymsp->TOP__hls_target.s_axi_config_AWREADY;
    vlTOPp->arg_0_TLAST = vlSymsp->TOP__hls_target.__PVT__hls_target_Loop_1_proc_U0__DOT__arg_0_V_last_V_1_data_reg;
    vlTOPp->arg_0_TDATA = vlSymsp->TOP__hls_target.__PVT__hls_target_Loop_1_proc_U0__DOT__arg_0_V_value_V_1_data_reg;
}

VL_INLINE_OPT void Vhls_target::_sequent__TOP__2(Vhls_target__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhls_target::_sequent__TOP__2\n"); );
    Vhls_target* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->arg_0_TLAST = vlSymsp->TOP__hls_target.__PVT__hls_target_Loop_1_proc_U0__DOT__arg_0_V_last_V_1_data_reg;
    vlTOPp->arg_0_TDATA = vlSymsp->TOP__hls_target.__PVT__hls_target_Loop_1_proc_U0__DOT__arg_0_V_value_V_1_data_reg;
    vlTOPp->arg_1_TREADY = vlSymsp->TOP__hls_target.__PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__in_axi_stream_V_last_V_0_in_rdy;
    vlTOPp->arg_0_TVALID = vlSymsp->TOP__hls_target.__PVT__hls_target_Loop_1_proc_U0__DOT__arg_0_V_last_V_1_mVld;
}

void Vhls_target::_settle__TOP__3(Vhls_target__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhls_target::_settle__TOP__3\n"); );
    Vhls_target* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->arg_1_TREADY = vlSymsp->TOP__hls_target.__PVT__hls_target_linebuffer_1_U0__DOT__hls_target_linebuffer_Loop_1_proc_U0__DOT__in_axi_stream_V_last_V_0_in_rdy;
    vlTOPp->arg_0_TVALID = vlSymsp->TOP__hls_target.__PVT__hls_target_Loop_1_proc_U0__DOT__arg_0_V_last_V_1_mVld;
}

void Vhls_target::_eval(Vhls_target__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhls_target::_eval\n"); );
    Vhls_target* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (((IData)(vlTOPp->ap_clk) & (~ (IData)(vlTOPp->__Vclklast__TOP__ap_clk)))) {
        vlSymsp->TOP__hls_target._sequent__TOP__hls_target__3(vlSymsp);
        vlTOPp->_sequent__TOP__2(vlSymsp);
    }
    vlSymsp->TOP__hls_target._combo__TOP__hls_target__5(vlSymsp);
    // Final
    vlTOPp->__Vclklast__TOP__ap_clk = vlTOPp->ap_clk;
}

void Vhls_target::_eval_initial(Vhls_target__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhls_target::_eval_initial\n"); );
    Vhls_target* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__hls_target._initial__TOP__hls_target__2(vlSymsp);
    vlTOPp->__Vclklast__TOP__ap_clk = vlTOPp->ap_clk;
}

void Vhls_target::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhls_target::final\n"); );
    // Variables
    Vhls_target__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vhls_target* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vhls_target::_eval_settle(Vhls_target__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhls_target::_eval_settle\n"); );
    Vhls_target* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__1(vlSymsp);
    vlSymsp->TOP__hls_target._settle__TOP__hls_target__1(vlSymsp);
    vlSymsp->TOP__hls_target._settle__TOP__hls_target__4(vlSymsp);
    vlTOPp->_settle__TOP__3(vlSymsp);
}

VL_INLINE_OPT QData Vhls_target::_change_request(Vhls_target__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhls_target::_change_request\n"); );
    Vhls_target* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vhls_target::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhls_target::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((s_axi_config_AWVALID & 0xfeU))) {
        Verilated::overWidthError("s_axi_config_AWVALID");}
    if (VL_UNLIKELY((s_axi_config_AWADDR & 0xe0U))) {
        Verilated::overWidthError("s_axi_config_AWADDR");}
    if (VL_UNLIKELY((s_axi_config_WVALID & 0xfeU))) {
        Verilated::overWidthError("s_axi_config_WVALID");}
    if (VL_UNLIKELY((s_axi_config_WSTRB & 0xf0U))) {
        Verilated::overWidthError("s_axi_config_WSTRB");}
    if (VL_UNLIKELY((s_axi_config_ARVALID & 0xfeU))) {
        Verilated::overWidthError("s_axi_config_ARVALID");}
    if (VL_UNLIKELY((s_axi_config_ARADDR & 0xe0U))) {
        Verilated::overWidthError("s_axi_config_ARADDR");}
    if (VL_UNLIKELY((s_axi_config_RREADY & 0xfeU))) {
        Verilated::overWidthError("s_axi_config_RREADY");}
    if (VL_UNLIKELY((s_axi_config_BREADY & 0xfeU))) {
        Verilated::overWidthError("s_axi_config_BREADY");}
    if (VL_UNLIKELY((ap_clk & 0xfeU))) {
        Verilated::overWidthError("ap_clk");}
    if (VL_UNLIKELY((ap_rst_n & 0xfeU))) {
        Verilated::overWidthError("ap_rst_n");}
    if (VL_UNLIKELY((arg_1_TLAST & 0xfeU))) {
        Verilated::overWidthError("arg_1_TLAST");}
    if (VL_UNLIKELY((arg_1_TVALID & 0xfeU))) {
        Verilated::overWidthError("arg_1_TVALID");}
    if (VL_UNLIKELY((arg_0_TREADY & 0xfeU))) {
        Verilated::overWidthError("arg_0_TREADY");}
}
#endif  // VL_DEBUG

void Vhls_target::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhls_target::_ctor_var_reset\n"); );
    // Body
    s_axi_config_AWVALID = VL_RAND_RESET_I(1);
    s_axi_config_AWREADY = VL_RAND_RESET_I(1);
    s_axi_config_AWADDR = VL_RAND_RESET_I(5);
    s_axi_config_WVALID = VL_RAND_RESET_I(1);
    s_axi_config_WREADY = VL_RAND_RESET_I(1);
    s_axi_config_WDATA = VL_RAND_RESET_I(32);
    s_axi_config_WSTRB = VL_RAND_RESET_I(4);
    s_axi_config_ARVALID = VL_RAND_RESET_I(1);
    s_axi_config_ARREADY = VL_RAND_RESET_I(1);
    s_axi_config_ARADDR = VL_RAND_RESET_I(5);
    s_axi_config_RVALID = VL_RAND_RESET_I(1);
    s_axi_config_RREADY = VL_RAND_RESET_I(1);
    s_axi_config_RDATA = VL_RAND_RESET_I(32);
    s_axi_config_RRESP = VL_RAND_RESET_I(2);
    s_axi_config_BVALID = VL_RAND_RESET_I(1);
    s_axi_config_BREADY = VL_RAND_RESET_I(1);
    s_axi_config_BRESP = VL_RAND_RESET_I(2);
    ap_clk = VL_RAND_RESET_I(1);
    ap_rst_n = VL_RAND_RESET_I(1);
    v_interrupt = VL_RAND_RESET_I(1);
    arg_0_TDATA = VL_RAND_RESET_I(8);
    arg_0_TLAST = VL_RAND_RESET_I(1);
    arg_1_TDATA = VL_RAND_RESET_I(8);
    arg_1_TLAST = VL_RAND_RESET_I(1);
    arg_1_TVALID = VL_RAND_RESET_I(1);
    arg_1_TREADY = VL_RAND_RESET_I(1);
    arg_0_TVALID = VL_RAND_RESET_I(1);
    arg_0_TREADY = VL_RAND_RESET_I(1);
}
