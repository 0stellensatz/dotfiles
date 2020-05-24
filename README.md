# .files

This repository hosts my setting/preset files of these applications:

- ZSH
- LaTeX
- Vim
- VS Code
- iTerm 2
- Karabiner-Elements
- Firefox

## Set up ZSH

1. Install [Oh My ZSH!](https://ohmyz.sh/)
1. Install [Zplug](https://github.com/zplug/zplug), [FZF](https://github.com/junegunn/fzf)
1. Make symlink `.zshrc` linked to path to `dotfiles/zshrc/zshrc` by
`ln -s path/to/dotfiles/zshrc/zshrc ~/.zshrc`

Variable for `path/to/dotfiles` is set on `.zshrc`, which means accessing `path/to/dotfiles`
by `$DOTFILES` is available for further steps.

## Set up LaTeX

To use preamble in LaTeX document, make a symlink of preamble file
in working directory, and put `\include{preamble_ko}`.
When using this preamble in English or Japanese document,
use `preamble_en` or `preamble_ja` instead of
`preamble_ko`.

## Set up Vim

1. Make symlink `.vimrc` linked to path to `$DOTFILES/vimrc` by
`ln -s $DOTFILES/vimrc/vimrc ~/.vimrc` for Vim.
`ln -s $DOTFILES/vimrc/vimrc ~/.config/nvim/init.vim` for Neovim instead.
2. Install `junegunn/vim-plug`  

*Vim*

```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

*Neovim*

```shell
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Set up iTerm 2

Just import json file to iTerm 2. That's it. 😉

## Set up Karabiner-Elements

Make symlink `karabiner.json` linked to path to `$DOTFILES/karabiner/karabiner.json` by
`ln -s $DOTFILES/karabiner/karabiner.json ~/.config/karabiner/karabiner.json`

## Set up Hammerspoon

Make symlink `init.lua` linked to path to `$DOTFILES/hammerspoon/init.lua` by
`ln -s $DOTFILES/hammerspoon/init.lua ~/.hammerspoon/init.lua`

## Set up Visual Studio Code

Copy & paste contents of `settings.json` to `settings.json` of VS Code.
Then install these plug-ins below.

- CodeLLDB
- Python
- Rust (rls)
- Japanese Language Package
- Korean Language Package
- LaTeX Workshop
- markdownlint
- Markdown+Math
- Polacode

## Set up Firefox

- In Firefox, there exists a chance that images and elements rendered have
inaccurate and over-saturated colours.
By configuring from `about:config` on colour management, over-saturated colours
can be corrected. ([Reference](https://cameratico.com/guides/firefox-color-management/))
- Enable [DNS-over-HTTPS](https://support.mozilla.org/en-US/kb/firefox-dns-over-https)
- Install Add-ons
  - 1Password X
  - DuckDuckGo Privacy Essentials
  - Enhancer for YouTube
  - Firefox Multi-Account Containers
  - Grammarly
  - HTTPS Everywhere
  - Keybase
  - Mailvelope
  - Popup Blocker
  - Search by Image
  - Web Archives
  - Tab2QR
- Connect Mailvelope to GnuPG
- Import bookmarks

## Build Iosevka with cherry-picked glyphs

Clone [be5invis/Iosevka](https://github.com/be5invis/Iosevka.git) and create
a symlink to `iosevka/private-build-plans.toml` in root directory of repo.
Then follow the [instructions](https://github.com/be5invis/Iosevka#building-from-source).
