#!/usr/bin/env bash

# gvim to integrate clipboard with vim, the vimrc to enable clipboard and map ctrl-c to copy from vim
pacin gvim
sudo sh -c 'wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/vimrc > /etc/vimrc'

# Browser
pacin chromium

# Dock
sudo pacman -Sy docky
wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/docky-config.xml > ~/docky-config.xml
sudo gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.defaults --load ~/docky-config.xml

# Terminal
sudo pacman -Sy terminator
wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/terminator-config > ~/.config/terminator/config

# Moving xfce panel to top
xfconf-query -c xfce4-panel -p /panels/panel-0/position -n -t string -s "p=6;x=512;y=14"
xfconf-query -c xfwm4 -p /general/show_dock_shadow -n -t string -s false

# MacOS like Themes and Icons
mkdir -p ~/.themes
mkdir -p ~/.icons
https://dl.opendesktop.org/api/files/download/id/1536340023/s/d1b20cdfad6afbdf4140d1587f601b3915fd2bbe155cd8c5acb538ccfe3a2abc67afac2c6ba3aaf74a83817d1b6fb4aef7c9b4ba778e5f19e62b80eaff837b78/t/1553707589/u//McOS-XFCE-Edition-II-1.tar.xz
wget -O ~/Downloads/McOS-XFCE-theme.tar.xz https://raw.githubusercontent.com/mzubal/dotfiles/master/McOS-XFCE-theme.tar.xz
wget -O ~/Downloads/McOS-XFCE-icons.tar.xz https://raw.githubusercontent.com/mzubal/dotfiles/master/McOS-XFCE-icons.tar.xz
tar -C ~/.icons -xf ~/Downloads/McOS-XFCE-icons.tar.xz
tar -C ~/.themes -xf ~/Downloads/McOS-XFCE-theme.tar.xz
xfconf-query -c xsettings -p /Net/ThemeName -s "McOS-XFCE-Edition-II-1"
xfconf-query -c xsettings -p /Net/IconThemeName -s "dark-mode"
xfconf-query -c xfwm4 -p /general/button_layout -n -t string -s "CHM|TOS"
xfconf-query -c xfwm4 -p /general/theme -n -t string -s "McOS-XFCE-Edition-II-1"

xfconf-query --channel xfce4-desktop --property /backdrop/screen0/monitor0/image-path --set ~/Downloads/annapurna_1920x1080.jpg
xfconf-query --channel xfce4-desktop --property /backdrop/screen0/monitor0/last-image --set ~/Downloads/annapurna_1920x1080.jpg
xfconf-query --channel xfce4-desktop --property /backdrop/screen0/monitorVirtual1/workspace0/last-image --set ~/Downloads/annapurna_1920x1080.jpg
xfconf-query --channel xfce4-desktop --property /backdrop/screen0/monitorVirtual1/workspace1/last-image --set ~/Downloads/annapurna_1920x1080.jpg
xfconf-query --channel xfce4-desktop --property /backdrop/screen0/monitorVirtual1/workspace2/last-image --set ~/Downloads/annapurna_1920x1080.jpg
xfconf-query --channel xfce4-desktop --property /backdrop/screen0/monitorVirtual1/workspace3/last-image --set ~/Downloads/annapurna_1920x1080.jpg

# CLI tools
pacin python-pip
sudo pip install mycli
sudo pip install pgcli
pacin thefuck
pacin httpie
pacin tmux

# tmux config
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# i3-gaps, i3-blocks, alttab, rofi
pacin i3-gaps
pacin i3-blocks
pacin rofi
pacin compton

# atltab
pacin uthash
cd
git clone https://github.com/sagb/alttab.git 
cd alttab
./bootstrap.sh
./configure && sudo make install

# Ansible
pacin ansible

# SDKMan
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
