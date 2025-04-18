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
git config --global user.email "jiosiro@gmail.com"
git config --global user.name "jiohLee"
git config --global credential.helper store
