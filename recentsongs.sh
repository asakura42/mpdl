#!/bin/bash
#From https://bbs.archlinux.org/viewtopic.php?id=74780

cd $HOME/Music && find . -type f -mtime -1  | egrep '\.opus$|\.mp3$|\.flac$' | awk '{ sub(/^\.\//, ""); print }' > $HOME/.config/mpd/playlists/newmusic.m3u
