# Coronavirus twitter analysis

Approximately 500 million tweets are sent everyday, meaning that for all of 2020, there were approximately 183 billion tweets. Of those tweets, about 1%, or ~18 billion, are *geotagged*. That is, the user's device includes location information about where the tweets were sent from. This repo searches through these tweets and counts the number of times that mamy hashtags related to the Covid-19 pandemic are mentioned. We also store which country and language that each hashtag is sent from/in. In the `viz' folder, the top 10 countries and languages for each hashtag are stored as an ordered list. 

***IMPORTANT:***
This code may be freely used to analyze twitter data, however there will br some important differences in your data structure than the structure used in this project. The most important change required will be altering the `for` loop such that each iteration looks at only one tweet's metadata. Beyond this, you will likely want to change which hashtags are used, and to do this, you will need to alter both the src/map.py file and the run_viz.sh files. If you would like to store different metadata about the tweets, you can alter the src/map.py to store that data with different file extensions. Then, you will use the src/reduce.py program to merge the outputs from the src/map.py program.

