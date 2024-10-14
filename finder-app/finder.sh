#!/bin/bash

if [ $# -lt 2 ];
then
    echo missing arguments
    exit 1
fi

filesdir=$1
searchstr=$2

if [ -d ${filesdir} ]
then
    # get all files inside filesdir and its subdirectories
    Files=$(find ${filesdir} -type f)
    
    # Variable X represents the number of files found
    X=$(wc -l <<< ${Files})

    # Variable Y represents the number of matching lines found in respective files
    Y=$(cat ${Files} | grep ${searchstr} | wc -l)

    echo The number of files are ${X} and the number of matching lines are ${Y}

    exit 0


else
    echo ${filesdir} does not represent a directory on the filesystem
    exit 1
fi

