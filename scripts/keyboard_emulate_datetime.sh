#!/usr/bin/env bash

sleep 1

# Text to type
CURRENT_DT=`date +"%Y-%m-%d %H:%M:%S%z"`
text="[$CURRENT_DT]"

# Delay between keystrokes (in seconds)
delay=0.01

# Loop through each character and type it
for (( i=0; i<${#text}; i++ )); do
  # Send each character
  xdotool type --delay $(echo "$delay * 1000" | bc) "${text:$i:1}"
  sleep $delay
done
