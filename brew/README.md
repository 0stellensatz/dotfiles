# Backup and restore packages with Homebrew

To backup Homebrew package list:

```
brew leaves > brew.txt
```

To backup Homebrew Cask list:

```
brew list --cask > brew-cask.txt
```

To restore (install) packages from the list:

```
xargs brew install < brew.txt
```

