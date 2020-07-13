#!/bin/bash
# Script to find out detailed meta data of a directory
# Tamjid Rayhan 13/07/20

if [ $# != 1 ]
then
     echo Usage : A single argument which is a directory to analyze
     exit
fi

if [ ! -d $1/ ]
then
    echo 'The given directory is not found (possible typo)'
    exit
fi

num_of_files=`ls -l $1/| tail -n +2 | egrep '^-' | wc -l`

echo Number of files in this directory is $num_of_files
