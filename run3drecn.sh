#! /bin/bash

# SCRIPT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
# BUILD_DIR=${SCRIPT_DIR}/build
# DATA_DIR=${SCRIPT_DIR}/data
# OUTPUT_DIR=${SCRIPT_DIR}/data/output
# VORPA_DIR=/Users/max/Developer/Library/Graphics/geogram/build/Darwin-clang-dynamic-Release/bin

OBJECT=${1}

# reconstruct

${VORPA_DIR}/vorpalite \
pre=false remesh=false post=false \
co3ne=true \
co3ne:radius=5 \
co3ne:repair=true \
"${OUTPUT_DIR}/${OBJECT}_dexl.xyz" \
"${OUTPUT_DIR}/${OBJECT}_recn.obj"
