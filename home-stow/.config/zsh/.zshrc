#!/bin/zsh

#PROFILE_STARTUP=true

if [[ "$PROFILE_STARTUP" == true ]]; then
  zmodload zsh/zprof
  PS4=$'%D{%M%S%.} %N:%i> '
  exec 3>&2 2>$HOME/startlog.$$
  setopt xtrace prompt_subst
fi

#source $ZDOTDIR/.zprofile

[[ -e ~/.zshrc_local ]] && source ~/.zshrc_local

for i in $(command ls `dirname ${(%):-%N}`/zshrc.d/*.zsh | grep -v 00-source.zsh | sort)
do
	#echo CTG/zsh/zshrc: source $(basename $i)
	source $i
done

