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

" Use a darker background than used in the default Zenburn scheme.
let g:zenburn_high_Contrast = 1

" Use the Zenburn scheme.
colorscheme zenburn


