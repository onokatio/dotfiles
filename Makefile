.SILENT:

all:
	cd "$(PWD)/vim"     && $(MAKE) -s
	cd "$(PWD)/zsh"     && $(MAKE) -s
