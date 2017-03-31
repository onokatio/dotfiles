source $ZPLUG_HOME/init.zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions"
zplug "b4b4r07/emoji-cli"
zplug "TBSliver/zsh-plugin-tmux-simple"
zplug "arzzen/calc.plugin.zsh"
zplug "felixr/docker-zsh-completion"

if ! zplug check --verbose; then
	printf "Install? [y/N]: "
	if read -q; then
		echo; zplug install
	fi
fi
zplug load --verbose
