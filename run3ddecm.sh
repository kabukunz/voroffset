#! /bin/bash

OBJECT=${1}
BINS=${2}

# decimate

${VORPA_DIR}/vorpalite \
remesh=false post=false co3ne=false \
pre:vcluster_bins=${BINS} \
"${OUTPUT_DIR}/${OBJECT}_recn.obj" \
"${OUTPUT_DIR}/${OBJECT}_recn_decm.obj"

