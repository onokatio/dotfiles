#!/bin/bash

if [ "$1" == pc-wlan0 ] && iwconfig pc-wlan0|grep Mt-Olympus; then
	if curl i.gzn.jp -I | grep "403 Forbidden"; then
		ssh -fND 30080 j16435@fukuoka.j.kisarazu.ac.jp -i .ssh/id_ecdsa -o "StrictHostKeyChecking no"
	fi
fi

cat
