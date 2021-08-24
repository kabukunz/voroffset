#! /bin/bash

OBJECT=${1}
RES=${2}

# dexelize

${BUILD_DIR}/offset3d ${DATA_DIR}/${OBJECT}.obj -o "${OUTPUT_DIR}/${OBJECT}_dexl.xyz" -f -n ${RES} -x noop

