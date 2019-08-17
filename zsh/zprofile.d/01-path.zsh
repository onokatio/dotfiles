#  XDG_CONFIG_HOME : /etc       : ~/.config
#  XDG_CACHE_HOME  : /var/cache : ~/.cache
#  XDG_DATA_HOME   : /usr/share : ~/.local/share
#  XDG_RUNTIME_DIR : /tmp       : /run/user/1000
#  XDG_DATA_DIRS   :            : /usr/local/share:/usr/share
#  XDG_CONFIG_DIRS :            : /etc/xdg

add-local-path(){

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

#add-local-path "/usr"
#add-local-path "/usr/local"
#add-local-path "/home/local"
#add-local-path "$HOME/local"

### Linuxbrew ###
#export PATH=/home/linuxbrew/.linuxbrew:$PATH
#export PATH=$HOME/usr/brew:$PATH
#export PATH=$HOME/.linuxbrew:$PATH
#eval $(brew shellenv)

#export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
#################

export PATH=/usr/lib/ccache/bin:$PATH
export PATH=$HOME/node_modules/.bin:$PATH
export PATH=./node_modules/.bin:$PATH
export PATH=./vendor/bin:$PATH
export PATH=$CTG/bin:$PATH
