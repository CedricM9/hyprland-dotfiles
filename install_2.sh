# IMPORTANT: Say yes to the replacement of any packages to allow the script to run until the end

# Installes Oh-My-Zsh and Moves Font into a root protected folder
git clone https://github.com/CedricM9/hyprland-dotfiles temp

# Create Default Folders
# A Templates folder can be made (~/Templates) to create Documents from within File Manager
# Editing ~/.config/user-dirs.dirs Allows to link important folder to the correct Type (Like Templates)
rmdir ~/*
mkdir ~/Desktop
mkdir ~/Downloads
mkdir ~/Documents
mkdir ~/Literature
mkdir ~/Music
mkdir ~/Pictures
mkdir ~/Projects
mkdir ~/System
mkdir ~/University
mkdir ~/Videos

# Installs AUR packages before sudo is called
bash aur.sh

# Configure oh-my-zsh
# rm -rf .oh-my-zsh
sudo mv MesloLGS\ NF\ Regular.ttf /usr/share/fonts

# Download and move files required for awesome WM
cp -r .config/* ~/.config/
cp -r .oh-my-zsh ~/

# Move MX Master DPI settings
#sudo bash mx-master.sh

# Moves a theme into a root protected folder and enables sddm as a service
sudo bash sddm.sh

# Moves rofi Theme into root controlled Folder (Color is incorrectly picked otherwise)
cp ~/.config/rofi/config.rasi /usr/share/rofi/themes/

# Changed way of installing Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cp .p10k.zsh ~/
cp .zshrc ~/

# Installs prefered Applications
sudo bash applications.sh

# Change Default Applications for Opening Files
# Editing mimeapps.list or running xdg-mime
# EXAMPLE: xdg-mime default nvim.desktop text/x-vim     Sets Nvim as default editor for .vim files


# Moved after to avoid override from installations
# rm -rf ~/.config/gtk-3.0
# mv gtk-3.0 ~/.config/

# If GTK Theming has failed, then download and use lxappearance to set theme/icons/cursor

# Enable Bluetooth 
systemctl enable bluetooth

# Enable Printing
sudo systemctl enable --now cups.service
sudo systemctl enable --now cups.socket
sudo systemctl enable --now cups.path

#Enable SMB
sudo systemctl enable smb.service nmb.service

# Set Time Zone/Format

# Change Monitor Setup (Must have autorandr installed)
# Create Docked Setup
#xrandr --output eDP1 --off
#autorandr --save docked
# Create Mobile Setup
#autorandr --save mobile

# Setup Git Environment
git config --global user.email "EMAIL"
git config --global user.name "USERNAME"

# VirtualBox Installation
# uname -r
# sudo pacman -S virtualbox
# sudo pacman -S linux[KERNEL]-virtualbox-host-modules

swww img ~/Pictures/Wallpapers/Hyprland.png
# Xbacklight not Working
# Ensure there is a Symlink /sys/class/backlight/intel_backlight
# If there is:
#sudo mv xorg.conf /etc/X11/

# In Xfce4-power-manager, check the system Tray (Optionally control brightness too)
