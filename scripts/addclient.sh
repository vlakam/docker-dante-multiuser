#!/bin/sh

USERNAME=${1:=user}
PASSWORD=$2

if [ -z "$PASSWORD" ]; then
    echo "Specify password as the second argument"
    exit 1
fi

id $USERNAME > /dev/null || adduser -D $USERNAME

echo $USERNAME:$PASSWORD |chpasswd > /dev/null