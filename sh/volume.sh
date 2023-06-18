#!/bin/zsh
# volume.sh

if [ $$ -ne $(pgrep -fo "$0") ]; then
  exit 1
fi

device="Master"

# Arbitrary but unique message id
msgId="991049"

# Change the volume using alsa(might differ if you use pulseaudio)
amixer -c 0 set $device "$@" > /dev/null

# Query amixer for the current volume and whether or not the speaker is muted
volume="$(amixer -c 0 get $device | tail -1 | awk '{print $4}' | sed 's/[^0-9]*//g')"
mute="$(amixer -c 0 get $device | tail -1 | awk '{print $6}' | sed 's/[^a-z]*//g')"
if [[ $volume == 0 || "$mute" == "off" ]]; then
    # Show the sound muted notification
    dunstify -a "volume.sh" -u low -i audio-volume-muted -r "$msgId" "Volume muted" 
  else
    # Show the volume notification
    dunstify -a "volume.sh" -u low -i audio-volume-high -r "$msgId" \
    -h int:value:"$volume" "Volume: ${volume}%"
fi

# Play the volume changed sound
canberra-gtk-play -i audio-volume-change -d "volume.sh"

exit 0
