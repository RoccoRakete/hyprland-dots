#!/usr/bin/env bash

location1="Chemnitz"

for i in {1..5}
do
    text=$(curl -s "https://wttr.in/$location1?format=1")

    if [[ $? == 0 ]]
    then
        text=$(echo "$text" | sed -E "s/  \+//g")
        tooltip="$(curl -s "https://wttr.in/$location1?format=%l:+%C+%c+"Actual:"+%t+"Feels:"+%f+%w+%m+%h")\n"
        if [[ $? == 0 ]]
        then
            tooltip=$(echo "$tooltip")
            echo "{\"text\":\"$text\", \"tooltip\":\"$tooltip\"}"
            exit
        fi
    fi
    sleep 2
done

echo "{\"text\":\"Service Unavailable\", \"tooltip\":\"Service Unavailable\"}"
