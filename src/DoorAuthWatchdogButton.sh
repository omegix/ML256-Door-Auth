#!/bin/bash

PYTHON=/usr/bin/python

function myprocess {

$PYTHON /home/pi/DoorAuth/DoorAuth1.7/src/scanForButton_Unlock.py >> /home/pi/DoorAuth/DoorAuth1.7/src/error.txt

}
NOW=$(date +"%b-%d-%y")

until myprocess; do
     echo "$NOW Prog crashed. Restarting..." > errorFreq.txt
     sleep 1
done
