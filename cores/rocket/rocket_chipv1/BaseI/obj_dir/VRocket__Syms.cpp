// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "VRocket__Syms.h"
#include "VRocket.h"
#include "VRocket_Rocket.h"
#include "VRocket_IBuf.h"
#include "VRocket_RVCExpander.h"



// FUNCTIONS
VRocket__Syms::VRocket__Syms(VRocket* topp, const char* namep)
    // Setup locals
    : __Vm_namep(namep)
    , __Vm_activity(false)
    , __Vm_didInit(false)
    // Setup submodule names
    , TOP__Rocket(Verilated::catName(topp->name(), "Rocket"))
    , TOP__Rocket__ibuf(Verilated::catName(topp->name(), "Rocket.ibuf"))
    , TOP__Rocket__ibuf__RVCExpander_1(Verilated::catName(topp->name(), "Rocket.ibuf.RVCExpander_1"))
{
    // Pointer to top level
    TOPp = topp;
    // Setup each module's pointers to their submodules
    TOPp->Rocket = &TOP__Rocket;
    TOPp->Rocket->ibuf = &TOP__Rocket__ibuf;
    TOPp->Rocket->ibuf->RVCExpander_1 = &TOP__Rocket__ibuf__RVCExpander_1;
    // Setup each module's pointer back to symbol table (for public functions)
    TOPp->__Vconfigure(this, true);
    TOP__Rocket.__Vconfigure(this, true);
    TOP__Rocket__ibuf.__Vconfigure(this, true);
    TOP__Rocket__ibuf__RVCExpander_1.__Vconfigure(this, true);
    // Setup scopes
    __Vscope_Rocket.configure(this, name(), "Rocket", "Rocket", VerilatedScope::SCOPE_OTHER);
    __Vscope_Rocket__csr.configure(this, name(), "Rocket.csr", "csr", VerilatedScope::SCOPE_OTHER);
    __Vscope_Rocket__ibuf.configure(this, name(), "Rocket.ibuf", "ibuf", VerilatedScope::SCOPE_OTHER);
    __Vscope_Rocket__ibuf__RVCExpander_1.configure(this, name(), "Rocket.ibuf.RVCExpander_1", "RVCExpander_1", VerilatedScope::SCOPE_OTHER);
    __Vscope_TOP.configure(this, name(), "TOP", "TOP", VerilatedScope::SCOPE_OTHER);
    // Setup export functions
    for (int __Vfinal=0; __Vfinal<2; __Vfinal++) {
        __Vscope_Rocket.varInsert(__Vfinal,"clock", &(TOP__Rocket.clock), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"csr_io_hartid", &(TOP__Rocket.csr_io_hartid), VLVT_UINT32,VLVD_NODIR|VLVF_PUB_RW,1 ,31,0);
        __Vscope_Rocket.varInsert(__Vfinal,"csr_io_rocc_autl_acquire_bits_client_xact_id", &(TOP__Rocket.csr_io_rocc_autl_acquire_bits_client_xact_id), VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"csr_io_rocc_autl_acquire_bits_is_builtin_type", &(TOP__Rocket.csr_io_rocc_autl_acquire_bits_is_builtin_type), VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"csr_io_rocc_autl_acquire_valid", &(TOP__Rocket.csr_io_rocc_autl_acquire_valid), VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"csr_io_rocc_autl_grant_ready", &(TOP__Rocket.csr_io_rocc_autl_grant_ready), VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"csr_io_rocc_busy", &(TOP__Rocket.csr_io_rocc_busy), VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"csr_io_rocc_cmd_ready", &(TOP__Rocket.csr_io_rocc_cmd_ready), VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"csr_io_rocc_fpu_req_valid", &(TOP__Rocket.csr_io_rocc_fpu_req_valid), VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"csr_io_rocc_fpu_resp_ready", &(TOP__Rocket.csr_io_rocc_fpu_resp_ready), VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"csr_io_rocc_interrupt", &(TOP__Rocket.csr_io_rocc_interrupt), VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"csr_io_rocc_mem_invalidate_lr", &(TOP__Rocket.csr_io_rocc_mem_invalidate_lr), VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"csr_io_rocc_mem_req_valid", &(TOP__Rocket.csr_io_rocc_mem_req_valid), VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"csr_io_rocc_mem_s1_kill", &(TOP__Rocket.csr_io_rocc_mem_s1_kill), VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"csr_io_rocc_resp_valid", &(TOP__Rocket.csr_io_rocc_resp_valid), VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"ibuf_io_imem_bits_mask", &(TOP__Rocket.ibuf_io_imem_bits_mask), VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,1 ,1,0);
        __Vscope_Rocket.varInsert(__Vfinal,"ibuf_io_imem_bits_xcpt_if", &(TOP__Rocket.ibuf_io_imem_bits_xcpt_if), VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"ibuf_io_inst_0_bits_inst_bits", &(TOP__Rocket.ibuf_io_inst_0_bits_inst_bits), VLVT_UINT32,VLVD_NODIR|VLVF_PUB_RW,1 ,31,0);
        __Vscope_Rocket.varInsert(__Vfinal,"io_dmem_xcpt_ma_ld", &(TOP__Rocket.io_dmem_xcpt_ma_ld), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"io_dmem_xcpt_ma_st", &(TOP__Rocket.io_dmem_xcpt_ma_st), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"io_dmem_xcpt_pf_ld", &(TOP__Rocket.io_dmem_xcpt_pf_ld), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"io_dmem_xcpt_pf_st", &(TOP__Rocket.io_dmem_xcpt_pf_st), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"io_fpu_cp_resp_bits_data", &(TOP__Rocket.io_fpu_cp_resp_bits_data), VLVT_UINT64,VLVD_IN|VLVF_PUB_RW,1 ,32,0);
        __Vscope_Rocket.varInsert(__Vfinal,"io_fpu_cp_resp_valid", &(TOP__Rocket.io_fpu_cp_resp_valid), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"io_fpu_fcsr_flags_bits", &(TOP__Rocket.io_fpu_fcsr_flags_bits), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,1 ,4,0);
        __Vscope_Rocket.varInsert(__Vfinal,"io_fpu_fcsr_flags_valid", &(TOP__Rocket.io_fpu_fcsr_flags_valid), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"io_fpu_fcsr_rdy", &(TOP__Rocket.io_fpu_fcsr_rdy), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"io_fpu_illegal_rm", &(TOP__Rocket.io_fpu_illegal_rm), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"io_fpu_nack_mem", &(TOP__Rocket.io_fpu_nack_mem), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_Rocket.varInsert(__Vfinal,"io_fpu_toint_data", &(TOP__Rocket.io_fpu_toint_data), VLVT_UINT32,VLVD_IN|VLVF_PUB_RW,1 ,31,0);
        __Vscope_Rocket.varInsert(__Vfinal,"reset", &(TOP__Rocket.reset), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_Rocket__ibuf.varInsert(__Vfinal,"nBufValid", &(TOP__Rocket__ibuf.nBufValid), VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_Rocket__ibuf__RVCExpander_1.varInsert(__Vfinal,"io_in", &(TOP__Rocket__ibuf__RVCExpander_1.io_in), VLVT_UINT32,VLVD_IN|VLVF_PUB_RW,1 ,31,0);
        __Vscope_TOP.varInsert(__Vfinal,"clock", &(TOPp->clock), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_TOP.varInsert(__Vfinal,"io_dmem_xcpt_ma_ld", &(TOPp->io_dmem_xcpt_ma_ld), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_TOP.varInsert(__Vfinal,"io_dmem_xcpt_ma_st", &(TOPp->io_dmem_xcpt_ma_st), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_TOP.varInsert(__Vfinal,"io_dmem_xcpt_pf_ld", &(TOPp->io_dmem_xcpt_pf_ld), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_TOP.varInsert(__Vfinal,"io_dmem_xcpt_pf_st", &(TOPp->io_dmem_xcpt_pf_st), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_TOP.varInsert(__Vfinal,"io_fpu_cp_resp_bits_data", &(TOPp->io_fpu_cp_resp_bits_data), VLVT_UINT64,VLVD_IN|VLVF_PUB_RW,1 ,32,0);
        __Vscope_TOP.varInsert(__Vfinal,"io_fpu_cp_resp_valid", &(TOPp->io_fpu_cp_resp_valid), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_TOP.varInsert(__Vfinal,"io_fpu_fcsr_flags_bits", &(TOPp->io_fpu_fcsr_flags_bits), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,1 ,4,0);
        __Vscope_TOP.varInsert(__Vfinal,"io_fpu_fcsr_flags_valid", &(TOPp->io_fpu_fcsr_flags_valid), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_TOP.varInsert(__Vfinal,"io_fpu_fcsr_rdy", &(TOPp->io_fpu_fcsr_rdy), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_TOP.varInsert(__Vfinal,"io_fpu_illegal_rm", &(TOPp->io_fpu_illegal_rm), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_TOP.varInsert(__Vfinal,"io_fpu_nack_mem", &(TOPp->io_fpu_nack_mem), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_TOP.varInsert(__Vfinal,"io_fpu_toint_data", &(TOPp->io_fpu_toint_data), VLVT_UINT32,VLVD_IN|VLVF_PUB_RW,1 ,31,0);
        __Vscope_TOP.varInsert(__Vfinal,"reset", &(TOPp->reset), VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
    }
}
