#!/bin/bash
# Requires tageditor-cli from AUR
# curl -s "https://raw.githubusercontent.com/asakura42/mpdl/master/fixgenres.sh" | bash -s

for f in *.{opus,m4a,mp3}
do
	tageditor -g -f "$f" | grep "Genre.*;"
	result=$?
	if (( result == 0 )); then
		genres=$(tageditor -g -f "$f" | grep "Genre.*;" | sed 's/^ *.*Genre *//')
		gen1=$(awk -F ';' '{ print $1 }' <<< "$genres")
		gen2=$(awk -F ';' '{ print $2 }' <<< "$genres")
		tageditor set +genre="$gen1" +genre="$gen2" -f "$f"
	fi
done
