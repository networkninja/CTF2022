#!/bin/sh

if [ -z "$1" ] ; then
	echo "Usage: $0 [1-3]"
	echo; echo Challenge List:
	echo 1: So Su Me
	echo 2: Copy Challenge
	echo 3: Finders Weepers
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

	3)
	echo Finders Weepers
	docker run -it --rm --user localuser3 --workdir /home/localuser3 sudo-challenge
	;;

	*)
	echo Enter a number from 1-3.
	exit 1
	;;
esac
