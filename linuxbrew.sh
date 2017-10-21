#!/bin/bash

target_files="c++ cpp g++ gcc x86_64-linux-gnu-c++ x86_64-linux-gnu-g++ x86_64-linux-gnu-gcc"

gcc_version=`gcc -dumpversion| cut -d. -f 1,2`

if [[ -z "$gcc_version" ]];then
	echo "Don'tgetGCCversion."
	exit 1
fi

if [[ -x `which brew` ]];then
	brew_prefix_dir=`brew --prefix`
	for target_file in $target_files;do
		target_path=`which $target_file`
		link_path=${brew_prefix_dir}/bin/${target_file}-${gcc_version}
		if [[ -x $target_path && ! -e $link_path ]];then
			ln -s -v -f $target_path $link_path
		fi
	done
fi
