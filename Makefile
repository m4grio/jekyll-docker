#!/usr/bin/make -f
SHELL=/bin/sh

DESTDIR?=/usr/local
prefix?=${DESTDIR}
DOCKER_REPOSITORY_NAME=astillero_jekyll

.PHONY: build
build:
	docker-compose build
