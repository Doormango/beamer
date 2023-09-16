# Makefile for Beamer template

# Commands
TEXC      = latexmk
PGREP     = pgrep $(TEXC)
TAR       = tar --exclude-vcs --exclude-vcs-ignores

# Path of dir containing this Makefile
ROOT := $(shell dirname "$(realpath $(firstword $(MAKEFILE_LIST)))")

# Installation options
INSTOUT   = ~/Templates/$(notdir $(ROOT)).tar.gz
EXCLUDE   = LICENSE* README*

.PHONY: all bg clean install

all:
	$(PGREP) || $(TEXC)

bg:
	$(TEXC) -pvc -interaction=nonstopmode -view=none

clean:
	$(TEXC) -c

install:
	$(TAR) $(foreach PATTERN, $(EXCLUDE), --exclude='$(PATTERN)') \
		-zcvf $(INSTOUT) -C $(ROOT) ../$(notdir $(ROOT))
