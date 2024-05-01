#!/usr/bin/env bash
for i in {1..5}; do
	text=$(curl -s "de.wttr.in/~50.8322608,12.9252977?nonce=$RANDOM\&format=1")

	if [[ $? == 0 ]]; then
		text=$(echo "$text" | sed -E "s|[+ ]||g")
		tooltip=$(curl -s "de.wttr.in/~50.8322608,12.9252977?nonce=$RANDOM\&format=4")
		if [[ $? == 0 ]]; then
			tooltip=$(echo "$tooltip" | sed -E "s/\s+/ /g")
			echo "{\"text\":\"$text\", \"tooltip\":\"$tooltip\"}"
			exit
		fi
	fi
	sleep 2
done
echo "{\"text\":\"error\", \"tooltip\":\"error\"}"
