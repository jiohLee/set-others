# vim configuration
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

echo -e "set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}

call vundle#end()
filetype plugin indent on

set nu
set ts=4
set sw=4
set ls=2
set cindent"> ~/.vimrc

vim +PluginInstall +qall

echo -e "
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
highlight Normal ctermfg = white ctermbg = NONE
highligh LineNr ctermbg = NONE

nmap <C-b> :NERDTreeToggle<CR>
nnoremap <Esc>[1;5C :tabnext<CR>
nnoremap <Esc>[1;5D :tabprevious<CR>" >> ~/.vimrc
soucre $HOME/.bashrc
