# Set up Windows Terminal

Make symlinks as below. (Administrator Powershell)

```powershell
New-Item -ItemType SymbolicLink -Path "~\path\to\settings.json" -Target ".\settings.json"
```
