#!/bin/bash
echo "Allowing Samba through UFW..."
sudo ufw allow 'Samba'
sudo ufw reload
