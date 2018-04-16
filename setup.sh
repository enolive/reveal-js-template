#!/bin/sh

## Current directory
## http://stackoverflow.com/a/246128
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

## Get reveal.js
REVEAL_VERSION=3.6.0
REVEAL_SRC=https://github.com/hakimel/reveal.js/archive/${REVEAL_VERSION}.tar.gz
wget ${REVEAL_SRC}

## extract
tar xvzf ${REVEAL_VERSION}.tar.gz

## rename folder
mv reveal.js-${REVEAL_VERSION} slides

## remove downloaded file
rm ${REVEAL_VERSION}.tar.gz

## enable new git from scratch (but keep the .gitignore file)
#rm -rf .git

## cleanup (optional)
rm -rf \
    ${CURRENT_DIR}/slides/test \
    ${CURRENT_DIR}/slides/CONTRIBUTING.md \
    ${CURRENT_DIR}/slides/demo* \
    ${CURRENT_DIR}/slides/.travis.yml

## inject tweaks
cp -rf ${CURRENT_DIR}/tweaks/* ${CURRENT_DIR}/slides/

## create folder for code samples
mkdir ${CURRENT_DIR}/code