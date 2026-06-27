#!/bin/bash

# Terminate early if any package installation fails
set -e

# Install basic plasma components message
echo "Installing basic plasma components..."

# Sync databases and install basic plasma components
sudo pacman -Syu --needed --noconfirm plasma-meta sddm-kcm

# Install default KDE Plasma apps (Combined with correct native names)
echo "Installing official KDE Plasma applications..."
sudo pacman -S --needed --noconfirm \
    dolphin dolphin-plugins ark gwenview okular spectacle kate filelight \
    konsole kcalc kwalletmanager kio-extras ffmpegthumbs kdegraphics-thumbnailers \
    qt6-imageformats kimageformats kdeconnect elisa partitionmanager \
    kwallet libreoffice-fresh kmail kolourpaint kwrite firefox kaddressbook \
    kmouth kleopatra kcharselect kfind korganizer qrca kamoso neochat krfb krdc \
    akregator khelpcenter kmahjongg kmines kjournald \
    dragon skanpage kpat kontact

echo ""
echo ""
echo "=================================================================="
echo "Setup complete!"
echo "WSL does not require a physical system reboot."
echo "To apply changes, run 'wsl --shutdown' in Windows PowerShell."
echo "=================================================================="
echo ""
