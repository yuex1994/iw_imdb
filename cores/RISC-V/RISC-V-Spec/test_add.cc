#include "riscv.h"

int main() {
  riscv ila_;
  ila_.riscv_pc = 0;
  ila_.riscv_x0 = 0;
  ila_.riscv_x1 = 1;
  ila_.riscv_x2 = 2;
  ila_.riscv_x3 = 3;
  ila_.riscv_x4 = 4;
  ila_.riscv_x5 = 5;
  ila_.riscv_x6 = 6;
  ila_.riscv_x7 = 7; 
  uint32_t inst = 0x00100133; 
  ila_.riscv_mem[0] = inst; 
  ila_.compute();
  std::cout << ila_.riscv_x0 << std::endl;
  std::cout << ila_.riscv_x1 << std::endl;
  std::cout << ila_.riscv_x2 << std::endl;

  return 0;
}
