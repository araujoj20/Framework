cmake_minimum_required(VERSION 3.12)

project(${PROJECT_NAME})

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_subdirectory(Secure)

add_subdirectory(NonSecure)

add_dependencies(${PROJECT_NAME}_NonSecure ${PROJECT_NAME}_Secure)
