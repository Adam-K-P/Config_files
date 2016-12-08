syntax on
set ruler
set number
set relativenumber
set smartindent
set tabstop=3
set shiftwidth=3
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
let g:tagbar_width=30

set mouse=a

let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize = 30

set background=dark
colorscheme jellybeans

set guiheadroom=0

set tags=tags;
set autochdir

"noremap ; l
"noremap l k
"noremap k j
"noremap j h

"nnoremap <C-W>; <C-W>l
"nnoremap <C-W>l <C-W>k
"nnoremap <C-W>k <C-W>j
"nnoremap <C-W>j <C-W>h


