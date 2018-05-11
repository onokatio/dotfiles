add-bin(){
	if [[ -e "$1" ]];then
		export PATH=$1:$PATH
	fi
}

add-local-path(){
	if [[ -e "$1" ]];then
		export PATH="$1/sbin:$PATH"
		export PATH="$1/bin:$PATH"
		export LD_LIBRARY_PATH="$1/lib:$LD_LIBRARY_PATH"
		export LD_LIBRARY_PATH="$1/lib64:$LD_LIBRARY_PATH"
		export LD_RUN_PATH="$1/lib:$LD_RUN_PATH"
		export LD_RUN_PATH="$1/lib64:$LD_RUN_PATH"
		export PKG_CONFIG_PATH="$1/lib/pkgconfig:$PKG_CONFIG_PATH"
		export PKG_CONFIG_PATH="$1/lib64/pkgconfig:$PKG_CONFIG_PATH"
		export MANPATH="$1/share/man:$MANPATH"
		export INFOPATH="$1/share/info:$INFOPATH"
		export XDG_DATA_DIRS="$1/share:$XDG_DATA_DIRS"
		PY2VERSION="2.7.14"
		PY3VERSION="3.6.3"
		PY2MODULE="$ANYENV_ROOT/envs/pyenv/versions/$PY2VERSION/lib/python2.7/site-packages/custom.pth"
		PY3MODULE="$ANYENV_ROOT/envs/pyenv/versions/$PY3VERSION/lib/python3.6/site-packages/custom.pth"
		if [[ -e "$ANYENV_ROOT/envs/pyenv/versions/$PY2VERSION" ]];then
			if [[ ! -e "$PY2MODULE" ]] || ! grep "$1/lib/python2.7/site-packages" "$PY2MODULE" >/dev/null 2>&1;then
				echo "$1/lib/python2.7/" >> $PY2MODULE
				echo "$1/lib/python2.7/site-packages" >> $PY2MODULE
				echo "$1/lib/python2.7/site-packages/gtk-2.0" >> $PY2MODULE
			fi
		fi
		if [[ -e "$ANYENV_ROOT/envs/pyenv/versions/$PY3VERSION" ]];then
			if [[ ! -e "$PY3MODULE" ]] || ! grep "$1/lib/python3.6/site-packages" "$PY3MODULE" >/dev/null 2>&1;then
				echo "$1/lib/python3.6/" >> $PY3MODULE
				echo "$1/lib/python3.6/site-packages" >> $PY3MODULE
				echo "$1/lib/python3.6/site-packages/gtk-2.0" >> $PY3MODULE
			fi
		fi
	fi
}

#add-bin /bin
#add-bin /sbin
#add-local-path /usr
#add-local-path /usr/local
#add-local-path /home/local
#add-bin /home/local/python/anaconda3/bin
#add-local-path /home/local/python/anaconda3
#add-bin /usr/lib/ccache/bin
add-bin $HOME/.yarn/bin
add-bin ./node_modules/.bin
