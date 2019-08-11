# .files

This repository hosts my setting/preset files of these applications:

- LaTeX
- Vim
- VS Code
- iTerm 2
- zsh

## Set up Vim

1. Make symlink `.vimrc` linked to path to dotfiles/vimrc/vimrc
`ln -s path/to/dotfiles/vimrc/vimrc ~/.vimrc`
2. Install `junegunn/vim-plug`  

``` shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
