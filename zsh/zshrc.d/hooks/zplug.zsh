cd `dirname $0`

echo 'port for zplugin' >&2
alias zplug=':'

if [[ ! -d ./zplug ]] ;then
	echo zplug not found >&2
	exit
fi

export ZPLUG_HOME="$PWD/zplug"
export ZPLUG_REPOS=$MYLOCAL_DIST/.zsh-plugins
export ZPLUG_BIN=$ZPLUG_REPOS/bin

source $ZPLUG_HOME/init.zsh

zplug "zdharma/fast-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "chrissicool/zsh-bash"
zplug "zsh-users/zsh-completions"

zplug check --verbose >&2 || zplug install >&2
zplug update >&2

zplug clear >&2
zplug load >&2

list=(`zplug list`)

echo "##### zplug #####"

for i in $list ; do
	eval $(zplug info $i | sed -e 's/-//' | sed -e 's/: /=/'|grep "dir" | sed 's/\x1b\[[0-9;]*m//g')
	echo find zsh file:  $(ls $dir/*.zsh | head -n1) >&2
	#echo source $(ls $dir/*.zsh | head -n1)
done

compinit

echo 'autoload -Uz +X compinit && compinit'
echo 'autoload -Uz +X bashcompinit && bashcompinit'
if [[ -r /usr/share/bash-completion/bash_completion ]];then
# echo 'source /usr/share/bash-completion/bash_completion'
fi
echo "##### /zplug #####"

# -U dont override alias
# -z ZSH mode
# -u use non-secure file
# -i skip non-secure file
# -C dont run security check
