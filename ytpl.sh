#!/bin/bash
NAME=$(echo "$1" | sed 's:.*/::')
mkdir ~/Music/$NAME
cd ~/Music/$NAME
youtube-dl --download-archive ~/Music/.downloaded.txt --continue --ignore-errors --no-overwrites  --add-metadata --metadata-from-title "%(artist)s - %(title)s" --extract-audio --audio-format opus --audio-quality 9 -o "%(title)s.%(ext)s" $1
