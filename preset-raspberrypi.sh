#! /bin/bash

# install mandatories
apt install -y \
		openssh-server \
		git \
		vim \
		gcc \
		g++ \
		curl \
		net-tools \
		make \
		cmake \
		xutils-dev \
		htop \

# git configuration
git config --gloabl user.email "jiosiro@gmail.com"
git config --gloabl user.name "jiohLee"
git config --global credential.helper store

# vim configuration
echo -e '
set nu
set ts=4
set sw=4
set ls=2
set cindent
set showmatch
' >> ~/.vimrc
soucre $HOME/.bashrc
