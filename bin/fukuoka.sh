#!/bin/bash

#if [[ "$1" == wlp1s0 ]] && iwconfig wlp1s0|grep Mt-Olympus; then
	#if curl -Ss google.jp -i | grep "kisarazu"; then
		echo curling
		#curl https://kwlc.kisarazu.ac.jp/login.jp
		curl -LSs --ciphers AES256-SHA --data "buttonClicked=4&username=j16435&password=NITpasokon96&Submit=Submit" https://kwlc.kisarazu.ac.jp/login.html
	#else
		echo "login ok."
	#fi
	if ps ax|grep "[s]sh -fND 30080" >/dev/null; then
		ps ax|grep "[s]sh -fND 30080" |cut -c-6|xargs kill
	fi
		ssh -fND 30080 j16435@fukuoka.j.kisarazu.ac.jp -i /home/katio/.ssh/nitkc -o "StrictHostKeyChecking no"
		#ssh -fND 30080 j16435@10.7.2.1 -i /home/katio/.ssh/nitkc-login -o "StrictHostKeyChecking no"
#fi

#cat
