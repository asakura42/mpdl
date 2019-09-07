# Отобрать файлы со скобками
{ find *[0-9]\).opus & find *[0-9]\).opus | sed -e "s/ ([0-9])//"; } | sort | uniq > /tmp/finddupes.txt
while read -r line ; do
	echo "$line $(ffprobe "$line" 2>&1 | grep -oP '(?<=bitrate: )[0-9]+')";
done < /tmp/finddupes.txt > /tmp/dupes.txt
cat /tmp/dupes.txt | sort | uniq


