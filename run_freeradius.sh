#!/bin/sh
echo "client 0.0.0.0/0{\nsecret=$SECRET\n}" >> /etc/freeradius/clients.conf
echo "$IDENTITY Cleartext-Password := \"$PASSWORD\"" >> /etc/freeradius/users
/usr/sbin/freeradius -X
