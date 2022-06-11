# Set up Visual Studio Code

Make symlinks as below.

```shell
ln -s $DOTFILES/vscode/settings.json ~/.config/Code\ -\ OSS/User/settings.json
ln -s $DOTFILES/vscode/snippets ~/.config/Code\ -\ OSS/User/snippets

ln -s $DOTFILES/vscode/settings.json ~/.config/Code/User/settings.json # official binary
ln -s $DOTFILES/vscode/snippets ~/.config/Code/User/snippets # official binary
```

In Powershell (Administrator),

```powershell
New-Item -ItemType SymbolicLink -Path "~\AppData\Roaming\Code\User\settings.json" -Target ".\settings.json"
New-Item -ItemType SymbolicLink -Path "~\AppData\Roaming\Code\User\snippets" -Target ".\snippets"
```

Then, install extensions from `extensions.json`.

Note: search for '@builtin Markdown Math' to manually disable built-in Markdown Math extension and use `goessner.mdmath` instead.
