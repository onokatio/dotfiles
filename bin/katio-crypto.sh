#!/bin/bash

VAULT_DIR=$HOME
VAULT_NAME=vault

mkdir -p $VAULT

if [[ -z "$1" ]];then
	echo "Input pass."
	exit
fi

pushd $PWD
	cd $VAULT_DIR

	tar -cvf vault.tar $VAULT_NAME
	rm -rf $VAULT_NAME

	openssl enc -e -aes-256-cbc -salt -k $1 -in vault.tar -out vault.tar.enc
	rm vault.tar
