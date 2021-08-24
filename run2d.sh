#! /bin/bash

SCRIPT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
BUILD_DIR=${SCRIPT_DIR}/build
DATA_DIR=${SCRIPT_DIR}/data
OUTPUT_DIR=${SCRIPT_DIR}/data/output

OBJECT=${1}
RAD=${2}

# da capire come funziona

${BUILD_DIR}/offset2d -i ${DATA_DIR}/${OBJECT}.svg -o "${OUTPUT_DIR}/${OBJECT}_dexelized.obj" -f -r ${RAD}

