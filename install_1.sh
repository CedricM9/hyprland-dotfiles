# Prerequisites for Installation
echo -------------------------------------------------------------------------
echo CLOSE WINDOW ONCE DONE
echo -------------------------------------------------------------------------

sudo pacman-mirrors --geoip
sudo pacman -Syu
sudo pacman -S yay

# Download gcc for yay applications
sudo bash dependencies.sh

# Enable AUR
sudo sed -Ei '/EnableAUR/s/^#//' /etc/pamac.conf

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Close window When Done
