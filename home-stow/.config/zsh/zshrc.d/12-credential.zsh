function inject_credential(){
	s=${3[(w)1]} # get first element of $3
	if [[ "$s" == "rclone" || "$s" == "rclone-mac" || "$s" == "env" || "$s" == "terraform" || "$s" == "pegasus" ]];then
		echo "[zsh] detecting env injection: $s" > /dev/stderr
		if [[ -z "$BWS_OUTPUTS" ]];then
			export BWS_OUTPUTS="$(bws secret list)"
		fi
		export RCLONE_CONFIG_WASABI_ACCESS_KEY_ID=$(echo $BWS_OUTPUTS | jq -r '.[] | select(.key=="wasabi-access-key") | .value')
		export RCLONE_CONFIG_WASABI_SECRET_ACCESS_KEY=$(echo $BWS_OUTPUTS | jq -r '.[] | select(.key=="wasabi-access-token") | .value')
		export RCLONE_CONFIG_WASABI_US_ACCESS_KEY_ID=$(echo $BWS_OUTPUTS | jq -r '.[] | select(.key=="wasabi-access-key") | .value')
		export RCLONE_CONFIG_WASABI_US_SECRET_ACCESS_KEY=$(echo $BWS_OUTPUTS | jq -r '.[] | select(.key=="wasabi-access-token") | .value')
		export RCLONE_CONFIG_WASABI_TOKYO_CRYPT_PASSWORD=$(echo $BWS_OUTPUTS | jq -r '.[] | select(.key=="wasabi-tokyo-crypt") | .value')
		export RCLONE_CONFIG_WASABI_CRYPT_PASSWORD=$(echo $BWS_OUTPUTS | jq -r '.[] | select(.key=="wasabi-crypt") | .value')
	fi
}

if [[ ! -z "$commands[bws]" ]];then
	add-zsh-hook preexec inject_credential
fi
