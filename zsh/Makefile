all :
	zsh -n zshrc
	echo -n > zshrc
	cd zshrc.d && ls | xargs cat >> ../zshrc ; done
	zsh -c 'zcompile ./zshrc'
	zsh ./zshrc
