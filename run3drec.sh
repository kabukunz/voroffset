#! /bin/bash

SCRIPT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
BUILD_DIR=${SCRIPT_DIR}/build
DATA_DIR=${SCRIPT_DIR}/data
OUTPUT_DIR=${SCRIPT_DIR}/data/output

OBJECT=${1}
RES=${2}

${BUILD_DIR}/offset3d ${DATA_DIR}/${OBJECT}.obj -o "${OUTPUT_DIR}/${OBJECT}_dexelized.xyz" -f -n ${RES} -x noop

/Users/max/Developer/Library/Graphics/geogram/build/Darwin-clang-dynamic-Release/bin/vorpalite profile=reconstruct "${OUTPUT_DIR}/${OBJECT}_dexelized.xyz" "${OUTPUT_DIR}/${OBJECT}_surface.obj"