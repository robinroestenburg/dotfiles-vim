let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>
" Fast quiting
nmap <leader>q :q<cr>

" " Fast editing of the .vimrc
" nmap <leader>e :e! ~/.vimrc<cr>

" " When vimrc is edited, reload it
" autocmd! bufwritepost vimrc source ~/.vimrc

" Smart way to move around in windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
" TODO: Was not working, look for new ones.

" Turn off arrow keys in normal mode.
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Turn off arrow keys in insert mode.
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Turn off arrow keys in visual mode.
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

" Pressing j or k in a long wrapped will put cursor down/up one visual line.
nnoremap j gj
nnoremap k gk

" Turn off F1
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Pressing only the leader key will turn of the highlighting.
map <silent> <leader><cr> :noh<cr>

" Shortcuts for using Tabularize, see: 
" http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a. :Tabularize /=>CR>
vmap <leader>a. :Tabularize /=><CR>
nmap <leader>a: :Tabularize /:\zs<CR>
vmap <leader>a: :Tabularize /:\zs<CR>

" Command-T shortcuts
nmap <leader>t  :CommandTFlush<CR>\|:CommandT<CR>
nmap <leader>T  :CommandTFlush<CR>\|:CommandT %%<CR>
nmap <leader>b  :CommandTBuffer<CR>
nmap <leader>gc :CommandTFlush<CR>\|:CommandT app/controllers<CR>
nmap <leader>gh :CommandTFlush<CR>\|:CommandT app/helpers<CR>
nmap <leader>gm :CommandTFlush<CR>\|:CommandT app/models<CR>
nmap <leader>gv :CommandTFlush<CR>\|:CommandT app/views<CR>
nmap <leader>ga :CommandTFlush<CR>\|:CommandT app/stylesheets<CR>
nmap <leader>gl :CommandTFlush<CR>\|:CommandT lib<CR>
nmap <leader>gp :CommandTFlush<CR>\|:CommandT public<CR>
nmap <leader>gf :CommandTFlush<CR>\|:CommandT features<CR>
nmap <leader>gs :CommandTFlush<CR>\|:CommandT spec<CR>

" Shortcuts for running RSpec, Cucumber and Test::Unit test.
" TODO: Use better mappings ;)
nmap <leader>r :call RunTestFile()<cr>
nmap <leader>R :call RunNearestTest()<cr>
nmap <leader>a :call RunTests('')<cr>
nmap <leader>f :w\|:!script/features<cr>
nmap <leader>fw :w\|:!script/features --profile wip<cr>

" Toggle the 'paste' option On/Off. When the 'paste' option is enabled, Vim
" turns off all Insert mode mappings and abbreviations and resets a host of
" options, including 'autoindent'.
set pastetoggle=<f5>
