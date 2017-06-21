#!/bin/bash

TMPDIR=bootcamp
ZIPFILE=$TMPDIR.zip

mkdir $TMPDIR

# add data folder
cp -r ../data $TMPDIR
# add html slides
mkdir $TMPDIR/slides
cp ../files-teacher/*.html $TMPDIR/slides

# add R scripts
mkdir $TMPDIR/code-scripts
cp ../files-teacher/*.R $TMPDIR/code-scripts

# add supplementary R scripts
mkdir $TMPDIR/R
cp ../R/*.R $TMPDIR/R

# cp -r ../files-teacher/9-case-study-1 $TMPDIR/code-scripts

# add license
cp ../LICENSE $TMPDIR

# zip -ur $ZIPFILE $TMPDIR/*
7z a -tzip $ZIPFILE -w $TMPDIR/.

rm -r $TMPDIR
