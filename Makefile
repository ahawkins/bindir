DEST    ?= $$HOME
BIN_DIR := /usr/local/bin

.PHONY: install
install:
	stow -t $(DEST) env
	stow -t $(DEST) fish
	stow -t $(DEST) tmux
	stow -t $(DEST) git
	stow -t $(DEST) vim
	stow -t $(DEST) gnupg
	stow -t $(DEST) xorg
