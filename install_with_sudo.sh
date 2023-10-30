#!/usr/bin/bash

basedir=$(dirname $0)
cd $basedir

function nfd()
{
    echo check $1
    if test ! -d $1; then
        echo not found: $1
        exit
    fi
}

targetDir=$1

if test -z $targetDir; then
    targetDir=/usr/local
fi

nfd $targetDir/include
nfd $targetDir/lib
echo OK

for item in CppUTest CppUTestExt; do
    target=$targetDir/include/$item
    echo $target
    rm -rf $target
    mkdir $target
    cp include/$item/*.h $target/

    target=$targetDir/lib/lib$item.a
    echo $target
    rm -f $target
    cp lib/lib$item.a $target
done
