cmake_minimum_required(VERSION 3.8)
project(cmake_tandem)

set(CMAKE_BUILD_TYPE Debug)

find_package(verilator)
if (NOT verilator_FOUND)
  message(FATAL_ERROR "Verilator was not found.")
endif()

add_subdirectory(src)

add_executable(tandemPiccolo-exe app/tandemPiccolo.cc)
target_link_libraries(tandemPiccolo-exe PUBLIC src)
target_include_directories(tandemPiccolo-exe PUBLIC
                           "${PROJECT_SOURCE_DIR}/include"
                           "${PROJECT_SOURCE_DIR}/src")

verilate(tandemPiccolo-exe
  INCLUDE_DIRS "./verilog"
  VERILATOR_ARGS -Wno-fatal
  SOURCES ./verilog/mkCPU.v)
