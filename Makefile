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

.PHONY: install-bin
install-bin:
	stow -t /usr/local/bin bin
