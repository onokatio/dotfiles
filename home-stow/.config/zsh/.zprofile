#!/bin/zsh

#if [[ -z "$CTG" ]];then
#	export CTG=$HOME/.conf-to-git
#fi
#
#for i in $(command ls $CTG/zsh/zprofile.d/*.zsh | grep -v 00-source.zsh | sort)
#do
#	#echo CTG/zsh/zprofile: source $(basename $i)
#	source $i
#done

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
