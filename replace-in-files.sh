#!/bin/bash

# bash ~/Dropbox/Programming/R/Intro-to-R-Bootcamp/replace-in-files.sh

path="$HOME/Dropbox/Programming/R/Intro-to-R-Bootcamp/work"

search_name_upper="images/"
replace_name_upper="../images/"
search_name_lower="uc_logo2.png"
replace_name_lower="oecd_logo2.png"
# search_date="2015-08-08"
# replace_date="2015-12-16"
# search_date="2015-12-16-"
# replace_date=""

cd $path
FILES=$(find . -maxdepth 1 -type f)
# echo $FILES

for file in $FILES
do
    # sed 's/'$search_name_upper'/'$replace_name_upper'/g;s/'$search_name_lower'/'$replace_name_lower'/g' $path/${file} > $path/${file}.tmp
    sed 's/'$search_name_upper'/'$replace_name_upper'/g;s/'$search_name_lower'/'$replace_name_lower'/g' $path/${file} > $path/${file}.tmp
    rm $path/${file}
    mv $path/${file}.tmp $path/${file}
    echo "replaced strings in file ${file}"
done
