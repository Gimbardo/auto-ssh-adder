#!/bin/bash

cd ~/.ssh

FILES=`ls -1 -d $PWD/*`

for var in $FILES
do
	if [[ $var != *"known_hosts" && $var != *".pub" ]]; then
		ssh-add $var
	fi
done
