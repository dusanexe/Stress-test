#!/bin/bash
#
# Author : Dusan Djordjevic
# Description : Script that creating scripts in folder with 100 lines per file

# create date: 06/08/2022
# Modified date: 08/09/022

direktorijum='parelelscripts100'

let "counter = 0"
let "fajlcounter = 0"
ime="parallel"
fajl=`echo "$ime$fajlcounter"`

for red in $lista
do
    userid=`echo $red |awk -F',' '{print $1}'`
    pin=`echo $red|awk -F',' '{print $3}'`
    devid=`echo $red|awk -F',' '{print $2}'`

    if [[ "$counter" -lt 100 ]]; then
            echo "/usr/bin/php -f /root/maketv.php $userid $pin $devid" >> /root/tessst/$direktorijum/$fajl.sh
            counter=$((counter+1))
	
	else
	    fajlcounter=$((fajlcounter+1))
	    fajl=`echo "$ime$fajlcounter"`
	          echo "$ime$fajlcounter.sh"
	          let "counter = 0"
     fi
done

