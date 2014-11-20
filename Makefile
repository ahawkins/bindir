.DEFAULT_GOAL: all

.PHONY: permissions images

all: images permissions

permissions:
	chmod +x bin/*

images:
	docker build -t bindir/todo todo
	docker build -t bindir/timetrap timetrap

install:
	ln -sf $(shell pwd)/bin ~/bin
