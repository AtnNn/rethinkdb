# Standard RPM configuration

STRIP_ON_INSTALL ?= 1

.PHONY: $(TOP)/all
$(TOP)/all: build-rpm
