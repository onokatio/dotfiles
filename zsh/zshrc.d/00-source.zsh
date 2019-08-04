for i in $(command ls ./*.zsh | grep -v 00-source.zsh | sort)
do
	echo source $i
	source $i
done
