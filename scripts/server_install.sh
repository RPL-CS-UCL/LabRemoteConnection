sudo apt update -y
sudo apt install openssh-server -y
sudo ufw allow ssh


sudo apt update -y
sudo apt install xrdp -y
sudo adduser xrdp ssl-cert
sudo ufw allow 3389
sudo systemctl restart xrdp
