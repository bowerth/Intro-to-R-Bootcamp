## Makefile created by 'dryworkflow' at Mon May  9 16:01:11 2016

MAKE=make
# DOWNLOAD=downloadData
# READ=readMergeData
WORK=work
# REPORTS=reports
# FRAGMENTS=fragments
# outputs=$(DOWNLOAD) $(READ) $(WORK) $(REPORTS) $(FRAGMENTS)
outputs=$(WORK)

.PHONY: all $(outputs)
all: $(outputs)

$(outputs):
	$(MAKE) --directory $@

include ~/lib/common.mk
# include ~/lib/common_ioslides.mk

# $(warning $(shell ./test.sh ))
# $(warning $(shell cmd rsync-dryworkflow-jekyllfaosws.bat ))
