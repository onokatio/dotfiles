#zmodload zsh/zprof && zprof

export PATH         = $HOME/usr/bin:$PATH
export ZSH_PLUGINS  = $HOME/.zshrc.d/.zsh_plugins
export ZPLUG_REPOS  = $ZSH_PLUGINS
export ZPLUG_HOME   = $ZSH_PLUGINS/zplug
export ZPLUG_BIN    = $ZSH_PLUGINS/bin
export NO_AT_BRIDGE = 1
export DOCKER_CONTENT_TRUST=1

if [ -d $HOME/.anyenv ] ; then
	export PATH="$HOME/.anyenv/bin:$PATH"
	eval "$(anyenv init -)"
else
	echo "anyenv not found"
fi

if [ -d $ZPLUG_HOME ] ; then


HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
REPORTTIME=3

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey ";5C" forward-word
bindkey ";5D" backward-word

for i ($HOME/.zshrc.d/*.zsh) source $i

if [ ~/.zshrc -nt ~/.zshrc.zwc ]; then
  zcompile ~/.zshrc
fi

#if type zprof > /dev/null 2>&1; then
	#zprof | less
#fi
