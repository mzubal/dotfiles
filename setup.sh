#!/usr/bin/env bash
sudo pacman -Sy vim
sudo pacman -Sy docky
sudo pacman -Sy terminator
xfconf-query -c xfce4-panel -p /panels/panel-0/position -n -t string -s "p=6;x=512;y=14"
