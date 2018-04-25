CACHE=$MYLOCAL/tmp/cache/packages
mkdir -p $CACHE

set +u

function dfpm(){
	#if [[ -z "$1" ]] || [[ -z "$2" ]] || [[ -z "$3" ]] || [[ -z "$4" ]];then
	#if [[ -z "$1" ]] || [[ -z "$2" ]] || [[ -z "$3" ]] ;then
	#	echo "[dfpm] option error."
	#	echo "Usage:"
	#	echo "  dfpm <zip|raw|git> <url> <path> [filename|dirname|branch] [command]"
	#	return 1
	#fi
	if [[ "$1" == "zip" ]];then
		[[ -e "$3/$4" ]] &&  return
		dfpm_zip $2 $3 $4 $5
	elif [[ $1 == "raw" ]];then
		[[ -e "$3/$4" ]] &&  return
		dfpm_raw $2 $3 $4 $5
	elif [[ $1 == "git" ]];then
		#[[ -e "$4" ]] &&  return
		dfpm_git $2 $3 $4 $5
	else
		dfpm_git $1 $2 $3 $4
	fi
}
function dfpm_zip(){ # <url> <path> <dirname>
	tmp_zip=$(mktemp)
	mkdir -p $2/$3

	echo "[dfpm zip] Installing $1 ... "
		curl $1 -LSs -o ${tmp_zip}
		unzip -j -q -d $2/$3 ${tmp_zip}
}
function dfpm_raw(){ # <url> <path> <filename>
	echo "[dfpm raw] Installing $1 ..."
		curl $1 -LSs -o $2/$3
}

function dfpm_git(){ # <url> <path> <branch> [command]
		dirname=$(basename $1)
		[[ -z "$3" ]] && branch="master" || branch=$3
	echo "[dfpm git] Installing $1 ..."
		[[ -e "$2/$dirname" ]] && echo "directory exist." && return
		git clone -b $branch --depth 1 --recursive https://github.com/$1 $2/$dirname
		#zsh -l
		#PWD_NOW=$PWD
		#cd $2/$dirname && zsh -c '$4'  && cd $PWD_NOW
}


fonts_dir=$XDG_DATA_HOME/fonts
themes_dir=$XDG_DATA_HOME/themes


NotoColorEmoji="https://github.com/googlei18n/noto-emoji/raw/master/fonts/NotoColorEmoji.ttf"
#dfpm raw $NotoColorEmoji $fonts_dir noto.ttf

GATEUTILS="https://github.com/onokatio/vpngate-utils/archive/master.zip"
#dfpm zip $GATEUTILS $MYLOCAL/share vpngate



UbuntuPowerline="https://github.com/powerline/fonts/blob/master/UbuntuMono/Ubuntu%20Mono%20derivative%20Powerline.ttf?raw=true"
#dfpm_raw $UbuntuPowerline $fonts_dir "Ubuntu-Mono-Powerline.ttf"

