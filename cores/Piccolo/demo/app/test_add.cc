#include "riscv.h"
#include <stdlib.h>
#include <iostream>
#include <ctime>
#include <iostream>
#include <ctime>
#include <fstream>
#include <string>
#include <iomanip>
#include <sstream>

int main() {
  riscv ila_;
  ila_.riscv_pc = 0;
  ila_.riscv_x0 = 0;
  ila_.riscv_x1 = 1;
  ila_.riscv_x2 = 2;
  ila_.riscv_x3 = 3;
  ila_.riscv_x4 = 4;
  ila_.riscv_x5 = 0;   /* for blt instruction */
  ila_.riscv_x6 = 100; /* for blt instruction */
  ila_.riscv_x7 = 7;

  std::clock_t start;
  double duration;

  start = std::clock();

  ila_.riscv_pc = 0x00001000;
  ila_.riscv_mem[ila_.riscv_pc] = 0x00110113; // ADDI
  ila_.riscv_mem[ila_.riscv_pc+4] = 0xFE62CEE3; // BLT to ADDI instruction's position

  //TODO pc value stays the same despite several calls to compute()

  for (int i = 0; i < 100; i++) {
  uint32_t inst = 0x00110113;
  ila_.compute();
  std::cout << ila_.riscv_pc << std::endl; // PC remains the same value despite compute() being called several times.
  }

  duration = (std::clock()-start)/(double) CLOCKS_PER_SEC;
  std::cout<<"Time taken is "<<duration<<'\n';
  std::cout << ila_.riscv_x0 << std::endl;
  std::cout << ila_.riscv_x1 << std::endl;
  std::cout << ila_.riscv_x2 << std::endl;
  std::cout << ila_.riscv_pc << std::endl;

   ofstream myfile;
    myfile.open ("rtl_vars.txt");
    if (myfile.is_open()) {
        myfile << ila_.riscv_pc; // write final state of pc
        myfile << ila_.riscv_x0;
        myfile << ila_.riscv_x1;
        myfile << ila_.riscv_x2;
        myfile << ila_.riscv_x3;
        myfile << ila_.riscv_x4;
        myfile << ila_.riscv_x5;
        myfile << ila_.riscv_x6;
        myfile << ila_.riscv_x7;
        myfile << ila_.riscv_x8;
        myfile << ila_.riscv_x9;
        myfile << ila_.riscv_x10;
        myfile << ila_.riscv_x11;
        myfile << ila_.riscv_x12;
        myfile << ila_.riscv_x13;
        myfile << ila_.riscv_x14;
        myfile << ila_.riscv_x15;
        myfile << ila_.riscv_x16;
        myfile << ila_.riscv_x17;
        myfile << ila_.riscv_x18;
        myfile << ila_.riscv_x19;
        myfile << ila_.riscv_x20;
        myfile << ila_.riscv_x21;
        myfile << ila_.riscv_x22;
        myfile << ila_.riscv_x23;
        myfile << ila_.riscv_x24;
        myfile << ila_.riscv_x25;
        myfile << ila_.riscv_x26;
        myfile << ila_.riscv_x27;
        myfile << ila_.riscv_x28;
        myfile << ila_.riscv_x29;
        myfile << ila_.riscv_x30;
        myfile << ila_.riscv_x31;

        /* for (int i = 0; i < 16834; i++)
        myfile << ila_.riscv_mem[i];
          */
    }
    else {
        printf("output file error\n");
    }
    myfile.close();
  return 0;
}
