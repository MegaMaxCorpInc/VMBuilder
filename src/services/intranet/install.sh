#!/bin/bash
cd "$(dirname $0)"
sudo mkdir intranet
sudo cp app/* /srv/intranet/.
cd /srv/intranet
sudo npm install
cd "$(dirname $0)"
sudo cp intranet.service /etc/systemd/systems/intranet.service
sudo systemctl enable intranet
sudo systemctl start intranet