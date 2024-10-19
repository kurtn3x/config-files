# Personal Linux Setup

The setup is made for a fresh Arch-Linux-System (After plasma has been installed).

- [Personal Linux Setup](#personal-linux-setup)
  - [General](#general)
  - [yay](#yay)
  - [zsh](#zsh)
  - [Vim](#vim)
  - [Fonts](#fonts)
  - [lsd](#lsd)
  - [Konsole](#konsole)
  - [Grub](#grub)
  - [KDE/ DE Settings](#kde-de-settings)
    - [Installing](#installing)
      - [Window Decoration and Kvantum Theme](#window-decoration-and-kvantum-theme)
      - [Icons](#icons)
    - [Settings](#settings)
      - [KDE Colors and Themes](#kde-colors-and-themes)
      - [Dolphin](#dolphin)
  - [Other Stuff](#other-stuff)

## General

- All commands should be run from this directory, after installation of zsh/ohmyzsh the shell should be restarted

- Remove home folders

  ```shell
  rmdir /home/$USER/Videos
  rmdir /home/$USER/Pictures
  rmdir /home/$USER/Templates
  rmdir /home/$USER/Public
  rmdir /home/$USER/Music
  ```

- Install basic stuff
  
  ```shell
  sudo pacman -S git zsh yakuake man-db keychain bat wget thunderbird firefox curl unzip zip lsd base-devel make thefuck os-prober qbittorrent ntfs-3g wireguard-tools noto-fonts-cjk appmenu-gtk-module libdbusmenu-glib fzf plymouth net-tools --noconfirm --needed
  ```

## yay

- Install yay

  ```shell
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
  ```

- Install basic packages with yay:

  ```shell
  yay -S sublime-text-4 visual-studio-code-bin spotify-adblock kvantum-qt6-git
  ```

## zsh

- Install ZSH & ohmyzsh

  ```shell
  sudo pacman -S zsh
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```

- Install ZSH-Plugins

  ```shell
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  git clone --depth 1 https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin
  ```

- Use config files from this repository

  ```shell
  cp ./shell_configs/profile ~/.profile
  cp ./shell_configs/zshrc ~/.zshrc
  cp ./shell_configs/p10k.zsh ~/.p10k.zsh

  ```

## Vim

- Install VIM-Plugins

  ```shell
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  ```

- Use config files from this repository

  ```shell
  cp ./shell_configs/vimrc ~/.vimrc
  ```

## Fonts

- Install FiraCodeFont from this repository

  ```shell
  sudo mkdir -p /usr/local/share/fonts/TTF
  sudo cp ../FiraCodeFont/* /usr/local/share/fonts/TTF
  sudo chmod 644 /usr/local/share/fonts/TTF/*
  ```

## lsd

- Use config files from this repository

  ```shell
  mkdir -p ~/.config/lsd
  cp ./shell_configs/lsd_config.yaml ~/.config/lsd
  ```

## Konsole

- Use colorscheme from this repository

  ```shell
  mkdir ~/.local/share/konsole
  cp ./shell_configs/konsole.profile ~/.local/share/konsole
  cp ./shell_configs/my.colorscheme ~/.local/share/konsole
  echo "AddKeysToAgent yes" >> ~/.ssh/config
  ```

## Grub

- Set some grub defaults

  ```shell
  sudo echo "GRUB_DISABLE_OS_PROBER=false" | sudo tee -a /etc/default/grub
  sudo sed -i '/GRUB_DEFAULT=0/c\GRUB_DEFAULT=saved' /etc/default/grub
  sudo echo "GRUB_SAVEDEFAULT=true" | sudo tee -a /etc/default/grub
  ```

- Install Grub Theme (also runs update-grub)

  ```shell
  git clone https://github.com/vinceliuice/grub2-themes
  cd grub2-themes
  sudo ./install.sh -t tela -s 2k
  ```

  - Check /etc/default/grub for `GRUB_THEME=`and `GRUB_BACKGROUND=`. If the paths are somewhere at /usr/share, manually move the theme folder to /boot/grub/themes. e.g. move `/usr/share/grub/themes/tela` to `/boot/grub/themes/tela`. Adjust the mentioned variables accordingly, e.g. `GRUB_THEME=/boot/grub/themes/tela/theme.txt` and `GRUB_BACKGROUND=/boot/grub/themes/tela/background.jpg`
  - Run `sudo grub-mkconfig -o /boot/grub/grub.cfg`

## KDE/ DE Settings

### Installing

#### Window Decoration and Kvantum Theme

- ```shell
  mkdir -p ~/.local/share/aurorae/themes && cp kde/WillowDark ~/.local/share/aurorae/themes
  ```

- ```shell
  mkdir -p ~/.config/Kvantum && cp kde/Orchis-solid ~/.config/Kvantum
  ```

- -> `kvantummanager` -> Change / Delete Theme -> `Orchis-solidDark`

#### Icons

- Copy my iconset

  - ```shell
    cp -R kde/win-custom-icons ~/.local/share/icons
    ```
  
- Icon Sources:
  - [https://github.com/doncsugar/willow-theme/tree/main]
  - [https://store.kde.org/p/1546069]
  - [https://github.com/vinceliuice/Fluent-icon-theme]
- Optional, for inheriting missing icons:
  - Download and install Win11 icons [https://store.kde.org/p/1546069/]

  - ```shell
    wget -qO- https://git.io/papirus-icon-theme-install | env DESTDIR="$HOME/.local/share/icons" sh
    ```

### Settings

#### KDE Colors and Themes

- **Global Theme**: Breeze Dark
- **Colors**: Sweet (Sweet KDE) Accent #3d59a1
- **Application Style**: kvantum-dark
- **Plasma Style**: [https://www.pling.com/p/1368853]
- **Windows Decorations**: Willow Dark
- **Icons**: Windows Custom
- **Cursors**: Breeze Light

#### Dolphin

- ```shell
  cp ./kde/dolphinrc ~/.config/dolphinrc
  ```

- Toolbar:
  - Back
  - Foreward
  - Up
  - seperator
  - icons
  - compact
  - details
  - location bar -> change text hide text
  - show hidden files -> change text hide text
  - search
  - filter
  - split -> change text hide text

## Other Stuff

- **Firefox**: tokyo night
- **Yakuake**: _set to autostart_, Keybinds: Open/Retract Yakuake (Global Shift+Enter); Full Screen Mode (Shift+Uparrow)
- **ssh-agent**: `sudo systemctl --user enable ssh-agent.service --now`
- **Nvidia drivers**: <https://wiki.archlinux.org/title/NVIDIA>
