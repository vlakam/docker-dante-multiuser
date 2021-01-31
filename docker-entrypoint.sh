#!/bin/sh

echo "$@"
if [ "$1" = 'sockd' ]; then
    echo "Setting default user ${SOCKS_USER}"

    id $SOCKS_USER || adduser -D $SOCKS_USER

    echo $SOCKS_USER:$SOCKS_PASS |chpasswd
fi

exec "$@"