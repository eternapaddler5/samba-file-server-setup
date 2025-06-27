# Samba File Server Setup on Linux

This project walks through how to set up a Samba file server on a Linux virtual machine (tested on Linux Mint using VirtualBox) that allows Windows clients to access shared folders over the network.

---

## 📌 What You'll Learn

- How to install and configure Samba on Linux
- How to share a folder over the network
- How to access it from Windows
- How to allow firewall access
- How to find the Linux IP address

---

## 🧰 Prerequisites

- A Linux virtual machine (e.g. Linux Mint on VirtualBox)
- A Windows machine on the same network
- Basic Linux terminal knowledge

---

## ⚙️ Setup Instructions

### 1. **Install Samba**

```bash
sudo apt update
sudo apt install samba
