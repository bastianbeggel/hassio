#!/bin/bash
#scipt to turn panasonic off.
#only execute toggle command if tv is on

VAR=`curl -s -X GET --user-agent "Panasonic Android VR-CP UPnP/2.0" http://192.168.178.26:55000/pac/ddd.xml -i`
size=${#VAR}

exit_status=$?
if [ $size -gt 100 ]; then
    echo "tv_is_on:$size"
    nodejs /home/pi/viera.js/tv_power.js
#    nodejs /home/homeassistant/.homeassistant/scripts/tv_power.js
else
    echo "tv_is_off:$size"
#    nodejs /home/pi/viera.js/tv_power.js
fi
exit 0

