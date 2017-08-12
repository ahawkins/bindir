DEST    ?= $$HOME

# These directories should be created before stowing packages.
# This makes stow links files and not directories. This workaround
# keeps files dropped into these directories by other programs
# outside this repo's SCM.
DIRS:=\
	.config/env \
	.config/fish \
	.config/fish/conf.d \
	.config/fish/completions \
	.config/fish/functions \
	.gnupg

REAL_DIRS:=$(addprefix $(DEST)/,$(DIRS))

$(REAL_DIRS):
	mkdir -p $@

.PHONY: install
install: | $(REAL_DIRS)
	stow -t $(DEST) env
	stow -t $(DEST) fish
	stow -t $(DEST) tmux
	stow -t $(DEST) git
	stow -t $(DEST) vim
	stow -t $(DEST) gnupg
	stow -t $(DEST) xorg
