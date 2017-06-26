#!/bin/bash

SRCDIR="../work"
DESTDIR="../files-teacher"
LOGFILE="sync-html-work-files.log"
# FILES="1-intro 2-get-data 3-data-structures 4-data-types 5-tidy-data 6-dplyr-data 7-quickplots 8-ggplot"
# FILES=$(find $SRCDIR/*.html -maxdepth 1 -type f)
FILES=$(find ../work/*.html -maxdepth 1 -type f -printf '%f ')

printf "sync-html-work-files log\n" > $LOGFILE

for file in $FILES
do
	printf "$SRCDIR/$file $DESTDIR/$file\n" >> $LOGFILE
	rsync $SRCDIR/$file $DESTDIR/$file
	ASSETDIR="${file%.*}"
	if [ -d $SRCDIR/$ASSETDIR ]; then
      rsync -r $SRCDIR/$ASSETDIR $DESTDIR/
    fi
done

# cat $LOGFILE

# # files-teacher
# rsync work/R-Bootcamp.html files-teacher/1-intro.html
# rsync work/get-data.html files-teacher/2-get-data.html
# rsync work/3-data-structures.html files-teacher/3-data-structures.html
# rsync work/4-data-types.html files-teacher/4-data-types.html
# rsync work/tidy-data.html files-teacher/5-tidy-data.html
# rsync work/dplyr-data.html files-teacher/6-dplyr-data.html
# rsync work/7-quickplots.html files-teacher/7-quickplots.html
# rsync work/8-ggplot.html files-teacher/8-ggplot.html
