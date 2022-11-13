#! /bin/sh

echo "$FTPUSER:$FTPPASS" | chpasswd

echo $FTPUSER > /etc/vsftpd/chroot_list

vsftpd /etc/vsftpd/vsftpd.conf