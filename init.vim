
" if do not have vim-plug installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" call the vim-plug
call plug#begin()
Plug 'preservim/vim-markdown'

Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_quickfix_mode=0

" Plug 'KeitaNakamura/tex-conceal.vim'
"     set conceallevel=1
"     let g:tex_conceal='abdmg'
"     hi Conceal ctermbg=none

Plug 'jiangmiao/auto-pairs'
call plug#end()

" Enable syntax highlighting
syntax on
filetype plugin indent on
autocmd FileType markdown setlocal filetype=tex

" Add $ pair
let g:AutoPairs = {
  \ '$': '$', 
  \ '(':')', 
  \ '{':'}', 
  \ '[':']', 
  \ '"':'"'
  \ }
