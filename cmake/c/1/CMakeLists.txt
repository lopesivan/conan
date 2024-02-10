cmake_minimum_required(VERSION 3.19)
project(hello C)

set(CMAKE_VERBOSE_MAKEFILE ON)

add_executable(${PROJECT_NAME} src/main.c)
