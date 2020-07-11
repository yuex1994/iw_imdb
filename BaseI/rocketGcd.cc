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

int start_position;         // First position of an instruction pointed to by the PC.
bool gcd_complete;           // Signal showing final value of gcd written to register.

double sc_time_stamp () {       // Called by $time in Verilog
  return main_time;           // converts to double, to match
                                        // what SystemC does
}

void print_out(VRocket* cpu) {
    printf ("pc: %ud \n", cpu->riscv->pc);
    printf ("r1: %ud \n", cpu->riscv->x1);
    printf ("r2: %ud \n", cpu->riscv->x2);
    printf ("r3: %ud \n", cpu->riscv->x3);
    printf ("r4: %ud \n", cpu->riscv->x4);
    printf ("r5: %ud \n", cpu->riscv->x5);
    printf ("r6: %ud \n", cpu->riscv->x6);
    printf ("r7: %ud \n", cpu->riscv->x7);
    printf ("r8: %ud \n", cpu->riscv->x8);
    printf ("r9: %ud \n", cpu->riscv->x9);
    printf ("r10: %ud \n", cpu->riscv->x10);
    printf ("r11: %ud \n", cpu->riscv->x11);
    printf ("r12: %ud \n", cpu->riscv->x12);
    printf ("r13: %ud \n", cpu->riscv->x13);
    printf ("r14: %ud \n", cpu->riscv->x14);
    printf ("r15: %ud \n", cpu->riscv->x15);
    printf ("r16: %ud \n", cpu->riscv->x16);
    printf ("r17: %ud \n", cpu->riscv->x17);
    printf ("r18: %ud \n", cpu->riscv->x18);
    printf ("r19: %ud \n", cpu->riscv->x19);
    printf ("r20: %ud \n", cpu->riscv->x20);
    printf ("r21: %ud \n", cpu->riscv->x21);
    printf ("r22: %ud \n", cpu->riscv->x22);
    printf ("r23: %ud \n", cpu->riscv->x23);
    printf ("r24: %ud \n", cpu->riscv->x24);
    printf ("r25: %ud \n", cpu->riscv->x25);
    printf ("r26: %ud \n", cpu->riscv->x26);
    printf ("r27: %ud \n", cpu->riscv->x27);
    printf ("r28: %ud \n", cpu->riscv->x28);
    printf ("r29: %ud \n", cpu->riscv->x29);
    printf ("r30: %ud \n", cpu->riscv->x30);
    printf ("r31: %ud \n", cpu->riscv->x31);
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

int get_instruction(int pc, int b) {
    if ((pc == start_position) && (b != 0)) return 0x00000263; // pc = pc + 4
    else if (pc == start_position + 4) return 0x000100B3; // r1 = r2
    else if (pc == start_position + 8) return 0x0220E133; // r2 = r1 % r2
    else if (pc == start_position + 12) return 0xFE004AE3; // pc = pc - 12
    else {
        gcd_complete = true;
        return 0x00000013; /* r0 = r0 + 0 */
    }
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
        tb->csr_io_hartid = 0;
        tb->ibuf_io_imem_bits_mask = 3;
        tb->io_imem_bits_xcpt_if = 0;
        tb->csr_io_rocc_fpu_resp_ready = 0;
        tb->csr_io_rocc_fpu_req_valid = 0;
        tb->csr_io_rocc_autl_grant_ready = 1;
        tb->csr_io_rocc_autl_acquire_bits_is_builtin_type = 1;
        tb->csr_io_rocc_autl_acquire_bits_client_xact_id = 0;
        tb->csr_io_rocc_autl_acquire_valid = 0;
        tb->csr_io_rocc_busy = 0;
        tb->csr_io_rocc_interrupt = 0;
        tb->csr_io_rocc_mem_invalidate_lr = 1;
        tb->csr_io_rocc_mem_s1_kill = 0;
        tb->csr_io_rocc_mem_req_valid = 0;
        tb->csr_io_rocc_resp_valid = 0;
        tb->csr_io_rocc_cmd_ready = 0;

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

        /* Set up variables */
        start_position = tb->riscv->pc;
        int position = start_position;
        tb->riscv->r1 = 39;
        tb->riscv->r2 = 1300;
        op_complete = false;
    
        while (op_complete != true) {
        tb->riscv->mem_rdata_0 = get_instruction(position, tb->riscv->r2);
        next_time_frame(tb, time, tfp);
        position = tb->riscv->pc;
        }

        print_out(tb);
        tfp->close();
}
    