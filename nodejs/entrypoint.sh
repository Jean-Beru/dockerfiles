#!/bin/sh

if [[ -z $USR ]]
then
    USR='node'
fi

# Create user with host folder's UID a GID if not exists
EXISTS=`grep -c "^$USR:x:" /etc/passwd`

if [ $EXISTS -eq 0 ]
then
    UID=`stat -c %u /src`
    GID=`stat -c %g /src`
    adduser -D $USR
    sed -i -E s/^$USR:x:[0-9]+:[0-9]+:/$USR:x:$UID:$GID:/ /etc/passwd
    chown $USR:$USR /home/$USR
fi

su $USR -s /bin/sh -c "$*"
