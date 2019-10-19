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

Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'fatih/vim-go'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on

let g:airline_powerline_fonts = 1 
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0

" add for rename
let g:vimfiler_safe_mode_by_default = 0

set t_Co=256
syntax enable
set background=dark
colorscheme solarized

" VimFilerをデフォルトのファイラにする
let g:vimfiler_as_default_explorer=1

noremap <C-W>t :VimFiler -toggle -split -simple -winwidth=45 -no-quit<ENTER>
