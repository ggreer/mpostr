#!/usr/bin/env python

import csv

vpn_status = csv.reader(open('openvpn-status.log', 'r'))

start_of_users = False
for row in vpn_status:
    if row[0] == 'Common Name':
        start_of_users = True
        continue
    if not start_of_users:
        continue
    if row[0] == 'ROUTING TABLE':
        break
    username = row[0]
    ip = row[1]
    bytes_received = row[2]
    bytes_sent = row[3]

    print "User %s ip %s received %s sent %s" % (username, ip, bytes_received, bytes_sent)
