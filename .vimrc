" Enable syntax highlighting
execute pathogen#infect()
syntax enable

" Trim whitespace
autocmd FileType c,cpp,java,php,javascript,sass,css,phtml,mustache,markdown,ruby autocmd BufWritePre <buffer> :%s/\s\+$//e

" Language settings
set fileencoding=utf-8

" Set up line numbering
set number

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

" Easy expansion of the active file directory (tip 41, Practical Vim)
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Background dark
set background=dark
