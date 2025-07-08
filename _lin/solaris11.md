---
layout: wide
title: Solaris 11
subtitle: Installation Notes
description: some notes for installing Solaris 11
---

### Obtaining the ISO

You need an Oracle account.

- [Solaris 11.4 CBE](https://www.oracle.com/solaris/solaris11/downloads/solaris-downloads.html)


### Proxmox Notes

VM Specs in Proxmox:

- Memory: `6GB` (minimum)
- Machine: `q35`
- Network: `Intel E1000`
- Disk: `VirtIO Block`

If the VM has less than 5GB of memory at install time, the installer will fail in weird ways without ever telling you it's running out of memory.


### Post Install

#### mDNS Support (Avahi)

The service should already be installed by default. You can check if it is with:

```bash
pkg info pkg:/service/network/dns/mdns
```

If it's not installed, you can install it with:

```bash
sude pkg install service/network/dns/mdns
```

Configure it with:

```bash
sudo /usr/sbin/svccfg -s svc:/system/name-service/switch
svc:/system/name-service/switch> setprop config/host = astring: "files dns mdns"
svc:/system/name-service/switch> select system/name-service/switch:default
svc:/system/name-service/switch:default> refresh
svc:/system/name-service/switch:default> validate
svc:/system/name-service/switch:default> quit
```

Now enable the service:

```bash
sudo svcadm enable svc:/network/dns/multicast:default
```
