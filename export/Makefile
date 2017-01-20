.PHONY: all
all: bootcamp.zip export-rsync.log list-packages.log

bootcamp.zip: ${@:.zip=.sh} $(shell find ../data) $(shell find ../files-teacher) ../LICENSE
	bash bootcamp.sh

export-rsync.log: ${@:.log=.sh} bootcamp.zip createuser.sh install-packages.R
	bash export-rsync.sh

list-packages.log: ${@:.log=.sh}
	bash list-packages.sh
