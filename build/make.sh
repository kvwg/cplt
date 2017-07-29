#!/bin/bash
source build_profile.sh

CURRENT_PATH=`pwd`
cd ${BUILD_ROOT} && { make install -j 2; } && { cd ${CURRENT_PATH}; }

