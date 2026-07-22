set nocompatible
filetype plugin indent on
syntax on


if filereadable(expand('~/.vim/autoload/plug.vim'))
  execute 'source' expand('~/.vim/autoload/plug.vim')
endif

if exists('*plug#begin')
  execute 'source' expand('~/.vim/config/plugins.vim')
endif

for f in ['core.vim', 'keymaps.vim', 'coc.vim', 'ale.vim', 'test.vim', 'ui.vim']
  execute 'source' expand('~/.vim/config/' . f)
endfor
