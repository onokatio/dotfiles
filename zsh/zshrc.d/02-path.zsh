#  XDG_CONFIG_HOME : /etc       : ~/.config
#  XDG_CACHE_HOME  : /var/cache : ~/.cache
#  XDG_DATA_HOME   : /usr/share : ~/.local/share
#  XDG_RUNTIME_DIR : /tmp       : /run/user/1000
#  XDG_DATA_DIRS   :            : /usr/local/share:/usr/share
#  XDG_CONFIG_DIRS :            : /etc/xdg

add-prefix() {

	# This is danger.
	#
	export PATH=$1/sbin:$PATH
	export PATH=$1/bin:$PATH
	export LD_LIBRARY_PATH=$1/usr/lib:$LD_LIBRARY_PATH
	export LD_LIBRARY_PATH=$1/usr/lib64:$LD_LIBRARY_PATH
	export LD_LIBRARY_PATH=$1/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH
	export LD_LIBRARY_PATH=$1/usr/lib64/x86_64-linux-gnu:$LD_LIBRARY_PATH
	export LD_RUN_PATH=$1/usr/lib:$LD_RUN_PATH
	export LD_RUN_PATH=$1/usr/lib64:$LD_RUN_PATH
	export LD_RUN_PATH=$1/usr/lib/x86_64-linux-gnu:$LD_RUN_PATH
	export LD_RUN_PATH=$1/usr/lib64/x86_64-linux-gnu:$LD_RUN_PATH
	export PKG_CONFIG_PATH=$1/usr/lib/pkgconfig:$PKG_CONFIG_PATH
	export PKG_CONFIG_PATH=$1/usr/lib64/pkgconfig:$PKG_CONFIG_PATH
	export MANPATH=$1/share/man:$MANPATH
	export INFOPATH=$1/share/info:$INFOPATH
	export XDG_DATA_DIRS=$1/share:$XDG_DATA_DIRS
}

# usage: add-python-path <dst> <src>
add-python-path() {

	custom_pth="$1/custom.pth"

	if [[ -d "$1" ]]; then

		[[ ! -e "${custom_pth}" ]] && touch $custom_pth

		if ! grep "$2" "$custom_pth" >/dev/null 2>&1; then
			echo "$2/" >>${custom_pth}
			echo "$2/site-packages/" >>${custom_pth}
		fi
	fi
}

# set system PYTHONPATH to linuxbrew's PYTHONPATH
#add-python-path "/home/linuxbrew/.linuxbrew/lib/python2.7/site-packages" "/usr/lib/python2.7"
#add-python-path "/home/linuxbrew/.linuxbrew/lib/python3.7/site-packages" "/usr/lib/python3.7"
#add-python-path "/home/linuxbrew/.linuxbrew/lib/python3.7/site-packages" "/usr/lib/python3.8"

### HomeBrew ###
export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/sbin:$PATH
#export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
if [[ ! -z "$commands[brew]" ]];then
	BREW_PATH="$(dirname $(dirname $commands[brew]))"
	export PATH="$BREW_PATH/opt/ccache/libexec:$PATH"
	export PATH="$BREW_PATH/share/git-core/contrib/diff-highlight:$PATH"
fi

### Wrapper ###
#export PATH="/usr/share/perl5/vendor_perl/auto/share/dist/Cope:"$PATH
#export PATH="/usr/lib/colorgcc/bin:$PATH"

### Package Manager ###
#export PATH="~/.local/share/cargo/bin:$PATH"
#source ~/.local/share/cargo/env
#source $CARGO_HOME/env
export PATH="$HOME/.cargo/bin:$PATH"
#eval $(brew shellenv)
#export PATH="$PATH:~/.local/bin" # pipx

### My local ###
export PATH=$CTG/bin:$PATH
#export PATH=~/script/github.com/onokatio/emilia/global/node_modules/.bin:$PATH

echo hello default shell
