cd
apt update
apt install python3-dev python3-pip vim curl git wget zsh
wget http://prdownloads.sourceforge.net/ctags/ctags-5.8.tar.gz
tar -xvf ctags-5.8.tar.gz
cd ctags-5.8
./configure 
make install
cd 
git clone https://github.com/doncarlos999/new_system_setup.git
cp ~/new_system_setup/minimal_vim_ubuntu_setup/.vimrc ~

