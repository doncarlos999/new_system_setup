cd
apt update && \
	apt install -y build-essential \
	 cmake gcc make pkg-config autoconf \
	 automake python3-docutils libseccomp-dev \
	 libjansson-dev libyaml-dev libxml2-dev \
	 git ncurses-dev python3-dev zsh wget 
git config --global user.email crjward@gmail.com
git clone https://github.com/doncarlos999/new_system_setup.git
git clone https://github.com/robbyrussell/oh-my-zsh.git
git clone https://github.com/universal-ctags/ctags.git
git clone https://github.com/vim/vim.git 
git clone https://github.com/VundleVim/Vundle.vim.git \
	~/.vim/bundle/Vundle.vim && \
	cd vim/src && \
	LDFLAGS="-rdynamic" ./configure \
	--with-features=huge \
	--enable-python3interp=yes && \
	make && \
	make install && \
	cd && \
	cp ~/new_system_setup/.vimrc ~ && \
	python3 ~/.vim/bundle/YouCompleteMe/install.py && \
	cd ctags && \
	./autogen.sh && \
	./configure && \
	make && \
	make install && \
	bash oh-my-zsh/tools/install.sh 
