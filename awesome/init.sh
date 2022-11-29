#!/bin/bash
mkdir /tmp/awesome-init
touch /tmp/awesome-init/isopen
isopen=$(cat /tmp/awesome-init/isopen
)
function init(){
sh -c 'xfesttingsd & '
sh -c 'xfconf-query -c xsettings -p /Net/IconThemeName -s "Flatery-Black-Dark" &'
sh -c 'xfconf-query -c xsettings -p /Net/ThemeName -s "Kimi-dark" &'
sh -c 'nm-applet &'
sh -c '/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &'
sh -c 'volumeicon &'
#sh -c 'nohup /opt/scripts/ingame-nocompositor.sh &'
sh -c 'picom --experimental-backends --backend glx --xrender-sync-fence &'
#sh -c 'sleep 0.1 ; feh --bg-scale --randomize /opt/wallpapers/RWHW/'
sh -c 'blueman-applet &'
}
function repable(){
#sh -c '/opt/scripts/rwhw'
sh -c 'feh --bg-scale /opt/wallpapers/werusi.png'
}

if [[ $isopen = 1 ]];then
echo "err out"
repable
else
echo "1" > /tmp/awesome-init/isopen
init
repable
fi
