#!/bin/sh

if [ -z "$1" ] ; then
	echo "Usage: $0 [1-2]"
	echo; echo Challenge List:
	echo 1: So Su Me
	echo 2: Copy Challenge
	exit 1
fi

case $1 in
	1)
	echo The So Su Me challenge:
	docker run -it --rm --user localuser1 --workdir /home/localuser1 sudo-challenge
	;;

	2)
	echo The Copy Challenge
	docker run -it --rm --user localuser2 --workdir /home/localuser2 sudo-challenge
	;;

	*)
	echo Enter a number from 1-2.
	exit 1
	;;
esac
