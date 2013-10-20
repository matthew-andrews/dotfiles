" Enable syntax highlighting
execute pathogen#infect()
syntax enable

" Trim whitespace
autocmd FileType c,cpp,java,php,javascript,sass,css,phtml,mustache,markdown,ruby autocmd BufWritePre <buffer> :%s/\s\+$//e

" Language settings
set fileencoding=utf-8

" Set up line numbering
set number

" Show line, column number, and relative position within a file in the status line
" au WinLeave * set nocursorline nocursorcolumn
" au WinEnter * set cursorline cursorcolumn
" set cursorline cursorcolumn 

" Indentation
set tabstop=4
set shiftwidth=4
set expandtab

" Vundle
set nocompatible " be iMproved
filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle (required!)
Bundle 'gmarik/vundle'

" Omnifunc
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" JSHint
inoremap <C-h> <c-o>:JSHint<CR>
nnoremap <C-h> :<C-u>JSHint<CR>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Easy expansion of the active file directory (tip 41, Practical Vim)
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Background dark
set background=dark
