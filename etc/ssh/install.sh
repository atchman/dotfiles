#!/usr/bin/env bash

SSH_SOURCE = $(pwd)
SSH_DEST = "/etc/ssh/ssh_config.d"
SSHD_DEST = "/etc/ssh/sshd_config.d"


[ ! -d $SSH_DEST ] && mkdir $SSH_DEST
cp $SSH_SOURCE/ssh_config.d/30-hardened.conf $SSH_DEST

ssh -G .

[ ! -d $SSHD_DEST ] && mkdir $SSHD_DEST
cp $SSH_SOURCE/sshd_config.d/30-hardened.conf $SSHD_DEST

sudo sshd -T


read -p "Want to add Allow User name. Enter 'YES': " ans
if [ "$ans" = "YES"], then
    read -p "Enter Allow User Name: " allowU
    echo 'AllowUsers $allowU' >> $SSHD_DEST/30-hardened.conf
else 
    echo "No AllowUser chosen!"

echo "Check weather everything has need configured correctly"
echo "File name: /etc/sshd_config.d/30-hardened.conf"
echo "After check systemctl reload sshd.service"
