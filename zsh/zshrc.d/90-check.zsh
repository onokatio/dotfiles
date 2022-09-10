NAME=$CTG/cache/dein.vim

[[ -x "$NAME" ]] || {
	echo "[WARN]  dein.vim not found"
	git clone https://github.com/Shougo/dein.vim $NAME
}
