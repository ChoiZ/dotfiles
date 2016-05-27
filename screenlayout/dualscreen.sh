#!/bin/sh
#xrandr output HDMI1 --off --output VIRTUAL1 --off --output DP1 --mode 1920x1080 --pos 0x0 --rotate normal --output VGA1 --mode 1024x768 --pos 1920x0 --rotate normal
#xrandr --newmode "19202" 141.50  1920 2032 2232 2544  1080 1083 1088 1114 -hsync +vsync
# gtf 1920 1080 59.9
# xrandr --newmode "192060"  172.51  1920 2040 2248 2576  1080 1081 1084 1118  -HSync +Vsync
# gtf 1920 1080 50
xrandr --newmode "192050"  141.45  1920 2032 2232 2544  1080 1081 1084 1112 -HSync +Vsync
#xrandr --newmode "1920" 172.80  1920 2040 2248 2576  1080 1081 1084 1118 -hsync +vsync
xrandr --addmode VGA1 192050
xrandr --output HDMI1 --off --output VIRTUAL1 --off --output DP1 --mode 1920x1080 --pos 0x0 --rotate normal --output VGA1 --mode 192050 --pos 1920x0 --rotate normal
