#!/bin/sh
vals="_all #코로나바이러스 #コロナウイルス #冠状病毒 #covid2019 #covid-2019 #covid19 #covid-19 #coronavirus #corona #virus #flu #sick #cough #sneeze #hospital #nurse #doctor" 
locs="lang country"
for LOC in $locs; do
    for HASHTAG in $vals; do
        ./src/visualize.py --input_path="reduced.${LOC}" --key=$HASHTAG | head > viz/$LOC/$HASHTAG 
    done
done
