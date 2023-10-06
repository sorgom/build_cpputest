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

# if test ! -d $targetDir/include; then
#     echo not a directory: $targetDir/include
# fi
# if test ! -d $targetDir/lib; then
#     echo not a directory: $targetDir/lib
# fi

# for dir in CppUTest CppUTestExt; do
#     echo rm -rf $targetDir/include/$dir
# done
# rm -rf $targetDir/include/CppUTest
# rm -rf $targetDir/include/CppUTestExt