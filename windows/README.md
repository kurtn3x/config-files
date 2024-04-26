# Personal Windows Tweaks
---
- [Personal Windows Tweaks](#personal-windows-tweaks)
  - [General](#general)
  - [Windows Style](#windows-style)
  - [Bloatware Remover / Security](#bloatware-remover--security)
  - [PowerShell Tweaks](#powershell-tweaks)
    - [Plugins](#plugins)
    - [Settings](#settings)
  - [Nvim](#nvim)
  - [Other Stuff](#other-stuff)
---

## General

__Powershell__ 

- ```winget install --id Microsoft.Powershell --source winget```

__Windows Terminal__

- Install via Microsoft Store

__scoop__

```
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
  irm get.scoop.sh | iex
  ```

## Windows Style

__StartAllBack__

- ```winget install startallback``` 
- (https://www.startallback.com/) | requires license

__Explorer Patcher__

- https://github.com/valinet/ExplorerPatcher
- May cause severe Problems

## Bloatware Remover / Security

__Windows 10 Debloater__

- ```iwr -useb https://git.io/debloat|iex``` \
- (https://github.com/Sycnex/Windows10Debloater)

__Windows Optimizer__

- https://github.com/hellzerg/optimizer

__Simplewall (Replaces Windows-Firewall)__

- https://github.com/henrypp/simplewall

Make sure to block all traffic by default

## PowerShell Tweaks

### Plugins

__Oh My Posh (https://ohmyposh.dev/)__

- ```winget install JanDeDobbeleer.OhMyPosh -s winget``` 
- Themes: https://ohmyposh.dev/docs/themes

__PSReadLine__

```
Install-Module -Name PowerShellGet -Force
Install-Module PSReadLine
```

__lsd (better ls)__

- ```scoop install lsd```
- Install config from configs/lsd to ```%APPDATA%\lsd\config.yaml```

### Settings

- **Install Configs under configs/Powershell to enable Plugins**
- Font: FireCode Nerd Font Mono (Install from this repository)
- FontSize: 12
- Cursor shape: vintage
- Automatically adjust lightness of indistinguishable text: always


## Nvim

__Nvim__

https://github.com/neovim/neovim/releases/latest/download/nvim-win64.msi

__NvChad__

```
git clone https://github.com/NvChad/NvChad $HOME\AppData\Local\nvim --depth 1 && nvim
 ```

## Other Stuff

- Strawberryperl (includes compilers, assemblers and more): https://strawberryperl.com/


