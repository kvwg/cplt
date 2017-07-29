#!/bin/bash
source build_profile.sh

CURRENT_PATH=`pwd`
if [ -d "${BUILD_ROOT}" ]; then
    echo "!!! rm dir : ${BUILD_ROOT}" 
    rm -rf "${BUILD_ROOT}";  
fi  

{ mkdir -p "${BUILD_ROOT}"; } && { cd ${BUILD_ROOT}; } && { cmake -G"Unix Makefiles" ${CODE_ROOT}; } && { cd ${CURRENT_PATH}; }

