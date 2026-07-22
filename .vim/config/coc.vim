" Use Tab for completion navigation
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Trigger completion manually
inoremap <silent><expr> <c-space> coc#refresh()

" Show documentation
nnoremap <silent> K :call CocActionAsync('doHover')<CR>

" Format current buffer
nnoremap <leader>cf :call CocAction('format')<CR>
