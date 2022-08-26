#!/bin/sh

if [ -z "$1" ] ; then
	echo "Usage: $0 [1-21]"
	echo; echo Challenge List:
	echo 1: So Su Me
	echo 2: Copy Challenge
	echo 3: Copy Cat
	echo 4: Copy Dog
	echo 5: A Sudo With a View
	echo 6: Finders Weepers
	echo 7: Less With More
	echo 8: Tar Is Older Than Tar
	echo 9: Pass The Root Please
	echo 10: "You're the Top, You're the Colosseum"
	echo 11: Send in the Chowns
	echo 12: Watching You Watching Me
	echo 13: The Chmod Squad
	echo 14: Conjunction Junction ...
	echo 15: htop Was Made for Walkin...
	echo 16: Fresh Popt Corn
	echo 17: Replay It Again Sam
	echo 18: License to Kill
	echo 19: Copy Llama
	echo 20: MOTD in a bottle
	echo 21: Overflowing with Users
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
	echo The Copy Cat Challenge
	docker run -it --rm --user localuser3 --workdir /home/localuser3 sudo-challenge
	;;

	4)
	echo The Copy Dog Challenge
	docker run -it --rm --user localuser4 --workdir /home/localuser4 sudo-challenge
	;;

	5)
	echo A Sudo With a View
	docker run -it --rm --user localuser5 --workdir /home/localuser5 sudo-challenge
	;;

	6)
	echo Finders Weepers
	docker run -it --rm --user localuser6 --workdir /home/localuser6 sudo-challenge
	;;

	7)
	echo Less With More
	docker run -it --rm --user localuser7 --workdir /home/localuser7 sudo-challenge
	;;

	8)
	echo Tar Is Older Than Tar
	docker run -it --rm --user localuser8 --workdir /home/localuser8 sudo-challenge
	;;

	9)
	echo Pass The Root Please
	docker run -it --rm --user localuser9 --workdir /home/localuser9 sudo-challenge
	;;

	10)
	echo "You're the Top, You're the Colosseum"
	docker run -it --rm --user localuser10 --workdir /home/localuser10 sudo-challenge
	;;

	11)
	echo Send in the Chowns
	docker run -it --rm --user localuser11 --workdir /home/localuser11 sudo-challenge
	;;

	12)
	echo Watching You Watching Me
	docker run -it --rm --user localuser12 --workdir /home/localuser12 sudo-challenge
	;;

	13)
	echo The Chmod Squad
	docker run -it --rm --user localuser13 --workdir /home/localuser13 sudo-challenge
	;;

	14)
	echo Conjunction Junction ...
	docker run -it --rm --user localuser14 --workdir /home/localuser14 sudo-challenge
	;;

	15)
	echo htop Was Made for Walkin...
	docker run -it --rm --user localuser15 --workdir /home/localuser15 sudo-challenge
	;;

	16)
	echo Fresh Popt Corn
	docker run -it --rm --user localuser16 --workdir /home/localuser16 sudo-challenge
	;;

	17)
	echo Replay It Again Sam
	docker run -it --rm --user localuser17 --workdir /home/localuser17 sudo-challenge
	;;

	18)
	echo License to Kill
	docker run -it --rm --user localuser18 --workdir /home/localuser18 sudo-challenge
	;;

	19)
	echo Copy Llama
	docker run -it --rm --user localuser19 --workdir /home/localuser19 sudo-challenge
	;;

	20)
	echo MOTD in a bottle
	docker run -it --rm --user localuser20 --workdir /home/localuser20 sudo-challenge
	;;

	21)
	echo Overflowing with Users
	docker run -it --rm --user localuser21 --workdir /home/localuser21 sudo-challenge
	;;

	*)
	echo Enter a number from 1-21.
	exit 1
	;;
esac
