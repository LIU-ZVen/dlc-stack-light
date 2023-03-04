cmake_minimum_required(VERSION 3.22.1)

project(dlc C CXX)

include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/utils.cmake)

add_compile_options(-std=gnu++20)
add_compile_options(-Wall -Werror)
set(CMAKE_BUILD_TYPE "Debug")
set(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -g")
set(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3")

add_executable(${PROJECT_NAME} main.cpp)