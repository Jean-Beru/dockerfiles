#!/bin/sh

EXISTS=`getent passwd nodejs`

if [[ -z "$EXISTS" ]]; then
  UID=`stat -c %u .`
  GID=`stat -c %g .`

  adduser -D -h /home/nodejs nodejs
  sed -i "s/^nodejs:x:1000:1000/nodejs:x:$UID:$GID/g" /etc/passwd
  chown nodejs /home/nodejs
fi

su nodejs -s /bin/sh -c "$*"
