curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
sudo apt-get install pufferpanel
sudo systemctl enable pufferpanel
sudo pufferpanel user add
sudo systemctl enable --now pufferpanel

# 8080: Web access
# 5657: SFTP
# https://github.com/PufferPanel/templates