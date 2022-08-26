#!/bin/bash

for U in $(/bin/grep -E '^mail_qa' /etc/passwd |\
/usr/bin/cut -d ':' -f 1) ; do

	/usr/sbin/userdel -r "$U"
done
