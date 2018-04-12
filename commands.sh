#!/bin/bash -x
sudo apt update && sudo apt install screen -y
sudo mkdir -p /usr/local/ngrok
sudo chown awolde: /usr/local/ngrok
cp -p run-ngrok.sh /usr/local/ngrok/
cp -p ngrok.yml /usr/local/ngrok/
cp -p ngrok /usr/local/ngrok/
sudo cp -p ngrok.service /etc/systemd/system/ngrok.service
sudo systemctl daemon-reload
sudo systemctl enable ngrok.service
sudo systemctl start ngrok.service
