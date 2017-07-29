
##################################################################################
# set cmake build definitions
##################################################################################
#set(CMAKE_BUILD_TYPE "Debug")
set(CMAKE_VERBOSE_MAKEFILE on)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -O2 -Wall -Wno-deprecated")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g -O2 -Wall -Wno-deprecated")
add_definitions("-Wall")

##################################################################################
# set cmake build variable
##################################################################################
set(PROJECT_BINARY_DIR $ENV{BUILD_ROOT})
MESSAGE(STATUS "PROJECT_BINARY_DIR : ${PROJECT_BINARY_DIR}")

set(INSTALL_PREFIX $ENV{BUILD_ROOT}/install)
set(CMAKE_INSTALL_PREFIX ${INSTALL_PREFIX})
MESSAGE(STATUS "INSTALL_PREFIX : ${INSTALL_PREFIX}")

set(CODE_ROOT_PATH $ENV{CODE_ROOT})
MESSAGE(STATUS "CODE_ROOT_PATH : ${CODE_ROOT_PATH}")

set(THIRDPARTY_PATH ${CODE_ROOT_PATH}/3rdparty)
MESSAGE(STATUS "THIRDPARTY_PATH : ${THIRDPARTY_PATH}")

set(SOURCE_ITF_PATH $ENV{CODE_ROOT}/itf)
MESSAGE(STATUS "SOURCE_ITF_PATH : ${SOURCE_ITF_PATH}")

set(BINARY_ITF_PATH $ENV{BUILD_ROOT}/itf)
MESSAGE(STATUS "BINARY_ITF_PATH : ${BINARY_ITF_PATH}")
