# Backup and restore packages with Pacman

To backup Pacman package list:

```
pacman -Qqe > pkglist.txt
```

To backup the list of the foreign packages:

```
pacman -Qqem > pkglist-foreign.txt
```

To restore (install) packages from the list:

```
pacman -S --needed $(comm -12 <(pacman -Slq | sort) <(sort pkglist.txt))
```

