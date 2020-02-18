#include "riscvIla.hpp"
#include <ilang/target-sc/ila_sim.h>
using namespace ilang;

int main() {
  // TODO

  riscvILA_user riscvILA(0);
  riscvILA.addInstructions(); // 37 base integer instructions
  SetUnsignedComparison(true);
  IlaSim ila_sim;
  ila_sim.set_instr_lvl_abs(riscvILA.model.get());
  ila_sim.sim_gen("./sim/", false, true, true);

  return 0;
}

