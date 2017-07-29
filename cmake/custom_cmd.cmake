
##################################################################################
# 调用tars2cpp, 生成tars对应的文件
##################################################################################
macro(compile_tars OUT_DEPENDS_LIST SERVICE_NAME)
    set(OUTPUT_PATH "${BINARY_ITF_PATH}/${SERVICE_NAME}")
    set(SEARCH_PATH "${BINARY_ITF_PATH}/${SERVICE_NAME}\;${SOURCE_ITF_PATH}/${SERVICE_NAME}")
    set(DEPENDS_LIST)
    FILE(GLOB SRC_LIST "${CMAKE_CURRENT_SOURCE_DIR}/*.tars")

    set(CLEAN_LIST)

    #设置tars生成后, cpp文件因为h文件的include路径
#    set(INCLUDE)
#    if (NOT ${HEADER} STREQUAL "")
#        set(INCLUDE "--header=${HEADER}")
#    endif ()

    foreach (FILE ${SRC_LIST})
        get_filename_component(NAME_WE ${FILE} NAME_WE)

        # 生成tars文件
        set(TARS_IN ${FILE})
        set(TARS_H ${NAME_WE}.h)

        EXEC_PROGRAM(${TARS2CPP} ARGS "--dir=${OUTPUT_PATH} --include=${SEARCH_PATH} ${TARS_IN}" )
#        add_custom_command(
#                OUTPUT ${CMAKE_CURRENT_SOURCE_DIR}/${TARS_H}
#                WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
#                DEPENDS tars2cpp
#                COMMAND ${TARS2CPP} --with-tars ${INCLUDE} ${TARS_IN}
#                COMMENT "${TARS2CPP} --with-tars ${INCLUDE} ${TARS_IN}")

        list(APPEND DEPENDS_LIST ${CMAKE_CURRENT_SOURCE_DIR}/${TARS_H})

        #设置需要清除的文件
        get_filename_component(PATH ${FILE} PATH)
        list(APPEND CLEAN_LIST ${PATH}/${NAME_WE}.h)
        if (EXISTS ${PATH}/${NAME_WE}.cpp)
            list(APPEND CLEAN_LIST ${PATH}/${NAME_WE}.cpp)
        endif (EXISTS ${PATH}/${NAME_WE}.cpp)

    endforeach (FILE)

    set(OUT_DEPENDS_LIST ${DEPENDS_LIST})

    set_directory_properties(PROPERTIES ADDITIONAL_MAKE_CLEAN_FILES "${CLEAN_LIST}")

endmacro()