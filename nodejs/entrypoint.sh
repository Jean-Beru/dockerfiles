#!/bin/sh
set -e

UID=`stat -c %u .`
GID=`stat -c %g .`

adduser -D -h /home/nodejs nodejs || true
sed -i "s/^nodejs:x:1000:1000/nodejs:x:$UID:$GID/g" /etc/passwd
chown nodejs /home/nodejs

su nodejs -s /bin/sh -c "$*"
