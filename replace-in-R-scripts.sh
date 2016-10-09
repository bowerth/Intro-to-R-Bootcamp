#!/bin/bash

path="$HOME/Dropbox/Programming/R/Intro-to-R-Bootcamp/files-teacher"

cd $path
# FILES=test.Rmd
FILES=$(find *.R -maxdepth 1 -type f)

for file in $FILES
do
    sed -i -f ../sedcommandsR $path/${file}
    echo "replaced strings in file ${file}"
done
