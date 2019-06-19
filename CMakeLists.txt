cmake_minimum_required(VERSION 3.12)

include(cmake/CMakeModulePaths.cmake)
include(DefaultCMakeBuildSettings)

project(
    fast_crc_32
    VERSION 1.0.0
    DESCRIPTION "FastCRC32 library"
    HOMEPAGE_URL "https://create.stephan-brumme.com/crc32"
)

set(WARNINGS_AS_ERROR FALSE)
set(exportname FastCRC32)

add_library(${PROJECT_NAME})

target_sources(${PROJECT_NAME}
    PRIVATE
        Crc32.cpp
)

list(APPEND PUBLIC_HEADERS
    "${CMAKE_CURRENT_SOURCE_DIR}/Crc32.h"
)

target_include_directories(${PROJECT_NAME}
    PUBLIC
        $<INSTALL_INTERFACE:include/${PROJECT_NAME}>
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
)

# Set default target options
include(DefaultTargetCompileOptions)
include(TestIncludes)
include(AnalyzerIncludes)
include(DefaultLibraryInstallOptions)
include(DefaultTargetOptions)
include(DefaultPackageSettings)
