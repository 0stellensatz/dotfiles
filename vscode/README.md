# Set up Visual Studio Code

Make symlink `~/.config/Code\ -\ OSS/User/settings.json` and `~/.config/Code\
-\ OSS/User/snippets`(`~/.config/Code/User/settings.json` and
`~/.config/Code/User/snippets` respectively if you're using official binary
version).

```shell
ln -s $DOTFILES/vscode/settings.json ~/.config/Code\ -\ OSS/User/settings.json
ln -s $DOTFILES/vscode/snippets ~/.config/Code\ -\ OSS/User/snippets
```

Then, install extensions from `extensions.json`.
