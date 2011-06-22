#!/bin/bash
curl -s "http://countdowndays.com/36301/" | ruby -e "print STDIN.read.scan(/(Detailed text forecast.*?<b>\s*)(.*?)(<\/td>)/m)[0][1].gsub('<br>',\"\n\").gsub('<b>','').gsub(/<\/b>/,\"\n\")" | fold -sw 50
