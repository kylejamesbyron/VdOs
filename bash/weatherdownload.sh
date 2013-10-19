#!/bin/bash

line=$1
name1=${$1 : 5}

# wget -O $filename.csv "http://www.wunderground.com/history/airport/KPDK/2013/7/1/DailyHistory.html?req_city=NA&req_state=NA&req_statename=NA&format=1"
wget -O test.csv "http://www.wunderground.com/history/airport/KPDK/$line/DailyHistory.html?req_city=NA&req_state=NA&req_statename=NA&format=1"
echo "$name1"