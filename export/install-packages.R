options(repos = c(CRAN = "http://cran.rstudio.com"))

libs <- c("brew",
          "dplyr",
          "dygraphs",
          "gdata",
          "ggplot2",
          "ggthemes",
          "gridExtra",
          "haven",
          "knitr",
          "magrittr",
          "markdown",
          "RColorBrewer",
          "RCurl",
          "readxl",
          "reshape2",
          "scales",
          "tidyr",
          "xts",
          # as_seminar_report
          # "rCharts",
          # "RGraphics"
          )

## check if all packages in libs are available
available <- suppressWarnings(sapply(libs, require, character.only=TRUE))
inst.libs <- libs[available == FALSE]
if(length(inst.libs) != 0) {
  install.packages(inst.libs, dependencies = TRUE)
  sapply(inst.libs, require, character.only=TRUE)
}

libs.dev.remote <- c("EDAWR",
                     "nsoApi",
                     "RJSDMX",
                     ## as_seminar_report
                     # "ggthemr")

available.dev <- suppressWarnings(sapply(libs.dev.remote, require, character.only=TRUE))
inst.libs.dev.remote <- libs.dev.remote[available.dev == FALSE]
if(length(inst.libs.dev.remote) != 0) {
    require(devtools)
    require(httr)
    set_config(config(ssl_verifypeer = 0L))
    for (lib in inst.libs.dev.remote) {
        if (lib == "EDAWR") install_github("rstudio/EDAWR")
        if (lib == "nsoApi") install_github("bowerth/nsoApi")
        if (lib == "RJSDMX") install_github("amattioc/SDMX", subdir = "RJSDMX")
        if (lib == "ggthemr") install_github("cttobin/ggthemr")
    }
    detach("package:devtools", unload = TRUE)
}
