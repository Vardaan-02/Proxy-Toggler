#!/usr/bin/env bash

mode=$(gsettings get org.gnome.system.proxy mode)
#insert your Proxy IP address here
proxy_ip="172.31.2.4"
#insert port number here 
proxy_port=8080

if [ "$mode" = "'manual'" ]; then
	gsettings set org.gnome.system.proxy mode 'none'
	notify-send "Proxy" "Disabled proxy"
elif [ "$mode" = "'none'" ]; then
	gsettings set org.gnome.system.proxy mode 'manual'
	gsettings set org.gnome.system.proxy.http host "$proxy_ip"
	gsettings set org.gnome.system.proxy.http port ${proxy_port}
	gsettings set org.gnome.system.proxy.https host "$proxy_ip"
	gsettings set org.gnome.system.proxy.https port ${proxy_port}
	notify-send "Proxy" "Enaled proxy: $proxy_ip:$proxy_port"
else
    notify-send "Error in detecting proxy mode"
fi


