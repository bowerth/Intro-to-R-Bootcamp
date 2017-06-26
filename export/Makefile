.PHONY: all
all: bootcamp.zip list-packages.log export-s3.log # export-rsync.log

bootcamp.zip: ${@:.zip=.sh} $(shell find ../data) $(shell find ../files-teacher) ../LICENSE
	bash bootcamp.sh

# export-rsync.log: ${@:.log=.sh} bootcamp.zip createuser.sh install-packages.R
# 	bash export-rsync.sh

export-s3.log: ${@:.log=.sh} bootcamp.zip createuser.sh install-packages.R ../data/reddit.csv
	bash export-s3.sh

list-packages.log: ${@:.log=.sh}
	bash list-packages.sh
