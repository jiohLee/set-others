echo '
install vim
'
sudo apt-get install vim -y

echo '
install terminator
'
sudo apt-get install terminator -y

echo "alias eb='gedit ~/.bashrc'" >> ~/.bashrc
echo "alias sb='source ~/.bashrc'" >> ~/.bashrc

echo '
if has("syntax")
	syntax on
endif

set hlsearch

set nu

set autoindent
set cindent

set ts=4
set sts=4
set shiftwidth=4

set statusline=2

set showmatch

set ruler

set fileencodings=utf8,euc-kr' >> ~/.vimrc

source $HOME/.bashrc

exec bash
