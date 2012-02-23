nnoremap <silent> <Leader>t :CommandT<CR>
nnoremap <silent> <Leader>T :CommandTFlush<CR>
nnoremap <silent> <Leader>b :CommandTBuffer<CR>

" Normally Command-T will not recurse into "dot-directories" (directories whose
" names begin with a dot) while performing its initial scan. Set this setting to
" a non-zero value to override this behavior and recurse.
let g:CommandTScanDotDirectories = 1

" When showing the file listing Command-T will by default show dot-files only if
" the entered search string contains a dot that could cause a dot-file to match.
" When set to a non-zero value, this setting instructs Command-T to always
" include matching dot-files in the match list regardless of whether the search
" string contains a dot.
let g:CommandTAlwaysShowDotFiles = 1

" A list of file patterns.  A file that matches with one of these patterns is
" ignored when completing file or directory names, and influences the result of
" |expand()|, |glob()| and |globpath()| unless a flag is passed to disable this.
set wildignore+=.vim/bundle/**,.git,generated/**
