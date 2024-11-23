" Specify a directory for plugins
call plug#begin()

Plug 'preservim/vim-markdown'

Plug 'lervag/vimtex'

Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_quickfix_mode=0

Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none

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
  \ '"':'"', 
  \ '`':'`'
  \ }
