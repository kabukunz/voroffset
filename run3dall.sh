#! /bin/bash

export VOROFFS_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
export BUILD_DIR=${VOROFFS_DIR}/build
export DATA_DIR=${VOROFFS_DIR}/data
export OUTPUT_DIR=${VOROFFS_DIR}/data/output
export VORPA_DIR=/Users/max/Developer/Library/Graphics/geogram/build/Darwin-clang-dynamic-Release/bin

OBJECT=${1}
RES=${2}
BINS=${3}

# dexelize 
# ./run3ddexl.sh ${OBJECT} ${RES}

# reconstruct

# ./run3drecn.sh ${OBJECT}

# decimate

./run3ddecm.sh ${OBJECT} ${BINS}

# show

./run3dshow.sh ${OBJECT}
