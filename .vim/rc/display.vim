" Don't redraw during macro execution
set lazyredraw

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

set number
set numberwidth=5 " Enough room to fit 3-digit lines.

"	Highlight column 80 of each line.
set textwidth=80
set colorcolumn=+1
set nowrap
set linebreak

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=5


" Highlight the screen line of the cursor.
set cursorline

" Use a dark background.
set background=dark

" Use the Solarized scheme.
colorscheme Wombat256

" Highlight space errors.
" By default, the "end" keyword is colorized according to the opening statement
" of the block it closes.  While useful, this feature can be expensive; if you
" experience slow redrawing (or you are on a terminal with poor color support)
" you may want to turn it off by defining the "ruby_no_expensive" variable:
let ruby_no_expensive = 1

" Ruby operators can be highlighted. This is enabled by defining ruby_operators:
let ruby_operators = 1

" Whitespace errors can be highlighted by defining "ruby_space_errors":
let ruby_space_errors = 1

" Show leading whitespace that includes spaces, and trailing whitespace.
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
