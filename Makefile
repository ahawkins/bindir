.DEFAULT_GOAL: all

.PHONY: permissions images

all: images permissions

permissions:
	chmod +x bin/*

images:
	docker build -t bindir/todo todo

install:
	ln -sf $(shell pwd)/bin ~/bin
