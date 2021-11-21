" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
"Plug 'tpope/vim-sensible'
"Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"Plug 'cohama/lexima.vim'

" install euclio/vim-markdown-composer
"function! BuildComposer(info)
"  if a:info.status != 'unchanged' || a:info.force
"    if has('nvim')
"      !cargo build --release --locked
"    else
"      !cargo build --release --locked --no-default-features --features json-rpc
"    endif
"  endif
"endfunction
"Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }


" List ends here. Plugins become visible to Vim after this call.
call plug#end()

