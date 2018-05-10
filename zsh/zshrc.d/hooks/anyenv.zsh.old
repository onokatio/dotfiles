	#eval "$(anyenv init - --no-rehash)"
	#eval "$(anyenv init -)"
	#anyenv() {
	#	typeset command
	#	command="$1"
	#	if [ "$#" -gt 0 ]; then
	#		shift
	#	fi
	#	command anyenv "$command" "$@"
	#}

if [[ -d $ANYENV_ROOT ]] ; then
	echo "export PATH=$ANYENV_ROOT/bin:\$PATH"
	xenvlist=(`command ls $ANYENV_ROOT/envs`)
	for xenv in ${xenvlist[@]};do 
		cat <<- EOS
			export ${xenv}_ROOT='$ANYENV_ROOT/envs/${xenv}'
			export PATH="$ANYENV_ROOT/envs/${xenv}/bin:\$PATH"
			export PATH="$ANYENV_ROOT/envs/${xenv}/shims:\$PATH"
			hash -r 2>/dev/null || true
			${xenv}() {
				local command
				command="\$1"
				if [ "\$#" -gt 0 ]; then
					shift
				fi

				case "\$command" in
				rehash|shell)
					hash -r 2>/dev/null || true;;
				*)
					command ${xenv} "\$command" "\$@";;
					esac
			}
		EOS
	done
else
	echo 'ANYENV_ROOT is not set.'
fi
