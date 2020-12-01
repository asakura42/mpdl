#!/bin/bash
# Requires tageditor-cli from AUR
# curl -s "https://raw.githubusercontent.com/asakura42/mpdl/master/fixgenres.sh" | bash -s

for f in *.{opus,m4a,mp3}
do
	tageditor -g -f $f | grep "Genre.*;"
	result=$?
	if (( result == 0 )); then
		tageditor set +genre="$gen1" +genre="$gen2" -f "$f"
	fi
done
