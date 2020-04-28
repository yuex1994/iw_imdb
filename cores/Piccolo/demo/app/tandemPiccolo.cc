#include <stdlib.h>
#include "VmkCPU.h"
#include "VmkCPU_mkCPU.h"
#include "VmkCPU_mkGPR_RegFile.h"
#include "VmkCPU_RegFile__A5_D20_L0_H1f.h"
#include "VmkCPU_mkNear_Mem.h"
#include "verilated.h"
#include "verilated_vcd_c.h"
#include <iostream>
#include <ctime>
#include "riscv.h"
#include <queue>

vluint64_t main_time = 0;       // Current simulation time
        // This is a 64-bit integer to reduce wrap over issues and
        // allow modulus.  You can also use a double, if you wish.

int position_of_first_instruction; // PC position of the first instruction in virtual instruction memory

double sc_time_stamp () {       // Called by $time in Verilog
  return main_time;           // converts to double, to match
                                        // what SystemC does
}

void print_out(VmkCPU* cpu) {
  printf ("pc: %ud \n", cpu->mkCPU->near_mem->imem_pc);
  printf ("r1: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[1]);
  printf ("r2: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[2]);
  printf ("r3: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[3]);
  printf ("r4: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[4]);
  printf ("r5: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[5]);
  printf ("r6: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[6]);
  printf ("r7: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[7]);
  printf ("r8: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[8]);
  printf ("r9: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[9]);
  printf ("r10: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[10]);
  printf ("r11: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[11]);
  printf ("r12: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[12]);
  printf ("r13: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[13]);
  printf ("r14: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[14]);
  printf ("r15: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[15]);
  printf ("r16: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[16]);
  printf ("r17: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[17]);
  printf ("r18: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[18]);
  printf ("r19: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[19]);
  printf ("r20: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[20]);
  printf ("r21: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[21]);
  printf ("r22: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[22]);
  printf ("r23: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[23]);
  printf ("r24: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[24]);
  printf ("r25: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[25]);
  printf ("r26: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[26]);
  printf ("r27: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[27]);
  printf ("r28: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[28]);
  printf ("r29: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[29]);
  printf ("r30: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[30]);
  printf ("r31: %ud \n", cpu->mkCPU->gpr_regfile->regfile->arr[31]);

  printf("instr: %ud \n", cpu->mkCPU->near_mem->imem_instr);
  printf("imem_req_addr: %lud \n", cpu->imem_master_araddr);
  printf("imem_arvalid: %lud \n", cpu->imem_master_arvalid);
  printf("imem_rready: %lud \n", cpu->imem_master_rready);
}

void next_time_frame(VmkCPU* cpu, int &time, VerilatedVcdC* tfp) {
    cpu->CLK = 0;
    cpu->eval();
    time += 5;
    tfp->dump(time);
    cpu->CLK = 1;
    cpu->eval(); 
    time += 5;
    tfp->dump(time);
}

#define regfile cpu->mkCPU->gpr_regfile->regfile->arr
#define rtl_pc cpu->mkCPU->near_mem->imem_pc

// signals checked in mem_valid still need to be declared 'verilator public' in original Verilog right now
bool check_state_valid(VmkCPU* cpu, riscv ila_) {
    bool reg_valid; 
    bool mem_valid;
    bool pc_valid;
    reg_valid = (ila_.riscv_x0 == regfile[0]) || (ila_.riscv_x1 == regfile[1]) || (ila_.riscv_x2 == regfile[2]) || (ila_.riscv_x3 == regfile[3]) ||
                (ila_.riscv_x4 == regfile[4]) || (ila_.riscv_x5 == regfile[5]) || (ila_.riscv_x6 == regfile[6]) || (ila_.riscv_x7 == regfile[7]) ||
                (ila_.riscv_x8 == regfile[8]) || (ila_.riscv_x9 == regfile[9]) || (ila_.riscv_x10 == regfile[10]) || (ila_.riscv_x11 == regfile[11]) ||
                (ila_.riscv_x12 == regfile[12]) || (ila_.riscv_x13 == regfile[13]) || (ila_.riscv_x14 == regfile[14]) || (ila_.riscv_x15 == regfile[15]) ||
                (ila_.riscv_x16 == regfile[16]) || (ila_.riscv_x17 == regfile[17]) || (ila_.riscv_x18 == regfile[18]) || (ila_.riscv_x19 == regfile[19]) ||
                (ila_.riscv_x20 == regfile[20]) || (ila_.riscv_x21 == regfile[21]) || (ila_.riscv_x22 == regfile[22]) || (ila_.riscv_x23 == regfile[23]) ||
                (ila_.riscv_x24 == regfile[24]) || (ila_.riscv_x25 == regfile[25]) || (ila_.riscv_x26 == regfile[26]) || (ila_.riscv_x27 == regfile[27]) ||
                (ila_.riscv_x28 == regfile[28]) || (ila_.riscv_x29 == regfile[29]) || (ila_.riscv_x30 == regfile[30]) || (ila_.riscv_x31 == regfile[31]);
    mem_valid = (ila_.riscv_ren == cpu->mkCPU->monitor_s2 && cpu->mkCPU->near_mem$dmem_valid) || (ila_.riscv_raddr == cpu->mkCPU->near_mem$dmem_req_addr) ||
                (ila_.riscv_rdata == cpu->mkCPU->near_mem$dmem_word64) || (ila_.riscv_wen == (cpu->mkCPU->monitor_s2 && cpu->mkCPU->near_mem$dmem_req_op != 0)) ||
                (ila_.riscv_waddr == cpu->mkCPU->near_mem$dmem_req_addr);
    pc_valid = (ila_.riscv_pc == rtl_pc);
    return (reg_valid || mem_valid || pc_valid);    
}

int get_instruction(int pc) {
   if (pc == position_of_first_instruction)               return 0x00A00313; // r6 = 10
   else if (pc == (position_of_first_instruction + 4))    return 0x00110113; // r2++;
   else if (pc == (position_of_first_instruction + 8))    return 0x00128293; // update reg 5
   else if (pc == (position_of_first_instruction + 12))   return 0xFE62C8E3; // branch pc to (pc - 8)
   
   else return 0x00000000; /* halt when instruction sequence has completed */
}

int main(int argc, char **argv) {
  // Initialize Verilators variables
  Verilated::commandArgs(argc, argv);
  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  int time = 0;

  // Create an instance of our module under test
  VmkCPU *tb = new VmkCPU("top");
  tb->trace(tfp, 99);
  tfp->open("obj_dir/out.vcd");

  // Tick the clock until we are done
  print_out(tb);
    tb->RST_N = 0;
    tb->m_external_interrupt_req_set_not_clear = 0;
    tb->s_external_interrupt_req_set_not_clear = 0;
    tb->software_interrupt_req_set_not_clear = 0;
    tb->timer_interrupt_req_set_not_clear = 0;
    tb->nmi_req_set_not_clear = 0;
    tb->CLK = 0;
    tb->eval();
    time += 5;
    tfp->dump(time);
    tb->CLK = 1;
    tb->eval(); 
    time += 5;
    tfp->dump(time);
    tb->CLK = 0;
    tb->eval();
    time += 5;
    tfp->dump(time);
    tb->RST_N = 0; 
    tb->eval();
    time += 5;
    tfp->dump(time);
    tb->CLK = 1;
    tb->eval(); 
    time += 5;
    tfp->dump(time);
    tb->RST_N = 1;
    tb->eval();
    time += 5;
    tfp->dump(time);

    next_time_frame(tb, time, tfp);

    next_time_frame(tb, time, tfp);

    tb->hart0_server_reset_request_put = 1;
    tb->EN_hart0_server_reset_request_put = 1;
    next_time_frame(tb, time, tfp);
    tb->EN_hart0_server_reset_request_put = 0;

    // Set up the ILA environment
    riscv ila_;
    ila_.riscv_pc = 0x00001000;                     // initial value of the PC
    uint32_t ila_instr;

    // Set up the RTL environment
    int rtl_instr;                                  // instruction fed into the RTL simulation
    
    position_of_first_instruction = tb->mkCPU->near_mem->imem_pc;
    int position = position_of_first_instruction;
    
    tb->prob_imem_instr = 0x00008093;               // add 0 to r1, just so RTL does not trap when it approaches end_of_pipeline == 1

    while (!(tb->mkCPU->end_of_pipeline)){
	    next_time_frame(tb, time, tfp);
    }
        
    std::queue<int> fetchedQueue;
    std::queue<bool> sim_validity;
 
    while (!testVector.empty() || !fetchedQueue.empty()) {
        rtl_instr = get_instruction(position);
        tb->prob_imem_instr = rtl_instr;            // Fetch instruction map
        fetchedQueue.push(rtl_instr);
        if (tb->mkCPU->rg_retiring$EN) {             
            ila_instr = fetchedQueue.pop();
            ila_.riscv_mem[ila_.riscv_pc] = ila_instr; // Insert the instruction at the imem point indexed by the PC?
            ila_.compute();
           // bool check = check_state_valid(i, v); 
           // sim_validity.push(check);               // Collecting validity checks for each time             
        }
        position = tb->mkCPU->near_mem->imem_pc;
        next_time_frame(tb, time, tfp);
    }

    print_out(tb);
#undef regfile
#undef rtl_pc
    tfp->close();
    }
