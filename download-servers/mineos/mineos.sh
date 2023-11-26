sudo apt install nodejs openjdk-17-jre git rdiff-backup screen build-essential npm
cd /usr/games
sudo git clone https://github.com/hexparrot/mineos-node minecraft
cd minecraft
sudo git config core.filemode false
sudo chmod +x generate-sslcert.sh mineos_console.js webui.js
sudo cp mineos.conf /etc/mineos.conf
sudo npm install
sudo ./generate-sslcert.sh
sudo cp /usr/games/minecraft/init/systemd_conf /etc/systemd/system/mineos.service
sudo systemctl enable mineos
sudo systemctl start mineos