project(actor)

set(LIB_NAME actor)

#################################################################################
#     source files
#################################################################################
set (HEADER_FILES 
     actor.hpp      
    )

set (SOURCE_FILES
     actor.cpp     
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
#     generate LIB files
#################################################################################
ADD_LIBRARY(${LIB_NAME} ${SOURCE_FILES})
TARGET_LINK_LIBRARIES(${LIB_NAME} ${THIRD_PARTY_LIBS})

#################################################################################
#     install files
#################################################################################
INSTALL(TARGETS ${LIB_NAME} DESTINATION lib)