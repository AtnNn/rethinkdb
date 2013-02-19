# Suse 10 RPM configuration

STRIP_ON_INSTALL ?= 1
PACKAGE_FOR_SUSE_10 ?= 1

.PHONY: $(TOP)/all
$(TOP)/all: build-rpm