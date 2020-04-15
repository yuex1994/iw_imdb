#include <stdlib.h>
#include "Vtestbench_ez.h"
#include "Vtestbench_ez_picorv32_simple.h"
#include "Vtestbench_ez_testbench.h"
#include "verilated.h"
#include "verilated_vcd_c.h"
#include "time.h"

vluint64_t main_time = 0;       // Current simulation time
        // This is a 64-bit integer to reduce wrap over issues and
        // allow modulus.  You can also use a double, if you wish.

double sc_time_stamp () {       // Called by $time in Verilog
  return main_time;           // converts to double, to match
                                        // what SystemC does
}

void print_out(Vtestbench_ez* cpu) {
  printf ("pc: %ud \n", cpu->testbench->uut->reg_pc);
  printf ("r1: %ud \n", cpu->testbench->uut->dbg_reg_x1);
  printf ("r2: %ud \n", cpu->testbench->uut->dbg_reg_x2);
  printf ("r3: %ud \n", cpu->testbench->uut->dbg_reg_x3);
  printf ("r4: %ud \n", cpu->testbench->uut->dbg_reg_x4);
  printf ("r5: %ud \n", cpu->testbench->uut->dbg_reg_x5);
  printf ("r6: %ud \n", cpu->testbench->uut->dbg_reg_x6);
  printf ("r7: %ud \n", cpu->testbench->uut->dbg_reg_x7);
  printf ("r8: %ud \n", cpu->testbench->uut->dbg_reg_x8);
  printf ("r9: %ud \n", cpu->testbench->uut->dbg_reg_x9);
  printf ("r10: %ud \n", cpu->testbench->uut->dbg_reg_x10);
  printf ("r11: %ud \n", cpu->testbench->uut->dbg_reg_x11);
  printf ("r12: %ud \n", cpu->testbench->uut->dbg_reg_x12);
  printf ("r13: %ud \n", cpu->testbench->uut->dbg_reg_x13);
  printf ("r14: %ud \n", cpu->testbench->uut->dbg_reg_x14);
  printf ("r15: %ud \n", cpu->testbench->uut->dbg_reg_x15);
  printf ("r16: %ud \n", cpu->testbench->uut->dbg_reg_x16);
  printf ("r17: %ud \n", cpu->testbench->uut->dbg_reg_x17);
  printf ("r18: %ud \n", cpu->testbench->uut->dbg_reg_x18);
  printf ("r19: %ud \n", cpu->testbench->uut->dbg_reg_x19);
  printf ("r20: %ud \n", cpu->testbench->uut->dbg_reg_x20);
  printf ("r21: %ud \n", cpu->testbench->uut->dbg_reg_x21);
  printf ("r22: %ud \n", cpu->testbench->uut->dbg_reg_x22);
  printf ("r23: %ud \n", cpu->testbench->uut->dbg_reg_x23);
  printf ("r24: %ud \n", cpu->testbench->uut->dbg_reg_x24);
  printf ("r25: %ud \n", cpu->testbench->uut->dbg_reg_x25);
  printf ("r26: %ud \n", cpu->testbench->uut->dbg_reg_x26);
  printf ("r27: %ud \n", cpu->testbench->uut->dbg_reg_x27);
  printf ("r28: %ud \n", cpu->testbench->uut->dbg_reg_x28);
  printf ("r29: %ud \n", cpu->testbench->uut->dbg_reg_x29);
  printf ("r30: %ud \n", cpu->testbench->uut->dbg_reg_x30);
  printf ("r31: %ud \n", cpu->testbench->uut->dbg_reg_x31);

  printf ("instr: %ud \n", cpu->testbench->uut->mem_rdata);
}

void next_time_frame(Vtestbench_ez* cpu, int &time, VerilatedVcdC* tfp) {
    cpu->clk = 0;
    cpu->eval();
    time += 5;
    tfp->dump(time);
    cpu->clk = 1;
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
  Vtestbench_ez *tb = new Vtestbench_ez("top");
  tb->trace(tfp, 99);
  tfp->open("obj_dir/out.vcd");

  // Tick the clock until we are done
  print_out(tb);

  for (int i = 0; i < 32767 * 6; i++) {
    tb->testbench->memory[i] = 0x00110133; 
  }
    tb->testbench->memory[0] = 0x00110133;
    tb->testbench->memory[1] = 0xfe000ee3;
  //  tb->testbench->memory[0] = 0x00110113; 
  //  tb->testbench->memory[1] = 0x00110113; 
  //  tb->testbench->memory[2] = 0x00110113; 
  //  tb->testbench->memory[3] = 0x00110113; 
    tb->testbench->uut->cpuregs[1] = 1;
    tb->resetn = 0;
    tb->clk = 0;
    tb->eval();
    time += 5;
    tfp->dump(time);
    tb->clk = 1;
    tb->eval(); 
    time += 5;
    tfp->dump(time);
    tb->clk = 0;
    tb->eval();
    time += 5;
    tfp->dump(time);
    tb->resetn = 0; 
    tb->eval();
    time += 5;
    tfp->dump(time);
    
    tb->clk = 1;
    tb->eval(); 
    time += 5;
    tfp->dump(time);
    tb->resetn = 1;
    tb->eval();
    time += 5;
    tfp->dump(time);

    next_time_frame(tb, time, tfp);
    next_time_frame(tb, time, tfp);
    //tb->testbench->uut->mem_ready = 1;
    next_time_frame(tb, time, tfp);
    //tb->mem_ready = 0;
    next_time_frame(tb, time, tfp);


    next_time_frame(tb, time, tfp);
    //tb->mem_rdata = 0x00210113;
    //tb->mem_ready = 1;
    next_time_frame(tb, time, tfp);
    //tb->mem_ready = 0;
    next_time_frame(tb, time, tfp);
    next_time_frame(tb, time, tfp);
    next_time_frame(tb, time, tfp);
    next_time_frame(tb, time, tfp);
    next_time_frame(tb, time, tfp);
    next_time_frame(tb, time, tfp);
    clock_t timer = clock();
    for (int i = 0; i < 65535 * 3 * 3; i++)
      next_time_frame(tb, time, tfp);
    printf("%ld time \n", clock() - timer);
    /*
    for (int i = 0; i < 1000; i++) {
      next_time_frame(tb, time, tfp);
    }

    next_time_frame(tb, time, tfp);
    for (int i = 0; i < 100; i++) {
      next_time_frame(tb, time, tfp);
    }*/
    print_out(tb);
    tfp->close();
}
