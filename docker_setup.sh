#!/bin/bash
apt update
apt install zsh ncurses-dev
git clone https://github.com/vim/vim.git
cd vim/src
./configure
make
make install && \
	cd && \
	rm -fr vim && \
	git clone https://github.com/doncarlos999/vim.git && \
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


