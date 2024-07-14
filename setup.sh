#!/bin/bash

# vim-setup.sh
# Author:  caesar "https://github.com/caesar003"
 

# Ensure the system is updated
sudo apt update && sudo apt upgrade -y

# Install necessary tools
sudo apt install git curl build-essential -y

# Install build dependencies for Vim
sudo apt-get build-dep vim

# Clone the Vim repository
git clone https://github.com/vim/vim ~/vim-repo
cd ~/vim-repo

# Configure Vim with desired features
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp \
            --enable-python3interp \
            --with-python3-config-dir=/usr/lib/python3.11/config-3.11-x86_64-linux-gnu/ \
            --enable-perlinterp \
            --enable-luainterp \
            --enable-cscope \
            --enable-gtk2-check \
            --with-x \
            --disable-gui \
            --with-compiledby="caesar003 - github.com/caesar003" \
            --prefix=$PREFIX

# Build and install Vim
make VMRUNTIMEDIR=/usr/share/vim/vim9
sudo make install

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Backup existing .vimrc if present
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc_back
fi

# Set up new Vim configuration
mkdir -p ~/.vim/
git clone https://github.com/caesar003/vimrc.git ~/.vimrc
ln -s ~/.vim/init/init.vim ~/.vim/vimrc

# Install plugins by running Vim and executing :PlugInstall
vim -c 'PlugInstall|q|q'

# Install ctags for enhanced navigation
sudo apt install ctags
