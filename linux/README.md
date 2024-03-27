# config-files

## General

rmdir /home/$USERNAME/Videos

rmdir /home/$USERNAME/Pictures

rmdir /home/$USERNAME/Templates

rmdir /home/$USERNAME/Public

rmdir /home/$USERNAME/Music

sudo pacman -S git zsh yakuake man-db keychain bat wget thunderbird firefox curl unzip zip lsd base-devel make thefuck os-prober qbittorrent ntfs-3g --noconfirm --needed

## YAY

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

## ZSH

sudo pacman -S zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

mv zshrc ~/.zshrc

mv vimrc ~/.vimrc

mv p10k.zsh ~/.p10k.zsh

## FONT

mkdir -p /usr/local/share/fonts/TTF

mv FireCodeFont/\* /usr/local/share/fonts/TTF

## LSD

mkdir -p ~/.config/lsd

mv config.yaml ~/.config/lsd

## Konsole

mv my.colorscheme ~/.local/share/konsole

**Settings**

Scheme: The one in this repository

Font: Firacode 11pt

Cursor Blinking enabled

## KDE Themes

global theme = breeze dark

Colors = sweet

application style = breeze

plasma style = layan

Windows decorations = Willow Dark / any windows10/11 like

Icons = Windows-Beuty / any windows11 like

Cursor = Breeze light
