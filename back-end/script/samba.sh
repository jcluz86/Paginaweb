#!/bin/bash
export PATH="$PATH:/sbin:/usr/sbin:usr/local/sbin"
cp /etc/samba/smb.conf /etc/samba/smb.conf.bak
mkdir /media/dados
chmod 777 -R /media/dados
mkdir /media/dados/$1
chmod 777 -R /media/dados/$1
echo "usershare path = /var/lib/samba/usershares/" >> /etc/samba/smb.conf
chgrp informatica /media/dados/$1
useradd -m $1
(echo $2; echo $2) | smbpasswd -a $1
usermod -G informatica $1
echo "["$1"]" >> /etc/samba/smb.conf
echo "path = /media/"$1 >> /etc/samba/smb.conf
echo "valid users = @informatica" >> /etc/samba/smb.conf
echo "read only = No" >> /etc/samba/smb.conf
echo "create mask = 0700" >> /etc/samba/smb.conf
echo "directory mask = 0700" >> /etc/samba/smb.conf
service smbd restart



