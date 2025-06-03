---
layout: wide
title: SSH into Solaris 10
subtitle: make it work
description: how to successfully ssh into an old Solaris 10 server
---

### Problem

Can't ssh into a Solaris 10 server due to lack or common cyphers.



### Solution

Use the following command to ssh:

```bash
ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 -oHostKeyAlgorithms=+ssh-dss -m hmac-sha1-96 user@server
```

May need to alias it or make it a script.
