
##############################################################################################
macro(FIND_LIBMYSQL)
    find_file(LIBMYSQL_DIR libmysql ${THIRDPARTY_PATH} NO_DEFAULT_PATH)
    find_file(LIBMYSQL_INCLUDE_DIR include ${LIBMYSQL_DIR} NO_DEFAULT_PATH)
    find_file(LIBMYSQL_LIB_DIR lib ${LIBMYSQL_DIR} NO_DEFAULT_PATH)
    # π”√æ≤Ã¨ø‚
    find_file(LIBMYSQLCLIENT_R_LIB libmysqlclient_r.a ${LIBMYSQL_LIB_DIR} NO_DEFAULT_PATH)
    find_file(LIBMYSQLCLIENT_LIB libmysqlclient.a ${LIBMYSQL_LIB_DIR} NO_DEFAULT_PATH)

    if(LIBMYSQLCLIENT_R_LIB)
        MESSAGE(STATUS "LIBMYSQLCLIENT_R_LIB : ${LIBMYSQLCLIENT_R_LIB}") 
    else(LIBMYSQLCLIENT_R_LIB)
        MESSAGE(FATAL_ERROR "LIBMYSQLCLIENT_R_LIB not found!") 
    endif()
endmacro(FIND_LIBMYSQL)
##############################################################################################

##############################################################################################
macro(FIND_TARS)
    find_file(TARS_DIR tars ${THIRDPARTY_PATH} NO_DEFAULT_PATH)
    find_file(TARS_INCLUDE_DIR include ${TARS_DIR} NO_DEFAULT_PATH)
    find_file(TARS_LIB_DIR lib ${TARS_DIR} NO_DEFAULT_PATH)
    FIND_LIBRARY(TARSSERVANT_LIB tarsservant ${TARS_LIB_DIR} NO_DEFAULT_PATH)
    FIND_LIBRARY(TARSPARSE_LIB tarsparse ${TARS_LIB_DIR} NO_DEFAULT_PATH)
    FIND_LIBRARY(TARSUTIL_LIB tarsutil ${TARS_LIB_DIR} NO_DEFAULT_PATH)
    SET(TARS2CPP  ${TARS_DIR}/tools/tars2cpp)
    if(TARSSERVANT_LIB)
        MESSAGE(STATUS "TARSSERVANT_LIB : ${TARSSERVANT_LIB}") 
    else(TARSSERVANT_LIB)
        MESSAGE(FATAL_ERROR "TARSSERVANT_LIB not found!") 
    endif()
    if(TARSPARSE_LIB)
        MESSAGE(STATUS "TARSPARSE_LIB : ${TARSPARSE_LIB}") 
    else(TARSPARSE_LIB)
        MESSAGE(FATAL_ERROR "TARSPARSE_LIB not found!") 
    endif()
    if(TARSUTIL_LIB)
        MESSAGE(STATUS "TARSUTIL_LIB : ${TARSUTIL_LIB}") 
    else(TARSUTIL_LIB)
        MESSAGE(FATAL_ERROR "TARSUTIL_LIB not found!") 
    endif()
endmacro(FIND_TARS)
##############################################################################################


##############################################################################################
FIND_LIBMYSQL()
FIND_TARS()
##############################################################################################
