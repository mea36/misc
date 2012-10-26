#!/bin/sh
#CURRENT=`pwd`
#BASENAME=`basename $CURRENT`
`clear`

#@param: dir path
#greps recursively in the current directory for the files in the path of @param
for file in $1/*
do
    f=`basename $file`
    echo "\ngrep -r --exclude='*.json' $f *"
    grep -r --exclude='*.json' $f *
done
