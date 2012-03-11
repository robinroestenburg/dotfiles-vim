let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>
" Fast quiting
nmap <leader>q :q<cr>

" " Fast editing of the .vimrc
" nmap <leader>e :e! ~/.vimrc<cr>

" " When vimrc is edited, reload it
" autocmd! bufwritepost vimrc source ~/.vimrc

" Smart way to move windows
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
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
