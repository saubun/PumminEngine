cmake_minimum_required(VERSION 3.8.0)
project(PumminEngine VERSION 0.1.0)

add_executable(PumminEngine src/main.cpp)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
