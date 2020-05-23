cmake_minimum_required(VERSION 3.8)
project(cmake_tandem)

set(CMAKE_BUILD_TYPE Debug)

find_package(verilator)
if (NOT verilator_FOUND)
  message(FATAL_ERROR "Verilator was not found.")
endif()

add_subdirectory(src)

add_executable(tandem-piccolo-exe app/tandem-piccolo.cc)
target_link_libraries(tandem-piccolo-exe PUBLIC src)
target_include_directories(tandem-piccolo-exe PUBLIC
                           "${PROJECT_SOURCE_DIR}/include"
                           "${PROJECT_SOURCE_DIR}/src")

verilate(tandem-piccolo-exe 
  VERILATOR_ARGS -Wno-lint -Wno-fatal -Wno-style --trace
  INCLUDE_DIRS "./verilog"
  SOURCES ./verilog/mkCPU.v)
