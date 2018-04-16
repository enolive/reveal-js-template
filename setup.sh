#!/bin/sh

## Current directory
## http://stackoverflow.com/a/246128
CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

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
    ${CURRENTDIR}/slides/test \
    ${CURRENTDIR}/slides/CONTRIBUTING.md \
    ${CURRENTDIR}/slides/demo* \
    ${CURRENTDIR}/slides/.travis.yml

## inject tweaks
cp -rf ${CURRENTDIR}/tweaks/* ${CURRENTDIR}/slides/

## create folder for code samples
mkdir ${CURRENTDIR}/code