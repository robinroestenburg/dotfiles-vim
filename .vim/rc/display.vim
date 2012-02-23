" Don't redraw during macro execution
set lazyredraw

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

set number
set numberwidth=5 " Enough room to fit 3-digit lines.

" Highlight the screen line of the cursor.
set cursorline

"	Highlight column 80 of each line.
set textwidth=80
set colorcolumn=+1
set nowrap
set linebreak
set background=light

" Solarized options 
"
" This is set to 16 by default, meaning that Solarized will attempt to use the
" standard 16 colors of your terminal emulator. You will need to set those
" colors to the correct Solarized values either manually or by importing one
" of the many colorscheme available for popular terminal emulators and
" Xdefaults.
let g:solarized_termcolors = 256

" If you use a terminal emulator with a transparent background and Solarized
" isn't displaying the background color transparently, set this to 1 and
" Solarized will use the default (transparent) background of the terminal
" emulator. urxvt required this in my testing; iTerm2 did not.
"
" Note that on Mac OS X Terminal.app, solarized_termtrans is set to 1 by default
" as this is almost always the best option. The only exception to this is if the
" working terminfo file supports 256 colors (xterm-256color).
let g:solarized_termtrans = 1

colorscheme solarized
