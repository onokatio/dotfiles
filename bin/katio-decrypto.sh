#!/bin/bash

VAULT=$HOME/vault
mkdir -p $VAULT

if [[ -z "$1" ]];then
	echo "Input pass."
	exit
fi

openssl enc -d -aes-256-cbc -salt -k $1 -in vault.tar.enc -out vault.tar
rm vault.tar

tar -xvf vault.tar
rm -rf $VAULT
