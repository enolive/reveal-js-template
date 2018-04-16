#!/bin/sh

CURRENT_DIR=$PWD

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

## cleanup (optional)
rm -rf \
    ${CURRENT_DIR}/slides/test \
    ${CURRENT_DIR}/slides/CONTRIBUTING.md \
    ${CURRENT_DIR}/slides/demo* \
    ${CURRENT_DIR}/slides/.travis.yml

## inject tweaks
cp -rf ${CURRENT_DIR}/tweaks/* ${CURRENT_DIR}/slides/