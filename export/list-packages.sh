#!/bin/bash

DIR="../files-teacher"
LOGFILE="list-packages.log"

FILES="2-get-data.R 5-tidy-data.R 7-quickplots.R 8-ggplot.R 9-case-study-1/*.R 10-case-study-2.R"

echo "list-packages log" > $LOGFILE

for file in $FILES
do
	printf "\n$file\n" >> $LOGFILE
	grep -i 'library' $DIR/$file | sed 's/^.*[(]/  /g;s/[)].*//g' >> $LOGFILE
done

# cat $LOGFILE
