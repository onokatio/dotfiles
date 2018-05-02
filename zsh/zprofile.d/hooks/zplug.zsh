set -e  # stop when fail
set -u  # fail when var is not defined

DIST="../dists"

cd `dirname $0`

# export ZPLUG_HOME="../../zplug"
export ZPLUG_REPOS=$DIST/.zsh-plugins
export ZPLUG_BIN=$ZPLUG_REPOS/bin

#source $ZPLUG_HOME/init.zsh
source ../../zplug/init.zsh

while read line;do
	eval "zplug $line"
done < ./plugins.txt
