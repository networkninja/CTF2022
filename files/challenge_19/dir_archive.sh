#!/bin/sh

DIR=$(/usr/bin/basename $(/bin/pwd))
/bin/mkdir -p /archives/${DIR}

for F in * ; do
	/bin/cp $F /archives/${DIR}
done
