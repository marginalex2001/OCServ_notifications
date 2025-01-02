#!/bin/sh
echo "$(date) [info] User ${USERNAME} Connected - Server: ${IP_REAL_LOCAL} VPN IP: ${IP_REMOTE}  Remote IP: ${IP_REAL} Device:${DEVICE}" >> /etc/ocserv/log
cd /etc/ocserv/OCServ_notifications
pipenv run python main.py -c ${USERNAME} ${IP_REAL_LOCAL} ${IP_REMOTE} ${IP_REAL} $(date)