" ALE
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
let g:ale_open_list = 0

let g:ale_fixes = {
\ 'go': ['gopls'],
\}

let g:ale_linters = {
\ 'go': ['golangci-lint', 'gopls'],
\}

" Diagnostics navigation
nmap <silent> ]d <Plug>(ale_next_wrap)
nmap <silent> [d <Plug>(ale_previous_wrap)
nmap <silent> ]e <Plug>(ale_next_wrap_error)
nmap <silent> [e <Plug>(ale_previous_wrap_error)
nmap <silent> ]w <Plug>(ale_next_wrap_warning)
nmap <silent> [w <Plug>(ale_previous_wrap_warning)
