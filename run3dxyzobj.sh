#! /bin/bash

SCRIPT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
BUILD_DIR=${SCRIPT_DIR}/build
DATA_DIR=${SCRIPT_DIR}/data
OUTPUT_DIR=${SCRIPT_DIR}/data/output

OBJECT=${1}
RES=${2}

${BUILD_DIR}/offset3d ${DATA_DIR}/${OBJECT}.obj -o "${OUTPUT_DIR}/${OBJECT}_dexelized.xyz" -f -n ${RES} -x noop

# no error
# ./run3dxyzobj.sh mickey8_unrm 2048

/Users/max/Developer/Library/Graphics/geogram/build/Darwin-clang-dynamic-Release/bin/vorpalite \
pre=false remesh=false post=false \
co3ne=true \
co3ne:radius=5 \
co3ne:repair=true \
"${OUTPUT_DIR}/${OBJECT}_dexelized.xyz" "${OUTPUT_DIR}/${OBJECT}_surface.obj"

# ./run3dxyzobj.sh mickey8_unrm 1024

# /Users/max/Developer/Library/Graphics/geogram/build/Darwin-clang-dynamic-Release/bin/vorpalite \
# pre=false remesh=false post=false \
# co3ne=true \
# co3ne:radius=0.1 \
# co3ne:max_hole_area=20 \
# co3ne:nb_neighbors=90 \
# co3ne:repair=true \
# "${OUTPUT_DIR}/${OBJECT}_dexelized.xyz" "${OUTPUT_DIR}/${OBJECT}_surface.obj"

vm "${OUTPUT_DIR}/${OBJECT}_surface.obj"