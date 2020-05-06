cmake_minimum_required(VERSION 3.8)
project(cmake_tandem)

set(CMAKE_BUILD_TYPE Debug)

find_package(verilator)
if (NOT verilator_FOUND)
  message(FATAL_ERROR "Verilator was not found.")
endif()

add_subdirectory(src)

add_executable(tandem-aes-exe app/tandem-aes.cc)
target_link_libraries(tandem-aes-exe PUBLIC src)
target_include_directories(tandem-aes-exe PUBLIC
                           "${PROJECT_SOURCE_DIR}/include"
                           "${PROJECT_SOURCE_DIR}/src")

verilate(tandem-aes-exe 
  INCLUDE_DIRS "./verilog"
  SOURCES ./verilog/aes_top.v)
      

