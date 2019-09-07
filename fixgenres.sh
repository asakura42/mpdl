#!/bin/bash
for f in *.opus
do
	if
		opuscomment $f | grep GENRE | grep ";"
	then
		gen1=$(opuscomment $f | grep GENRE | sed "s/GENRE=//" | awk -F ';' '{ print $1 }' )
		gen2=$(opuscomment $f | grep GENRE | sed "s/GENRE=//" | awk -F ';' '{ print $2 }' )
		opuscomment -d GENRE $f </dev/null
		opuscomment -a -t "GENRE=$gen1" $f
		opuscomment -a -t "GENRE=$gen2" $f
	else
		true
	fi
done
