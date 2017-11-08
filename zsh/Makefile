all :
	echo > zshrc
	cd zshrc.d && ls | xargs cat >> ../zshrc ; done
	zsh -c 'zcompile ./zshrc'
