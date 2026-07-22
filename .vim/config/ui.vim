set termguicolors
set background=dark

let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

highlight Normal      guibg=#000000 ctermbg=0
highlight NonText     guibg=#000000 ctermbg=0
highlight EndOfBuffer guibg=#000000 ctermbg=0

" 80-char guide
set colorcolumn=80

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
augroup whitespace_highlight
  autocmd!
  autocmd WinEnter,BufWinEnter * match ExtraWhitespace /\s\+$/
augroup END

" Optional visible whitespace chars
set list
set listchars=tab:»·,trail:·,extends:>,precedes:<,nbsp:+

" Lightline
set laststatus=2   " always show the status bar (footer)
set noshowmode     " mode is shown in lightline instead
let g:lightline = { 'colorscheme': 'gruvbox' }

" netrw side explorer
let g:netrw_liststyle = 3   " tree view
let g:netrw_winsize   = 25  " 25% width
let g:netrw_banner    = 0   " hide banner
