#!/bin/bash

# você é o root?
if [ $UID -ne 0 ]
then
	>&2 echo "ERRO: Você é o root?"
	exit
fi

dpath="/etc/NetworkManager/dispatcher.d/"

#dpath existe?
if [ ! -e "$dpath/ut.sh" ]
then
	echo "Você não tem ut.sh na pasta $dpath"
else
	# remove ut.sh
	rm -v "$dpath/ut.sh"
fi

spath=/root/.utnet

if [ ! -e "$spath" ]
then
	echo "Você não tem .utnet na pasta $spath"
else
	rm -v "$spath"
fi

echo "pronto"
