---
layout: wide
title: Rocky Linux
subtitle: Installation Notes
description: some notes for installing Rocky Linux
---

### Proxmox Config

If you are running Rocky Linux in a Proxmox VM change the CPU type to `host` to avoid kernel panic when booting from the ISO.

### Post Install

#### Change Hostname

To change the hostname:

```bash
hostnamectl set-hostname <new-hostname>
```

#### Avahi

To enable Avahi, which allows for mDNS (multicast DNS) service discovery:

```bash
sudo dnf install avahi
```

Change the firewall settings to allow mDNS:

```bash
sudo firewall-cmd --add-service=mdns --permanent
sudo firewall-cmd --reload
```
