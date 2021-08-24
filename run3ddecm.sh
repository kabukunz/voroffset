#! /bin/bash

# SCRIPT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
# BUILD_DIR=${SCRIPT_DIR}/build
# DATA_DIR=${SCRIPT_DIR}/data
# OUTPUT_DIR=${SCRIPT_DIR}/data/output

OBJECT=${1}
BINS=${2}

# decimate

${VORPA_DIR}/vorpalite \
remesh=false post=false co3ne=false \
pre:vcluster_bins=${BINS} \
"${OUTPUT_DIR}/${OBJECT}_recn.obj" \
"${OUTPUT_DIR}/${OBJECT}_recn_decm.obj"

