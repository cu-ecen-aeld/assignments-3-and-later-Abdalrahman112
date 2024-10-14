#!/bin/bash

if [ $# -lt 2 ]
then
    echo missing arguments
    exit 1
fi

File=$1
Str=$2

Dir=$(dirname ${File})

mkdir -p dirname

if [ -e ${File} ]
then
    rm ${File}
fi
echo Creating ${File} with content ${Str}
Status=$(touch ${File})

if [ ${Status} -ne 0 ]
then
    echo File could not be created
    exit 1
fi


echo ${Str} > ${File}

exit 0

