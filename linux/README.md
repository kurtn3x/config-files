# Personal Linux Tweaks

The tweaks are made for a fresh Arch-Linux-System (After plasma has been installed).

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
    sudo pacman -S git zsh yakuake man-db keychain bat wget thunderbird firefox curl unzip zip lsd base-devel make thefuck os-prober qbittorrent ntfs-3g wireguard-tools --noconfirm --needed
    ```

## yay

- Install yay
    ```
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    ```

## zsh

- Install ZSH & Plugins
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

- Enable os prober
    ```
    echo "GRUB_DISABLE_OS_PROBER=false" | sudo tee -a /etc/default/grub
    ```
- Install Grub Theme (also creates new grub conf)
    ```
    git clone https://github.com/vinceliuice/grub2-themes
    cd grub2-themes
    sudo ./install.sh -t tela -s 2k
    ```

## Settings

### Konsole/Terminal Settings

- Colorscheme: The one in this repository
- Font: Firacode Nerd Font Mono 11pt (Smooth fonts, draw intense colors in bold font, use line characters contained in font)
- Cursor Block, Match current character, Blinking enabled

### KDE Themes

- global theme = breeze dark
- Colors = sweet (Sweet KDE) Accent #1097c3
- application style = breeze
- plasma style = layan
- Windows decorations = Willow Dark / any windows10/11 like
- Icons = Windows-Beuty / any windows11 like
- Cursor = Breeze light
- Icons-Only TaskManager Spacing: large
