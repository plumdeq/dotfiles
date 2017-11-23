" My VIM configuration file

" Get rid of old vim stuff
set nocompatible
set nowritebackup
set noswapfile

" Support for Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" Search functions
set nohlsearch
set ignorecase
set smartcase
set incsearch

" Potential bugs
set backspace=2 " sometimes backspace does not work

" Input formatting (tabs etc.) and text rendering
set nowrap
set softtabstop=4
set tabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set encoding=utf8
set laststatus=2
set number

" ======
" VUNDLE
" ======
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Local plugins
Plugin 'file:///home/asan/code/vim-plugins/workdiary'

call vundle#end()
filetype plugin indent on


" non plugin-related mappings
let mapleader=","
imap jk <ESC>
nnoremap <leader>ve :e $MYVIMRC<CR>
nnoremap <leader>vs :source $MYVIMRC<CR>

" Abbreviations
abbr cpr copyright Asan AGIBETOV <asan.agibetov@gmail.com>
abbr utf8 # coding:utf8
abbr cross # Cross-library imports
abbr third # Third-party imports
abbr stan # Standard-library imports


" ================
" WORKDIARY PLUGIN
" ================
nnoremap <leader>sto :call StopPommodoro()<cr>
nnoremap <leader>sta :call StartPommodoro()<cr>
