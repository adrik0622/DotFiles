" SETTINGS ------------------------------------------------------------ {{{
" Enable Ale autocomplete
let g:ale_completion_enabled = 1

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible
" Enable type file detection. Vim will be able to try to detect the type of
" file in use
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers
set number

" Supposedly adds automplete to vim... I'm skeptical
set wildmenu

" Make vim ignore files that we would never want to edit with vim.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Use space characters instead of tab
set expandtab

" show the mode you are on in the last line
set showcmd

" Highlight cursor line underneath the cursor vertically
" set cursorcolumn

" }}}

" VIMSCRIPT ------------------------------------------------------------ {{{
" This will enable code folding. Use the marker method of folding
augroup filetype_vim
        autocmd!
        autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}

" REMAPS ------------------------------------------------------------ {{{
inoremap jj <esc>
nnoremap <space> :
" For a visual mode remap the syntax would basically be the same 'vnoremap'
" }}}

" PLUGINS ---------------------------------------- {{{
"
"
" }}}
