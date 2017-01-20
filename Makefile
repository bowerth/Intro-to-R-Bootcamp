## Makefile Intro-to-R-Bootcamp
## - combine bash script files

MAKE=make
# READ=readMergeData
WORK=work
# outputs=$(DOWNLOAD) $(READ) $(WORK) $(REPORTS) $(FRAGMENTS)
outputs=$(WORK)

.PHONY: all $(outputs)
all: $(outputs) bootcamp.zip

$(outputs):
	$(MAKE) --directory $@

bootcamp.zip: ${@:.zip=.sh} $(shell find ./data) $(shell find ./files-teacher) LICENSE
	bash bootcamp.sh

# include ~/lib/common.mk
# include ~/lib/common_ioslides.mk

# $(warning $(shell ./test.sh ))
# $(warning $(shell cmd rsync-dryworkflow-jekyllfaosws.bat ))
