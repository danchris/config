# config
My config files for Linux workstations

## Vim configuration

This repository includes a Vim setup that expects these paths in your home directory:

- `~/.vimrc`
- `~/.vim/`

To install it on a new workstation:

```bash
git clone ssh://git@github.com/danchris/config ~/config
ln -sfn ~/config/.vimrc ~/.vimrc
ln -sfn ~/config/.vim ~/.vim
```

Then start Vim and install CoC extensions and plugins:

```vim
:CocInstall coc-json coc-sh coc-yaml
:PlugInstall
```

The shared Vim settings live under `.vim/config/`. Plugin checkouts are stored in `.vim/plugged/` and are ignored by git because they are generated locally.

### Plugins

The Vim config installs these plugins:

- `neoclide/coc.nvim` — language-server style completion, hover, rename,
  and code actions.
- `junegunn/fzf` — fuzzy finder for files and other lists.
- `junegunn/fzf.vim` — Vim commands that expose `fzf` as `:Files`,
  `:Buffers`, and `:Rg`.
- `tpope/vim-fugitive` — Git commands such as blame, status, diff, and log.
- `vim-test/vim-test` — run tests from inside Vim.
- `itchyny/lightline.vim` — statusline UI.
- `morhetz/gruvbox` — color scheme.
- `github/copilot.vim` — GitHub Copilot completions in classic Vim.

## Keymaps

`<leader>` is set to space.

| Key | Action |
| --- | --- |
| `<leader>e` | Toggle the file explorer |
| `<leader><leader>` | Find files |
| `<leader>/` | Search in files |
| `<leader>G` | Search in a selected folder |
| `<leader>b` | List buffers |
| `]b` / `[b` | Next / previous buffer |
| `<leader><Tab>` | Switch to the last-used buffer |
| `<leader>gb` | Git blame |
| `<leader>gs` | Git status |
| `<leader>gd` | Git diff |
| `<leader>gl` | Git log |
| `gd` | Go to definition |
| `gr` | Go to references |
| `K` | Show hover documentation |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action at cursor |
| `<leader>cf` | Format current buffer |
| `<Tab>` / `<S-Tab>` / `<C-Space>` | Completion navigation |
| `<leader>tn` | Test nearest |
| `<leader>tf` | Test file |
| `<leader>ts` | Test suite |
| `<leader>tl` | Test last |
| `<leader>tv` | Visit test file |
| `<leader>?` | Show the keymap cheat sheet |
