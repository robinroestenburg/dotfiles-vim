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
set background=dark

colorscheme zenburn

set scrolloff=5

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

" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

autocmd FileWritePre   * :call TrimWhiteSpace()
autocmd FileAppendPre  * :call TrimWhiteSpace()
autocmd FilterWritePre * :call TrimWhiteSpace()
autocmd BufWritePre    * :call TrimWhiteSpace()

