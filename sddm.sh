# Enables and makes sddm the default display manager
# For more Info: https://wiki.archlinux.org/title/Display_manager#Loading_the_display_manager
rm /etc/systemd/system/display-manager.service
pacman -R lightdm lightdm-slick-greeter
pacman -S qt5-quickcontrols qt5-graphicaleffects
systemctl enable sddm.service --force

# Moves Configuration Files into correct folders
mv sddm/chili /usr/share/sddm/themes/
rm /usr/lib/sddm/sddm.conf.d/default.conf
mv sddm/default.conf /usr/lib/sddm/sddm.conf.d/
