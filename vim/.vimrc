" vim configuration file

set nu
set ts=4
set sw=4
set sts=4
set autoindent
set smartindent
set expandtab
set smarttab
set nocompatible
filetype plugin indent on
syntax on
set backspace=indent,eol,start
set confirm
set ruler
let MRU_Auto_Close = 0 
let NERDTreeIgnore = ['\.pyc$']
color delek

"Automatically indent the next line after this keywords: if, elif, else, for, while, try, except, finally, def, class
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
"Remove all trailing spaces during exit.
autocmd BufWritePre *.py :%s/\s\+$//e
" sets the omnifunctionality for python
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"sets the make program for python files as python 2 (to find the syntex errors)
autocmd FileType python setlocal makeprg=python2\ %

" just a try to nerd tree filtering 
"au BufRead,BufNew /var/www/onekey/* let NERDTreeIgnore = ['\.\(html\|py\|js\|css\)\@![^.]*$']
"let NERDTreeIgnore = ['\.\(html\|py\|js\|css\)\@![^.]*$']

" mapping for Project plugin
nmap <silent> <F4> <Plug>ToggleProject
" mapping for List Toggle
nmap <silent> <F11> :TlistToggle <CR>
" mapping for buf explorer plugin
noremap <silent> <F3> :BufExplorer <CR>
" mapping for mru plugin
noremap <silent> <F10> :MRU <CR>
" mapping for fuzzy finder
nnoremap <C-f> :FufFile<CR>
nnoremap <C-b> :FufBuffer<CR>
" mapping for Nerd Tree
noremap <silent> <F2> :NERDTreeToggle <CR>
" this is done because when writing a comment in python code the cursur goes
" to column 0
inoremap # X#

" fold , current line and cursur color
highlight CursorColumn term=none cterm=none ctermbg=292929
highlight CursorLine term=none cterm=none ctermbg=292929 
highlight Folded term=none cterm=none ctermbg=292929 
