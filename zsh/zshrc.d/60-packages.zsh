CACHE=$MYLOCAL/cache/packages
mkdir -p $CACHE

function zip_bin(){ # src-dir url url-path
	time=$(date +%s)
	echo "downloading $2 ..."
	curl $2 -LSs -o $CACHE/${time}.zip
	unzip -o -d $CACHE/$time $CACHE/${time}.zip
	mkdir -p $1
	mv "$CACHE/${time}" "$2/$1"
	rm $CACHE/${time}.zip
	rm $CACHE/${time}
}
function git_bin(){
}

NotoColorEmoji="https://github.com/googlei18n/noto-emoji/raw/master/fonts/NotoColorEmoji.ttf"
GATEUTILS="https://github.com/onokatio/vpngate-utils/archive/master.zip"
Materia="https://github.com/nana-4/materia-theme"

fonts_dir=$XDG_DATA_HOME/fonts
themes_dir=$XDG_DATA_HOME/themes

#raw_bin $fonts_dir $NotoColorEmoji
#zip_bin vpngate $MYLOCAL/share $GATEUTILS
#git_bin $theme_dir $Materia src
