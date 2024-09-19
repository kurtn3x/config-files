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

**Powershell**

- ```
  winget install --id Microsoft.Powershell --source winget
  ```

**Windows Terminal**

- Download from https://github.com/microsoft/terminal/releases/latest

**scoop**

- ```
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
  irm get.scoop.sh | iex
  ```

## Windows Style

**StartAllBack**

- ```
  winget install startallback
  ```
- (https://www.startallback.com/) | requires license

**Explorer Patcher**

- https://github.com/valinet/ExplorerPatcher
- May cause severe Problems

## Bloatware Remover / Security

**Windows 10 Debloater**

- ```
  iwr -useb https://git.io/debloat|iex
  ```
- (https://github.com/Sycnex/Windows10Debloater)

**Windows Optimizer**

- https://github.com/hellzerg/optimizer

**Simplewall (Replaces Windows-Firewall)**

- https://github.com/henrypp/simplewall
- Make sure to block all traffic by default

## PowerShell Tweaks

### Plugins

**Oh My Posh (https://ohmyposh.dev/)**

- ```
  winget install JanDeDobbeleer.OhMyPosh -s winget
  ```
- Themes: https://ohmyposh.dev/docs/themes

**PSReadLine**

- ```
  Install-Module -Name PowerShellGet -Force
  Install-Module PSReadLine
  ```

**lsd (better ls)**

- ```
  scoop install lsd
  ```
- Copy the file `configs/lsd/config.yml` in this repository to `%APPDATA%\lsd\config.yaml`.

### Settings

- Copy the files under `configs/PowerShell` in this repository to `%CSIDL_MYDOCUMENTS%\PowerShell` (The PowerShell-Folder in the Documents-Directory).
- Colorscheme: The Scheme(s) from `configs/Terminal/Themes/tokjo_personalized.json`in this repository. Terminal-Settings and click _Open JSON File_ in the bottom left. Append the Colorschemes to the other colorschemes in the file.
- Font: FireCode Nerd Font Mono (Install from this repository)
- FontSize: 12
- Cursor shape: vintage
- Automatically adjust lightness of indistinguishable text: always

## Nvim

**Nvim**

- Download from https://github.com/neovim/neovim/releases/latest/download/nvim-win64.msi

**NvChad**

- Nvim Tweaks, not required
- ```
  git clone https://github.com/NvChad/NvChad $HOME\AppData\Local\nvim --depth 1 && nvim
  ```

## Other Stuff

- Strawberryperl (includes compilers, assemblers and more): https://strawberryperl.com/
