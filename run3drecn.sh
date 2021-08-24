#! /bin/bash

OBJECT=${1}

# reconstruct

${VORPA_DIR}/vorpalite \
pre=false remesh=false post=false \
co3ne=true \
co3ne:radius=5 \
co3ne:repair=true \
"${OUTPUT_DIR}/${OBJECT}_dexl.xyz" \
"${OUTPUT_DIR}/${OBJECT}_recn.obj"
