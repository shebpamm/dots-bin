#!/bin/bash

source ~/.cache/wal/colors.sh

~/.config/herbstluftwm/colors
( xsettingsd & disown ) > /dev/null 2>&1
cp ~/.cache/wal/colors* /srv/http/startpage/wal/
#hass-hex light.living_room_strips $color1 > /dev/null 2>&1
run-dunst.sh
spicetify update > /dev/null 2>&1
