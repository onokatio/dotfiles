#!/bin/bash

if [ "$1" == wlp1s0 ] && iwconfig wlp1s0|grep Mt-Olympus; then
	curl -Ss --cipher AES-CBC3-SHA --data "buttonClicked=4&username=j16435&password=NITpasokon96&Submit=Submit" https://kwlc.kisarazu.ac.jp/login.html
	#if curl i.gzn.jp -I | grep "403 Forbidden"; then
	if ! ps ax|grep "[s]sh -fND 30080"; then
		ssh -fND 30080 j16435@fukuoka.j.kisarazu.ac.jp -i /home/katio/.ssh/nitkc-login -o "StrictHostKeyChecking no"
	fi
fi

cat
