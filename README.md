# .files

This repository hosts my setting/preset files of these applications:

- LaTeX
- Vim
- VS Code
- ZSH
- iTerm 2
- Karabiner-Elements
- Firefox

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

1. Install [Oh My ZSH!](https://ohmyz.sh/)
1. Install [Zplug](https://github.com/zplug/zplug)
1. Append following lines to `.zshrc`

```
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"

zplug load
```

## Set up iTerm 2

Just import json file to iTerm 2. That's it. 😉

## Set up Karabiner-Elements

Read [documentation](https://pqrs.org/osx/karabiner/json.html#location)
and import `gureum.json`.

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
- Vim

## Set up Firefox

- In Firefox, there exists a chance that images and elements rendered have
inaccurate and over-saturated colours.
By configuring from `about:config` on colour management, over-saturated colours
can be corrected. ([Reference](https://cameratico.com/guides/firefox-color-management/))
- Enable [DNS-over-HTTPS](https://support.mozilla.org/en-US/kb/firefox-dns-over-https)
- Install Add-ons
  - 1Password
  - Adblock Plus
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
- [Sliding Bookmarkbar](https://github.com/zvuc/firefox-sliding-bookmarks-bar)
- Import bookmarks
