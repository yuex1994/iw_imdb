cmake_minimum_required(VERSION 3.8)
project(cmake_tandem)

set(CMAKE_BUILD_TYPE Debug)

find_package(verilator)
if (NOT verilator_FOUND)
  message(FATAL_ERROR "Verilator was not found.")
endif()

add_subdirectory(src)

add_executable(tandem-pico-exe app/tandem-pico-v-instrmem.cc)
target_link_libraries(tandem-pico-exe PUBLIC src)
target_include_directories(tandem-pico-exe PUBLIC
                           "${PROJECT_SOURCE_DIR}/include"
                           "${PROJECT_SOURCE_DIR}/src")

verilate(tandem-pico-exe 
  INCLUDE_DIRS "./verilog"
  SOURCES ./verilog/picorv32_simple.v)
      

