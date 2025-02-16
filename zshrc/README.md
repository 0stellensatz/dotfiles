# Set up ZSH

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ~/repo/dotfiles/zshrc/dragon.zsh-theme ~/.oh-my-zsh/themes
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
echo "source ~/repo/dotfiles/zshrc/zshrc" >> ~/.zshrc
```

