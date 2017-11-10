all :
	echo -n > zshrc
	cd zshrc.d && ls | xargs cat >> ../zshrc ; done
	zsh -c 'zcompile ./zshrc'
