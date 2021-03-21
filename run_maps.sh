#!/bin/sh
for FILE in /data-fast/twitter\ 2020/geoTwitter*.zip; do
    nohup ./src/map.py --input_path="$FILE" &
    echo $FILE
done
