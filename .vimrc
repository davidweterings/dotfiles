" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
Plug 'editorconfig/editorconfig-vim'

Plug 'phaazon/hop.nvim'



" Initialize plugin system
call plug#end()

set nocompatible
filetype plugin indent on
syntax enable
set number
filetype indent on
set nohlsearch
set incsearch
set ignorecase
set ruler
set nowrap
set expandtab " use spaces instead of tabs
imap jj <Esc>
set clipboard+=unnamedplus

let g:netrw_browse_split = 2

set undofile
set undodir=~/.vim/undodir

let mapleader=" "
