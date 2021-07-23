#!/bin/bash

cd ~/.ssh

FILES=`ls -1 -d $PWD/*`

for var in $FILES
do
	if [[ $var != *"known_hosts"* ]]; then
		ssh-add $var
	fi
done
