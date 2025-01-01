---
layout: wide
title: Fix WSL DNS with TailScale
subtitle: broken DNS fix
description: fix for common wsl+tailscale dns issue
---

## Problem

Tailscale and other VPN tools sometimes break WSL DNS by modifying `/etc/resolv.conf` wrong.

## Solution

Turn off auto-generation of `/etc/resolv.conf` by creating `/etc/wsl.conf` with the following content:

```ini
[network]
generateResolvConf = false
```

Restart WSL for PWSH:

```powershell
wsl --shutdown
```

Create a new `/etc/resolv.conf` with the following content:

```conf
nameserver 8.8.8.8
nameserver 1.1.1.1
nameserver 100.100.100.100
search XXXXX.tailscale.net YOURSEARCHDOMAIN
```

Replace `XXXXX.tailscale.net` with your Tailscale domain and `YOURSEARCHDOMAIN` with your search domain.

Restart WSL again.
