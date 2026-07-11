#!/bin/bash
# changeVolume

# Arbitrary but unique message tag
msgTag="mybrightness"

# Change the volume using alsa(might differ if you use pulseaudio)

# Query amixer for the current volume and whether or not the speaker is muted
brightness="$(brightnessctl | awk '/Current brightness/{gsub(/[^0-9]/, "", $4); print $4}')"
# Show the volume notification
dunstify -a "changeVolume" -u low -i audio-volume-high -h string:x-dunst-stack-tag:$msgTag \
    -h int:value:"$brightness" "Brightness: ${brightness}%"

