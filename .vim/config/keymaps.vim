let mapleader = " "

" File explorer (netrw side panel)
nnoremap <leader>e :Lexplore<CR>

" Fast search/navigation
nnoremap <leader><leader> :Files<CR>
nnoremap <leader>/ :Rg<CR>
nnoremap <leader>b :Buffers<CR>

" Buffer switching
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> <leader><Tab> :b#<CR>

" Search a string inside a folder you pick (ripgrep + fzf)
function! s:RgInFolder() abort
  let l:dir = input('Folder: ', '', 'dir')
  if empty(l:dir) | return | endif
  let l:pat = input('Search: ')
  if empty(l:pat) | return | endif
  call fzf#vim#grep(
        \ 'rg --column --line-number --no-heading --color=always --smart-case '
        \   . shellescape(l:pat) . ' ' . shellescape(l:dir),
        \ 1, fzf#vim#with_preview())
endfunction
nnoremap <silent> <leader>G :call <SID>RgInFolder()<CR>

" Git (vim-fugitive)
nnoremap <leader>gb :Git blame<CR>
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gd :Gdiffsplit<CR>
nnoremap <leader>gl :Git log<CR>

" CoC IDE actions
nnoremap <leader>rn <Plug>(coc-rename)
nnoremap <leader>ca <Plug>(coc-codeaction-cursor)
nnoremap gd <Plug>(coc-definition)
nnoremap gr <Plug>(coc-references)

" Keymap cheat sheet
function! s:ShowKeymapHelp() abort
  let l:lines = [
        \ ' Keymap Cheat Sheet   (leader = <Space>)',
        \ ' ─────────────────────────────────────────────',
        \ '',
        \ ' Files / Navigation',
        \ '   <leader>e      Toggle file explorer (netrw side panel)',
        \ '   <leader><leader>  Find files (fzf :Files)',
        \ '   <leader>/      Search in files (ripgrep :Rg)',
        \ '   <leader>G      Search a string in a folder you pick',
        \ '   <leader>b      List buffers (:Buffers)',
        \ '   ]b / [b        Next / previous buffer',
        \ '   <leader><Tab>  Switch to last-used buffer',
        \ '',
        \ ' Git (fugitive)',
        \ '   <leader>gb     Git blame',
        \ '   <leader>gs     Git status',
        \ '   <leader>gd     Git diff (split)',
        \ '   <leader>gl     Git log',
        \ '',
        \ ' Code / IDE (CoC)',
        \ '   gd           Go to definition',
        \ '   gr           Go to references',
        \ '   K            Show hover documentation',
        \ '   <leader>rn   Rename symbol',
        \ '   <leader>ca   Code action at cursor',
        \ '   <leader>cf   Format current buffer',
        \ '',
        \ ' Completion (insert mode)',
        \ '   <Tab>        Next item / trigger completion',
        \ '   <S-Tab>      Previous item',
        \ '   <C-Space>    Trigger completion',
        \ '',
        \ ' Tests (vim-test)',
        \ '   <leader>tn   Test nearest',
        \ '   <leader>tf   Test file',
        \ '   <leader>ts   Test suite',
        \ '   <leader>tl   Test last',
        \ '   <leader>tv   Visit test file',
        \ '',
        \ ' Help',
        \ '   <leader>?    Show this cheat sheet',
        \ '',
        \ ' Press q to close.',
        \ ]
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  setlocal nonumber norelativenumber signcolumn=no colorcolumn=
  call setline(1, l:lines)
  setlocal nomodifiable
  execute 'resize' (len(l:lines) + 1)
  file [Keymaps]
  nnoremap <buffer><silent> q :close<CR>
endfunction

command! Keymaps call s:ShowKeymapHelp()
nnoremap <silent> <leader>? :Keymaps<CR>
