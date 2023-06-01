" --- General ---
set ruler
set number
set relativenumber
set backspace=indent,eol,start      " Configure backspace to work like normal
set hlsearch
set scrolloff=8
set wildmenu
set clipboard=unnamed,unnamedplus   " Enable copy to system clipboard with xclip
set hidden
set nobackup
set noswapfile
set splitbelow
set splitright
set laststatus=2                    " Always display the status line

" Enable folding for markdown
let g:markdown_folding = 1
au FileType markdown setlocal foldlevel=99


" --- Text, tab and indent related ---
set expandtab
set tabstop=4 
set softtabstop=4             
set shiftwidth=4
set smartindent
set autoindent
set encoding=utf-8
set fileencoding=utf-8

" --- Color & Theme ---
syntax enable
set cursorline                          
" Accent color for cursor line highlighting
hi CursorLine cterm=NONE ctermbg=black
