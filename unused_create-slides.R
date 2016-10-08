## devtools::install_github("rstudio/EDAWR")
library(rmarkdown)

## dbpath <- "/home/z930/Dropbox"
## setwd(file.path(dbpath, "Programming", "R", "Intro-to-R-Bootcamp"))
path_root <- file.path(dbpath, "Programming", "R", "Intro-to-R-Bootcamp")
## path_rmd <- file.path(path_root, "Working files")
path_rmd <- file.path(path_root, "work")

filemapping <- read.csv(file = file.path(path_root, "input-output-copy.csv"), stringsAsFactors = FALSE)

i <- 1

sapply(
  ## c(1:nrow(filemapping)),
  c(1),
  function(i) {
    render(input = file.path(path_rmd, paste0(filemapping[["inputname"]][i], ".Rmd")),
           output_file = paste0(filemapping[["outputname"]][i], ".html"),
           output_dir = file.path(path_root, "files-teacher"))
    })

## render(
##   input = file.path(path_rmd, "R-Bootcamp.Rmd"),
##   output_file = "1-intro.html",
##   output_dir = "Files - teacher"
## )

## render(
##   input = file.path(path_rmd, "R-Bootcamp-students.Rmd"),
##   output_file = "1-intro.html",
##   output_dir = "Files - students"
## )


