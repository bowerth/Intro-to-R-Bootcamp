#!/bin/bash

# rsync -h -v -P -t --recursive

# files-teacher
rsync work/R-Bootcamp.html files-teacher/1-intro.html
rsync work/get-data.html files-teacher/2-get-data.html
rsync work/3-data-structures.html files-teacher/3-data-structures.html
rsync work/4-data-types.html files-teacher/4-data-types.html
rsync work/tidy-data.html files-teacher/5-tidy-data.html
rsync work/dplyr-data.html files-teacher/6-dplyr-data.html
rsync work/7-quickplots.html files-teacher/7-quickplots.html
rsync work/8-ggplot.html files-teacher/8-ggplot.html

# # files-students
# rsync work/R-Bootcamp-students.html files-students/1-intro-students.html
# rsync work/get-data-students.html files-students/2-get-data-students.html
# rsync work/3-data-structures-students.html files-students/3-data-structures-students.html
# rsync work/4-data-types-students.html files-students/4-data-types-students.html
# rsync work/tidy-data-students.html files-students/5-tidy-data-students.html
# rsync work/dplyr-data-students.html files-students/6-dplyr-data-students.html
# rsync work/7-quickplots-students.html files-students/7-quickplots-students.html
# rsync work/8-ggplot-students.html files-students/8-ggplot-students.html
