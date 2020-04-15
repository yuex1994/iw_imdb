#include "riscvIla.hpp"
#include <ilang/target-sc/ila_sim.h>
using namespace ilang;

int main() {
  // TODO

  riscvILA_user riscvILA(0);
  riscvILA.addInstructions(); // 37 base integer instructions
  SetUnsignedComparison(true);
  auto model_ptr = riscvILA.model.get();
  auto add_instr = model_ptr->instr(19);
  std::cout << add_instr->name().str() << std::endl;
  for (auto s_name : add_instr->updated_states()) {
    std::cout << s_name << std::endl;
    auto update_func = add_instr->update(s_name);
    if (update_func->is_op()) {
      if (std::dynamic_pointer_cast<ExprOpIte>(update_func)) {
        auto cond = update_func->arg(0);
        auto t_path = update_func->arg(1);
        auto f_path = update_func->arg(2);
        if (std::dynamic_pointer_cast<ExprOpEq>(cond)) {
          std::cout << t_path->name().str() << " is true" << std::endl;
          std::cout << f_path->name().str() << " is false" << std::endl;
        }
      }
    }
  }
  
  IlaSim ila_sim;
  ila_sim.set_instr_lvl_abs(riscvILA.model.get());
  ila_sim.sim_gen("./sim/", false, true, true);

  return 0;
}

