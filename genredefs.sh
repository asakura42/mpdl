#!/bin/bash
mpc --host password@localhost --port 6600 list genre | sed "s/ /_/g" > /tmp/genrelist
genrelist=/tmp/genrelist
while read -r line ; do
	w3m -dump "https://last.fm/tag/$line" 2>&1 | grep "Related to" -A10 | grep "  •" | sed "s/  • //g" | sed "s/ /_/g" | sed -e "s/\b\(.\)/\u\1/g" > /tmp/gens
	gens=/tmp/gens
	linespace=$(echo $line | sed "s/ /_/g")
	gensfinal=$(cat $genrelist | xargs -i grep ^{}$ $gens| sort | uniq | tr '\n' '@' | sed "s/@$//g")
	echo "$linespace;$linespace@$gensfinal" | sed "s/@$//g"
done < <(mpc --host password@localhost --port 6600 list genre)
