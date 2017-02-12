#!/bin/bash
cp ./bashrc ~/.bashrc
. ./bashrc
apt-get update

#curl, vim, etc.
apt-get install curl
apt-get install vim
apt-get install git

#Vundle
cp ./.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

#YouCompleteMe
apt-get install build-essential cmake
cd ~/.vim/bundle/YouCompleteMe
./install.py
cd -


#Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
apt-get update ; apt-get install google-chrome-stable

#Remmina
apt-add-repository ppa:remmina-ppa-team/remmina-next
apt-get update
apt-get install remmina remmina-plugin-rdp libfreerdp-plugins-standard

#NoMachine
curl http://download.nomachine.com/download/5.2/Linux/nomachine_5.2.11_1_amd64.deb > nomachine_5.2.11_1_amd64.deb
dpkg -i nomachine_5.2.11_1_amd64.deb
apt-get update ; apt-get install nomachine

#Shutter
add-apt-repository ppa:shutter/ppa
apt-get update && apt-get install shutter

