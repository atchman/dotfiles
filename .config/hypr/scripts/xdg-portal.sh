#!/bin/bash
sleep 1s
killall -e xdg-desktop-portal-hyprland
killall -e xdg-desktop-portal-gtk
killall xdg-desktop-portal
logger 'killed all xdg-desktop'
sleep 1s
/usr/lib/xdg-desktop-gtk &
logger 'xdg-desktop-gtk started'
sleep 2s
/usr/lib/xdg-desktop-portal-hyprland &
logger 'xdg-desktop-hyprland started'
sleep 2s
/usr/lib/xdg-desktop-portal &
logger 'xdg-desktop-portal started'
