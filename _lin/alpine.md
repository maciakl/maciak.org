---
layout: wide
title: Alpine Linux
subtitle: Installation Notes
description: some notes for installing Alpine Linux
---

### Proxmox Config

Download the `virt` ISO.

### Install

When asked how to use the disk, choose `sys` to set up standard installation.

### Post Install

#### Avahi

Install Avahi for mDNS support:

```bash
doas apk add avahi
doas rc-update add avahi-daemon
doas rc-service avahi-daemon start
```
This will allow you to access the machine via `hostname.local` on the local network, but not the other way around.

If you need alpine to resolve mDNS addresses... Well, [it's complicated](https://wiki.alpinelinux.org/wiki/MDNS) and requires running a whole ass DNS server.


