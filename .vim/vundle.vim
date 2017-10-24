"Vundle Install
if !isdirectory(expand("~/.vim/bundle/Vundle.vim"))
  !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif


set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline' 
Plugin 'vim-airline/vim-airline-themes' 

Plugin 'altercation/vim-colors-solarized'

Plugin 'kien/ctrlp.vim'

Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler'
Plugin 'Shougo/neocomplete.vim'

call vundle#end()
filetype plugin indent on

let g:airline_powerline_fonts = 1 
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0

set t_Co=256
syntax enable
set background=dark
colorscheme solarized

