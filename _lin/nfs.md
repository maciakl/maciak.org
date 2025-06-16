---
layout: wide
title: Qnap NFS Shares
subtitle: how to mount them
description: mounting NFS shares from Qnap NAS
---

### On the Qnap

Enable NFS service in the Qnap NAS settings:


- [Qnap Documentation](https://www.qnap.com/en-us/how-to/faq/article/how-to-enable-and-setup-host-access-for-nfs-connection)

### On the Linux Client

Assuming you are using Debian.

Install NFS support:

```bash
sudo apt install nfs-common
```
Create a mount point:

```bash
sudo mkdir -p /mnt/qnap
```

Mount the NFS share:

```bash
sudo mount -t nfs qnap.local:Share /mnt/qnap
```

To make the mount permanent edit `/etc/fstab`:

```bash
qnap.local:Share /mnt/qnap nfs defaults 0 0
```
