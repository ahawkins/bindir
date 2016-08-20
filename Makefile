.DEFAULT_GOAL: all

.PHONY: all
all: images permissions

.PHONY: permissions
permissions:
	chmod +x bin/*

.PHONY: images
images:
	docker build -t ahawkins/todo todo
	docker build -t ahawkins/timetrap timetrap
