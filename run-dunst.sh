#!/bin/sh

#        -lf/nf/cf color
#            Defines the foreground color for low, normal and critical notifications respectively.
# 
#        -lb/nb/cb color
#            Defines the background color for low, normal and critical notifications respectively.
# 
#        -lfr/nfr/cfr color
#            Defines the frame color for low, normal and critical notifications respectively.

[ -f "$HOME/.cache/wal/colors.sh" ] && . "$HOME/.cache/wal/colors.sh"

pidof dunst && killall dunst

dunst -lf  "${foreground:-#ffffff}" \
      -lb  "${background:-#ffffff}" \
      -lfr "${color2:-#ffffff}" \
      -nf  "${foreground:-#ffffff}" \
      -nb  "${background:-#ffffff}" \
      -nfr "${color2:-#ffffff}" \
      -cf  "${foreground:-#ffffff}" \
      -cb  "${background:-#ffffff}" \
      -cfr "${color4:-#ffffff}" > /dev/null 2>&1 &
