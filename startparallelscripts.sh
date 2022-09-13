#!/bin/bash
#
# Author : Dusan Djordjevic
# Description : Script that starts scripts created in directory in parallel mode defined by number
# Create date: 06/08/2022
# Modified date: 08/09/022


ime="parallel"
let "fajlcounter = 0"
fajl=`echo "$name$filecounter"`
COUNTER=0

while [ $COUNTER -lt $1 ]
do
        echo $COUNTER
	sh /root/tessst/parelelscripts/$fajl.sh &>>/root/tessst/start_stress.log &
	fajlcounter=$((filecounter+1))
	fajl=`echo "$name$filecounter"`
	let COUNTER=COUNTER+1
	done

