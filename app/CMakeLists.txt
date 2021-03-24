cmake_minimum_required(VERSION 3.10.2)

project(skeleton-project)

set(CMAKE_CXX_STANDARD 17)

set(INSTALL_GTEST OFF)
add_subdirectory(googletest)

set(INCLUDE_DIRS include)
set(SOURCE_FILES src/messages.cpp)

add_library(hellolib ${SOURCE_FILES})
target_compile_options(hellolib PRIVATE -Wall -Werror)
target_include_directories(hellolib PRIVATE ${INCLUDE_DIRS})

add_executable(helloapp src/main.cpp)
target_link_libraries(helloapp hellolib)

set(TEST_FILES  tests/main_test.cpp
                ${SOURCE_FILES})

add_executable(hellotest ${TEST_FILES})
target_link_libraries(hellotest gtest hellolib)
target_include_directories(hellotest PRIVATE ${INCLUDE_DIRS})
