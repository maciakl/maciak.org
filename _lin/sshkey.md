---
layout: wide
title: Set Up SSH Key Access
subtitle: on the remote machine
description: easy way to set up ssh key access
---

To easily set up up a ssh-key access on a remote machine:

    ssh-copy-id user@host

If the ssh is running on a weird port:

    ssh-copy-id "user@host -p 6842"  
