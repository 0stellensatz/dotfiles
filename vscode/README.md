# Set up Visual Studio Code

Make symlinks as below.

```shell
ln -s $DOTFILES/vscode/settings.json ~/.config/Code\ -\ OSS/User/settings.json
ln -s $DOTFILES/vscode/snippets ~/.config/Code\ -\ OSS/User/snippets

ln -s $DOTFILES/vscode/settings.json ~/.config/Code/User/settings.json # official binary
ln -s $DOTFILES/vscode/snippets ~/.config/Code/User/snippets # official binary
```

Then, install extensions from `extensions.json`.

Note: search for '@builtin Markdown Math' to manually disable built-in Markdown Math extension and use `goessner.mdmath` instead.
