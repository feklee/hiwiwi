#!/bin/sh

run_urxvt_on_desk () {
    while true
    do
        urxvt -name backgroundterm -xrm "*Desk:$1" -b 10 -geometry 160x50-0+0
    done
}

export GDK_SCALE=2
export GDK_DPI_SCALE=0.5

# Workaround to broken GDK scaling in EMACS 24.5.1:
CONFIG_HOME="~/.emacs.d/config"
alias emacs="XDG_CONFIG_HOME=$CONFIG_HOME GDK_SCALE=1 GDK_DPI_SCALE=1 emacs"

xrdb -merge ~/.Xresources
xscreensaver -no-splash &
setxkbmap de,fr nodeadkeys,basic
hsetroot -solid black
compton -b

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
