.SILENT:

all:
	cd "$(PWD)/static"  && $(MAKE) -s
	cd "$(PWD)/vim"     && $(MAKE) -s
	cd "$(PWD)/zsh"     && $(MAKE) -s
	cd "$(PWD)/tmux"    && $(MAKE) -s
