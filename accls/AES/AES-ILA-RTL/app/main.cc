#include <aes_128.h>
#include <aes_ila.h>
#include <ilang/target-sc/ila_sim.h>

int main(int argc, char **argv) {
  // extract the configurations

  // build the aes model
  AES aes_ila_model;
  IlaSim ila_sim;
  ila_sim.set_instr_lvl_abs(aes_ila_model.model.get());
  ila_sim.sim_gen("./sim/", false, true, true);
  // build the aes128 model
  // verify separately the hierarchical ILA
  // from IO level down to the AES 128 function

  return 0;
}



