.PHONY: all
all: replace-in-Rmd-files.log replace-in-R-files.log

replace-in-Rmd-files.log: ${@.log=.sh} sedcommandsRmd
	bash replace-in-Rmd-files.sh

replace-in-R-files.log: ${@.log=.sh} sedcommandsR
	bash replace-in-R-files.sh
