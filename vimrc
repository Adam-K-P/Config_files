syntax on
set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

execute pathogen#infect()

filetype plugin indent on

map <F9> :tabp<cr>
map <F10> :tabn<cr>
map <F2> :NERDTreeToggle<cr>
map <F3> :TagbarToggle<CR>
map <F4> :bp<CR>
map <F5> :bn<CR>
let g:tagbar_left=0
let g:tagbar_width=20

set mouse=a

let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize = 20

colorscheme zellner










