#include <stdlib.h>
#include "verilated.h"
#include "verilated_vcd_c.h"
#include <iostream>
#include <ctime>
#include "VRocket.h"
#include "VRocket_Rocket.h"
#include "VRocket__Dpi.h"
#include "VRocket__Syms.h"


vluint64_t main_time = 0;       // Current simulation time
        // This is a 64-bit integer to reduce wrap over issues and
        // allow modulus.  You can also use a double, if you wish.

double sc_time_stamp () {       // Called by $time in Verilog
  return main_time;           // converts to double, to match
                                        // what SystemC does
}

void print_out(VRocket* cpu) {
    printf ("pc: %ud \n", cpu->Rocket->ibuf_io_pc_o);
    printf ("r1: %ud \n", cpu->Rocket->x1);
    printf ("r2: %ud \n", cpu->Rocket->x2);
    printf ("r3: %ud \n", cpu->Rocket->x3);
    printf ("r4: %ud \n", cpu->Rocket->x4);
    printf ("r5: %ud \n", cpu->Rocket->x5);
    printf ("r6: %ud \n", cpu->Rocket->x6);
    printf ("r7: %ud \n", cpu->Rocket->x7);
    printf ("r8: %ud \n", cpu->Rocket->x8);
    printf ("r9: %ud \n", cpu->Rocket->x9);
    printf ("r10: %ud \n", cpu->Rocket->x10);
    printf ("r11: %ud \n", cpu->Rocket->x11);
    printf ("r12: %ud \n", cpu->Rocket->x12);
    printf ("r13: %ud \n", cpu->Rocket->x13);
    printf ("r14: %ud \n", cpu->Rocket->x14);
    printf ("r15: %ud \n", cpu->Rocket->x15);
    printf ("r16: %ud \n", cpu->Rocket->x16);
    printf ("r17: %ud \n", cpu->Rocket->x17);
    printf ("r18: %ud \n", cpu->Rocket->x18);
    printf ("r19: %ud \n", cpu->Rocket->x19);
    printf ("r20: %ud \n", cpu->Rocket->x20);
    printf ("r21: %ud \n", cpu->Rocket->x21);
    printf ("r22: %ud \n", cpu->Rocket->x22);
    printf ("r23: %ud \n", cpu->Rocket->x23);
    printf ("r24: %ud \n", cpu->Rocket->x24);
    printf ("r25: %ud \n", cpu->Rocket->x25);
    printf ("r26: %ud \n", cpu->Rocket->x26);
    printf ("r27: %ud \n", cpu->Rocket->x27);
    printf ("r28: %ud \n", cpu->Rocket->x28);
    printf ("r29: %ud \n", cpu->Rocket->x29);
    printf ("r30: %ud \n", cpu->Rocket->x30);
    printf ("r31: %ud \n", cpu->Rocket->x31);
}

void next_time_frame(VRocket* cpu, int &time, VerilatedVcdC* tfp) {
    cpu->clock = 0; // OR change this to cpu->riscv->clock and use the RISCV-VLG file's signals. & do for reset too
    cpu->eval();
    time += 5;
    tfp->dump(time);
    cpu->clock = 1;
    cpu->eval();
    time += 5;
    tfp->dump(time);
}

int main(int argc, char **argv) {
    // Initialize Verilators variables
    Verilated::commandArgs(argc, argv);
    Verilated::traceEverOn(true);
    VerilatedVcdC* tfp = new VerilatedVcdC;
    int time = 0;

    // Create an instance of our module under test
    VRocket *tb = new VRocket("top");
    tb->trace(tfp, 99);
    tfp->open("obj_dir/out.vcd");

    // tick the clock until we are done

        print_out(tb);
        tb->reset = 1; // reset the cpu module
        tb->clock = 0;
        tb->eval();
        time += 5;
        tfp->dump(time);
        tb->clock = 1;
        tb->eval();
        time += 5;
        tfp->dump(time);
        tb->clock = 0;
        tb->eval();
        time += 5;
        tfp->dump(time);
        tb->clock = 1;
        tb->eval();
        time += 5;
        tfp->dump(time);

        tb->clock = 1;
        tb->eval();
        time += 5;
        tfp->dump(time);
        tb->reset = 0;

        
        for (int i = 0; i < 10; i++) {
            next_time_frame(tb, time, tfp);
        }

        /*REQUIRED SIGNAL VALUES SET USING RocketFV.v FOR REFERENCE*/
        /*---------------------------------------------------------*/

        /* wires declared WITHIN rocket.v */
        tb->io_hartid = 0;
        tb->io_imem_resp_bits_mask = 3;
        tb->io_imem_resp_bits_xcpt_if = 0;
        tb->io_rocc_fpu_resp_ready = 0;
        tb->io_rocc_fpu_req_valid = 0;
        tb->io_rocc_autl_grant_ready = 1;
        tb->io_rocc_autl_acquire_bits_is_builtin_type = 1;
        tb->io_rocc_autl_acquire_bits_client_xact_id = 0;
        tb->io_rocc_autl_acquire_valid = 0;
        tb->io_rocc_busy = 0;
        tb->io_rocc_interrupt = 0;
        tb->io_rocc_mem_invalidate_lr = 1;
        tb->io_rocc_mem_s1_kill = 0;
        tb->io_rocc_mem_req_valid = 0;
        tb->io_rocc_resp_valid = 0;
        tb->io_rocc_cmd_ready = 0;

        /* wires declared WITHIN the module declaration of Rocket */
        tb->io_dmem_xcpt_ma_ld = 0;
        tb->io_dmem_xcpt_ma_st = 0;
        tb->io_dmem_xcpt_pf_ld = 0;
        tb->io_dmem_xcpt_pf_st = 0;
        tb->io_fpu_cp_resp_valid = 0;
        tb->io_fpu_cp_resp_bits_data = 0;
        tb->io_fpu_fcsr_rdy = 1;
        tb->io_fpu_nack_mem = 0;
        tb->io_fpu_illegal_rm = 0;
        tb->io_fpu_fcsr_flags_valid = 0;
        tb->io_fpu_fcsr_flags_bits = 0;
        tb->io_fpu_toint_data = 0;

        tb->ibuf->RVCExpander_1->io_in = 0x00100113;
        for (int i = 0; i < 100; i++) {
            next_time_frame(tb, time, tfp);
        }
        
        print_out(tb);
        tfp->close();
}
