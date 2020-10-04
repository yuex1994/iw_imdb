cmake_minimum_required(VERSION 3.8)
project(cmake_tandem)
set(CMAKE_CXX_FLAGS -O3)

set(CMAKE_BUILD_TYPE Debug)

find_package(verilator)
if (NOT verilator_FOUND)
  message(FATAL_ERROR "Verilator was not found.")
endif()


# add_subdirectory(src)
AUX_SOURCE_DIRECTORY(./src/ SIM_FILES)
add_library(aes_src ${SIM_FILES})

target_include_directories(aes_src PUBLIC
                           "${PROJECT_SOURCE_DIR}/include")


add_executable(tandem-aes-exe app/tandem-aes.cc)
target_link_libraries(tandem-aes-exe PUBLIC aes_src)
target_include_directories(tandem-aes-exe PUBLIC
                           "${PROJECT_SOURCE_DIR}/include")

# verilate(tandem-aes-exe 
#  INCLUDE_DIRS "./verilog"
#  SOURCES ./verilog/aes_top.v
#  VERILATOR_ARGS --timescale "1ns/10ps"
# )

verilate(aes_src 
  INCLUDE_DIRS "./verilog"
  SOURCES ./verilog/aes_top.v
  VERILATOR_ARGS --timescale "1ns/10ps"
)