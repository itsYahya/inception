#! /bin/sh

openrc
touch /run/openrc/softlevel
nginx -g "daemon off;"