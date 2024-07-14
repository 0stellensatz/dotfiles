# Set up Vim (or Neovim)

1. Create a symlink:
    - `ln -s /path/to/vimrc ~/.vimrc` (for Vim)
    - `ln -s /path/to/vimrc ~/.config/nvim/init.vim` (for Neovim)
2. Install `pynvim` if you are using Neovim.
    - `pip install pynvim`
3. Install [Vim-Plug](https://github.com/junegunn/vim-plug), then run `:PlugInstall`.
