# Set up Neovim

```bash
ln -s ~/repo/dotfiles/vimrc ~/.config/nvim/init.vim
pip install pynvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

