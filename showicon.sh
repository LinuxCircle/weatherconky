#!/bin/bash

URL=http://openweathermap.org/img/w/
EXT=.png

ICON=$(xmllint --xpath 'string(//current/weather/@icon)' ~/.cache/weather.xml)
#echo $URL$ICON$EXT
curl -o ~/.conky/01d.png $URL$ICON$EXT
