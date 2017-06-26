H01=1-intro.html
H02=2-get-data.html
H03=3-data-structures.html
H04=4-data-types.html
H05=5-tidy-data.html
H06=6-dplyr-data.html
H07=7-quickplots.html
H08=8-ggplot.html
H09=9-moreplots.html
H10=10-ggplot-detailed-features.html

outputs: $(H01) $(H02) $(H03) $(H04) $(H05) $(H06) $(H07) $(H08) $(H09) $(H10)

.PHONY: all $(outputs)
all: $(outputs)

$(outputs): ${@:.html=.Rmd}

include ~/lib/common.mk

# all: 1-intro.html 2-get-data.html 3-data-structures.html 4-data-types.html 5-tidy-data.html 6-dplyr-data.html 7-quickplots.html 8-ggplot.html 9-moreplots.html 10-ggplot-detailed-features.html
# 1-intro.html: ${@:.html=.Rmd} 1-intro.Rmd
# 2-get-data.html: ${@:.html=.Rmd} 2-get-data.Rmd
# 3-data-structures.html: ${@:.html=.Rmd} 3-data-structures.Rmd
# 4-data-types.html: ${@:.html=.Rmd} 4-data-types.Rmd
# 5-tidy-data.html: ${@:.html=.Rmd} 5-tidy-data.Rmd
# 6-dplyr-data.html: ${@:.html=.Rmd} 6-dplyr-data.Rmd
# 7-quickplots.html: ${@:.html=.Rmd} 7-quickplots.Rmd
# 8-ggplot.html: ${@:.html=.Rmd} 8-ggplot.Rmd
# 9-moreplots.html: ${@:.html=.Rmd} 9-moreplots.Rmd
# 10-ggplot-detailed-features.html: ${@:.html=.Rmd} 10-ggplot-detailed-features.Rmd

