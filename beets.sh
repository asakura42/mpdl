#!/bin/bash
command -v beets >/dev/null 2>&1 || { echo >&2 "sudo pacman -S beets"; }
command -v chromaprint >/dev/null 2>&1 || { echo >&2 "sudo pacman -S chromaprint"; }
command -v python-pyacoustid >/dev/null 2>&1 || { echo >&2 "sudo pacman -S python-pyacoustid"; }
command -v python-pylast >/dev/null 2>&1 || { echo >&2 "sudo pacman -S python-pylast"; }
command -v tageditor >/dev/null 2>&1 || { echo >&2 "yay -S tageditor"; }
beet import -s -q "$1"
