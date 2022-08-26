#!/bin/sh

if [ -z "$1" ] ; then
	echo "Usage: $0 [list | report] TS_ID"
	exit 1
fi

case $1 in 
	list)
		/usr/bin/sudoreplay -l
	;;

	report)
		if [ -z "$2" ] ; then
			echo Missing TS_ID
			exit 1
		fi

		COMMAND=$(/usr/bin/sudoreplay -l |\
		/bin/grep TSID=${2} |\
		/usr/bin/awk -F= '{print $7}')

		if [ -z "${COMMAND}" ] ; then
			echo TSID $2 not found.
			exit 1
		fi

		TEMP="/tmp/sudoreplay.$$"

		echo COMMAND: ${COMMAND}
		echo

		/usr/bin/sudoreplay -R -s 999 $2 | /usr/bin/ansi2txt |\
			/bin/sed -e "s:Replaying sudo session\: ${COMMAND}::" > $TEMP
			echo DEBUG: /bin/sed -e "s:Replaying sudo session\: ${COMMAND}::"

		/bin/cat $TEMP

		/bin/cp $TEMP /reports/${2}.txt
	;;

esac
