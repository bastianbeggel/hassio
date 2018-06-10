#!/bin/bash
#scipt to turn panasonic on.
#only execute toggle command if tv is off

VAR=`curl -s -X GET --user-agent "Panasonic Android VR-CP UPnP/2.0" http://192.168.1.20:55000/pac/ddd.xml -i`
size=${#VAR}

exit_status=$?
if [ $size -gt 100 ]; then
    echo "tv_is_on:$size"
else
    echo "tv_is_off:$size"
    nodejs /home/pi/viera.js/tv_power.js
fi
exit 0

