---
layout: wide
title: Move Docker Data
subtitle: relocate to another disk
description: move docker data to another disk
---

### Problem

Have a server with a small boot drive and a large data drive.

Want to move all the docker containers to the large data drive.


### Solution

Let's assume you have permanently mounted the large data drive at `/mnt/data`.

Shut down docker

```bash
    sudo systemctl stop docker
    sudo systemctl stop docker.socket
    sudo systemctl stop containerd
```

Move existing docker data to the new location

```bash
    sudo mv /var/lib/docker /mnt/data/docker
```

Create or update `/etc/docker/daemon.json` to point to the new location:

```json
    {
      "data-root": "/mnt/data/docker"
    }
```

Restart docker:

```bash
    sudo systemctl start docker
```

