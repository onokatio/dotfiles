#zmodload zsh/zprof && zprof
if [[ -z "$CTG" ]] || [[ -z "$MYLOCAL" ]] ; then
	#echo "var CTG or MYLOCAL are not found"
	source ~/.zprofile
fi

if [[ "$TTY" == "/dev/tty1" ]];then
	startx
elif echo "$TTY" | grep "/dev/tty" ;then
	fbterm
fi

if which tmux >/dev/null && [[ -z "$TMUX" ]];then
	tmux
fi

	source $ZPLUG_HOME/init.zsh
	#zplug 'zplug/zplug', hook-build:'zplug --self-manage'
	zplug "junegunn/fzf-bin", \
		from:gh-r, \
		as:command, \
		rename-to:fzf, \
		use:"*linux*amd64*"
	#	lazy:true
	#zplug "onokatio/anyenv" #, as:command, use:"bin/anyenv"
	#zplug "stedolan/jq", from:gh-r, as:command, lazy:true
	zplug "zsh-users/zsh-autosuggestions"
	zplug "zsh-users/zsh-syntax-highlighting", defer:2
	zplug "zsh-users/zsh-completions", lazy:true
	#zplug "b4b4r07/emoji-cli", on:"stedolan/jq"
	#zplug "TBSliver/zsh-plugin-tmux-simple"
	#zplug "arzzen/calc.plugin.zsh"
	#zplug "felixr/docker-zsh-completion"
	#zplug "mrowa44/emojify", as:command
	#zplug "b4b4r07/enhancd", on:"junegunn/fzf-bin"
	zplug "b4b4r07/zsh-gomi", \
	  as:command, \
	  use:bin/gomi, \
	  on:junegunn/fzf-bin, \
		lazy:true
	#zplug "b4b4r07/enhancd", use:enhancd.sh, on:junegunn/fzf-bin
	#zplug "b4b4r07/history", from:gh-r, as:command, use:"*linux*amd64*", hook-load:'history(){command history \$@}'
	#zplug "onokatio/history", use:"misc/zsh/init.zsh"
	#zplug 'meetfranz/franz-app-legacy', from:gh-r, as:command, use:'*linux*x64*', rename-to:franz
	#zplug "agnoster/agnoster-zsh-theme", as:theme
	#zplug "bhilburn/powerlevel9k", as:theme
	zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

	zplug load
 

if [[ -d $ANYENV_ROOT ]] ; then
	#eval "$(anyenv init - --no-rehash)"
	export PATH=$ANYENV_ROOT/bin:$PATH
	#eval "$(anyenv init -)"
	anyenv() {
	  typeset command
	  command="$1"
	  if [ "$#" -gt 0 ]; then
	    shift
	  fi
	  command anyenv "$command" "$@"
	}
fi
