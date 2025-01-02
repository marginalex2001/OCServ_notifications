#!/bin/bash
echo "Enter TOKEN:"
read API_TOKEN
echo "Enter chat ID:"
read CHAT_ID
echo "TOKEN = '${API_TOKEN}'" >> .env
echo "CHAT_ID = '${CHAT_ID}'" >> .env
cp -r $(pwd) /etc/ocserv/OCServ_notifications
cd /etc/ocserv/OCServ_notifications/
pipenv sync
pipenv run python main.py -test

echo "connect-script = /etc/ocserv/OCServ_notifications/sch-conn.sh" >> /etc/ocserv/ocserv.conf
echo "disconnect-script = /etc/ocserv/OCServ_notifications/sch-dconn.sh" >> /etc/ocserv/ocserv.conf

chmod ugo+x /etc/ocserv/OCServ_notifications/sch-conn.sh
chmod ugo+x /etc/ocserv/OCServ_notifications/sch-dconn.sh
systemctl restart ocserv.service