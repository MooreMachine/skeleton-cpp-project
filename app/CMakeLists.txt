cmake_minimum_required(VERSION 3.10.2)

project(skeleton-project)

set(CMAKE_CXX_STANDARD 17)

# Prepare GoogleTest
set(INSTALL_GTEST OFF)
add_subdirectory(googletest)

# Define files
set(INCLUDE_DIRS include)
set(SOURCE_FILES src/messages.cpp)

# Create library
add_library(hellolib ${SOURCE_FILES})
target_compile_options(hellolib PRIVATE -Wall -Werror -Wextra -pedantic)

# Create application
add_executable(helloapp src/main.cpp)
target_include_directories(helloapp PRIVATE ${INCLUDE_DIRS})
target_link_libraries(helloapp hellolib)
target_compile_options(helloapp PRIVATE -Wall -Werror -Wextra -pedantic)

# Define test files
set(TEST_FILES  tests/main_test.cpp)

# Create unit tests
add_executable(hellotest ${TEST_FILES})
target_include_directories(hellotest PRIVATE ${INCLUDE_DIRS})
target_link_libraries(hellotest gtest hellolib)
target_compile_options(hellotest PRIVATE -Wall -Werror -Wextra -pedantic)
