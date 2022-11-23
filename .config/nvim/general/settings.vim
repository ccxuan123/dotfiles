"""""""""""""""""""""""""""""""""""""""""""""""""""
" => General  
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show cursor position below window
set ruler

" Show line number & relative line number
set number
set relativenumber

" Configure backspace to work like normal
"set t_kb=
set backspace=indent,eol,start

" Highlight search results
set hlsearch

" Show extra 8 lines if the cursor near bottom or top 
set scrolloff=8

" Turn on wild menu
set wildmenu

" Enable copy to system clipboard with xclip
set clipboard=unnamed,unnamedplus

" Keep buffer in background when no shown in window
set hidden

" No auto backups
set nobackup

" No swap
set noswapfile

" Split new window at below
set splitbelow

" Split new window at right
set splitright

"""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status Line
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Always display the status line
set laststatus=2                        


"""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Converts tabs to spaces
set expandtab

" Insert 4 spaces for a tab
set tabstop=4 
set softtabstop=4             
set shiftwidth=4

" Auto indent for new line
set smartindent
set autoindent

" Configure text encoding
set encoding=utf-8
set fileencoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""
" => Color & Theme
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable catppuccin colorscheme
" Plug 'catppuccin/nvim', {'as': 'catppuccin'}
" autocmd vimenter * ++nested colorscheme catppuccin

" Enables syntax highlighing
syntax enable

" Enable highlighting of the current line
set cursorline                          

" Accent color for cursor line highlighting
hi CursorLine cterm=NONE ctermbg=black


"""""""""""""""""""""""""""""""""""""""""""""""""""
" => Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""
function! DoPrettyXML()
    silent %!xmllint --format %
endfunction
command! Xmlpp call DoPrettyXML()
