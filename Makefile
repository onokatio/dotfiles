.SILENT:

all:
	cd "$(PWD)/static" && make -s
	cd "$(PWD)/vim"    && make -s
	cd "$(PWD)/zsh"    && make -s
