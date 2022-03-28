#!/bin/zsh

if [[ -z "$CTG" ]];then
	echo 'zsh/zshrc: CTG not found. loading zprofile ...'
	source $ZDOTDIR/.zprofile
fi

for i in $(command ls $CTG/zsh/zshrc.d/*.zsh | grep -v 00-source.zsh | sort)
do
	#echo CTG/zsh/zshrc: source $(basename $i)
	source $i
done

# Created by `pipx` on 2022-03-17 14:22:34
export PATH="$PATH:/Users/katio/.local/bin"
