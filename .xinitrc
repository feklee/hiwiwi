#!/bin/sh

run_urxvt_on_desk () {
    while true
    do
        urxvt -name backgroundterm -xrm "*Desk:$1" -b 10 -geometry 160x50-0+0
    done
}

export GDK_SCALE=2
export GDK_DPI_SCALE=0.5
export QT_DEVICE_PIXEL_RATIO=2

xrdb -merge ~/.Xresources
xscreensaver -no-splash &
setxkbmap de,fr nodeadkeys,basic
hsetroot -solid black
compton -b

xinput set-prop 12 'Device Enabled' 0 # disables touchpad

stalonetray &
cbatticon &
volumeicon &
udiskie &
dunst &

for i in {0..8}
do
    run_urxvt_on_desk $i &
done

exec fvwm
