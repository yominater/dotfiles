#!/bin/bash
# Do boring setup stuff. Will need to type the password for your SSH key home and 
# your password for sudo the first time, but apart from that it's automated

SSH_KEY_HOME="user@host.name:/home/user/.ssh"

mkdir -p ~/.ssh
chmod 700 ~/.ssh
echo "# Copying ssh keys "
if ! ls ~/.ssh/id_* &> /dev/null; then
    scp ${SSH_KEY_HOME}/id* ~/.ssh
    echo "... done"
else
    echo "... already got keys"
fi

echo "performing updates and installing packages"
sudo apt update
sudo apt upgrade -y
sudo apt install git vim

echo "Fixing directories ..."

echo " DONE! (and a reboot wouldn't hurt)"
