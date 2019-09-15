#!/bin/bash
apt update
apt install ncurses-dev
wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz
tar -xvf Python-3.7.4.tgz
cd Python-3.7.4
./configure --prefix="/home/${USER}/py3.7" \
	--enable-shared
echo export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/home/${USER}/py3.7/lib >> ~/.bashrc
make
make install
git clone https://github.com/vim/vim.git
cd vim/src
export LDFLAGS="-rdynamic"
./configure --with-features=huge \
	--prefix="/home/${USER}/local" \
	--with-python3-command="/home/${USER}/py3.7/bin/python3" \
	--enable-python3interp=yes
make VIMRUNTIMEDIR="/home/${USER}/local/share/vim/vim81"
make install 
cd 
git clone https://github.com/doncarlos999/new_sytem_setup.git
cp new_system_setup/.vimrc .
git clone https://github.com/VundleVim/Vundle.vim.git \
	~/.vim/bundle/Vundle.vim
# use :PluginInstall in vim to install plugins
# and !~/py3.7/bin/python3 ~/.vim/bundle/YouCompleteMe/install.py

