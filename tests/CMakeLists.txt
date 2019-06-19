cmake_minimum_required(VERSION 3.12)

include(DefaultCMakeBuildSettings)

project(
    fast_crc32_tests
    VERSION 1.0.0
    DESCRIPTION "Test application for FastCRC32"
)

add_executable(${PROJECT_NAME})

target_sources(${PROJECT_NAME}
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/../Crc32Test.cpp
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE
        FastCRC32::FastCRC32
)

include(DefaultTargetCompileOptions)
include(DefaultApplicationInstallOptions)
