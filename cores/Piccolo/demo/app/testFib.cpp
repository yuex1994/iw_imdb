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
#include <fstream>
#include <string>
#include <iomanip>
#include <sstream>

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

  printf ("instr: %ud \n", cpu->mkCPU->near_mem->imem_instr);
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

int get_instruction(int pc) {
   if (pc == position_of_first_instruction)             return 0x000100B3;
   else if (pc == (position_of_first_instruction+4))    return 0x00018133;
   else if (pc == (position_of_first_instruction+8))    return 0x002081B3;
   else if (pc == (position_of_first_instruction+12))   return 0xFE62CAE3; /* calculated instruction to branch to pc + offset where offset = -12. */
   else return 0x00000000; /* instruction to halt when the sequence of instruction has finished executing */
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

    // Fibonacci using space optimized method in CPU module registers.

    tb->mkCPU->gpr_regfile->regfile->arr[1] = 0; /* first fibonacci number */
    tb->mkCPU->gpr_regfile->regfile->arr[2] = 1; /* second fibonacci number */

    std::clock_t start;
    double duration;

    start = std::clock();
    int timeToSetUp = 0;
    int fibonacci = 6;

    tb->prob_imem_instr = 0x002081B3;

    while (!(tb->mkCPU->end_of_pipeline)){
	next_time_frame(tb, time, tfp);
    }

    position_of_first_instruction = tb->mkCPU->near_mem->imem_pc;    // get the instruction of the address
                                                                        // that virtually points to the first instruction of the fibonacci logic
    int position = position_of_first_instruction;
    tb->mkCPU->gpr_regfile->regfile->arr[6] = fibonacci * 4;

    for (int i = (2 * 4); i < (fibonacci * 4); i++) {
        tb->prob_imem_instr = get_instruction(position);
        next_time_frame(tb, time, tfp);
        position = tb->mkCPU->near_mem->imem_pc;
        tb->mkCPU->gpr_regfile->regfile->arr[5] = i;
    }

    duration = (std::clock()-start)/(double) CLOCKS_PER_SEC;
    print_out(tb);
    std::cout<<"Time taken is "<<duration<<'\n';
    std::cout<<"Times the loop runs "<<timeToSetUp<<'\n';
    printf("%x instruction at exit", tb->prob_imem_instr);
    printf("\n %x PC position of first instruction in the sequence", position_of_first_instruction);

    // collecting all variable fields of the simulation
    ofstream myfile;
    myfile.open ("rtl_vars.txt");
    if (myfile.is_open()) {
	myfile << tb->mkCPU->near_mem->imem_pc; // write final state of pc
	for (int i = 0; i < 32; i++) {
	myfile << cpu->mkCPU->gpr_regfile->regfile->arr[i]; // write final state of registers 
	}
	// TODO collect the values of memory from the RTL implementation
    }   
    else {
	printf("output file error\n");
    }
    myfile.close();
    tfp->close();
    }
