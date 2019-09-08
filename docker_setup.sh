#!/bin/bash
apt update
apt install ncurses-dev
git clone https://github.com/vim/vim.git
cd vim/src
./configure
make
make install 
cd 
git clone https://github.com/doncarlos999/new_sytem_setup.git
cp new_system_setup/.vimrc .
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


