cmake_minimum_required(VERSION 3.8)
project(cmake_tandem)

set(CMAKE_BUILD_TYPE Debug)
set(verilator_DIR  /root/workspace/verilator/)

find_package(verilator)
if (NOT verilator_FOUND)
  message(FATAL_ERROR "Verilator was not found.")
endif()

add_subdirectory(src)

add_executable(tandem-rocket-exe app/tandem-rocket.cc)
target_link_libraries(tandem-rocket-exe PUBLIC src)
target_include_directories(tandem-rocket-exe PUBLIC
                           "${PROJECT_SOURCE_DIR}/include"
                           "${PROJECT_SOURCE_DIR}/src")

verilate(tandem-rocket-exe 
  VERILATOR_ARGS -Wno-lint -Wno-fatal -Wno-style --trace --top-module Rocket
  INCLUDE_DIRS "./verilog"
  SOURCES ./verilog/Rocket.v)
