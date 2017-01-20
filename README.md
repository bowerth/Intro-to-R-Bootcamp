# Intro to R Bootcamp
January 20, 2017

GitHub repository for developing class material for [Intro to R Bootcamp]({{ site.baseurl }}/r_bootcamp). A short course on the statistical programming software R adapted for training purposes at the Organisation for Economic Co-operation and Development (OECD).

The original course [Boehmke, B.C.](http://bradleyboehmke.github.io/) (2016). [*Intro to R Bootcamp*](http://github.com/bradleyboehmke/Intro-to-R-Bootcamp/) has been retrieved from [http://uc-r.github.io/r_bootcamp](http://uc-r.github.io/r_bootcamp). The course material has been released under the Creative Commons Share-Alike 2.0 (CC-SA 2.0) license.

You can view the course website here: [http://boot.rdata.work/r_bootcamp](http://boot.rdata.work/r_bootcamp)

## Files

`list-packages.sh`
:   grep R script files searching for 'library' keyword

`createuser.sh`
:   script to create new users after starting docker container using 'docker exec -it <container-id> bash && bash createuser.sh'

`replace-in-Rmd-files.sh`
:   apply sedcommandsRmd to Rmd presentation slides

`replace-in-R-scripts.sh`
:   apply sedcommandsR to R code scripts

`R-packages.txt`
:   list of R packages created by 'list-packages.sh'

`R-servr-work.sh`
:   script to start R server based on Makefile that automatically recompiles Rmd files to html

`sedcommandsR`
:   sed commands to replace e.g. "data/" with "../data/"

`sedcommandsRmd`
:   sed commands to replace e.g. author name in slides

`sync-html-work-files.sh`
:   apply changes to files in work/ folder to files in files-teacher/ folder

`zip-data-slides-scripts.sh`
:   update bootcamp.zip and sync with Public folder in dropbox
