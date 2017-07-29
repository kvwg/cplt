
###########################################################################
# set tars files path 
###########################################################################
set(TARS_PATH HelloServer)


set(TARGET_TARS TARGET_${TARS_PATH})
set(OUT_DEPENDS_LIST)
compile_tars(OUT_DEPENDS_LIST ${TARS_PATH})
#add_custom_target(${TARGET_TARS} ALL DEPENDS ${OUT_DEPENDS_LIST})

