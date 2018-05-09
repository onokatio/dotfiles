
cd `dirname $0`

export ZPLUG_HOME="$PWD/zplug"
export ZPLUG_REPOS=$MYLOCAL_DIST/.zsh-plugins
export ZPLUG_BIN=$ZPLUG_REPOS/bin

source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions", lazy:true

zplug clear

zplug check --verbose || zplug install
zplug status

zplug load --verbose

list=(`zplug list`)

for i in $list ; do
	echo $i
	zplug info $i
done
