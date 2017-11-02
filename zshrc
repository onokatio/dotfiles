#zmodload zsh/zprof && zprof
if [[ -z "$CTG" ]] ; then
	echo "var CTG not found"
fi

#export PATH=$HOME/usr/bin:$PATH
export ZPLUG_HOME=$CTG/zplug
export ZSH_PLUGINS=$CTG/plugins
export ZPLUG_REPOS=$ZSH_PLUGINS
export ZPLUG_BIN=$ZSH_PLUGINS/bin
export ANYENV_ROOT=$ZSH_PLUGINS/riywo/anyenv
export NO_AT_BRIDGE=1
export EMOJI_CLI_KEYBIND=^f
export HOMEBREW_MAKE_JOBS=4
export HOMEBREW_EDITOR=vi
export PATH=$ZPLUG_BIN:$PATH
#export MANPATH="$(brew --prefix)/share/man:$MANPATH"
#export INFOPATH="$(brew --prefix)/share/info:$INFOPATH"

#export DOCKER_CONTENT_TRUST=1


	source $ZPLUG_HOME/init.zsh
	#zplug 'zplug/zplug', hook-build:'zplug --self-manage'
	zplug "junegunn/fzf-bin", \
		from:gh-r, \
		as:command, \
		rename-to:fzf, \
		use:"*linux*amd64*"
	zplug "onokatio/anyenv", as:command, use:"bin/anyenv"
	zplug "stedolan/jq", from:gh-r, as:command
	#zplug "zsh-users/zsh-autosuggestions", hook-build:"w=$ZPLUG_REPOS/zsh-users/zsh-autosuggestions;test -d $w&&zcompile $(find $w -name "*.zsh")"
	zplug "zsh-users/zsh-autosuggestions"
	#zplug "zsh-users/zsh-syntax-highlighting", hook-build:"w=$ZPLUG_REPOS/zsh-syntax-highlighting;test -d $w&&zcompile $(find $w -name "*.zsh")"
	zplug "zsh-users/zsh-syntax-highlighting"
	zplug "zsh-users/zsh-completions"\
	#zplug "b4b4r07/emoji-cli", on:"stedolan/jq"
	#zplug "TBSliver/zsh-plugin-tmux-simple"
	#zplug "arzzen/calc.plugin.zsh"
	#zplug "felixr/docker-zsh-completion"
	#zplug "mrowa44/emojify", as:command
	zplug "b4b4r07/zsh-gomi", \
	  as:command, \
	  use:bin/gomi, \
	  on:junegunn/fzf-bin
	#zplug "b4b4r07/enhancd", use:enhancd.sh, on:junegunn/fzf-bin
	zplug "Linuxbrew/brew", hook-load:"make"
	#, as:command, use:"bin/brew"
	#zplug "junegunn/vim-plug"
	#if ! zplug check --verbose && which git > /dev/null 2>&1 ; then
	#	zplug install
	#fi
	zplug load
 
#export PATH="$ZSH_PLUGINS/Linuxbrew/brew/bin:$PATH"
#export LD_LIBRARY_PATH="$ZSH_PLUGINS/Linuxbrew/brew/lib:$ZSH_PLUGINS/Linuxbrew/brew/lib64"
#export PKG_CONFIG_PATH="$ZSH_PLUGINS/Linuxbrew/brew/lib/pkgconfig:$PKG_CONFIG_PATH"
#export PKG_CONFIG_PATH="$ZSH_PLUGINS/Linuxbrew/brew/lib64/pkgconfig:$PKG_CONFIG_PATH"
#export XDG_DATA_DIRS="$ZSH_PLUGINS/Linuxbrew/brew/share:XDG_DATA_DIRS"
#export MANPATH="$ZSH_PLUGINS/Linuxbrew/brew/share/man:$MANPATH"
#export INFOPATH="$ZSH_PLUGINS/Linuxbrew/brew/share/info:$INFOPATH"

if [[ -d $ANYENV_ROOT ]] ; then
	eval "$(anyenv init - --no-rehasu)"
fi

if [[ -d $CTG/zshrc.d/ ]] ; then
	for i ($CTG/zshrc.d/*.zsh) source $i
fi

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
REPORTTIME=3

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey ";5C" forward-word
bindkey ";5D" backward-word

if [ $CTG/zshrc -nt ~/.zshrc.zwc ]; then
  zcompile ~/.zshrc
fi

#zprof | less
