#!/bin/bash

path="$HOME/Dropbox/Programming/R/Intro-to-R-Bootcamp/work"

cd $path
# FILES=test.Rmd
FILES=$(find *.Rmd -maxdepth 1 -type f)

for file in $FILES
do
    sed -i -f ../sedcommandsRmd $path/${file}
    echo "replaced strings in file ${file}"
done
