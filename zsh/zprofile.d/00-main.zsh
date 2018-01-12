add-bin(){
	if [[ -e "$1" ]];then
		export PATH=$1:$PATH
	fi
}
add-local-path(){
	if [[ -e "$1" ]];then
		export PATH="$1/sbin:$PATH"
		export PATH="$1/bin:$PATH"
		export LD_LIBRARY_PATH="$1/lib:$LD_LIBRARY_PATH"
		export LD_LIBRARY_PATH="$1/lib64:$LD_LIBRARY_PATH"
		export PKG_CONFIG_PATH="$1/lib/pkgconfig:$PKG_CONFIG_PATH"
		export PKG_CONFIG_PATH="$1/lib64/pkgconfig:$PKG_CONFIG_PATH"
		export MANPATH="$1/share/man:$MANPATH"
		export INFOPATH="$1/share/info:$INFOPATH"
		export XDG_DATA_DIRS="$1/share:$XDG_DATA_DIRS"
		PY2VERSION="2.7.14"
		PY3VERSION="3.6.3"
		PY2MODULE="$ANYENV_ROOT/envs/pyenv/versions/$PY2VERSION/lib/python2.7/site-packages/custom.pth"
		PY3MODULE="$ANYENV_ROOT/envs/pyenv/versions/$PY3VERSION/lib/python3.6/site-packages/custom.pth"
		if [[ -e "$ANYENV_ROOT/envs/pyenv/versions/$PY2VERSION" ]];then
			if [[ ! -e "$PY2MODULE" ]] || ! grep "$1/lib/python2.7/site-packages" "$PY2MODULE" >/dev/null 2>&1;then
				echo "$1/lib/python2.7/" >> $PY2MODULE
				echo "$1/lib/python2.7/site-packages" >> $PY2MODULE
				echo "$1/lib/python2.7/site-packages/gtk-2.0" >> $PY2MODULE
			fi
		fi
		if [[ -e "$ANYENV_ROOT/envs/pyenv/versions/$PY3VERSION" ]];then
			if [[ ! -e "$PY3MODULE" ]] || ! grep "$1/lib/python3.6/site-packages" "$PY3MODULE" >/dev/null 2>&1;then
				echo "$1/lib/python3.6/" >> $PY3MODULE
				echo "$1/lib/python3.6/site-packages" >> $PY3MODULE
				echo "$1/lib/python3.6/site-packages/gtk-2.0" >> $PY3MODULE
			fi
		fi
	fi
}


#export MYLOCAL=/tmp/.systemd/local
#export MYLOCAL=$CTG/local

add-bin /bin
add-bin /sbin
add-local-path /usr
add-local-path /usr/local
add-local-path /home/local
#add-bin /home/local/python/anaconda3/bin
add-local-path /home/local/python/anaconda3
add-local-path $MYLOCAL
add-local-path $MYLOCAL/Linuxbrew
#add-bin /usr/lib/ccache/bin
#add-bin $CTG/anyenv/bin
add-bin $MYLOCAL/anyenv/bin
add-bin $CTG/bin
add-bin ./node_modules/.bin

export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache

if [[ -f $MYLOCAL/usr/lib/locale ]];then
	export LOCPATH=$MYLOCAL/usr/lib/locale
fi

export ZPLUG_HOME=$CTG/zsh/zplug
export ZPLUG_REPOS=$MYLOCAL/zsh-plugins
export ZPLUG_BIN=$MYLOCAL/bin
export NO_AT_BRIDGE=1
export EMOJI_CLI_KEYBIND=^f
export HOMEBREW_CACHE=/tmp/cache
export HOMEBREW_MAKE_JOBS=4
export HOMEBREW_NO_ENV_FILTERING=1

#export HOMEBREW_EDITOR=vi
export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
#export EDITOR=vim
export EDITOR=vi
#ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main pattern cursor root line)
#ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')
export USE_CCACHE=1
export CCACHE_DIR=$HOME/.ccache
#which ccache >/dev/null 2>&1 && export CC="ccache gcc"
#export TERM="xterm-256color"
export MAKE_OPTS="-j 4"

#export POWERLEVEL9K_PROMPT_ON_NEWLINE=true
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_uuu dir root_indicator ssh)
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs custom_nya)
export POWERLEVEL9K_CUSTOM_UUU="echo （」・ω・）」うー"
export POWERLEVEL9K_CUSTOM_NYA="echo ＼（・ω・＼）にゃー！"
#export ZSH_PLUGINS=$MYLOCAL/zsh-plugins
#export LC_ALL=ja_JP.utf-8
export ANYENV_ROOT=$MYLOCAL/anyenv
eval "$(anyenv init - zsh)"

#export PYTHONPATH=$ANYENV_ROOT/anyenv/envs/pyenv/versions/2.7.14/lib/python2.7:$PYTHONPATH
#export PYTHONPATH=$ANYENV_ROOT/anyenv/envs/pyenv/versions/2.7.14/lib/python2.7/site-packages:$PYTHONPATH

export GOPATH=$MYLOCAL/gopath
export PATH=$GOPATH/bin:$PATH

HISTFILE=~/.zsh_history
#HISTSIZE=1000
#SAVEHIST=1000
#REPORTTIME=3

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey ";5C" forward-word
bindkey ";5D" backward-word

