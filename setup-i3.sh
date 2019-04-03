# Chromium
pacin freetype2
pacin chromium

# gvim to integrate clipboard with vim, the vimrc to enable clipboard and map ctrl-c to copy from vim
pacin gvim
sudo sh -c 'wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/vimrc > /etc/vimrc'

# atltab
pacin uthash
cd
git clone https://github.com/sagb/alttab.git 
cd alttab
./bootstrap.sh
./configure && sudo make install
cd

pacin tmux
pacin rofi

# i3 config
sudo sh -c 'wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/i3.config > ~/.i3/config'

# CLI tools
pacin thefuck
pacin httpie

# Ansible
pacin ansible

# SDKMan
pacin unzip
pacin zip
curl -s "https://get.sdkman.io" | bash
