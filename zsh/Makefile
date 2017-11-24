zshrc.zwc : zshrc.d/00-main.zsh zshrc.d/10-autoload.zsh zshrc.d/20-zstyle.zsh zshrc.d/30-setopt.zsh zshrc.d/40-alias.zsh zshrc.d/50-prompt.zsh zshrc.d/90-private.zsh zshrc.d/99-end.zsh
	zsh -n zshrc
	echo -n > zshrc
	cd zshrc.d && ls | xargs cat >> ../zshrc ; done
	zsh -c 'zcompile ./zshrc'
	zsh ./zshrc
