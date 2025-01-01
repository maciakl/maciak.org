---
layout: wide
title: Tailscale on Qnap
subtitle: fix common tailscale QNAP issue
description: fix common tailscale QNAP issue
---

## Problem

Tailscale on QNAP is not working.

## Solution

SSH into your QNAP box.

Find out the system volume path:

```bash
getcfg SHARE_DEF defVolMP -f /etc/config/def_share.info
```
Go to the TailScale package directory:

```bash
cd /share/CACHEDEV1_DATA/.qpkg/Tailscale
```
Authorize the Tailscale client:

```bash
./tailscale -socket var/run/tailscale/tailscaled.sock up
```

Or:

```bash
./tailscale -socket /tmp/tailscale/tailscaled.sock up
```

The second one worked for me.
