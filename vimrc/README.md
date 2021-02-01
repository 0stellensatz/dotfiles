# Set up Vim (or maybe Neovim)

1. Make symlink `.vimrc` linked to path to `$DOTFILES/vimrc/vimrc` by
`ln -s $DOTFILES/vimrc/vimrc ~/.vimrc` for Vim.
`ln -s $DOTFILES/vimrc/vimrc ~/.config/nvim/init.vim` for Neovim instead.
2. For Neovim, install `pynvim` with pip by `pip install pynvim`.
3. Install [Vim-Plug](https://github.com/junegunn/vim-plug), then run `:PlugInstall`.
4. Install [CoC](https://github.com/neoclide/coc.nvim) extensions.

