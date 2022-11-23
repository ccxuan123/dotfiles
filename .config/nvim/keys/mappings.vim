""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom Key Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use ALT + hjkl to resize windows
nnoremap <C-j>    :resize -2<CR>
nnoremap <C-k>    :resize +2<CR>
nnoremap <C-h>    :vertical resize -2<CR>
nnoremap <C-l>    :vertical resize +2<CR>

" Use TAB or SHIFT+TAB to switch buffer
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" Remap jk or kj to ESc 
inoremap jk <Esc>
inoremap kj <Esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Map <Esc> to exit terminal-mode: >
tnoremap <Esc> <C-\><C-n>

" To use `ALT+{h,j,k,l}` to navigate windows from any mode: >
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
