cmake_minimum_required(VERSION 2.8)

project(mcptt)

include(./cmake/common.cmake)
include(./cmake/custom_cmd.cmake)
include(./cmake/find_3rdparty.cmake)

add_subdirectory(itf)
add_subdirectory(cpp)
