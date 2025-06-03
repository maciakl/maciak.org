---
layout: wide
title: Local Addresses
subtitle: enable .local on linux
description: enable .local addressing on linux
---

### What is `.local`?

Windows and mac machines support `.local` addressing by default as part of the ZeroConf/Bonjour protocol.

It allows you to address devices on your local LAN via `hostname.local`.

The hosts advertise their IP to the network and can pick up and cache similar advertisements from other devices.

### Enabling `.local` on Linux

To enable `.local` addressing on Linux, you need to install the `avahi-daemon` package, which implements the ZeroConf/Bonjour protocol.

#### Debian

On Debian and Ubuntu, it just works:

```bash
    sudo apt install avahi-daemon
```

Done.


#### Arch

Install and enable Avahi:

```bash
    sudo pacman -S avahi nss-mdns
    sudo systemctl enable avahi-daemon.service
    sudo systemctl start avahi-daemon.service
```
This will advertise your host to the network. To resolve `.local` addresses you need one extra step.


Edit `/etc/nsswitch.conf` and add modify `hosts` line:

```bash
     hosts: mymachines mdns4_minimal[NOTFOUND=return] resolve [!UNAVAIL=return] files myhostname dns mdns4
```
