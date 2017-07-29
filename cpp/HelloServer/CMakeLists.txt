project(HelloServer)

set(EXE_NAME HelloServer)

#################################################################################
#     source files
#################################################################################
set (HEADER_FILES 
     HelloServer.h 
     HelloImp.h
    )

set (SOURCE_FILES
     HelloServer.cpp
     HelloImp.cpp
    )

#set(SOURCE_FILES ${SOURCE_FILES} ${HEADER_FILES})

#################################################################################
#     dependence files
#################################################################################
set(THIRD_PARTY_LIBS
    ${TARSSERVANT_LIB}
    ${TARSPARSE_LIB}
    ${TARSUTIL_LIB}
    pthread
    )

#################################################################################
#     include files
#################################################################################
include_directories(BEFORE ${SOURCE_ITF_PATH}
                           ${BINARY_ITF_PATH}   
                           ${TARS_INCLUDE_DIR}
			   ${LIBMYSQL_INCLUDE_DIR}
                    )

#################################################################################
#     generate execute files
#################################################################################
add_executable(${EXE_NAME} ${SOURCE_FILES})
TARGET_LINK_LIBRARIES(${EXE_NAME} ${THIRD_PARTY_LIBS})

#################################################################################
#     install files
#################################################################################
INSTALL(TARGETS ${EXE_NAME} DESTINATION bin)