#!/bin/bash

# bash ~/Dropbox/Programming/R/Intro-to-R-Bootcamp/replace-in-files.sh
path="$HOME/Dropbox/Programming/R/Intro-to-R-Bootcamp/work"

cd $path
# FILES=test.Rmd
# FILES=$(find . -maxdepth 1 -type f)
FILES=$(find *.Rmd -maxdepth 1 -type f)
# echo $FILES

for file in $FILES
do
    # sed 's/'$search_1'/'$replace_1'/g;s/'$search_2'/'$replace_2'/g' $path/${file} > $path/${file}.tmp
    # sed 's/'$search_1'/'$replace_1'/g;s/'$search_2'/'$replace_2'/g;s/'$search_3'/'$replace_3'/g;s/'$search_4'/'$replace_4'/g' $path/${file} > $path/${file}.tmp
    # sed "s/$search_1/$replace_1/g;s/$search_2/$replace_2/g;s/$search_3/$replace_3/g;s/$search_4/$replace_4/g;s/$search_5/$replace_5/g" $path/${file} > $path/${file}.tmp
    # rm $path/${file}
    # mv $path/${file}.tmp $path/${file}
    # sed -i -e "s/$search_1/$replace_1/g" -e "s/$search_2/$replace_2/g;s/$search_3/$replace_3/g;s/$search_4/$replace_4/g;s/$search_5/$replace_5/g" $path/${file}
    sed -i -f ../sedcommands $path/${file}
    echo "replaced strings in file ${file}"
done
