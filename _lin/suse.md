---
layout: wide
title: SUSE Linux Installation Notes
subtitle: Useful Things to Remember
description: some notes for installing SUSE Linux
---

### Post Install

#### Change Hostname

Just edit `/etc/hostname`:

```bash
sudo vim /etc/hostname
```
Then restart.

#### Install and Configure Avahi

First install the `avahi` and related packages:

```bash
sudo zypper install avahi avahi-utils
```

Configure a firewall exception for Avahi:

```bash
sudo firewall-cmd --add-service=mdns --permanent
sudo firewall-cmd --reload
```

Reboot the system.

#### Install Neofetch

Use `fastfetch` instead:

```sh
sudo zypper install fastfetch
```
