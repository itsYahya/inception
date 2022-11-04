#! /bin/sh

apk update
apk add nginx
apk add openrc
mkdir /run/openrc
touch /run/openrc/softlevel
openrc
nginx -g "daemon off;"
netstat -tulpn | grep :80