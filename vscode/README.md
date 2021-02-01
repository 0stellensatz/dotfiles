# Set up Visual Studio Code

Make symlink `~/.config/Code\ -\ OSS/User/settings.json` linked to path to
`$DOTFILES/vscode/settings.json`.

```shell
ln -s $DOTFILES/vscode/settings.json ~/.config/Code\ -\ OSS/User/settings.json
```

Also, make symlink `~/.config/Code\ -\ OSS/User/snippets` linked to path to
`$DOTFILES/vscode/snippets`.

```shell
ln -s $DOTFILES/vscode/snippets ~/.config/Code\ -\ OSS/User/snippets
```

Then, install extensions from `extensions.json`
