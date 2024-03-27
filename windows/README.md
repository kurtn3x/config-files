## Personal Windows Tweaks
---
- [Personal Windows Tweaks](#personal-windows-tweaks)
  - [General](#general)
  - [Style](#style)
  - [Bloatware Remover / Security](#bloatware-remover--security)
  - [PowerShell Tweaks](#powershell-tweaks)
  - [Nvim](#nvim)
---

### General

__Powershell__ 

```winget install --id Microsoft.Powershell --source winget```

__Windows Terminal__

Install via Microsoft Store

__scoop__

```Set-ExecutionPolicy RemoteSigned -Scope CurrentUser``` \
```irm get.scoop.sh | iex```

---

### Style

__StartAllBack__

```winget install startallback``` \
(https://www.startallback.com/) | requires license

---

### Bloatware Remover / Security

__Windows 10 Debloater__

```iwr -useb https://git.io/debloat|iex``` \
(https://github.com/Sycnex/Windows10Debloater)

__Windows Optimizer__

https://github.com/hellzerg/optimizer

---

### PowerShell Tweaks

__Oh My Posh__

```winget install JanDeDobbeleer.OhMyPosh -s winget``` \
(https://ohmyposh.dev/) \
Themes: https://ohmyposh.dev/docs/themes \
Change Theme: 1. Line in ```configs/PowerShell/Microsoft.PowerShell_profile.ps1``` 

__PSReadLine__

```Install-Module -Name PowerShellGet -Force```
```Install-Module PSReadLine```

__lsd (better ls)__

``scoop install lsd``

---

### Nvim

__Nvim__

https://github.com/neovim/neovim/releases/latest/download/nvim-win64.msi

__NvChad__

 ```git clone https://github.com/NvChad/NvChad $HOME\AppData\Local\nvim --depth 1 && nvim```

 ---
