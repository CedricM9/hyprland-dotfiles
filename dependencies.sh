# Run as Root User

# Install Packages for Installation
pacman -S binutils
pacman -S --needed base-devel
pacman -S glibc git


# Install Dependencies for Configuration
pacman -S --noconfirm feh rofi colord ffmpegthumbnailer gnome-keyring gtk-engine-murrine imagemagick kvantum pamixer playerctl polkit-kde-agent qt5-quickcontrols qt5-quickcontrols2 qt5-wayland qt6-wayland ttf-font-awesome tumber ttf-jetbrains-mono xdotool cliphist qt5-imageformats qt5ct npm dunst gvfs-smb swww

# GTK
pacman -S gtk4


# Install Optional Dependencies
pacman -S --noconfirm acpi bluez bluez-utils blueman alsa-utils sddm zsh xfce4-power-manager xorg-xinput nm-connection-editor alacritty neovim ranger arandr autorandr 

# Install Theme 
pacman -S xcursor-breeze 
