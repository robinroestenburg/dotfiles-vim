" Use Vim settings, rather than Vi settings (much better!). This must be first,
" because it changes other options as a side effect.
set nocompatible

" Tim Pope's Pathogen plugin.
call pathogen#infect()

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Turn backup off, since most stuff is in version control anyway. Gets rid of
" the annoying errors when re-opening the same file.
set nobackup
set nowb
set noswapfile

" When a file has been detected to have been changed outside of Vim and it has
" not been changed inside of Vim, automatically read it again.
set autoread

" Set the current shell to bash, because zsh does not use the correct Ruby
" version.
set shell=bash

" ruby path if you are using RVM
let g:ruby_path = system('rvm current')

source ~/.vim/rc/running-tests.vim
source ~/.vim/rc/keys.vim
source ~/.vim/rc/statusbar.vim
source ~/.vim/rc/indent.vim
source ~/.vim/rc/command-t.vim
source ~/.vim/rc/display.vim
source ~/.vim/rc/search.vim

