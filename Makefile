## Makefile Intro-to-R-Bootcamp

MAKE=make
SED=sedreplace
WORK=work
EXPORT=export
outputs=$(SED) $(WORK) $(EXPORT)

.PHONY: all $(outputs)
all: $(outputs)

$(outputs):
	$(MAKE) --directory $@
