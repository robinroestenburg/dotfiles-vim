" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Tim Pope's Pathogen plugin.
call pathogen#infect()

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Don't redraw during macro execution
set lazyredraw

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

set nowrap

set number

" Show the line and column number of the cursor position, separated by a
"	comma.
set ruler

set background=light

" Solarized options 
"
" This is set to 16 by default, meaning that Solarized will attempt to use the
" standard 16 colors of your terminal emulator. You will need to set those
" colors to the correct Solarized values either manually or by importing one
" of the many colorscheme available for popular terminal emulators and
" Xdefaults.
let g:solarized_termcolors = 256

" If you use a terminal emulator with a transparent background and Solarized isn't 
" displaying the background color transparently, set this to 1 and Solarized will 
" use the default (transparent) background of the terminal emulator. urxvt required 
" this in my testing; iTerm2 did not.
"
" Note that on Mac OS X Terminal.app, solarized_termtrans is set to 1 by default as 
" this is almost always the best option. The only exception to this is if the working 
" terminfo file supports 256 colors (xterm-256color).
let g:solarized_termtrans = 1

colorscheme solarized


source ~/.vim/rc/statusbar.vim
source ~/.vim/rc/arrow_keys.vim
source ~/.vim/rc/indent.vim
