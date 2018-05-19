#!/usr/bin/make -f
SHELL=/bin/sh

DESTDIR?=/usr/local
prefix?=${DESTDIR}
DOCKER_IMAGE=astillero_jekyll

.PHONY: all
all:
	@echo "usage:  make install"
	@echo "        make uninstall"



.PHONY: build
build:
	docker-compose build
