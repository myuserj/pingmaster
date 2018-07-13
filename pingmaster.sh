#!/bin/bash
# Program name: pingmaster.sh
# Created by: J Alberto Arceo
date > thelog.txt
cat thelist.txt | while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    echo "$output Up" >> thelog.txt
    else
    echo "$output Down" >> thelog.txt
    fi
done
