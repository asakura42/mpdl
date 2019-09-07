#!/bin/bash
command -v beets >/dev/null 2>&1 || { echo >&2 "I require foo but it's not installed.  Aborting."; }
command -v chromaprint >/dev/null 2>&1 || { echo >&2 "I require foo but it's not installed.  Aborting."; }
command -v python-pyacoustid >/dev/null 2>&1 || { echo >&2 "I require foo but it's not installed.  Aborting."; }
command -v python-pylast >/dev/null 2>&1 || { echo >&2 "I require foo but it's not installed.  Aborting."; }
echo "Don't forget to properly config your Beets! Demo config.yaml based in repository (https://github.com/asakura42/mpdg)"
beets import -s -q $1
