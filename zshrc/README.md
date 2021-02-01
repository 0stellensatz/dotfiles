# Set up ZSH

1. Make symlink `.zshrc` linked to path to `dotfiles/zshrc/zshrc` by `ln -s
   path/to/dotfiles/zshrc/zshrc ~/.zshrc`
2. Install [Oh My ZSH!](https://ohmyz.sh/)
3. Install [Zplug](https://github.com/zplug/zplug), then run `zplug install`
4. Install [FZF](https://github.com/junegunn/fzf) w/ shell extensions for key
   bindings & fuzzy auto-complete.

Variable for `path/to/dotfiles` is set on `.zshrc`, which means accessing
`path/to/dotfiles` by `$DOTFILES` is available for further steps.
