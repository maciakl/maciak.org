---
layout: wide
title: Avahi
subtitle: vs Firewalls
description: confugure firewalls to allow avahi
---

Software firewalls often block the mDNS traffic preventing you from using the `.local` domain to address devices on your local network. Some linux systems ship with the firewall enabled by default and with no built in exceptions for mDNS.

### UFW

On systems that use UFW:

```bash
sudo ufw allow mdns
```
### Firewalld

If you are running a system that ships with firwewalld (such as Fedora or Suse):

```bash
sudo firewall-cmd --permanent --add-service=mdns
sudo firewall-cmd --reload
```

