cmake_minimum_required(VERSION 3.8)
project(cmake_tandem)

set(CMAKE_BUILD_TYPE Debug)

find_package(verilator)
if (NOT verilator_FOUND)
  message(FATAL_ERROR "Verilator was not found.")
endif()
find_package(nlohmann_json 3.2.0 REQUIRED)


add_subdirectory(src)

add_executable(tandem-gb-exe app/tandem-gb.cc)
target_link_libraries(tandem-gb-exe PUBLIC src)
target_link_libraries(tandem-gb-exe PRIVATE nlohmann_json::nlohmann_json)
target_include_directories(tandem-gb-exe PUBLIC
                           "${PROJECT_SOURCE_DIR}/include"
                           "${PROJECT_SOURCE_DIR}/src")
verilate(tandem-gb-exe
  VERILATOR_ARGS -Wno-lint -Wno-fatal -Wno-style
  INCLUDE_DIRS "./verilog"
  SOURCES ./verilog/hls_target.v
)
