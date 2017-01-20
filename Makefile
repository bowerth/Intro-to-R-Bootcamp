## Makefile Intro-to-R-Bootcamp

MAKE=make
SED=sedreplace
WORK=work
SYNC=sync
EXPORT=export
outputs=$(SED) $(WORK) $(SYNC) $(EXPORT)

.PHONY: all $(outputs)
all: $(outputs)

$(outputs):
	$(MAKE) --directory $@
