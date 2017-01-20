#!/bin/bash

DESTDIR=$HOME/Dropbox/Public

FILES="bootcamp.zip createuser.sh install-packages.R"
LOGFILE="export-rsync.log"

echo "export-rsync log" > $LOGFILE

for file in $FILES
do
	echo $file >> $LOGFILE
	rsync -h -v -P -t $file $DESTDIR
done
