---
layout: wide
title: Qnap and Tailscale
subtitle: set it up
description: set up Tailscale on Qnap NAS
---

### Setup

SSH in into the devices (you may need to enable SSH in the Qnap settings).

Find out the system volume path:

```bash
    getcfg SHARE_DEF defVolMP -f /etc/config/def_share.info
```

Go to the tailscale package directory:

```bash
    cd /share/CACHEDEV1_DATA/.qpkg/Tailscale
```

Authorize the client:

```bash
    ./tailscale -socket var/run/tailscale/tailscaled.sock up
```

Or:

```bash
    ./tailscale -socket /tmp/tailscale/tailscaled.sock up
```

The second one worked on my device.
