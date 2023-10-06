#!/usr/bin/bash

basedir=$(dirname $0)

cd $basedir

rm -rf build Makefile *.make lib
premake5 gmake2
make
