if [[ ! -e "$MYLOCAL" ]];then
	mkdir -p $MYLOCAL
fi

if [[ ! -e "$LINUXBREW" ]];then
	git clone -b $BREW_VERSION --depth 1 https://github.com/Linuxbrew/brew $LINUXBREW
	#git clone --depth 1 https://github.com/Linuxbrew/brew $LINUXBREW
fi

if [[ ! -e "$ANYENV" ]];then
	git clone --depth 1 https://github.com/riywo/anyenv $ANYENV
fi

check_locale="$MYLOCAL/usr/lib/locale"
if ! (ls $check_locale|grep ja_JP) || ! (ls $check_locale|grep en_US) ;then
	echo "There are not ja_JP and en_US."
	cp /etc/locale.gen $MYLOCAL/etc/locale.gen
	echo "ja_JP.UTF-8 UTF-8" >> $MYLOCAL/etc/locale.gen
	echo "en_US.UTF-8 UTF-8" >> $MYLOCAL/etc/locale.gen
	locale-gen.local
fi

cd $CTG/zsh >/dev/null && ./make >/dev/null
