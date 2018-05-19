#!/usr/bin/make -f
SHELL=/bin/sh

DESTDIR?=/usr/local
prefix?=${DESTDIR}
DOCKER_IMAGE=astillero_jekyll
JEKYLL_BIN=jekyll

.PHONY: all
all:
	@echo "usage:  make install"
	@echo "        make uninstall"

.PHONY: install
install: $(prefix)/bin/$(JEKYLL_BIN)

$(prefix)/bin/$(JEKYLL_BIN): build $(prefix)/bin
	install -m 0755 bin/$(JEKYLL_BIN) $(prefix)/bin/$(JEKYLL_BIN)

$(prefix)/bin:
	install -d -m 0755 $(prefix)/bin

.PHONY: all
all:
	@echo "usage:  make install"
	@echo "        make uninstall"



.PHONY: all
all:
	@echo "usage:  make install"
	@echo "        make uninstall"

.PHONY: build
build:
	docker-compose build
