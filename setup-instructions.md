# Full Setup Instructions for Samba File Server

## Step 1: Install Samba

```bash
sudo apt update
sudo apt install samba
```

## Step 2: Create Shared Folder

```bash
sudo mkdir -p /srv/samba/shared
sudo chown -R nobody:nogroup /srv/samba/shared
sudo chmod -R 0775 /srv/samba/shared
```

## Step 3: Configure Samba

Edit the config:

```bash
sudo nano /etc/samba/smb.conf
```

Add to bottom:

```ini
[SharedFiles]
   path = /srv/samba/shared
   browseable = yes
   read only = no
   guest ok = yes
```

## Step 4: Restart the Samba service

```bash
sudo systemctl restart smbd
```

## Step 5: Allow Firewall

```bash
sudo ufw allow 'Samba'
```

## Step 6: Find IP

```bash
ip a
```

Use that IP to connect from Windows:

```plaintext
\\<ip-address>\SharedFiles
```
