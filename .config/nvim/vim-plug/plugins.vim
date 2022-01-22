" vim-plug installation cmd in linux:
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
" 
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'rrethy/vim-hexokinase', {'do': 'make hexokinase'}
"Plug 'ap/vim-css-color'
"Plug 'morhetz/gruvbox'
"Plug 'tpope/vim-sensible'
"Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"Plug 'cohama/lexima.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Config for vim-hexokinase
let g:Hexokinase_highlighters = ['backgroundfull']
