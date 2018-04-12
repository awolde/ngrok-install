#!/bin/bash
PASS='your_pass'
USER='your_username'
sudo apt-get install sshpass
sshpass -p $PASS rsync --progress -avze * ssh ${USER}@${1}:
#rsync -avz * $1:
sshpass -p $PASS ssh -o StrictHostKeyChecking=no -t -l ${USER} $1 ./commands.sh
