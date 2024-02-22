"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug installation cmd in linux:
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

    " Declare the list of plugins. 
    Plug 'catppuccin/nvim', {'as': 'catppuccin'} 
    Plug 'itchyny/lightline.vim'
    Plug 'rust-lang/rust.vim'
    Plug 'alvan/vim-closetag'
    "Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
    "Plug 'lervag/wiki.vim'
    Plug 'vimwiki/vimwiki'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
    "Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'img-paste-devs/img-paste.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'daveyarwood/vim-alda' "Plug 'edluffy/hologram.nvim' Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
    Plug 'godlygeek/tabular'
    Plug 'preservim/vim-markdown'

call plug#end()

" Enable catppuccin colorscheme plugin
colorscheme catppuccin-macchiato

" Config for vim-hexokinase
let g:Hexokinase_highlighters = [ 'backgroundfull' ]

" Config for lightline
let g:lightline = {'colorscheme': 'catppuccin'}

" Config for rust.vim
filetype plugin indent on

" Config for img-paste-vim
autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
" there are some defaults for image directory and image name, you can change them
let g:mdip_imgdir = 'image'
" let g:mdip_imgname = 'image'

" Config for markdown-preview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_theme = 'dark'
nmap <C-p> <Plug>MarkdownPreviewToggle


" Config for vimwiki
let g:vimwiki_list = [{'path': '~/Documents/personal-wiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_markdown_link_ext = 1
" use <leader><tab> to jump to next link
nmap <Leader><TAB>      <Plug>VimwikiNextLink
nmap <Leader><S-TAB>    <Plug>VimwikiPrevLink

"Config for preservim/vim-markdown
"let g:vim_markdown_conceal = 2
set conceallevel=2

