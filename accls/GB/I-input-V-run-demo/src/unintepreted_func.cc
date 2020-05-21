#include "GBHigh.h"

uint8_t GBHigh::kernel(uint648_t arg_0) {
  uint32_t sum = 0;
  for (int i = 0; i < 648/8; i++) {
    sum += ((uint8_t) (arg_0 >> (i*8))); 
  }
  std::cout << "sum: " << sum << std::endl;
  sum = sum / 81;
  return sum;
}
