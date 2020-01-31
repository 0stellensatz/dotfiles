# .files

This repository hosts my setting/preset files of these applications:

- LaTeX
- Vim
- VS Code
- iTerm 2
- Karabiner-Elements

## Set up LaTeX

To use preamble in LaTeX document, make a symlink of preamble file
in working directory, and put `\include{preamble_ko}`.
When using this preamble in English or Japanese document,
use `preamble_en` or `preamble_ja` instead of
`preamble_ko`.

## Set up Vim

1. Make symlink `.vimrc` linked to path to dotfiles/vimrc/vimrc
`ln -s path/to/dotfiles/vimrc/vimrc ~/.vimrc`
2. Install `junegunn/vim-plug`  

``` shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Set up ZSH

Make symlink `.zshrc` linked to path to dotfiles/zshrc/zshrc
`ln -s path/to/dotfiles/zshrc/zshrc ~/.zshrc`.

## Set up iTerm 2

Just import json file to iTerm 2. That's it. 😉

## Set up Karabiner-Elements

Read [documentation](https://pqrs.org/osx/karabiner/json.html#location)
and import `gureum.json`.

## Set up Visual Studio Code

Copy & paste contents of `settings.json` to `settings.json` of VS Code.
Also install these plug-ins.

- CodeLLDB
- Python
- Rust (rls)
- Japanese Language Package
- Korean Language Package
- LaTeX Workshop
- markdownlint
- Markdown+Math
- Polacode
- Vim
