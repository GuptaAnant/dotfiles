#!/bin/bash

echo "Installing base-devel for Yay AUR helper"
sudo pacman -S base-devel
echo "Installed base-devel"

echo "Now installing yay"
sudo pacman -S yay
echo "Installed yay"

echo "Now installing other dependencies"
yay -S awesome-git alacritty brave nerd-fonts-mononoki thunar rofi fish picom starship obs-studio android-studio light-git lxsession lxappearance volumeicon feh pavucontrol libreoffice ripgrep fd emacs

echo "Installed various programs that I needed"

echo "Now downloading wallpaper directory"
cd
git clone https://gitlab.com/dwt1/wallpaper.git
echo "Done wallpaper setup"

echo "Now setting up doom emacs"
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
echo "Installed Doom Emacs"

echo "Now moving folder & files"
mv ~/dotfiles/.config/awesome ~/.config/awesome
mv ~/dotfiles/.config/alacritty ~/.config/alacritty/
mv ~/dotfiles/.config/rofi ~/.config/rofi/
mv ~/dotfiles/.config/fish ~/.config/fish/
mv ~/dotfiles/.config/picom ~/.config/picom/
mv ~/dotfiles/.config/starship.toml ~/.config/starship.toml
mv ~/dotfiles/.doom.d/ ~/.doom.d/
echo "Done"

echo "Now changing shell"
sudo chsh $USER -s /bin/fish
echo "Now everything is finished"

echo "Reboot or logout to take all the changes take place"
