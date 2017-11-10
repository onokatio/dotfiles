#zmodload zsh/zprof && zprof
if [[ -z "$CTG" ]] ; then
	echo "var CTG not found"
fi

export MYLOCAL=$CTG/local

export LD_LIBRARY_PATH="/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/lib64:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/usr/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/usr/lib64:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/usr/local/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/usr/local/lib64:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/home/local/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/home/local/lib64:$LD_LIBRARY_PATH"

export PKG_CONFIG_PATH="/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/lib64/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/usr/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/usr/lib64/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/usr/local/lib64/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/home/local/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/home/local/lib64/pkgconfig:$PKG_CONFIG_PATH"

export PATH=$MYLOCAL/bin:$PATH
export LD_LIBRARY_PATH="$MYLOCAL/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="$MYLOCAL/lib64:$LD_LIBRARY_PATH"
export PKG_CONFIG_PATH="$MYLOCAL/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="$MYLOCAL/lib64/pkgconfig:$PKG_CONFIG_PATH"
export MANPATH="$MYLOCAL/share/man:$MANPATH"
export INFOPATH="$MYLOCAL/share/info:$INFOPATH"
export XDG_DATA_DIRS="$MYLOCAL/share:XDG_DATA_DIRS"

export PATH=$MYLOCAL/Linuxbrew/bin:$PATH
export LD_LIBRARY_PATH="$(brew --prefix)/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="$(brew --prefix)/lib64:$LD_LIBRARY_PATH"
export PKG_CONFIG_PATH="$(brew --prefix)/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="$(brew --prefix)/lib64/pkgconfig:$PKG_CONFIG_PATH"
export MANPATH="$(brew --prefix)/share/man:$MANPATH"
export INFOPATH="$(brew --prefix)/share/info:$INFOPATH"
export XDG_DATA_DIRS="$(brew --prefix)/share:$XDG_DATA_DIRS"

export ZPLUG_HOME=$CTG/zsh/zplug
export ZSH_PLUGINS=$MYLOCAL/zsh-plugins
export ZPLUG_REPOS=$MYLOCAL/zsh-plugins
export ZPLUG_BIN=$MYLOCAL/bin
export NO_AT_BRIDGE=1
export EMOJI_CLI_KEYBIND=^f
export HOMEBREW_MAKE_JOBS=4
export HOMEBREW_EDITOR=vi
export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

#export ANYENV_ROOT=$ZSH_PLUGINS/onokatio/anyenv
#export DOCKER_CONTENT_TRUST=1

#export PATH=/home/local/opt/anaconda2/bin:$PATH


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
	#zplug "zsh-users/zsh-autosuggestions", hook-build:"w=$ZPLUG_REPOS/zsh-users/zsh-autosuggestions;test -d $w&&zcompile $(find $w -name "*.zsh")"
	zplug "zsh-users/zsh-autosuggestions"
	#zplug "zsh-users/zsh-syntax-highlighting", hook-build:"w=$ZPLUG_REPOS/zsh-syntax-highlighting;test -d $w&&zcompile $(find $w -name "*.zsh")"
	zplug "zsh-users/zsh-syntax-highlighting"
	zplug "zsh-users/zsh-completions"
	#zplug "b4b4r07/emoji-cli", on:"stedolan/jq"
	#zplug "TBSliver/zsh-plugin-tmux-simple"
	#zplug "arzzen/calc.plugin.zsh"
	#zplug "felixr/docker-zsh-completion"
	#zplug "mrowa44/emojify", as:command
	zplug "b4b4r07/enhancd", on:"junegunn/fzf-bin"
	zplug "b4b4r07/zsh-gomi", \
	  as:command, \
	  use:bin/gomi, \
	  on:junegunn/fzf-bin
	#	lazy:true
	#zplug "b4b4r07/enhancd", use:enhancd.sh, on:junegunn/fzf-bin
	#zplug "Linuxbrew/brew", lazy:true
	zplug "b4b4r07/history", from:gh-r, as:command, use:"*linux*amd64*", hook-load:'history(){command history $@}'
	#zplug "b4b4r07/history", use:"misc/zsh/init.zsh"
	#, as:command, use:"bin/brew"
	zplug 'meetfranz/franz-app-legacy', from:gh-r, as:command, use:'*linux*x64*', rename-to:franz
	#zplug "junegunn/vim-plug"
	#if ! zplug check --verbose && which git > /dev/null 2>&1 ; then
	#	zplug install
	#fi
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

#if [[ -d $CTG/zshrc.d/ ]] ; then
#	for i ($CTG/zshrc.d/*.zsh) source $i
#fi

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

