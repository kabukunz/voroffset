#! /bin/bash

SCRIPT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
BUILD_DIR=${SCRIPT_DIR}/build
DATA_DIR=${SCRIPT_DIR}/data
OUTPUT_DIR=${SCRIPT_DIR}/data/output

# OBJECT=octa-flower
OBJECT=${1}

# dense sample (1.5M)

# ${BUILD_DIR}/offset3d ${DATA_DIR}/${OBJECT}.ply -o "${OUTPUT_DIR}/${OBJECT}_morph_dilation.obj" -f -n 512 -r 5 -p 10 -x dilation

# Step 2: Run offset algorithm

${BUILD_DIR}/offset3d ${DATA_DIR}/${OBJECT}.ply -o "${OUTPUT_DIR}/${OBJECT}_dexelized.obj" -f -n 256 -r 3 -p 3 -d 5 -x noop
${BUILD_DIR}/offset3d ${DATA_DIR}/${OBJECT}.ply -o "${OUTPUT_DIR}/${OBJECT}_dilation.obj" -f -n 256 -r 3 -p 3 -d 5 -x dilation
${BUILD_DIR}/offset3d ${DATA_DIR}/${OBJECT}.ply -o "${OUTPUT_DIR}/${OBJECT}_erosion.obj" -f -n 256 -r 3 -p 3 -d 5 -x erosion
${BUILD_DIR}/offset3d ${DATA_DIR}/${OBJECT}.ply -o "${OUTPUT_DIR}/${OBJECT}_closing.obj" -f -n 256 -r 3 -p 3 -d 5 -x closing
${BUILD_DIR}/offset3d ${DATA_DIR}/${OBJECT}.ply -o "${OUTPUT_DIR}/${OBJECT}_opening.obj" -f -n 256 -r 3 -p 3 -d 5 -x opening

