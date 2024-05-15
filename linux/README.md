# Personal Linux Setup

The setup is made for a fresh Arch-Linux-System (After plasma has been installed).

---
- [Personal Linux Tweaks](#personal-linux-tweaks)
  - [General](#general)
  - [yay](#yay)
  - [zsh](#zsh)
  - [Vim](#vim)
  - [Fonts](#fonts)
  - [lsd](#lsd)
  - [Konsole](#konsole)
  - [Grub](#grub)
  - [Settings](#settings)
    - [Konsole/Terminal Settings](#konsoleterminal-settings)
    - [KDE Themes](#kde-themes)
  - [Other Stuff](#other-stuff)
---

## General

- Remove home folders
    ```
    rmdir /home/$USER/Videos
    rmdir /home/$USER/Pictures
    rmdir /home/$USER/Templates
    rmdir /home/$USER/Public
    rmdir /home/$USER/Music
    ```
- Install basic stuff
    ```
    sudo pacman -S git zsh yakuake man-db keychain bat wget thunderbird firefox curl unzip zip lsd base-devel make thefuck os-prober qbittorrent ntfs-3g wireguard-tools noto-fonts-cjk  --noconfirm --needed
    ```

## yay

- Install yay
    ```
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    ```
- Install basic packages with yay: ```yay -S sublime-text-4 vscodium-bin```

## zsh

- Install ZSH & ohmyzsh
    ```
    sudo pacman -S zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ``` 
- Install ZSH-Plugins
    ```
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    ```
- Use config files from this repository
    ```
    mv zshrc ~/.zshrc
    mv p10k.zsh ~/.p10k.zsh
    ```

## Vim

- Install VIM-Plugins
    ```
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ```
- Use config files from this repository
    ```
    mv vimrc ~/.vimrc
    ```

## Fonts

- Install FiraCodeFont from this repository
    ```
    sudo mkdir -p /usr/local/share/fonts/TTF
    sudo mv ../FiraCodeFont/* /usr/local/share/fonts/TTF
    ```
    
## lsd

- Use config files from this repository
    ```
    mkdir -p ~/.config/lsd
    mv config.yaml ~/.config/lsd
    ```

## Konsole

- Use colorscheme from this repository
    ```
    mv my.colorscheme ~/.local/share/konsole
    ```

## Grub

-  Set some grub defaults
    ```
    echo "GRUB_DISABLE_OS_PROBER=false" | sudo tee -a /etc/default/grub
    sudo sed -i '/GRUB_DEFAULT=0/c\GRUB_DEFAULT=saved' /etc/default/grub
    echo "GRUB_SAVEDEFAULT=true" | sudo tee -a /etc/default/grub
    ```
- Install Grub Theme (also runs update-grub)
    ```
    git clone https://github.com/vinceliuice/grub2-themes
    cd grub2-themes
    sudo ./install.sh -t tela
    ```

## Settings

### Konsole/Terminal Settings

- Colorscheme: The one in this repository
- Font: Firacode Nerd Font Mono 11pt (Smooth fonts, draw intense colors in bold font, use line characters contained in font)
- Cursor Block, Match current character, Blinking enabled
- Line spacing 2px, margins 1px

### KDE Themes

- global theme = breeze dark
- Colors = sweet (Sweet KDE) Accent #1097c3
- application style = breeze, gtk theme: tokyonight-dark-moon-bl-lb (tokyo night gtk theme)
- plasma style = layan
- Windows decorations = Willow Dark / any windows10/11 like; no borders
- Icons = Windows-Beuty / any windows11 like
- Cursor = Breeze light
- Icons-Only TaskManager Spacing: large

## Other Stuff

- **Firefox**: tokyo night
- **Yakuake**: *set to autostart*, Keybinds: Open/Retract Yakuake (Global Shift+Enter); Full Screen Mode (Shift+Uparrow)
