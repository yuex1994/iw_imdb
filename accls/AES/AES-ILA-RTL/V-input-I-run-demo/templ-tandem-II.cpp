// Include Ilated Model

// Include library
#include <fstream>
#include <iostream>

class Ilated;
// Decl
void i_input(Ilated* i, uint32_t test_input);
void next_instr(Ilated* i);

int main(int argc, char **argv) {
  // Instantiate Model -- i
  Ilated* i;
  // Initialize Model -- i

  // Initialize Implementation -- v

  // tmps
  
  // TODO(yuex): see if we want to use csv for tv.
  if (argc < 2) 
    std::cout << "Need test-vector input." << std::endl;
  std::ifstream tv_file;
  tv_file.open(argv[1]);

  std::vector<uint32_t> tv;
  std::string tv_input;
  // tb load
  // std::vector<std::vector<uint32_t>> tv;
  while (getline(tv_file, tv_input)) {
    tv.push_back(std::stoul(tv_input));
  }
  for (auto t : tv) {
    i_input(i, *t);
    next_instr(i);
  }
}  
  
  

