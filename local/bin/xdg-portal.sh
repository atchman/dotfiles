#!/bin/bash
sleep 1s
killall -e xdg-desktop-portal-hyprland
killall -e xdg-desktop-portal-gtk
killall xdg-desktop-portal
logger 'killed all xdg-desktop-portal'
sleep 1s
/usr/lib/xdg-desktop-portal-gtk &
logger 'xdg-desktop-portal-gtk started'
sleep 2s
/usr/lib/xdg-desktop-portal-hyprland &
logger 'xdg-desktop-portal-hyprland started'
sleep 2s
/usr/lib/xdg-desktop-portal &
logger 'xdg-desktop-portal started'
