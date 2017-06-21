.PHONY: all
all: sync-html-work-files.log

sync-html-work-files.log: ${@:.log:.sh} $(shell find ../work)
	bash sync-html-work-files.sh
