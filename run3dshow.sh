#! /bin/bash

# SCRIPT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
# BUILD_DIR=${SCRIPT_DIR}/build
# DATA_DIR=${SCRIPT_DIR}/data
# OUTPUT_DIR=${SCRIPT_DIR}/data/output

OBJECT=${1}
# RES=${2}

vm "${OUTPUT_DIR}/${OBJECT}_recn_decm.obj"