NAME=$CTG/cache/tmux-plugins/tpm

#[[ -x "$NAME" ]] || {
#	echo "[WARN]  tpm not found"
#	git clone https://github.com/tmux-plugins/tpm $NAME
#}

NAME=$CTG/cache/dein.vim

[[ -x "$NAME" ]] || {
	echo "[WARN]  dein.vim not found"
	git clone https://github.com/Shougo/dein.vim $NAME
}
