#! /usr/bin/bash

#just build a zip out of the testu01 dir above
rm -Rf src pkg
TESTU01DIR=${PWD%/*}
TESTU01PARENT=${TESTU01DIR%/*}
echo $TESTU01DIR

cd ${TESTU01PARENT}
echo ${PWD}
zip -r ${TESTU01DIR}/build/testu01 testu01

cd ${TESTU01DIR}/build
makepkg -f
sudo pacman -U testu01-1-1-x86_64.pkg.tar.xz
rm -Rf src pkg 
