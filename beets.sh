#!/bin/bash
command -v beets >/dev/null 2>&1 || { echo >&2 "I require foo but it's not installed.  Aborting."; }
command -v chromaprint >/dev/null 2>&1 || { echo >&2 "I require foo but it's not installed.  Aborting."; }
command -v python-pyacoustid >/dev/null 2>&1 || { echo >&2 "I require foo but it's not installed.  Aborting."; }
command -v python-pylast >/dev/null 2>&1 || { echo >&2 "I require foo but it's not installed.  Aborting."; }
beet import -s -q $1
