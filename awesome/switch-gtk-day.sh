#!/bin/bash
xfconf-query -c xsettings -p /Net/ThemeName -s "Sweet"
xfconf-query -c xsettings -p /Net/IconThemeName -s "OieIcons"
sleep 0.1
echo "awesome.restart()" | awesome-client
sleep 0.3 && feh --bg-scale /opt/wallpapers/layan/-layan-white-cyan2560x1440.png 
exit
