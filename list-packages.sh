#!/bin/bash

FOLDER=files-teacher

cd $FOLDER

grep -i 'library' 2-get-data.R 5-tidy-data.R 7-quickplots.R 8-ggplot.R > ../R-packages.txt
