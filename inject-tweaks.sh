#!/bin/sh

## Current directory
## http://stackoverflow.com/a/246128
CURRENT_DIR=$PWD

## inject tweaks
cp -rf ${CURRENT_DIR}/tweaks/* ${CURRENT_DIR}/slides/
