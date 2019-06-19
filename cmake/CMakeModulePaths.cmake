#Make sure that custom modules are found

set(MODULE_PATH_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../cmake")

if(NOT "${MODULE_PATH_DIR}" IN_LIST CMAKE_MODULE_PATH)
    list(APPEND CMAKE_MODULE_PATH "${MODULE_PATH_DIR}")
endif()
if(NOT "${MODULE_PATH_DIR}/cmake/modules" IN_LIST CMAKE_MODULE_PATH)
    list(APPEND CMAKE_MODULE_PATH "${MODULE_PATH_DIR}/modules")
endif()

if(EXISTS "${MODULE_PATH_DIR}/DefaultCMakeBuildSettings.cmake")
    message(STATUS "Found AppDev CMake Modules")
    set(APPDEV_CMAKE_FOUND TRUE)
endif()

