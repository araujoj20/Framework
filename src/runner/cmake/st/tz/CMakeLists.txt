cmake_minimum_required(VERSION 3.12)

option(ENABLE_TRUSTZONE "Enable TrustZone support" ON)

project(${PROJECT_NAME})

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

add_subdirectory(Secure)

add_subdirectory(NonSecure)

add_dependencies(${PROJECT_NAME}_NonSecure ${PROJECT_NAME}_Secure)
