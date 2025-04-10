#! /bin/bash

# force color
sudo sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/' ~/.bashrc && source ~/.bashrc

# update mirror repository
sed -i 's/kr.archive.ubuntu.com/mirror.kakao.com/' /etc/apt/sources.list
apt update

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
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

echo -e "
set nocompatible
filetype off    
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'sonph/onehalf', {'rtp': 'vim/'}
let g:airline_theme='onehalfdark'

call vundle#end()
filetype plugin indent on

set nu
set ts=4
set sw=4
set ls=2
set cindent
colorscheme onehalfdark
"> ~/.vimrc
vim +PluginInstall +qall
soucre $HOME/.bashrc
