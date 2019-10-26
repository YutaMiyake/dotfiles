set encoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,sjis
set fileformats=unix,dos,mac

"add line number
set number

"highlight cursorline
set cursorline

"match brackets
set showmatch

"indent
set autoindent
set smartindent
set shiftwidth=2
set tabstop=2
set expandtab

"splits
set splitbelow
set splitright

"copy to clipboard
set clipboard+=unnamed

"search
set hlsearch
nnoremap <ESC><ESC> :nohlsearch<CR>
set ignorecase
set smartcase
set incsearch

"highlight syntax
syntax enable

"use text no bell
set visualbell
set noerrorbells

"show all in line
set display=lastline
set pumheight=10

"color tab, space, newline
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%

"dein 
if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
 call dein#install()
endif
filetype plugin indent on
syntax enable
