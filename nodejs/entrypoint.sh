#!/bin/sh

EXISTS=`getent passwd nodejs`

if [[ -z "$EXISTS" ]]; then
  adduser -D -h /home/nodejs nodejs
  chown nodejs /home/nodejs
fi

UID=`stat -c %u .`
GID=`stat -c %g .`
sed -i "s/^nodejs:x:[[:digit:]]*:[[:digit:]]*/nodejs:x:$UID:$GID/g" /etc/passwd

su nodejs -s /bin/sh -c "$*"
