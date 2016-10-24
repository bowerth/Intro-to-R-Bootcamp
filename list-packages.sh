#!/bin/bash

FOLDER=files-teacher

cd $FOLDER

grep -i 'library' 2-get-data.R 5-tidy-data.R 7-quickplots.R 8-ggplot.R 9-case-study-1/*.R 10-case-study-2.R > ../R-packages.txt
