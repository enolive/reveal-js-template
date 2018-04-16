#!/bin/sh

# inject tweaks without downloading and extracting reveal js.
# useful for debugging!
CURRENT_DIR=$PWD
cp -rf ${CURRENT_DIR}/tweaks/* ${CURRENT_DIR}/slides/
