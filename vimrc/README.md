# Set up Neovim

```bash
# init.vim
ln -s ~/repo/dotfiles/vimrc/vimrc ~/.config/nvim/init.vim
# install pynvim
pip install pynvim
# install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# install CoC extensions
mkdir -p ~/.config/coc/extensions
cd ~/.config/coc/extensions
if [ ! -f package.json ]
then
  echo '{"dependencies":{}}'> package.json
fi
npm install $(cat ~/repo/dotfiles/vimrc/extensions.txt) \
            --install-style=shallow \
            --ignore-scripts \
            --no-bin-links \
            --no-package-lock \
            --only=prod
```

