#!/bin/sh
set -e

UID=`stat -c %u .`
GID=`stat -c %g .`

adduser -D nodejs || true
sed -i "s/^nodejs:x:1000:1000/nodejs:x:$UID:$GID/g" /etc/passwd

su nodejs -s /bin/sh -c "$*"
