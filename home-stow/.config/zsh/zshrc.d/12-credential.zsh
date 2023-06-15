function inject_credential(){
	s=${3[(w)1]} # get first element of $3
	if [[ "$s" == "rclone" || "$s" == "rclone-mac" || "$s" == "env" ]];then
		export RCLONE_CONFIG_WASABI_ACCESS_KEY_ID=$(bws get secret 9815a28f-b01d-4553-aaec-b00c0072cf14 | jq -r .value)
		export RCLONE_CONFIG_WASABI_SECRET_ACCESS_KEY=$(bws get secret c6eac4b4-effc-467e-80a0-b00c007327df | jq -r .value)
		export RCLONE_CONFIG_WASABI_US_ACCESS_KEY_ID=$(bws get secret 9815a28f-b01d-4553-aaec-b00c0072cf14 | jq -r .value)
		export RCLONE_CONFIG_WASABI_US_SECRET_ACCESS_KEY=$(bws get secret c6eac4b4-effc-467e-80a0-b00c007327df | jq -r .value)
		export RCLONE_CONFIG_WASABI_TOKYO_CRYPT_PASSWORD=$(bws get secret 0c5c07f6-dff0-416a-9ee1-b00c00954b24 | jq -r .value)
		export RCLONE_CONFIG_WASABI_CRYPT_PASSWORD=$(bws get secret e5516708-650b-4ce6-b408-b02200b1d488 | jq -r .value)
	fi
}

if [[ ! -z "$commands[bws]" ]];then
	add-zsh-hook preexec inject_credential
fi
