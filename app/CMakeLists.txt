cmake_minimum_required(VERSION 3.10.2)

project(skeleton-project)

set(CMAKE_CXX_STANDARD 20)

set(INCLUDE_DIRS include)
set(SOURCE_FILES src/main.cpp)

add_executable(hello ${SOURCE_FILES})
target_compile_options(hello PRIVATE -Wall -Werror)
target_include_directories(hello PRIVATE ${INCLUDE_DIRS})

