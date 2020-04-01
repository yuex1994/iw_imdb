#include <stdlib.h>
#include "VmkCPU.h"
#include "verilated.h"
#include "verilated_vcd_c.h"
#include <iostream>
#include <ctime>

vluint64_t main_time = 0;       // Current simulation time
        // This is a 64-bit integer to reduce wrap over issues and
        // allow modulus.  You can also use a double, if you wish.

double sc_time_stamp () {       // Called by $time in Verilog
  return main_time;           // converts to double, to match
                                        // what SystemC does
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
    tb->RST_N = 0;
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
	
    std::clock_t start;
    double duration;

    start = std::clock();

    for (int i = 0; i < 10000; i++) {
    next_time_frame(tb, time, tfp);
    next_time_frame(tb, time, tfp);
    tb->imem_master_arready = 1;
    tb->imem_master_rdata = 0x00110113; 
    next_time_frame(tb, time, tfp);
    tb->imem_master_arready = 0; 
    next_time_frame(tb, time, tfp);

    next_time_frame(tb, time, tfp);
    tb->imem_master_rdata = 0x00210113;
    tb->imem_master_arready = 1;
    next_time_frame(tb, time, tfp);
    tb->imem_master_arready = 0;
    next_time_frame(tb, time, tfp);
    next_time_frame(tb, time, tfp);
    next_time_frame(tb, time, tfp);
    next_time_frame(tb, time, tfp);
    next_time_frame(tb, time, tfp);
    next_time_frame(tb, time, tfp);
    }

    duration = (std::clock()-start)/(double) CLOCKS_PER_SEC;
    std::cout<<"Time taken is "<<duration<<'\n';
    tfp->close();
}

