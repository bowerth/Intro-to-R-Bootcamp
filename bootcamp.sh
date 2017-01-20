#!/bin/bash

ZIPFILE=bootcamp.zip
DESTDIR=~/Dropbox/Public

# add data folder
zip -ur $ZIPFILE data

# add slides
mkdir slides
# cp files-students/*.html slides
cp files-teacher/*.html slides
zip -ur $ZIPFILE slides
rm -r slides

# add scripts
mkdir code-scripts
# cp files-students/*.R code-scripts
cp files-teacher/*.R code-scripts
cp -r files-teacher/9-case-study-1 code-scripts
zip -ur $ZIPFILE code-scripts
rm -r code-scripts

# license
zip -ur $ZIPFILE LICENSE

rsync -h -v -P -t $ZIPFILE $DESTDIR

# rm $ZIPFILE
