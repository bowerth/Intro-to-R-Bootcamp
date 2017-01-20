#!/bin/bash

# PATH="$HOME/Dropbox/Programming/R/Intro-to-R-Bootcamp/files-teacher"
DIR="../files-teacher"
# cd $DIR
LOGFILE="replace-in-R-files.log"
SEDFILE="sedcommandsR"
# FILES=test.Rmd
FILES=$(find $DIR/*.R -maxdepth 1 -type f)

cat $SEDFILE > $LOGFILE

for file in $FILES
do
    sed -i -f $SEDFILE ${file}
    echo "replaced strings in file ${file}" >> $LOGFILE
done
