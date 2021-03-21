#!/bin/sh
for FILE in /data-fast/twitter\ 2020/geoTwitter*.zip; do
    nohup ./src/map.py --input_path="$FILE" &
    echo $FILE
done
wait
vals="#코로나바이러스 #コロナウイルス #冠状病毒 #covid2019 #covid-2019 #covid19 #covid-19 #coronavirus #corona #virus #flu #sick #cough #sneeze #hospital #nurse #doctor" 
locs="lang country"
for LOC in $locs; do
    nohup .src/reduce.py --input_paths "outputs/geoTwitter*.${LOC}" --output_path="reduced.${LOC}" &
done
wait
for LOC in $locs; do
    for HASHTAG in $vals; do
        nohup ./src/visualize.py --input_path="reduced.${LOC}" --key=$HASHTAG | head > viz/$LOC/$HASHTAG &
    done
done
