call plug#begin('~/.vim/plugged')

" IDE core
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'

" Search / navigation
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Git history / blame
Plug 'tpope/vim-fugitive'

" Tests
Plug 'vim-test/vim-test'

" UI
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'

" Copilot completions (classic Vim supported)
Plug 'github/copilot.vim'

call plug#end()
