#!/bin/bash

URL=http://openweathermap.org/img/w/
EXT=.png

ICON=$(xmllint --xpath 'string(//weatherdata/forecast/time[8]/symbol/@var)' ~/.cache/weather2.xml)
#echo $URL$ICON$EXT
curl -o ~/.conky/d1.png $URL$ICON$EXT
