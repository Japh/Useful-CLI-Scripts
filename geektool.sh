#!/bin/bash
curl -s "http://forecast.weather.gov/MapClick.php?CityName=Ann+Arbor&state=MI&site=DTX&lat=42.2754&lon=-83.7308" | ruby -e "print STDIN.read.scan(/(Detailed text forecast.*?<b>\s*)(.*?)(<\/td>)/m)[0][1].gsub('<br>',\"\n\").gsub('<b>','').gsub(/<\/b>/,\"\n\")" | fold -sw 50
