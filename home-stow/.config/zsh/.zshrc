#!/bin/zsh

#source $ZDOTDIR/.zprofile

for i in $(command ls `dirname ${(%):-%N}`/zshrc.d/*.zsh | grep -v 00-source.zsh | sort)
do
	#echo CTG/zsh/zshrc: source $(basename $i)
	source $i
done

