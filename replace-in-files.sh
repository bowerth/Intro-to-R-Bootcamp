#!/bin/bash

# bash ~/Dropbox/Programming/R/Intro-to-R-Bootcamp/replace-in-files.sh

path="$HOME/Dropbox/Programming/R/Intro-to-R-Bootcamp/work"

search_1="images\/"
replace_1="..\/images\/"

# search_2="uc_logo2.png"
# replace_2="oecd_logo2.png"

# search_3=" data\/"
# replace_3=" ..\/data\/"

# search_1="Brad Boehmke"
# replace_1="Bo Werth"

# search_date="2015-08-08"
# replace_date="2015-12-16"
# search_date="2015-12-16-"
# replace_date=""

cd $path
FILES=test.Rmd
# FILES=$(find . -maxdepth 1 -type f)
# FILES=$(find *.Rmd -maxdepth 1 -type f)
# echo $FILES

for file in $FILES
do
    # sed 's/'$search_1'/'$replace_1'/g;s/'$search_2'/'$replace_2'/g' $path/${file} > $path/${file}.tmp
    # sed 's/'$search_1'/'$replace_1'/g;s/'$search_2'/'$replace_2'/g;s/'$search_3'/'$replace_3'/g;s/'$search_4'/'$replace_4'/g' $path/${file} > $path/${file}.tmp
    sed 's/'$search_1'/'$replace_1'/g' $path/${file} > $path/${file}.tmp
    rm $path/${file}
    mv $path/${file}.tmp $path/${file}
    echo "replaced strings in file ${file}"
done
