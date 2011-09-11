#!/bin/sh

# This needs to be run as root

# Enable IP forwarding
echo 1 > /proc/sys/net/ipv4/ip_forward

# Route dat shit, yo
iptables -t nat -A POSTROUTING -s 10.162.0.0/24 -o eth0 -j MASQUERADE

