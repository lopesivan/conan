cmake_minimum_required(VERSION 3.19)
project(hello C)

set(CMAKE_VERBOSE_MAKEFILE ON)

find_package(gtk REQUIRED)

add_executable(${PROJECT_NAME} src/main.c)
target_link_libraries(${PROJECT_NAME} gtk::gtk)
