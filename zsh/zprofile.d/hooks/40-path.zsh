
add-bin(){
	echo "export PATH=$1:\$PATH"
}

add-local-path(){
	if [[ -d "$1" ]];then
		echo "export PATH=$1/sbin:\$PATH"
		echo "export PATH=$1/bin:\$PATH"
		echo "export LD_LIBRARY_PATH=$1/lib:\$LD_LIBRARY_PATH"
		echo "export LD_LIBRARY_PATH=$1/lib64:\$LD_LIBRARY_PATH"
		echo "export LD_RUN_PATH=$1/lib:\$LD_RUN_PATH"
		echo "export LD_RUN_PATH=$1/lib64:\$LD_RUN_PATH"
		echo "export PKG_CONFIG_PATH=$1/lib/pkgconfig:\$PKG_CONFIG_PATH"
		echo "export PKG_CONFIG_PATH=$1/lib64/pkgconfig:\$PKG_CONFIG_PATH"
		echo "export MANPATH=$1/share/man:\$MANPATH"
		echo "export INFOPATH=$1/share/info:\$INFOPATH"
		echo "export XDG_DATA_DIRS=$1/share:\$XDG_DATA_DIRS"
	fi
}

add-local-path "/usr"
add-local-path "/usr/local"
add-local-path "/home/local"
#add-bin /home/local/python/anaconda3/bin
#add-local-path /home/local/python/anaconda3
#add-bin /usr/lib/ccache/bin

add-bin "$HOME/.yarn/bin"
add-bin "./node_modules/.bin"

cd `dirname $0`/../../../ #CTG
add-bin "$PWD/bin"

add-local-path "$HOME/usr"
