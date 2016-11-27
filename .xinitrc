#!/bin/sh

run_urxvt_on_desk () {
    while xset q &>/dev/null
    do
        urxvt -name backgroundterm -xrm "*Desk:$1" -b 10 -geometry 160x50-0+0
    done
}

export GDK_SCALE=2
export QT_DEVICE_PIXEL_RATIO=2

xrdb -merge ~/.Xresources
xscreensaver -no-splash &
setxkbmap de,fr,se nodeadkeys,basic
hsetroot -solid black
compton -b

stalonetray &
cbatticon --hide-notification &
volumeicon &
udiskie &
dunst &
xbindkeys &

for i in {0..8}
do
    run_urxvt_on_desk $i &
done

exec fvwm
